package com.qiuxinyu.ciliciliserver.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.qiuxinyu.ciliciliserver.entity.Review;
import com.qiuxinyu.ciliciliserver.mapper.ReviewMapper;
import com.qiuxinyu.ciliciliserver.service.ReviewService;
import org.springframework.stereotype.Service;

@Service
public class ReviewServiceImpl extends ServiceImpl<ReviewMapper, Review> implements ReviewService {

}
