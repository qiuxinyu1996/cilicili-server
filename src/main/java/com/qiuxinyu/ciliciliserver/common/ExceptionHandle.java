package com.qiuxinyu.ciliciliserver.common;

import com.qiuxinyu.ciliciliserver.exception.NotLoginException;
import com.qiuxinyu.ciliciliserver.exception.UsernameOrPasswordErrorException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@RestControllerAdvice
@Slf4j
public class ExceptionHandle {
    @ExceptionHandler(NotLoginException.class)
    public Result notLoginExceptionHandle(NotLoginException e) {
        log.info(e.getMessage());
        return Result.fail(ErrorCode.NOT_LOGIN);
    }

    @ExceptionHandler(UsernameOrPasswordErrorException.class)
    public Result usernameOrPasswordErrorExceptionHandle(UsernameOrPasswordErrorException e) {
        log.info(e.getMessage());
        return Result.fail(ErrorCode.USERNAME_OR_PASSWORD_ERROR);
    }
}
