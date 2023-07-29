package com.qiuxinyu.ciliciliserver.entity;


import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Video {
  private String id;
  private String name;
  private long current;
  private long total;
  private String source;
  private String cover;
  private String title;
  @TableField("uploader_id")
  private String uploaderId;
  @TableField("upload_time")
  private Timestamp uploadTime;
}
