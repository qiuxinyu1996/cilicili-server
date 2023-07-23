package com.qiuxinyu.ciliciliserver.vo;

import com.qiuxinyu.ciliciliserver.entity.Video;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class GetDetailListVo {
    private List<Video> listDetail;
    private long current;
}
