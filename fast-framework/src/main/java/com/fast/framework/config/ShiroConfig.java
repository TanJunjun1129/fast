package com.fast.framework.config;

import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

import org.apache.shiro.cache.MemoryConstrainedCacheManager;
import org.apache.shiro.codec.Base64;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.SessionListener;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.apache.shiro.web.session.mgt.DefaultWebSessionManager;
import org.springframework.aop.framework.autoproxy.DefaultAdvisorAutoProxyCreator;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.fast.framework.shiro.RedisShiroSessionDAO;
import com.fast.framework.shiro.ShiroSessionListener;
import com.fast.framework.shiro.realm.UserRealm;

/**
 * Shiro的配置文件
 */
@Configuration
public class ShiroConfig {

	@Bean("sessionManager")
	public SessionManager sessionManager(RedisShiroSessionDAO redisShiroSessionDAO,
			@Value("${framework.redis.open}") boolean redisOpen,
			@Value("${framework.shiro.redis}") boolean shiroRedis) {
		DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
		Collection<SessionListener> listeners = new ArrayList<SessionListener>();
		// 配置监听
		listeners.add(sessionListener());
		sessionManager.setSessionListeners(listeners);

		// 设置session过期时间为1小时(单位：毫秒)，默认为30分钟
		sessionManager.setGlobalSessionTimeout(1000 * 60 * 30);
		// 去掉 JSESSIONID
		sessionManager.setSessionIdUrlRewritingEnabled(false);
		// 是否开启删除无效的session对象 默认为true
		sessionManager.setDeleteInvalidSessions(true);
		// 是否开启定时调度器进行检测过期session 默认为true
		sessionManager.setSessionValidationSchedulerEnabled(true);

		// 设置session失效的扫描时间, 清理用户直接关闭浏览器造成的孤立会话 默认为 1个小时
		// 设置该属性 就不需要设置 ExecutorServiceSessionValidationScheduler
		// 底层也是默认自动调用ExecutorServiceSessionValidationScheduler
		// 暂时设置为 5秒 用来测试
		sessionManager.setSessionValidationInterval(1000 * 60 * 10);

		// 如果开启redis缓存且framework.shiro.redis=true，则shiro session存到redis里
		if (redisOpen && shiroRedis) {
			sessionManager.setSessionDAO(redisShiroSessionDAO);
		}

		return sessionManager;
	}

//	//配置shiro session 的一个管理器
//    @Bean(name = "sessionManager")
//    public DefaultWebSessionManager getDefaultWebSessionManager(@Qualifier("sessionDAO") MemorySessionDAO sessionDAO,
//                                                                @Qualifier("sessionIdCookie") SimpleCookie simpleCookie)
//    {
//        DefaultWebSessionManager sessionManager = new DefaultWebSessionManager();
//		// 设置session过期时间为1小时(单位：毫秒)，默认为30分钟
//		sessionManager.setGlobalSessionTimeout(60 * 60 * 1000);
//		sessionManager.setSessionValidationSchedulerEnabled(true);
//		sessionManager.setSessionIdUrlRewritingEnabled(false);
//        sessionManager.setSessionDAO(sessionDAO);
//        sessionManager.setSessionIdCookie(simpleCookie);
//        return sessionManager;
//    }

//	/**
//	 * 配置缓存
//	 * 
//	 * @return
//	 */
//	@Bean
//	public EhCacheManager getEhCacheManager() {
//		EhCacheManager em = new EhCacheManager();
//		em.setCacheManagerConfigFile("classpath:ehcache-shiro.xml");
//		return em;
//	}

	// 配置session的缓存管理器
	@Bean(name = "shiroCacheManager")
	public MemoryConstrainedCacheManager getMemoryConstrainedCacheManager() {
		return new MemoryConstrainedCacheManager();
	}

	@Bean("securityManager")
	public SecurityManager securityManager(UserRealm userRealm, SessionManager sessionManager) {
		
		DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
		
		// 设置realm.
		securityManager.setRealm(userRealm);
		
		// 记住我
        securityManager.setRememberMeManager(rememberMeManager());
        
        //<!-- 用户授权/认证信息Cache, 采用EhCache 缓存 -->
        //securityManager.setCacheManager(getEhCacheManager());
		securityManager.setSessionManager(sessionManager);
		
		//securityManager.setRememberMeManager(null);
		return securityManager;
	}
	
	
	/**
     * cookie 属性设置
     */
    public SimpleCookie rememberMeCookie()
    {
        SimpleCookie cookie = new SimpleCookie("rememberMe");
        cookie.setDomain("");
        cookie.setPath("/admin");
        cookie.setHttpOnly(true);
        cookie.setMaxAge(15 * 24 * 60 * 60);
        return cookie;
    }
	
	 /**
     * 记住我
     */
    public CookieRememberMeManager rememberMeManager()
    {
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(rememberMeCookie());
        cookieRememberMeManager.setCipherKey(Base64.decode("fCq+/xW488hMTCD+cmJ3aQ=="));
        return cookieRememberMeManager;
    }

	// Shiro连接约束配置,即过滤链的定义
	@Bean("shiroFilter")
	public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
		ShiroFilterFactoryBean shiroFilter = new ShiroFilterFactoryBean();
		shiroFilter.setSecurityManager(securityManager);
		shiroFilter.setLoginUrl("/login");
		// 权限认证失败，则跳转到指定页面
		shiroFilter.setUnauthorizedUrl("/");
		//shiroFilter.set
		Map<String, String> filterMap = new LinkedHashMap<>();
		filterMap.put("/swagger/**", "anon");
		filterMap.put("/api/trade.receive/**", "anon");
		filterMap.put("/v2/api-docs", "anon");
		filterMap.put("/swagger-ui.html", "anon");
		filterMap.put("/webjars/**", "anon");
		filterMap.put("/swagger-resources/**", "anon");

		filterMap.put("/statics/**", "anon");
		filterMap.put("/login", "anon");
		filterMap.put("/upbw/**", "anon");
		filterMap.put("/login1.html", "anon");
		filterMap.put("/sys/login", "anon");
		filterMap.put("/favicon.ico", "anon");
		filterMap.put("/captcha.gif", "anon");
		filterMap.put("/sys/user/info/login/msg/**", "anon");
		filterMap.put("/**", "user"); //authc
		shiroFilter.setFilterChainDefinitionMap(filterMap);
		return shiroFilter;
	}

	@Bean("sessionListener")
	public ShiroSessionListener sessionListener() {
		ShiroSessionListener sessionListener = new ShiroSessionListener();
		return sessionListener;
	}

	@Bean("lifecycleBeanPostProcessor")
	public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
		return new LifecycleBeanPostProcessor();
	}

	@Bean
	public DefaultAdvisorAutoProxyCreator defaultAdvisorAutoProxyCreator() {
		DefaultAdvisorAutoProxyCreator proxyCreator = new DefaultAdvisorAutoProxyCreator();
		proxyCreator.setProxyTargetClass(true);
		return proxyCreator;
	}

	@Bean
	public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(SecurityManager securityManager) {
		AuthorizationAttributeSourceAdvisor advisor = new AuthorizationAttributeSourceAdvisor();
		advisor.setSecurityManager(securityManager);
		return advisor;
	}
}
