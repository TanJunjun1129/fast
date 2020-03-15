package com.fast.framework.config;

import java.util.Date;
import org.apache.ibatis.reflection.MetaObject;
import org.springframework.stereotype.Component;
import com.baomidou.mybatisplus.core.handlers.MetaObjectHandler;
import com.fast.framework.utils.ShiroUtils;

@Component
public class MybatisPlusHandler implements MetaObjectHandler {

    /**
     * 新增数据执行
     * @param metaObject
     */
    @Override
    public void insertFill(MetaObject metaObject) {
    	// 获取到需要被填充的字段值
        
        this.fillStrategy(metaObject, "createTime", new Date());
        
        this.fillStrategy(metaObject, "createBy", ShiroUtils.getLoginName());
    }

    /**
     * 更新数据执行
     * @param metaObject
     */
    @Override
    public void updateFill(MetaObject metaObject) {

        this.fillStrategy(metaObject, "updateTime", new Date());
        
        this.fillStrategy(metaObject, "updateBy", ShiroUtils.getLoginName());

    }
    
    

}
