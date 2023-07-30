package com.qiuxinyu.ciliciliserver.vo;

import com.qiuxinyu.ciliciliserver.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserVo {
    private String id;
    private String username;
    private String nickname;
    private String userIcon;
    private Integer userLevel;
    private Integer coin;
    private Integer follow;
    private Integer fans;
    private Integer action;
    private String sign;
    private String spaceCover;
    public UserVo (User user) {
        this.id = user.getId();
        this.username = user.getUsername();
        this.nickname = user.getNickname();
        this.userLevel = user.getUserLevel();
        this.userIcon = user.getUserIcon();
        this.coin = user.getCoin();
        this.follow = user.getFollow();
        this.fans = user.getFans();
        this.action = user.getAction();
        this.sign = user.getSign();
        this.spaceCover = user.getSpaceCover();
    }
}
