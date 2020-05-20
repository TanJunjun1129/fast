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
 * @date 2020-05-20 15:06
 */
@Service
public class TestService extends ServiceImpl<TestMapper,TestEntity> {

	@Resource
	private TestMapper testMapper;

	/**
	 * 页面分页查询
     */
	public PageUtil findPage(Map<String, Object> params) {
		QueryWrapper<TestEntity> r = new QueryWrapper<TestEntity>();
                        String name = (String) params.get("name");
                    r.like(ToolUtil.isNotEmpty(name), "name", name);
                        
                      String email = (String) params.get("email");
                    r.eq(ToolUtil.isNotEmpty(email), "email", email);
        
                      String phone = (String) params.get("phone");
                    r.eq(ToolUtil.isNotEmpty(phone), "phone", phone);
        
                      String age = (String) params.get("age");
                    r.eq(ToolUtil.isNotEmpty(age), "age", age);
        
                      String sex = (String) params.get("sex");
                    r.eq(ToolUtil.isNotEmpty(sex), "sex", sex);
        
                      String birthday = (String) params.get("birthday");
                    r.eq(ToolUtil.isNotEmpty(birthday), "birthday", birthday);
        
                      String leaveDate = (String) params.get("leaveDate");
                    r.eq(ToolUtil.isNotEmpty(leaveDate), "leave_date", leaveDate);
        
                                                          String pin = (String) params.get("pin");
                    r.eq(ToolUtil.isNotEmpty(pin), "pin", pin);
        
                      String position = (String) params.get("position");
                    r.eq(ToolUtil.isNotEmpty(position), "position", position);
        
                      String hobby = (String) params.get("hobby");
                    r.eq(ToolUtil.isNotEmpty(hobby), "hobby", hobby);
        
                      String joinDate = (String) params.get("joinDate");
                    r.eq(ToolUtil.isNotEmpty(joinDate), "join_date", joinDate);
        
                      String noationalId = (String) params.get("noationalId");
                    r.eq(ToolUtil.isNotEmpty(noationalId), "noational_id", noationalId);
        
                      String education = (String) params.get("education");
                    r.eq(ToolUtil.isNotEmpty(education), "education", education);
        
    		Page<TestEntity> page = this.baseMapper.selectPage(new Query<TestEntity>(params).getPage(), r);
		return new PageUtil(page);
    }

	/**
     * 批量删除
     */
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteTestByIds(Long[] ids) {
		return this.removeByIds(Arrays.asList(ids));
	}

	/**
     * 单个删除
     */
	public boolean deleteTestById(Long id) {
		return this.removeById(id);
	}

	/**
     * 保存
     */
	public boolean saveTest(TestEntity test){
        return this.save(test);
    }

	/**
     * 修改根居ID
     */
	public boolean updateTestById(TestEntity test) {
		return this.updateById(test);
	}

	/**
     * 根居ID获取对象
     */
	public TestEntity getTestById(Long id){
		return this.getById(id);
	}
}
