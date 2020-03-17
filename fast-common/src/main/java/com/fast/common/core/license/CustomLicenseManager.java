package com.fast.common.core.license;

import cn.hutool.core.util.CharsetUtil;
import de.schlichtherle.license.LicenseContent;
import de.schlichtherle.license.LicenseManager;
import de.schlichtherle.license.LicenseNotary;
import de.schlichtherle.license.LicenseParam;
import de.schlichtherle.xml.GenericCertificate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.beans.XMLDecoder;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

/**
 * <p>自定义LicenseManager，用于增加额外的服务器硬件信息校验</p>
 * @author: zhouzhou Emall:18774995071@163.com
 * @date: 2020-03-17 09:14
 * @web: https://www.j2eefast.com
 * @version: 1.0.1
 */
public class CustomLicenseManager  extends LicenseManager {

    private static Logger                   LOG                     = LoggerFactory.getLogger(CustomLicenseManager.class);
    private static final int                DEFAULT_BUFSIZE         = 8 * 1024;


    public CustomLicenseManager() {

    }

    public CustomLicenseManager(LicenseParam param) {
        super(param);
    }


    /**
     * <p>
     *     校验当前服务器的IP地址是否在可被允许的IP范围内<br/>
     *     如果存在IP在可被允许的IP地址范围内，则返回true
     * </p>
     * @param expectedList 证书允许范围
     * @param serverList 服务器自身IP
     * @return
     */
    private boolean checkIpAddress(List<String> expectedList, List<String> serverList){

        if(expectedList != null && expectedList.size() > 0){
            if(serverList != null && serverList.size() > 0){
                for(String expected : expectedList){
                    if(serverList.contains(expected.trim())){
                        return true;
                    }
                }
            }
            return false;
        }else {
            return true;
        }
    }

    /**
     * <p>重写install方法</p>
     */
    @Override
    protected synchronized LicenseContent install(
            final byte[] key,
            final LicenseNotary notary)
            throws Exception {

        final GenericCertificate certificate = getPrivacyGuard().key2cert(key);
        notary.verify(certificate);
        final LicenseContent content = (LicenseContent)this.load(certificate.getEncoded());
        // 增加额外的自己的license校验方法，校验ip、mac、cpu序列号等
        this.validate(content);
        setLicenseKey(key);
        setCertificate(certificate);
        return content;
    }

    /**
     * <p>重写XMLDecoder解析XML</p>
     */
    private Object load(String encoded){

        BufferedInputStream inputStream = null;
        XMLDecoder decoder = null;
        try {
            inputStream = new BufferedInputStream(new ByteArrayInputStream(encoded.getBytes(CharsetUtil.UTF_8)));
            decoder = new XMLDecoder(new BufferedInputStream(inputStream, DEFAULT_BUFSIZE),null,null);
            return decoder.readObject();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } finally {
            try {
                if(decoder != null){
                    decoder.close();
                }
                if(inputStream != null){
                    inputStream.close();
                }
            } catch (Exception e) {
                LOG.error("XMLDecoder解析XML失败",e);
            }
        }
        return null;

    }
}
