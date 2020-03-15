package com.fast.common.core.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import cn.hutool.core.net.NetUtil;
import cn.hutool.core.util.CharsetUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.http.HttpRequest;
import cn.hutool.http.HttpResponse;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;

/**
 * 远程地址查询
 * @author zhouzhou
 * @date 2017-03-12 16:41
 */
public class AddressUtil {
	
	 private static final Logger 					LOG 					= LoggerFactory.getLogger(AddressUtil.class);
	 public  static final String 					IP_URL 					=  "http://apis.juhe.cn/ip/ipNew?ip={}&key=852a85daddca9ff842bf4a4a6b8fdf81";
	 
	 public static String getRealAddressByIp(String ip) {
		String address = "XX XX";
        // 内网不查询
        if (NetUtil.isInnerIP(ip))
        {
            return "内网IP";
        }
        JSONObject obj;
        try
        {
        	HttpResponse body = HttpRequest.get(StrUtil.format(IP_URL, ip)).charset(CharsetUtil.CHARSET_GBK).execute();
            if (StrUtil.isBlank(body.body()))
            {
            	LOG.error("获取地理位置异常 {}", ip);
                return address;
            }
            obj = JSONUtil.parseObj(body.body());
            int errorCode = obj.getInt("error_code",-1);
            if(errorCode == 0) {
            	JSONObject data = obj.getJSONObject("result");
            	String country = data.getStr("Country", "中国");
            	String province = data.getStr("Province", "上海");
            	String city = data.getStr("City", "上海市");
            	String isp = data.getStr("Isp", "联通");
            	address = StrUtil.format("{} {}-{} {}", country,province,city,isp);
            }
        }
        catch (Exception e)
        {
        	LOG.error("获取地理位置异常 {}", ip);
        }
        return address;
	 }
}
