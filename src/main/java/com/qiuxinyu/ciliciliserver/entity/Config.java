package com.qiuxinyu.ciliciliserver.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Config {
    private String id;
    @TableField("config_key")
    private String configKey;
    @TableField("config_value")
    private String configValue;
}
