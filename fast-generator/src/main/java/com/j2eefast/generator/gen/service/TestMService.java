package com.j2eefast.generator.gen.service;


import com.j2eefast.generator.gen.entity.TestMEntity;
import com.j2eefast.generator.gen.mapper.TestMMapper;
import com.j2eefast.common.core.mutidatasource.annotaion.DataSource;
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
 * testMService接口
 * @author: mfksn001@163.com
 * @date 2020-06-04 17:21
 */
@Service
public class TestMService extends ServiceImpl<TestMMapper,TestMEntity> {

	@Resource
	private TestMMapper testMMapper;

	/**
	 * mybaitis-plus 页面分页查询
     */
    @DataSource(name="GOA")
	public PageUtil findPage(Map<String, Object> params) {
        QueryWrapper<TestMEntity> queryWrapper = new QueryWrapper<TestMEntity>();
           String name = (String) params.get("name");
        queryWrapper.like(ToolUtil.isNotEmpty(name), "name", name);
          String brithday = (String) params.get("brithday");
         queryWrapper.eq(ToolUtil.isNotEmpty(brithday), "brithday", brithday);
     		Page<TestMEntity> page = testMMapper.selectPage(new Query<TestMEntity>(params).getPage(), queryWrapper);
		return new PageUtil(page);
    }

    /**
     * 自定义分页查询，含关联实体对像
     */
    @DataSource(name="GOA")
	public PageUtil findPage(Map<String, Object> params,TestMEntity testMEntity) {
		Page<TestMEntity> page = testMMapper.findPage(new Query<TestMEntity>(params).getPage(), testMEntity)  ;
		return new PageUtil(page);
	}
	/**
     * 批量删除
     */
    @DataSource(name="GOA")
	@Transactional(rollbackFor = Exception.class)
	public boolean deleteTestMByIds(Long[] ids) {
		return removeByIds(Arrays.asList(ids));
	}

	/**
     * 单个删除
     */
    @DataSource(name="GOA")
	public boolean deleteTestMById(Long id) {
		return removeById(id);
	}

	/**
     * 保存
     */
    @DataSource(name="GOA")
	public boolean saveTestM(TestMEntity testM){
        return save(testM);
    }

	/**
     * 修改根居ID
     */
    @DataSource(name="GOA")
	public boolean updateTestMById(TestMEntity testM) {
		return updateById(testM);
	}

	/**
     * 根居ID获取对象
     */
    @DataSource(name="GOA")
	public TestMEntity getTestMById(Long id){
		return getById(id);
	}
}
