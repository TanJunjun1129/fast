package com.j2eefast.common.core.license.service;

import com.j2eefast.common.core.utils.ToolUtil;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.util.List;
import java.util.stream.Collectors;
/**
 * <p>Mac系统获取机器码等信息</p>
 *  <p>感谢Mico、AKAI 提供的测试</p>
 * @author: Mico、AKAI
 * @date: 2020-04-17 17:00
 * @version: 1.0.1
 */
public class MacServerInfos extends  AbstractServerInfos{

	@Override
	protected List<String> getIpAddress() throws Exception {
		List<String> result = null;

		//获取所有网络接口
		List<InetAddress> inetAddresses = getLocalAllIpAddress();

		if(inetAddresses != null && inetAddresses.size() > 0){
			result = inetAddresses.stream().map(InetAddress::getHostAddress).distinct().map(String::toLowerCase).collect(Collectors.toList());
		}

		return result;
	}

	@Override
	protected String getMacAddress() throws Exception {
		String result = null;
		//1. 获取所有网络接口
		List<InetAddress> inetAddresses = getLocalAllMacAddress();

		if(inetAddresses != null && inetAddresses.size() > 0){
			//2. 获取所有网络接口的Mac地址
			result = String.join("#",inetAddresses.stream().map(this::getMacByInetAddress).distinct().collect(Collectors.toList()));
		}

		return result;
	}

	@Override
	protected String getCpcSerial() throws Exception {
		//序列号
		String serialNumber = "";

		//使用dmidecode命令获取CPU序列号
		String[] shell = {"/bin/bash","-c","system_profiler SPHardwareDataType|grep UUID|awk -F ':' '{print $2}' | head -n 1"};
		Process process = Runtime.getRuntime().exec(shell);
		process.getOutputStream().close();

		BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));

		String line = reader.readLine().trim();
		if(ToolUtil.isNotEmpty(line)){
			serialNumber = line;
		}
		reader.close();
		return serialNumber;
	}

	@Override
	protected String getMainBoardSerial() throws Exception {
		//序列号
		String serialNumber = "";

		//使用dmidecode命令获取主板序列号
		String[] shell = {"/bin/bash","-c","system_profiler SPHardwareDataType|grep 'Serial Number'|awk -F ':' '{print $2}' | head -n 1"};
		Process process = Runtime.getRuntime().exec(shell);
		process.getOutputStream().close();

		BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream()));

		String line = reader.readLine().trim();
		if(ToolUtil.isNotEmpty(line)){
			serialNumber = line;
		}

		reader.close();
		return serialNumber;
	}
}