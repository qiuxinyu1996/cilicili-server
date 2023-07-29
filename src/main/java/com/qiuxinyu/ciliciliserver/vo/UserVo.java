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

    public UserVo (User user) {
        this.id = user.getId();
        this.username = (user.getUsername());
        this.nickname = (user.getNickname());
        this.userIcon = (user.getUserIcon());
    }

}
