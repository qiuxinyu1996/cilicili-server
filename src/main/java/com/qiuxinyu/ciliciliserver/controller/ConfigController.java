package com.qiuxinyu.ciliciliserver.controller;

import cn.hutool.json.JSONUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.entity.Config;
import com.qiuxinyu.ciliciliserver.entity.Video;
import com.qiuxinyu.ciliciliserver.service.ConfigService;
import com.qiuxinyu.ciliciliserver.service.UserService;
import com.qiuxinyu.ciliciliserver.service.VideoService;
import com.qiuxinyu.ciliciliserver.vo.VideoVo;
import org.springframework.beans.BeanUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@RestController
@RequestMapping("/api/config")
public class ConfigController {
    @Resource
    private ConfigService configService;

    @Resource
    private VideoService videoService;

    @Resource
    private UserService userService;

    /**
     * 获取首页轮播图
     * @return
     */
    @GetMapping("/getCarouselFigure")
    public Result getCarouselFigure() {
        LambdaQueryWrapper<Config> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Config::getConfigKey, "carouselFigure");
        queryWrapper.last("limit 1 ");
        Config config = configService.getOne(queryWrapper);
        List<String> videoIds = JSONUtil.toList(config.getConfigValue(), String.class);
        // 按配置顺序展示轮播图
        List videos = new ArrayList();
        videoIds.stream().forEach(item -> {
            videos.add(videoService.getById(item));
        });
        return Result.success(videos);
    }

    /**
     * 获取首页视频信息
     * @return
     */
    @GetMapping("/getVideoCards")
    public Result getVideoCards() {
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Video::getTotal, 1);
        // 首页只展示8个视频
        queryWrapper.last("limit 8 ");
        List<Video> videoList = videoService.list(queryWrapper);
        List voList = videoList2VoList(videoList);
        // 随机排序
        Collections.shuffle(voList);
        return Result.success(voList);
    }

    private List videoList2VoList(List<Video> videoList) {
        List<VideoVo> videoVoList = new ArrayList<>();
        videoList.stream().forEach(video -> {
            VideoVo videoVo = new VideoVo();
            BeanUtils.copyProperties(video,videoVo);
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
}
