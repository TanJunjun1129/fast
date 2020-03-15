package com.fast.framework.sys.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fast.common.core.base.entity.BaseEntity;

/**
 * 系统用户
 */
@TableName("sys_user")
public class SysUserEntity extends BaseEntity {
	/**
	 * 用户ID
	 */
	@TableId
	private Long userId;

	/**
	 * 用户名
	 */
	@NotBlank(message = "登陆账号不能为空")
	private String username;

	@NotBlank(message = "姓名不能为空")
	private String name;

	/**
	 * 密码
	 */
	@JsonProperty(access = JsonProperty.Access.WRITE_ONLY)
	private String password;

	/**
	 * 密码安全级别（0初始 1很弱 2弱 3安全 4很安全）
	 */
	private String pwdSecurityLevel;

	/**
	 * 盐
	 */
	private String salt;

	/**
	 * 邮箱
	 */
	private String email;

	/**
	 * 手机号
	 */
	private String mobile;

	/**
	 * 状态 0：禁用 1：正常
	 */
	private String status;

	/** 用户头像 */
	private String avatar;

	/**
	 * 用户对应卡号
	 */
	private String cardId;

	/**
	 * 用户是否在线
	 */
	@TableField(exist = false)
	private Integer loginStatus;

	/**
	 * 角色权限字符列表
	 */
	@TableField(exist = false)
	private List<String> RoleKeys;

	/**
	 * 角色ID列表
	 */
	@TableField(exist = false)
	private List<Long> roleIdList;


	/**
	 * 地区ID列表
	 */
	@TableField(exist = false)
	private List<Long> deptIdList;

	/**
	 * 岗位ID列表
	 */
	@TableField(exist = false)
	private List<String> postCodes;

	/**
	 * 上次登陆时间
	 */
	@TableField(exist = false)
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss" , timezone = "GMT+8")
	private Date loginTime;
	
	/**
	 *上次登陆地点
	 */
	@TableField(exist = false)
	private String loginLocation;
	
	@TableField(exist = false)
	private String nowLoginTime;
	
	@TableField(exist = false)
	private String nowLoginLocation;

	/**
	 * 角色名称
	 */
	@TableField(exist = false)
	private String roleName;

	/**
	 * 岗位名称
	 */
	@TableField(exist = false)
	private String postName;

	/**
	 * 岗位编码
	 */
	@TableField(exist = false)
	private String postCode;
	
	/**
	 * 部门ID --暂时不用
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
	private String compName;

	/**
	 * 用户登录IP
	 */
	@TableField(exist = false)
	private String ip;
	
	/**
	 * 用户会话ID
	 */
	@TableField(exist = false)
	private String sid;

	public List<String> getPostCodes() {
		return postCodes;
	}

	public void setPostCodes(List<String> postCodes) {
		this.postCodes = postCodes;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getPwdSecurityLevel() {
		return pwdSecurityLevel;
	}

	public void setPwdSecurityLevel(String pwdSecurityLevel) {
		this.pwdSecurityLevel = pwdSecurityLevel;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getNowLoginTime() {
		return nowLoginTime;
	}

	public void setNowLoginTime(String nowLoginTime) {
		this.nowLoginTime = nowLoginTime;
	}

	public String getNowLoginLocation() {
		return nowLoginLocation;
	}

	public void setNowLoginLocation(String nowLoginLocation) {
		this.nowLoginLocation = nowLoginLocation;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	

	public String getCardId() {
		return cardId;
	}

	public void setCardId(String cardId) {
		this.cardId = cardId;
	}


	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Integer getLoginStatus() {
		return loginStatus;
	}

	public void setLoginStatus(Integer loginStatus) {
		this.loginStatus = loginStatus;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	/**
	 * 设置：
	 * 
	 * @param userId
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * 获取：
	 * 
	 * @return Long
	 */
	public Long getUserId() {
		return userId;
	}

	/**
	 * 设置：用户名
	 * 
	 * @param username 用户名
	 */
	public void setUsername(String username) {
		this.username = username;
	}

	public List<String> getRoleKeys() {
		return RoleKeys;
	}

	public void setRoleKeys(List<String> roleKeys) {
		RoleKeys = roleKeys;
	}

	/**
	 * 获取：用户名
	 * 
	 * @return String
	 */
	public String getUsername() {
		return username;
	}

	/**
	 * 设置：密码
	 * 
	 * @param password 密码
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * 获取：密码
	 * 
	 * @return String
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * 设置：邮箱
	 * 
	 * @param email 邮箱
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 获取：邮箱
	 * 
	 * @return String
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 设置：手机号
	 * 
	 * @param mobile 手机号
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	/**
	 * 获取：手机号
	 * 
	 * @return String
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * 设置：状态 0：禁用 1：正常
	 * 
	 * @param status 状态 0：禁用 1：正常
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * 获取：状态 0：禁用 1：正常
	 * 
	 * @return Integer
	 */
	public String getStatus() {
		return status;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public List<Long> getRoleIdList() {
		return roleIdList;
	}

	public void setRoleIdList(List<Long> roleIdList) {
		this.roleIdList = roleIdList;
	}

	public String getSalt() {
		return salt;
	}

	public void setSalt(String salt) {
		this.salt = salt;
	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public List<Long> getDeptIdList() {
		return deptIdList;
	}

	public void setDeptIdList(List<Long> deptIdList) {
		this.deptIdList = deptIdList;
	}

	public Long getCompId() {
		return compId;
	}

	public void setCompId(Long compId) {
		this.compId = compId;
	}

	public String getCompName() {
		return compName;
	}

	public void setCompName(String compName) {
		this.compName = compName;
	}

	public String getLoginLocation() {
		return loginLocation;
	}

	public void setLoginLocation(String loginLocation) {
		this.loginLocation = loginLocation;
	}
}
