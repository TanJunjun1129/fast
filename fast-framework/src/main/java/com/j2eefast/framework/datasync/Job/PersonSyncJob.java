package com.j2eefast.framework.datasync.Job;

import com.j2eefast.framework.datasync.entity.CompInst;
import com.j2eefast.framework.datasync.entity.Institution;
import com.j2eefast.framework.datasync.entity.Person;
import com.j2eefast.framework.datasync.entity.UserPerson;
import com.j2eefast.framework.datasync.mapper.InstitutionMapper;
import com.j2eefast.framework.datasync.mapper.PersonMapper;
import com.j2eefast.framework.sys.entity.SysCompEntity;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import com.j2eefast.framework.sys.service.SysCompService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

@Component("personSyncJob")
public class PersonSyncJob {
    @Resource
    private PersonMapper personMapper;
    @Resource
    private InstitutionMapper institutionMapper;
    @Autowired
    private SysCompService sysCompService;
    public void run(){
        List<SysUserEntity> listUser=this.personMapper.getAllUsers();
        for(SysUserEntity user:listUser){
            UserPerson userPerson=this.personMapper.getUserPersonByUserId(user.getId());
            CompInst compInst=institutionMapper.getCompInst(user.getCompId());
            Institution inst=institutionMapper.getInstitutionById(compInst.getInstId());
            Person person=new Person();
            person.setCreated(new Date());
            person.setPersNo(user.getUsername());
            person.setPersonName(user.getName());
            person.setPersTel(user.getMobile());
            person.setInstituRef(compInst.getInstId());
            person.setIsDeleted(Integer.valueOf(user.getDelFlag()));
            person.setInstitutLevel(inst.getInstitutLevel());
            person.setPersPostRef(null);//暂时没有职位信息
            person.setGend(0);
            if(userPerson!=null){ //已经存在绑定关系
                person.setPersonId(userPerson.getPersonId());
                personMapper.updatePerson(person);
            }
            else {
                person.setCreator("admin");
                person.setCreated(new Date());
                personMapper.addPerson(person);
                userPerson=new UserPerson();
                userPerson.setUserId(user.getId());
                userPerson.setPersonId(person.getPersonId());
                this.personMapper.addUserPerson(userPerson);
            }
        }
    }
}
