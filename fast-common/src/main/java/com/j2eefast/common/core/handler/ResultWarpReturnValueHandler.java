package com.j2eefast.common.core.handler;

import com.j2eefast.common.core.business.annotaion.BussinessLog;
import lombok.extern.slf4j.Slf4j;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.core.MethodParameter;
import org.springframework.lang.Nullable;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodReturnValueHandler;
import org.springframework.web.method.support.ModelAndViewContainer;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

/**
 * <p></p>
 *
 * @author: zhouzhou
 * @date: 2020-05-21 13:50
 * @web: http://www.j2eefast.com
 * @version: 1.0.1
 */
@Slf4j
public class ResultWarpReturnValueHandler  implements HandlerMethodReturnValueHandler {

	private final HandlerMethodReturnValueHandler delegate;

	/** 委托 */
	public ResultWarpReturnValueHandler(HandlerMethodReturnValueHandler delegate) {
		this.delegate = delegate;
	}

	/**
	 * 判断返回类型是否需要转成字符串返回
	 * @param returnType 方法返回类型
	 * @return 需要转换返回true，否则返回false
	 */
	@Override
	public boolean supportsReturnType(MethodParameter returnType) {
		log.info("判断返回类型是否需要转成字符串返回");
		return delegate.supportsReturnType(returnType);
	}

	/**
	 * 返回值转换
	 */
	@Override
	public void handleReturnValue(@Nullable Object returnValue, MethodParameter returnType, ModelAndViewContainer mavContainer, NativeWebRequest webRequest) throws Exception {
		// 委托SpringMVC默认的RequestResponseBodyMethodProcessor进行序列化
		log.info("返回值转换");
		Method method = returnType.getMethod();
		BussinessLog annotation = method.getAnnotation(BussinessLog.class);
		if(annotation != null){
			log.info("有打印日志！！！！！！！！");
		}
//		for(Annotation s: a){
//			log.info(s.toString());
//		}
		delegate.handleReturnValue(returnValue, returnType, mavContainer, webRequest);
	}
}
