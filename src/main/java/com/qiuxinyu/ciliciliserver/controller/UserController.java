package com.qiuxinyu.ciliciliserver.controller;

import cn.hutool.json.JSONUtil;
import cn.hutool.jwt.JWTUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.entity.User;
import com.qiuxinyu.ciliciliserver.exception.NotLoginException;
import com.qiuxinyu.ciliciliserver.exception.UsernameOrPasswordErrorException;
import com.qiuxinyu.ciliciliserver.param.LogoutParam;
import com.qiuxinyu.ciliciliserver.service.UserService;
import com.qiuxinyu.ciliciliserver.vo.LoginVo;
import com.qiuxinyu.ciliciliserver.vo.UserVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/user")
@CrossOrigin
@Slf4j
public class UserController {
    @Resource
    private UserService userService;

    @Resource
    private RedisTemplate redisTemplate;

    @PostMapping("/login")
    public Result login(@RequestBody User loginUser) {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getUsername, loginUser.getUsername());
        queryWrapper.last("limit 1 ");
        User dbUser = userService.getOne(queryWrapper);
        if (dbUser != null && loginUser.getPassword().equals(dbUser.getPassword())) {
            // generate token
            Map payload = new HashMap(){
                {
                    put("userId", dbUser.getId());
                }
            };
            String token = JWTUtil.createToken(payload, "this is key".getBytes());
            log.info("user: {} has generate token", dbUser.getUsername());
            // add to redis
            redisTemplate.opsForValue().set("userId:" + dbUser.getId(), JSONUtil.toJsonStr(loginUser));
            log.info("user`s info has added into redis");
            // generate vo
            LoginVo loginVo = new LoginVo(token, new UserVo(dbUser));
            return Result.success(loginVo);
        }
        throw new UsernameOrPasswordErrorException();
    }

    @PostMapping("/logout")
    public Result logout(@RequestBody LogoutParam logoutParam) {
        String token = logoutParam.getToken();
        if (StringUtils.isBlank(token)) {
            throw new NotLoginException();
        }

        String userId = (String) JWTUtil.parseToken(token).getPayload("userId");
        if (!redisTemplate.delete("userId:" + userId)) {
            log.warn("delete user`s token fail");
        }

        return Result.success();
    }

    @PostMapping("/check")
    public Result checkLogin(@RequestBody LogoutParam logoutParam) {
        try {
            String userId = (String) JWTUtil.parseToken(logoutParam.getToken()).getPayload("userId");
            if (redisTemplate.hasKey("userId:" + userId)) {
                return Result.success();
            }
            throw new NotLoginException();
        } catch (Exception e) {
            throw new NotLoginException(e);
        }
    }

    @PostMapping("/submit")
    public Result submit() {
        return Result.success();
    }
}
