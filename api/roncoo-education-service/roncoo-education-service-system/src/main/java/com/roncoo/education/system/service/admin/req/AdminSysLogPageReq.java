package com.roncoo.education.system.service.admin.req;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.Accessors;

import java.io.Serializable;

/**
 * 后台操作日志表-分页列出
 *
 * @author wujing
 */
@Data
@Accessors(chain = true)
public class AdminSysLogPageReq implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 真实姓名
     */
    @ApiModelProperty(value = "真实姓名", required = false)
    private String realName;
    /**
     * 当前页
     */
    @ApiModelProperty(value = "当前页", required = true)
    private int pageCurrent = 1;
    /**
     * 每页记录数
     */
    @ApiModelProperty(value = "每页记录数", required = true)
    private int pageSize = 20;
}
