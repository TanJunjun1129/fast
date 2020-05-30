/** 
* @Project : fast-generator
* @Title : DynamicDataSource.java
* @Package com.j2eefast.generator.gen.util
* @author mfksn001@163.com
* @date 2020年5月29日 下午4:16:58
* @Copyright : 2020 
* @version V1.0 
*/
package com.j2eefast.generator.gen.util;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;


/**
  * @ClassName DynamicDataSource
  * @Description TODO
  * @author mfksn001@163.com
  * @date 2020年5月29日
*/
public class DynamicDataSource extends AbstractRoutingDataSource {

	private String dataSourceName ;
	
	
	
	public DynamicDataSource(String dataSourceName) {
		this.setDataSourceName(dataSourceName);
		DynamicDataSourceHolder.setDataSource(dataSourceName);
	}



	@Override
	protected Object determineCurrentLookupKey() {
		return  DynamicDataSourceHolder.getDataSource();
	}



	public String getDataSourceName() {
		return dataSourceName;
	}



	public void setDataSourceName(String dataSourceName) {
		this.dataSourceName = dataSourceName;
	}

}
