package com.j2eefast.modules.sys.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.ArrayUtil;
import cn.hutool.json.JSONUtil;
import com.alibaba.excel.EasyExcel;
import com.j2eefast.common.core.base.entity.LoginUserEntity;
import com.j2eefast.common.core.business.annotaion.BussinessLog;
import com.j2eefast.common.core.controller.BaseController;
import com.j2eefast.common.core.enums.BusinessType;
import com.j2eefast.common.core.utils.*;
import com.j2eefast.framework.annotation.RepeatSubmit;
import com.j2eefast.framework.log.entity.SysLoginInfoEntity;
import com.j2eefast.framework.log.service.SysLoginInfoSerice;
import com.j2eefast.framework.sys.entity.SysCompEntity;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.service.*;
import com.j2eefast.framework.utils.Constant;
import com.j2eefast.framework.utils.Global;
import com.j2eefast.framework.utils.UserUtils;
import com.j2eefast.generator.gen.service.TestService;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.constraints.NotNull;
import java.io.File;
import java.util.List;
import java.util.Map;

/**
 *  系统用户控制器
 * @author zhouzhou
 * @date 2020-03-07 13:28
 */
@Controller
@RequestMapping("/sys/team")
public class SysTeamController extends BaseController {

	private String urlPrefix = "modules/sys/team";

	@Autowired
	private SysUserTeamService sysUserTeamService;
	@Autowired
	private SysTeamService sysTeamService;

	@Autowired
	private TestService testService;

	
	@RequiresPermissions("sys:team:view")
	@GetMapping()
	public String team(ModelMap mmap){
		return urlPrefix + "/team";
	}
	
	/**
	 * 页面用户表格分页查询
	 * @author zhouzhou
	 * @date 2020-03-07 13:31
	 */
	@RequestMapping("/list")
	@RequiresPermissions("sys:team:view")
	@ResponseBody
	public ResponseData list(@RequestParam Map<String, Object> params) {
		PageUtil page = sysTeamService.findPage(params);
		return success(page);
	}

	/**
	 * 新增用户
	 * @author zhouzhou
	 * @date 2020-03-07 13:33
	 */
	@GetMapping("/add")
	@RequiresPermissions("sys:team:add")
	public String add(){
		return urlPrefix + "/add";
	}

	/**
	 * 保存配置
	 */
	@BussinessLog(title = "队伍管理", businessType = BusinessType.INSERT)
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	@RequiresPermissions("sys:team:add")
	@ResponseBody
	public ResponseData save(@Validated SysTeamEntity team) {
		ValidatorUtil.validateEntity(team);
		if (!sysTeamService.checkTeamNameUnique(team)){
			return error("新增公司'" + team.getTeamName() + "'失败,名称已存在");
		}
		sysTeamService.add(team);
		return success();
	}
	/**
	 * 校验队伍名称是否重复
	 */
	@RequestMapping(value = "/checkTeamNameUnique", method = RequestMethod.POST)
	@ResponseBody
	public ResponseData checkTeamNameUnique(SysTeamEntity team){
		if(sysTeamService.checkTeamNameUnique(team)){
			return success();
		}
		return error("已经存在!");
	}

	/**
	 * 修改队伍
	 */
	@GetMapping("/edit/{teamId}")
	@RequiresPermissions("sys:team:edit")
	public String edit(@PathVariable("teamId") Long teamId,ModelMap mmap){
		SysTeamEntity team=sysTeamService.findTeamByTeamId(teamId);
		mmap.put("team",team);
		return urlPrefix + "/edit";
	}

	/**
	 * 修改队伍
	 */
	@BussinessLog(title = "队伍管理", businessType = BusinessType.UPDATE)
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	@RequiresPermissions("sys:team:edit")
	@ResponseBody
	public ResponseData update(@Validated SysTeamEntity team) {
		ValidatorUtil.validateEntity(team);
		if (!sysTeamService.checkTeamNameUnique(team)) {
			return error("修改的队伍'" + team.getTeamName() + "'失败,名称已存在");
		}
		if(sysTeamService.update(team)){
			return success();
		}else{
			return error("修改失败!");
		}
	}

	/**
	 * 用户状态修改
	 */
	@BussinessLog(title = "队伍管理", businessType = BusinessType.UPDATE)
	@RequiresPermissions("sys:team:del")
	@PostMapping("/changeStatus")
	@ResponseBody
	public ResponseData changeStatus(SysTeamEntity team)
	{
		return sysTeamService.setStatus(team) ? success() : error("修改失败!");
	}

	/**
	 * 删除队伍
	 */
	@BussinessLog(title = "队伍管理", businessType = BusinessType.DELETE)
	@RequestMapping( value = "/del", method = RequestMethod.POST)
	@RequiresPermissions("sys:team:del")
	@ResponseBody
	public ResponseData delete(Long[] ids) {
		//判断队伍下面是否有人员
		if(ids==null||ids.length==0){
			return error("未选择需要删除的队伍");
		}
		if(sysUserTeamService.isTeamExistUser(ids)){
			return error("队伍中存在人员，无法删除");
		}
		//end 判断是否有人员
		return sysTeamService.delTeamsByIds(ids)?success(): error("删除失败!");
	}

	/**
	 * 进入队伍分配用户界面
	 * @param teamId
	 * @param mmap
	 * @return
	 */
	@GetMapping("/authUser/{teamId}")
	@RequiresPermissions("sys:team:authUserList")
	public String authorUser(@PathVariable("teamId") Long teamId, ModelMap mmap){
		mmap.put("teamId", teamId);
		return urlPrefix + "/authUser";
	}

	/**
	 * 授权用户列表
	 */
	@RequestMapping("/authUser/list")
	@RequiresPermissions("sys:team:authUserList")
	@ResponseBody
	public ResponseData authUserList(@RequestParam Map<String, Object> params) {
		PageUtil page = sysUserTeamService.findUserByTeamId(params);
		return success(page);
	}
	/**
	 * 选择用户
	 */
	@GetMapping("/authUser/selectUser/{teamId}")
	@RequiresPermissions("sys:team:authUserList")
	public String selectUser(@PathVariable("teamId") Long teamId, ModelMap mmap){
		mmap.put("teamId",teamId);
		return urlPrefix + "/selectUser";
	}
	/**
	 * 选择用户列表
	 */
	@RequestMapping("/authUser/unallocatedList")
	@RequiresPermissions("sys:role:authUserList")
	@ResponseBody
	public ResponseData unallocatedList(@RequestParam Map<String, Object> params) {
		PageUtil page = sysUserTeamService.findUnallocatedList(params);
		return success(page);
	}

	/**
	 * 批量选择用户授权
	 */

	@BussinessLog(title = "队伍管理", businessType = BusinessType.GRANT)
	@RequiresPermissions("sys:team:authUserList")
	@PostMapping("/authUser/insertAuthUsers")
	@ResponseBody
	public ResponseData selectAuthUserAll(@NotNull Long teamId,@NotNull Long[] userIds){
		return  sysUserTeamService.addAuthUsers(teamId, userIds)?success() : error("修改失败");
	}

	/**
	 * 取消授权
	 */
	@BussinessLog(title = "队伍管理", businessType = BusinessType.GRANT)
	@PostMapping("/authUser/cancel")
	@ResponseBody
	@RequiresPermissions("sys:team:authUserList")
	public ResponseData cancelAuthUser(@NotNull Long teamId,@NotNull Long[] userIds){
		return sysUserTeamService.delTeamUser(teamId,userIds) ? success() : error("修改失败");
	}


}
