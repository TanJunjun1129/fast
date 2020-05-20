package com.j2eefast.generator.gen.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableName;
import javax.validation.constraints.NotBlank;
import com.baomidou.mybatisplus.annotation.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import com.j2eefast.common.core.base.entity.BaseEntity;
import java.util.Date;

/**
 * example_test
 * @author: mfksn001@163.com
 * @date 2020-05-20 15:06
 */
@Data
@TableName("example_test")
public class TestEntity extends BaseEntity{

    /** id */
 
    @TableId(value = "id",type = IdType.ASSIGN_ID)
    private Long id;

    /** name */

    @NotBlank(message = "参数值不能为空")
    private String name;

    /** email */
    private String email;

    /** 电话 */
    private String phone;

    /** age */
    private Integer age;

    /** 性别 */

    @NotBlank(message = "参数值不能为空")
    private String sex;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")

    @NotNull(message = "参数值不能为空")
    private Date birthday;

    /** 离职日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
    private Date leaveDate;


    /** 删除标记 */
    @TableLogic
    private String delFlag;





    /** 员工编号 */
    private String pin;

    /** 职位 */
    private String position;

    /** 爱好 */
    private String hobby;

    /** 入职日期 */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
    private Date joinDate;

    /** 身份证号 */
    private String noationalId;

    /** education */
    private String education;


}
