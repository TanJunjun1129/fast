package com.j2eefast.framework.datasync.Job;

import com.j2eefast.framework.datasync.entity.DisTeam;
import com.j2eefast.framework.datasync.entity.DisTeam_Team;
import com.j2eefast.framework.datasync.mapper.InstitutionMapper;
import com.j2eefast.framework.datasync.mapper.SyncTeamMapper;
import com.j2eefast.framework.sys.entity.SysTeamEntity;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component("syncTeamJob")
public class SyncTeamJob {
    @Resource
    private SyncTeamMapper syncTeamMapper;
    @Resource
    private InstitutionMapper institutionMapper;
    public  void  run(){
        List<SysTeamEntity> listTeam=this.syncTeamMapper.getAllTeams();
        for(SysTeamEntity team:listTeam){
            DisTeam_Team disTeam_team=this.syncTeamMapper.getDisTeam_Team(team.getId());
            DisTeam disTeam=new DisTeam();
            disTeam.setTeamName(team.getTeamName());
            disTeam.setTeamType(team.getTeamType());
            disTeam.setCreator("admin");
            disTeam.setCreated(new Date());
            disTeam.setIsDeleted(Integer.valueOf(team.getDelFlag()));
            disTeam.setInstituRef(institutionMapper.getCompInst(team.getCompId()).getInstId());
            disTeam.setCreated(new Date());
            disTeam.setRespPerRef(null); //队伍负责人id
            disTeam.setRespPers(null); //设置队伍负责人
            disTeam.setRespPersTel(null);//负责人电话
            disTeam.setTeamNum(null);//队伍人数
            if(disTeam_team!=null){
                this.syncTeamMapper.updateDTeam(disTeam);
            }
            else {
                this.syncTeamMapper.addDTeam(disTeam);
                disTeam_team=new DisTeam_Team();
                disTeam_team.setDTeamId(disTeam.getTeamId());
                disTeam_team.setTeamId(team.getId());
                this.syncTeamMapper.addDteamTeam(disTeam_team);
            }
        }
    }
}
