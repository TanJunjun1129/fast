package com.j2eefast.framework.bussiness.aop;

import java.lang.reflect.Modifier;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import cn.hutool.core.util.StrUtil;
import com.j2eefast.common.core.base.entity.LoginUserEntity;
import com.j2eefast.framework.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import com.j2eefast.common.core.exception.RxcException;
import com.j2eefast.common.core.utils.ToolUtil;
import com.j2eefast.framework.annotation.DataFilter;
import com.j2eefast.framework.sys.service.SysCompService;
import com.j2eefast.framework.sys.service.SysDeptService;
import com.j2eefast.framework.sys.service.SysUserDeptService;
import com.j2eefast.framework.utils.Constant;
import cn.hutool.core.bean.BeanUtil;

/**
 * 
 * @Description:数据过滤，切面处理类
 * @author zhouzhou 18774995071@163.com
 * @time 2018-12-03 17:25
 *
 */
@Order(5)
@Aspect
@Component
public class DataFilterAspect {

	@Pointcut("@annotation(com.j2eefast.framework.annotation.DataFilter)")
	public void dataFilterCut() {

	}

	@SuppressWarnings("unchecked")
	@Before("dataFilterCut()")
	public void dataFilter(JoinPoint point) throws Throwable {

		Object params = point.getArgs()[0];
		if (params != null && params instanceof Map) {
			LoginUserEntity user = UserUtils.getUserInfo();
			// 如果不是超级管理员，则进行数据过滤
			if (!user.getId().equals(Constant.SUPER_ADMIN)) {
				//若用户为最大管理员切公司为总公司
				if(!(user.getCompId() == 0 &&
						UserUtils.hasRole(Constant.SU_ADMIN))) {
					Map map = (Map) params;
					map.put(Constant.SQL_FILTER, getSQLFilter(user, point));
				}
			}
			return;
		}

		throw new RxcException("数据权限接口，只能是Map类型参数，且不能为NULL");
	}

	/**
	 * 获取数据过滤的SQL
	 */
	private String getSQLFilter(LoginUserEntity user, JoinPoint point) {

		MethodSignature signature = (MethodSignature) point.getSignature();
		DataFilter dataFilter = signature.getMethod().getAnnotation(DataFilter.class);
		// 获取表的别名
		String compAlias = dataFilter.compAlias();
		String deptAlias = dataFilter.deptAlias();
		String userAlias = dataFilter.userAlias();
		StringBuilder sqlFilter = new StringBuilder(StrUtil.EMPTY);
		if (ToolUtil.isEmpty(compAlias)) {
			return sqlFilter.toString();
		}
		String dataScope = user.getDataScope();
		//所有数据权限与未设置
		if (Constant.DATA_SCOPE_ALL.equals(dataScope) || Constant.DATA_SCOPE_NULL.equals(dataScope)){
			return sqlFilter.toString();
		}

		// 公司以下数据权限
		if(Constant.DATA_SCOPE_COMP.equals(dataScope)){
			sqlFilter.append(StrUtil.format(
					"({}.id IN ( SELECT id FROM sys_comp WHERE id = {} OR FIND_IN_SET( {} , parent_ids )))",
					compAlias, user.getCompId(), user.getCompId()));
		}

		// 部门以下数据权限
		if(Constant.DATA_SCOPE_DEPT_AND_CHILD.equals(dataScope)){
			sqlFilter.append(StrUtil.format(
					"({}.id IN ( SELECT id FROM sys_comp WHERE id = {} OR FIND_IN_SET( {} , parent_ids )))",
					deptAlias, user.getDeptId(), user.getDeptId()));
		}
		//本部门数据权限
		if(Constant.DATA_SCOPE_DEPT.equals(dataScope)){
			sqlFilter.append(StrUtil.format(
					"({}.id = {})",
					deptAlias, user.getDeptId()));
		}
		//自定义数据
		if (Constant.DATA_SCOPE_CUSTOM.equals(dataScope)){
			sqlFilter.append(StrUtil.format(
					"({}.id IN ( SELECT dept_id FROM sys_role_dept WHERE role_id IN ({}))) ", deptAlias,
					StrUtil.join(StrUtil.COMMA,user.getRoleList())));
		}
		//仅本人数据权限
		if(Constant.DATA_SCOPE_SELF.equals(dataScope)){
			if(!userAlias.equals(StrUtil.EMPTY)){
				sqlFilter.append(StrUtil.format(
						"({}.id = {})",
						userAlias, user.getId()));
			}else{
				// 如果注解不填表别名则不允许任何查询
				sqlFilter.append(" 1=0");
			}
		}
		return sqlFilter.toString();
	}
}
