package com.j2eefast.modules.demo.contorller;

import cn.hutool.core.io.FileUtil;
import com.j2eefast.common.core.controller.BaseController;
import com.j2eefast.framework.utils.Constant;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 前端演示Demo
 * @author huanzhou
 * @Date 2020-06-19
 */
@Controller
@RequestMapping("/sys/demo")
public class SysDemoController extends BaseController {

    private String urlPrefix = "modules/sys/demo";


    @RequiresPermissions("sys:demo:mode")
    @GetMapping()
    public String mode(ModelMap mmap) {
        mmap.put("mode",FileUtil.readUtf8String(Constant.BASE_WEB_HTML +urlPrefix+ "/mode.txt"));
        return urlPrefix + "/mode";
    }
}
