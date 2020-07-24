package com.j2eefast.framework.datasync.entity;

import lombok.Data;

import java.util.Date;

@Data
public class DPersonTeam {
    private Long relationId;
    private Long teamRef;
    private Long personRef;
    private Date created;
    private String creator;
    private Integer isDeleted;
}
