package com.qiuxinyu.ciliciliserver.common;

import lombok.AllArgsConstructor;
import lombok.Getter;

@AllArgsConstructor
@Getter
public enum ErrorCode {
    NOT_LOGIN("001", "当前用户未登录"),
    USERNAME_OR_PASSWORD_ERROR("002","用户名或密码错误");

    private String code;
    private String description;
}
