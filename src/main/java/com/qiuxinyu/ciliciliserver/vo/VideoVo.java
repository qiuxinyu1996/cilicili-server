package com.qiuxinyu.ciliciliserver.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class VideoVo {
    private String id;
    private String name;
    private long current;
    private long total;
    private String source;
    private String cover;
    private String title;
    private String uploaderName;
    private String uploadTime;
    private UserVo uploader;
}
