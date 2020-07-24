package com.j2eefast.framework.datasync.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import org.springframework.data.annotation.Id;

import java.util.Date;

@Data
@TableName("dispatch_institution")
public class Institution {
    @Id
    private Long institutId;
    private String institutCode;
    private String institutName;
    private Long parentId;
    private int institutLevel;
    private String creator;
    private Date created;
    private String updator;
    private String updated;
    private Integer isDeleted;

}
