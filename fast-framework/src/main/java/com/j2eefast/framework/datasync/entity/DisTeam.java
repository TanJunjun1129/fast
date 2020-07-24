package com.j2eefast.framework.datasync.entity;

import lombok.Data;

import java.util.Date;

@Data
public class DisTeam {
    private Long teamId;
    private String teamName;
    private String teamType;
    private Long teamNum;
    private Long respPerRef;
    private String respPers;
    private String respPersTel;
    private Long instituRef;
    private String creator;
    private Date created;
    private Integer isDeleted;
}
