package com.qiuxinyu.ciliciliserver.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetDetailListVo {
    private List<VideoVo> listDetail;
    private long current;
}
