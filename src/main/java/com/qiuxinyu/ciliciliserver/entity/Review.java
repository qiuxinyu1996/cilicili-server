package com.qiuxinyu.ciliciliserver.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Review {
  private String id;
  private String reviewVideoId;
  private String userId;
  private String reviewContent;
  private Timestamp reviewTime;
  private String toReplyUserId;
  private String toReplyReviewId;
  private String primaryReviewId;
}
