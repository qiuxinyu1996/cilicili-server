package com.qiuxinyu.ciliciliserver.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qiuxinyu.ciliciliserver.entity.Config;
import com.qiuxinyu.ciliciliserver.mapper.ConfigMapper;
import com.qiuxinyu.ciliciliserver.service.ConfigService;
import org.springframework.stereotype.Service;

@Service
public class ConfigServiceImpl extends ServiceImpl<ConfigMapper, Config> implements ConfigService {
}
