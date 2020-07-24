package com.j2eefast.framework.datasync.Job;

import com.j2eefast.framework.datasync.entity.CompInst;
import com.j2eefast.framework.datasync.entity.Institution;
import com.j2eefast.framework.datasync.mapper.InstitutionMapper;
import com.j2eefast.framework.sys.entity.SysCompEntity;
import com.j2eefast.framework.sys.mapper.SysCompMapper;
import com.j2eefast.framework.sys.service.SysCompDeptService;
import com.j2eefast.framework.sys.service.SysCompService;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

@Component
@Log4j
public class InstitutionJob {
    /**
     * 同步组织关系
     */
    @Resource
    private InstitutionMapper institutionMapper;
    public void run(){
        List<SysCompEntity> sysCompEntityList=institutionMapper.getCompList(0);
        for (SysCompEntity item : sysCompEntityList) {
            CompInst compInst=this.institutionMapper.getCompInst(item.getId());
            if(compInst!=null){ //表示已经存在
                //判断公司名称更新
                Institution inst=this.institutionMapper.getInstitutionById(compInst.getInstId());
                if(inst!=null){
                    if(!inst.getInstitutName().equals(item.getFullName())||!inst.getIsDeleted().equals(item.getDelFlag())
                    ||!inst.getParentId().equals(item.getParentId())){
                        inst.setInstitutName(item.getFullName());
                        inst.setIsDeleted(Integer.valueOf(item.getDelFlag()));
                        CompInst parentCompInst = this.institutionMapper.getCompInst(item.getParentId());
                        if(parentCompInst==null) {
                            inst.setParentId(0L);
                        }
                        else {
                            inst.setParentId(parentCompInst.getInstId());
                        }
                        this.institutionMapper.updateInst(inst);
                    }

                }
            }
            else { //不存在，需要从comp中插入到inst中
                Institution institution=new Institution();
                institution.setCreated(new Date());
                institution.setCreator("admin");
                institution.setInstitutCode("");
                institution.setInstitutLevel(item.getParentIds().split("\\.").length+1);
                institution.setInstitutName(item.getFullName());
                CompInst parentCompInst = this.institutionMapper.getCompInst(item.getParentId());
                if(parentCompInst==null) {
                    institution.setParentId(0L);
                }
                else {
                    institution.setParentId(parentCompInst.getInstId());
                }
                institutionMapper.insertInst(institution);
                   compInst=new CompInst();
                   compInst.setCompId(item.getId());
                   compInst.setInstId(institution.getInstitutId());
                institutionMapper.insertCompInst(compInst);
                log.info("新增记录:"+compInst);
            }

        }
    }
}
