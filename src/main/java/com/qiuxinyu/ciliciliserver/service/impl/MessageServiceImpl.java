package com.qiuxinyu.ciliciliserver.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qiuxinyu.ciliciliserver.entity.Message;
import com.qiuxinyu.ciliciliserver.mapper.MessageMapper;
import com.qiuxinyu.ciliciliserver.service.MessageService;
import org.springframework.stereotype.Service;

@Service
public class MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {
}
