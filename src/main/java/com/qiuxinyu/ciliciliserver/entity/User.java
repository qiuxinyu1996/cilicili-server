package com.qiuxinyu.ciliciliserver.entity;

import com.baomidou.mybatisplus.annotation.TableField;
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
    private Integer coin;
    private Integer follow;
    private Integer fans;
    private Integer action;
    private String sign;
    @TableField("space_cover")
    private String spaceCover;
}
