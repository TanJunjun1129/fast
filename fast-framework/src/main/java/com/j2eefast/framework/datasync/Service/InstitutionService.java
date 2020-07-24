package com.j2eefast.framework.datasync.Service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.j2eefast.framework.datasync.entity.Institution;
import com.j2eefast.framework.datasync.mapper.InstitutionMapper;
import org.springframework.stereotype.Service;

@Service
public class InstitutionService extends ServiceImpl<InstitutionMapper, Institution> {
}
