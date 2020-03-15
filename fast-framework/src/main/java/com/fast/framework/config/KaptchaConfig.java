package com.fast.framework.config;

import java.awt.Color;
import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;

/**
 * 
 * @Description:生成验证码配置类
 * @author ZhouHuan 18774995071@163.com
 * @time 2018-11-14 23:51
 * @version V1.0 注意：本内容仅限于聚龙(上海)企业发展有限公司内部传阅，禁止外泄以及用于其他的商业目
 *
 */
@Configuration
public class KaptchaConfig {

	@Bean
	public DefaultKaptcha producer() {
		Properties properties = new Properties();
		properties.put("kaptcha.border", "no"); // 验证码是否有边框
		properties.put("kaptcha.textproducer.font.color", Color.BLACK); // red black //验证码文本字符颜色默认为Color.BLACK
		properties.put("kaptcha.textproducer.char.space", "4"); // 验证码文本字符间距默认为2
		properties.put("kaptcha.textproducer.char.length", "4");// 验证码文本字符长度默认为5
		properties.put("kaptcha.noise.color", Color.GRAY);// 验证码噪点颜色默认为Color.BLACK
		// kaptcha.textproducer.char.string
		properties.put(Constants.KAPTCHA_TEXTPRODUCER_CHAR_STRING, "0123456789");
		/**
		 * 图片样式： 水纹com.google.code.kaptcha.impl.WaterRipple
		 * 鱼眼com.google.code.kaptcha.impl.FishEyeGimpy
		 * 阴影com.google.code.kaptcha.impl.ShadowGimpy
		 */
		properties.put(Constants.KAPTCHA_OBSCURIFICATOR_IMPL, "com.google.code.kaptcha.impl.ShadowGimpy");
		Config config = new Config(properties);
		DefaultKaptcha defaultKaptcha = new DefaultKaptcha();
		defaultKaptcha.setConfig(config);
		return defaultKaptcha;
	}
}
