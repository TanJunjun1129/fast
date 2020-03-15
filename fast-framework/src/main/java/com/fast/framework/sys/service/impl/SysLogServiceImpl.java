package com.fast.framework.sys.service.impl;

import java.util.Map;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fast.common.core.page.Query;
import com.fast.common.core.utils.PageUtil;
import com.fast.common.core.utils.ToolUtil;
import com.fast.framework.sys.service.SysLogService;

import com.fast.framework.sys.dao.SysLogDao;
import com.fast.framework.sys.entity.SysLogEntity;

@Service("sysLogService")
public class SysLogServiceImpl extends ServiceImpl<SysLogDao, SysLogEntity> implements SysLogService {
	
	@Override
	public PageUtil queryPage(Map<String, Object> params) {
		String title = (String) params.get("title");
		String pabusinessTypes = (String)params.get("businessTypes");
		String status = (String) params.get("status");
		String operName = (String) params.get("operName");
		String beginTime = (String) params.get("beginTime");
		String endTime = (String) params.get("endTime");
		Page<SysLogEntity> page = this.baseMapper.selectPage(new Query<SysLogEntity>(params).getPage(),
				new QueryWrapper<SysLogEntity>()
						.like(ToolUtil.isNotEmpty(title), "title", title)
						.in(ToolUtil.isNotEmpty(pabusinessTypes),"business_type", ToolUtil.isNotEmpty(pabusinessTypes)? pabusinessTypes.split(","):null)
						.eq(ToolUtil.isNotEmpty(status), "status", status)
						.like(ToolUtil.isNotEmpty(operName), "oper_name", operName)
						.apply(ToolUtil.isNotEmpty(beginTime)," date_format(oper_time,'%y%m%d') >= date_format('"+beginTime+"','%y%m%d')")
						.apply(ToolUtil.isNotEmpty(endTime)," date_format(oper_time,'%y%m%d') <= date_format('"+endTime+"','%y%m%d')")
						);
		return new PageUtil(page);
	}
}
