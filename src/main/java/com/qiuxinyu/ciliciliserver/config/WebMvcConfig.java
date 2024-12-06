package com.qiuxinyu.ciliciliserver.config;

import com.qiuxinyu.ciliciliserver.interceptor.TokenInterceptor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {
    @Resource
    private TokenInterceptor tokenInterceptor;

    @Value("${location.image}")
    private String imageLocation;

    @Value("${location.video}")
    private String videoLocation;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(tokenInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns("/api/user/login")
                .excludePathPatterns("/api/user/submit")
                .excludePathPatterns("/video/**")
                .excludePathPatterns("/image/**");
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/image/**")
                .addResourceLocations("file:" + imageLocation);
        // 代理转发，避免本地资源拒绝访问的问题
        registry.addResourceHandler("/video/**")
                .addResourceLocations("file:" + videoLocation);
    }
}
