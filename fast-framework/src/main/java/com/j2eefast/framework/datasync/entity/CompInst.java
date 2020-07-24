package com.j2eefast.framework.datasync.entity;

import lombok.Data;
import org.springframework.data.annotation.Id;

@Data
public class CompInst {
    @Id
    private Long id;
    private Long compId;
    private Long instId;
}
