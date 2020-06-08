package com.j2eefast.framework.sys.service;


import com.j2eefast.framework.sys.entity.SysAreaEntity;
import com.j2eefast.framework.sys.mapper.SysAreaMapper;
import com.j2eefast.common.core.page.Query;
import com.j2eefast.common.core.utils.PageUtil;
import com.j2eefast.common.core.utils.ToolUtil;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.Arrays;
/**
 *
 * 行政区域Service接口
 * @author: ZhouZhou
 * @date 2020-06-04 23:52
 */
@Service
public class SysAreaService extends ServiceImpl<SysAreaMapper,SysAreaEntity> {

	@Resource
	private SysAreaMapper sysAreaMapper;

	/**
	 * mybaitis-plus 页面分页查询
     */
	public PageUtil findPage(Map<String, Object> params) {
        QueryWrapper<SysAreaEntity> queryWrapper = new QueryWrapper<SysAreaEntity>();
              String name = (String) params.get("name");
        queryWrapper.like(ToolUtil.isNotEmpty(name), "name", name);
          String level = (String) params.get("level");
         queryWrapper.eq(ToolUtil.isNotEmpty(level), "level", level);
                      String zipCode = (String) params.get("zipCode");
         queryWrapper.eq(ToolUtil.isNotEmpty(zipCode), "zip_code", zipCode);
          String areaCode = (String) params.get("areaCode");
         queryWrapper.eq(ToolUtil.isNotEmpty(areaCode), "area_code", areaCode);
           		Page<SysAreaEntity> page = sysAreaMapper.selectPage(new Query<SysAreaEntity>(params).getPage(), queryWrapper);
		return new PageUtil(page);
    }

    /**
     * 自定义分页查询，含关联实体对像
     */
	public PageUtil findPage(Map<String, Object> params,SysAreaEntity sysAreaEntity) {
		Page<SysAreaEntity> page = sysAreaMapper.findPage(new Query<SysAreaEntity>(params).getPage(), sysAreaEntity)  ;
		return new PageUtil(page);
	}

	public List<SysAreaEntity> selectList(SysAreaEntity sysAreaEntity){
		return this.baseMapper.selectList(sysAreaEntity);
	}
	/**
     * 批量删除
     */
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteSysAreaByIds(Long[] ids) {
		return removeByIds(Arrays.asList(ids));
	}

	/**
     * 单个删除
     */
	public boolean deleteSysAreaById(Long id) {
		return removeById(id);
	}

	/**
     * 保存
     */
	public boolean saveSysArea(SysAreaEntity sysArea){
        return save(sysArea);
    }

	/**
     * 修改根居ID
     */
	public boolean updateSysAreaById(SysAreaEntity sysArea) {
		return updateById(sysArea);
	}

	/**
     * 根居ID获取对象
     */
	public SysAreaEntity getSysAreaById(Long id){
		return getById(id);
	}
}
