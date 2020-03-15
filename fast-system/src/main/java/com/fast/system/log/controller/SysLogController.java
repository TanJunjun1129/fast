package com.fast.system.log.controller;

import com.fast.common.core.utils.PageUtil;
import com.fast.common.core.utils.R;
import com.fast.framework.sys.service.SysLogService;
import com.fast.framework.utils.AbstractController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

/**
 * 系统操作日志 
 */
@Controller
@RequestMapping("/sys/operlog")
public class SysLogController extends AbstractController {

	private String urlPrefix = "modules/log";

	@Autowired
	private SysLogService sysLogService;

	@RequiresPermissions("sys:log:view")
	@GetMapping()
	public String operlog()
	{
		return urlPrefix + "/operlog";
	}

	/**
	 * 列表
	 */
	@ResponseBody
	@RequestMapping("/list")
	@RequiresPermissions("sys:log:list")
	public R list(@RequestParam Map<String, Object> params) {
		PageUtil page = sysLogService.queryPage(params);
		return R.ok().put("page", page);
	}

	@RequiresPermissions("sys:log:detail")
	@GetMapping("/detail/{operId}")
	public String detail(@PathVariable("operId") Long operId, ModelMap mmap)
	{
		mmap.put("sysLog", sysLogService.getById(operId));
		return urlPrefix + "/detail";
	}




}
