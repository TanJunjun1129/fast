package com.j2eefast.framework.datasync.entity;

import lombok.Data;

import java.util.Date;

/**
 * dispatch_person表
 */
@Data
public class Person {
    private Long personId;
    private String personName;
    private String persNo;
    private String persTel;
    private Long instituRef;
    private Integer institutLevel;
    private String creator;
    private Date created;
    private int isDeleted;
    private Integer persPostRef;
    private Integer gend;
}
