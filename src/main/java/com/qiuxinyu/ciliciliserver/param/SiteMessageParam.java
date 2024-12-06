package com.qiuxinyu.ciliciliserver.param;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SiteMessageParam {
    private String fromUsername;
    private String toUsername;
    private String messageContent;
}
