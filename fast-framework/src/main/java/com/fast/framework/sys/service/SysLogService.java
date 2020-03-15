package com.fast.framework.sys.service;

import java.util.Map;

import com.baomidou.mybatisplus.extension.service.IService;
import com.fast.common.core.utils.PageUtil;
import com.fast.framework.sys.entity.SysLogEntity;

/**
 * 系统日志
 */
public interface SysLogService extends IService<SysLogEntity> {

	PageUtil queryPage(Map<String, Object> params);

}
