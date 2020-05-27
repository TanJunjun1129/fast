package com.j2eefast.generator.gen.mapper;

import com.j2eefast.generator.gen.entity.TestEntity;
import java.io.Serializable;
import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
/**
 *
 * example_testDAO接口
 * @author: mfksn001@163.com
 * @date 2020-05-27 22:06
 */
public interface TestMapper extends BaseMapper<TestEntity> {

	/**
     * 自定义分页查询
     * @param  page 
     * @param  TestEntity 实体类
     */
     Page<TestEntity> findPage(IPage<TestEntity> page,@Param("test") TestEntity testEntity);

     TestEntity selectById(Serializable id);
     
     List<TestEntity> selectList(TestEntity testEntity);
     
     int insert(TestEntity testEntity);   
     
     int updateById(TestEntity testEntity);

     /**删除相关方法  使用mybatis-plus集成的 **/
}
