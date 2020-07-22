package com.j2eefast.framework.sys.service;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONArray;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.j2eefast.common.core.config.RabbitmqProducer;
import com.j2eefast.common.core.page.Query;
import com.j2eefast.common.core.utils.CheckPassWord;
import com.j2eefast.common.core.utils.PageUtil;
import com.j2eefast.common.core.utils.ToolUtil;
import com.j2eefast.common.rabbit.constant.RabbitInfo;
import com.j2eefast.framework.annotation.DataFilter;
import com.j2eefast.framework.sys.entity.SysCompEntity;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.mapper.SysTeamMapper;
import com.j2eefast.framework.sys.mapper.SysUserMapper;
import com.j2eefast.framework.utils.Constant;
import com.j2eefast.framework.utils.Global;
import com.j2eefast.framework.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 系统用户
 * @author zhouzhou
 */
@Service
public class SysTeamService extends ServiceImpl<SysTeamMapper, SysTeamEntity> {

	@Resource
	private SysTeamMapper sysTeamMapper;
	/**
	 * 用户页面查询分页
	 * @param params
	 * @return
	 */
	@DataFilter(compAlias="c",deptAlias = "d",userAlias = "u")
	public PageUtil findPage(Map<String, Object> params) {
		String teamname = (String) params.get("teamname");
		String status = (String) params.get("status");
		String compId = (String) params.get("compId");
		String deptId = (String) params.get("deptId");
		Page<SysTeamEntity> page = this.sysTeamMapper.findList(	new Query<SysTeamEntity>(params).getPage(),
															StrUtil.nullToDefault(teamname,""),
															StrUtil.nullToDefault(status,""),
															StrUtil.nullToDefault(compId,""),
															StrUtil.nullToDefault(deptId,""),
															(String) params.get(Constant.SQL_FILTER));
		return new PageUtil(page);
	}

	/**
	 * 判断单位下的队伍名称是否重复
	 * @return
	 */
	public boolean checkTeamNameUnique(SysTeamEntity teamEntity) {
		QueryWrapper query=new QueryWrapper<SysTeamEntity>().eq("team_name",teamEntity.getTeamName()).eq("dept_id",teamEntity.getDeptId());
		if(teamEntity.getId()!=null){
			query.ne("id",teamEntity.getId());
		}
		int count = this.count(query);
		if(count > 0){
			return false;
		}
		return  true;
	}

	/**
	 * 新增数据
	 * @param teamEntity
	 * @return
	 */
	public boolean add(SysTeamEntity teamEntity){
		if(this.save(teamEntity)){
			return true;
		}
		return false;
	}

	/**
	 * 根据teamId获取队伍详细信息
	 * @param teamId
	 * @return
	 */
	public SysTeamEntity findTeamByTeamId(Long teamId){
		return this.sysTeamMapper.getTeamById(teamId);
	}

	/**
	 * 修改队伍信息
	 * @param team
	 * @return
	 */
	public boolean update(SysTeamEntity team){
		if(this.updateById(team)){
			return true;
		}
		return false;
	}

	/**
	 * 修改team状态
	 * @param team
	 * @return
	 */
	public boolean setStatus(SysTeamEntity team){
		if(sysTeamMapper.setStatus(team.getId(),team.getStatus())>0){
			return  true;
		}
		return  false;
	}

	/**
	 * 删除team
	 */
	public boolean delTeamsByIds(Long[] ids){
		return  this.sysTeamMapper.delByIds(ids)>0;
	}



}
