package com.qiuxinyu.ciliciliserver.common;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Result {
    private Boolean success;
    private String code;
    private Object data;
    private String msg;

    public static Result success(Object data) {
        return new Result(true, "200", data, null);
    }

    public static Result success() {
        return Result.success(null);
    }

    public static Result fail(String code, String msg) {
        return new Result(false, code, null, msg);
    }

    public static Result fail(String code) {
        return new Result(false, code, null, null);
    }

    public static Result fail(ErrorCode errorCode) {
        return new Result(false, errorCode.getCode(), null, errorCode.getDescription());
    }
}
