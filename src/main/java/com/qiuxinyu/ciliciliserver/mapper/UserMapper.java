package com.qiuxinyu.ciliciliserver.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.qiuxinyu.ciliciliserver.entity.User;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface UserMapper extends BaseMapper<User> {
}
