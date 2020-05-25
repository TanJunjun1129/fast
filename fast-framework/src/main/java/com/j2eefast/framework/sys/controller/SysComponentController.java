package com.j2eefast.framework.sys.controller;

import com.j2eefast.common.core.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * <p>组件控制类</p>
 *
 * @author: zhouzhou
 * @date: 2020-05-22 09:14
 * @web: http://www.j2eefast.com
 * @version: 1.0.1
 */
@Controller
@RequestMapping("/sys/component")
public class SysComponentController extends BaseController {

	private String                  urlPrefix                   = "modules/sys/macro";

	/**
	 * 跳转选择树页面
	 * @return
	 */
	@RequestMapping(value = "/treeselect", method = RequestMethod.POST)
	public String treeselect(ModelMap mmap) {
		mmap.put("url",super.getPara("url")); // 树结构数据URL
		mmap.put("treeId",super.getPara("treeId")); //树节点ID
		mmap.put("treeName",super.getPara("treeName"));//节点名称
		mmap.put("correlationId",super.getPara("correlationId")); //关联ID
		mmap.put("expandLevel",super.getPara("expandLevel")); //是否展开树
		mmap.put("checked", super.getPara("checked")); // 是否可复选
		mmap.put("chkboxType", super.getPara("chkboxType")); //  复选框级联选择规则 默认：{'Y':'ps','N':'ps'}
		return urlPrefix + "/treeselect";
	}
}
