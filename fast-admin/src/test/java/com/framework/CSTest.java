package com.framework;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.*;

import javax.activation.MimetypesFileTypeMap;

import com.fast.common.core.crypto.SoftEncryption;
import com.fast.common.core.utils.*;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;

import com.alibaba.druid.filter.config.ConfigTools;
import com.baomidou.mybatisplus.core.toolkit.Sequence;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;
import oshi.SystemInfo;
import oshi.software.os.FileSystem;
import oshi.software.os.OSFileStore;


public class CSTest {
	/**
	 * JDBC加密
	 * @throws Exception 
	 */
	@Test
	public void jdbc() throws Exception {
//	    Long[] a = {1L};
//
//
//       String s =  ArrayUtil.join(a,",");
//       System.out.println(s);
//		System.out.println(HashUtil.rsHash("222"));
//        System.out.println(Md5Utils.hash("222"));
//        byte[] a = HexUtil.decodeHexStr("A2AB0C56");
         //bcbe3365e6ac95ea2c0343a2395834dd
//        List list1 =new ArrayList();
//        list1.add("1111");
//        list1.add("2222");
//        list1.add("3333");
//        list1.add("4444");
//        list1.add("5555");
//
//        List list2 =new ArrayList();
//        list2.add("777777777777");
//        //list2.add("4444");
//
//        list1.retainAll(list2); //交集，前者list必须比后者list范围大，求出来的才对
//        System.out.println(list1.toString());
//        PathMatcher matcher = new AntPathMatcher();
//          String name = "admin";
//          byte[] txt = HexUtil.Hex16ToBytes(name.getBytes());
//          System.out.println(new String(HexUtil.Hex16ToBytes(name.getBytes())));
//
//          String hex =  SoftEncryption.genRandom(16).getStr("hex");
//            System.out.println("fd8ba11940284fb989c4f275c5fdfc80");
//       byte[] a =  "11HDESaAhiHHugDz".getBytes();
//            System.out.println("11HDESaAhiHHugDz:"+HexUtil.encodeHexStr("11HDESaAhiHHugDz".getBytes()));
//          System.out.println(new String(HexUtil.decodeHex("fd8ba11940284fb989c4f275c5fdfc80")));
//        String  rs = SoftEncryption.encryptBySM4(txt,a).getStr("b64"); //sIrwe8biVHAtqTFZ7NDK4Q==
//        byte[] r = SoftEncryption.encryptBySM4(txt,a).get("bytes",byte[].class);
//        System.out.println(rs);
//
//        SystemInfo si = new SystemInfo();
//        FileSystem fileSystem = si.getOperatingSystem().getFileSystem();
//        OSFileStore[] fsArray = fileSystem.getFileStores();
//        for (OSFileStore fs : fsArray)
//        {
//            System.out.println(fs.getMount());
//            File[] f = FileUtil.ls(fs.getMount());
//            for (int i = 0; i < f.length; i++) {
////                if (f[i].isFile()) {
//////              System.out.println("文     件：" + tempList[i]);
////                    //fileNameList.add(tempList[i].toString());
////                    fileNameList.add(tempList[i].getName());
////                }
//                if (f[i].isDirectory()) {
//                    System.out.println("文件夹：" + f[i].getName());
//                    //getAllFileName(tempList[i].getAbsolutePath(),fileNameList);
//                }
//            }
//        }
//        boolean s = FileUtil.isDirEmpty(new File("D:\\1"));
//        System.out.println(s);
//        File[] f = FileUtil.ls("C:\\$360Honeypot");
//        System.out.println(f.length);
//        for (int i = 0; i < f.length; i++) {
////                if (f[i].isFile()) {
//////              System.out.println("文     件：" + tempList[i]);
////                    //fileNameList.add(tempList[i].toString());
////                    fileNameList.add(tempList[i].getName());
////                }
//            if (f[i].isDirectory()) {
//                System.out.println("文件夹：" + f[i].getName());
//                //getAllFileName(tempList[i].getAbsolutePath(),fileNameList);
//            }
//        }
        //4UtjdUpbq1958YySIhkkWg==
        //vnJo25A0vyvFbiPudZ0ppQ==
//        System.out.println(matcher.match("/statics/**","/statics/css/font-awesome.min.css"));
//        if(value.equals("anon") && matcher.match(value,requestUrl)){
//            return true;
//        }
//        System.out.println( HexUtil.hexToDec("1771AD9D"));
//
//        System.out.println( new BigInteger("2729118806", 10).toString());
//		String password = "rdsrdevesys@123$";
//        String[] arr = ConfigTools.genKeyPair(512);
//        System.out.println("privateKey:" + arr[0]);
//        System.out.println("publicKey:" + arr[1]);
//        System.out.println("password:" + ConfigTools.encrypt(arr[0], password));
//
//        //解密 publicKeyText
//        System.out.println(ConfigTools.decrypt("MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJtFNy2Mz5ieB4ZuNyBbm5qfNw9JjtV1V/hJDpFLuM+UqyQXI632zQ0+MED6nQrQ6dxLf2ct9EnS25pzNvPxVikCAwEAAQ==","W4dbZJGhpvl+rQkAuduKyrbrwL3OGG/Xzf9RutAwC7d+OsLmDWV08/qoFSg/PNCXo8kH84BL3vSMXNc2vn/ROw=="));
//
//        //加密 privateKey
//        System.out.println(ConfigTools.encrypt("MIIBVAIBADANBgkqhkiG9w0BAQEFAASCAT4wggE6AgEAAkEAm0U3LYzPmJ4Hhm43IFubmp83D0mO1XVX+EkOkUu4z5SrJBcjrfbNDT4wQPqdCtDp3Et/Zy30SdLbmnM28/FWKQIDAQABAkAb1ypQoYnrnJJO2V5LEAHzlI7Dz/WrcpHmc/sHtGMb3Q3fQQDitG1Gxh/kt1mY/AVw651k19BRebfytb6ixIqdAiEAyD7XSu+YHYsn13Y6ZH3SWxJKwP5qJr/0AC4su+LWRDsCIQDGgKAc+1cgX7ODidM7klcP/9rq4o/40d7Te9Y2j/rc6wIgMlqbCNz3A3barfOs+1gobX5MDfvr9ZKPaPwzg4unFcECIFQbwjwlf2hXRKASsS9HtZ4w4hiugSSEAK+JhF3AKiKbAiEAs2/nlsMFc7slt7CwK15YuRndK/ZxN1iUCWUos3gzbIU=",password));
	}
	
