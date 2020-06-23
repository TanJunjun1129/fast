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
import com.j2eefast.generator.gen.entity.TestEntity;
import com.j2eefast.generator.gen.service.TestService;

/**
 * 单表范例页面控制器
 * @author mfksn001@163.com
 * @date 2020-06-04 16:47
 */
@Controller
@RequestMapping("/gen/test")
public class TestController extends BaseController{

    private String prefix = "modules/gen/test";
    @Autowired
    private TestService testService;

    @RequiresPermissions("gen:test:view")
    @GetMapping()
    public String test(){
        return prefix + "/test";
    }
        
    @RequestMapping("/list")
    @RequiresPermissions("gen:test:list")
    @ResponseBody
    public ResponseData list(@RequestParam Map<String, Object> params,TestEntity testEntity) {
		PageUtil page = testService.findPage(params,testEntity);
		return success(page);
    }    
            
    @GetMapping("/add")
    public String add(ModelMap mmap){
         TestEntity test = new TestEntity();
          mmap.put("test", test);
        return prefix + "/add";
    }

    /**
     * 新增
     */
    @RepeatSubmit
    @RequiresPermissions("gen:test:add")
    @BussinessLog(title = "单表范例", businessType = BusinessType.INSERT)
    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData addTest(@Validated TestEntity test){
        //校验参数
        ValidatorUtil.validateEntity(test);
        return testService.saveTest(test)? success(): error("新增失败!");
    }    
    
    /**
     * 修改
     */
    @RequiresPermissions("gen:test:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap){
        TestEntity test = testService.getTestById(id);
        mmap.put("test", test);
        return prefix + "/edit";
    }

    /**
     * 修改保存单表范例
     */
    @RepeatSubmit
    @RequiresPermissions("gen:test:edit")
    @BussinessLog(title = "单表范例", businessType = BusinessType.UPDATE)
    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    @ResponseBody
    public ResponseData editTest(TestEntity test){
		ValidatorUtil.validateEntity(test);
        return testService.updateTestById(test)? success(): error("修改失败!");
    }    

    /**
     * 删除
     */
    @RepeatSubmit
    @BussinessLog(title = "单表范例", businessType = BusinessType.DELETE)
    @RequestMapping(value = "/del", method = RequestMethod.POST)
    @RequiresPermissions("gen:test:del")
    @ResponseBody
    public ResponseData del(Long[] ids) {
      return testService.deleteTestByIds(ids)? success(): error("删除失败!");
    }    
}
