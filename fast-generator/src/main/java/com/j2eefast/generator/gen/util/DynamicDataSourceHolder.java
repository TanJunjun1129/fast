/** 
* @Project : fast-generator
* @Title : DynamicDataSourceHolder.java
* @Package com.j2eefast.generator.gen.util
* @author mfksn001@163.com
* @date 2020年5月29日 下午4:22:59
* @Copyright : 2020 
* @version V1.0 
*/
package com.j2eefast.generator.gen.util;

/**
  * @ClassName DynamicDataSourceHolder
  * @Description TODO
  * @author mfksn001@163.com
  * @date 2020年5月29日
*/
public class DynamicDataSourceHolder {
	/**
	 * 注意：数据源标识保存在线程变量中，避免多线程操作数据源时互相干扰
	 */
	private static final ThreadLocal<String> THREAD_DATA_SOURCE = new ThreadLocal<String>();

	public static String getDataSource() {
		return THREAD_DATA_SOURCE.get();
	}

	public static void setDataSource(String dataSource) {
		THREAD_DATA_SOURCE.set(dataSource);
	}

	public static void clearDataSource() {
		THREAD_DATA_SOURCE.remove();
	}

}