	@Test
	public void test121() {
//		String s ="1,2";
//		String[] ss = s.split(",");
//		System.out.println(ss.length);
//		Map<String, String> paramMap = new HashMap<String, String>();
//        paramMap.put("loginname", "zhangsan");
//        paramMap.put("username", "张三");
//        paramMap.put("passwd", "passcode01");
//        paramMap.put("status", "0");
////		JSONObject itemJSONObj = JSONObject.parseObject(JSON.toJSONString(paramMap));
//		System.out.println(JSON.toJSONString(paramMap));
//		Server server = new Server();
//		try {
//			server.copyTo();
//			System.out.println(server.getSys().getComputerName());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(DatePattern.PURE_DATETIME_MS_FORMAT.format(new Date()));
//		System.out.println(DatePattern.PURE_DATETIME_MS_FORMAT.format(new Date()));
//		System.out.println(UUID.randomUUID());
		
//		switch ("12") {
//		 case "23": //支付宝
//		 default:
//             break;
//		}
//		System.out.println("21".getBytes().length);
//		System.out.println(DateUtil.parse("20190415091504", DatePattern.PURE_DATETIME_PATTERN).toString(DatePattern.NORM_DATETIMES_PATTERN));
	}
	
	@Test
	public void toDictListTest() {
//		String jsonArr = "[\"{\\\"cardid\\\":\\\"0000000000000000\\\",\\\"money\\\":100.0,\\\"openid\\\":\\\"\\\",\\\"order\\\":\\\"S000000120190505151926862\\\",\\\"rmb01\\\":0,\\\"rmb05\\\":0,\\\"rmb1\\\":1,\\\"rmb10\\\":0,\\\"rmb100\\\":0,\\\"rmb2\\\":0,\\\"rmb20\\\":0,\\\"rmb5\\\":0,\\\"rmb50\\\":0,\\\"time\\\":\\\"20190505151926\\\",\\\"total\\\":1,\\\"type\\\":1}\",\"{\\\"cardid\\\":\\\"0000000000000000\\\",\\\"money\\\":100.0,\\\"openid\\\":\\\"\\\",\\\"order\\\":\\\"S000000120190505151930380\\\",\\\"rmb01\\\":0,\\\"rmb05\\\":0,\\\"rmb1\\\":1,\\\"rmb10\\\":0,\\\"rmb100\\\":0,\\\"rmb2\\\":0,\\\"rmb20\\\":0,\\\"rmb5\\\":0,\\\"rmb50\\\":0,\\\"time\\\":\\\"20190505151930\\\",\\\"total\\\":1,\\\"type\\\":1}\",\"{\\\"cardid\\\":\\\"0000000000000000\\\",\\\"money\\\":100.0,\\\"openid\\\":\\\"\\\",\\\"order\\\":\\\"S000000120190505151932723\\\",\\\"rmb01\\\":0,\\\"rmb05\\\":0,\\\"rmb1\\\":1,\\\"rmb10\\\":0,\\\"rmb100\\\":0,\\\"rmb2\\\":0,\\\"rmb20\\\":0,\\\"rmb5\\\":0,\\\"rmb50\\\":0,\\\"time\\\":\\\"20190505151932\\\",\\\"total\\\":1,\\\"type\\\":1}\",\"{\\\"cardid\\\":\\\"0000000000000000\\\",\\\"money\\\":100.0,\\\"openid\\\":\\\"\\\",\\\"order\\\":\\\"S000000120190505151939236\\\",\\\"rmb01\\\":0,\\\"rmb05\\\":0,\\\"rmb1\\\":1,\\\"rmb10\\\":0,\\\"rmb100\\\":0,\\\"rmb2\\\":0,\\\"rmb20\\\":0,\\\"rmb5\\\":0,\\\"rmb50\\\":0,\\\"time\\\":\\\"20190505151939\\\",\\\"total\\\":1,\\\"type\\\":1}\",\"{\\\"cardid\\\":\\\"0000000000000000\\\",\\\"money\\\":100.0,\\\"openid\\\":\\\"\\\",\\\"order\\\":\\\"S000000120190505151924559\\\",\\\"rmb01\\\":0,\\\"rmb05\\\":0,\\\"rmb1\\\":1,\\\"rmb10\\\":0,\\\"rmb100\\\":0,\\\"rmb2\\\":0,\\\"rmb20\\\":0,\\\"rmb5\\\":0,\\\"rmb50\\\":0,\\\"time\\\":\\\"20190505151924\\\",\\\"total\\\":1,\\\"type\\\":1}\"]";
//		//String jsonArr = "[{\"id\":111,\"name\":\"test1\",\"cardid\":\"0000000000000000\"},{\"id\":112,\"name\":\"test2\"}]";
//		JSONArray array = JSONUtil.parseArray(jsonArr);
//		System.out.println(array.toString());
//		List<Dict> list = JSONUtil.toList(array, Dict.class);
//		System.out.println(list.get(0).getStr("cardid"));
		
//		AssertUtil.AssertUtilFalse(list.isEmpty());
//		AssertUtil.AssertUtilEquals(Dict.class, list.get(0).getClass());
//		
//		AssertUtil.AssertUtilEquals(Integer.valueOf(111), list.get(0).getInt("id"));
//		AssertUtil.AssertUtilEquals(Integer.valueOf(112), list.get(1).getInt("id"));
//		//System.out.println(list.get(0).getStr("name"));
//		AssertUtil.AssertUtilEquals("test1", list.get(0).getStr("cardid"));
//		AssertUtil.AssertUtilEquals("test2", list.get(1).getStr("cardid"));
	}
	
