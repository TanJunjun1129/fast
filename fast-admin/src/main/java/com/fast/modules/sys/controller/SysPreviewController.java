package com.fast.modules.sys.controller;


import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ConnectException;
import java.util.regex.Pattern;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.artofsolving.jodconverter.openoffice.connection.OpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.connection.SocketOpenOfficeConnection;
import com.artofsolving.jodconverter.openoffice.converter.StreamOpenOfficeDocumentConverter;
import com.fast.framework.sys.entity.SysPoiEntity;
import com.fast.framework.sys.service.SysPoiService;
import com.fast.framework.utils.AbstractController;
import com.fast.framework.utils.Global;

import cn.hutool.core.io.FileUtil;
import cn.hutool.system.SystemUtil;

@RestController
@RequestMapping("/sys/preview")
public class SysPreviewController extends AbstractController {
	@Autowired
	private SysPoiService sysPoiService;
	private final static Logger logger = LoggerFactory.getLogger(SysPreviewController.class);
	
	@SuppressWarnings("unused")
	@RequestMapping("/bulView")
    public void preview(HttpServletRequest request, 
    		HttpServletResponse response,@RequestParam("id") String id) {
		OpenOfficeConnection connection = null;
		ServletOutputStream sos = null;
		ByteArrayOutputStream bos =null;
		FileInputStream fis = null;
		try {
			SysPoiEntity  entity = sysPoiService.getById(id);
			
			String filePath = entity.getPath();
			String fileName = entity.getFilename();
			//
			String tempPath = SystemUtil.getUserInfo().getCurrentDir()+File.separator+Global.getSettingValue("tempPdf") +
					File.separator;
			response.setContentType("application/pdf");
			if(entity == null) {
				return;
			}
			FileUtil.mkdir(tempPath);
			tempPath = tempPath +fileName.substring(0,fileName.lastIndexOf(".")) + ".pdf";
			File pdfFile = new File(tempPath);
			if (!pdfFile.exists()) {
				//转换
				connection = new SocketOpenOfficeConnection(Global.getSettingValue("OpenOfficeIP"),Global.getSettingValueInt("OpenOfficePost"));
			    connection.connect();
			    StreamOpenOfficeDocumentConverter converter = new StreamOpenOfficeDocumentConverter(connection);
			    converter.convert(new File(filePath), pdfFile);
			}
			fis = new FileInputStream(pdfFile);
			byte[] buffer = new byte[1024];
			bos = new ByteArrayOutputStream(fis.available());  
			int len = 0;
			while (-1 != (len = fis.read(buffer, 0, buffer.length))) {
				bos.write(buffer,0,len);  
			}
			sos = response.getOutputStream();
			sos.write(bos.toByteArray());
		} catch (Exception e) {
			logger.error("转换文件报错:",e);
		}finally {
			try {
				if(connection != null) {
					connection.disconnect();
					connection = null;
				}
				if(sos != null) {
					sos.flush();
					sos.close();
				}
				if(bos != null) {
					bos.close();
				}
				if(fis !=null) {
					fis.close();
				}
			} catch (IOException e) {
			}
		}
	}
}
