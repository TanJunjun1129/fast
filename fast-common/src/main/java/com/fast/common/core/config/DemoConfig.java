package com.fast.common.core.config;

import java.io.IOException;

import javax.servlet.DispatcherType;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.fast.common.core.constants.ConfigConstant;
import com.fast.common.core.utils.R;

import cn.hutool.json.JSONUtil;

/**
 * 演示模式禁止修改 删除 新增 操作 
 * @author zhouzhou
 * @date 2020-03-13 14:42
 */
@Configuration
@ConditionalOnProperty(prefix = "fast", name = "demoMode", havingValue="true")
public class DemoConfig {
	
	@Bean
    public FilterRegistrationBean demoFilterRegistration() {
        FilterRegistrationBean registration = new FilterRegistrationBean();
        registration.setDispatcherTypes(DispatcherType.REQUEST);
        registration.setFilter(new DemoFilter());
        registration.addUrlPatterns("/sys/*","/tool/*");
        registration.setName("demoFilter");
        return registration;
    }

	/**
	 *  拦截过滤器
	 * @author zhouzhou
	 * @date 2020-03-13 14:44
	 */
    class DemoFilter implements Filter {

        @Override
        public void init(FilterConfig filterConfig) throws ServletException {
        }

        @Override
        public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, 
        		FilterChain filterChain) throws IOException, ServletException {
        	HttpServletRequest request = (HttpServletRequest)servletRequest;
            HttpServletResponse response = (HttpServletResponse) servletResponse;
            String url = request.getRequestURI();
            System.err.println(url);
            if("POST".equals(request.getMethod())) {
            	String[] filters = new String[]{"edit","del","remove","clean","updateAvatar",
            			"updateUser","resetPwd","updatePass","genCode"};
            	 //判断是否包含
                for(String filter : filters){
                    if(url.indexOf(filter) != -1){
                        R r = R.error("10001", ConfigConstant.DEOM_MODE_PROMPT);
                        String json = JSONUtil.toJsonStr(r);
                        response.setContentType("application/json;charset=utf-8");
                        response.getWriter().print(json);
                        return;
                    }
                }
            }
            
            if("GET".equals(request.getMethod())) {
            	String[] filters = new String[]{"del","remove","clean","dirTreeData"};
           	   //判断是否包含
               for(String filter : filters){
                   if(url.indexOf(filter) != -1){
                       R r = R.error("10001", ConfigConstant.DEOM_MODE_PROMPT);
                       String json = JSONUtil.toJsonStr(r);
                       response.setContentType("application/json;charset=utf-8");
                       response.getWriter().print(json);
                       return;
                   }
               }
            }
            filterChain.doFilter(servletRequest, servletResponse);
        }

        @Override
        public void destroy() {
        }
    }
}
