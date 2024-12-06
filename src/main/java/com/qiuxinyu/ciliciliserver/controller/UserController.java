package com.qiuxinyu.ciliciliserver.controller;

import cn.hutool.core.lang.Console;
import cn.hutool.json.JSONUtil;
import cn.hutool.jwt.JWTUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.qiuxinyu.ciliciliserver.common.ErrorCode;
import com.qiuxinyu.ciliciliserver.common.Result;
import com.qiuxinyu.ciliciliserver.entity.User;
import com.qiuxinyu.ciliciliserver.exception.NotLoginException;
import com.qiuxinyu.ciliciliserver.exception.UsernameOrPasswordErrorException;
import com.qiuxinyu.ciliciliserver.param.LogoutParam;
import com.qiuxinyu.ciliciliserver.entity.Message;
import com.qiuxinyu.ciliciliserver.param.SiteMessageParam;
import com.qiuxinyu.ciliciliserver.service.MessageService;
import com.qiuxinyu.ciliciliserver.service.UserService;
import com.qiuxinyu.ciliciliserver.vo.LoginVo;
import com.qiuxinyu.ciliciliserver.vo.UserVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/api/user")
@CrossOrigin
@Slf4j
public class UserController {
    @Resource
    private UserService userService;

    @Resource
    private RedisTemplate redisTemplate;

    @Resource
    private MessageService messageService;

    @PostMapping("/login")
    public Result login(@RequestBody User loginUser) {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getUsername, loginUser.getUsername());
        queryWrapper.last("limit 1 ");
        User dbUser = userService.getOne(queryWrapper);
        if (dbUser != null && loginUser.getPassword().equals(dbUser.getPassword())) {
            // generate token
            Map payload = new HashMap() {
                {
                    put("userId", dbUser.getId());
                }
            };
            String token = JWTUtil.createToken(payload, "this is key".getBytes());
            // add to redis
            redisTemplate.opsForValue().set("userId:" + dbUser.getId(), JSONUtil.toJsonStr(loginUser));
            // generate vo
            LoginVo loginVo = new LoginVo(token, new UserVo(dbUser));
            return Result.success(loginVo);
        }
        log.error("密码错误");
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
        Console.log("check");
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
        return Result.fail(ErrorCode.NO_AUTH);
    }

    @PostMapping("/siteMessage")
    public Result siteMessage(@RequestBody SiteMessageParam siteMessageParam) {
        LambdaQueryWrapper<User> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(User::getUsername, siteMessageParam.getToUsername());
        User targetUser = userService.getOne(queryWrapper);
        if (targetUser == null) {
            return Result.fail(ErrorCode.NO_USER);
        }
        Message message = new Message(
                UUID.randomUUID().toString(),
                siteMessageParam.getFromUsername(),
                siteMessageParam.getToUsername(),
                siteMessageParam.getMessageContent(),
                System.currentTimeMillis()
        );
        messageService.save(message);
        return Result.success();
    }

    @GetMapping("/getSiteMessage")
    public Result getSiteMessage(@RequestParam String toUsername) {
        LambdaQueryWrapper<Message> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Message::getToUsername, toUsername);
        queryWrapper.orderByDesc(Message::getCreatedAt);
        List<Message> messageList = messageService.list(queryWrapper);
        return Result.success(messageList);
    }
}
