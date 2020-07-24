package com.j2eefast.framework.datasync.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.j2eefast.common.core.mutidatasource.annotaion.DataSource;
import com.j2eefast.framework.datasync.entity.Person;
import com.j2eefast.framework.datasync.entity.UserPerson;
import com.j2eefast.framework.sys.entity.SysUserEntity;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonMapper extends BaseMapper<Person> {

    List<SysUserEntity> getAllUsers();
    UserPerson getUserPersonByUserId(@Param("userId") Long userId);
    @DataSource(name = "nn_drainage")
    int addPerson(Person person);

    int addUserPerson(UserPerson userPerson);

    @DataSource(name = "nn_drainage")
    int updatePerson(Person person);
}
