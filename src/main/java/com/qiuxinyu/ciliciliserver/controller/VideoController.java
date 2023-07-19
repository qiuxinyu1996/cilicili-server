package com.qiuxinyu.ciliciliserver.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.entity.Video;
import com.qiuxinyu.ciliciliserver.param.GetSourceParam;
import com.qiuxinyu.ciliciliserver.service.VideoService;
import lombok.extern.slf4j.Slf4j;
import org.apache.catalina.connector.ClientAbortException;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.charset.StandardCharsets;

@RestController
@RequestMapping("/api/video")
@Slf4j
public class VideoController {
    @Resource
    private VideoService videoService;

    @PostMapping("/getSource")
    public Result getSource(@RequestBody GetSourceParam param) {
        LambdaQueryWrapper<Video> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Video::getName, param.getName());
        queryWrapper.eq(Video::getCurrent, param.getCurrent());
        queryWrapper.last("limit 1");
        Video targetVideo = videoService.getOne(queryWrapper);
        if (targetVideo == null) {
            return Result.success(null);
        }
        return Result.success(targetVideo.getSource());
    }

    /**
     * 获取视频流
     *
     * @param response
     * @param fileName 视频存放信息索引
     * @return
     * @author xWang
     * @Date 2020-05-20
     */
    @GetMapping("/getVideo")
    public void getVideo(HttpServletRequest request, HttpServletResponse response, @RequestParam String fileName, @RequestParam(required = false) String token) {
        System.out.println(token);
        //视频资源存储信息
        response.reset();
        //获取从那个字节开始读取文件
        String rangeString = request.getHeader("Range");
        log.info("getVideo获取视频资源:{},读取文件字节:{}", fileName, rangeString);
        try {
            //获取响应的输出流
            OutputStream outputStream = response.getOutputStream();
            File file = new File(fileName);
            if (file.exists()) {
                RandomAccessFile targetFile = new RandomAccessFile(file, "r");
                long fileLength = targetFile.length();
                //播放
                if (rangeString != null) {

                    long range = Long.parseLong(rangeString.substring(rangeString.indexOf("=") + 1, rangeString.indexOf("-")));
                    //设置内容类型
                    response.setHeader("Content-Type", "video/mov");
                    //设置此次相应返回的数据长度
                    response.setHeader("Content-Length", String.valueOf(fileLength - range));
                    //设置此次相应返回的数据范围
                    response.setHeader("Content-Range", "bytes " + range + "-" + (fileLength - 1) + "/" + fileLength);
                    //返回码需要为206，而不是200
                    response.setStatus(HttpServletResponse.SC_PARTIAL_CONTENT);
                    //设定文件读取开始位置（以字节为单位）
                    targetFile.seek(range);
                } else {//下载

                    //设置响应头，把文件名字设置好
                    response.setHeader("Content-Disposition", "attachment; filename=" + fileName);
                    //设置文件长度
                    response.setHeader("Content-Length", String.valueOf(fileLength));
                    //解决编码问题
                    response.setHeader("Content-Type", "application/octet-stream");
                }


                byte[] cache = new byte[1024 * 300];
                int flag;
                while ((flag = targetFile.read(cache)) != -1) {
                    outputStream.write(cache, 0, flag);
                }
            } else {
                String message = "file:" + fileName + " not exists";
                //解决编码问题
                response.setHeader("Content-Type", "application/json");
                outputStream.write(message.getBytes(StandardCharsets.UTF_8));
            }

            outputStream.flush();
            outputStream.close();

        } catch (FileNotFoundException e) {
            log.error(e.getMessage());
        } catch (ClientAbortException e) {
            // 用户长时间暂停导致，不作处理
        } catch (IOException e) {
            log.error(e.getMessage());
        } catch (Exception e) {
            log.error(e.getMessage());
        }
    }



}
