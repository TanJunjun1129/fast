package com.j2eefast.generator.gen.controller;

import com.j2eefast.common.core.business.annotaion.BussinessLog;
import com.j2eefast.common.core.enums.BusinessType;
import com.j2eefast.common.core.utils.*;
import com.j2eefast.framework.annotation.RepeatSubmit;
import com.j2eefast.common.core.controller.BaseController;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.annotation.Validated;
import org.springframework.ui.ModelMap;
import java.util.Map;
import java.util.Date;
import org.springframework.web.bind.annotation.*;
import com.j2eefast.generator.gen.entity.TestMEntity;
import com.j2eefast.generator.gen.service.TestMService;

/**
 * testM页面控制器
 * @author mfksn001@163.com
 * @date 2020-06-04 17:21
 */
@Controller
@RequestMapping("/gen/testM")
public class TestMController extends BaseController{

    private String prefix = "modules/gen/testM";
    @Autowired
    private TestMService testMService;

    @RequiresPermissions("gen:testM:view")
    @GetMapping()
    public String testM(){
        return prefix + "/testM";
    }
        
    @RequestMapping("/list")
    @RequiresPermissions("gen:testM:list")
    @ResponseBody
    public ResponseData list(@RequestParam Map<String, Object> params,TestMEntity testMEntity) {
		PageUtil page = testMService.findPage(params,testMEntity);
		return success(page);
    }    
            
    @GetMapping("/add")
    public String add(ModelMap mmap){
         TestMEntity testM = new TestMEntity();
          mmap.put("testM", testM);
        return prefix + "/add";
    }

    /**
     * 新增
     */
    @RepeatSubmit
    @RequiresPermissions("gen:testM:add")
    @BussinessLog(title = "testM", businessType = BusinessType.INSERT)
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData addTestM(@Validated TestMEntity testM){
        //校验参数
        ValidatorUtil.validateEntity(testM);
        return testMService.saveTestM(testM)? success(): error("新增失败!");
    }    
    
    /**
     * 修改
     */
    @RequiresPermissions("gen:testM:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap){
        TestMEntity testM = testMService.getTestMById(id);
        mmap.put("testM", testM);
        return prefix + "/edit";
    }

    /**
     * 修改保存testM
     */
    @RepeatSubmit
    @RequiresPermissions("gen:testM:edit")
    @BussinessLog(title = "testM", businessType = BusinessType.UPDATE)
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData editTestM(TestMEntity testM){
		ValidatorUtil.validateEntity(testM);
        return testMService.updateTestMById(testM)? success(): error("修改失败!");
    }    

    /**
     * 删除
     */
    @RepeatSubmit
    @BussinessLog(title = "testM", businessType = BusinessType.DELETE)
    @RequestMapping(value = "/del", method = RequestMethod.POST)
    @RequiresPermissions("gen:testM:del")
    @ResponseBody
    public ResponseData del(Long[] ids) {
      return testMService.deleteTestMByIds(ids)? success(): error("删除失败!");
    }    
}
