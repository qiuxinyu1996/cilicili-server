package com.qiuxinyu.ciliciliserver.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qiuxinyu.ciliciliserver.entity.Message;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MessageMapper extends BaseMapper<Message> {
}
