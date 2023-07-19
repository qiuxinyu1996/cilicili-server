package com.qiuxinyu.ciliciliserver.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.entity.Video;
import com.qiuxinyu.ciliciliserver.service.VideoService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/api/config")
public class ConfigController {
    @Resource
    private VideoService videoService;

    @GetMapping("/getImgList")
    public Result getImgList() {
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.isNotNull(Video::getDisplayIndex);
        queryWrapper.orderByAsc(Video::getDisplayIndex);
        List<Video> imgList = videoService.list(queryWrapper);
        return Result.success(imgList);
    }
}
