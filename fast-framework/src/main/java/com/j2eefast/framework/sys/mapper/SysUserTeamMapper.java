package com.j2eefast.framework.sys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.entity.SysUserTeamEntity;
import org.apache.ibatis.annotations.Param;

public interface SysUserTeamMapper extends BaseMapper<SysUserTeamEntity> {
    /**
     * 统计队伍s下的总人员数
     * @param ids
     * @return
     */
    int countUsersInTeams(@Param("teamids") Long[] ids);

    /**
     * 删除人员的所有帮顶队伍信息
     * @param userIds
     * @return
     */
    int delUserTeam(@Param("userIds") Long[] userIds);

    /**
     * 查询队伍 已经选择的用户
     * @param params
     * @param teamId
     * @param username
     * @param status
     * @param mobile
     * @param email
     * @return
     */
    Page<SysUserEntity> findUserByTeamPage(IPage<?> params,
                                           @Param("teamId") String teamId,
                                           @Param("username") String username,
                                           @Param("status") String status,
                                           @Param("mobile") String mobile,
                                           @Param("email") String email
                                          );

    /**
     * 查询队伍未选择的人员
     * @param params
     * @param teamId
     * @param username
     * @param status
     * @param mobile
     * @param email
     * @return
     */
    Page<SysUserEntity> findUnallocatedList(IPage<?> params,
                                            @Param("teamId") String teamId,
                                            @Param("username") String username,
                                            @Param("status") String status,
                                            @Param("mobile") String mobile,
                                            @Param("email") String email
                                           );

    /**
     * 删除队伍中的人员
     * @param teamId
     * @param userIds
     * @return
     */
    int delTeamUser(@Param("teamId") Long teamId,@Param("userIds") Long[] userIds);
}
