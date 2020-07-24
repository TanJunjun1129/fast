package com.j2eefast.framework.datasync.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.j2eefast.common.core.mutidatasource.annotaion.DataSource;
import com.j2eefast.framework.datasync.entity.CompInst;
import com.j2eefast.framework.datasync.entity.Institution;
import com.j2eefast.framework.sys.entity.SysCompEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface InstitutionMapper extends BaseMapper<Institution> {
    @DataSource(name = "nn_drainage")
    List<Institution> queryAllInst();

    CompInst getCompInst(@Param("compId") Long compId);

    @DataSource(name = "nn_drainage")
    int insertInst(Institution institution);

    int insertCompInst(CompInst compInst);

    List<SysCompEntity> getCompList(@Param("type") Integer type);

    @DataSource(name = "nn_drainage")
    Institution getInstitutionById(@Param("id") Long id);

    @DataSource(name = "nn_drainage")
    int updateInst(Institution institution);
}
