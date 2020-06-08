package com.j2eefast.generator.gen.mapper;

import com.j2eefast.generator.gen.entity.TestMEntity;
import java.io.Serializable;
import java.util.List;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
/**
 *
 * TESTDAO接口
 * @author: mfksn001@163.com
 * @date 2020-06-04 17:21
 */
public interface TestMMapper extends BaseMapper<TestMEntity> {

	/**
     * 自定义分页查询
     * @param  page 
     * @param  TestMEntity 实体类
     */
     Page<TestMEntity> findPage(IPage<TestMEntity> page,@Param("testM") TestMEntity testMEntity);

     TestMEntity selectById(Serializable id);
     
     List<TestMEntity> selectList(TestMEntity testMEntity);
     
     int insert(TestMEntity testMEntity);   
     
     int updateById(TestMEntity testMEntity);

     /**删除相关方法  使用mybatis-plus集成的 **/
}
