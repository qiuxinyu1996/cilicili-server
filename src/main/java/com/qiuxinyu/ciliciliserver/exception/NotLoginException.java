package com.qiuxinyu.ciliciliserver.exception;

import lombok.NoArgsConstructor;

@NoArgsConstructor
public class NotLoginException extends RuntimeException {
    public NotLoginException(Exception e) {
        super(e);
    }
}
