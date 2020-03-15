package com.fast.framework.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * ElementType.LOCAL_VARIABLE
 * ElementType.METHOD
 * 多数据源注解
 */
@Target(value= {ElementType.METHOD, ElementType.LOCAL_VARIABLE}) 
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface DataSource {
	String name() default "";
}
