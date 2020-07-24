package com.j2eefast.framework.datasync.Job;

import com.j2eefast.framework.datasync.entity.DPersonTeam;
import com.j2eefast.framework.datasync.entity.DisTeam;
import com.j2eefast.framework.datasync.entity.SysUserTeam;
import com.j2eefast.framework.datasync.mapper.PersonMapper;
import com.j2eefast.framework.datasync.mapper.SyncTeamMapper;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component("syncPersonTeamJob")
public class SyncPersonTeamJob {
    @Resource
    private SyncTeamMapper syncTeamMapper;
    @Resource
    private PersonMapper personMapper;
    @Autowired
    private SysUserService sysUserService;
    public void run(){
        this.syncTeamMapper.delAllDPersonTeamRel();
        List<SysUserTeam> listSysUserTeam=this.syncTeamMapper.getAllPersonTeam();
        for(SysUserTeam sysUserTeam:listSysUserTeam){
            DPersonTeam dPersonTeam=new DPersonTeam();
             Long personId= this.personMapper.getUserPersonByUserId(sysUserTeam.getUserId()).getPersonId();
             Long dTeamId=this.syncTeamMapper.getDisTeam_Team(sysUserTeam.getTeamId()).getDTeamId();
             List<String> listPostCodes=this.syncTeamMapper.getUserPostCode(sysUserTeam.getUserId());
             if(listPostCodes!=null&&listPostCodes.contains("1")){ //队长角色
                 SysUserEntity user=sysUserService.findUserByUserId(sysUserTeam.getUserId());
                 DisTeam disTeam=new DisTeam();
                 disTeam.setTeamId(dTeamId);
                 disTeam.setRespPerRef(personId);
                 disTeam.setRespPersTel(user.getMobile());
                 disTeam.setRespPers(user.getName());
                 this.syncTeamMapper.updateDteamResp(disTeam);
             }
             dPersonTeam.setPersonRef(personId);
             dPersonTeam.setTeamRef(dTeamId);
             dPersonTeam.setCreated(new Date());
             dPersonTeam.setCreator("admin");
             this.syncTeamMapper.insertDPersonTeam(dPersonTeam);
        }
    }
}
