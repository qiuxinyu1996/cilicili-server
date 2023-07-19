package com.qiuxinyu.ciliciliserver.interceptor;

import cn.hutool.jwt.JWT;
import cn.hutool.jwt.JWTUtil;
import com.qiuxinyu.ciliciliserver.common.Const;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class TokenInterceptor implements HandlerInterceptor {
    @Resource
    private RedisTemplate redisTemplate;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 确认请求头携带token
        String token = request.getHeader("token");
        if (StringUtils.isBlank(token)) {
            return false;
        }
        // 验证token合法性
        String userId;
        try {
            userId = (String) JWTUtil.parseToken(token).getPayload("userId");
        } catch (Exception e) {
            // token无法被正常解析
            return false;
        }
        if (!redisTemplate.hasKey(Const.Redis.USER_ID_PREFIX + userId)) {
            // 用户信息失效
            return false;
        }
        // token合法且有效
        return true;
    }

}
