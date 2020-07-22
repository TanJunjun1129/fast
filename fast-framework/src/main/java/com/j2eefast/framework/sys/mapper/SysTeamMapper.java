package com.j2eefast.framework.sys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SysTeamMapper extends BaseMapper<SysTeamEntity> {
    /**
     * 查询队伍信息列表
     * @param teamname
     * @param status
     * @param compId
     * @param deptId
     * @return
     */
    Page<SysTeamEntity> findList(IPage<?> params,
                                 @Param("teamname") String teamname,
                                 @Param("status") String status,
                                 @Param("compId") String compId,
                                 @Param("deptId") String deptId,
                                 @Param("sql_filter") String sql_filter);

    /**
     * 根据用户id，获取用户信息
     * @param id
     * @return
     */
    SysTeamEntity getTeamById(@Param("id") Long id);

    /**
     * 修改状态
     * @param teamId
     * @param status
     * @return
     */
    int setStatus(@Param("id") Long teamId,
                  @Param("status") String status);

    /**
     * 逻辑删除记录
     * @param ids
     * @return
     */
    int delByIds(@Param("ids") Long[] ids);


}
