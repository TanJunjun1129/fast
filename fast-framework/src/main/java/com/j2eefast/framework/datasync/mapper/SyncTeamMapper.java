package com.j2eefast.framework.datasync.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.j2eefast.common.core.mutidatasource.annotaion.DataSource;
import com.j2eefast.framework.datasync.entity.DPersonTeam;
import com.j2eefast.framework.datasync.entity.DisTeam;
import com.j2eefast.framework.datasync.entity.DisTeam_Team;
import com.j2eefast.framework.datasync.entity.SysUserTeam;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SyncTeamMapper extends BaseMapper<DisTeam> {

    List<SysTeamEntity> getAllTeams();

    DisTeam_Team getDisTeam_Team(@Param("teamId") Long teamId);

    @DataSource(name = "nn_drainage")
    int addDTeam(DisTeam disTeam);

    int addDteamTeam(DisTeam_Team disTeam_team);

    @DataSource(name = "nn_drainage")
    int updateDTeam(DisTeam disTeam);

    @DataSource(name = "nn_drainage")
    int delAllDPersonTeamRel();

    List<SysUserTeam> getAllPersonTeam();

    @DataSource(name = "nn_drainage")
    int insertDPersonTeam(DPersonTeam dPersonTeam);

    List<String> getUserPostCode(@Param("userId") Long userId);

    /**
     * 更新负责人信息
     * @param disTeam
     * @return
     */
    @DataSource(name = "nn_drainage")
    int updateDteamResp(DisTeam disTeam);

}
