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
 * TEST
 * @author: mfksn001@163.com
 * @date 2020-06-04 17:21
 */
@Data
@TableName("TEST")
public class TestMEntity extends BaseEntity{

   private static final long serialVersionUID = 1L;
	
      /** id */
 
    @TableId(value = "id",type = IdType.ASSIGN_ID)
    private Long id;

      /** name */
    @NotBlank(message = "参数值不能为空")
    private String name;

      /** brithday */
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
    @NotNull(message = "参数值不能为空")
    private Date brithday;

  

}