	/**
     * 上传图片
     * @param urlStr
     * @param textMap
     * @param fileMap
     * @param contentType 没有传入文件类型默认采用application/octet-stream
     * contentType非空采用filename匹配默认的图片类型
     * @return 返回response数据
     */
    @SuppressWarnings("rawtypes")
    public static String formUpload(String urlStr, Map<String, String> textMap,
            Map<String, String> fileMap,String contentType) {
        String res = "";
        HttpURLConnection conn = null;
        // boundary就是request头和上传文件内容的分隔符
        String BOUNDARY = "---------------------------123821742118716"; 
        try {
            URL url = new URL(urlStr);
            conn = (HttpURLConnection) url.openConnection();
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(30000);
            conn.setDoOutput(true);
            conn.setDoInput(true);
            conn.setUseCaches(false);
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Connection", "Keep-Alive");
            conn.setRequestProperty("User-Agent",
                    "Mozilla/5.0 (Windows; U; Windows NT 6.1; zh-CN; rv:1.9.2.6)");
            conn.setRequestProperty("Content-Type",
                    "multipart/form-data; boundary=" + BOUNDARY);
            OutputStream out = new DataOutputStream(conn.getOutputStream());
            // text
            if (textMap != null) {
                StringBuffer strBuf = new StringBuffer();
                Iterator iter = textMap.entrySet().iterator();
                while (iter.hasNext()) {
                    Map.Entry entry = (Map.Entry) iter.next();
                    String inputName = (String) entry.getKey();
                    String inputValue = (String) entry.getValue();
                    if (inputValue == null) {
                        continue;
                    }
                    strBuf.append("\r\n").append("--").append(BOUNDARY)
                            .append("\r\n");
                    strBuf.append("Content-Disposition: form-data; name=\""
                            + inputName + "\"\r\n\r\n");
                    strBuf.append(inputValue);
                }
                out.write(strBuf.toString().getBytes());
            }
            // file
            if (fileMap != null) {
                Iterator iter = fileMap.entrySet().iterator();
                while (iter.hasNext()) {
                    Map.Entry entry = (Map.Entry) iter.next();
                    String inputName = (String) entry.getKey();
                    String inputValue = (String) entry.getValue();
                    if (inputValue == null) {
                        continue;
                    }
                    File file = new File(inputValue);
                    String filename = file.getName();
                    
                    //没有传入文件类型，同时根据文件获取不到类型，默认采用application/octet-stream
                    contentType = new MimetypesFileTypeMap().getContentType(file);
                    //contentType非空采用filename匹配默认的图片类型
                    if(!"".equals(contentType)){
                        if (filename.endsWith(".png")) {
                            contentType = "image/png"; 
                        }else if (filename.endsWith(".jpg") || filename.endsWith(".jpeg") || filename.endsWith(".jpe")) {
                            contentType = "image/jpeg";
                        }else if (filename.endsWith(".gif")) {
                            contentType = "image/gif";
                        }else if (filename.endsWith(".ico")) {
                            contentType = "image/image/x-icon";
                        }
                    }
                    if (contentType == null || "".equals(contentType)) {
                        contentType = "application/octet-stream";
                    }
                    StringBuffer strBuf = new StringBuffer();
                    strBuf.append("\r\n").append("--").append(BOUNDARY)
                            .append("\r\n");
                    strBuf.append("Content-Disposition: form-data; name=\""
                            + inputName + "\"; filename=\"" + filename
                            + "\"\r\n");
                    strBuf.append("Content-Type:" + contentType + "\r\n\r\n");
                    out.write(strBuf.toString().getBytes());
                    DataInputStream in = new DataInputStream(
                            new FileInputStream(file));
                    int bytes = 0;
                    byte[] bufferOut = new byte[1024];
                    while ((bytes = in.read(bufferOut)) != -1) {
                        out.write(bufferOut, 0, bytes);
                    }
                    in.close();
                }
            }
            byte[] endData = ("\r\n--" + BOUNDARY + "--\r\n").getBytes();
            out.write(endData);
            out.flush();
            out.close();
            // 读取返回数据
            StringBuffer strBuf = new StringBuffer();
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    conn.getInputStream()));
            String line = null;
            while ((line = reader.readLine()) != null) {
                strBuf.append(line).append("\n");
            }
            res = strBuf.toString();
            reader.close();
            reader = null;
        } catch (Exception e) {
            System.out.println("发送POST请求出错。" + urlStr);
            e.printStackTrace();
        } finally {
            if (conn != null) {
                conn.disconnect();
                conn = null;
            }
        }
        return res;
    }
	
	public  void getJSON(String url2, String param) {
        try {
             URL url = new URL(url2);
             HttpURLConnection con = (HttpURLConnection) url.openConnection();
             con.setRequestProperty("Content-type", "application/json"); 
             con.setDoOutput(true); //获取返回数据需要设置为true 默认false
             con.setDoInput(true); //发送数据需要设置为true 默认false
             con.setReadTimeout(5000);
             con.setConnectTimeout(5000);
             con.setRequestMethod("POST");
             con.connect();
             DataOutputStream out = new DataOutputStream(con.getOutputStream());
             if (param != null) {
                  //param = URLEncoder.encode(param);//url编码防止中文乱码
                  out.writeBytes(param);
             }
             out.flush();
             out.close();
            System.out.println(con.getHeaderField("Content-Disposition"));
            System.out.println(con.getHeaderField("Content-Length"));
            System.out.println(con.getInputStream().available());
             savePic(con.getInputStream(),"1.png");
//             BufferedReader red = new BufferedReader(new InputStreamReader(con.getInputStream(), "utf-8"));
//             StringBuffer sb = new StringBuffer();
//             String line;
//             while ((line = red.readLine()) != null) {
//                  sb.append(line);
//             }
//             red.close();
        } catch (Exception e) {
             e.printStackTrace();
        }
  }
	
	private void savePic(InputStream inputStream, String fileName) {

        OutputStream os = null;
        try {
            String path = "D:\\testFile\\";
            // 2、保存到临时文件
            // 1K的数据缓冲
            byte[] bs = new byte[1024];
            // 读取到的数据长度
            int len;
            // 输出的文件流保存到本地文件

            File tempFile = new File(path);
            if (!tempFile.exists()) {
                tempFile.mkdirs();
            }
            os = new FileOutputStream(tempFile.getPath() + File.separator + fileName);
            // 开始读取
            while ((len = inputStream.read(bs)) != -1) {
                os.write(bs, 0, len);
            }

        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            // 完毕，关闭所有链接
            try {
                os.close();
                inputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

	
	@Test
	public void test1() throws FileNotFoundException, IOException {
		
//		        String url = "http://192.168.10.108:8081/admin/sys/tss/upload/";
//		        String fileName = "C:\\Users\\ZhouHuan\\Pictures\\Saved Pictures\\草图.png";
//		        Map<String, String> textMap = new HashMap<String, String>();
//		        //可以设置多个input的name，value
////		        textMap.put("app_id", "12345678");
////		        textMap.put("method", "2");
////		        textMap.put("timestamp", "2");
////		        textMap.put("method", "pay.trade.upload");
////		        textMap.put("nonce_str", "2");
////		        textMap.put("version", "2");
////		        textMap.put("sign", "2");
////		        textMap.put("biz_content", "{\"version\":\"1.0.5\",\"remark\":\"终端初次版本升级测试1.0.5\"}");
//		        
//		        
//		        
//		        textMap.put("version", "12345678");
//		        textMap.put("name", "2");
//		        textMap.put("remark", "2");
//		        
//		        
//		        //设置file的name，路径
//		        Map<String, String> fileMap = new HashMap<String, String>();
//		        fileMap.put("multipartFile", fileName);
//		        String contentType = "";//image/png
//		        String ret = formUpload(url, textMap, fileMap,contentType);
//		        System.out.println(ret);
		        //{"status":"0","message":"add succeed","baking_url":"group1\/M00\/00\/A8\/CgACJ1Zo-LuAN207AAQA3nlGY5k151.png"}
		
		getJSON("http://192.168.1.74:8082/bcs/api/trade.download/gateway.do","{\"biz_content\": \"string\",\"maccode\": \"string\",\"machno\": \"S0000001\",\"method\": \"pay.trade.download\",\"nonce_str\": \"string\",\"sign\": \"string\",\"timestamp\": \"string\",\"version\": \"string\"}\r\n");
////		List<Long> list = new ArrayList<>();
////		list.add(1L);
////		list.add(2L);date
////		list.add(3L);
////		System.out.println(StringUtil.isListNoBank(list, 0L));
//		
////		Map<String, Object> map = new HashMap<String, Object>();
////		map.put("key", "N");
////		map.put("value", "1");
////		String key = (String) map.get("key");
////		String value = (String) map.get("value");
////		isKeyValue(map,key,value);
////		System.out.println(key);
////		System.out.println(value);
//		String date = "2018-12-24 13:58:15";
//		date = date.substring(0, 4) + date.substring(5, 7) + date.substring(8, 10)+date.substring(11, 13) + date.substring(14, 16) +  date.substring(17, 19);
//		System.out.println(date);
		
//		String path = ".";//图片存储路径 path for image save 
//		Integer height = 40;//image 高度。  image height. count as pixel
//		Integer width = 200;//image 宽度。 image width. count as pixel
//		Integer count = 5;	// validation code length.
//		String validCode = null; //验证码
//		Generator generator = new PngVCGenerator(width, height, count);
//        generator.write2out(new FileOutputStream(path + "/1.png")).close();
//        validCode = generator.text(); //get the validation code as 'String'
//        System.out.println(validCode);
//        generator = new GifVCGenerator(width, height, count);//   gif
//        generator.write2out(new FileOutputStream(path + "/1.gif")).close();
//        validCode = generator.text();
//        System.out.println(validCode);
//        generator = new Gif2VCGenerator(width, height, count);//   gif
//        generator.write2out(new FileOutputStream(path + "/2.gif")).close();
//        validCode = generator.text();
//        System.out.println(validCode);
//        generator = new Gif3VCGenerator(width, height, count);//   gif
//        generator.write2out(new FileOutputStream(path + "/3.gif")).close();
//        validCode = generator.text();
//        System.out.println(validCode);
		String str = "purgingTime";
		
		String[] keywords = { "master", "truncate", "insert", "select", "delete", "update", "declare", "alter", 
				"drop","like","limit","in"};

		// 判断是否包含非法字符
		for (String keyword : keywords) {
			if (str.indexOf(keyword) != -1) {
				//throw new RxcException("包含非法字符");
				System.out.println("str:" + str +"  ===  keyword:" + keyword);
			}
		}
	}
	
	public boolean isKeyValue(Map<String, Object> params,String key, String value) {
		if(StringUtils.isNotBlank(key) && StringUtils.isNotBlank(value)) {
			if(key.equals("N")) {
				//params.put("key", mach_no);
				key = "mach_no";
			}
			if(key.equals("M")) {
				key = "maccode";
			}
			if(key.equals("V")) {
				key = "version";
			}
			return true;
		}else {
			return false;
		}
	}
	
	@Test
	public void test12() {
		//TradeForm form = new TradeForm();
		//String date0 = "20000101112202";
		//DateUtils.stringToDate(form.getTimestamp(), form.getTimestamp());
		
		//doPostSubmitBody("http://192.168.1.74:8082/bcs/api/trade.upload/gateway.do",);
        String s = "{\n" +
                "  \"account\": \"string\",\n" +
                "  \"clientName\": \"string\",\n" +
                "  \"clientPassword\": \"string\",\n" +
                "  \"clientStatus\": 0,\n" +
                "  \"companyId\": \"string\",\n" +
                "  \"createTime\": \"2019-09-03T07:28:28.949Z\",\n" +
                "  \"isDelete\": 0,\n" +
                "  \"manager\": \"string\",\n" +
                "  \"phone\": \"string\",\n" +
                "  \"uuid\": \"string\"\n" +
                "}";


       String s1 =  HttpPost("http://lixinfintech.com:9099/v1/user/client/addClient",s);
       System.out.println(s1 + "--------------->");


	}

    public static String HttpPost(String url2,String map) {
        String src = "";
        DataOutputStream out = null;
        BufferedReader in = null;
        HttpURLConnection con =null;
        try {
            URL url = new URL(url2);
            con = (HttpURLConnection) url.openConnection();
            con.setDoOutput(true); //获取返回数据需要设置为true 默认false
            con.setDoInput(true); //发送数据需要设置为true 默认false
            con.setRequestProperty("Content-type", "application/json");
            con.setRequestProperty("User-Agent",
                    "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)");

            con.setReadTimeout(5000);
            con.setConnectTimeout(5000);
            con.setRequestMethod("POST");
            con.connect();
            out = new DataOutputStream(con.getOutputStream());
            out.writeBytes(map);
            out.flush();
            out.close();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(con.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                System.out.println(line);
                src += line;
            }
        } catch (Exception e) {
            //logger.error("发送POST请求出错:",e);
            System.out.println(e.getMessage());
        }finally {
            try {
                if(out!=null){
                    out.close();
                }
                if(in!=null){
                    in.close();
                }
                if (con != null) {
                    con.disconnect();
                    con = null;
                }
            } catch (IOException e) {
            }
        }
        return src;
    }
	
	 /**
     * @param url 请求地址
     * @param map 请求的参数
     * @param filePath 文件路径
     * @param body_data 上传的文件二进制内容
     * @param charset 字符集
     * @return
     */
    public static String doPostSubmitBody(String url, Map<String, String> map,
            String filePath, byte[] body_data, String charset) {
        // 设置三个常用字符串常量：换行、前缀、分界线（NEWLINE、urlPrefix、BOUNDARY）；
        final String NEWLINE = "\r\n"; // 换行，或者说是回车
        final String urlPrefix = "--"; // 固定的前缀
        final String BOUNDARY = "#"; // 分界线，就是上面提到的boundary，可以是任意字符串，建议写长一点，这里简单的写了一个#
        HttpURLConnection httpConn = null;
        BufferedInputStream bis = null;
        DataOutputStream dos = null;
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        try {
            // 实例化URL对象。调用URL有参构造方法，参数是一个url地址；
            URL urlObj = new URL(url);
            // 调用URL对象的openConnection()方法，创建HttpURLConnection对象；
            httpConn = (HttpURLConnection) urlObj.openConnection();
            // 调用HttpURLConnection对象setDoOutput(true)、setDoInput(true)、setRequestMethod("POST")；
            httpConn.setDoInput(true);
            httpConn.setDoOutput(true);
            httpConn.setRequestMethod("POST");
            // 设置Http请求头信息；（Accept、Connection、Accept-Encoding、Cache-Control、Content-Type、User-Agent），不重要的就不解释了，直接参考抓包的结果设置即可
            httpConn.setUseCaches(false);
            httpConn.setRequestProperty("Connection", "Keep-Alive");
            httpConn.setRequestProperty("Accept", "*/*");
            httpConn.setRequestProperty("Accept-Encoding", "gzip, deflate");
            httpConn.setRequestProperty("Cache-Control", "no-cache");
            // 这个比较重要，按照上面分析的拼装出Content-Type头的内容
            httpConn.setRequestProperty("Content-Type",
                    "multipart/form-data; boundary=" + BOUNDARY);
            // 这个参数可以参考浏览器中抓出来的内容写，用chrome或者Fiddler抓吧看看就行
            httpConn.setRequestProperty(
                    "User-Agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30)");
            // 调用HttpURLConnection对象的connect()方法，建立与服务器的真实连接；
            httpConn.connect();

            // 调用HttpURLConnection对象的getOutputStream()方法构建输出流对象；
            dos = new DataOutputStream(httpConn.getOutputStream());
            // 获取表单中上传控件之外的控件数据，写入到输出流对象（根据上面分析的抓包的内容格式拼凑字符串）；
            if (map != null && !map.isEmpty()) { // 这时请求中的普通参数，键值对类型的，相当于上面分析的请求中的username，可能有多个
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey(); // 键，相当于上面分析的请求中的username
                    String value = map.get(key); // 值，相当于上面分析的请求中的sdafdsa
                    dos.writeBytes(urlPrefix + BOUNDARY + NEWLINE); // 像请求体中写分割线，就是前缀+分界线+换行
                    dos.writeBytes("Content-Disposition: form-data; "
                            + "name=\"" + key + "\"" + NEWLINE); // 拼接参数名，格式就是Content-Disposition: form-data; name="key" 其中key就是当前循环的键值对的键，别忘了最后的换行 
                    dos.writeBytes(NEWLINE); // 空行，一定不能少，键和值之间有一个固定的空行
                    dos.writeBytes(URLEncoder.encode(value.toString(), charset)); // 将值写入
                    // 或者写成：dos.write(value.toString().getBytes(charset));
                    dos.writeBytes(NEWLINE); // 换行
                } // 所有循环完毕，就把所有的键值对都写入了
            }

            // 获取表单中上传附件的数据，写入到输出流对象（根据上面分析的抓包的内容格式拼凑字符串）；
            if (body_data != null && body_data.length > 0) {
                dos.writeBytes(urlPrefix + BOUNDARY + NEWLINE);// 像请求体中写分割线，就是前缀+分界线+换行
                String fileName = filePath.substring(filePath
                        .lastIndexOf(File.separatorChar) + 1); // 通过文件路径截取出来文件的名称，也可以作文参数直接传过来
                // 格式是:Content-Disposition: form-data; name="请求参数名"; filename="文件名"
                // 我这里吧请求的参数名写成了uploadFile，是死的，实际应用要根据自己的情况修改
                // 不要忘了换行
                dos.writeBytes("Content-Disposition: form-data; " + "name=\""
                        + "uploadFile" + "\"" + "; filename=\"" + fileName
                        + "\"" + NEWLINE);
                // 换行，重要！！不要忘了
                dos.writeBytes(NEWLINE);
                dos.write(body_data); // 上传文件的内容
                dos.writeBytes(NEWLINE); // 最后换行
            }
            dos.writeBytes(urlPrefix + BOUNDARY + urlPrefix + NEWLINE); // 最后的分割线，与前面的有点不一样是前缀+分界线+前缀+换行，最后多了一个前缀
            dos.flush();

            // 调用HttpURLConnection对象的getInputStream()方法构建输入流对象；
            byte[] buffer = new byte[8 * 1024];
            int c = 0;
            // 调用HttpURLConnection对象的getResponseCode()获取客户端与服务器端的连接状态码。如果是200，则执行以下操作，否则返回null；
            if (httpConn.getResponseCode() == 200) {
                bis = new BufferedInputStream(httpConn.getInputStream());
                while ((c = bis.read(buffer)) != -1) {
                    baos.write(buffer, 0, c);
                    baos.flush();
                }
            }
            // 将输入流转成字节数组，返回给客户端。
            return new String(baos.toByteArray(), charset);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (dos != null) {dos.close();}
                if (bis != null) {bis.close();}
                if (baos != null) {baos.close();}
                httpConn.disconnect();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
	
	/**
     * 向指定 URL 发送POST方法的请求
     * @param url 发送请求的 URL
     * @param param 请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     * @return 所代表远程资源的响应结果
     */
    public static void sendPost(String url, String param) {
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            URLConnection conn = realUrl.openConnection();
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("user-agent","Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 发送POST请求必须设置如下两行
            conn.setDoOutput(true);
            conn.setDoInput(true);
            //1.获取URLConnection对象对应的输出流
            out = new PrintWriter(conn.getOutputStream());
            //2.中文有乱码的需要将PrintWriter改为如下
            //out=new OutputStreamWriter(conn.getOutputStream(),"UTF-8")
            // 发送请求参数
            out.print(param);
            // flush输出流的缓冲
            out.flush();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！"+e);
            e.printStackTrace();
        }
        //使用finally块来关闭输出流、输入流
        finally{
            try{
                if(out!=null){
                    out.close();
                }
                if(in!=null){
                    in.close();
                }
            }
            catch(IOException ex){
                ex.printStackTrace();
            }
        }
        System.out.println("post推送结果："+result);
    }
    
    
//    @Test
//    public void test112() {
//    	List<TbcTredDetailEntity>  List = new ArrayList<>();
//    	TbcTredDetailEntity detailEntity = new TbcTredDetailEntity();
//    	detailEntity.setMachNo("S0000001");
//    	detailEntity.setType(2);
//    	detailEntity.setOrder("S000000120190415091509412");
//    	detailEntity.setGuid("BA2AFAEB0DDC400AB878A1D5EE8982C1");
//    	detailEntity.setTime("20190415091509");
//    	detailEntity.setRmb1(1);
//    	detailEntity.setRmb01(0);
//    	detailEntity.setRmb05(0);
//    	detailEntity.setRmb5(0);
//    	detailEntity.setRmb10(0);
//    	detailEntity.setRmb100(0);
//    	detailEntity.setRmb20(0);
//    	detailEntity.setRmb50(0);
//    	detailEntity.setRmb2(0);
//    	detailEntity.setTotal(1);
//    	detailEntity.setMoney(1.00);
//    	detailEntity.setCardId("1000751183469482");
//    	List.add(detailEntity);
//    	
//    	
//    	detailEntity = new TbcTredDetailEntity();
//    	detailEntity.setMachNo("S0000002");
//    	detailEntity.setType(2);
//    	detailEntity.setOrder("S000000120190415091509412");
//    	detailEntity.setGuid("BA2AFAEB0DDC400AB878A1D5EE8982C1");
//    	detailEntity.setTime("20190415091509");
//    	detailEntity.setRmb1(1);
//    	detailEntity.setRmb01(0);
//    	detailEntity.setRmb05(0);
//    	detailEntity.setRmb5(0);
//    	detailEntity.setRmb10(0);
//    	detailEntity.setRmb100(0);
//    	detailEntity.setRmb20(0);
//    	detailEntity.setRmb50(0);
//    	detailEntity.setRmb2(0);
//    	detailEntity.setTotal(1);
//    	detailEntity.setMoney(1.00);
//    	detailEntity.setCardId("1000751183469482");
//    	List.add(detailEntity);
//    	JSONArray jsonArray = JSONUtil.parseArray(List);
//    	
//    	List<Dict> tredList  = JSONUtil.toList(jsonArray, Dict.class);
//    	
//    	System.out.println(tredList.get(1).getStr("machNo"));
//    	System.out.println(jsonArray);
//    }
}
