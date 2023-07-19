package com.qiuxinyu.ciliciliserver.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetSourceParam {
    private String name;
    private int current;
}
