package com.fast;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

/**
 * @Description:项目启动入口
 * @author ZhouHuan 18774995071@163.com
 * @date 2018-11-14 23:28
 */
@SpringBootApplication
public class FastApplication extends SpringBootServletInitializer {
	
	static Logger logger = LoggerFactory.getLogger(FastApplication.class);
	
	public static void main(String[] args) {

		try {
			SpringApplication.run(FastApplication.class, args);
			System.out.println("-----------------------------------------------------\n"
					+ "//             ┏┓   ┏┓					//\n"
					+ "//            ┏┛┻━━━┛┻┓				        //\n"
					+ "//  		   ┃   ☃   ┃					//\n"
					+ "//            ┃ ┳┛ ┗┳ ┃				        //\n"
					+ "//            ┃   ┻   ┃				        //\n"
					+ "//            ┗━┓   ┏━┛				        //\n" 
					+ "//              ┃   ┗━━━┓				//\n"
					+ "//              ┃神兽保佑   ┣┓				//\n" 
					+ "//              ┃启动成功!┏┛				//\n"
					+ "//              ┗┓┓┏━┳┓┏┛				//\n" 
					+ "//               ┃┫┫  ┃┫┫				//\n"
					+ "//               ┗┻┛  ┗┻┛				//\n"
					+ "------------------------------------------------------------------- \n");
		}catch (Exception e) {
			logger.error("项目启动异常:",e);
		}
		
	}

	
	/**
	 * 
	 * web容器中进行部署
	 * 
	 * @author ZhouHuan
	 */
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(FastApplication.class);
	}
	
	/**
	 * HTTP-->转发 HTTPS
	 * @author ZhouHuan 18774995071@163.com
	 */
//	@Bean
//    public TomcatServletWebServerFactory servletContainer() {
//        TomcatServletWebServerFactory tomcat = new TomcatServletWebServerFactory() {
//            @Override
//            protected void postProcessContext(Context context) {
//               SecurityConstraint constraint = new SecurityConstraint();
//                constraint.setUserConstraint("CONFIDENTIAL");
//                SecurityCollection collection = new SecurityCollection();
//                collection.addPattern("/*");
//                constraint.addCollection(collection);
//                context.addConstraint(constraint);
//            }
//        };
//        tomcat.addAdditionalTomcatConnectors(httpConnector());
//        return tomcat;
//    }
// 
//    @Bean
//    public Connector httpConnector() {
//        Connector connector = new Connector("org.apache.coyote.http11.Http11NioProtocol");
//        connector.setScheme("http");
//        //Connector监听的http的端口号
//        connector.setPort(httpPort);
//        connector.setSecure(false);
//        //监听到http的端口号后转向到的https的端口号
//        connector.setRedirectPort(httpsPort);
//        return connector;
//    }

}