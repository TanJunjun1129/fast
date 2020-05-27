package com.j2eefast.generator.gen.service;


import com.j2eefast.generator.gen.entity.TestEntity;
import com.j2eefast.generator.gen.mapper.TestMapper;
import com.j2eefast.common.core.page.Query;
import com.j2eefast.common.core.utils.PageUtil;
import com.j2eefast.common.core.utils.ToolUtil;
import org.springframework.stereotype.Service;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import javax.annotation.Resource;
import org.springframework.transaction.annotation.Transactional;
import java.util.Map;
import java.util.Arrays;
/**
 *
 * 单表范例Service接口
 * @author: mfksn001@163.com
 * @date 2020-05-27 14:31
 */
@Service
public class TestService extends ServiceImpl<TestMapper,TestEntity> {

	@Resource
	private TestMapper testMapper;

	/**
	 * mybaitis-plus 页面分页查询
     */
	public PageUtil findPage(Map<String, Object> params) {
        QueryWrapper<TestEntity> queryWrapper = new QueryWrapper<TestEntity>();
           String name = (String) params.get("name");
        queryWrapper.like(ToolUtil.isNotEmpty(name), "name", name);
          String email = (String) params.get("email");
         queryWrapper.eq(ToolUtil.isNotEmpty(email), "email", email);
          String phone = (String) params.get("phone");
         queryWrapper.eq(ToolUtil.isNotEmpty(phone), "phone", phone);
          String age = (String) params.get("age");
        queryWrapper.gt(ToolUtil.isNotEmpty(age),"age", age);
          String sex = (String) params.get("sex");
         queryWrapper.eq(ToolUtil.isNotEmpty(sex), "sex", sex);
          String birthday = (String) params.get("birthday");
        String beginBirthday = (String) params.get("beginBirthday");
        String endBirthday = (String) params.get("endBirthday");
        queryWrapper.between(ToolUtil.isNotEmpty(beginBirthday) || ToolUtil.isNotEmpty(endBirthday), "birthday", beginBirthday,endBirthday);
          String leaveDate = (String) params.get("leaveDate");
         queryWrapper.eq(ToolUtil.isNotEmpty(leaveDate), "leave_date", leaveDate);
                            String pin = (String) params.get("pin");
        queryWrapper.lt(ToolUtil.isNotEmpty(pin), "pin", pin);
          String position = (String) params.get("position");
         queryWrapper.eq(ToolUtil.isNotEmpty(position), "position", position);
          String hobby = (String) params.get("hobby");
         queryWrapper.eq(ToolUtil.isNotEmpty(hobby), "hobby", hobby);
          String joinDate = (String) params.get("joinDate");
         queryWrapper.eq(ToolUtil.isNotEmpty(joinDate), "join_date", joinDate);
          String noationalId = (String) params.get("noationalId");
         queryWrapper.eq(ToolUtil.isNotEmpty(noationalId), "noational_id", noationalId);
          String education = (String) params.get("education");
         queryWrapper.eq(ToolUtil.isNotEmpty(education), "education", education);
          String leaderId = (String) params.get("leaderId");
         queryWrapper.eq(ToolUtil.isNotEmpty(leaderId), "leader_id", leaderId);
             String deptIds = (String) params.get("deptIds");
         queryWrapper.eq(ToolUtil.isNotEmpty(deptIds), "dept_ids", deptIds);
          String roleIds = (String) params.get("roleIds");
         queryWrapper.eq(ToolUtil.isNotEmpty(roleIds), "role_ids", roleIds);
  		Page<TestEntity> page = testMapper.selectPage(new Query<TestEntity>(params).getPage(), queryWrapper);
		return new PageUtil(page);
    }

    /**
     * 自定义分页查询，含关联实体对像
     */
	public PageUtil findPage(Map<String, Object> params,TestEntity testEntity) {
		Page<TestEntity> page = testMapper.findPage(new Query<TestEntity>(params).getPage(), testEntity)  ;
		return new PageUtil(page);
	}
	/**
     * 批量删除
     */
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteTestByIds(Long[] ids) {
		return removeByIds(Arrays.asList(ids));
	}

	/**
     * 单个删除
     */
	public boolean deleteTestById(Long id) {
		return removeById(id);
	}

	/**
     * 保存
     */
	public boolean saveTest(TestEntity test){
        return save(test);
    }

	/**
     * 修改根居ID
     */
	public boolean updateTestById(TestEntity test) {
		return updateById(test);
	}

	/**
     * 根居ID获取对象
     */
	public TestEntity getTestById(Long id){
		return getById(id);
	}
}