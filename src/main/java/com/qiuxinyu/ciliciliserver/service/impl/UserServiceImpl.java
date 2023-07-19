package com.qiuxinyu.ciliciliserver.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qiuxinyu.ciliciliserver.entity.User;
import com.qiuxinyu.ciliciliserver.mapper.UserMapper;
import com.qiuxinyu.ciliciliserver.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
}
