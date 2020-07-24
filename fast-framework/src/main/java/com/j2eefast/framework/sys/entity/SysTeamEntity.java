package com.j2eefast.framework.sys.entity;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.annotation.write.style.ColumnWidth;
import com.alibaba.excel.annotation.write.style.HeadFontStyle;
import com.alibaba.excel.annotation.write.style.HeadRowHeight;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableLogic;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.j2eefast.common.core.base.entity.BaseEntity;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.Date;
import java.util.List;

/**
 * <p>系统用户</p>
 *
 * @author: zhouzhou Emall:18774995071@163.com
 * @date: 2019-03-20 16:40
 * @web: http://www.j2eefast.com
 * @version: 1.0.1
 */
@TableName("sys_team")
//设置头高
@HeadRowHeight(20)
@HeadFontStyle(fontHeightInPoints = 12)
@ExcelIgnoreUnannotated
@Data
public class SysTeamEntity extends BaseEntity {

	/**
	 * 用户ID
	 */
	@TableId
	@ExcelProperty("队伍ID")
	private Long id;

	/**
	 * 队伍名称
	 */
	@NotBlank(message = "队伍名称不能为空")
	@ExcelProperty("队伍名称")
	private String teamName;
	/**
	 * 状态 0：禁用 1：正常
	 */
	@ExcelProperty("状态")
	private String status;

	@TableLogic
	private String delFlag;

	/**
	 * 部门ID
	 */
	private Long deptId;

	/**
	 * 部门名称 --暂时不用
	 */
	@TableField(exist = false)
	private String deptName;

	/**
	 * 公司ID
	 */
	@NotNull(message = "公司不能为空")
	private Long compId;

	/**
	 * 公司名称
	 */
	@TableField(exist = false)
	@ExcelProperty("所属公司")
	//列宽
	@ColumnWidth(50)
	private String compName;

	@NotNull(message = "负责人不能为空")
	private Long respUserId;

	@TableField(exist = false)
	@ExcelProperty("负责人姓名")
	private String respUserName;

	//队伍类型
	private String teamType;

	@ExcelProperty("备注")
	private String remark;

}
