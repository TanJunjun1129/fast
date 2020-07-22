package com.j2eefast.framework.sys.service;

import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.j2eefast.common.core.page.Query;
import com.j2eefast.common.core.utils.PageUtil;
import com.j2eefast.framework.annotation.DataFilter;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.entity.SysUserRoleEntity;
import com.j2eefast.framework.sys.entity.SysUserTeamEntity;
import com.j2eefast.framework.sys.mapper.SysUserTeamMapper;
import com.j2eefast.framework.utils.Constant;
import com.j2eefast.framework.utils.UserUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Map;

@Service
public class SysUserTeamService extends ServiceImpl<SysUserTeamMapper, SysUserTeamEntity> {
    @Resource
    private SysUserTeamMapper sysUserTeamMapper;
    /**
     * 判断队伍是否存在人员
     * @param ids
     * @return
     */
    public boolean isTeamExistUser(Long[] ids){
        return this.sysUserTeamMapper.countUsersInTeams(ids)>0;
    }
    public boolean delUserTeam(Long[] userIds){
        return this.sysUserTeamMapper.delUserTeam(userIds)>0;
    }

    /**
     * 根居用户权限查询用户
     * @param params
     * @return
     */
    public PageUtil findUserByTeamId(Map<String, Object> params) {
        String teamId = (String) params.get("teamId");
        String username = (String) params.get("username");
        String status = (String) params.get("status");
        String mobile = (String) params.get("mobile");
        String email = (String) params.get("email");
        Page<SysUserEntity> page = sysUserTeamMapper.findUserByTeamPage(new Query<SysUserEntity>(params).getPage(),
                StrUtil.nullToDefault(teamId,""),
                StrUtil.nullToDefault(username,""),
                StrUtil.nullToDefault(status,""),
                StrUtil.nullToDefault(mobile,""),
                StrUtil.nullToDefault(email,""));

        return new PageUtil(page);
    }


    public PageUtil findUnallocatedList(Map<String, Object> params) {
        String teamId = (String) params.get("teamId");
        String username = (String) params.get("username");
        String mobile = (String) params.get("mobile");
        String email = (String) params.get("email");
        String status = (String) params.get("status");
        Page<SysUserEntity> page = sysUserTeamMapper.findUnallocatedList(new Query<SysUserEntity>(params).getPage(),
                StrUtil.nullToDefault(teamId,""),
                StrUtil.nullToDefault(username,""),
                StrUtil.nullToDefault(status,""),
                StrUtil.nullToDefault(mobile,""),
                StrUtil.nullToDefault(email,"")
                );
        return new PageUtil(page);
    }

    @Transactional
    public boolean addAuthUsers(Long teamId,  Long[] userIds) {
        for(Long userId: userIds){
            SysUserTeamEntity userTeam = new SysUserTeamEntity();
            userTeam.setUserId(userId);
            userTeam.setTeamId(teamId);
            this.save(userTeam);
        }
        //清理权限缓存
        return true;
    }

    /**
     * 删除队伍中的人员
     * @param teamId
     * @param userIds
     * @return
     */
    public boolean delTeamUser(Long teamId,Long[] userIds){
        return this.sysUserTeamMapper.delTeamUser(teamId,userIds)>0;
    }
}
