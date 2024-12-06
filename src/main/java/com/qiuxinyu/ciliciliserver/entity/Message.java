package com.qiuxinyu.ciliciliserver.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Message {
    private String id;
    private String fromUsername;
    private String toUsername;
    private String messageContent;
    private long createdAt;
//    private int read;
}
