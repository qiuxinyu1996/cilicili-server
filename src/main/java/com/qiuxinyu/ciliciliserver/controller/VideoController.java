package com.qiuxinyu.ciliciliserver.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.common.VideoStatus;
import com.qiuxinyu.ciliciliserver.entity.Review;
import com.qiuxinyu.ciliciliserver.entity.User;
import com.qiuxinyu.ciliciliserver.entity.Video;
import com.qiuxinyu.ciliciliserver.service.ReviewService;
import com.qiuxinyu.ciliciliserver.service.UserService;
import com.qiuxinyu.ciliciliserver.service.VideoService;
import com.qiuxinyu.ciliciliserver.vo.GetDetailListVo;
import com.qiuxinyu.ciliciliserver.vo.ReviewVo;
import com.qiuxinyu.ciliciliserver.vo.UserVo;
import com.qiuxinyu.ciliciliserver.vo.VideoVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.apache.commons.lang3.RandomStringUtils;


import javax.annotation.Resource;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.*;

import static cn.hutool.crypto.SecureUtil.md5;

@RestController
@RequestMapping("/api/video")
@Slf4j
public class VideoController {
    @Resource
    private VideoService videoService;

    @Resource
    private ReviewService reviewService;

    @Resource
    private UserService userService;

    /**
     * 获取评论区信息
     * 结构：
     * 一级评论
     * 二级评论
     * 二级引用评论
     *
     * @param videoId
     * @return
     */
    @GetMapping("/getReview")
    public Result getReview(@RequestParam String videoId) {
        LambdaQueryWrapper<Review> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Review::getReviewVideoId, videoId);
        queryWrapper.isNull(Review::getToReplyUserId);
        queryWrapper.orderByDesc(Review::getReviewTime);
        List<Review> reviewList = reviewService.list(queryWrapper);
        // 将实体类转换为VO类
        List<ReviewVo> reviewVoList = new ArrayList<>();
        reviewList.stream().forEach(review -> {
            ReviewVo reviewVo = new ReviewVo();
            BeanUtils.copyProperties(review, reviewVo);
            User user = userService.getById(review.getUserId());
            UserVo reviewer = new UserVo();
            BeanUtils.copyProperties(user, reviewer);
            reviewVo.setUserName(user.getNickname());
            reviewVo.setUserIcon(user.getUserIcon());
            reviewVo.setUserLevel(user.getUserLevel());
            reviewVo.setReviewer(reviewer);
            // 封装二级评论
            LambdaQueryWrapper<Review> q = new LambdaQueryWrapper<>();
            q.eq(Review::getPrimaryReviewId, review.getId());
            q.orderByAsc(Review::getReviewTime);
            List<Review> rl = reviewService.list(q);
            List<ReviewVo> rvo = reviewList2reviewVoList(rl);
            rvo.stream().forEach(item -> {
                UserVo r = new UserVo();
                User u = userService.getById(item.getUserId());
                BeanUtils.copyProperties(u, r);
                item.setReviewer(r);
            });
            reviewVo.setReplyList(rvo);
            reviewVo.setReviewTime(timestamp2String(review.getReviewTime()));
            reviewVoList.add(reviewVo);
        });
        return Result.success(reviewVoList);
    }

    private List<ReviewVo> reviewList2reviewVoList(List<Review> reviewList) {
        List<ReviewVo> reviewVoList = new ArrayList<>();
        reviewList.forEach(review -> {
            ReviewVo reviewVo = new ReviewVo();
            BeanUtils.copyProperties(review, reviewVo);
            LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
            queryWrapper.eq(User::getId, review.getUserId());
            queryWrapper.last("limit 1 ");
            // 获取评论者信息
            User user = userService.getOne(queryWrapper);
            reviewVo.setUserName(user.getNickname());
            reviewVo.setUserIcon(user.getUserIcon());
            reviewVo.setUserLevel(user.getUserLevel());
            // 封装引用评论
            Review fatherReview = reviewService.getById(review.getToReplyReviewId());
            if (fatherReview.getToReplyUserId() != null) {
                reviewVo.setToReplyUserName(userService.getById(fatherReview.getUserId()).getNickname());
                reviewVo.setToReplyReviewContent(fatherReview.getReviewContent());
            }
            reviewVo.setReviewTime(timestamp2String(review.getReviewTime()));
            reviewVoList.add(reviewVo);
        });
        return reviewVoList;
    }

    private String timestamp2String(Timestamp timestamp) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd   HH:mm");
        return sdf.format(timestamp);
    }

    /**
     * 发布评论
     *
     * @param review
     * @return
     */
    @PostMapping("/review")
    public Result review(@RequestBody Review review) {
        String reviewId = UUID.randomUUID().toString();
        review.setId(reviewId);
        // 二级评论需添加primaryReviewId
        if (StringUtils.isBlank(review.getPrimaryReviewId())) {
            review.setPrimaryReviewId(review.getToReplyReviewId());
        }
        reviewService.save(review);
        return Result.success();
    }

    /**
     * 获取视频合集信息
     *
     * @param videoId
     * @return
     */
    @GetMapping("/getVideoList")
    public Result getVideoList(@RequestParam String videoId) {
        Video video = videoService.getById(videoId);
        String videoName = video.getName();
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Video::getName, videoName);
        queryWrapper.orderByAsc(Video::getCurrent);
        List<Video> videoList = videoService.list(queryWrapper);
        // 把视频上传者信息封装进去
        List<VideoVo> videoVoList = new ArrayList<>();
        videoList.stream().forEach(item -> {
            // videoVo
            VideoVo videoVo = new VideoVo();
            BeanUtils.copyProperties(item, videoVo);
            // userVo
            User upLoader = userService.getById(item.getUploaderId());
            UserVo upLoaderVo = new UserVo();
            BeanUtils.copyProperties(upLoader, upLoaderVo);
            // userVo -> videoVo
            videoVo.setUploader(upLoaderVo);
            // 格式格式化
            SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            videoVo.setUploadTime(smf.format(item.getUploadTime()));
            videoVoList.add(videoVo);
        });
        return Result.success(new GetDetailListVo(videoVoList, video.getCurrent()));
    }

    /**
     * 获取播放页推荐视频
     *
     * @return
     */
    @GetMapping("/getLinkCards")
    public Result getLinkCards() {
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper();
        queryWrapper.eq(Video::getCurrent, 1);
        queryWrapper.eq(Video::getStatus, VideoStatus.normal);
        List<Video> videoList = videoService.list(queryWrapper);
        // 随机排序
        Collections.shuffle(videoList);
        // 转vo类
        List voList = videoList2VoList(videoList);

        return Result.success(voList.subList(0, 10));
    }

    private List videoList2VoList(List<Video> videoList) {
        List<VideoVo> videoVoList = new ArrayList<>();
        videoList.stream().forEach(video -> {
            VideoVo videoVo = new VideoVo();
            BeanUtils.copyProperties(video, videoVo);
            // 对部分字段进行转换
            String nickname = userService.getById(video.getUploaderId()).getNickname();
            SimpleDateFormat smf = new SimpleDateFormat("yyyy-MM-dd");
            String uploadTime = smf.format(video.getUploadTime());
            videoVo.setUploaderName(nickname);
            videoVo.setUploadTime(uploadTime);
            videoVoList.add(videoVo);
        });
        return videoVoList;
    }

    @GetMapping("/search")
    public Result searchVideo(@RequestParam String keyword) {
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Video::getCurrent, 1);
        queryWrapper.like(Video::getName, keyword);
        List<Video> videoList = videoService.list(queryWrapper);
        return Result.success(videoList);
    }

    @Value("${vod.key}")
    private String key;
    @Value("${vod.timeout}")
    private int timeout;
    @Value("${vod.rlimit}")
    private String rlimit;

    @GetMapping("/getVideoUrl")
    public Result getVideoUrl(@RequestParam String url) {
        return Result.success(urlTranslator(url));
    }

    /**
     * 仅供接入腾讯云VOD时使用
     * 根据视频原始地址，获取签名后的有效地址
     * @param url 原始地址
     * @return
     */
    private String urlTranslator(String url){
        /**
         * 防盗链配置
         * key      vod控制台获取
         * dir      文件路径
         * t        过期时间戳（单位是s）
         * rlimit   最大同时播放IP数
         * us       随机字符串
         */
        String dir = url.substring(url.indexOf("com") + 3, url.lastIndexOf('/') + 1);
        String t = Long.toHexString(System.currentTimeMillis() / 1000 + timeout);
        String us = RandomStringUtils.randomAlphanumeric(6);
        // 计算签名
        String sign = md5(key + dir + t + rlimit + us);

        return url + "?t=" + t + "&rlimit=" + rlimit + "&us=" + us + "&sign=" + sign;
    }
}
