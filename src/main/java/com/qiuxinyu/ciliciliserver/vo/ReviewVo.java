package com.qiuxinyu.ciliciliserver.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReviewVo {
    private String id;
    private String userIcon;
    private String userName;
    private Integer userLevel;
    private String reviewContent;
    private String reviewTime;
    private String toReplyUserName;
    private String toReplyReviewContent;
    private List<ReviewVo> replyList;
    private String userId;
    private String primaryReviewId;
    private UserVo reviewer;
}
