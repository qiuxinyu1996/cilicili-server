package com.qiuxinyu.ciliciliserver.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class User {
    private String id;
    private String username;
    private String password;
    private String nickname;
    private String userIcon;
    private Integer userLevel;
}
