/*
 Navicat Premium Data Transfer

 Source Server         : 本地虚拟机ROOT
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : 192.168.20.110:3306
 Source Schema         : fastdb

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 20/06/2020 12:37:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for example_test
-- ----------------------------
DROP TABLE IF EXISTS `example_test`;
CREATE TABLE `example_test` (
  `id` bigint(20) NOT NULL,
  `pin` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '员工编号',
  `name` varchar(64) COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '电话',
  `sex` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别',
  `age` int(11) DEFAULT NULL,
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `education` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `position` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '职位',
  `hobby` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '爱好',
  `join_date` date DEFAULT NULL COMMENT '入职日期',
  `leave_date` datetime DEFAULT NULL COMMENT '离职日期',
  `noational_id` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身份证号',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `remark` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注信息',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '更新者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='单表范例';

-- ----------------------------
-- Records of example_test
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `actions_type` char(50) COLLATE utf8mb4_bin DEFAULT 'default' COMMENT '操作按钮风格(default,icon)',
  `is_cover` char(1) COLLATE utf8mb4_bin DEFAULT 'N' COMMENT '生成代码是否覆盖替换',
  `is_del` char(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '只有一个页面 是否需要删除功能',
  `run_path` varchar(200) COLLATE utf8mb4_bin DEFAULT '/' COMMENT '生成路径(不填默认项目路径)',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '其它生成选项',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '上级菜单ID',
  `parent_name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '父菜单名称',
  `menu_name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单名称',
  `module_codes` varchar(100) COLLATE utf8mb4_bin DEFAULT 'core' COMMENT '归属模块（多个用逗号隔开）',
  `menu_order` int(11) DEFAULT '0' COMMENT '菜单排序',
  `menu_icon` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单图标',
  `menu_target` varchar(20) COLLATE utf8mb4_bin DEFAULT '' COMMENT '目标(打开方式)',
  `db_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'MASTER' COMMENT '数据库类型(MASTER 主数据库 其他从数据库)',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  `tree_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '树表id column名称',
  `tree_parent_code` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '树表父id column名称',
  `tree_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '树表name column名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
BEGIN;
INSERT INTO `gen_table` VALUES (1268086087508766721, 'sys_post', '岗位信息表', 'sysPost', 'crud', 'com.j2eefast.', '', 'post', '岗位信息', 'ZhouZhou', 'default', 'N', 'Y', '/', NULL, 0, '', '', 'core', 0, '', '', 'MASTER', 'admin', '2020-05-29 07:24:58', '', '2020-05-29 07:46:27', NULL, NULL, NULL, NULL);
INSERT INTO `gen_table` VALUES (1268418595630854146, 'sys_area', '行政区域', 'SysArea', 'r', 'com.j2eefast.framework.sys', 'sys', 'area', '行政区域', 'ZhouZhou', 'icon', 'Y', 'N', 'D:\\Lxworkspace\\J2EEFAST\\fast-framework\\src\\', NULL, 1, '系统设置', '行政区域', 'core', 0, 'fa fa-map-marker', '_tab', 'MASTER', 'admin', '2020-05-30 04:45:53', '', '2020-05-30 15:54:28', '', NULL, NULL, NULL);
INSERT INTO `gen_table` VALUES (1273515815370575873, 'sys_oper_log', '操作日志记录', 'sysOperLog', 'crud', 'com.j2eefast.', '', 'log', '操作日志记录', 'ZhouZhou', 'default', 'N', 'Y', '/', NULL, 0, '', '', 'core', 0, '', '', 'MASTER', '00214', '2020-06-18 15:14:47', '', NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` bigint(20) NOT NULL COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_plus` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '是否未MapperPlus（1是）',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `edit_info` varchar(2000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字段说明',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `circle_type` char(1) COLLATE utf8mb4_bin DEFAULT 'T' COMMENT '字段说明样式T 普通形 Q 黄色问号弹出型 R红色明显提示',
  `is_table_sort` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '字段是否为表sortable 1是',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
BEGIN;
INSERT INTO `gen_table_column` VALUES (1268086087722676226, '1268086087508766721', 'id', '主键', 'bigint(20)', 'Long', 'id', '0', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', '0', 1, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087747842049, '1268086087508766721', 'post_code', '岗位编码', 'varchar(64)', 'String', 'postCode', '0', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', '0', 2, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087773007874, '1268086087508766721', 'post_name', '岗位名称', 'varchar(50)', 'String', 'postName', '0', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '', 'T', '0', 3, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087793979394, '1268086087508766721', 'post_sort', '显示顺序', 'int(4)', 'Integer', 'postSort', '0', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 4, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087827533826, '1268086087508766721', 'post_type', '岗位分类', 'char(1)', 'String', 'postType', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', '', 'T', '0', 5, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087865282561, '1268086087508766721', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', '', 'T', '0', 6, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087886254081, '1268086087508766721', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', '0', 7, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087915614210, '1268086087508766721', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', '', 'T', '0', 8, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087932391425, '1268086087508766721', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', '', 'T', '0', 9, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087949168642, '1268086087508766721', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', '', 'T', '0', 10, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268086087974334466, '1268086087508766721', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', '', 'T', '0', 11, 'admin', '2020-06-02 23:44:18', '', NULL);
INSERT INTO `gen_table_column` VALUES (1268418595907678210, '1268418595630854146', 'id', '区域ID', 'int(11) unsigned', 'Long', 'id', '0', '1', '1', NULL, NULL, NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 1, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418595932844033, '1268418595630854146', 'parent_id', '上级区域ID', 'int(11) unsigned', 'Long', 'parentId', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 2, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418595962204161, '1268418595630854146', 'level', '行政区域', 'tinyint(1)', 'Integer', 'level', '0', '0', '0', NULL, '1', NULL, '1', '1', 'EQ', 'input', '', '', 'T', NULL, 4, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418595974787073, '1268418595630854146', 'name', '名称', 'varchar(100)', 'String', 'name', '0', '0', '0', NULL, '1', NULL, '1', '1', 'LIKE', 'input', '', '', 'T', NULL, 3, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418595999952897, '1268418595630854146', 'whole_name', '完整名称', 'varchar(300)', 'String', 'wholeName', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'LIKE', 'input', '', '', 'T', NULL, 5, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596041895937, '1268418595630854146', 'lon', '本区域经度', 'varchar(20)', 'String', 'lon', '0', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 6, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596067061762, '1268418595630854146', 'lat', '本区域维度', 'varchar(20)', 'String', 'lat', '0', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 7, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596079644673, '1268418595630854146', 'city_code', '电话区号', 'varchar(10)', 'String', 'cityCode', '0', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', '', 'T', NULL, 8, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596109004801, '1268418595630854146', 'zip_code', '邮政编码', 'char(6)', 'String', 'zipCode', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', NULL, 9, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596125782018, '1268418595630854146', 'area_code', '行政区划代码', 'varchar(10)', 'String', 'areaCode', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', NULL, 10, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596142559234, '1268418595630854146', 'pin_yin', '名称全拼', 'varchar(400)', 'String', 'pinYin', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 11, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596163530753, '1268418595630854146', 'simple_py', '首字母简拼', 'varchar(200)', 'String', 'simplePy', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 12, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1268418596180307970, '1268418595630854146', 'per_pin_yin', '区域名称拼音的第一个字母', 'char(1)', 'String', 'perPinYin', '0', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', NULL, 13, 'admin', '2020-06-03 21:45:34', 'admin', '2020-05-30 15:54:28');
INSERT INTO `gen_table_column` VALUES (1273515815542542338, '1273515815370575873', 'id', '主键', 'bigint(20)', 'Long', 'id', '0', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', '', 'T', '0', 1, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815559319554, '1273515815370575873', 'title', '模块标题', 'varchar(50)', 'String', 'title', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 2, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815571902465, '1273515815370575873', 'business_type', '业务类型（0其它 1新增 2修改 3删除）', 'int(2)', 'Integer', 'businessType', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', '', 'T', '0', 3, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815584485378, '1273515815370575873', 'method', '方法名称', 'varchar(100)', 'String', 'method', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 4, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815597068289, '1273515815370575873', 'request_method', '请求方式', 'varchar(10)', 'String', 'requestMethod', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 5, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815613845506, '1273515815370575873', 'operator_type', '操作类别（0其它 1后台用户 2手机端用户）', 'int(1)', 'Integer', 'operatorType', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', '', 'T', '0', 6, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815622234114, '1273515815370575873', 'oper_name', '操作人员', 'varchar(50)', 'String', 'operName', '0', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', '', 'T', '0', 7, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815643205634, '1273515815370575873', 'comp_name', '公司名称', 'varchar(50)', 'String', 'compName', '0', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', '', 'T', '0', 8, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815655788545, '1273515815370575873', 'oper_url', '请求URL', 'varchar(255)', 'String', 'operUrl', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 9, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815664177154, '1273515815370575873', 'oper_ip', '主机地址', 'varchar(50)', 'String', 'operIp', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 10, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815668371457, '1273515815370575873', 'oper_location', '操作地点', 'varchar(255)', 'String', 'operLocation', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 11, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815676760065, '1273515815370575873', 'oper_param', '请求参数', 'varchar(2000)', 'String', 'operParam', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', '', 'T', '0', 12, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815680954370, '1273515815370575873', 'json_result', '返回参数', 'varchar(2000)', 'String', 'jsonResult', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', '', 'T', '0', 13, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815693537282, '1273515815370575873', 'status', '操作状态（0正常 1异常）', 'int(1)', 'Integer', 'status', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', '', 'T', '0', 14, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815706120194, '1273515815370575873', 'error_msg', '错误消息', 'varchar(2000)', 'String', 'errorMsg', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', '', 'T', '0', 15, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815718703105, '1273515815370575873', 'oper_time', '操作时间', 'datetime', 'Date', 'operTime', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', '', 'T', '0', 16, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815731286017, '1273515815370575873', 'time', '操作时长', 'bigint(20)', 'Long', 'time', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 17, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815735480322, '1273515815370575873', 'comp_id', '公司ID', 'bigint(20)', 'Long', 'compId', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 18, '00214', '2020-06-18 15:20:06', '', NULL);
INSERT INTO `gen_table_column` VALUES (1273515815743868930, '1273515815370575873', 'dept_id', '机构ID', 'bigint(20)', 'Long', 'deptId', '0', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', '', 'T', '0', 19, '00214', '2020-06-18 15:20:06', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_cron_triggers` VALUES ('FastScheduler', 'JOB_NAME1239107312446103553', 'DEFAULT', '0 0/10 * * * ? *', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('FastScheduler', 'JOB_NAME1243581612249190401', 'DEFAULT', '0 0/5 * * * ? *', 'Asia/Shanghai');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_job_details` VALUES ('FastScheduler', 'JOB_NAME1239107312446103553', 'DEFAULT', NULL, 'com.j2eefast.framework.quartz.utils.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720031636F6D2E6A326565666173742E6672616D65776F726B2E71756172747A2E656E746974792E5379734A6F62456E74697479000000000000000102000A4C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000764656C466C616771007E00094C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C00086E657874446174657400104C6A6176612F7574696C2F446174653B4C000673746174757371007E00097872002F636F6D2E6A326565666173742E636F6D6D6F6E2E636F72652E626173652E656E746974792E42617365456E7469747900000000000000010200064C0008637265617465427971007E00094C000A63726561746554696D6571007E000B4C000672656D61726B71007E00094C000A73716C5F66696C74657271007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000B787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B5974190300007870770800000170DD5326787874001366617374506172616D73E69C89E58F82E695B07074000561646D696E7371007E000F77080000017260C2E58878740001317400103020302F3130202A202A202A203F202A740001307372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870113231891CF0600174001D6A6F625461736B546573742E66617374506172616D732827313233272974000744454641554C5474000CE6B58BE8AF95E4BBBBE58AA17400013370740001317800);
INSERT INTO `qrtz_job_details` VALUES ('FastScheduler', 'JOB_NAME1243581612249190401', 'DEFAULT', NULL, 'com.j2eefast.framework.quartz.utils.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720031636F6D2E6A326565666173742E6672616D65776F726B2E71756172747A2E656E746974792E5379734A6F62456E74697479000000000000000102000A4C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000764656C466C616771007E00094C000269647400104C6A6176612F6C616E672F4C6F6E673B4C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C00086E657874446174657400104C6A6176612F7574696C2F446174653B4C000673746174757371007E00097872002F636F6D2E6A326565666173742E636F6D6D6F6E2E636F72652E626173652E656E746974792E42617365456E7469747900000000000000010200064C0008637265617465427971007E00094C000A63726561746554696D6571007E000B4C000672656D61726B71007E00094C000A73716C5F66696C74657271007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000B787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001711CE892007874001BE585ACE5918AE9809AE79FA5E697B6E69588E680A7E68E92E69FA57074000561646D696E7371007E000F770800000172C7C5AF68787400013174000F3020302F35202A202A202A203F202A740001307372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B0200007870114216E3375210017400186A6F624E6F746963655461736B2E666173744E6F7469636574000744454641554C54740015E585ACE5918AE9809AE79FA5E697B6E69588E680A77400013370740001317800);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_locks` VALUES ('FastScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('FastScheduler', 'TRIGGER_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_scheduler_state` VALUES ('FastScheduler', '192.168.0.1001592575094201', 1592627865375, 15000);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
INSERT INTO `qrtz_triggers` VALUES ('FastScheduler', 'JOB_NAME1239107312446103553', 'DEFAULT', 'JOB_NAME1239107312446103553', 'DEFAULT', NULL, 1592575200000, -1, 5, 'PAUSED', 'CRON', 1592575098000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('FastScheduler', 'JOB_NAME1243581612249190401', 'DEFAULT', 'JOB_NAME1243581612249190401', 'DEFAULT', NULL, 1592575200000, -1, 5, 'PAUSED', 'CRON', 1592575098000, 0, NULL, 2, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '区域ID',
  `parent_id` int(11) unsigned NOT NULL COMMENT '上级区域ID',
  `level` tinyint(1) NOT NULL COMMENT '行政区域等级 1-省 2-市 3-区县 4-街道镇',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `whole_name` varchar(300) DEFAULT '' COMMENT '完整名称',
  `lon` varchar(20) DEFAULT '' COMMENT '本区域经度',
  `lat` varchar(20) DEFAULT '' COMMENT '本区域维度',
  `city_code` varchar(10) DEFAULT '' COMMENT '电话区号',
  `zip_code` char(6) DEFAULT '' COMMENT '邮政编码',
  `area_code` varchar(10) DEFAULT '' COMMENT '行政区划代码',
  `pin_yin` varchar(400) DEFAULT '' COMMENT '名称全拼',
  `simple_py` varchar(200) DEFAULT '' COMMENT '首字母简拼',
  `per_pin_yin` char(1) DEFAULT '' COMMENT '区域名称拼音的第一个字母',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_parent` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46204 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='行政区域';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
BEGIN;
INSERT INTO `sys_area` VALUES (1, 0, 1, '广东省', '广东省', '113.280637', '23.125178', '', '', '440000', 'GuangDongSheng', 'GDS', 'G');
INSERT INTO `sys_area` VALUES (2, 0, 1, '河南省', '河南省', '113.665412', '34.757975', '', '', '410000', 'HeNanSheng', 'HNS', 'H');
INSERT INTO `sys_area` VALUES (3, 0, 1, '内蒙古自治区', '内蒙古自治区', '111.670801', '40.818311', '', '', '150000', 'NeiMengGuZiZhiQu', 'NMGZZQ', 'N');
INSERT INTO `sys_area` VALUES (4, 0, 1, '黑龙江省', '黑龙江省', '126.642464', '45.756967', '', '', '230000', 'HeiLongJiangSheng', 'HLJS', 'H');
INSERT INTO `sys_area` VALUES (5, 0, 1, '新疆维吾尔自治区', '新疆维吾尔自治区', '87.617733', '43.792818', '', '', '650000', 'XinJiangWeiWuErZiZhiQu', 'XJWWEZZQ', 'X');
INSERT INTO `sys_area` VALUES (6, 0, 1, '湖北省', '湖北省', '114.298572', '30.584355', '', '', '420000', 'HuBeiSheng', 'HBS', 'H');
INSERT INTO `sys_area` VALUES (7, 0, 1, '辽宁省', '辽宁省', '123.429096', '41.796767', '', '', '210000', 'LiaoNingSheng', 'LNS', 'L');
INSERT INTO `sys_area` VALUES (8, 0, 1, '山东省', '山东省', '117.000923', '36.675807', '', '', '370000', 'ShanDongSheng', 'SDS', 'S');
INSERT INTO `sys_area` VALUES (9, 0, 1, '陕西省', '陕西省', '108.948024', '34.263161', '', '', '610000', 'ShanXiSheng', 'SXS', 'S');
INSERT INTO `sys_area` VALUES (10, 0, 1, '上海市', '上海市', '121.472644', '31.231706', '', '', '310000', 'ShangHaiShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (11, 0, 1, '贵州省', '贵州省', '106.713478', '26.578343', '', '', '520000', 'GuiZhouSheng', 'GZS', 'G');
INSERT INTO `sys_area` VALUES (12, 0, 1, '重庆市', '重庆市', '106.504962', '29.533155', '', '', '500000', 'ChongQingShi', 'CQS', 'C');
INSERT INTO `sys_area` VALUES (13, 0, 1, '西藏自治区', '西藏自治区', '91.132212', '29.660361', '', '', '540000', 'XiCangZiZhiQu', 'XCZZQ', 'X');
INSERT INTO `sys_area` VALUES (14, 0, 1, '安徽省', '安徽省', '117.283042', '31.86119', '', '', '340000', 'AnHuiSheng', 'AHS', 'A');
INSERT INTO `sys_area` VALUES (15, 0, 1, '福建省', '福建省', '119.306239', '26.075302', '', '', '350000', 'FuJianSheng', 'FJS', 'F');
INSERT INTO `sys_area` VALUES (16, 0, 1, '湖南省', '湖南省', '112.982279', '28.19409', '', '', '430000', 'HuNanSheng', 'HNS', 'H');
INSERT INTO `sys_area` VALUES (17, 0, 1, '海南省', '海南省', '110.33119', '20.031971', '', '', '460000', 'HaiNanSheng', 'HNS', 'H');
INSERT INTO `sys_area` VALUES (18, 0, 1, '江苏省', '江苏省', '118.767413', '32.041544', '', '', '320000', 'JiangSuSheng', 'JSS', 'J');
INSERT INTO `sys_area` VALUES (19, 0, 1, '青海省', '青海省', '101.778916', '36.623178', '', '', '630000', 'QingHaiSheng', 'QHS', 'Q');
INSERT INTO `sys_area` VALUES (20, 0, 1, '广西壮族自治区', '广西壮族自治区', '108.320004', '22.82402', '', '', '450000', 'GuangXiZhuangZuZiZhiQu', 'GXZZZZQ', 'G');
INSERT INTO `sys_area` VALUES (21, 0, 1, '宁夏回族自治区', '宁夏回族自治区', '106.278179', '38.46637', '', '', '640000', 'NingXiaHuiZuZiZhiQu', 'NXHZZZQ', 'N');
INSERT INTO `sys_area` VALUES (22, 0, 1, '江西省', '江西省', '115.892151', '28.676493', '', '', '360000', 'JiangXiSheng', 'JXS', 'J');
INSERT INTO `sys_area` VALUES (23, 0, 1, '浙江省', '浙江省', '120.153576', '30.287459', '', '', '330000', 'ZheJiangSheng', 'ZJS', 'Z');
INSERT INTO `sys_area` VALUES (24, 0, 1, '河北省', '河北省', '114.502461', '38.045474', '', '', '130000', 'HeBeiSheng', 'HBS', 'H');
INSERT INTO `sys_area` VALUES (25, 0, 1, '香港特别行政区', '香港特别行政区', '114.173355', '22.320048', '', '', '810000', 'XiangGangTeBieXingZhengQu', 'XGTBXZQ', 'X');
INSERT INTO `sys_area` VALUES (26, 0, 1, '山西省', '山西省', '112.549248', '37.857014', '', '', '140000', 'ShanXiSheng', 'SXS', 'S');
INSERT INTO `sys_area` VALUES (27, 0, 1, '台湾省', '台湾省', '121.509062', '25.044332', '', '', '710000', 'TaiWanSheng', 'TWS', 'T');
INSERT INTO `sys_area` VALUES (28, 0, 1, '澳门特别行政区', '澳门特别行政区', '113.54909', '22.198951', '', '', '820000', 'AoMenTeBieXingZhengQu', 'AMTBXZQ', 'A');
INSERT INTO `sys_area` VALUES (29, 0, 1, '甘肃省', '甘肃省', '103.823557', '36.058039', '', '', '620000', 'GanSuSheng', 'GSS', 'G');
INSERT INTO `sys_area` VALUES (30, 0, 1, '四川省', '四川省', '104.065735', '30.659462', '', '', '510000', 'SiChuanSheng', 'SCS', 'S');
INSERT INTO `sys_area` VALUES (31, 0, 1, '云南省', '云南省', '102.712251', '25.040609', '', '', '530000', 'YunNanSheng', 'YNS', 'Y');
INSERT INTO `sys_area` VALUES (32, 0, 1, '北京市', '北京市', '116.405285', '39.904989', '', '', '110000', 'BeiJingShi', 'BJS', 'B');
INSERT INTO `sys_area` VALUES (33, 0, 1, '天津市', '天津市', '117.190182', '39.125596', '', '', '120000', 'TianJinShi', 'TJS', 'T');
INSERT INTO `sys_area` VALUES (34, 0, 1, '吉林省', '吉林省', '125.3245', '43.886841', '', '', '220000', 'JiLinSheng', 'JLS', 'J');
INSERT INTO `sys_area` VALUES (35, 1, 2, '汕头市', '广东省，汕头市', '116.708463', '23.37102', '0754', '515041', '440500', 'ShanTouShi', 'STS', 'S');
INSERT INTO `sys_area` VALUES (36, 1, 2, '佛山市', '广东省，佛山市', '113.122717', '23.028762', '0757', '528000', '440600', 'FoShanShi', 'FSS', 'F');
INSERT INTO `sys_area` VALUES (37, 1, 2, '珠海市', '广东省，珠海市', '113.553986', '22.224979', '0756', '519000', '440400', 'ZhuHaiShi', 'ZHS', 'Z');
INSERT INTO `sys_area` VALUES (38, 1, 2, '江门市', '广东省，江门市', '113.094942', '22.590431', '0750', '529000', '440700', 'JiangMenShi', 'JMS', 'J');
INSERT INTO `sys_area` VALUES (39, 1, 2, '湛江市', '广东省，湛江市', '110.364977', '21.274898', '0759', '524047', '440800', 'ZhanJiangShi', 'ZJS', 'Z');
INSERT INTO `sys_area` VALUES (40, 1, 2, '惠州市', '广东省，惠州市', '114.412599', '23.079404', '0752', '516000', '441300', 'HuiZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (41, 1, 2, '肇庆市', '广东省，肇庆市', '112.472529', '23.051546', '0758', '526040', '441200', 'ZhaoQingShi', 'ZQS', 'Z');
INSERT INTO `sys_area` VALUES (42, 1, 2, '汕尾市', '广东省，汕尾市', '115.364238', '22.774485', '0660', '516600', '441500', 'ShanWeiShi', 'SWS', 'S');
INSERT INTO `sys_area` VALUES (43, 1, 2, '茂名市', '广东省，茂名市', '110.919229', '21.659751', '0668', '525000', '440900', 'MaoMingShi', 'MMS', 'M');
INSERT INTO `sys_area` VALUES (44, 1, 2, '深圳市', '广东省，深圳市', '114.085947', '22.547', '0755', '518035', '440300', 'ShenZhenShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (45, 1, 2, '阳江市', '广东省，阳江市', '111.975107', '21.859222', '0662', '529500', '441700', 'YangJiangShi', 'YJS', 'Y');
INSERT INTO `sys_area` VALUES (46, 1, 2, '潮州市', '广东省，潮州市', '116.632301', '23.661701', '0768', '521000', '445100', 'ChaoZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (47, 1, 2, '韶关市', '广东省，韶关市', '113.591544', '24.801322', '0751', '512002', '440200', 'ShaoGuanShi', 'SGS', 'S');
INSERT INTO `sys_area` VALUES (48, 1, 2, '梅州市', '广东省，梅州市', '116.117582', '24.299112', '0753', '514021', '441400', 'MeiZhouShi', 'MZS', 'M');
INSERT INTO `sys_area` VALUES (49, 1, 2, '河源市', '广东省，河源市', '114.697802', '23.746266', '0762', '517000', '441600', 'HeYuanShi', 'HYS', 'H');
INSERT INTO `sys_area` VALUES (50, 1, 2, '清远市', '广东省，清远市', '113.051227', '23.685022', '0763', '511500', '441800', 'QingYuanShi', 'QYS', 'Q');
INSERT INTO `sys_area` VALUES (51, 1, 2, '东莞市', '广东省，东莞市', '113.746262', '23.046237', '0769', '523888', '441900', 'DongGuanShi', 'DGS', 'D');
INSERT INTO `sys_area` VALUES (52, 1, 2, '云浮市', '广东省，云浮市', '112.044439', '22.929801', '0766', '527300', '445300', 'YunFuShi', 'YFS', 'Y');
INSERT INTO `sys_area` VALUES (53, 1, 2, '揭阳市', '广东省，揭阳市', '116.355733', '23.543778', '0663', '522000', '445200', 'JieYangShi', 'JYS', 'J');
INSERT INTO `sys_area` VALUES (54, 1, 2, '广州市', '广东省，广州市', '113.280637', '23.125178', '020', '510032', '440100', 'GuangZhouShi', 'GZS', 'G');
INSERT INTO `sys_area` VALUES (55, 1, 2, '中山市', '广东省，中山市', '113.382391', '22.521113', '0760', '528403', '442000', 'ZhongShanShi', 'ZSS', 'Z');
INSERT INTO `sys_area` VALUES (56, 1, 2, '东沙群岛', '广东省，东沙群岛', '116.887312', '20.617512', '', '', '442100', 'DongShaQunDao', 'DSQD', 'D');
INSERT INTO `sys_area` VALUES (57, 35, 3, '南澳县', '广东省，汕头市，南澳县', '117.027105', '23.419562', '0754', '515900', '440523', 'NanAoXian', 'NAX', 'N');
INSERT INTO `sys_area` VALUES (58, 35, 3, '澄海区', '广东省，汕头市，澄海区', '116.76336', '23.46844', '0754', '515800', '440515', 'ChengHaiQu', 'CHQ', 'C');
INSERT INTO `sys_area` VALUES (59, 35, 3, '濠江区', '广东省，汕头市，濠江区', '116.729528', '23.279345', '0754', '515071', '440512', 'HaoJiangQu', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (60, 35, 3, '潮阳区', '广东省，汕头市，潮阳区', '116.602602', '23.262336', '0754', '515100', '440513', 'ChaoYangQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (61, 35, 3, '潮南区', '广东省，汕头市，潮南区', '116.423607', '23.249798', '0754', '515144', '440514', 'ChaoNanQu', 'CNQ', 'C');
INSERT INTO `sys_area` VALUES (62, 35, 3, '龙湖区', '广东省，汕头市，龙湖区', '116.732015', '23.373754', '0754', '515041', '440507', 'LongHuQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (63, 35, 3, '金平区', '广东省，汕头市，金平区', '116.703583', '23.367071', '0754', '515041', '440511', 'JinPingQu', 'JPQ', 'J');
INSERT INTO `sys_area` VALUES (133, 36, 3, '三水区', '广东省，佛山市，三水区', '112.899414', '23.16504', '0757', '528133', '440607', 'SanShuiQu', 'SSQ', 'S');
INSERT INTO `sys_area` VALUES (134, 36, 3, '高明区', '广东省，佛山市，高明区', '112.882123', '22.893855', '0757', '528500', '440608', 'GaoMingQu', 'GMQ', 'G');
INSERT INTO `sys_area` VALUES (135, 36, 3, '顺德区', '广东省，佛山市，顺德区', '113.281826', '22.75851', '0757', '528300', '440606', 'ShunDeQu', 'SDQ', 'S');
INSERT INTO `sys_area` VALUES (136, 36, 3, '禅城区', '广东省，佛山市，禅城区', '113.112414', '23.019643', '0757', '528000', '440604', 'ChanChengQu', 'CCQ', 'C');
INSERT INTO `sys_area` VALUES (137, 36, 3, '南海区', '广东省，佛山市，南海区', '113.145577', '23.031562', '0757', '528251', '440605', 'NanHaiQu', 'NHQ', 'N');
INSERT INTO `sys_area` VALUES (179, 37, 3, '香洲区', '广东省，珠海市，香洲区', '113.55027', '22.271249', '0756', '519000', '440402', 'XiangZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (180, 37, 3, '斗门区', '广东省，珠海市，斗门区', '113.297739', '22.209117', '0756', '519110', '440403', 'DouMenQu', 'DMQ', 'D');
INSERT INTO `sys_area` VALUES (181, 37, 3, '金湾区', '广东省，珠海市，金湾区', '113.345071', '22.139122', '0756', '519040', '440404', 'JinWanQu', 'JWQ', 'J');
INSERT INTO `sys_area` VALUES (182, 37, 3, '澳门大学横琴校区(由澳门管辖)', '广东省，珠海市，澳门大学横琴校区(由澳门管辖)', '', '', '', '', '440499', 'AoMenDaXueHengQinXiaoQu(YouAoMenGuanXia)', 'AMDXHQXQ(YAMGX)', 'A');
INSERT INTO `sys_area` VALUES (215, 38, 3, '鹤山市', '广东省，江门市，鹤山市', '112.961795', '22.768104', '0750', '529700', '440784', 'HeShanShi', 'HSS', 'H');
INSERT INTO `sys_area` VALUES (216, 38, 3, '江海区', '广东省，江门市，江海区', '113.120601', '22.572211', '0750', '529040', '440704', 'JiangHaiQu', 'JHQ', 'J');
INSERT INTO `sys_area` VALUES (217, 38, 3, '开平市', '广东省，江门市，开平市', '112.692262', '22.366286', '0750', '529337', '440783', 'KaiPingShi', 'KPS', 'K');
INSERT INTO `sys_area` VALUES (218, 38, 3, '台山市', '广东省，江门市，台山市', '112.793414', '22.250713', '0750', '529200', '440781', 'TaiShanShi', 'TSS', 'T');
INSERT INTO `sys_area` VALUES (219, 38, 3, '恩平市', '广东省，江门市，恩平市', '112.314051', '22.182956', '0750', '529400', '440785', 'EnPingShi', 'EPS', 'E');
INSERT INTO `sys_area` VALUES (220, 38, 3, '新会区', '广东省，江门市，新会区', '113.038584', '22.520247', '0750', '529100', '440705', 'XinHuiQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (221, 38, 3, '蓬江区', '广东省，江门市，蓬江区', '113.07859', '22.59677', '0750', '529000', '440703', 'PengJiangQu', 'PJQ', 'P');
INSERT INTO `sys_area` VALUES (302, 39, 3, '吴川市', '广东省，湛江市，吴川市', '110.780508', '21.428453', '0759', '524500', '440883', 'WuChuanShi', 'WCS', 'W');
INSERT INTO `sys_area` VALUES (303, 39, 3, '廉江市', '广东省，湛江市，廉江市', '110.284961', '21.611281', '0759', '524400', '440881', 'LianJiangShi', 'LJS', 'L');
INSERT INTO `sys_area` VALUES (304, 39, 3, '雷州市', '广东省，湛江市，雷州市', '110.088275', '20.908523', '0759', '524200', '440882', 'LeiZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (305, 39, 3, '徐闻县', '广东省，湛江市，徐闻县', '110.175718', '20.326083', '0759', '524100', '440825', 'XuWenXian', 'XWX', 'X');
INSERT INTO `sys_area` VALUES (306, 39, 3, '霞山区', '广东省，湛江市，霞山区', '110.406382', '21.194229', '0759', '524011', '440803', 'XiaShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (307, 39, 3, '麻章区', '广东省，湛江市，麻章区', '110.329167', '21.265997', '0759', '524094', '440811', 'MaZhangQu', 'MZQ', 'M');
INSERT INTO `sys_area` VALUES (308, 39, 3, '坡头区', '广东省，湛江市，坡头区', '110.455632', '21.24441', '0759', '524057', '440804', 'PoTouQu', 'PTQ', 'P');
INSERT INTO `sys_area` VALUES (309, 39, 3, '赤坎区', '广东省，湛江市，赤坎区', '110.361634', '21.273365', '0759', '524033', '440802', 'ChiKanQu', 'CKQ', 'C');
INSERT INTO `sys_area` VALUES (310, 39, 3, '遂溪县', '广东省，湛江市，遂溪县', '110.255321', '21.376915', '0759', '524300', '440823', 'SuiXiXian', 'SXX', 'S');
INSERT INTO `sys_area` VALUES (448, 40, 3, '龙门县', '广东省，惠州市，龙门县', '114.259986', '23.723894', '0752', '516800', '441324', 'LongMenXian', 'LMX', 'L');
INSERT INTO `sys_area` VALUES (449, 40, 3, '博罗县', '广东省，惠州市，博罗县', '114.284254', '23.167575', '0752', '516100', '441322', 'BoLuoXian', 'BLX', 'B');
INSERT INTO `sys_area` VALUES (450, 40, 3, '惠东县', '广东省，惠州市，惠东县', '114.723092', '22.983036', '0752', '516300', '441323', 'HuiDongXian', 'HDX', 'H');
INSERT INTO `sys_area` VALUES (451, 40, 3, '惠阳区', '广东省，惠州市，惠阳区', '114.469444', '22.78851', '0752', '516211', '441303', 'HuiYangQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (452, 40, 3, '惠城区', '广东省，惠州市，惠城区', '114.413978', '23.079883', '0752', '516008', '441302', 'HuiChengQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (535, 41, 3, '怀集县', '广东省，肇庆市，怀集县', '112.182466', '23.913072', '0758', '526400', '441224', 'HuaiJiXian', 'HJX', 'H');
INSERT INTO `sys_area` VALUES (536, 41, 3, '封开县', '广东省，肇庆市，封开县', '111.502973', '23.434731', '0758', '526500', '441225', 'FengKaiXian', 'FKX', 'F');
INSERT INTO `sys_area` VALUES (537, 41, 3, '广宁县', '广东省，肇庆市，广宁县', '112.440419', '23.631486', '0758', '526300', '441223', 'GuangNingXian', 'GNX', 'G');
INSERT INTO `sys_area` VALUES (538, 41, 3, '四会市', '广东省，肇庆市，四会市', '112.695028', '23.340324', '0758', '526200', '441284', 'SiHuiShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (539, 41, 3, '德庆县', '广东省，肇庆市，德庆县', '111.78156', '23.141711', '0758', '526600', '441226', 'DeQingXian', 'DQX', 'D');
INSERT INTO `sys_area` VALUES (540, 41, 3, '鼎湖区', '广东省，肇庆市，鼎湖区', '112.565249', '23.155822', '0758', '526070', '441203', 'DingHuQu', 'DHQ', 'D');
INSERT INTO `sys_area` VALUES (541, 41, 3, '端州区', '广东省，肇庆市，端州区', '112.472329', '23.052662', '0758', '526060', '441202', 'DuanZhouQu', 'DZQ', 'D');
INSERT INTO `sys_area` VALUES (542, 41, 3, '高要区', '广东省，肇庆市，高要区', '112.460846', '23.027694', '0758', '526100', '441204', 'GaoYaoQu', 'GYQ', 'G');
INSERT INTO `sys_area` VALUES (650, 42, 3, '陆河县', '广东省，汕尾市，陆河县', '115.657565', '23.302682', '0660', '516700', '441523', 'LuHeXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (651, 42, 3, '陆丰市', '广东省，汕尾市，陆丰市', '115.644203', '22.946104', '0660', '516500', '441581', 'LuFengShi', 'LFS', 'L');
INSERT INTO `sys_area` VALUES (652, 42, 3, '海丰县', '广东省，汕尾市，海丰县', '115.337324', '22.971042', '0660', '516400', '441521', 'HaiFengXian', 'HFX', 'H');
INSERT INTO `sys_area` VALUES (653, 42, 3, '城区', '广东省，汕尾市，城区', '115.363667', '22.776227', '0660', '516600', '441502', 'ChengQu', 'CQ', 'C');
INSERT INTO `sys_area` VALUES (718, 43, 3, '信宜市', '广东省，茂名市，信宜市', '110.941656', '22.352681', '0668', '525300', '440983', 'XinYiShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (719, 43, 3, '化州市', '广东省，茂名市，化州市', '110.63839', '21.654953', '0668', '525100', '440982', 'HuaZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (720, 43, 3, '高州市', '广东省，茂名市，高州市', '110.853251', '21.915153', '0668', '525200', '440981', 'GaoZhouShi', 'GZS', 'G');
INSERT INTO `sys_area` VALUES (721, 43, 3, '电白区', '广东省，茂名市，电白区', '111.007264', '21.507219', '0668', '525400', '440904', 'DianBaiQu', 'DBQ', 'D');
INSERT INTO `sys_area` VALUES (722, 43, 3, '茂南区', '广东省，茂名市，茂南区', '110.920542', '21.660425', '0668', '525000', '440902', 'MaoNanQu', 'MNQ', 'M');
INSERT INTO `sys_area` VALUES (848, 44, 3, '宝安区', '广东省，深圳市，宝安区', '113.828671', '22.754741', '0755', '518101', '440306', 'BaoAnQu', 'BAQ', 'B');
INSERT INTO `sys_area` VALUES (849, 44, 3, '南山区', '广东省，深圳市，南山区', '113.92943', '22.531221', '0755', '518051', '440305', 'NanShanQu', 'NSQ', 'N');
INSERT INTO `sys_area` VALUES (850, 44, 3, '福田区', '广东省，深圳市，福田区', '114.05096', '22.541009', '0755', '518048', '440304', 'FuTianQu', 'FTQ', 'F');
INSERT INTO `sys_area` VALUES (851, 44, 3, '盐田区', '广东省，深圳市，盐田区', '114.235366', '22.555069', '0755', '518081', '440308', 'YanTianQu', 'YTQ', 'Y');
INSERT INTO `sys_area` VALUES (852, 44, 3, '罗湖区', '广东省，深圳市，罗湖区', '114.123885', '22.555341', '0755', '518021', '440303', 'LuoHuQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (853, 44, 3, '龙华区', '广东省，深圳市，龙华区', '114.044346', '22.691963', '0755', '', '440309', 'LongHuaQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (854, 44, 3, '龙岗区', '广东省，深圳市，龙岗区', '114.251372', '22.721511', '0755', '518172', '440307', 'LongGangQu', 'LGQ', 'L');
INSERT INTO `sys_area` VALUES (855, 44, 3, '坪山区', '广东省，深圳市，坪山区', '114.338441', '22.69423', '0755', '', '440310', 'PingShanQu', 'PSQ', 'P');
INSERT INTO `sys_area` VALUES (917, 45, 3, '阳春市', '广东省，阳江市，阳春市', '111.7905', '22.169598', '0662', '529600', '441781', 'YangChunShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (918, 45, 3, '江城区', '广东省，阳江市，江城区', '111.968909', '21.859182', '0662', '529500', '441702', 'JiangChengQu', 'JCQ', 'J');
INSERT INTO `sys_area` VALUES (919, 45, 3, '阳西县', '广东省，阳江市，阳西县', '111.617556', '21.75367', '0662', '529800', '441721', 'YangXiXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (920, 45, 3, '阳东区', '广东省，阳江市，阳东区', '112.011267', '21.864728', '0662', '529900', '441704', 'YangDongQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (992, 46, 3, '饶平县', '广东省，潮州市，饶平县', '117.00205', '23.668171', '0768', '515700', '445122', 'RaoPingXian', 'RPX', 'R');
INSERT INTO `sys_area` VALUES (993, 46, 3, '湘桥区', '广东省，潮州市，湘桥区', '116.63365', '23.664675', '0768', '521021', '445102', 'XiangQiaoQu', 'XQQ', 'X');
INSERT INTO `sys_area` VALUES (994, 46, 3, '潮安区', '广东省，潮州市，潮安区', '116.67931', '23.461012', '0768', '515638', '445103', 'ChaoAnQu', 'CAQ', 'C');
INSERT INTO `sys_area` VALUES (1052, 47, 3, '仁化县', '广东省，韶关市，仁化县', '113.748627', '25.088226', '0751', '512300', '440224', 'RenHuaXian', 'RHX', 'R');
INSERT INTO `sys_area` VALUES (1053, 47, 3, '南雄市', '广东省，韶关市，南雄市', '114.311231', '25.115328', '0751', '512400', '440282', 'NanXiongShi', 'NXS', 'N');
INSERT INTO `sys_area` VALUES (1054, 47, 3, '曲江区', '广东省，韶关市，曲江区', '113.605582', '24.680195', '0751', '512101', '440205', 'QuJiangQu', 'QJQ', 'Q');
INSERT INTO `sys_area` VALUES (1055, 47, 3, '浈江区', '广东省，韶关市，浈江区', '113.599224', '24.803977', '0751', '512023', '440204', 'ZhenJiangQu', 'ZJQ', 'Z');
INSERT INTO `sys_area` VALUES (1056, 47, 3, '始兴县', '广东省，韶关市，始兴县', '114.067205', '24.948364', '0751', '512500', '440222', 'ShiXingXian', 'SXX', 'S');
INSERT INTO `sys_area` VALUES (1057, 47, 3, '乳源瑶族自治县', '广东省，韶关市，乳源瑶族自治县', '113.278417', '24.776109', '0751', '512700', '440232', 'RuYuanYaoZuZiZhiXian', 'RYYZZZX', 'R');
INSERT INTO `sys_area` VALUES (1058, 47, 3, '武江区', '广东省，韶关市，武江区', '113.588289', '24.80016', '0751', '512026', '440203', 'WuJiangQu', 'WJQ', 'W');
INSERT INTO `sys_area` VALUES (1059, 47, 3, '翁源县', '广东省，韶关市，翁源县', '114.131289', '24.353887', '0751', '512600', '440229', 'WengYuanXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (1060, 47, 3, '新丰县', '广东省，韶关市，新丰县', '114.207034', '24.055412', '0751', '511100', '440233', 'XinFengXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (1061, 47, 3, '乐昌市', '广东省，韶关市，乐昌市', '113.352413', '25.128445', '0751', '512200', '440281', 'LeChangShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (1178, 48, 3, '平远县', '广东省，梅州市，平远县', '115.891729', '24.569651', '0753', '514600', '441426', 'PingYuanXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (1179, 48, 3, '蕉岭县', '广东省，梅州市，蕉岭县', '116.170531', '24.653313', '0753', '514100', '441427', 'JiaoLingXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (1180, 48, 3, '兴宁市', '广东省，梅州市，兴宁市', '115.731648', '24.138077', '0753', '514500', '441481', 'XingNingShi', 'XNS', 'X');
INSERT INTO `sys_area` VALUES (1181, 48, 3, '五华县', '广东省，梅州市，五华县', '115.775004', '23.925424', '0753', '514400', '441424', 'WuHuaXian', 'WHX', 'W');
INSERT INTO `sys_area` VALUES (1182, 48, 3, '梅县区', '广东省，梅州市，梅县区', '116.083482', '24.267825', '0753', '514787', '441403', 'MeiXianQu', 'MXQ', 'M');
INSERT INTO `sys_area` VALUES (1183, 48, 3, '丰顺县', '广东省，梅州市，丰顺县', '116.184419', '23.752771', '0753', '514300', '441423', 'FengShunXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (1184, 48, 3, '大埔县', '广东省，梅州市，大埔县', '116.69552', '24.351587', '0753', '514200', '441422', 'DaBuXian', 'DBX', 'D');
INSERT INTO `sys_area` VALUES (1185, 48, 3, '梅江区', '广东省，梅州市，梅江区', '116.12116', '24.302593', '0753', '514000', '441402', 'MeiJiangQu', 'MJQ', 'M');
INSERT INTO `sys_area` VALUES (1304, 49, 3, '龙川县', '广东省，河源市，龙川县', '115.256415', '24.101174', '0762', '517300', '441622', 'LongChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (1305, 49, 3, '和平县', '广东省，河源市，和平县', '114.941473', '24.44318', '0762', '517200', '441624', 'HePingXian', 'HPX', 'H');
INSERT INTO `sys_area` VALUES (1306, 49, 3, '连平县', '广东省，河源市，连平县', '114.495952', '24.364227', '0762', '517100', '441623', 'LianPingXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (1307, 49, 3, '东源县', '广东省，河源市，东源县', '114.742711', '23.789093', '0762', '517583', '441625', 'DongYuanXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (1308, 49, 3, '源城区', '广东省，河源市，源城区', '114.696828', '23.746255', '0762', '517000', '441602', 'YuanChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (1309, 49, 3, '紫金县', '广东省，河源市，紫金县', '115.184383', '23.633744', '0762', '517400', '441621', 'ZiJinXian', 'ZJX', 'Z');
INSERT INTO `sys_area` VALUES (1410, 50, 3, '连南瑶族自治县', '广东省，清远市，连南瑶族自治县', '112.290808', '24.719097', '0763', '513300', '441826', 'LianNanYaoZuZiZhiXian', 'LNYZZZX', 'L');
INSERT INTO `sys_area` VALUES (1411, 50, 3, '连州市', '广东省，清远市，连州市', '112.379271', '24.783966', '0763', '513400', '441882', 'LianZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (1412, 50, 3, '连山壮族瑶族自治县', '广东省，清远市，连山壮族瑶族自治县', '112.086555', '24.567271', '0763', '513200', '441825', 'LianShanZhuangZuYaoZuZiZhiXian', 'LSZZYZZZX', 'L');
INSERT INTO `sys_area` VALUES (1413, 50, 3, '英德市', '广东省，清远市，英德市', '113.405404', '24.18612', '0763', '513000', '441881', 'YingDeShi', 'YDS', 'Y');
INSERT INTO `sys_area` VALUES (1414, 50, 3, '佛冈县', '广东省，清远市，佛冈县', '113.534094', '23.866739', '0763', '511600', '441821', 'FoGangXian', 'FGX', 'F');
INSERT INTO `sys_area` VALUES (1415, 50, 3, '阳山县', '广东省，清远市，阳山县', '112.634019', '24.470286', '0763', '513100', '441823', 'YangShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (1416, 50, 3, '清新区', '广东省，清远市，清新区', '113.015203', '23.736949', '0763', '511810', '441803', 'QingXinQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (1417, 50, 3, '清城区', '广东省，清远市，清城区', '113.048698', '23.688976', '0763', '511515', '441802', 'QingChengQu', 'QCQ', 'Q');
INSERT INTO `sys_area` VALUES (1543, 52, 3, '罗定市', '广东省，云浮市，罗定市', '111.578201', '22.765415', '0766', '527200', '445381', 'LuoDingShi', 'LDS', 'L');
INSERT INTO `sys_area` VALUES (1544, 52, 3, '郁南县', '广东省，云浮市，郁南县', '111.535921', '23.237709', '0766', '527100', '445322', 'YuNanXian', 'YNX', 'Y');
INSERT INTO `sys_area` VALUES (1545, 52, 3, '新兴县', '广东省，云浮市，新兴县', '112.23083', '22.703204', '0766', '527400', '445321', 'XinXingXian', 'XXX', 'X');
INSERT INTO `sys_area` VALUES (1546, 52, 3, '云安区', '广东省，云浮市，云安区', '112.005609', '23.073152', '0766', '527500', '445303', 'YunAnQu', 'YAQ', 'Y');
INSERT INTO `sys_area` VALUES (1547, 52, 3, '云城区', '广东省，云浮市，云城区', '112.04471', '22.930827', '0766', '527300', '445302', 'YunChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (1620, 53, 3, '揭西县', '广东省，揭阳市，揭西县', '115.838708', '23.4273', '0663', '515400', '445222', 'JieXiXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (1621, 53, 3, '普宁市', '广东省，揭阳市，普宁市', '116.165082', '23.29788', '0663', '515300', '445281', 'PuNingShi', 'PNS', 'P');
INSERT INTO `sys_area` VALUES (1622, 53, 3, '惠来县', '广东省，揭阳市，惠来县', '116.295832', '23.029834', '0663', '515200', '445224', 'HuiLaiXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (1623, 53, 3, '揭东区', '广东省，揭阳市，揭东区', '116.412947', '23.569887', '0663', '515500', '445203', 'JieDongQu', 'JDQ', 'J');
INSERT INTO `sys_area` VALUES (1624, 53, 3, '榕城区', '广东省，揭阳市，榕城区', '116.357045', '23.535524', '0663', '522000', '445202', 'RongChengQu', 'RCQ', 'R');
INSERT INTO `sys_area` VALUES (1734, 54, 3, '从化区', '广东省，广州市，从化区', '113.587386', '23.545283', '020', '510900', '440117', 'CongHuaQu', 'CHQ', 'C');
INSERT INTO `sys_area` VALUES (1735, 54, 3, '增城区', '广东省，广州市，增城区', '113.829579', '23.290497', '020', '511300', '440118', 'ZengChengQu', 'ZCQ', 'Z');
INSERT INTO `sys_area` VALUES (1736, 54, 3, '南沙区', '广东省，广州市，南沙区', '113.53738', '22.794531', '020', '511458', '440115', 'NanShaQu', 'NSQ', 'N');
INSERT INTO `sys_area` VALUES (1737, 54, 3, '花都区', '广东省，广州市，花都区', '113.211184', '23.39205', '020', '510800', '440114', 'HuaDouQu', 'HDQ', 'H');
INSERT INTO `sys_area` VALUES (1738, 54, 3, '黄埔区', '广东省，广州市，黄埔区', '113.450761', '23.103239', '020', '510700', '440112', 'HuangPuQu', 'HPQ', 'H');
INSERT INTO `sys_area` VALUES (1739, 54, 3, '白云区', '广东省，广州市，白云区', '113.262831', '23.162281', '020', '510405', '440111', 'BaiYunQu', 'BYQ', 'B');
INSERT INTO `sys_area` VALUES (1740, 54, 3, '天河区', '广东省，广州市，天河区', '113.335367', '23.13559', '020', '510665', '440106', 'TianHeQu', 'THQ', 'T');
INSERT INTO `sys_area` VALUES (1741, 54, 3, '海珠区', '广东省，广州市，海珠区', '113.262008', '23.103131', '020', '510300', '440105', 'HaiZhuQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (1742, 54, 3, '荔湾区', '广东省，广州市，荔湾区', '113.243038', '23.124943', '020', '510170', '440103', 'LiWanQu', 'LWQ', 'L');
INSERT INTO `sys_area` VALUES (1743, 54, 3, '越秀区', '广东省，广州市，越秀区', '113.280714', '23.125624', '020', '510030', '440104', 'YueXiuQu', 'YXQ', 'Y');
INSERT INTO `sys_area` VALUES (1744, 54, 3, '番禺区', '广东省，广州市，番禺区', '113.364619', '22.938582', '020', '511400', '440113', 'FanYuQu', 'FYQ', 'F');
INSERT INTO `sys_area` VALUES (1941, 2, 2, '濮阳市', '河南省，濮阳市', '115.041299', '35.768234', '0393', '457000', '410900', 'PuYangShi', 'PYS', 'P');
INSERT INTO `sys_area` VALUES (1942, 2, 2, '洛阳市', '河南省，洛阳市', '112.434468', '34.663041', '0379', '471000', '410300', 'LuoYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (1943, 2, 2, '三门峡市', '河南省，三门峡市', '111.194099', '34.777338', '0398', '472000', '411200', 'SanMenXiaShi', 'SMXS', 'S');
INSERT INTO `sys_area` VALUES (1944, 2, 2, '郑州市', '河南省，郑州市', '113.665412', '34.757975', '0371', '450000', '410100', 'ZhengZhouShi', 'ZZS', 'Z');
INSERT INTO `sys_area` VALUES (1945, 2, 2, '许昌市', '河南省，许昌市', '113.826063', '34.022956', '0374', '461000', '411000', 'XuChangShi', 'XCS', 'X');
INSERT INTO `sys_area` VALUES (1946, 2, 2, '南阳市', '河南省，南阳市', '112.540918', '32.999082', '0377', '473002', '411300', 'NanYangShi', 'NYS', 'N');
INSERT INTO `sys_area` VALUES (1947, 2, 2, '漯河市', '河南省，漯河市', '114.026405', '33.575855', '0395', '462000', '411100', 'LuoHeShi', 'LHS', 'L');
INSERT INTO `sys_area` VALUES (1948, 2, 2, '济源市', '河南省，济源市', '112.590047', '35.090378', '0391', '454650', '419001', 'JiYuanShi', 'JYS', 'J');
INSERT INTO `sys_area` VALUES (1949, 2, 2, '平顶山市', '河南省，平顶山市', '113.307718', '33.735241', '0375', '467000', '410400', 'PingDingShanShi', 'PDSS', 'P');
INSERT INTO `sys_area` VALUES (1950, 2, 2, '信阳市', '河南省，信阳市', '114.075031', '32.123274', '0376', '464000', '411500', 'XinYangShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (1951, 2, 2, '焦作市', '河南省，焦作市', '113.238266', '35.23904', '0391', '454002', '410800', 'JiaoZuoShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (1952, 2, 2, '安阳市', '河南省，安阳市', '114.352482', '36.103442', '0372', '455000', '410500', 'AnYangShi', 'AYS', 'A');
INSERT INTO `sys_area` VALUES (1953, 2, 2, '驻马店市', '河南省，驻马店市', '114.024736', '32.980169', '0396', '463000', '411700', 'ZhuMaDianShi', 'ZMDS', 'Z');
INSERT INTO `sys_area` VALUES (1954, 2, 2, '商丘市', '河南省，商丘市', '115.650497', '34.437054', '0370', '476000', '411400', 'ShangQiuShi', 'SQS', 'S');
INSERT INTO `sys_area` VALUES (1955, 2, 2, '新乡市', '河南省，新乡市', '113.883991', '35.302616', '0373', '453000', '410700', 'XinXiangShi', 'XXS', 'X');
INSERT INTO `sys_area` VALUES (1956, 2, 2, '鹤壁市', '河南省，鹤壁市', '114.295444', '35.748236', '0392', '458030', '410600', 'HeBiShi', 'HBS', 'H');
INSERT INTO `sys_area` VALUES (1957, 2, 2, '周口市', '河南省，周口市', '114.649653', '33.620357', '0394', '466000', '411600', 'ZhouKouShi', 'ZKS', 'Z');
INSERT INTO `sys_area` VALUES (1958, 2, 2, '开封市', '河南省，开封市', '114.341447', '34.797049', '0371', '475001', '410200', 'KaiFengShi', 'KFS', 'K');
INSERT INTO `sys_area` VALUES (1959, 1941, 3, '清丰县', '河南省，濮阳市，清丰县', '115.107287', '35.902413', '0393', '457300', '410922', 'QingFengXian', 'QFX', 'Q');
INSERT INTO `sys_area` VALUES (1960, 1941, 3, '南乐县', '河南省，濮阳市，南乐县', '115.204336', '36.075204', '0393', '457400', '410923', 'NanLeXian', 'NLX', 'N');
INSERT INTO `sys_area` VALUES (1961, 1941, 3, '台前县', '河南省，濮阳市，台前县', '115.855681', '35.996474', '0393', '457600', '410927', 'TaiQianXian', 'TQX', 'T');
INSERT INTO `sys_area` VALUES (1962, 1941, 3, '华龙区', '河南省，濮阳市，华龙区', '115.03184', '35.760473', '0393', '457001', '410902', 'HuaLongQu', 'HLQ', 'H');
INSERT INTO `sys_area` VALUES (1963, 1941, 3, '范县', '河南省，濮阳市，范县', '115.504212', '35.851977', '0393', '457500', '410926', 'FanXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (1964, 1941, 3, '濮阳县', '河南省，濮阳市，濮阳县', '115.023844', '35.710349', '0393', '457100', '410928', 'PuYangXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (2054, 1942, 3, '新安县', '河南省，洛阳市，新安县', '112.141403', '34.728679', '0379', '471800', '410323', 'XinAnXian', 'XAX', 'X');
INSERT INTO `sys_area` VALUES (2055, 1942, 3, '孟津县', '河南省，洛阳市，孟津县', '112.443892', '34.826485', '0379', '471100', '410322', 'MengJinXian', 'MJX', 'M');
INSERT INTO `sys_area` VALUES (2056, 1942, 3, '嵩县', '河南省，洛阳市，嵩县', '112.087765', '34.131563', '0379', '471400', '410325', 'SongXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (2057, 1942, 3, '栾川县', '河南省，洛阳市，栾川县', '111.618386', '33.783195', '0379', '471500', '410324', 'LuanChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (2058, 1942, 3, '汝阳县', '河南省，洛阳市，汝阳县', '112.473789', '34.15323', '0379', '471200', '410326', 'RuYangXian', 'RYX', 'R');
INSERT INTO `sys_area` VALUES (2059, 1942, 3, '涧西区', '河南省，洛阳市，涧西区', '112.399243', '34.654251', '0379', '471003', '410305', 'JianXiQu', 'JXQ', 'J');
INSERT INTO `sys_area` VALUES (2060, 1942, 3, '伊川县', '河南省，洛阳市，伊川县', '112.429384', '34.423416', '0379', '471300', '410329', 'YiChuanXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (2061, 1942, 3, '吉利区', '河南省，洛阳市，吉利区', '112.584796', '34.899093', '0379', '471012', '410306', 'JiLiQu', 'JLQ', 'J');
INSERT INTO `sys_area` VALUES (2062, 1942, 3, '宜阳县', '河南省，洛阳市，宜阳县', '112.179989', '34.516478', '0379', '471600', '410327', 'YiYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (2063, 1942, 3, '洛宁县', '河南省，洛阳市，洛宁县', '111.655399', '34.387179', '0379', '471700', '410328', 'LuoNingXian', 'LNX', 'L');
INSERT INTO `sys_area` VALUES (2064, 1942, 3, '偃师市', '河南省，洛阳市，偃师市', '112.787739', '34.723042', '0379', '471900', '410381', 'YanShiShi', 'YSS', 'Y');
INSERT INTO `sys_area` VALUES (2065, 1942, 3, '瀍河回族区', '河南省，洛阳市，瀍河回族区', '112.491625', '34.684738', '0379', '471002', '410304', 'ChanHeHuiZuQu', 'CHHZQ', 'C');
INSERT INTO `sys_area` VALUES (2066, 1942, 3, '洛龙区', '河南省，洛阳市，洛龙区', '112.456634', '34.618557', '0379', '471000', '410311', 'LuoLongQu', 'LLQ', 'L');
INSERT INTO `sys_area` VALUES (2067, 1942, 3, '老城区', '河南省，洛阳市，老城区', '112.477298', '34.682945', '0379', '471002', '410302', 'LaoChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (2068, 1942, 3, '西工区', '河南省，洛阳市，西工区', '112.443232', '34.667847', '0379', '471000', '410303', 'XiGongQu', 'XGQ', 'X');
INSERT INTO `sys_area` VALUES (2260, 1943, 3, '湖滨区', '河南省，三门峡市，湖滨区', '111.19487', '34.77812', '0398', '472000', '411202', 'HuBinQu', 'HBQ', 'H');
INSERT INTO `sys_area` VALUES (2261, 1943, 3, '义马市', '河南省，三门峡市，义马市', '111.869417', '34.746868', '0398', '472300', '411281', 'YiMaShi', 'YMS', 'Y');
INSERT INTO `sys_area` VALUES (2262, 1943, 3, '渑池县', '河南省，三门峡市，渑池县', '111.762992', '34.763487', '0398', '472400', '411221', 'MianChiXian', 'MCX', 'M');
INSERT INTO `sys_area` VALUES (2263, 1943, 3, '卢氏县', '河南省，三门峡市，卢氏县', '111.052649', '34.053995', '0398', '472200', '411224', 'LuShiXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (2264, 1943, 3, '陕州区', '河南省，三门峡市，陕州区', '111.103851', '34.720244', '0398', '472100', '411203', 'ShanZhouQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (2265, 1943, 3, '灵宝市', '河南省，三门峡市，灵宝市', '110.88577', '34.521264', '0398', '472500', '411282', 'LingBaoShi', 'LBS', 'L');
INSERT INTO `sys_area` VALUES (2346, 1944, 3, '登封市', '河南省，郑州市，登封市', '113.037768', '34.459939', '0371', '452470', '410185', 'DengFengShi', 'DFS', 'D');
INSERT INTO `sys_area` VALUES (2347, 1944, 3, '巩义市', '河南省，郑州市，巩义市', '112.98283', '34.75218', '0371', '451200', '410181', 'GongYiShi', 'GYS', 'G');
INSERT INTO `sys_area` VALUES (2348, 1944, 3, '荥阳市', '河南省，郑州市，荥阳市', '113.391523', '34.789077', '0371', '450100', '410182', 'XingYangShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (2349, 1944, 3, '上街区', '河南省，郑州市，上街区', '113.298282', '34.808689', '0371', '450041', '410106', 'ShangJieQu', 'SJQ', 'S');
INSERT INTO `sys_area` VALUES (2350, 1944, 3, '新郑市', '河南省，郑州市，新郑市', '113.73967', '34.394219', '0371', '451100', '410184', 'XinZhengShi', 'XZS', 'X');
INSERT INTO `sys_area` VALUES (2351, 1944, 3, '惠济区', '河南省，郑州市，惠济区', '113.61836', '34.828591', '0371', '450053', '410108', 'HuiJiQu', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (2352, 1944, 3, '金水区', '河南省，郑州市，金水区', '113.686037', '34.775838', '0371', '450003', '410105', 'JinShuiQu', 'JSQ', 'J');
INSERT INTO `sys_area` VALUES (2353, 1944, 3, '中原区', '河南省，郑州市，中原区', '113.611576', '34.748286', '0371', '450007', '410102', 'ZhongYuanQu', 'ZYQ', 'Z');
INSERT INTO `sys_area` VALUES (2354, 1944, 3, '二七区', '河南省，郑州市，二七区', '113.645422', '34.730936', '0371', '450052', '410103', 'ErQiQu', 'EQQ', 'E');
INSERT INTO `sys_area` VALUES (2355, 1944, 3, '新密市', '河南省，郑州市，新密市', '113.380616', '34.537846', '0371', '452300', '410183', 'XinMiShi', 'XMS', 'X');
INSERT INTO `sys_area` VALUES (2356, 1944, 3, '管城回族区', '河南省，郑州市，管城回族区', '113.685313', '34.746453', '0371', '450000', '410104', 'GuanChengHuiZuQu', 'GCHZQ', 'G');
INSERT INTO `sys_area` VALUES (2357, 1944, 3, '中牟县', '河南省，郑州市，中牟县', '114.022521', '34.721976', '0371', '451450', '410122', 'ZhongMuXian', 'ZMX', 'Z');
INSERT INTO `sys_area` VALUES (2557, 1945, 3, '建安区', '河南省，许昌市，建安区', '113.842898', '34.005018', '0374', '461100', '411003', 'JianAnQu', 'JAQ', 'J');
INSERT INTO `sys_area` VALUES (2558, 1945, 3, '襄城县', '河南省，许昌市，襄城县', '113.493166', '33.855943', '0374', '461700', '411025', 'XiangChengXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (2559, 1945, 3, '魏都区', '河南省，许昌市，魏都区', '113.828307', '34.02711', '0374', '461000', '411002', 'WeiDouQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (2560, 1945, 3, '长葛市', '河南省，许昌市，长葛市', '113.768912', '34.219257', '0374', '461500', '411082', 'ChangGeShi', 'CGS', 'C');
INSERT INTO `sys_area` VALUES (2561, 1945, 3, '禹州市', '河南省，许昌市，禹州市', '113.471316', '34.154403', '0374', '461670', '411081', 'YuZhouShi', 'YZS', 'Y');
INSERT INTO `sys_area` VALUES (2562, 1945, 3, '鄢陵县', '河南省，许昌市，鄢陵县', '114.188507', '34.100502', '0374', '461200', '411024', 'YanLingXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (2662, 1946, 3, '西峡县', '河南省，南阳市，西峡县', '111.485772', '33.302981', '0377', '474550', '411323', 'XiXiaXian', 'XXX', 'X');
INSERT INTO `sys_area` VALUES (2663, 1946, 3, '淅川县', '河南省，南阳市，淅川县', '111.489026', '33.136106', '0377', '474450', '411326', 'XiChuanXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (2664, 1946, 3, '南召县', '河南省，南阳市，南召县', '112.435583', '33.488617', '0377', '474650', '411321', 'NanZhaoXian', 'NZX', 'N');
INSERT INTO `sys_area` VALUES (2665, 1946, 3, '卧龙区', '河南省，南阳市，卧龙区', '112.528789', '32.989877', '0377', '473003', '411303', 'WoLongQu', 'WLQ', 'W');
INSERT INTO `sys_area` VALUES (2666, 1946, 3, '唐河县', '河南省，南阳市，唐河县', '112.838492', '32.687892', '0377', '473400', '411328', 'TangHeXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (2667, 1946, 3, '桐柏县', '河南省，南阳市，桐柏县', '113.406059', '32.367153', '0377', '474750', '411330', 'TongBaiXian', 'TBX', 'T');
INSERT INTO `sys_area` VALUES (2668, 1946, 3, '社旗县', '河南省，南阳市，社旗县', '112.938279', '33.056126', '0377', '473300', '411327', 'SheQiXian', 'SQX', 'S');
INSERT INTO `sys_area` VALUES (2669, 1946, 3, '方城县', '河南省，南阳市，方城县', '113.010933', '33.255138', '0377', '473200', '411322', 'FangChengXian', 'FCX', 'F');
INSERT INTO `sys_area` VALUES (2670, 1946, 3, '镇平县', '河南省，南阳市，镇平县', '112.232722', '33.036651', '0377', '474250', '411324', 'ZhenPingXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (2671, 1946, 3, '内乡县', '河南省，南阳市，内乡县', '111.843801', '33.046358', '0377', '474350', '411325', 'NeiXiangXian', 'NXX', 'N');
INSERT INTO `sys_area` VALUES (2672, 1946, 3, '新野县', '河南省，南阳市，新野县', '112.365624', '32.524006', '0377', '473500', '411329', 'XinYeXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (2673, 1946, 3, '邓州市', '河南省，南阳市，邓州市', '112.092716', '32.681642', '0377', '474150', '411381', 'DengZhouShi', 'DZS', 'D');
INSERT INTO `sys_area` VALUES (2674, 1946, 3, '宛城区', '河南省，南阳市，宛城区', '112.544591', '32.994857', '0377', '473001', '411302', 'WanChengQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (2926, 1947, 3, '郾城区', '河南省，漯河市，郾城区', '114.016813', '33.588897', '0395', '462300', '411103', 'YanChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (2927, 1947, 3, '临颍县', '河南省，漯河市，临颍县', '113.938891', '33.80609', '0395', '462600', '411122', 'LinYingXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (2928, 1947, 3, '召陵区', '河南省，漯河市，召陵区', '114.051686', '33.567555', '0395', '462300', '411104', 'ZhaoLingQu', 'ZLQ', 'Z');
INSERT INTO `sys_area` VALUES (2929, 1947, 3, '舞阳县', '河南省，漯河市，舞阳县', '113.610565', '33.436278', '0395', '462400', '411121', 'WuYangXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (2930, 1947, 3, '源汇区', '河南省，漯河市，源汇区', '114.017948', '33.565441', '0395', '462000', '411102', 'YuanHuiQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (3002, 1949, 3, '郏县', '河南省，平顶山市，郏县', '113.220451', '33.971993', '0375', '467100', '410425', 'JiaXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (3003, 1949, 3, '宝丰县', '河南省，平顶山市，宝丰县', '113.066812', '33.866359', '0375', '467400', '410421', 'BaoFengXian', 'BFX', 'B');
INSERT INTO `sys_area` VALUES (3004, 1949, 3, '石龙区', '河南省，平顶山市，石龙区', '112.889885', '33.901538', '0375', '467045', '410404', 'ShiLongQu', 'SLQ', 'S');
INSERT INTO `sys_area` VALUES (3005, 1949, 3, '卫东区', '河南省，平顶山市，卫东区', '113.310327', '33.739285', '0375', '467021', '410403', 'WeiDongQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (3006, 1949, 3, '湛河区', '河南省，平顶山市，湛河区', '113.320873', '33.725681', '0375', '467000', '410411', 'ZhanHeQu', 'ZHQ', 'Z');
INSERT INTO `sys_area` VALUES (3007, 1949, 3, '鲁山县', '河南省，平顶山市，鲁山县', '112.906703', '33.740325', '0375', '467300', '410423', 'LuShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (3008, 1949, 3, '舞钢市', '河南省，平顶山市，舞钢市', '113.52625', '33.302082', '0375', '462500', '410481', 'WuGangShi', 'WGS', 'W');
INSERT INTO `sys_area` VALUES (3009, 1949, 3, '叶县', '河南省，平顶山市，叶县', '113.358298', '33.621252', '0375', '467200', '410422', 'YeXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (3010, 1949, 3, '新华区', '河南省，平顶山市，新华区', '113.299061', '33.737579', '0375', '467002', '410402', 'XinHuaQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (3011, 1949, 3, '汝州市', '河南省，平顶山市，汝州市', '112.845336', '34.167408', '0375', '467500', '410482', 'RuZhouShi', 'RZS', 'R');
INSERT INTO `sys_area` VALUES (3154, 1950, 3, '潢川县', '河南省，信阳市，潢川县', '115.050123', '32.134024', '0376', '465150', '411526', 'HuangChuanXian', 'HCX', 'H');
INSERT INTO `sys_area` VALUES (3155, 1950, 3, '淮滨县', '河南省，信阳市，淮滨县', '115.415451', '32.452639', '0376', '464400', '411527', 'HuaiBinXian', 'HBX', 'H');
INSERT INTO `sys_area` VALUES (3156, 1950, 3, '光山县', '河南省，信阳市，光山县', '114.903577', '32.010398', '0376', '465450', '411522', 'GuangShanXian', 'GSX', 'G');
INSERT INTO `sys_area` VALUES (3157, 1950, 3, '罗山县', '河南省，信阳市，罗山县', '114.533414', '32.203206', '0376', '464200', '411521', 'LuoShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (3158, 1950, 3, '商城县', '河南省，信阳市，商城县', '115.406297', '31.799982', '0376', '465350', '411524', 'ShangChengXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (3159, 1950, 3, '浉河区', '河南省，信阳市，浉河区', '114.075031', '32.123274', '0376', '464000', '411502', 'ShiHeQu', 'SHQ', 'S');
INSERT INTO `sys_area` VALUES (3160, 1950, 3, '固始县', '河南省，信阳市，固始县', '115.667328', '32.183074', '0376', '465250', '411525', 'GuShiXian', 'GSX', 'G');
INSERT INTO `sys_area` VALUES (3161, 1950, 3, '新县', '河南省，信阳市，新县', '114.87705', '31.63515', '0376', '465550', '411523', 'XinXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (3162, 1950, 3, '息县', '河南省，信阳市，息县', '114.740713', '32.344744', '0376', '464300', '411528', 'XiXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (3163, 1950, 3, '平桥区', '河南省，信阳市，平桥区', '114.126027', '32.098395', '0376', '464100', '411503', 'PingQiaoQu', 'PQQ', 'P');
INSERT INTO `sys_area` VALUES (3384, 1951, 3, '马村区', '河南省，焦作市，马村区', '113.321703', '35.265453', '0391', '454171', '410804', 'MaCunQu', 'MCQ', 'M');
INSERT INTO `sys_area` VALUES (3385, 1951, 3, '解放区', '河南省，焦作市，解放区', '113.226126', '35.241353', '0391', '454000', '410802', 'JieFangQu', 'JFQ', 'J');
INSERT INTO `sys_area` VALUES (3386, 1951, 3, '沁阳市', '河南省，焦作市，沁阳市', '112.934538', '35.08901', '0391', '454550', '410882', 'QinYangShi', 'QYS', 'Q');
INSERT INTO `sys_area` VALUES (3387, 1951, 3, '温县', '河南省，焦作市，温县', '113.079118', '34.941233', '0391', '454850', '410825', 'WenXian', 'WX', 'W');
INSERT INTO `sys_area` VALUES (3388, 1951, 3, '孟州市', '河南省，焦作市，孟州市', '112.78708', '34.90963', '0391', '454750', '410883', 'MengZhouShi', 'MZS', 'M');
INSERT INTO `sys_area` VALUES (3389, 1951, 3, '山阳区', '河南省，焦作市，山阳区', '113.26766', '35.21476', '0391', '454002', '410811', 'ShanYangQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (3390, 1951, 3, '博爱县', '河南省，焦作市，博爱县', '113.069313', '35.170351', '0391', '454450', '410822', 'BoAiXian', 'BAX', 'B');
INSERT INTO `sys_area` VALUES (3391, 1951, 3, '武陟县', '河南省，焦作市，武陟县', '113.408334', '35.09885', '0391', '454950', '410823', 'WuZhiXian', 'WZX', 'W');
INSERT INTO `sys_area` VALUES (3392, 1951, 3, '修武县', '河南省，焦作市，修武县', '113.447465', '35.229923', '0391', '454350', '410821', 'XiuWuXian', 'XWX', 'X');
INSERT INTO `sys_area` VALUES (3393, 1951, 3, '中站区', '河南省，焦作市，中站区', '113.175485', '35.236145', '0391', '454191', '410803', 'ZhongZhanQu', 'ZZQ', 'Z');
INSERT INTO `sys_area` VALUES (3502, 1952, 3, '殷都区', '河南省，安阳市，殷都区', '114.300098', '36.108974', '0372', '455004', '410505', 'YinDouQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (3503, 1952, 3, '内黄县', '河南省，安阳市，内黄县', '114.904582', '35.953702', '0372', '456350', '410527', 'NeiHuangXian', 'NHX', 'N');
INSERT INTO `sys_area` VALUES (3504, 1952, 3, '龙安区', '河南省，安阳市，龙安区', '114.323522', '36.095568', '0372', '455001', '410506', 'LongAnQu', 'LAQ', 'L');
INSERT INTO `sys_area` VALUES (3505, 1952, 3, '汤阴县', '河南省，安阳市，汤阴县', '114.362357', '35.922349', '0372', '456150', '410523', 'TangYinXian', 'TYX', 'T');
INSERT INTO `sys_area` VALUES (3506, 1952, 3, '滑县', '河南省，安阳市，滑县', '114.524', '35.574628', '0372', '456400', '410526', 'HuaXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (3507, 1952, 3, '文峰区', '河南省，安阳市，文峰区', '114.352562', '36.098101', '0372', '455000', '410502', 'WenFengQu', 'WFQ', 'W');
INSERT INTO `sys_area` VALUES (3508, 1952, 3, '北关区', '河南省，安阳市，北关区', '114.352646', '36.10978', '0372', '455001', '410503', 'BeiGuanQu', 'BGQ', 'B');
INSERT INTO `sys_area` VALUES (3509, 1952, 3, '安阳县', '河南省，安阳市，安阳县', '114.130207', '36.130585', '0372', '455000', '410522', 'AnYangXian', 'AYX', 'A');
INSERT INTO `sys_area` VALUES (3510, 1952, 3, '林州市', '河南省，安阳市，林州市', '113.823767', '36.063403', '0372', '456550', '410581', 'LinZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (3647, 1953, 3, '上蔡县', '河南省，驻马店市，上蔡县', '114.266892', '33.264719', '0396', '463800', '411722', 'ShangCaiXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (3648, 1953, 3, '西平县', '河南省，驻马店市，西平县', '114.026864', '33.382315', '0396', '463900', '411721', 'XiPingXian', 'XPX', 'X');
INSERT INTO `sys_area` VALUES (3649, 1953, 3, '汝南县', '河南省，驻马店市，汝南县', '114.359495', '33.004535', '0396', '463300', '411727', 'RuNanXian', 'RNX', 'R');
INSERT INTO `sys_area` VALUES (3650, 1953, 3, '平舆县', '河南省，驻马店市，平舆县', '114.637105', '32.955626', '0396', '463400', '411723', 'PingYuXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (3651, 1953, 3, '新蔡县', '河南省，驻马店市，新蔡县', '114.975246', '32.749948', '0396', '463500', '411729', 'XinCaiXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (3652, 1953, 3, '泌阳县', '河南省，驻马店市，泌阳县', '113.32605', '32.725129', '0396', '463700', '411726', 'BiYangXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (3653, 1953, 3, '遂平县', '河南省，驻马店市，遂平县', '114.00371', '33.14698', '0396', '463100', '411728', 'SuiPingXian', 'SPX', 'S');
INSERT INTO `sys_area` VALUES (3654, 1953, 3, '驿城区', '河南省，驻马店市，驿城区', '114.029149', '32.977559', '0396', '463000', '411702', 'YiChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (3655, 1953, 3, '确山县', '河南省，驻马店市，确山县', '114.026679', '32.801538', '0396', '463200', '411725', 'QueShanXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (3656, 1953, 3, '正阳县', '河南省，驻马店市，正阳县', '114.38948', '32.601826', '0396', '463600', '411724', 'ZhengYangXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (3857, 1954, 3, '民权县', '河南省，商丘市，民权县', '115.148146', '34.648455', '0370', '476800', '411421', 'MinQuanXian', 'MQX', 'M');
INSERT INTO `sys_area` VALUES (3858, 1954, 3, '宁陵县', '河南省，商丘市，宁陵县', '115.320055', '34.449299', '0370', '476700', '411423', 'NingLingXian', 'NLX', 'N');
INSERT INTO `sys_area` VALUES (3859, 1954, 3, '睢县', '河南省，商丘市，睢县', '115.070109', '34.428433', '0370', '476900', '411422', 'HuiXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (3860, 1954, 3, '睢阳区', '河南省，商丘市，睢阳区', '115.653813', '34.390536', '0370', '476100', '411403', 'HuiYangQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (3861, 1954, 3, '永城市', '河南省，商丘市，永城市', '116.449672', '33.931318', '0370', '476600', '411481', 'YongChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (3862, 1954, 3, '夏邑县', '河南省，商丘市，夏邑县', '116.13989', '34.240894', '0370', '476400', '411426', 'XiaYiXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (3863, 1954, 3, '柘城县', '河南省，商丘市，柘城县', '115.307433', '34.075277', '0370', '476200', '411424', 'ZheChengXian', 'ZCX', 'Z');
INSERT INTO `sys_area` VALUES (3864, 1954, 3, '梁园区', '河南省，商丘市，梁园区', '115.65459', '34.436553', '0370', '476000', '411402', 'LiangYuanQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (3865, 1954, 3, '虞城县', '河南省，商丘市，虞城县', '115.863811', '34.399634', '0370', '476300', '411425', 'YuChengXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (4061, 1955, 3, '红旗区', '河南省，新乡市，红旗区', '113.878158', '35.302684', '0373', '453000', '410702', 'HongQiQu', 'HQQ', 'H');
INSERT INTO `sys_area` VALUES (4062, 1955, 3, '凤泉区', '河南省，新乡市，凤泉区', '113.906712', '35.379855', '0373', '453011', '410704', 'FengQuanQu', 'FQQ', 'F');
INSERT INTO `sys_area` VALUES (4063, 1955, 3, '辉县市', '河南省，新乡市，辉县市', '113.802518', '35.461318', '0373', '453600', '410782', 'HuiXianShi', 'HXS', 'H');
INSERT INTO `sys_area` VALUES (4064, 1955, 3, '获嘉县', '河南省，新乡市，获嘉县', '113.657249', '35.261685', '0373', '453800', '410724', 'HuoJiaXian', 'HJX', 'H');
INSERT INTO `sys_area` VALUES (4065, 1955, 3, '卫辉市', '河南省，新乡市，卫辉市', '114.065855', '35.404295', '0373', '453100', '410781', 'WeiHuiShi', 'WHS', 'W');
INSERT INTO `sys_area` VALUES (4066, 1955, 3, '延津县', '河南省，新乡市，延津县', '114.200982', '35.149515', '0373', '453200', '410726', 'YanJinXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (4067, 1955, 3, '封丘县', '河南省，新乡市，封丘县', '114.423405', '35.04057', '0373', '453300', '410727', 'FengQiuXian', 'FQX', 'F');
INSERT INTO `sys_area` VALUES (4068, 1955, 3, '原阳县', '河南省，新乡市，原阳县', '113.965966', '35.054001', '0373', '453500', '410725', 'YuanYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (4069, 1955, 3, '长垣县', '河南省，新乡市，长垣县', '114.673807', '35.19615', '0373', '453400', '410728', 'ChangYuanXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (4070, 1955, 3, '新乡县', '河南省，新乡市，新乡县', '113.806186', '35.190021', '0373', '453700', '410721', 'XinXiangXian', 'XXX', 'X');
INSERT INTO `sys_area` VALUES (4071, 1955, 3, '卫滨区', '河南省，新乡市，卫滨区', '113.866065', '35.304905', '0373', '453000', '410703', 'WeiBinQu', 'WBQ', 'W');
INSERT INTO `sys_area` VALUES (4072, 1955, 3, '牧野区', '河南省，新乡市，牧野区', '113.89716', '35.312974', '0373', '453002', '410711', 'MuYeQu', 'MYQ', 'M');
INSERT INTO `sys_area` VALUES (4233, 1956, 3, '淇滨区', '河南省，鹤壁市，淇滨区', '114.293917', '35.748382', '0392', '458000', '410611', 'QiBinQu', 'QBQ', 'Q');
INSERT INTO `sys_area` VALUES (4234, 1956, 3, '鹤山区', '河南省，鹤壁市，鹤山区', '114.166551', '35.936128', '0392', '458010', '410602', 'HeShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (4235, 1956, 3, '浚县', '河南省，鹤壁市，浚县', '114.550162', '35.671282', '0392', '456250', '410621', 'JunXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (4236, 1956, 3, '淇县', '河南省，鹤壁市，淇县', '114.200379', '35.609478', '0392', '456750', '410622', 'QiXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (4237, 1956, 3, '山城区', '河南省，鹤壁市，山城区', '114.184202', '35.896058', '0392', '458000', '410603', 'ShanChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (4284, 1957, 3, '太康县', '河南省，周口市，太康县', '114.853834', '34.065312', '0394', '461400', '411627', 'TaiKangXian', 'TKX', 'T');
INSERT INTO `sys_area` VALUES (4285, 1957, 3, '鹿邑县', '河南省，周口市，鹿邑县', '115.486386', '33.861067', '0394', '477200', '411628', 'LuYiXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (4286, 1957, 3, '西华县', '河南省，周口市，西华县', '114.530067', '33.784378', '0394', '466600', '411622', 'XiHuaXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (4287, 1957, 3, '郸城县', '河南省，周口市，郸城县', '115.189', '33.643852', '0394', '477150', '411625', 'DanChengXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (4288, 1957, 3, '沈丘县', '河南省，周口市，沈丘县', '115.078375', '33.395514', '0394', '466300', '411624', 'ShenQiuXian', 'SQX', 'S');
INSERT INTO `sys_area` VALUES (4289, 1957, 3, '项城市', '河南省，周口市，项城市', '114.899521', '33.443085', '0394', '466200', '411681', 'XiangChengShi', 'XCS', 'X');
INSERT INTO `sys_area` VALUES (4290, 1957, 3, '扶沟县', '河南省，周口市，扶沟县', '114.392008', '34.054061', '0394', '461300', '411621', 'FuGouXian', 'FGX', 'F');
INSERT INTO `sys_area` VALUES (4291, 1957, 3, '淮阳县', '河南省，周口市，淮阳县', '114.870166', '33.732547', '0394', '466700', '411626', 'HuaiYangXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (4292, 1957, 3, '川汇区', '河南省，周口市，川汇区', '114.652136', '33.614836', '0394', '466000', '411602', 'ChuanHuiQu', 'CHQ', 'C');
INSERT INTO `sys_area` VALUES (4293, 1957, 3, '商水县', '河南省，周口市，商水县', '114.60927', '33.543845', '0394', '466100', '411623', 'ShangShuiXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (4502, 1958, 3, '兰考县', '河南省，开封市，兰考县', '114.820572', '34.829899', '0371', '475300', '410225', 'LanKaoXian', 'LKX', 'L');
INSERT INTO `sys_area` VALUES (4503, 1958, 3, '祥符区', '河南省，开封市，祥符区', '114.437622', '34.756476', '0371', '475100', '410212', 'XiangFuQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (4504, 1958, 3, '鼓楼区', '河南省，开封市，鼓楼区', '114.3485', '34.792383', '0371', '475000', '410204', 'GuLouQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (4505, 1958, 3, '顺河回族区', '河南省，开封市，顺河回族区', '114.364875', '34.800459', '0371', '475000', '410203', 'ShunHeHuiZuQu', 'SHHZQ', 'S');
INSERT INTO `sys_area` VALUES (4506, 1958, 3, '禹王台区', '河南省，开封市，禹王台区', '114.350246', '34.779727', '0371', '475003', '410205', 'YuWangTaiQu', 'YWTQ', 'Y');
INSERT INTO `sys_area` VALUES (4507, 1958, 3, '杞县', '河南省，开封市，杞县', '114.770472', '34.554585', '0371', '475200', '410221', 'QiXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (4508, 1958, 3, '龙亭区', '河南省，开封市，龙亭区', '114.353348', '34.799833', '0371', '475100', '410202', 'LongTingQu', 'LTQ', 'L');
INSERT INTO `sys_area` VALUES (4509, 1958, 3, '尉氏县', '河南省，开封市，尉氏县', '114.193927', '34.412256', '0371', '475500', '410223', 'WeiShiXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (4510, 1958, 3, '通许县', '河南省，开封市，通许县', '114.467734', '34.477302', '0371', '475400', '410222', 'TongXuXian', 'TXX', 'T');
INSERT INTO `sys_area` VALUES (4628, 3, 2, '乌海市', '内蒙古自治区，乌海市', '106.825563', '39.673734', '0473', '016000', '150300', 'WuHaiShi', 'WHS', 'W');
INSERT INTO `sys_area` VALUES (4629, 3, 2, '巴彦淖尔市', '内蒙古自治区，巴彦淖尔市', '107.416959', '40.757402', '0478', '015001', '150800', 'BaYanNaoErShi', 'BYNES', 'B');
INSERT INTO `sys_area` VALUES (4630, 3, 2, '呼伦贝尔市', '内蒙古自治区，呼伦贝尔市', '119.758168', '49.215333', '0470', '021008', '150700', 'HuLunBeiErShi', 'HLBES', 'H');
INSERT INTO `sys_area` VALUES (4631, 3, 2, '鄂尔多斯市', '内蒙古自治区，鄂尔多斯市', '109.99029', '39.817179', '0477', '017004', '150600', 'EErDuoSiShi', 'EEDSS', 'E');
INSERT INTO `sys_area` VALUES (4632, 3, 2, '包头市', '内蒙古自治区，包头市', '109.840405', '40.658168', '0472', '014025', '150200', 'BaoTouShi', 'BTS', 'B');
INSERT INTO `sys_area` VALUES (4633, 3, 2, '呼和浩特市', '内蒙古自治区，呼和浩特市', '111.670801', '40.818311', '0471', '010000', '150100', 'HuHeHaoTeShi', 'HHHTS', 'H');
INSERT INTO `sys_area` VALUES (4634, 3, 2, '通辽市', '内蒙古自治区，通辽市', '122.263119', '43.617429', '0475', '028000', '150500', 'TongLiaoShi', 'TLS', 'T');
INSERT INTO `sys_area` VALUES (4635, 3, 2, '赤峰市', '内蒙古自治区，赤峰市', '118.956806', '42.275317', '0476', '024000', '150400', 'ChiFengShi', 'CFS', 'C');
INSERT INTO `sys_area` VALUES (4636, 3, 2, '阿拉善盟', '内蒙古自治区，阿拉善盟', '105.706422', '38.844814', '0483', '750306', '152900', 'ALaShanMeng', 'ALSM', 'A');
INSERT INTO `sys_area` VALUES (4637, 3, 2, '兴安盟', '内蒙古自治区，兴安盟', '122.070317', '46.076268', '0482', '137401', '152200', 'XingAnMeng', 'XAM', 'X');
INSERT INTO `sys_area` VALUES (4638, 3, 2, '锡林郭勒盟', '内蒙古自治区，锡林郭勒盟', '116.090996', '43.944018', '0479', '026000', '152500', 'XiLinGuoLeMeng', 'XLGLM', 'X');
INSERT INTO `sys_area` VALUES (4639, 3, 2, '乌兰察布市', '内蒙古自治区，乌兰察布市', '113.114543', '41.034126', '0474', '012000', '150900', 'WuLanChaBuShi', 'WLCBS', 'W');
INSERT INTO `sys_area` VALUES (4640, 4628, 3, '乌达区', '内蒙古自治区，乌海市，乌达区', '106.722711', '39.502288', '0473', '016040', '150304', 'WuDaQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (4641, 4628, 3, '海勃湾区', '内蒙古自治区，乌海市，海勃湾区', '106.817762', '39.673527', '0473', '016000', '150302', 'HaiBoWanQu', 'HBWQ', 'H');
INSERT INTO `sys_area` VALUES (4642, 4628, 3, '海南区', '内蒙古自治区，乌海市，海南区', '106.884789', '39.44153', '0473', '016030', '150303', 'HaiNanQu', 'HNQ', 'H');
INSERT INTO `sys_area` VALUES (4665, 4629, 3, '乌拉特中旗', '内蒙古自治区，巴彦淖尔市，乌拉特中旗', '108.515255', '41.57254', '0478', '015300', '150824', 'WuLaTeZhongQi', 'WLTZQ', 'W');
INSERT INTO `sys_area` VALUES (4666, 4629, 3, '五原县', '内蒙古自治区，巴彦淖尔市，五原县', '108.270658', '41.097639', '0478', '015100', '150821', 'WuYuanXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (4667, 4629, 3, '临河区', '内蒙古自治区，巴彦淖尔市，临河区', '107.417018', '40.757092', '0478', '015001', '150802', 'LinHeQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (4668, 4629, 3, '磴口县', '内蒙古自治区，巴彦淖尔市，磴口县', '107.006056', '40.330479', '0478', '015200', '150822', 'DengKouXian', 'DKX', 'D');
INSERT INTO `sys_area` VALUES (4669, 4629, 3, '杭锦后旗', '内蒙古自治区，巴彦淖尔市，杭锦后旗', '107.147682', '40.888797', '0478', '015400', '150826', 'HangJinHouQi', 'HJHQ', 'H');
INSERT INTO `sys_area` VALUES (4670, 4629, 3, '乌拉特后旗', '内蒙古自治区，巴彦淖尔市，乌拉特后旗', '107.074941', '41.084307', '0478', '015500', '150825', 'WuLaTeHouQi', 'WLTHQ', 'W');
INSERT INTO `sys_area` VALUES (4671, 4629, 3, '乌拉特前旗', '内蒙古自治区，巴彦淖尔市，乌拉特前旗', '108.656816', '40.725209', '0478', '014400', '150823', 'WuLaTeQianQi', 'WLTQQ', 'W');
INSERT INTO `sys_area` VALUES (4761, 4630, 3, '额尔古纳市', '内蒙古自治区，呼伦贝尔市，额尔古纳市', '120.178636', '50.2439', '0470', '022250', '150784', 'EErGuNaShi', 'EEGNS', 'E');
INSERT INTO `sys_area` VALUES (4762, 4630, 3, '海拉尔区', '内蒙古自治区，呼伦贝尔市，海拉尔区', '119.764923', '49.213889', '0470', '021000', '150702', 'HaiLaErQu', 'HLEQ', 'H');
INSERT INTO `sys_area` VALUES (4763, 4630, 3, '陈巴尔虎旗', '内蒙古自治区，呼伦贝尔市，陈巴尔虎旗', '119.437609', '49.328422', '0470', '021500', '150725', 'ChenBaErHuQi', 'CBEHQ', 'C');
INSERT INTO `sys_area` VALUES (4764, 4630, 3, '阿荣旗', '内蒙古自治区，呼伦贝尔市，阿荣旗', '123.464615', '48.130503', '0470', '162750', '150721', 'ARongQi', 'ARQ', 'A');
INSERT INTO `sys_area` VALUES (4765, 4630, 3, '鄂温克族自治旗', '内蒙古自治区，呼伦贝尔市，鄂温克族自治旗', '119.754041', '49.143293', '0470', '021100', '150724', 'EWenKeZuZiZhiQi', 'EWKZZZQ', 'E');
INSERT INTO `sys_area` VALUES (4766, 4630, 3, '根河市', '内蒙古自治区，呼伦贝尔市，根河市', '121.532724', '50.780454', '0470', '022350', '150785', 'GenHeShi', 'GHS', 'G');
INSERT INTO `sys_area` VALUES (4767, 4630, 3, '牙克石市', '内蒙古自治区，呼伦贝尔市，牙克石市', '120.729005', '49.287024', '0470', '022150', '150782', 'YaKeShiShi', 'YKSS', 'Y');
INSERT INTO `sys_area` VALUES (4768, 4630, 3, '扎兰屯市', '内蒙古自治区，呼伦贝尔市，扎兰屯市', '122.744401', '48.007412', '0470', '162650', '150783', 'ZaLanTunShi', 'ZLTS', 'Z');
INSERT INTO `sys_area` VALUES (4769, 4630, 3, '莫力达瓦达斡尔族自治旗', '内蒙古自治区，呼伦贝尔市，莫力达瓦达斡尔族自治旗', '124.507401', '48.478385', '0470', '162850', '150722', 'MoLiDaWaDaWoErZuZiZhiQi', 'MLDWDWEZZZQ', 'M');
INSERT INTO `sys_area` VALUES (4770, 4630, 3, '满洲里市', '内蒙古自治区，呼伦贝尔市，满洲里市', '117.455561', '49.590788', '0470', '021400', '150781', 'ManZhouLiShi', 'MZLS', 'M');
INSERT INTO `sys_area` VALUES (4771, 4630, 3, '新巴尔虎左旗', '内蒙古自治区，呼伦贝尔市，新巴尔虎左旗', '118.267454', '48.216571', '0470', '021200', '150726', 'XinBaErHuZuoQi', 'XBEHZQ', 'X');
INSERT INTO `sys_area` VALUES (4772, 4630, 3, '扎赉诺尔区', '内蒙古自治区，呼伦贝尔市，扎赉诺尔区', '117.716373', '49.456567', '0470', '021410', '150703', 'ZaLaiNuoErQu', 'ZLNEQ', 'Z');
INSERT INTO `sys_area` VALUES (4773, 4630, 3, '新巴尔虎右旗', '内蒙古自治区，呼伦贝尔市，新巴尔虎右旗', '116.825991', '48.669134', '0470', '021300', '150727', 'XinBaErHuYouQi', 'XBEHYQ', 'X');
INSERT INTO `sys_area` VALUES (4774, 4630, 3, '鄂伦春自治旗', '内蒙古自治区，呼伦贝尔市，鄂伦春自治旗', '123.725684', '50.590177', '0470', '165450', '150723', 'ELunChunZiZhiQi', 'ELCZZQ', 'E');
INSERT INTO `sys_area` VALUES (4962, 4631, 3, '准格尔旗', '内蒙古自治区，鄂尔多斯市，准格尔旗', '111.238332', '39.865221', '0477', '017100', '150622', 'ZhunGeErQi', 'ZGEQ', 'Z');
INSERT INTO `sys_area` VALUES (4963, 4631, 3, '鄂托克旗', '内蒙古自治区，鄂尔多斯市，鄂托克旗', '107.982604', '39.095752', '0477', '016100', '150624', 'ETuoKeQi', 'ETKQ', 'E');
INSERT INTO `sys_area` VALUES (4964, 4631, 3, '杭锦旗', '内蒙古自治区，鄂尔多斯市，杭锦旗', '108.736324', '39.831789', '0477', '017400', '150625', 'HangJinQi', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (4965, 4631, 3, '达拉特旗', '内蒙古自治区，鄂尔多斯市，达拉特旗', '110.040281', '40.404076', '0477', '014300', '150621', 'DaLaTeQi', 'DLTQ', 'D');
INSERT INTO `sys_area` VALUES (4966, 4631, 3, '乌审旗', '内蒙古自治区，鄂尔多斯市，乌审旗', '108.842454', '38.596611', '0477', '017300', '150626', 'WuShenQi', 'WSQ', 'W');
INSERT INTO `sys_area` VALUES (4967, 4631, 3, '鄂托克前旗', '内蒙古自治区，鄂尔多斯市，鄂托克前旗', '107.48172', '38.183257', '0477', '016200', '150623', 'ETuoKeQianQi', 'ETKQQ', 'E');
INSERT INTO `sys_area` VALUES (4968, 4631, 3, '康巴什区', '内蒙古自治区，鄂尔多斯市，康巴什区', '109.790076', '39.607472', '0477', '017010', '150603', 'KangBaShenQu', 'KBSQ', 'K');
INSERT INTO `sys_area` VALUES (4969, 4631, 3, '东胜区', '内蒙古自治区，鄂尔多斯市，东胜区', '109.98945', '39.81788', '0477', '017000', '150602', 'DongShengQu', 'DSQ', 'D');
INSERT INTO `sys_area` VALUES (4970, 4631, 3, '伊金霍洛旗', '内蒙古自治区，鄂尔多斯市，伊金霍洛旗', '109.787402', '39.604312', '0477', '017200', '150627', 'YiJinHuoLuoQi', 'YJHLQ', 'Y');
INSERT INTO `sys_area` VALUES (5056, 4632, 3, '土默特右旗', '内蒙古自治区，包头市，土默特右旗', '110.526766', '40.566434', '0472', '014100', '150221', 'TuMoTeYouQi', 'TMTYQ', 'T');
INSERT INTO `sys_area` VALUES (5057, 4632, 3, '达尔罕茂明安联合旗', '内蒙古自治区，包头市，达尔罕茂明安联合旗', '110.438452', '41.702836', '0472', '014500', '150223', 'DaErHanMaoMingAnLianHeQi', 'DEHMMALHQ', 'D');
INSERT INTO `sys_area` VALUES (5058, 4632, 3, '白云鄂博矿区', '内蒙古自治区，包头市，白云鄂博矿区', '109.97016', '41.769246', '0472', '014080', '150206', 'BaiYunEBoKuangQu', 'BYEBKQ', 'B');
INSERT INTO `sys_area` VALUES (5059, 4632, 3, '东河区', '内蒙古自治区，包头市，东河区', '110.026895', '40.587056', '0472', '014040', '150202', 'DongHeQu', 'DHQ', 'D');
INSERT INTO `sys_area` VALUES (5060, 4632, 3, '九原区', '内蒙古自治区，包头市，九原区', '109.968122', '40.600581', '0472', '014060', '150207', 'JiuYuanQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (5061, 4632, 3, '固阳县', '内蒙古自治区，包头市，固阳县', '110.063421', '41.030004', '0472', '014200', '150222', 'GuYangXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (5062, 4632, 3, '昆都仑区', '内蒙古自治区，包头市，昆都仑区', '109.822932', '40.661345', '0472', '014010', '150203', 'KunDouLunQu', 'KDLQ', 'K');
INSERT INTO `sys_area` VALUES (5063, 4632, 3, '石拐区', '内蒙古自治区，包头市，石拐区', '110.272565', '40.672094', '0472', '014070', '150205', 'ShiGuaiQu', 'SGQ', 'S');
INSERT INTO `sys_area` VALUES (5064, 4632, 3, '青山区', '内蒙古自治区，包头市，青山区', '109.880049', '40.668558', '0472', '014030', '150204', 'QingShanQu', 'QSQ', 'Q');
INSERT INTO `sys_area` VALUES (5156, 4633, 3, '和林格尔县', '内蒙古自治区，呼和浩特市，和林格尔县', '111.824143', '40.380288', '0471', '011500', '150123', 'HeLinGeErXian', 'HLGEX', 'H');
INSERT INTO `sys_area` VALUES (5157, 4633, 3, '玉泉区', '内蒙古自治区，呼和浩特市，玉泉区', '111.66543', '40.799421', '0471', '010020', '150104', 'YuQuanQu', 'YQQ', 'Y');
INSERT INTO `sys_area` VALUES (5158, 4633, 3, '清水河县', '内蒙古自治区，呼和浩特市，清水河县', '111.67222', '39.912479', '0471', '011600', '150124', 'QingShuiHeXian', 'QSHX', 'Q');
INSERT INTO `sys_area` VALUES (5159, 4633, 3, '回民区', '内蒙古自治区，呼和浩特市，回民区', '111.662162', '40.815149', '0471', '010030', '150103', 'HuiMinQu', 'HMQ', 'H');
INSERT INTO `sys_area` VALUES (5160, 4633, 3, '托克托县', '内蒙古自治区，呼和浩特市，托克托县', '111.197317', '40.276729', '0471', '010200', '150122', 'TuoKeTuoXian', 'TKTX', 'T');
INSERT INTO `sys_area` VALUES (5161, 4633, 3, '武川县', '内蒙古自治区，呼和浩特市，武川县', '111.456563', '41.094483', '0471', '011700', '150125', 'WuChuanXian', 'WCX', 'W');
INSERT INTO `sys_area` VALUES (5162, 4633, 3, '土默特左旗', '内蒙古自治区，呼和浩特市，土默特左旗', '111.133615', '40.720416', '0471', '010100', '150121', 'TuMoTeZuoQi', 'TMTZQ', 'T');
INSERT INTO `sys_area` VALUES (5163, 4633, 3, '新城区', '内蒙古自治区，呼和浩特市，新城区', '111.685964', '40.826225', '0471', '010050', '150102', 'XinChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (5164, 4633, 3, '赛罕区', '内蒙古自治区，呼和浩特市，赛罕区', '111.698463', '40.807834', '0471', '010020', '150105', 'SaiHanQu', 'SHQ', 'S');
INSERT INTO `sys_area` VALUES (5254, 4634, 3, '霍林郭勒市', '内蒙古自治区，通辽市，霍林郭勒市', '119.657862', '45.532361', '0475', '029200', '150581', 'HuoLinGuoLeShi', 'HLGLS', 'H');
INSERT INTO `sys_area` VALUES (5255, 4634, 3, '扎鲁特旗', '内蒙古自治区，通辽市，扎鲁特旗', '120.905275', '44.555294', '0475', '029100', '150526', 'ZaLuTeQi', 'ZLTQ', 'Z');
INSERT INTO `sys_area` VALUES (5256, 4634, 3, '科尔沁左翼中旗', '内蒙古自治区，通辽市，科尔沁左翼中旗', '123.313873', '44.127166', '0475', '029300', '150521', 'KeErQinZuoYiZhongQi', 'KEQZYZQ', 'K');
INSERT INTO `sys_area` VALUES (5257, 4634, 3, '科尔沁区', '内蒙古自治区，通辽市，科尔沁区', '122.264042', '43.617422', '0475', '028000', '150502', 'KeErQinQu', 'KEQQ', 'K');
INSERT INTO `sys_area` VALUES (5258, 4634, 3, '奈曼旗', '内蒙古自治区，通辽市，奈曼旗', '120.662543', '42.84685', '0475', '028300', '150525', 'NaiManQi', 'NMQ', 'N');
INSERT INTO `sys_area` VALUES (5259, 4634, 3, '开鲁县', '内蒙古自治区，通辽市，开鲁县', '121.308797', '43.602432', '0475', '028400', '150523', 'KaiLuXian', 'KLX', 'K');
INSERT INTO `sys_area` VALUES (5260, 4634, 3, '库伦旗', '内蒙古自治区，通辽市，库伦旗', '121.774886', '42.734692', '0475', '028200', '150524', 'KuLunQi', 'KLQ', 'K');
INSERT INTO `sys_area` VALUES (5261, 4634, 3, '科尔沁左翼后旗', '内蒙古自治区，通辽市，科尔沁左翼后旗', '122.355155', '42.954564', '0475', '028100', '150522', 'KeErQinZuoYiHouQi', 'KEQZYHQ', 'K');
INSERT INTO `sys_area` VALUES (5403, 4635, 3, '阿鲁科尔沁旗', '内蒙古自治区，赤峰市，阿鲁科尔沁旗', '120.094969', '43.87877', '0476', '025550', '150421', 'ALuKeErQinQi', 'ALKEQQ', 'A');
INSERT INTO `sys_area` VALUES (5404, 4635, 3, '林西县', '内蒙古自治区，赤峰市，林西县', '118.05775', '43.605326', '0476', '025250', '150424', 'LinXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (5405, 4635, 3, '巴林左旗', '内蒙古自治区，赤峰市，巴林左旗', '119.391737', '43.980715', '0476', '025450', '150422', 'BaLinZuoQi', 'BLZQ', 'B');
INSERT INTO `sys_area` VALUES (5406, 4635, 3, '巴林右旗', '内蒙古自治区，赤峰市，巴林右旗', '118.678347', '43.528963', '0476', '025150', '150423', 'BaLinYouQi', 'BLYQ', 'B');
INSERT INTO `sys_area` VALUES (5407, 4635, 3, '克什克腾旗', '内蒙古自治区，赤峰市，克什克腾旗', '117.542465', '43.256233', '0476', '025350', '150425', 'KeShenKeTengQi', 'KSKTQ', 'K');
INSERT INTO `sys_area` VALUES (5408, 4635, 3, '翁牛特旗', '内蒙古自治区，赤峰市，翁牛特旗', '119.022619', '42.937128', '0476', '024500', '150426', 'WengNiuTeQi', 'WNTQ', 'W');
INSERT INTO `sys_area` VALUES (5409, 4635, 3, '松山区', '内蒙古自治区，赤峰市，松山区', '118.938958', '42.281046', '0476', '024005', '150404', 'SongShanQu', 'SSQ', 'S');
INSERT INTO `sys_area` VALUES (5410, 4635, 3, '宁城县', '内蒙古自治区，赤峰市，宁城县', '119.339242', '41.598692', '0476', '024200', '150429', 'NingChengXian', 'NCX', 'N');
INSERT INTO `sys_area` VALUES (5411, 4635, 3, '红山区', '内蒙古自治区，赤峰市，红山区', '118.961087', '42.269732', '0476', '024020', '150402', 'HongShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (5412, 4635, 3, '元宝山区', '内蒙古自治区，赤峰市，元宝山区', '119.289877', '42.041168', '0476', '024076', '150403', 'YuanBaoShanQu', 'YBSQ', 'Y');
INSERT INTO `sys_area` VALUES (5413, 4635, 3, '喀喇沁旗', '内蒙古自治区，赤峰市，喀喇沁旗', '118.708572', '41.92778', '0476', '024400', '150428', 'KaLaQinQi', 'KLQQ', 'K');
INSERT INTO `sys_area` VALUES (5414, 4635, 3, '敖汉旗', '内蒙古自治区，赤峰市，敖汉旗', '119.906486', '42.287012', '0476', '024300', '150430', 'AoHanQi', 'AHQ', 'A');
INSERT INTO `sys_area` VALUES (5598, 4636, 3, '额济纳旗', '内蒙古自治区，阿拉善盟，额济纳旗', '101.06944', '41.958813', '0483', '735400', '152923', 'EJiNaQi', 'EJNQ', 'E');
INSERT INTO `sys_area` VALUES (5599, 4636, 3, '阿拉善右旗', '内蒙古自治区，阿拉善盟，阿拉善右旗', '101.671984', '39.21159', '0483', '737300', '152922', 'ALaShanYouQi', 'ALSYQ', 'A');
INSERT INTO `sys_area` VALUES (5600, 4636, 3, '阿拉善左旗', '内蒙古自治区，阿拉善盟，阿拉善左旗', '105.70192', '38.847241', '0483', '750306', '152921', 'ALaShanZuoQi', 'ALSZQ', 'A');
INSERT INTO `sys_area` VALUES (5635, 4637, 3, '阿尔山市', '内蒙古自治区，兴安盟，阿尔山市', '119.943656', '47.177', '0482', '137800', '152202', 'AErShanShi', 'AESS', 'A');
INSERT INTO `sys_area` VALUES (5636, 4637, 3, '扎赉特旗', '内蒙古自治区，兴安盟，扎赉特旗', '122.909332', '46.725136', '0482', '137600', '152223', 'ZaLaiTeQi', 'ZLTQ', 'Z');
INSERT INTO `sys_area` VALUES (5637, 4637, 3, '突泉县', '内蒙古自治区，兴安盟，突泉县', '121.564856', '45.380986', '0482', '137500', '152224', 'TuQuanXian', 'TQX', 'T');
INSERT INTO `sys_area` VALUES (5638, 4637, 3, '科尔沁右翼中旗', '内蒙古自治区，兴安盟，科尔沁右翼中旗', '121.472818', '45.059645', '0482', '029400', '152222', 'KeErQinYouYiZhongQi', 'KEQYYZQ', 'K');
INSERT INTO `sys_area` VALUES (5639, 4637, 3, '乌兰浩特市', '内蒙古自治区，兴安盟，乌兰浩特市', '122.068975', '46.077238', '0482', '137401', '152201', 'WuLanHaoTeShi', 'WLHTS', 'W');
INSERT INTO `sys_area` VALUES (5640, 4637, 3, '科尔沁右翼前旗', '内蒙古自治区，兴安盟，科尔沁右翼前旗', '121.957544', '46.076497', '0482', '137423', '152221', 'KeErQinYouYiQianQi', 'KEQYYQQ', 'K');
INSERT INTO `sys_area` VALUES (5731, 4638, 3, '东乌珠穆沁旗', '内蒙古自治区，锡林郭勒盟，东乌珠穆沁旗', '116.980022', '45.510307', '0479', '026300', '152525', 'DongWuZhuMuQinQi', 'DWZMQQ', 'D');
INSERT INTO `sys_area` VALUES (5732, 4638, 3, '阿巴嘎旗', '内蒙古自治区，锡林郭勒盟，阿巴嘎旗', '114.970618', '44.022728', '0479', '011400', '152522', 'ABaGaQi', 'ABGQ', 'A');
INSERT INTO `sys_area` VALUES (5733, 4638, 3, '西乌珠穆沁旗', '内蒙古自治区，锡林郭勒盟，西乌珠穆沁旗', '117.615249', '44.586147', '0479', '026200', '152526', 'XiWuZhuMuQinQi', 'XWZMQQ', 'X');
INSERT INTO `sys_area` VALUES (5734, 4638, 3, '锡林浩特市', '内蒙古自治区，锡林郭勒盟，锡林浩特市', '116.091903', '43.944301', '0479', '026021', '152502', 'XiLinHaoTeShi', 'XLHTS', 'X');
INSERT INTO `sys_area` VALUES (5735, 4638, 3, '苏尼特左旗', '内蒙古自治区，锡林郭勒盟，苏尼特左旗', '113.653412', '43.854108', '0479', '011300', '152523', 'SuNiTeZuoQi', 'SNTZQ', 'S');
INSERT INTO `sys_area` VALUES (5736, 4638, 3, '苏尼特右旗', '内蒙古自治区，锡林郭勒盟，苏尼特右旗', '112.65539', '42.746662', '0479', '011200', '152524', 'SuNiTeYouQi', 'SNTYQ', 'S');
INSERT INTO `sys_area` VALUES (5737, 4638, 3, '二连浩特市', '内蒙古自治区，锡林郭勒盟，二连浩特市', '111.97981', '43.652895', '0479', '011100', '152501', 'ErLianHaoTeShi', 'ELHTS', 'E');
INSERT INTO `sys_area` VALUES (5738, 4638, 3, '镶黄旗', '内蒙古自治区，锡林郭勒盟，镶黄旗', '113.843869', '42.239229', '0479', '013250', '152528', 'XiangHuangQi', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (5739, 4638, 3, '正蓝旗', '内蒙古自治区，锡林郭勒盟，正蓝旗', '116.003311', '42.245895', '0479', '027200', '152530', 'ZhengLanQi', 'ZLQ', 'Z');
INSERT INTO `sys_area` VALUES (5740, 4638, 3, '正镶白旗', '内蒙古自治区，锡林郭勒盟，正镶白旗', '115.031423', '42.286807', '0479', '013800', '152529', 'ZhengXiangBaiQi', 'ZXBQ', 'Z');
INSERT INTO `sys_area` VALUES (5741, 4638, 3, '多伦县', '内蒙古自治区，锡林郭勒盟，多伦县', '116.477288', '42.197962', '0479', '027300', '152531', 'DuoLunXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (5742, 4638, 3, '太仆寺旗', '内蒙古自治区，锡林郭勒盟，太仆寺旗', '115.28728', '41.895199', '0479', '027000', '152527', 'TaiPuSiQi', 'TPSQ', 'T');
INSERT INTO `sys_area` VALUES (5846, 4639, 3, '四子王旗', '内蒙古自治区，乌兰察布市，四子王旗', '111.70123', '41.528114', '0474', '011800', '150929', 'SiZiWangQi', 'SZWQ', 'S');
INSERT INTO `sys_area` VALUES (5847, 4639, 3, '察哈尔右翼后旗', '内蒙古自治区，乌兰察布市，察哈尔右翼后旗', '113.1906', '41.447213', '0474', '012400', '150928', 'ChaHaErYouYiHouQi', 'CHEYYHQ', 'C');
INSERT INTO `sys_area` VALUES (5848, 4639, 3, '商都县', '内蒙古自治区，乌兰察布市，商都县', '113.560643', '41.560163', '0474', '013450', '150923', 'ShangDouXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (5849, 4639, 3, '察哈尔右翼中旗', '内蒙古自治区，乌兰察布市，察哈尔右翼中旗', '112.633563', '41.274212', '0474', '013550', '150927', 'ChaHaErYouYiZhongQi', 'CHEYYZQ', 'C');
INSERT INTO `sys_area` VALUES (5850, 4639, 3, '化德县', '内蒙古自治区，乌兰察布市，化德县', '114.01008', '41.899335', '0474', '013350', '150922', 'HuaDeXian', 'HDX', 'H');
INSERT INTO `sys_area` VALUES (5851, 4639, 3, '兴和县', '内蒙古自治区，乌兰察布市，兴和县', '113.834009', '40.872437', '0474', '013650', '150924', 'XingHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (5852, 4639, 3, '卓资县', '内蒙古自治区，乌兰察布市，卓资县', '112.577702', '40.89576', '0474', '012300', '150921', 'ZhuoZiXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (5853, 4639, 3, '凉城县', '内蒙古自治区，乌兰察布市，凉城县', '112.500911', '40.531627', '0474', '013750', '150925', 'LiangChengXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (5854, 4639, 3, '丰镇市', '内蒙古自治区，乌兰察布市，丰镇市', '113.163462', '40.437534', '0474', '012100', '150981', 'FengZhenShi', 'FZS', 'F');
INSERT INTO `sys_area` VALUES (5855, 4639, 3, '集宁区', '内蒙古自治区，乌兰察布市，集宁区', '113.116453', '41.034134', '0474', '012000', '150902', 'JiNingQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (5856, 4639, 3, '察哈尔右翼前旗', '内蒙古自治区，乌兰察布市，察哈尔右翼前旗', '113.211958', '40.786859', '0474', '012200', '150926', 'ChaHaErYouYiQianQi', 'CHEYYQQ', 'C');
INSERT INTO `sys_area` VALUES (5971, 4, 2, '大兴安岭地区', '黑龙江省，大兴安岭地区', '124.711526', '52.335262', '0457', '165000', '232700', 'DaXingAnLingDiQu', 'DXALDQ', 'D');
INSERT INTO `sys_area` VALUES (5972, 4, 2, '七台河市', '黑龙江省，七台河市', '131.015584', '45.771266', '0464', '154600', '230900', 'QiTaiHeShi', 'QTHS', 'Q');
INSERT INTO `sys_area` VALUES (5973, 4, 2, '大庆市', '黑龙江省，大庆市', '125.11272', '46.590734', '0459', '163000', '230600', 'DaQingShi', 'DQS', 'D');
INSERT INTO `sys_area` VALUES (5974, 4, 2, '鹤岗市', '黑龙江省，鹤岗市', '130.277487', '47.332085', '0468', '154100', '230400', 'HeGangShi', 'HGS', 'H');
INSERT INTO `sys_area` VALUES (5975, 4, 2, '伊春市', '黑龙江省，伊春市', '128.899396', '47.724775', '0458', '153000', '230700', 'YiChunShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (5976, 4, 2, '绥化市', '黑龙江省，绥化市', '126.99293', '46.637393', '0455', '152000', '231200', 'SuiHuaShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (5977, 4, 2, '佳木斯市', '黑龙江省，佳木斯市', '130.361634', '46.809606', '0454', '154002', '230800', 'JiaMuSiShi', 'JMSS', 'J');
INSERT INTO `sys_area` VALUES (5978, 4, 2, '齐齐哈尔市', '黑龙江省，齐齐哈尔市', '123.95792', '47.342081', '0452', '161005', '230200', 'QiQiHaErShi', 'QQHES', 'Q');
INSERT INTO `sys_area` VALUES (5979, 4, 2, '鸡西市', '黑龙江省，鸡西市', '130.975966', '45.300046', '0467', '158100', '230300', 'JiXiShi', 'JXS', 'J');
INSERT INTO `sys_area` VALUES (5980, 4, 2, '双鸭山市', '黑龙江省，双鸭山市', '131.157304', '46.643442', '0469', '155100', '230500', 'ShuangYaShanShi', 'SYSS', 'S');
INSERT INTO `sys_area` VALUES (5981, 4, 2, '哈尔滨市', '黑龙江省，哈尔滨市', '126.642464', '45.756967', '0451', '150010', '230100', 'HaErBinShi', 'HEBS', 'H');
INSERT INTO `sys_area` VALUES (5982, 4, 2, '黑河市', '黑龙江省，黑河市', '127.499023', '50.249585', '0456', '164300', '231100', 'HeiHeShi', 'HHS', 'H');
INSERT INTO `sys_area` VALUES (5983, 4, 2, '牡丹江市', '黑龙江省，牡丹江市', '129.618602', '44.582962', '0453', '157000', '231000', 'MuDanJiangShi', 'MDJS', 'M');
INSERT INTO `sys_area` VALUES (5984, 5971, 3, '漠河县', '黑龙江省，大兴安岭地区，漠河县', '122.536256', '52.972074', '0457', '165300', '232723', 'MoHeXian', 'MHX', 'M');
INSERT INTO `sys_area` VALUES (5985, 5971, 3, '呼玛县', '黑龙江省，大兴安岭地区，呼玛县', '126.662105', '51.726998', '0457', '165100', '232721', 'HuMaXian', 'HMX', 'H');
INSERT INTO `sys_area` VALUES (5986, 5971, 3, '塔河县', '黑龙江省，大兴安岭地区，塔河县', '124.710516', '52.335229', '0457', '165200', '232722', 'TaHeXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (5987, 5971, 3, '加格达奇区', '黑龙江省，大兴安岭地区，加格达奇区', '124.126716', '50.424654', '0457', '165000', '232701', 'JiaGeDaQiQu', 'JGDQQ', 'J');
INSERT INTO `sys_area` VALUES (6032, 5972, 3, '勃利县', '黑龙江省，七台河市，勃利县', '130.575025', '45.751573', '0464', '154500', '230921', 'BoLiXian', 'BLX', 'B');
INSERT INTO `sys_area` VALUES (6033, 5972, 3, '茄子河区', '黑龙江省，七台河市，茄子河区', '131.071561', '45.776587', '0464', '154622', '230904', 'QieZiHeQu', 'QZHQ', 'Q');
INSERT INTO `sys_area` VALUES (6034, 5972, 3, '新兴区', '黑龙江省，七台河市，新兴区', '130.889482', '45.794258', '0464', '154604', '230902', 'XinXingQu', 'XXQ', 'X');
INSERT INTO `sys_area` VALUES (6035, 5972, 3, '桃山区', '黑龙江省，七台河市，桃山区', '131.015848', '45.771217', '0464', '154600', '230903', 'TaoShanQu', 'TSQ', 'T');
INSERT INTO `sys_area` VALUES (6093, 5973, 3, '让胡路区', '黑龙江省，大庆市，让胡路区', '124.868341', '46.653254', '0459', '163712', '230604', 'RangHuLuQu', 'RHLQ', 'R');
INSERT INTO `sys_area` VALUES (6094, 5973, 3, '红岗区', '黑龙江省，大庆市，红岗区', '124.889528', '46.403049', '0459', '163511', '230605', 'HongGangQu', 'HGQ', 'H');
INSERT INTO `sys_area` VALUES (6095, 5973, 3, '肇源县', '黑龙江省，大庆市，肇源县', '125.081974', '45.518832', '0459', '166500', '230622', 'ZhaoYuanXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (6096, 5973, 3, '大同区', '黑龙江省，大庆市，大同区', '124.818509', '46.034304', '0459', '163515', '230606', 'DaTongQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (6097, 5973, 3, '林甸县', '黑龙江省，大庆市，林甸县', '124.877742', '47.186411', '0459', '166300', '230623', 'LinDianXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (6098, 5973, 3, '杜尔伯特蒙古族自治县', '黑龙江省，大庆市，杜尔伯特蒙古族自治县', '124.446259', '46.865973', '0459', '166200', '230624', 'DuErBoTeMengGuZuZiZhiXian', 'DEBTMGZZZX', 'D');
INSERT INTO `sys_area` VALUES (6099, 5973, 3, '肇州县', '黑龙江省，大庆市，肇州县', '125.273254', '45.708685', '0459', '166400', '230621', 'ZhaoZhouXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (6100, 5973, 3, '龙凤区', '黑龙江省，大庆市，龙凤区', '125.145794', '46.573948', '0459', '163711', '230603', 'LongFengQu', 'LFQ', 'L');
INSERT INTO `sys_area` VALUES (6101, 5973, 3, '萨尔图区', '黑龙江省，大庆市，萨尔图区', '125.114643', '46.596356', '0459', '163001', '230602', 'SaErTuQu', 'SETQ', 'S');
INSERT INTO `sys_area` VALUES (6213, 5974, 3, '萝北县', '黑龙江省，鹤岗市，萝北县', '130.829087', '47.577577', '0468', '154200', '230421', 'LuoBeiXian', 'LBX', 'L');
INSERT INTO `sys_area` VALUES (6214, 5974, 3, '绥滨县', '黑龙江省，鹤岗市，绥滨县', '131.860526', '47.289892', '0468', '156200', '230422', 'SuiBinXian', 'SBX', 'S');
INSERT INTO `sys_area` VALUES (6215, 5974, 3, '工农区', '黑龙江省，鹤岗市，工农区', '130.276652', '47.331678', '0468', '154101', '230403', 'GongNongQu', 'GNQ', 'G');
INSERT INTO `sys_area` VALUES (6216, 5974, 3, '向阳区', '黑龙江省，鹤岗市，向阳区', '130.292478', '47.345372', '0468', '154100', '230402', 'XiangYangQu', 'XYQ', 'X');
INSERT INTO `sys_area` VALUES (6217, 5974, 3, '东山区', '黑龙江省，鹤岗市，东山区', '130.31714', '47.337385', '0468', '154106', '230406', 'DongShanQu', 'DSQ', 'D');
INSERT INTO `sys_area` VALUES (6218, 5974, 3, '兴山区', '黑龙江省，鹤岗市，兴山区', '130.30534', '47.35997', '0468', '154105', '230407', 'XingShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (6219, 5974, 3, '南山区', '黑龙江省，鹤岗市，南山区', '130.275533', '47.31324', '0468', '154104', '230404', 'NanShanQu', 'NSQ', 'N');
INSERT INTO `sys_area` VALUES (6220, 5974, 3, '兴安区', '黑龙江省，鹤岗市，兴安区', '130.236169', '47.252911', '0468', '154102', '230405', 'XingAnQu', 'XAQ', 'X');
INSERT INTO `sys_area` VALUES (6293, 5975, 3, '乌伊岭区', '黑龙江省，伊春市，乌伊岭区', '129.437847', '48.59112', '0458', '153038', '230714', 'WuYiLingQu', 'WYLQ', 'W');
INSERT INTO `sys_area` VALUES (6294, 5975, 3, '嘉荫县', '黑龙江省，伊春市，嘉荫县', '130.397684', '48.891378', '0458', '153200', '230722', 'JiaYinXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (6295, 5975, 3, '友好区', '黑龙江省，伊春市，友好区', '128.838961', '47.854303', '0458', '153031', '230704', 'YouHaoQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (6296, 5975, 3, '红星区', '黑龙江省，伊春市，红星区', '129.388796', '48.238368', '0458', '153035', '230715', 'HongXingQu', 'HXQ', 'H');
INSERT INTO `sys_area` VALUES (6297, 5975, 3, '五营区', '黑龙江省，伊春市，五营区', '129.245028', '48.108204', '0458', '153033', '230710', 'WuYingQu', 'WYQ', 'W');
INSERT INTO `sys_area` VALUES (6298, 5975, 3, '汤旺河区', '黑龙江省，伊春市，汤旺河区', '129.57224', '48.453651', '0458', '153037', '230712', 'TangWangHeQu', 'TWHQ', 'T');
INSERT INTO `sys_area` VALUES (6299, 5975, 3, '新青区', '黑龙江省，伊春市，新青区', '129.52995', '48.288292', '0458', '153036', '230707', 'XinQingQu', 'XQQ', 'X');
INSERT INTO `sys_area` VALUES (6300, 5975, 3, '上甘岭区', '黑龙江省，伊春市，上甘岭区', '129.02508', '47.974859', '0458', '153032', '230716', 'ShangGanLingQu', 'SGLQ', 'S');
INSERT INTO `sys_area` VALUES (6301, 5975, 3, '翠峦区', '黑龙江省，伊春市，翠峦区', '128.671746', '47.726228', '0458', '153013', '230706', 'CuiLuanQu', 'CLQ', 'C');
INSERT INTO `sys_area` VALUES (6302, 5975, 3, '美溪区', '黑龙江省，伊春市，美溪区', '129.133411', '47.636102', '0458', '153021', '230708', 'MeiXiQu', 'MXQ', 'M');
INSERT INTO `sys_area` VALUES (6303, 5975, 3, '乌马河区', '黑龙江省，伊春市，乌马河区', '128.802941', '47.726961', '0458', '153011', '230711', 'WuMaHeQu', 'WMHQ', 'W');
INSERT INTO `sys_area` VALUES (6304, 5975, 3, '伊春区', '黑龙江省，伊春市，伊春区', '128.899284', '47.726851', '0458', '153000', '230702', 'YiChunQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (6305, 5975, 3, '金山屯区', '黑龙江省，伊春市，金山屯区', '129.435944', '47.41295', '0458', '153026', '230709', 'JinShanTunQu', 'JSTQ', 'J');
INSERT INTO `sys_area` VALUES (6306, 5975, 3, '铁力市', '黑龙江省，伊春市，铁力市', '128.030561', '46.985772', '0458', '152500', '230781', 'TieLiShi', 'TLS', 'T');
INSERT INTO `sys_area` VALUES (6307, 5975, 3, '西林区', '黑龙江省，伊春市，西林区', '129.311441', '47.479437', '0458', '153025', '230705', 'XiLinQu', 'XLQ', 'X');
INSERT INTO `sys_area` VALUES (6308, 5975, 3, '带岭区', '黑龙江省，伊春市，带岭区', '129.021151', '47.027532', '0458', '153106', '230713', 'DaiLingQu', 'DLQ', 'D');
INSERT INTO `sys_area` VALUES (6309, 5975, 3, '南岔区', '黑龙江省，伊春市，南岔区', '129.28246', '47.137314', '0458', '153100', '230703', 'NanChaQu', 'NCQ', 'N');
INSERT INTO `sys_area` VALUES (6502, 5976, 3, '绥棱县', '黑龙江省，绥化市，绥棱县', '127.111121', '47.247195', '0455', '152200', '231226', 'SuiLengXian', 'SLX', 'S');
INSERT INTO `sys_area` VALUES (6503, 5976, 3, '海伦市', '黑龙江省，绥化市，海伦市', '126.969383', '47.460428', '0455', '152300', '231283', 'HaiLunShi', 'HLS', 'H');
INSERT INTO `sys_area` VALUES (6504, 5976, 3, '庆安县', '黑龙江省，绥化市，庆安县', '127.510024', '46.879203', '0455', '152400', '231224', 'QingAnXian', 'QAX', 'Q');
INSERT INTO `sys_area` VALUES (6505, 5976, 3, '北林区', '黑龙江省，绥化市，北林区', '126.990665', '46.634912', '0455', '152000', '231202', 'BeiLinQu', 'BLQ', 'B');
INSERT INTO `sys_area` VALUES (6506, 5976, 3, '青冈县', '黑龙江省，绥化市，青冈县', '126.112268', '46.686596', '0455', '151600', '231223', 'QingGangXian', 'QGX', 'Q');
INSERT INTO `sys_area` VALUES (6507, 5976, 3, '望奎县', '黑龙江省，绥化市，望奎县', '126.484191', '46.83352', '0455', '152100', '231221', 'WangKuiXian', 'WKX', 'W');
INSERT INTO `sys_area` VALUES (6508, 5976, 3, '安达市', '黑龙江省，绥化市，安达市', '125.329926', '46.410614', '0455', '151400', '231281', 'AnDaShi', 'ADS', 'A');
INSERT INTO `sys_area` VALUES (6509, 5976, 3, '明水县', '黑龙江省，绥化市，明水县', '125.907544', '47.183527', '0455', '151700', '231225', 'MingShuiXian', 'MSX', 'M');
INSERT INTO `sys_area` VALUES (6510, 5976, 3, '肇东市', '黑龙江省，绥化市，肇东市', '125.991402', '46.069471', '0455', '151100', '231282', 'ZhaoDongShi', 'ZDS', 'Z');
INSERT INTO `sys_area` VALUES (6511, 5976, 3, '兰西县', '黑龙江省，绥化市，兰西县', '126.289315', '46.259037', '0455', '151500', '231222', 'LanXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (6729, 5977, 3, '抚远市', '黑龙江省，佳木斯市，抚远市', '134.294501', '48.364707', '0454', '156500', '230883', 'FuYuanShi', 'FYS', 'F');
INSERT INTO `sys_area` VALUES (6730, 5977, 3, '同江市', '黑龙江省，佳木斯市，同江市', '132.510119', '47.651131', '0454', '156400', '230881', 'TongJiangShi', 'TJS', 'T');
INSERT INTO `sys_area` VALUES (6731, 5977, 3, '桦川县', '黑龙江省，佳木斯市，桦川县', '130.723713', '47.023039', '0454', '154300', '230826', 'HuaChuanXian', 'HCX', 'H');
INSERT INTO `sys_area` VALUES (6732, 5977, 3, '桦南县', '黑龙江省，佳木斯市，桦南县', '130.570112', '46.240118', '0454', '154400', '230822', 'HuaNanXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (6733, 5977, 3, '汤原县', '黑龙江省，佳木斯市，汤原县', '129.904463', '46.730048', '0454', '154700', '230828', 'TangYuanXian', 'TYX', 'T');
INSERT INTO `sys_area` VALUES (6734, 5977, 3, '富锦市', '黑龙江省，佳木斯市，富锦市', '132.037951', '47.250747', '0454', '156100', '230882', 'FuJinShi', 'FJS', 'F');
INSERT INTO `sys_area` VALUES (6735, 5977, 3, '东风区', '黑龙江省，佳木斯市，东风区', '130.403297', '46.822476', '0454', '154005', '230805', 'DongFengQu', 'DFQ', 'D');
INSERT INTO `sys_area` VALUES (6736, 5977, 3, '向阳区', '黑龙江省，佳木斯市，向阳区', '130.361786', '46.809645', '0454', '154002', '230803', 'XiangYangQu', 'XYQ', 'X');
INSERT INTO `sys_area` VALUES (6737, 5977, 3, '前进区', '黑龙江省，佳木斯市，前进区', '130.377684', '46.812345', '0454', '154002', '230804', 'QianJinQu', 'QJQ', 'Q');
INSERT INTO `sys_area` VALUES (6738, 5977, 3, '郊区', '黑龙江省，佳木斯市，郊区', '130.351588', '46.80712', '0454', '154004', '230811', 'JiaoQu', 'JQ', 'J');
INSERT INTO `sys_area` VALUES (6870, 5978, 3, '讷河市', '黑龙江省，齐齐哈尔市，讷河市', '124.882172', '48.481133', '0452', '161300', '230281', 'NeHeShi', 'NHS', 'N');
INSERT INTO `sys_area` VALUES (6871, 5978, 3, '克山县', '黑龙江省，齐齐哈尔市，克山县', '125.874355', '48.034342', '0452', '161600', '230229', 'KeShanXian', 'KSX', 'K');
INSERT INTO `sys_area` VALUES (6872, 5978, 3, '甘南县', '黑龙江省，齐齐哈尔市，甘南县', '123.506034', '47.917838', '0452', '162100', '230225', 'GanNanXian', 'GNX', 'G');
INSERT INTO `sys_area` VALUES (6873, 5978, 3, '克东县', '黑龙江省，齐齐哈尔市，克东县', '126.249094', '48.03732', '0452', '164800', '230230', 'KeDongXian', 'KDX', 'K');
INSERT INTO `sys_area` VALUES (6874, 5978, 3, '富裕县', '黑龙江省，齐齐哈尔市，富裕县', '124.469106', '47.797172', '0452', '161200', '230227', 'FuYuXian', 'FYX', 'F');
INSERT INTO `sys_area` VALUES (6875, 5978, 3, '依安县', '黑龙江省，齐齐哈尔市，依安县', '125.307561', '47.890098', '0452', '161500', '230223', 'YiAnXian', 'YAX', 'Y');
INSERT INTO `sys_area` VALUES (6876, 5978, 3, '梅里斯达斡尔族区', '黑龙江省，齐齐哈尔市，梅里斯达斡尔族区', '123.754599', '47.311113', '0452', '161021', '230208', 'MeiLiSiDaWoErZuQu', 'MLSDWEZQ', 'M');
INSERT INTO `sys_area` VALUES (6877, 5978, 3, '龙江县', '黑龙江省，齐齐哈尔市，龙江县', '123.187225', '47.336388', '0452', '161100', '230221', 'LongJiangXian', 'LJX', 'L');
INSERT INTO `sys_area` VALUES (6878, 5978, 3, '碾子山区', '黑龙江省，齐齐哈尔市，碾子山区', '122.887972', '47.51401', '0452', '161046', '230207', 'NianZiShanQu', 'NZSQ', 'N');
INSERT INTO `sys_area` VALUES (6879, 5978, 3, '龙沙区', '黑龙江省，齐齐哈尔市，龙沙区', '123.957338', '47.341736', '0452', '161000', '230202', 'LongShaQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (6880, 5978, 3, '富拉尔基区', '黑龙江省，齐齐哈尔市，富拉尔基区', '123.638873', '47.20697', '0452', '161041', '230206', 'FuLaErJiQu', 'FLEJQ', 'F');
INSERT INTO `sys_area` VALUES (6881, 5978, 3, '铁锋区', '黑龙江省，齐齐哈尔市，铁锋区', '123.973555', '47.339499', '0452', '161000', '230204', 'TieFengQu', 'TFQ', 'T');
INSERT INTO `sys_area` VALUES (6882, 5978, 3, '昂昂溪区', '黑龙江省，齐齐哈尔市，昂昂溪区', '123.813181', '47.156867', '0452', '161031', '230205', 'AngAngXiQu', 'AAXQ', 'A');
INSERT INTO `sys_area` VALUES (6883, 5978, 3, '建华区', '黑龙江省，齐齐哈尔市，建华区', '123.955888', '47.354494', '0452', '161006', '230203', 'JianHuaQu', 'JHQ', 'J');
INSERT INTO `sys_area` VALUES (6884, 5978, 3, '泰来县', '黑龙江省，齐齐哈尔市，泰来县', '123.41953', '46.39233', '0452', '162400', '230224', 'TaiLaiXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (6885, 5978, 3, '拜泉县', '黑龙江省，齐齐哈尔市，拜泉县', '126.091911', '47.607363', '0452', '164700', '230231', 'BaiQuanXian', 'BQX', 'B');
INSERT INTO `sys_area` VALUES (7104, 5979, 3, '虎林市', '黑龙江省，鸡西市，虎林市', '132.973881', '45.767985', '0467', '158400', '230381', 'HuLinShi', 'HLS', 'H');
INSERT INTO `sys_area` VALUES (7105, 5979, 3, '城子河区', '黑龙江省，鸡西市，城子河区', '131.010501', '45.338248', '0467', '158170', '230306', 'ChengZiHeQu', 'CZHQ', 'C');
INSERT INTO `sys_area` VALUES (7106, 5979, 3, '滴道区', '黑龙江省，鸡西市，滴道区', '130.846823', '45.348812', '0467', '158150', '230304', 'DiDaoQu', 'DDQ', 'D');
INSERT INTO `sys_area` VALUES (7107, 5979, 3, '麻山区', '黑龙江省，鸡西市，麻山区', '130.481126', '45.209607', '0467', '158180', '230307', 'MaShanQu', 'MSQ', 'M');
INSERT INTO `sys_area` VALUES (7108, 5979, 3, '鸡冠区', '黑龙江省，鸡西市，鸡冠区', '130.974374', '45.30034', '0467', '158100', '230302', 'JiGuanQu', 'JGQ', 'J');
INSERT INTO `sys_area` VALUES (7109, 5979, 3, '恒山区', '黑龙江省，鸡西市，恒山区', '130.910636', '45.213242', '0467', '158130', '230303', 'HengShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (7110, 5979, 3, '梨树区', '黑龙江省，鸡西市，梨树区', '130.697781', '45.092195', '0467', '158160', '230305', 'LiShuQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (7111, 5979, 3, '密山市', '黑龙江省，鸡西市，密山市', '131.874137', '45.54725', '0467', '158300', '230382', 'MiShanShi', 'MSS', 'M');
INSERT INTO `sys_area` VALUES (7112, 5979, 3, '鸡东县', '黑龙江省，鸡西市，鸡东县', '131.148907', '45.250892', '0467', '158200', '230321', 'JiDongXian', 'JDX', 'J');
INSERT INTO `sys_area` VALUES (7215, 5980, 3, '饶河县', '黑龙江省，双鸭山市，饶河县', '134.021162', '46.801288', '0469', '155700', '230524', 'RaoHeXian', 'RHX', 'R');
INSERT INTO `sys_area` VALUES (7216, 5980, 3, '四方台区', '黑龙江省，双鸭山市，四方台区', '131.333181', '46.594347', '0469', '155130', '230505', 'SiFangTaiQu', 'SFTQ', 'S');
INSERT INTO `sys_area` VALUES (7217, 5980, 3, '友谊县', '黑龙江省，双鸭山市，友谊县', '131.810622', '46.775159', '0469', '155800', '230522', 'YouYiXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (7218, 5980, 3, '尖山区', '黑龙江省，双鸭山市，尖山区', '131.15896', '46.642961', '0469', '155100', '230502', 'JianShanQu', 'JSQ', 'J');
INSERT INTO `sys_area` VALUES (7219, 5980, 3, '集贤县', '黑龙江省，双鸭山市，集贤县', '131.13933', '46.72898', '0469', '155900', '230521', 'JiXianXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (7220, 5980, 3, '岭东区', '黑龙江省，双鸭山市，岭东区', '131.163675', '46.591076', '0469', '155120', '230503', 'LingDongQu', 'LDQ', 'L');
INSERT INTO `sys_area` VALUES (7221, 5980, 3, '宝山区', '黑龙江省，双鸭山市，宝山区', '131.404294', '46.573366', '0469', '155131', '230506', 'BaoShanQu', 'BSQ', 'B');
INSERT INTO `sys_area` VALUES (7222, 5980, 3, '宝清县', '黑龙江省，双鸭山市，宝清县', '132.206415', '46.328781', '0469', '155600', '230523', 'BaoQingXian', 'BQX', 'B');
INSERT INTO `sys_area` VALUES (7332, 5981, 3, '巴彦县', '黑龙江省，哈尔滨市，巴彦县', '127.403602', '46.081889', '0451', '151800', '230126', 'BaYanXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (7333, 5981, 3, '依兰县', '黑龙江省，哈尔滨市，依兰县', '129.565594', '46.315105', '0451', '154800', '230123', 'YiLanXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (7334, 5981, 3, '通河县', '黑龙江省，哈尔滨市，通河县', '128.747786', '45.977618', '0451', '150900', '230128', 'TongHeXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (7335, 5981, 3, '呼兰区', '黑龙江省，哈尔滨市，呼兰区', '126.603302', '45.98423', '0451', '150500', '230111', 'HuLanQu', 'HLQ', 'H');
INSERT INTO `sys_area` VALUES (7336, 5981, 3, '木兰县', '黑龙江省，哈尔滨市，木兰县', '128.042675', '45.949826', '0451', '151900', '230127', 'MuLanXian', 'MLX', 'M');
INSERT INTO `sys_area` VALUES (7337, 5981, 3, '方正县', '黑龙江省，哈尔滨市，方正县', '128.836131', '45.839536', '0451', '150800', '230124', 'FangZhengXian', 'FZX', 'F');
INSERT INTO `sys_area` VALUES (7338, 5981, 3, '延寿县', '黑龙江省，哈尔滨市，延寿县', '128.331886', '45.455648', '0451', '150700', '230129', 'YanShouXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (7339, 5981, 3, '宾县', '黑龙江省，哈尔滨市，宾县', '127.48594', '45.759369', '0451', '150400', '230125', 'BinXian', 'BX', 'B');
INSERT INTO `sys_area` VALUES (7340, 5981, 3, '双城区', '黑龙江省，哈尔滨市，双城区', '126.308784', '45.377942', '0451', '150100', '230113', 'ShuangChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (7341, 5981, 3, '平房区', '黑龙江省，哈尔滨市，平房区', '126.629257', '45.605567', '0451', '150060', '230108', 'PingFangQu', 'PFQ', 'P');
INSERT INTO `sys_area` VALUES (7342, 5981, 3, '尚志市', '黑龙江省，哈尔滨市，尚志市', '127.968539', '45.214953', '0451', '150600', '230183', 'ShangZhiShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (7343, 5981, 3, '香坊区', '黑龙江省，哈尔滨市，香坊区', '126.667049', '45.713067', '0451', '150036', '230110', 'XiangFangQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (7344, 5981, 3, '道里区', '黑龙江省，哈尔滨市，道里区', '126.612532', '45.762035', '0451', '150010', '230102', 'DaoLiQu', 'DLQ', 'D');
INSERT INTO `sys_area` VALUES (7345, 5981, 3, '松北区', '黑龙江省，哈尔滨市，松北区', '126.563066', '45.814656', '0451', '150028', '230109', 'SongBeiQu', 'SBQ', 'S');
INSERT INTO `sys_area` VALUES (7346, 5981, 3, '五常市', '黑龙江省，哈尔滨市，五常市', '127.15759', '44.919418', '0451', '150200', '230184', 'WuChangShi', 'WCS', 'W');
INSERT INTO `sys_area` VALUES (7347, 5981, 3, '南岗区', '黑龙江省，哈尔滨市，南岗区', '126.652098', '45.755971', '0451', '150006', '230103', 'NanGangQu', 'NGQ', 'N');
INSERT INTO `sys_area` VALUES (7348, 5981, 3, '道外区', '黑龙江省，哈尔滨市，道外区', '126.648838', '45.78454', '0451', '150020', '230104', 'DaoWaiQu', 'DWQ', 'D');
INSERT INTO `sys_area` VALUES (7349, 5981, 3, '阿城区', '黑龙江省，哈尔滨市，阿城区', '126.972726', '45.538372', '0451', '150300', '230112', 'AChengQu', 'ACQ', 'A');
INSERT INTO `sys_area` VALUES (7668, 5982, 3, '逊克县', '黑龙江省，黑河市，逊克县', '128.476152', '49.582974', '0456', '164400', '231123', 'XunKeXian', 'XKX', 'X');
INSERT INTO `sys_area` VALUES (7669, 5982, 3, '孙吴县', '黑龙江省，黑河市，孙吴县', '127.327315', '49.423941', '0456', '164200', '231124', 'SunWuXian', 'SWX', 'S');
INSERT INTO `sys_area` VALUES (7670, 5982, 3, '嫩江县', '黑龙江省，黑河市，嫩江县', '125.229904', '49.177461', '0456', '161400', '231121', 'NenJiangXian', 'NJX', 'N');
INSERT INTO `sys_area` VALUES (7671, 5982, 3, '爱辉区', '黑龙江省，黑河市，爱辉区', '127.497639', '50.249027', '0456', '164300', '231102', 'AiHuiQu', 'AHQ', 'A');
INSERT INTO `sys_area` VALUES (7672, 5982, 3, '五大连池市', '黑龙江省，黑河市，五大连池市', '126.197694', '48.512688', '0456', '164100', '231182', 'WuDaLianChiShi', 'WDLCS', 'W');
INSERT INTO `sys_area` VALUES (7673, 5982, 3, '北安市', '黑龙江省，黑河市，北安市', '126.508737', '48.245437', '0456', '164000', '231181', 'BeiAnShi', 'BAS', 'B');
INSERT INTO `sys_area` VALUES (7837, 5983, 3, '东安区', '黑龙江省，牡丹江市，东安区', '129.623292', '44.582399', '0453', '157000', '231002', 'DongAnQu', 'DAQ', 'D');
INSERT INTO `sys_area` VALUES (7838, 5983, 3, '爱民区', '黑龙江省，牡丹江市，爱民区', '129.601232', '44.595443', '0453', '157009', '231004', 'AiMinQu', 'AMQ', 'A');
INSERT INTO `sys_area` VALUES (7839, 5983, 3, '绥芬河市', '黑龙江省，牡丹江市，绥芬河市', '131.164856', '44.396864', '0453', '157300', '231081', 'SuiFenHeShi', 'SFHS', 'S');
INSERT INTO `sys_area` VALUES (7840, 5983, 3, '东宁市', '黑龙江省，牡丹江市，东宁市', '131.125296', '44.063578', '0453', '157200', '231086', 'DongNingShi', 'DNS', 'D');
INSERT INTO `sys_area` VALUES (7841, 5983, 3, '宁安市', '黑龙江省，牡丹江市，宁安市', '129.470019', '44.346836', '0453', '157400', '231084', 'NingAnShi', 'NAS', 'N');
INSERT INTO `sys_area` VALUES (7842, 5983, 3, '穆棱市', '黑龙江省，牡丹江市，穆棱市', '130.527085', '44.91967', '0453', '157500', '231085', 'MuLengShi', 'MLS', 'M');
INSERT INTO `sys_area` VALUES (7843, 5983, 3, '阳明区', '黑龙江省，牡丹江市，阳明区', '129.634645', '44.596328', '0453', '157013', '231003', 'YangMingQu', 'YMQ', 'Y');
INSERT INTO `sys_area` VALUES (7844, 5983, 3, '林口县', '黑龙江省，牡丹江市，林口县', '130.268402', '45.286645', '0453', '157600', '231025', 'LinKouXian', 'LKX', 'L');
INSERT INTO `sys_area` VALUES (7845, 5983, 3, '西安区', '黑龙江省，牡丹江市，西安区', '129.61311', '44.581032', '0453', '157000', '231005', 'XiAnQu', 'XAQ', 'X');
INSERT INTO `sys_area` VALUES (7846, 5983, 3, '海林市', '黑龙江省，牡丹江市，海林市', '129.387902', '44.574149', '0453', '157100', '231083', 'HaiLinShi', 'HLS', 'H');
INSERT INTO `sys_area` VALUES (7937, 5, 3, '北屯市', '新疆维吾尔自治区，北屯市', '87.824932', '47.353177', '0906', '836000', '659005', 'BeiTunShi', 'BTS', 'B');
INSERT INTO `sys_area` VALUES (7938, 5, 3, '双河市', '新疆维吾尔自治区，双河市', '82.353656', '44.840524', '0909', '833408', '659007', 'ShuangHeShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (7939, 5, 3, '铁门关市', '新疆维吾尔自治区，铁门关市', '85.501218', '41.827251', '0906', '836000', '659006', 'TieMenGuanShi', 'TMGS', 'T');
INSERT INTO `sys_area` VALUES (7940, 5, 2, '博尔塔拉蒙古自治州', '新疆维吾尔自治区，博尔塔拉蒙古自治州', '82.074778', '44.903258', '0909', '833400', '652700', 'BoErTaLaMengGuZiZhiZhou', 'BETLMGZZZ', 'B');
INSERT INTO `sys_area` VALUES (7941, 5, 2, '和田地区', '新疆维吾尔自治区，和田地区', '79.92533', '37.110687', '0903', '848000', '653200', 'HeTianDiQu', 'HTDQ', 'H');
INSERT INTO `sys_area` VALUES (7942, 5, 2, '塔城地区', '新疆维吾尔自治区，塔城地区', '82.985732', '46.746301', '0901', '834700', '654200', 'TaChengDiQu', 'TCDQ', 'T');
INSERT INTO `sys_area` VALUES (7943, 5, 3, '昆玉市', '新疆维吾尔自治区，昆玉市', '79.287372', '37.207994', '0903', '848116', '659009', 'KunYuShi', 'KYS', 'K');
INSERT INTO `sys_area` VALUES (7944, 5, 3, '可克达拉市', '新疆维吾尔自治区，可克达拉市', '80.63579', '43.6832', '0999', '835219', '659008', 'KeKeDaLaShi', 'KKDLS', 'K');
INSERT INTO `sys_area` VALUES (7945, 5, 3, '石河子市', '新疆维吾尔自治区，石河子市', '86.041075', '44.305886', '0993', '832000', '659001', 'ShiHeZiShi', 'SHZS', 'S');
INSERT INTO `sys_area` VALUES (7946, 5, 2, '阿勒泰地区', '新疆维吾尔自治区，阿勒泰地区', '88.13963', '47.848393', '0906', '836500', '654300', 'ALeTaiDiQu', 'ALTDQ', 'A');
INSERT INTO `sys_area` VALUES (7947, 5, 2, '克拉玛依市', '新疆维吾尔自治区，克拉玛依市', '84.873946', '45.595886', '0990', '834000', '650200', 'KeLaMaYiShi', 'KLMYS', 'K');
INSERT INTO `sys_area` VALUES (7948, 5, 2, '昌吉回族自治州', '新疆维吾尔自治区，昌吉回族自治州', '87.304012', '44.014577', '0994', '831100', '652300', 'ChangJiHuiZuZiZhiZhou', 'CJHZZZZ', 'C');
INSERT INTO `sys_area` VALUES (7949, 5, 3, '五家渠市', '新疆维吾尔自治区，五家渠市', '87.526884', '44.167401', '0994', '831300', '659004', 'WuJiaQuShi', 'WJQS', 'W');
INSERT INTO `sys_area` VALUES (7950, 5, 2, '巴音郭楞蒙古自治州', '新疆维吾尔自治区，巴音郭楞蒙古自治州', '86.150969', '41.768552', '0996', '841000', '652800', 'BaYinGuoLengMengGuZiZhiZhou', 'BYGLMGZZZ', 'B');
INSERT INTO `sys_area` VALUES (7951, 5, 3, '阿拉尔市', '新疆维吾尔自治区，阿拉尔市', '81.285884', '40.541914', '0997', '843300', '659002', 'ALaErShi', 'ALES', 'A');
INSERT INTO `sys_area` VALUES (7952, 5, 3, '图木舒克市', '新疆维吾尔自治区，图木舒克市', '79.077978', '39.867316', '0998', '843806', '659003', 'TuMuShuKeShi', 'TMSKS', 'T');
INSERT INTO `sys_area` VALUES (7953, 5, 2, '喀什地区', '新疆维吾尔自治区，喀什地区', '75.989138', '39.467664', '0998', '844000', '653100', 'KaShenDiQu', 'KSDQ', 'K');
INSERT INTO `sys_area` VALUES (7954, 5, 2, '伊犁哈萨克自治州', '新疆维吾尔自治区，伊犁哈萨克自治州', '81.317946', '43.92186', '0999', '835100', '654000', 'YiLiHaSaKeZiZhiZhou', 'YLHSKZZZ', 'Y');
INSERT INTO `sys_area` VALUES (7955, 5, 2, '乌鲁木齐市', '新疆维吾尔自治区，乌鲁木齐市', '87.617733', '43.792818', '0991', '830002', '650100', 'WuLuMuQiShi', 'WLMQS', 'W');
INSERT INTO `sys_area` VALUES (7956, 5, 2, '阿克苏地区', '新疆维吾尔自治区，阿克苏地区', '80.265068', '41.170712', '0997', '843000', '652900', 'AKeSuDiQu', 'AKSDQ', 'A');
INSERT INTO `sys_area` VALUES (7957, 5, 2, '克孜勒苏柯尔克孜自治州', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州', '76.172825', '39.713431', '0908', '845350', '653000', 'KeZiLeSuKeErKeZiZiZhiZhou', 'KZLSKEKZZZZ', 'K');
INSERT INTO `sys_area` VALUES (7958, 5, 2, '哈密市', '新疆维吾尔自治区，哈密市', '93.51316', '42.833248', '0902', '839000', '650500', 'HaMiShi', 'HMS', 'H');
INSERT INTO `sys_area` VALUES (7959, 5, 2, '吐鲁番市', '新疆维吾尔自治区，吐鲁番市', '89.184078', '42.947613', '0995', '838000', '650400', 'TuLuFanShi', 'TLFS', 'T');
INSERT INTO `sys_area` VALUES (7971, 7940, 3, '温泉县', '新疆维吾尔自治区，博尔塔拉蒙古自治州，温泉县', '81.03099', '44.973751', '0909', '833500', '652723', 'WenQuanXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (7972, 7940, 3, '阿拉山口市', '新疆维吾尔自治区，博尔塔拉蒙古自治州，阿拉山口市', '82.569389', '45.16777', '0909', '833400', '652702', 'ALaShanKouShi', 'ALSKS', 'A');
INSERT INTO `sys_area` VALUES (7973, 7940, 3, '博乐市', '新疆维吾尔自治区，博尔塔拉蒙古自治州，博乐市', '82.072237', '44.903087', '0909', '833400', '652701', 'BoLeShi', 'BLS', 'B');
INSERT INTO `sys_area` VALUES (7974, 7940, 3, '精河县', '新疆维吾尔自治区，博尔塔拉蒙古自治州，精河县', '82.892938', '44.605645', '0909', '833300', '652722', 'JingHeXian', 'JHX', 'J');
INSERT INTO `sys_area` VALUES (8008, 7941, 3, '民丰县', '新疆维吾尔自治区，和田地区，民丰县', '82.692354', '37.064909', '0903', '848500', '653227', 'MinFengXian', 'MFX', 'M');
INSERT INTO `sys_area` VALUES (8009, 7941, 3, '于田县', '新疆维吾尔自治区，和田地区，于田县', '81.667845', '36.854628', '0903', '848400', '653226', 'YuTianXian', 'YTX', 'Y');
INSERT INTO `sys_area` VALUES (8010, 7941, 3, '和田市', '新疆维吾尔自治区，和田地区，和田市', '79.927542', '37.108944', '0903', '848000', '653201', 'HeTianShi', 'HTS', 'H');
INSERT INTO `sys_area` VALUES (8011, 7941, 3, '洛浦县', '新疆维吾尔自治区，和田地区，洛浦县', '80.184038', '37.074377', '0903', '848200', '653224', 'LuoPuXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (8012, 7941, 3, '皮山县', '新疆维吾尔自治区，和田地区，皮山县', '78.282301', '37.616332', '0903', '845150', '653223', 'PiShanXian', 'PSX', 'P');
INSERT INTO `sys_area` VALUES (8013, 7941, 3, '和田县', '新疆维吾尔自治区，和田地区，和田县', '79.81907', '37.120031', '0903', '848000', '653221', 'HeTianXian', 'HTX', 'H');
INSERT INTO `sys_area` VALUES (8014, 7941, 3, '墨玉县', '新疆维吾尔自治区，和田地区，墨玉县', '79.736629', '37.271511', '0903', '848100', '653222', 'MoYuXian', 'MYX', 'M');
INSERT INTO `sys_area` VALUES (8015, 7941, 3, '策勒县', '新疆维吾尔自治区，和田地区，策勒县', '80.803572', '37.001672', '0903', '848300', '653225', 'CeLeXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (8124, 7942, 3, '塔城市', '新疆维吾尔自治区，塔城地区，塔城市', '82.983988', '46.746281', '0901', '834700', '654201', 'TaChengShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (8125, 7942, 3, '托里县', '新疆维吾尔自治区，塔城地区，托里县', '83.60469', '45.935863', '0901', '834500', '654224', 'TuoLiXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (8126, 7942, 3, '和布克赛尔蒙古自治县', '新疆维吾尔自治区，塔城地区，和布克赛尔蒙古自治县', '85.733551', '46.793001', '0990', '834400', '654226', 'HeBuKeSaiErMengGuZiZhiXian', 'HBKSEMGZZX', 'H');
INSERT INTO `sys_area` VALUES (8127, 7942, 3, '裕民县', '新疆维吾尔自治区，塔城地区，裕民县', '82.982157', '46.202781', '0901', '834800', '654225', 'YuMinXian', 'YMX', 'Y');
INSERT INTO `sys_area` VALUES (8128, 7942, 3, '额敏县', '新疆维吾尔自治区，塔城地区，额敏县', '83.622118', '46.522555', '0901', '834600', '654221', 'EMinXian', 'EMX', 'E');
INSERT INTO `sys_area` VALUES (8129, 7942, 3, '乌苏市', '新疆维吾尔自治区，塔城地区，乌苏市', '84.677624', '44.430115', '0992', '833000', '654202', 'WuSuShi', 'WSS', 'W');
INSERT INTO `sys_area` VALUES (8130, 7942, 3, '沙湾县', '新疆维吾尔自治区，塔城地区，沙湾县', '85.622508', '44.329544', '0993', '832100', '654223', 'ShaWanXian', 'SWX', 'S');
INSERT INTO `sys_area` VALUES (8281, 7946, 3, '哈巴河县', '新疆维吾尔自治区，阿勒泰地区，哈巴河县', '86.418964', '48.059284', '0906', '836700', '654324', 'HaBaHeXian', 'HBHX', 'H');
INSERT INTO `sys_area` VALUES (8282, 7946, 3, '吉木乃县', '新疆维吾尔自治区，阿勒泰地区，吉木乃县', '85.876064', '47.434633', '0906', '836800', '654326', 'JiMuNaiXian', 'JMNX', 'J');
INSERT INTO `sys_area` VALUES (8283, 7946, 3, '布尔津县', '新疆维吾尔自治区，阿勒泰地区，布尔津县', '86.86186', '47.70453', '0906', '836600', '654321', 'BuErJinXian', 'BEJX', 'B');
INSERT INTO `sys_area` VALUES (8284, 7946, 3, '富蕴县', '新疆维吾尔自治区，阿勒泰地区，富蕴县', '89.524993', '46.993106', '0906', '836100', '654322', 'FuYunXian', 'FYX', 'F');
INSERT INTO `sys_area` VALUES (8285, 7946, 3, '青河县', '新疆维吾尔自治区，阿勒泰地区，青河县', '90.381561', '46.672446', '0906', '836200', '654325', 'QingHeXian', 'QHX', 'Q');
INSERT INTO `sys_area` VALUES (8286, 7946, 3, '阿勒泰市', '新疆维吾尔自治区，阿勒泰地区，阿勒泰市', '88.138743', '47.848911', '0906', '836500', '654301', 'ALeTaiShi', 'ALTS', 'A');
INSERT INTO `sys_area` VALUES (8287, 7946, 3, '福海县', '新疆维吾尔自治区，阿勒泰地区，福海县', '87.494569', '47.113128', '0906', '836400', '654323', 'FuHaiXian', 'FHX', 'F');
INSERT INTO `sys_area` VALUES (8353, 7947, 3, '乌尔禾区', '新疆维吾尔自治区，克拉玛依市，乌尔禾区', '85.697767', '46.08776', '0990', '834012', '650205', 'WuErHeQu', 'WEHQ', 'W');
INSERT INTO `sys_area` VALUES (8354, 7947, 3, '克拉玛依区', '新疆维吾尔自治区，克拉玛依市，克拉玛依区', '84.868918', '45.600477', '0990', '834000', '650203', 'KeLaMaYiQu', 'KLMYQ', 'K');
INSERT INTO `sys_area` VALUES (8355, 7947, 3, '白碱滩区', '新疆维吾尔自治区，克拉玛依市，白碱滩区', '85.129882', '45.689021', '0990', '834008', '650204', 'BaiJianTanQu', 'BJTQ', 'B');
INSERT INTO `sys_area` VALUES (8356, 7947, 3, '独山子区', '新疆维吾尔自治区，克拉玛依市，独山子区', '84.882267', '44.327207', '0992', '834021', '650202', 'DuShanZiQu', 'DSZQ', 'D');
INSERT INTO `sys_area` VALUES (8375, 7948, 3, '奇台县', '新疆维吾尔自治区，昌吉回族自治州，奇台县', '89.591437', '44.021996', '0994', '831800', '652325', 'QiTaiXian', 'QTX', 'Q');
INSERT INTO `sys_area` VALUES (8376, 7948, 3, '木垒哈萨克自治县', '新疆维吾尔自治区，昌吉回族自治州，木垒哈萨克自治县', '90.282833', '43.832442', '0994', '831900', '652328', 'MuLeiHaSaKeZiZhiXian', 'MLHSKZZX', 'M');
INSERT INTO `sys_area` VALUES (8377, 7948, 3, '玛纳斯县', '新疆维吾尔自治区，昌吉回族自治州，玛纳斯县', '86.217687', '44.305625', '0994', '832200', '652324', 'MaNaSiXian', 'MNSX', 'M');
INSERT INTO `sys_area` VALUES (8378, 7948, 3, '呼图壁县', '新疆维吾尔自治区，昌吉回族自治州，呼图壁县', '86.888613', '44.189342', '0994', '831200', '652323', 'HuTuBiXian', 'HTBX', 'H');
INSERT INTO `sys_area` VALUES (8379, 7948, 3, '阜康市', '新疆维吾尔自治区，昌吉回族自治州，阜康市', '87.98384', '44.152153', '0994', '831500', '652302', 'FuKangShi', 'FKS', 'F');
INSERT INTO `sys_area` VALUES (8380, 7948, 3, '昌吉市', '新疆维吾尔自治区，昌吉回族自治州，昌吉市', '87.304112', '44.013183', '0994', '831100', '652301', 'ChangJiShi', 'CJS', 'C');
INSERT INTO `sys_area` VALUES (8381, 7948, 3, '吉木萨尔县', '新疆维吾尔自治区，昌吉回族自治州，吉木萨尔县', '89.181288', '43.997162', '0994', '831700', '652327', 'JiMuSaErXian', 'JMSEX', 'J');
INSERT INTO `sys_area` VALUES (8495, 7950, 3, '和硕县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，和硕县', '86.864947', '42.268863', '0996', '841200', '652828', 'HeShuoXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (8496, 7950, 3, '和静县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，和静县', '86.391067', '42.31716', '0996', '841300', '652827', 'HeJingXian', 'HJX', 'H');
INSERT INTO `sys_area` VALUES (8497, 7950, 3, '尉犁县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，尉犁县', '86.263412', '41.337428', '0996', '841500', '652823', 'YuLiXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (8498, 7950, 3, '若羌县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，若羌县', '88.168807', '39.023807', '0996', '841800', '652824', 'RuoQiangXian', 'RQX', 'R');
INSERT INTO `sys_area` VALUES (8499, 7950, 3, '博湖县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，博湖县', '86.631576', '41.980166', '0996', '841400', '652829', 'BoHuXian', 'BHX', 'B');
INSERT INTO `sys_area` VALUES (8500, 7950, 3, '焉耆回族自治县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，焉耆回族自治县', '86.5698', '42.064349', '0996', '841100', '652826', 'YanQiHuiZuZiZhiXian', 'YQHZZZX', 'Y');
INSERT INTO `sys_area` VALUES (8501, 7950, 3, '且末县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，且末县', '85.532629', '38.138562', '0996', '841900', '652825', 'QieMoXian', 'QMX', 'Q');
INSERT INTO `sys_area` VALUES (8502, 7950, 3, '库尔勒市', '新疆维吾尔自治区，巴音郭楞蒙古自治州，库尔勒市', '86.145948', '41.763122', '0996', '841000', '652801', 'KuErLeShi', 'KELS', 'K');
INSERT INTO `sys_area` VALUES (8503, 7950, 3, '轮台县', '新疆维吾尔自治区，巴音郭楞蒙古自治州，轮台县', '84.248542', '41.781266', '0996', '841600', '652822', 'LunTaiXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (8651, 7953, 3, '疏勒县', '新疆维吾尔自治区，喀什地区，疏勒县', '76.053653', '39.399461', '0998', '844200', '653122', 'ShuLeXian', 'SLX', 'S');
INSERT INTO `sys_area` VALUES (8652, 7953, 3, '伽师县', '新疆维吾尔自治区，喀什地区，伽师县', '76.741982', '39.494325', '0998', '844300', '653129', 'JiaShiXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (8653, 7953, 3, '麦盖提县', '新疆维吾尔自治区，喀什地区，麦盖提县', '77.651538', '38.903384', '0998', '844600', '653127', 'MaiGaiTiXian', 'MGTX', 'M');
INSERT INTO `sys_area` VALUES (8654, 7953, 3, '叶城县', '新疆维吾尔自治区，喀什地区，叶城县', '77.420353', '37.884679', '0998', '844900', '653126', 'YeChengXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (8655, 7953, 3, '塔什库尔干塔吉克自治县', '新疆维吾尔自治区，喀什地区，塔什库尔干塔吉克自治县', '75.228068', '37.775437', '0998', '845250', '653131', 'TaShenKuErGanTaJiKeZiZhiXian', 'TSKEGTJKZZX', 'T');
INSERT INTO `sys_area` VALUES (8656, 7953, 3, '岳普湖县', '新疆维吾尔自治区，喀什地区，岳普湖县', '76.7724', '39.235248', '0998', '844400', '653128', 'YuePuHuXian', 'YPHX', 'Y');
INSERT INTO `sys_area` VALUES (8657, 7953, 3, '泽普县', '新疆维吾尔自治区，喀什地区，泽普县', '77.273593', '38.191217', '0998', '844800', '653124', 'ZePuXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (8658, 7953, 3, '莎车县', '新疆维吾尔自治区，喀什地区，莎车县', '77.248884', '38.414499', '0998', '844700', '653125', 'SuoCheXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (8659, 7953, 3, '巴楚县', '新疆维吾尔自治区，喀什地区，巴楚县', '78.55041', '39.783479', '0998', '843800', '653130', 'BaChuXian', 'BCX', 'B');
INSERT INTO `sys_area` VALUES (8660, 7953, 3, '英吉沙县', '新疆维吾尔自治区，喀什地区，英吉沙县', '76.174292', '38.929839', '0998', '844500', '653123', 'YingJiShaXian', 'YJSX', 'Y');
INSERT INTO `sys_area` VALUES (8661, 7953, 3, '疏附县', '新疆维吾尔自治区，喀什地区，疏附县', '75.863075', '39.378306', '0998', '844100', '653121', 'ShuFuXian', 'SFX', 'S');
INSERT INTO `sys_area` VALUES (8662, 7953, 3, '喀什市', '新疆维吾尔自治区，喀什地区，喀什市', '75.98838', '39.467861', '0998', '844000', '653101', 'KaShenShi', 'KSS', 'K');
INSERT INTO `sys_area` VALUES (8884, 7954, 3, '奎屯市', '新疆维吾尔自治区，伊犁哈萨克自治州，奎屯市', '84.901602', '44.423445', '0999', '833200', '654003', 'KuiTunShi', 'KTS', 'K');
INSERT INTO `sys_area` VALUES (8885, 7954, 3, '尼勒克县', '新疆维吾尔自治区，伊犁哈萨克自治州，尼勒克县', '82.504119', '43.789737', '0999', '835700', '654028', 'NiLeKeXian', 'NLKX', 'N');
INSERT INTO `sys_area` VALUES (8886, 7954, 3, '巩留县', '新疆维吾尔自治区，伊犁哈萨克自治州，巩留县', '82.227044', '43.481618', '0999', '835400', '654024', 'GongLiuXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (8887, 7954, 3, '伊宁县', '新疆维吾尔自治区，伊犁哈萨克自治州，伊宁县', '81.524671', '43.977876', '0999', '835100', '654021', 'YiNingXian', 'YNX', 'Y');
INSERT INTO `sys_area` VALUES (8888, 7954, 3, '特克斯县', '新疆维吾尔自治区，伊犁哈萨克自治州，特克斯县', '81.840058', '43.214861', '0999', '835500', '654027', 'TeKeSiXian', 'TKSX', 'T');
INSERT INTO `sys_area` VALUES (8889, 7954, 3, '新源县', '新疆维吾尔自治区，伊犁哈萨克自治州，新源县', '83.258493', '43.434249', '0999', '835800', '654025', 'XinYuanXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (8890, 7954, 3, '昭苏县', '新疆维吾尔自治区，伊犁哈萨克自治州，昭苏县', '81.126029', '43.157765', '0999', '835600', '654026', 'ZhaoSuXian', 'ZSX', 'Z');
INSERT INTO `sys_area` VALUES (8891, 7954, 3, '察布查尔锡伯自治县', '新疆维吾尔自治区，伊犁哈萨克自治州，察布查尔锡伯自治县', '81.150874', '43.838883', '0999', '835300', '654022', 'ChaBuChaErXiBoZiZhiXian', 'CBCEXBZZX', 'C');
INSERT INTO `sys_area` VALUES (8892, 7954, 3, '伊宁市', '新疆维吾尔自治区，伊犁哈萨克自治州，伊宁市', '81.316343', '43.922209', '0999', '835000', '654002', 'YiNingShi', 'YNS', 'Y');
INSERT INTO `sys_area` VALUES (8893, 7954, 3, '霍城县', '新疆维吾尔自治区，伊犁哈萨克自治州，霍城县', '80.872508', '44.049912', '0999', '835200', '654023', 'HuoChengXian', 'HCX', 'H');
INSERT INTO `sys_area` VALUES (8894, 7954, 3, '霍尔果斯市', '新疆维吾尔自治区，伊犁哈萨克自治州，霍尔果斯市', '80.420759', '44.201669', '0999', '835221', '654004', 'HuoErGuoSiShi', 'HEGSS', 'H');
INSERT INTO `sys_area` VALUES (9057, 7955, 3, '乌鲁木齐县', '新疆维吾尔自治区，乌鲁木齐市，乌鲁木齐县', '87.505603', '43.982546', '0991', '830063', '650121', 'WuLuMuQiXian', 'WLMQX', 'W');
INSERT INTO `sys_area` VALUES (9058, 7955, 3, '达坂城区', '新疆维吾尔自治区，乌鲁木齐市，达坂城区', '88.30994', '43.36181', '0991', '830039', '650107', 'DaBanChengQu', 'DBCQ', 'D');
INSERT INTO `sys_area` VALUES (9059, 7955, 3, '天山区', '新疆维吾尔自治区，乌鲁木齐市，天山区', '87.620116', '43.796428', '0991', '830002', '650102', 'TianShanQu', 'TSQ', 'T');
INSERT INTO `sys_area` VALUES (9060, 7955, 3, '沙依巴克区', '新疆维吾尔自治区，乌鲁木齐市，沙依巴克区', '87.596639', '43.788872', '0991', '830000', '650103', 'ShaYiBaKeQu', 'SYBKQ', 'S');
INSERT INTO `sys_area` VALUES (9061, 7955, 3, '头屯河区', '新疆维吾尔自治区，乌鲁木齐市，头屯河区', '87.425823', '43.876053', '0991', '830022', '650106', 'TouTunHeQu', 'TTHQ', 'T');
INSERT INTO `sys_area` VALUES (9062, 7955, 3, '新市区', '新疆维吾尔自治区，乌鲁木齐市，新市区', '87.560653', '43.870882', '0991', '830011', '650104', 'XinShiQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (9063, 7955, 3, '米东区', '新疆维吾尔自治区，乌鲁木齐市，米东区', '87.691801', '43.960982', '0991', '830019', '650109', 'MiDongQu', 'MDQ', 'M');
INSERT INTO `sys_area` VALUES (9064, 7955, 3, '水磨沟区', '新疆维吾尔自治区，乌鲁木齐市，水磨沟区', '87.613093', '43.816747', '0991', '830017', '650105', 'ShuiMoGouQu', 'SMGQ', 'S');
INSERT INTO `sys_area` VALUES (9162, 7956, 3, '沙雅县', '新疆维吾尔自治区，阿克苏地区，沙雅县', '82.78077', '41.226268', '0997', '842200', '652924', 'ShaYaXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (9163, 7956, 3, '温宿县', '新疆维吾尔自治区，阿克苏地区，温宿县', '80.243273', '41.272995', '0997', '843100', '652922', 'WenSuXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (9164, 7956, 3, '拜城县', '新疆维吾尔自治区，阿克苏地区，拜城县', '81.869881', '41.796101', '0997', '842300', '652926', 'BaiChengXian', 'BCX', 'B');
INSERT INTO `sys_area` VALUES (9165, 7956, 3, '新和县', '新疆维吾尔自治区，阿克苏地区，新和县', '82.610828', '41.551176', '0997', '842100', '652925', 'XinHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (9166, 7956, 3, '库车县', '新疆维吾尔自治区，阿克苏地区，库车县', '82.96304', '41.717141', '0997', '842000', '652923', 'KuCheXian', 'KCX', 'K');
INSERT INTO `sys_area` VALUES (9167, 7956, 3, '阿克苏市', '新疆维吾尔自治区，阿克苏地区，阿克苏市', '80.2629', '41.171272', '0997', '843000', '652901', 'AKeSuShi', 'AKSS', 'A');
INSERT INTO `sys_area` VALUES (9168, 7956, 3, '柯坪县', '新疆维吾尔自治区，阿克苏地区，柯坪县', '79.04785', '40.50624', '0997', '843600', '652929', 'KePingXian', 'KPX', 'K');
INSERT INTO `sys_area` VALUES (9169, 7956, 3, '阿瓦提县', '新疆维吾尔自治区，阿克苏地区，阿瓦提县', '80.378426', '40.638422', '0997', '843200', '652928', 'AWaTiXian', 'AWTX', 'A');
INSERT INTO `sys_area` VALUES (9170, 7956, 3, '乌什县', '新疆维吾尔自治区，阿克苏地区，乌什县', '79.230805', '41.21587', '0997', '843400', '652927', 'WuShenXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (9314, 7957, 3, '阿图什市', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿图什市', '76.173939', '39.712898', '0908', '845350', '653001', 'ATuShenShi', 'ATSS', 'A');
INSERT INTO `sys_area` VALUES (9315, 7957, 3, '乌恰县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，乌恰县', '75.25969', '39.716633', '0908', '845450', '653024', 'WuQiaXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (9316, 7957, 3, '阿合奇县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿合奇县', '78.450164', '40.937567', '0997', '843500', '653023', 'AHeQiXian', 'AHQX', 'A');
INSERT INTO `sys_area` VALUES (9317, 7957, 3, '阿克陶县', '新疆维吾尔自治区，克孜勒苏柯尔克孜自治州，阿克陶县', '75.945159', '39.147079', '0908', '845550', '653022', 'AKeTaoXian', 'AKTX', 'A');
INSERT INTO `sys_area` VALUES (9364, 7958, 3, '伊吾县', '新疆维吾尔自治区，哈密市，伊吾县', '94.692773', '43.252012', '0902', '839300', '650522', 'YiWuXian', 'YWX', 'Y');
INSERT INTO `sys_area` VALUES (9365, 7958, 3, '巴里坤哈萨克自治县', '新疆维吾尔自治区，哈密市，巴里坤哈萨克自治县', '93.021795', '43.599032', '0902', '839200', '650521', 'BaLiKunHaSaKeZiZhiXian', 'BLKHSKZZX', 'B');
INSERT INTO `sys_area` VALUES (9366, 7958, 3, '伊州区', '新疆维吾尔自治区，哈密市，伊州区', '93.509174', '42.833888', '0902', '839000', '650502', 'YiZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (9425, 7959, 3, '高昌区', '新疆维吾尔自治区，吐鲁番市，高昌区', '89.182324', '42.947627', '0995', '838000', '650402', 'GaoChangQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (9426, 7959, 3, '鄯善县', '新疆维吾尔自治区，吐鲁番市，鄯善县', '90.212692', '42.865503', '0995', '838200', '650421', 'ShanShanXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (9427, 7959, 3, '托克逊县', '新疆维吾尔自治区，吐鲁番市，托克逊县', '88.655771', '42.793536', '0995', '838100', '650422', 'TuoKeXunXian', 'TKXX', 'T');
INSERT INTO `sys_area` VALUES (9463, 6, 2, '十堰市', '湖北省，十堰市', '110.787916', '32.646907', '0719', '442000', '420300', 'ShiYanShi', 'SYS', 'S');
INSERT INTO `sys_area` VALUES (9464, 6, 2, '宜昌市', '湖北省，宜昌市', '111.290843', '30.702636', '0717', '443000', '420500', 'YiChangShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (9465, 6, 2, '孝感市', '湖北省，孝感市', '113.926655', '30.926423', '0712', '432100', '420900', 'XiaoGanShi', 'XGS', 'X');
INSERT INTO `sys_area` VALUES (9466, 6, 2, '武汉市', '湖北省，武汉市', '114.298572', '30.584355', '027', '430014', '420100', 'WuHanShi', 'WHS', 'W');
INSERT INTO `sys_area` VALUES (9467, 6, 2, '恩施土家族苗族自治州', '湖北省，恩施土家族苗族自治州', '109.48699', '30.283114', '0718', '445000', '422800', 'EnShiTuJiaZuMiaoZuZiZhiZhou', 'ESTJZMZZZZ', 'E');
INSERT INTO `sys_area` VALUES (9468, 6, 3, '天门市', '湖北省，天门市', '113.165862', '30.653061', '0728', '431700', '429006', 'TianMenShi', 'TMS', 'T');
INSERT INTO `sys_area` VALUES (9469, 6, 2, '黄冈市', '湖北省，黄冈市', '114.879365', '30.447711', '0713', '438000', '421100', 'HuangGangShi', 'HGS', 'H');
INSERT INTO `sys_area` VALUES (9470, 6, 3, '潜江市', '湖北省，潜江市', '112.896866', '30.421215', '0728', '433199', '429005', 'QianJiangShi', 'QJS', 'Q');
INSERT INTO `sys_area` VALUES (9471, 6, 2, '襄阳市', '湖北省，襄阳市', '112.144146', '32.042426', '0710', '441021', '420600', 'XiangYangShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (9472, 6, 2, '荆门市', '湖北省，荆门市', '112.204251', '31.03542', '0724', '448000', '420800', 'JingMenShi', 'JMS', 'J');
INSERT INTO `sys_area` VALUES (9473, 6, 3, '仙桃市', '湖北省，仙桃市', '113.453974', '30.364953', '0728', '433000', '429004', 'XianTaoShi', 'XTS', 'X');
INSERT INTO `sys_area` VALUES (9474, 6, 3, '神农架林区', '湖北省，神农架林区', '110.671525', '31.744449', '0719', '442400', '429021', 'ShenNongJiaLinQu', 'SNJLQ', 'S');
INSERT INTO `sys_area` VALUES (9475, 6, 2, '随州市', '湖北省，随州市', '113.37377', '31.717497', '0722', '441300', '421300', 'SuiZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (9476, 6, 2, '荆州市', '湖北省，荆州市', '112.23813', '30.326857', '0716', '434000', '421000', 'JingZhouShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (9477, 6, 2, '咸宁市', '湖北省，咸宁市', '114.328963', '29.832798', '0715', '437000', '421200', 'XianNingShi', 'XNS', 'X');
INSERT INTO `sys_area` VALUES (9478, 6, 2, '黄石市', '湖北省，黄石市', '115.077048', '30.220074', '0714', '435003', '420200', 'HuangShiShi', 'HSS', 'H');
INSERT INTO `sys_area` VALUES (9479, 6, 2, '鄂州市', '湖北省，鄂州市', '114.890593', '30.396536', '0711', '436000', '420700', 'EZhouShi', 'EZS', 'E');
INSERT INTO `sys_area` VALUES (9480, 9463, 3, '郧阳区', '湖北省，十堰市，郧阳区', '110.812099', '32.838267', '0719', '442500', '420304', 'YunYangQu', 'YYQ', 'Y');
INSERT INTO `sys_area` VALUES (9481, 9463, 3, '丹江口市', '湖北省，十堰市，丹江口市', '111.513793', '32.538839', '0719', '442700', '420381', 'DanJiangKouShi', 'DJKS', 'D');
INSERT INTO `sys_area` VALUES (9482, 9463, 3, '张湾区', '湖北省，十堰市，张湾区', '110.772365', '32.652516', '0719', '442001', '420303', 'ZhangWanQu', 'ZWQ', 'Z');
INSERT INTO `sys_area` VALUES (9483, 9463, 3, '茅箭区', '湖北省，十堰市，茅箭区', '110.78621', '32.644463', '0719', '442012', '420302', 'MaoJianQu', 'MJQ', 'M');
INSERT INTO `sys_area` VALUES (9484, 9463, 3, '竹溪县', '湖北省，十堰市，竹溪县', '109.717196', '32.315342', '0719', '442300', '420324', 'ZhuXiXian', 'ZXX', 'Z');
INSERT INTO `sys_area` VALUES (9485, 9463, 3, '房县', '湖北省，十堰市，房县', '110.741966', '32.055002', '0719', '442100', '420325', 'FangXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (9486, 9463, 3, '竹山县', '湖北省，十堰市，竹山县', '110.2296', '32.22586', '0719', '442200', '420323', 'ZhuShanXian', 'ZSX', 'Z');
INSERT INTO `sys_area` VALUES (9487, 9463, 3, '郧西县', '湖北省，十堰市，郧西县', '110.426472', '32.991457', '0719', '442600', '420322', 'YunXiXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (9644, 9464, 3, '兴山县', '湖北省，宜昌市，兴山县', '110.754499', '31.34795', '0717', '443799', '420526', 'XingShanXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (9645, 9464, 3, '远安县', '湖北省，宜昌市，远安县', '111.64331', '31.059626', '0717', '444299', '420525', 'YuanAnXian', 'YAX', 'Y');
INSERT INTO `sys_area` VALUES (9646, 9464, 3, '夷陵区', '湖北省，宜昌市，夷陵区', '111.326747', '30.770199', '0717', '443100', '420506', 'YiLingQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (9647, 9464, 3, '当阳市', '湖北省，宜昌市，当阳市', '111.793419', '30.824492', '0717', '444100', '420582', 'DangYangShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (9648, 9464, 3, '秭归县', '湖北省，宜昌市，秭归县', '110.976785', '30.823908', '0717', '443600', '420527', 'ZiGuiXian', 'ZGX', 'Z');
INSERT INTO `sys_area` VALUES (9649, 9464, 3, '西陵区', '湖北省，宜昌市，西陵区', '111.295468', '30.702476', '0717', '443000', '420502', 'XiLingQu', 'XLQ', 'X');
INSERT INTO `sys_area` VALUES (9650, 9464, 3, '长阳土家族自治县', '湖北省，宜昌市，长阳土家族自治县', '111.198475', '30.466534', '0717', '443500', '420528', 'ChangYangTuJiaZuZiZhiXian', 'CYTJZZZX', 'C');
INSERT INTO `sys_area` VALUES (9651, 9464, 3, '点军区', '湖北省，宜昌市，点军区', '111.268163', '30.692322', '0717', '443004', '420504', 'DianJunQu', 'DJQ', 'D');
INSERT INTO `sys_area` VALUES (9652, 9464, 3, '猇亭区', '湖北省，宜昌市，猇亭区', '111.427642', '30.530744', '0717', '443007', '420505', 'XiaoTingQu', 'XTQ', 'X');
INSERT INTO `sys_area` VALUES (9653, 9464, 3, '枝江市', '湖北省，宜昌市，枝江市', '111.751799', '30.425364', '0717', '443200', '420583', 'ZhiJiangShi', 'ZJS', 'Z');
INSERT INTO `sys_area` VALUES (9654, 9464, 3, '伍家岗区', '湖北省，宜昌市，伍家岗区', '111.307215', '30.679053', '0717', '443000', '420503', 'WuJiaGangQu', 'WJGQ', 'W');
INSERT INTO `sys_area` VALUES (9655, 9464, 3, '宜都市', '湖北省，宜昌市，宜都市', '111.454367', '30.387234', '0717', '443300', '420581', 'YiDuShi', 'YDS', 'Y');
INSERT INTO `sys_area` VALUES (9656, 9464, 3, '五峰土家族自治县', '湖北省，宜昌市，五峰土家族自治县', '110.674938', '30.199252', '0717', '443400', '420529', 'WuFengTuJiaZuZiZhiXian', 'WFTJZZZX', 'W');
INSERT INTO `sys_area` VALUES (9772, 9465, 3, '大悟县', '湖北省，孝感市，大悟县', '114.126249', '31.565483', '0712', '432800', '420922', 'DaWuXian', 'DWX', 'D');
INSERT INTO `sys_area` VALUES (9773, 9465, 3, '孝昌县', '湖北省，孝感市，孝昌县', '113.988964', '31.251618', '0712', '432900', '420921', 'XiaoChangXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (9774, 9465, 3, '安陆市', '湖北省，孝感市，安陆市', '113.690401', '31.26174', '0712', '432600', '420982', 'AnLuShi', 'ALS', 'A');
INSERT INTO `sys_area` VALUES (9775, 9465, 3, '云梦县', '湖北省，孝感市，云梦县', '113.750616', '31.021691', '0712', '432500', '420923', 'YunMengXian', 'YMX', 'Y');
INSERT INTO `sys_area` VALUES (9776, 9465, 3, '应城市', '湖北省，孝感市，应城市', '113.573842', '30.939038', '0712', '432400', '420981', 'YingChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (9777, 9465, 3, '孝南区', '湖北省，孝感市，孝南区', '113.925849', '30.925966', '0712', '432100', '420902', 'XiaoNanQu', 'XNQ', 'X');
INSERT INTO `sys_area` VALUES (9778, 9465, 3, '汉川市', '湖北省，孝感市，汉川市', '113.835301', '30.652165', '0712', '431600', '420984', 'HanChuanShi', 'HCS', 'H');
INSERT INTO `sys_area` VALUES (9905, 9466, 3, '黄陂区', '湖北省，武汉市，黄陂区', '114.374025', '30.874155', '027', '432200', '420116', 'HuangBeiQu', 'HBQ', 'H');
INSERT INTO `sys_area` VALUES (9906, 9466, 3, '新洲区', '湖北省，武汉市，新洲区', '114.802108', '30.842149', '027', '431400', '420117', 'XinZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (9907, 9466, 3, '东西湖区', '湖北省，武汉市，东西湖区', '114.142483', '30.622467', '027', '430040', '420112', 'DongXiHuQu', 'DXHQ', 'D');
INSERT INTO `sys_area` VALUES (9908, 9466, 3, '江岸区', '湖北省，武汉市，江岸区', '114.30304', '30.594911', '027', '430014', '420102', 'JiangAnQu', 'JAQ', 'J');
INSERT INTO `sys_area` VALUES (9909, 9466, 3, '蔡甸区', '湖北省，武汉市，蔡甸区', '114.029341', '30.582186', '027', '430100', '420114', 'CaiDianQu', 'CDQ', 'C');
INSERT INTO `sys_area` VALUES (9910, 9466, 3, '汉南区', '湖北省，武汉市，汉南区', '114.08124', '30.309637', '027', '430090', '420113', 'HanNanQu', 'HNQ', 'H');
INSERT INTO `sys_area` VALUES (9911, 9466, 3, '汉阳区', '湖北省，武汉市，汉阳区', '114.265807', '30.549326', '027', '430050', '420105', 'HanYangQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (9912, 9466, 3, '硚口区', '湖北省，武汉市，硚口区', '114.264568', '30.57061', '027', '430033', '420104', 'QiaoKouQu', 'QKQ', 'Q');
INSERT INTO `sys_area` VALUES (9913, 9466, 3, '江汉区', '湖北省，武汉市，江汉区', '114.283109', '30.578771', '027', '430021', '420103', 'JiangHanQu', 'JHQ', 'J');
INSERT INTO `sys_area` VALUES (9914, 9466, 3, '江夏区', '湖北省，武汉市，江夏区', '114.313961', '30.349045', '027', '430200', '420115', 'JiangXiaQu', 'JXQ', 'J');
INSERT INTO `sys_area` VALUES (9915, 9466, 3, '青山区', '湖北省，武汉市，青山区', '114.39707', '30.634215', '027', '430080', '420107', 'QingShanQu', 'QSQ', 'Q');
INSERT INTO `sys_area` VALUES (9916, 9466, 3, '洪山区', '湖北省，武汉市，洪山区', '114.400718', '30.504259', '027', '430070', '420111', 'HongShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (9917, 9466, 3, '武昌区', '湖北省，武汉市，武昌区', '114.307344', '30.546536', '027', '430061', '420106', 'WuChangQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (10116, 9467, 3, '建始县', '湖北省，恩施土家族苗族自治州，建始县', '109.723822', '30.601632', '0718', '445300', '422822', 'JianShiXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (10117, 9467, 3, '利川市', '湖北省，恩施土家族苗族自治州，利川市', '108.943491', '30.294247', '0718', '445400', '422802', 'LiChuanShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (10118, 9467, 3, '恩施市', '湖北省，恩施土家族苗族自治州，恩施市', '109.486761', '30.282406', '0718', '445000', '422801', 'EnShiShi', 'ESS', 'E');
INSERT INTO `sys_area` VALUES (10119, 9467, 3, '鹤峰县', '湖北省，恩施土家族苗族自治州，鹤峰县', '110.033699', '29.887298', '0718', '445800', '422828', 'HeFengXian', 'HFX', 'H');
INSERT INTO `sys_area` VALUES (10120, 9467, 3, '来凤县', '湖北省，恩施土家族苗族自治州，来凤县', '109.408328', '29.506945', '0718', '445700', '422827', 'LaiFengXian', 'LFX', 'L');
INSERT INTO `sys_area` VALUES (10121, 9467, 3, '巴东县', '湖北省，恩施土家族苗族自治州，巴东县', '110.336665', '31.041403', '0718', '444300', '422823', 'BaDongXian', 'BDX', 'B');
INSERT INTO `sys_area` VALUES (10122, 9467, 3, '宣恩县', '湖北省，恩施土家族苗族自治州，宣恩县', '109.482819', '29.98867', '0718', '445500', '422825', 'XuanEnXian', 'XEX', 'X');
INSERT INTO `sys_area` VALUES (10123, 9467, 3, '咸丰县', '湖北省，恩施土家族苗族自治州，咸丰县', '109.15041', '29.678967', '0718', '445600', '422826', 'XianFengXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (10243, 9469, 3, '红安县', '湖北省，黄冈市，红安县', '114.615095', '31.284777', '0713', '438401', '421122', 'HongAnXian', 'HAX', 'H');
INSERT INTO `sys_area` VALUES (10244, 9469, 3, '英山县', '湖北省，黄冈市，英山县', '115.67753', '30.735794', '0713', '438700', '421124', 'YingShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (10245, 9469, 3, '罗田县', '湖北省，黄冈市，罗田县', '115.398984', '30.781679', '0713', '438600', '421123', 'LuoTianXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (10246, 9469, 3, '团风县', '湖北省，黄冈市，团风县', '114.872029', '30.63569', '0713', '438800', '421121', 'TuanFengXian', 'TFX', 'T');
INSERT INTO `sys_area` VALUES (10247, 9469, 3, '浠水县', '湖北省，黄冈市，浠水县', '115.26344', '30.454837', '0713', '438200', '421125', 'XiShuiXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (10248, 9469, 3, '麻城市', '湖北省，黄冈市，麻城市', '115.02541', '31.177906', '0713', '438300', '421181', 'MaChengShi', 'MCS', 'M');
INSERT INTO `sys_area` VALUES (10249, 9469, 3, '蕲春县', '湖北省，黄冈市，蕲春县', '115.433964', '30.234927', '0713', '435300', '421126', 'QiChunXian', 'QCX', 'Q');
INSERT INTO `sys_area` VALUES (10250, 9469, 3, '黄州区', '湖北省，黄冈市，黄州区', '114.878934', '30.447435', '0713', '438000', '421102', 'HuangZhouQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (10251, 9469, 3, '黄梅县', '湖北省，黄冈市，黄梅县', '115.942548', '30.075113', '0713', '435500', '421127', 'HuangMeiXian', 'HMX', 'H');
INSERT INTO `sys_area` VALUES (10252, 9469, 3, '武穴市', '湖北省，黄冈市，武穴市', '115.56242', '29.849342', '0713', '435400', '421182', 'WuXueShi', 'WXS', 'W');
INSERT INTO `sys_area` VALUES (10445, 9471, 3, '老河口市', '湖北省，襄阳市，老河口市', '111.675732', '32.385438', '0710', '441800', '420682', 'LaoHeKouShi', 'LHKS', 'L');
INSERT INTO `sys_area` VALUES (10446, 9471, 3, '谷城县', '湖北省，襄阳市，谷城县', '111.640147', '32.262676', '0710', '441700', '420625', 'GuChengXian', 'GCX', 'G');
INSERT INTO `sys_area` VALUES (10447, 9471, 3, '枣阳市', '湖北省，襄阳市，枣阳市', '112.765268', '32.123083', '0710', '441200', '420683', 'ZaoYangShi', 'ZYS', 'Z');
INSERT INTO `sys_area` VALUES (10448, 9471, 3, '南漳县', '湖北省，襄阳市，南漳县', '111.844424', '31.77692', '0710', '441500', '420624', 'NanZhangXian', 'NZX', 'N');
INSERT INTO `sys_area` VALUES (10449, 9471, 3, '宜城市', '湖北省，襄阳市，宜城市', '112.261441', '31.709203', '0710', '441400', '420684', 'YiChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (10450, 9471, 3, '襄州区', '湖北省，襄阳市，襄州区', '112.197378', '32.085517', '0710', '441100', '420607', 'XiangZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (10451, 9471, 3, '保康县', '湖北省，襄阳市，保康县', '111.262235', '31.873507', '0710', '441600', '420626', 'BaoKangXian', 'BKX', 'B');
INSERT INTO `sys_area` VALUES (10452, 9471, 3, '樊城区', '湖北省，襄阳市，樊城区', '112.13957', '32.058589', '0710', '441002', '420606', 'FanChengQu', 'FCQ', 'F');
INSERT INTO `sys_area` VALUES (10453, 9471, 3, '襄城区', '湖北省，襄阳市，襄城区', '112.150327', '32.015088', '0710', '441021', '420602', 'XiangChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (10580, 9472, 3, '京山县', '湖北省，荆门市，京山县', '113.114595', '31.022458', '0724', '431800', '420821', 'JingShanXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (10581, 9472, 3, '东宝区', '湖北省，荆门市，东宝区', '112.204804', '31.033461', '0724', '448004', '420802', 'DongBaoQu', 'DBQ', 'D');
INSERT INTO `sys_area` VALUES (10582, 9472, 3, '钟祥市', '湖北省，荆门市，钟祥市', '112.587267', '31.165573', '0724', '431900', '420881', 'ZhongXiangShi', 'ZXS', 'Z');
INSERT INTO `sys_area` VALUES (10583, 9472, 3, '掇刀区', '湖北省，荆门市，掇刀区', '112.198413', '30.980798', '0724', '448124', '420804', 'DuoDaoQu', 'DDQ', 'D');
INSERT INTO `sys_area` VALUES (10584, 9472, 3, '沙洋县', '湖北省，荆门市，沙洋县', '112.595218', '30.70359', '0724', '448200', '420822', 'ShaYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (10701, 9475, 3, '广水市', '湖北省，随州市，广水市', '113.826601', '31.617731', '0722', '432700', '421381', 'GuangShuiShi', 'GSS', 'G');
INSERT INTO `sys_area` VALUES (10702, 9475, 3, '曾都区', '湖北省，随州市，曾都区', '113.374519', '31.717521', '0722', '441300', '421303', 'CengDouQu', 'CDQ', 'C');
INSERT INTO `sys_area` VALUES (10703, 9475, 3, '随县', '湖北省，随州市，随县', '113.301384', '31.854246', '0722', '441309', '421321', 'SuiXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (10754, 9476, 3, '荆州区', '湖北省，荆州市，荆州区', '112.195354', '30.350674', '0716', '434020', '421003', 'JingZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (10755, 9476, 3, '江陵县', '湖北省，荆州市，江陵县', '112.41735', '30.033919', '0716', '434101', '421024', 'JiangLingXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (10756, 9476, 3, '监利县', '湖北省，荆州市，监利县', '112.904344', '29.820079', '0716', '433300', '421023', 'JianLiXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (10757, 9476, 3, '石首市', '湖北省，荆州市，石首市', '112.40887', '29.716437', '0716', '434400', '421081', 'ShiShouShi', 'SSS', 'S');
INSERT INTO `sys_area` VALUES (10758, 9476, 3, '洪湖市', '湖北省，荆州市，洪湖市', '113.470304', '29.81297', '0716', '433200', '421083', 'HongHuShi', 'HHS', 'H');
INSERT INTO `sys_area` VALUES (10759, 9476, 3, '沙市区', '湖北省，荆州市，沙市区', '112.257433', '30.315895', '0716', '434000', '421002', 'ShaShiQu', 'SSQ', 'S');
INSERT INTO `sys_area` VALUES (10760, 9476, 3, '松滋市', '湖北省，荆州市，松滋市', '111.77818', '30.176037', '0716', '434200', '421087', 'SongZiShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (10761, 9476, 3, '公安县', '湖北省，荆州市，公安县', '112.230179', '30.059065', '0716', '434300', '421022', 'GongAnXian', 'GAX', 'G');
INSERT INTO `sys_area` VALUES (10890, 9477, 3, '嘉鱼县', '湖北省，咸宁市，嘉鱼县', '113.921547', '29.973363', '0715', '437200', '421221', 'JiaYuXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (10891, 9477, 3, '崇阳县', '湖北省，咸宁市，崇阳县', '114.049958', '29.54101', '0715', '437500', '421223', 'ChongYangXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (10892, 9477, 3, '通山县', '湖北省，咸宁市，通山县', '114.493163', '29.604455', '0715', '437600', '421224', 'TongShanXian', 'TSX', 'T');
INSERT INTO `sys_area` VALUES (10893, 9477, 3, '咸安区', '湖北省，咸宁市，咸安区', '114.333894', '29.824716', '0715', '437000', '421202', 'XianAnQu', 'XAQ', 'X');
INSERT INTO `sys_area` VALUES (10894, 9477, 3, '赤壁市', '湖北省，咸宁市，赤壁市', '113.88366', '29.716879', '0715', '437300', '421281', 'ChiBiShi', 'CBS', 'C');
INSERT INTO `sys_area` VALUES (10895, 9477, 3, '通城县', '湖北省，咸宁市，通城县', '113.814131', '29.246076', '0715', '437400', '421222', 'TongChengXian', 'TCX', 'T');
INSERT INTO `sys_area` VALUES (10984, 9478, 3, '铁山区', '湖北省，黄石市，铁山区', '114.901366', '30.20601', '0714', '435006', '420205', 'TieShanQu', 'TSQ', 'T');
INSERT INTO `sys_area` VALUES (10985, 9478, 3, '西塞山区', '湖北省，黄石市，西塞山区', '115.093354', '30.205365', '0714', '435001', '420203', 'XiSaiShanQu', 'XSSQ', 'X');
INSERT INTO `sys_area` VALUES (10986, 9478, 3, '下陆区', '湖北省，黄石市，下陆区', '114.975755', '30.177845', '0714', '435005', '420204', 'XiaLuQu', 'XLQ', 'X');
INSERT INTO `sys_area` VALUES (10987, 9478, 3, '阳新县', '湖北省，黄石市，阳新县', '115.212883', '29.841572', '0714', '435200', '420222', 'YangXinXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (10988, 9478, 3, '大冶市', '湖北省，黄石市，大冶市', '114.974842', '30.098804', '0714', '435100', '420281', 'DaYeShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (10989, 9478, 3, '黄石港区', '湖北省，黄石市，黄石港区', '115.090164', '30.212086', '0714', '435000', '420202', 'HuangShiGangQu', 'HSGQ', 'H');
INSERT INTO `sys_area` VALUES (11038, 9479, 3, '华容区', '湖北省，鄂州市，华容区', '114.74148', '30.534468', '0711', '436030', '420703', 'HuaRongQu', 'HRQ', 'H');
INSERT INTO `sys_area` VALUES (11039, 9479, 3, '梁子湖区', '湖北省，鄂州市，梁子湖区', '114.681967', '30.098191', '0711', '436060', '420702', 'LiangZiHuQu', 'LZHQ', 'L');
INSERT INTO `sys_area` VALUES (11040, 9479, 3, '鄂城区', '湖北省，鄂州市，鄂城区', '114.890012', '30.39669', '0711', '436099', '420704', 'EChengQu', 'ECQ', 'E');
INSERT INTO `sys_area` VALUES (11068, 7, 2, '大连市', '辽宁省，大连市', '121.618622', '38.91459', '0411', '116011', '210200', 'DaLianShi', 'DLS', 'D');
INSERT INTO `sys_area` VALUES (11069, 7, 2, '葫芦岛市', '辽宁省，葫芦岛市', '120.856394', '40.755572', '0429', '125000', '211400', 'HuLuDaoShi', 'HLDS', 'H');
INSERT INTO `sys_area` VALUES (11070, 7, 2, '锦州市', '辽宁省，锦州市', '121.135742', '41.119269', '0416', '121000', '210700', 'JinZhouShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (11071, 7, 2, '丹东市', '辽宁省，丹东市', '124.383044', '40.124296', '0415', '118000', '210600', 'DanDongShi', 'DDS', 'D');
INSERT INTO `sys_area` VALUES (11072, 7, 2, '抚顺市', '辽宁省，抚顺市', '123.921109', '41.875956', '024', '113008', '210400', 'FuShunShi', 'FSS', 'F');
INSERT INTO `sys_area` VALUES (11073, 7, 2, '沈阳市', '辽宁省，沈阳市', '123.429096', '41.796767', '024', '110013', '210100', 'ShenYangShi', 'SYS', 'S');
INSERT INTO `sys_area` VALUES (11074, 7, 2, '鞍山市', '辽宁省，鞍山市', '122.995632', '41.110626', '0412', '114001', '210300', 'AnShanShi', 'ASS', 'A');
INSERT INTO `sys_area` VALUES (11075, 7, 2, '铁岭市', '辽宁省，铁岭市', '123.844279', '42.290585', '024', '112000', '211200', 'TieLingShi', 'TLS', 'T');
INSERT INTO `sys_area` VALUES (11076, 7, 2, '辽阳市', '辽宁省，辽阳市', '123.18152', '41.269402', '0419', '111000', '211000', 'LiaoYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (11077, 7, 2, '盘锦市', '辽宁省，盘锦市', '122.06957', '41.124484', '0427', '124010', '211100', 'PanJinShi', 'PJS', 'P');
INSERT INTO `sys_area` VALUES (11078, 7, 2, '营口市', '辽宁省，营口市', '122.235151', '40.667432', '0417', '115003', '210800', 'YingKouShi', 'YKS', 'Y');
INSERT INTO `sys_area` VALUES (11079, 7, 2, '朝阳市', '辽宁省，朝阳市', '120.451176', '41.576758', '0421', '122000', '211300', 'ChaoYangShi', 'CYS', 'C');
INSERT INTO `sys_area` VALUES (11080, 7, 2, '阜新市', '辽宁省，阜新市', '121.648962', '42.011796', '0418', '123000', '210900', 'FuXinShi', 'FXS', 'F');
INSERT INTO `sys_area` VALUES (11081, 7, 2, '本溪市', '辽宁省，本溪市', '123.770519', '41.297909', '024', '117000', '210500', 'BenXiShi', 'BXS', 'B');
INSERT INTO `sys_area` VALUES (11082, 11068, 3, '瓦房店市', '辽宁省，大连市，瓦房店市', '122.002656', '39.63065', '0411', '116300', '210281', 'WaFangDianShi', 'WFDS', 'W');
INSERT INTO `sys_area` VALUES (11083, 11068, 3, '普兰店区', '辽宁省，大连市，普兰店区', '121.9705', '39.401555', '0411', '116299', '210214', 'PuLanDianQu', 'PLDQ', 'P');
INSERT INTO `sys_area` VALUES (11084, 11068, 3, '金州区', '辽宁省，大连市，金州区', '121.789413', '39.052745', '0411', '116600', '210213', 'JinZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (11085, 11068, 3, '长海县', '辽宁省，大连市，长海县', '122.587824', '39.272399', '0411', '116500', '210224', 'ChangHaiXian', 'CHX', 'C');
INSERT INTO `sys_area` VALUES (11086, 11068, 3, '中山区', '辽宁省，大连市，中山区', '121.64376', '38.921553', '0411', '116001', '210202', 'ZhongShanQu', 'ZSQ', 'Z');
INSERT INTO `sys_area` VALUES (11087, 11068, 3, '甘井子区', '辽宁省，大连市，甘井子区', '121.582614', '38.975148', '0411', '116033', '210211', 'GanJingZiQu', 'GJZQ', 'G');
INSERT INTO `sys_area` VALUES (11088, 11068, 3, '庄河市', '辽宁省，大连市，庄河市', '122.970612', '39.69829', '0411', '116400', '210283', 'ZhuangHeShi', 'ZHS', 'Z');
INSERT INTO `sys_area` VALUES (11089, 11068, 3, '旅顺口区', '辽宁省，大连市，旅顺口区', '121.26713', '38.812043', '0411', '116050', '210212', 'LvShunKouQu', 'LSKQ', 'L');
INSERT INTO `sys_area` VALUES (11090, 11068, 3, '西岗区', '辽宁省，大连市，西岗区', '121.616112', '38.914266', '0411', '116011', '210203', 'XiGangQu', 'XGQ', 'X');
INSERT INTO `sys_area` VALUES (11091, 11068, 3, '沙河口区', '辽宁省，大连市，沙河口区', '121.593702', '38.912859', '0411', '116021', '210204', 'ShaHeKouQu', 'SHKQ', 'S');
INSERT INTO `sys_area` VALUES (11256, 11069, 3, '建昌县', '辽宁省，葫芦岛市，建昌县', '119.807776', '40.812871', '0429', '125300', '211422', 'JianChangXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (11257, 11069, 3, '兴城市', '辽宁省，葫芦岛市，兴城市', '120.729365', '40.619413', '0429', '125100', '211481', 'XingChengShi', 'XCS', 'X');
INSERT INTO `sys_area` VALUES (11258, 11069, 3, '龙港区', '辽宁省，葫芦岛市，龙港区', '120.838569', '40.709991', '0429', '125003', '211403', 'LongGangQu', 'LGQ', 'L');
INSERT INTO `sys_area` VALUES (11259, 11069, 3, '绥中县', '辽宁省，葫芦岛市，绥中县', '120.342112', '40.328407', '0429', '125200', '211421', 'SuiZhongXian', 'SZX', 'S');
INSERT INTO `sys_area` VALUES (11260, 11069, 3, '南票区', '辽宁省，葫芦岛市，南票区', '120.752314', '41.098813', '0429', '125027', '211404', 'NanPiaoQu', 'NPQ', 'N');
INSERT INTO `sys_area` VALUES (11261, 11069, 3, '连山区', '辽宁省，葫芦岛市，连山区', '120.85937', '40.755143', '0429', '125001', '211402', 'LianShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (11393, 11070, 3, '黑山县', '辽宁省，锦州市，黑山县', '122.117915', '41.691804', '0416', '121400', '210726', 'HeiShanXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (11394, 11070, 3, '凌海市', '辽宁省，锦州市，凌海市', '121.364236', '41.171738', '0416', '121200', '210781', 'LingHaiShi', 'LHS', 'L');
INSERT INTO `sys_area` VALUES (11395, 11070, 3, '义县', '辽宁省，锦州市，义县', '121.242831', '41.537224', '0416', '121100', '210727', 'YiXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (11396, 11070, 3, '太和区', '辽宁省，锦州市，太和区', '121.107297', '41.105378', '0416', '121012', '210711', 'TaiHeQu', 'THQ', 'T');
INSERT INTO `sys_area` VALUES (11397, 11070, 3, '北镇市', '辽宁省，锦州市，北镇市', '121.795962', '41.598764', '0416', '121300', '210782', 'BeiZhenShi', 'BZS', 'B');
INSERT INTO `sys_area` VALUES (11398, 11070, 3, '凌河区', '辽宁省，锦州市，凌河区', '121.151304', '41.114662', '0416', '121000', '210703', 'LingHeQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (11399, 11070, 3, '古塔区', '辽宁省，锦州市，古塔区', '121.130085', '41.115719', '0416', '121004', '210702', 'GuTaQu', 'GTQ', 'G');
INSERT INTO `sys_area` VALUES (11520, 11071, 3, '振安区', '辽宁省，丹东市，振安区', '124.427709', '40.158557', '0415', '118001', '210604', 'ZhenAnQu', 'ZAQ', 'Z');
INSERT INTO `sys_area` VALUES (11521, 11071, 3, '凤城市', '辽宁省，丹东市，凤城市', '124.071067', '40.457567', '0415', '118100', '210682', 'FengChengShi', 'FCS', 'F');
INSERT INTO `sys_area` VALUES (11522, 11071, 3, '东港市', '辽宁省，丹东市，东港市', '124.149437', '39.883467', '0415', '118300', '210681', 'DongGangShi', 'DGS', 'D');
INSERT INTO `sys_area` VALUES (11523, 11071, 3, '振兴区', '辽宁省，丹东市，振兴区', '124.361153', '40.102801', '0415', '118002', '210603', 'ZhenXingQu', 'ZXQ', 'Z');
INSERT INTO `sys_area` VALUES (11524, 11071, 3, '元宝区', '辽宁省，丹东市，元宝区', '124.397814', '40.136483', '0415', '118000', '210602', 'YuanBaoQu', 'YBQ', 'Y');
INSERT INTO `sys_area` VALUES (11525, 11071, 3, '宽甸满族自治县', '辽宁省，丹东市，宽甸满族自治县', '124.784867', '40.730412', '0415', '118200', '210624', 'KuanDianManZuZiZhiXian', 'KDMZZZX', 'K');
INSERT INTO `sys_area` VALUES (11621, 11072, 3, '清原满族自治县', '辽宁省，抚顺市，清原满族自治县', '124.927192', '42.10135', '024', '113300', '210423', 'QingYuanManZuZiZhiXian', 'QYMZZZX', 'Q');
INSERT INTO `sys_area` VALUES (11622, 11072, 3, '新宾满族自治县', '辽宁省，抚顺市，新宾满族自治县', '125.037547', '41.732456', '024', '113200', '210422', 'XinBinManZuZiZhiXian', 'XBMZZZX', 'X');
INSERT INTO `sys_area` VALUES (11623, 11072, 3, '东洲区', '辽宁省，抚顺市，东洲区', '124.047219', '41.866829', '024', '113003', '210403', 'DongZhouQu', 'DZQ', 'D');
INSERT INTO `sys_area` VALUES (11624, 11072, 3, '望花区', '辽宁省，抚顺市，望花区', '123.801509', '41.851803', '024', '113001', '210404', 'WangHuaQu', 'WHQ', 'W');
INSERT INTO `sys_area` VALUES (11625, 11072, 3, '新抚区', '辽宁省，抚顺市，新抚区', '123.902858', '41.86082', '024', '113008', '210402', 'XinFuQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (11626, 11072, 3, '抚顺县', '辽宁省，抚顺市，抚顺县', '124.097979', '41.922644', '024', '113006', '210421', 'FuShunXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (11627, 11072, 3, '顺城区', '辽宁省，抚顺市，顺城区', '123.917165', '41.881132', '024', '113006', '210411', 'ShunChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (11712, 11073, 3, '新民市', '辽宁省，沈阳市，新民市', '122.828868', '41.996508', '024', '110300', '210181', 'XinMinShi', 'XMS', 'X');
INSERT INTO `sys_area` VALUES (11713, 11073, 3, '沈北新区', '辽宁省，沈阳市，沈北新区', '123.521471', '42.052312', '024', '110121', '210113', 'ShenBeiXinQu', 'SBXQ', 'S');
INSERT INTO `sys_area` VALUES (11714, 11073, 3, '浑南区', '辽宁省，沈阳市，浑南区', '123.458981', '41.741946', '024', '110015', '210112', 'HunNanQu', 'HNQ', 'H');
INSERT INTO `sys_area` VALUES (11715, 11073, 3, '辽中区', '辽宁省，沈阳市，辽中区', '122.731269', '41.512725', '024', '110200', '210115', 'LiaoZhongQu', 'LZQ', 'L');
INSERT INTO `sys_area` VALUES (11716, 11073, 3, '于洪区', '辽宁省，沈阳市，于洪区', '123.310829', '41.795833', '024', '110141', '210114', 'YuHongQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (11717, 11073, 3, '皇姑区', '辽宁省，沈阳市，皇姑区', '123.405677', '41.822336', '024', '110031', '210105', 'HuangGuQu', 'HGQ', 'H');
INSERT INTO `sys_area` VALUES (11718, 11073, 3, '和平区', '辽宁省，沈阳市，和平区', '123.406664', '41.788074', '024', '110001', '210102', 'HePingQu', 'HPQ', 'H');
INSERT INTO `sys_area` VALUES (11719, 11073, 3, '铁西区', '辽宁省，沈阳市，铁西区', '123.350664', '41.787808', '024', '110021', '210106', 'TieXiQu', 'TXQ', 'T');
INSERT INTO `sys_area` VALUES (11720, 11073, 3, '苏家屯区', '辽宁省，沈阳市，苏家屯区', '123.341604', '41.665904', '024', '110101', '210111', 'SuJiaTunQu', 'SJTQ', 'S');
INSERT INTO `sys_area` VALUES (11721, 11073, 3, '康平县', '辽宁省，沈阳市，康平县', '123.352703', '42.741533', '024', '110500', '210123', 'KangPingXian', 'KPX', 'K');
INSERT INTO `sys_area` VALUES (11722, 11073, 3, '法库县', '辽宁省，沈阳市，法库县', '123.416722', '42.507045', '024', '110400', '210124', 'FaKuXian', 'FKX', 'F');
INSERT INTO `sys_area` VALUES (11723, 11073, 3, '大东区', '辽宁省，沈阳市，大东区', '123.469956', '41.808503', '024', '110041', '210104', 'DaDongQu', 'DDQ', 'D');
INSERT INTO `sys_area` VALUES (11724, 11073, 3, '沈河区', '辽宁省，沈阳市，沈河区', '123.445696', '41.795591', '024', '110011', '210103', 'ShenHeQu', 'SHQ', 'S');
INSERT INTO `sys_area` VALUES (11940, 11074, 3, '台安县', '辽宁省，鞍山市，台安县', '122.429736', '41.38686', '0412', '114100', '210321', 'TaiAnXian', 'TAX', 'T');
INSERT INTO `sys_area` VALUES (11941, 11074, 3, '岫岩满族自治县', '辽宁省，鞍山市，岫岩满族自治县', '123.28833', '40.281509', '0412', '114300', '210323', 'XiuYanManZuZiZhiXian', 'XYMZZZX', 'X');
INSERT INTO `sys_area` VALUES (11942, 11074, 3, '海城市', '辽宁省，鞍山市，海城市', '122.752199', '40.852533', '0412', '114200', '210381', 'HaiChengShi', 'HCS', 'H');
INSERT INTO `sys_area` VALUES (11943, 11074, 3, '铁东区', '辽宁省，鞍山市，铁东区', '122.994475', '41.110344', '0412', '114001', '210302', 'TieDongQu', 'TDQ', 'T');
INSERT INTO `sys_area` VALUES (11944, 11074, 3, '立山区', '辽宁省，鞍山市，立山区', '123.024806', '41.150622', '0412', '114031', '210304', 'LiShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (11945, 11074, 3, '铁西区', '辽宁省，鞍山市，铁西区', '122.971834', '41.11069', '0412', '114013', '210303', 'TieXiQu', 'TXQ', 'T');
INSERT INTO `sys_area` VALUES (11946, 11074, 3, '千山区', '辽宁省，鞍山市，千山区', '122.949298', '41.068909', '0412', '114041', '210311', 'QianShanQu', 'QSQ', 'Q');
INSERT INTO `sys_area` VALUES (12068, 11075, 3, '调兵山市', '辽宁省，铁岭市，调兵山市', '123.545366', '42.450734', '024', '112700', '211281', 'TiaoBingShanShi', 'TBSS', 'T');
INSERT INTO `sys_area` VALUES (12069, 11075, 3, '开原市', '辽宁省，铁岭市，开原市', '124.045551', '42.542141', '024', '112300', '211282', 'KaiYuanShi', 'KYS', 'K');
INSERT INTO `sys_area` VALUES (12070, 11075, 3, '清河区', '辽宁省，铁岭市，清河区', '124.14896', '42.542978', '024', '112003', '211204', 'QingHeQu', 'QHQ', 'Q');
INSERT INTO `sys_area` VALUES (12071, 11075, 3, '银州区', '辽宁省，铁岭市，银州区', '123.844877', '42.292278', '024', '112000', '211202', 'YinZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (12072, 11075, 3, '西丰县', '辽宁省，铁岭市，西丰县', '124.72332', '42.738091', '024', '112400', '211223', 'XiFengXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (12073, 11075, 3, '铁岭县', '辽宁省，铁岭市，铁岭县', '123.725669', '42.223316', '024', '112000', '211221', 'TieLingXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (12074, 11075, 3, '昌图县', '辽宁省，铁岭市，昌图县', '124.11017', '42.784441', '024', '112500', '211224', 'ChangTuXian', 'CTX', 'C');
INSERT INTO `sys_area` VALUES (12187, 11076, 3, '辽阳县', '辽宁省，辽阳市，辽阳县', '123.079674', '41.216479', '0419', '111200', '211021', 'LiaoYangXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (12188, 11076, 3, '白塔区', '辽宁省，辽阳市，白塔区', '123.172611', '41.26745', '0419', '111000', '211002', 'BaiTaQu', 'BTQ', 'B');
INSERT INTO `sys_area` VALUES (12189, 11076, 3, '弓长岭区', '辽宁省，辽阳市，弓长岭区', '123.431633', '41.157831', '0419', '111008', '211005', 'GongChangLingQu', 'GCLQ', 'G');
INSERT INTO `sys_area` VALUES (12190, 11076, 3, '文圣区', '辽宁省，辽阳市，文圣区', '123.188227', '41.266765', '0419', '111000', '211003', 'WenShengQu', 'WSQ', 'W');
INSERT INTO `sys_area` VALUES (12191, 11076, 3, '宏伟区', '辽宁省，辽阳市，宏伟区', '123.200461', '41.205747', '0419', '111003', '211004', 'HongWeiQu', 'HWQ', 'H');
INSERT INTO `sys_area` VALUES (12192, 11076, 3, '太子河区', '辽宁省，辽阳市，太子河区', '123.185336', '41.251682', '0419', '111000', '211011', 'TaiZiHeQu', 'TZHQ', 'T');
INSERT INTO `sys_area` VALUES (12193, 11076, 3, '灯塔市', '辽宁省，辽阳市，灯塔市', '123.325864', '41.427836', '0419', '111300', '211081', 'DengTaShi', 'DTS', 'D');
INSERT INTO `sys_area` VALUES (12255, 11077, 3, '兴隆台区', '辽宁省，盘锦市，兴隆台区', '122.071624', '41.122423', '0427', '124010', '211103', 'XingLongTaiQu', 'XLTQ', 'X');
INSERT INTO `sys_area` VALUES (12256, 11077, 3, '大洼区', '辽宁省，盘锦市，大洼区', '122.071708', '40.994428', '0427', '124200', '211104', 'DaWaQu', 'DWQ', 'D');
INSERT INTO `sys_area` VALUES (12257, 11077, 3, '盘山县', '辽宁省，盘锦市，盘山县', '121.98528', '41.240701', '0427', '124107', '211122', 'PanShanXian', 'PSX', 'P');
INSERT INTO `sys_area` VALUES (12258, 11077, 3, '双台子区', '辽宁省，盘锦市，双台子区', '122.055733', '41.190365', '0427', '124000', '211102', 'ShuangTaiZiQu', 'STZQ', 'S');
INSERT INTO `sys_area` VALUES (12318, 11078, 3, '鲅鱼圈区', '辽宁省，营口市，鲅鱼圈区', '122.127242', '40.263646', '0417', '115007', '210804', 'BaYuQuanQu', 'BYQQ', 'B');
INSERT INTO `sys_area` VALUES (12319, 11078, 3, '大石桥市', '辽宁省，营口市，大石桥市', '122.505894', '40.633973', '0417', '115100', '210882', 'DaShiQiaoShi', 'DSQS', 'D');
INSERT INTO `sys_area` VALUES (12320, 11078, 3, '西市区', '辽宁省，营口市，西市区', '122.210067', '40.663086', '0417', '115004', '210803', 'XiShiQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (12321, 11078, 3, '盖州市', '辽宁省，营口市，盖州市', '122.355534', '40.405234', '0417', '115200', '210881', 'GaiZhouShi', 'GZS', 'G');
INSERT INTO `sys_area` VALUES (12322, 11078, 3, '站前区', '辽宁省，营口市，站前区', '122.253235', '40.669949', '0417', '115002', '210802', 'ZhanQianQu', 'ZQQ', 'Z');
INSERT INTO `sys_area` VALUES (12323, 11078, 3, '老边区', '辽宁省，营口市，老边区', '122.382584', '40.682723', '0417', '115005', '210811', 'LaoBianQu', 'LBQ', 'L');
INSERT INTO `sys_area` VALUES (12399, 11079, 3, '建平县', '辽宁省，朝阳市，建平县', '119.642363', '41.402576', '0421', '122400', '211322', 'JianPingXian', 'JPX', 'J');
INSERT INTO `sys_area` VALUES (12400, 11079, 3, '北票市', '辽宁省，朝阳市，北票市', '120.766951', '41.803286', '0421', '122100', '211381', 'BeiPiaoShi', 'BPS', 'B');
INSERT INTO `sys_area` VALUES (12401, 11079, 3, '朝阳县', '辽宁省，朝阳市，朝阳县', '120.404217', '41.526342', '0421', '122000', '211321', 'ChaoYangXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (12402, 11079, 3, '双塔区', '辽宁省，朝阳市，双塔区', '120.44877', '41.579389', '0421', '122000', '211302', 'ShuangTaQu', 'STQ', 'S');
INSERT INTO `sys_area` VALUES (12403, 11079, 3, '龙城区', '辽宁省，朝阳市，龙城区', '120.413376', '41.576749', '0421', '122000', '211303', 'LongChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (12404, 11079, 3, '凌源市', '辽宁省，朝阳市，凌源市', '119.404789', '41.243086', '0421', '122500', '211382', 'LingYuanShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (12405, 11079, 3, '喀喇沁左翼蒙古族自治县', '辽宁省，朝阳市，喀喇沁左翼蒙古族自治县', '119.744883', '41.125428', '0421', '122300', '211324', 'KaLaQinZuoYiMengGuZuZiZhiXian', 'KLQZYMGZZZX', 'K');
INSERT INTO `sys_area` VALUES (12582, 11080, 3, '海州区', '辽宁省，阜新市，海州区', '121.657639', '42.011162', '0418', '123000', '210902', 'HaiZhouQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (12583, 11080, 3, '细河区', '辽宁省，阜新市，细河区', '121.654791', '42.019218', '0418', '123000', '210911', 'XiHeQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (12584, 11080, 3, '太平区', '辽宁省，阜新市，太平区', '121.677575', '42.011145', '0418', '123003', '210904', 'TaiPingQu', 'TPQ', 'T');
INSERT INTO `sys_area` VALUES (12585, 11080, 3, '清河门区', '辽宁省，阜新市，清河门区', '121.42018', '41.780477', '0418', '123006', '210905', 'QingHeMenQu', 'QHMQ', 'Q');
INSERT INTO `sys_area` VALUES (12586, 11080, 3, '阜新蒙古族自治县', '辽宁省，阜新市，阜新蒙古族自治县', '121.743125', '42.058607', '0418', '123100', '210921', 'FuXinMengGuZuZiZhiXian', 'FXMGZZZX', 'F');
INSERT INTO `sys_area` VALUES (12587, 11080, 3, '新邱区', '辽宁省，阜新市，新邱区', '121.790541', '42.086603', '0418', '123005', '210903', 'XinQiuQu', 'XQQ', 'X');
INSERT INTO `sys_area` VALUES (12588, 11080, 3, '彰武县', '辽宁省，阜新市，彰武县', '122.537444', '42.384823', '0418', '123200', '210922', 'ZhangWuXian', 'ZWX', 'Z');
INSERT INTO `sys_area` VALUES (12684, 11081, 3, '溪湖区', '辽宁省，本溪市，溪湖区', '123.765226', '41.330056', '024', '117002', '210503', 'XiHuQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (12685, 11081, 3, '桓仁满族自治县', '辽宁省，本溪市，桓仁满族自治县', '125.359195', '41.268997', '024', '117200', '210522', 'HuanRenManZuZiZhiXian', 'HRMZZZX', 'H');
INSERT INTO `sys_area` VALUES (12686, 11081, 3, '南芬区', '辽宁省，本溪市，南芬区', '123.748381', '41.104093', '024', '117014', '210505', 'NanFenQu', 'NFQ', 'N');
INSERT INTO `sys_area` VALUES (12687, 11081, 3, '平山区', '辽宁省，本溪市，平山区', '123.761231', '41.291581', '024', '117000', '210502', 'PingShanQu', 'PSQ', 'P');
INSERT INTO `sys_area` VALUES (12688, 11081, 3, '明山区', '辽宁省，本溪市，明山区', '123.763288', '41.302429', '024', '117020', '210504', 'MingShanQu', 'MSQ', 'M');
INSERT INTO `sys_area` VALUES (12689, 11081, 3, '本溪满族自治县', '辽宁省，本溪市，本溪满族自治县', '124.126156', '41.300344', '024', '117100', '210521', 'BenXiManZuZiZhiXian', 'BXMZZZX', 'B');
INSERT INTO `sys_area` VALUES (12748, 8, 2, '威海市', '山东省，威海市', '122.116394', '37.509691', '0631', '264200', '371000', 'WeiHaiShi', 'WHS', 'W');
INSERT INTO `sys_area` VALUES (12749, 8, 2, '烟台市', '山东省，烟台市', '121.391382', '37.539297', '0535', '264010', '370600', 'YanTaiShi', 'YTS', 'Y');
INSERT INTO `sys_area` VALUES (12750, 8, 2, '滨州市', '山东省，滨州市', '118.016974', '37.383542', '0543', '256619', '371600', 'BinZhouShi', 'BZS', 'B');
INSERT INTO `sys_area` VALUES (12751, 8, 2, '临沂市', '山东省，临沂市', '118.326443', '35.065282', '0539', '276000', '371300', 'LinYiShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (12752, 8, 2, '莱芜市', '山东省，莱芜市', '117.677736', '36.214397', '0634', '271100', '371200', 'LaiWuShi', 'LWS', 'L');
INSERT INTO `sys_area` VALUES (12753, 8, 2, '淄博市', '山东省，淄博市', '118.047648', '36.814939', '0533', '255039', '370300', 'ZiBoShi', 'ZBS', 'Z');
INSERT INTO `sys_area` VALUES (12754, 8, 2, '青岛市', '山东省，青岛市', '120.355173', '36.082982', '0532', '266001', '370200', 'QingDaoShi', 'QDS', 'Q');
INSERT INTO `sys_area` VALUES (12755, 8, 2, '聊城市', '山东省，聊城市', '115.980367', '36.456013', '0635', '252052', '371500', 'LiaoChengShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (12756, 8, 2, '德州市', '山东省，德州市', '116.307428', '37.453968', '0534', '253000', '371400', 'DeZhouShi', 'DZS', 'D');
INSERT INTO `sys_area` VALUES (12757, 8, 2, '日照市', '山东省，日照市', '119.461208', '35.428588', '0633', '276800', '371100', 'RiZhaoShi', 'RZS', 'R');
INSERT INTO `sys_area` VALUES (12758, 8, 2, '菏泽市', '山东省，菏泽市', '115.469381', '35.246531', '0530', '274020', '371700', 'HeZeShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (12759, 8, 2, '潍坊市', '山东省，潍坊市', '119.107078', '36.70925', '0536', '261041', '370700', 'WeiFangShi', 'WFS', 'W');
INSERT INTO `sys_area` VALUES (12760, 8, 2, '济南市', '山东省，济南市', '117.000923', '36.675807', '0531', '250001', '370100', 'JiNanShi', 'JNS', 'J');
INSERT INTO `sys_area` VALUES (12761, 8, 2, '泰安市', '山东省，泰安市', '117.129063', '36.194968', '0538', '271000', '370900', 'TaiAnShi', 'TAS', 'T');
INSERT INTO `sys_area` VALUES (12762, 8, 2, '东营市', '山东省，东营市', '118.66471', '37.434564', '0546', '257093', '370500', 'DongYingShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (12763, 8, 2, '济宁市', '山东省，济宁市', '116.587245', '35.415393', '0537', '272119', '370800', 'JiNingShi', 'JNS', 'J');
INSERT INTO `sys_area` VALUES (12764, 8, 2, '枣庄市', '山东省，枣庄市', '117.557964', '34.856424', '0632', '277101', '370400', 'ZaoZhuangShi', 'ZZS', 'Z');
INSERT INTO `sys_area` VALUES (12765, 12748, 3, '环翠区', '山东省，威海市，环翠区', '122.116189', '37.510754', '0631', '264200', '371002', 'HuanCuiQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (12766, 12748, 3, '荣成市', '山东省，威海市，荣成市', '122.422896', '37.160134', '0631', '264300', '371082', 'RongChengShi', 'RCS', 'R');
INSERT INTO `sys_area` VALUES (12767, 12748, 3, '文登区', '山东省，威海市，文登区', '122.057139', '37.196211', '0631', '266440', '371003', 'WenDengQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (12768, 12748, 3, '乳山市', '山东省，威海市，乳山市', '121.536346', '36.919622', '0631', '264500', '371083', 'RuShanShi', 'RSS', 'R');
INSERT INTO `sys_area` VALUES (12842, 12749, 3, '龙口市', '山东省，烟台市，龙口市', '120.528328', '37.648446', '0535', '265700', '370681', 'LongKouShi', 'LKS', 'L');
INSERT INTO `sys_area` VALUES (12843, 12749, 3, '长岛县', '山东省，烟台市，长岛县', '120.738345', '37.916194', '0535', '265800', '370634', 'ChangDaoXian', 'CDX', 'C');
INSERT INTO `sys_area` VALUES (12844, 12749, 3, '福山区', '山东省，烟台市，福山区', '121.264741', '37.496875', '0535', '265500', '370611', 'FuShanQu', 'FSQ', 'F');
INSERT INTO `sys_area` VALUES (12845, 12749, 3, '芝罘区', '山东省，烟台市，芝罘区', '121.385877', '37.540925', '0535', '264001', '370602', 'ZhiFuQu', 'ZFQ', 'Z');
INSERT INTO `sys_area` VALUES (12846, 12749, 3, '招远市', '山东省，烟台市，招远市', '120.403142', '37.364919', '0535', '265400', '370685', 'ZhaoYuanShi', 'ZYS', 'Z');
INSERT INTO `sys_area` VALUES (12847, 12749, 3, '栖霞市', '山东省，烟台市，栖霞市', '120.834097', '37.305854', '0535', '265300', '370686', 'QiXiaShi', 'QXS', 'Q');
INSERT INTO `sys_area` VALUES (12848, 12749, 3, '莱州市', '山东省，烟台市，莱州市', '119.942135', '37.182725', '0535', '261400', '370683', 'LaiZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (12849, 12749, 3, '海阳市', '山东省，烟台市，海阳市', '121.168392', '36.780657', '0535', '265100', '370687', 'HaiYangShi', 'HYS', 'H');
INSERT INTO `sys_area` VALUES (12850, 12749, 3, '牟平区', '山东省，烟台市，牟平区', '121.60151', '37.388356', '0535', '264100', '370612', 'MouPingQu', 'MPQ', 'M');
INSERT INTO `sys_area` VALUES (12851, 12749, 3, '莱山区', '山东省，烟台市，莱山区', '121.448866', '37.473549', '0535', '264600', '370613', 'LaiShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (12852, 12749, 3, '莱阳市', '山东省，烟台市，莱阳市', '120.711151', '36.977037', '0535', '265200', '370682', 'LaiYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (12853, 12749, 3, '蓬莱市', '山东省，烟台市，蓬莱市', '120.762689', '37.811168', '0535', '265600', '370684', 'PengLaiShi', 'PLS', 'P');
INSERT INTO `sys_area` VALUES (13010, 12750, 3, '沾化区', '山东省，滨州市，沾化区', '118.129902', '37.698456', '0543', '256800', '371603', 'ZhanHuaQu', 'ZHQ', 'Z');
INSERT INTO `sys_area` VALUES (13011, 12750, 3, '滨城区', '山东省，滨州市，滨城区', '118.020149', '37.384842', '0543', '256613', '371602', 'BinChengQu', 'BCQ', 'B');
INSERT INTO `sys_area` VALUES (13012, 12750, 3, '邹平县', '山东省，滨州市，邹平县', '117.736807', '36.87803', '0543', '256200', '371626', 'ZouPingXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (13013, 12750, 3, '博兴县', '山东省，滨州市，博兴县', '118.123096', '37.147002', '0543', '256500', '371625', 'BoXingXian', 'BXX', 'B');
INSERT INTO `sys_area` VALUES (13014, 12750, 3, '无棣县', '山东省，滨州市，无棣县', '117.616325', '37.740848', '0543', '251900', '371623', 'WuDiXian', 'WDX', 'W');
INSERT INTO `sys_area` VALUES (13015, 12750, 3, '阳信县', '山东省，滨州市，阳信县', '117.581326', '37.640492', '0543', '251800', '371622', 'YangXinXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (13016, 12750, 3, '惠民县', '山东省，滨州市，惠民县', '117.508941', '37.483876', '0543', '251700', '371621', 'HuiMinXian', 'HMX', 'H');
INSERT INTO `sys_area` VALUES (13108, 12751, 3, '蒙阴县', '山东省，临沂市，蒙阴县', '117.943271', '35.712435', '0539', '276200', '371328', 'MengYinXian', 'MYX', 'M');
INSERT INTO `sys_area` VALUES (13109, 12751, 3, '沂水县', '山东省，临沂市，沂水县', '118.634543', '35.787029', '0539', '276400', '371323', 'YiShuiXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (13110, 12751, 3, '平邑县', '山东省，临沂市，平邑县', '117.631884', '35.511519', '0539', '273300', '371326', 'PingYiXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (13111, 12751, 3, '兰山区', '山东省，临沂市，兰山区', '118.327667', '35.061631', '0539', '276002', '371302', 'LanShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (13112, 12751, 3, '沂南县', '山东省，临沂市，沂南县', '118.455395', '35.547002', '0539', '276300', '371321', 'YiNanXian', 'YNX', 'Y');
INSERT INTO `sys_area` VALUES (13113, 12751, 3, '费县', '山东省，临沂市，费县', '117.968869', '35.269174', '0539', '273400', '371325', 'FeiXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (13114, 12751, 3, '郯城县', '山东省，临沂市，郯城县', '118.342963', '34.614741', '0539', '276100', '371322', 'TanChengXian', 'TCX', 'T');
INSERT INTO `sys_area` VALUES (13115, 12751, 3, '兰陵县', '山东省，临沂市，兰陵县', '118.049968', '34.855573', '0539', '277700', '371324', 'LanLingXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (13116, 12751, 3, '莒南县', '山东省，临沂市，莒南县', '118.838322', '35.175911', '0539', '276600', '371327', 'JuNanXian', 'JNX', 'J');
INSERT INTO `sys_area` VALUES (13117, 12751, 3, '罗庄区', '山东省，临沂市，罗庄区', '118.284795', '34.997204', '0539', '276022', '371311', 'LuoZhuangQu', 'LZQ', 'L');
INSERT INTO `sys_area` VALUES (13118, 12751, 3, '临沭县', '山东省，临沂市，临沭县', '118.648379', '34.917062', '0539', '276700', '371329', 'LinShuXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (13119, 12751, 3, '河东区', '山东省，临沂市，河东区', '118.398296', '35.085004', '0539', '276034', '371312', 'HeDongQu', 'HDQ', 'H');
INSERT INTO `sys_area` VALUES (13277, 12752, 3, '莱城区', '山东省，莱芜市，莱城区', '117.678351', '36.213662', '0634', '271199', '371202', 'LaiChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (13278, 12752, 3, '钢城区', '山东省，莱芜市，钢城区', '117.82033', '36.058038', '0634', '271100', '371203', 'GangChengQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (13299, 12753, 3, '高青县', '山东省，淄博市，高青县', '117.829839', '37.169581', '0533', '256300', '370322', 'GaoQingXian', 'GQX', 'G');
INSERT INTO `sys_area` VALUES (13300, 12753, 3, '张店区', '山东省，淄博市，张店区', '118.053521', '36.807049', '0533', '255022', '370303', 'ZhangDianQu', 'ZDQ', 'Z');
INSERT INTO `sys_area` VALUES (13301, 12753, 3, '桓台县', '山东省，淄博市，桓台县', '118.101556', '36.959773', '0533', '256400', '370321', 'HuanTaiXian', 'HTX', 'H');
INSERT INTO `sys_area` VALUES (13302, 12753, 3, '临淄区', '山东省，淄博市，临淄区', '118.306018', '36.816657', '0533', '255400', '370305', 'LinZiQu', 'LZQ', 'L');
INSERT INTO `sys_area` VALUES (13303, 12753, 3, '周村区', '山东省，淄博市，周村区', '117.851036', '36.803699', '0533', '255300', '370306', 'ZhouCunQu', 'ZCQ', 'Z');
INSERT INTO `sys_area` VALUES (13304, 12753, 3, '淄川区', '山东省，淄博市，淄川区', '117.967696', '36.647272', '0533', '255100', '370302', 'ZiChuanQu', 'ZCQ', 'Z');
INSERT INTO `sys_area` VALUES (13305, 12753, 3, '沂源县', '山东省，淄博市，沂源县', '118.166161', '36.186282', '0533', '256100', '370323', 'YiYuanXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (13306, 12753, 3, '博山区', '山东省，淄博市，博山区', '117.85823', '36.497567', '0533', '255200', '370304', 'BoShanQu', 'BSQ', 'B');
INSERT INTO `sys_area` VALUES (13395, 12754, 3, '莱西市', '山东省，青岛市，莱西市', '120.526226', '36.86509', '0532', '266600', '370285', 'LaiXiShi', 'LXS', 'L');
INSERT INTO `sys_area` VALUES (13396, 12754, 3, '平度市', '山东省，青岛市，平度市', '119.959012', '36.788828', '0532', '266700', '370283', 'PingDuShi', 'PDS', 'P');
INSERT INTO `sys_area` VALUES (13397, 12754, 3, '即墨区', '山东省，青岛市，即墨区', '120.447352', '36.390847', '0532', '266200', '370215', 'JiMoQu', 'JMQ', 'J');
INSERT INTO `sys_area` VALUES (13398, 12754, 3, '崂山区', '山东省，青岛市，崂山区', '120.467393', '36.102569', '0532', '266100', '370212', 'LaoShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (13399, 12754, 3, '城阳区', '山东省，青岛市，城阳区', '120.389135', '36.306833', '0532', '266041', '370214', 'ChengYangQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (13400, 12754, 3, '李沧区', '山东省，青岛市，李沧区', '120.421236', '36.160023', '0532', '266021', '370213', 'LiCangQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (13401, 12754, 3, '黄岛区', '山东省，青岛市，黄岛区', '119.995518', '35.875138', '0532', '266500', '370211', 'HuangDaoQu', 'HDQ', 'H');
INSERT INTO `sys_area` VALUES (13402, 12754, 3, '市南区', '山东省，青岛市，市南区', '120.395966', '36.070892', '0532', '266001', '370202', 'ShiNanQu', 'SNQ', 'S');
INSERT INTO `sys_area` VALUES (13403, 12754, 3, '胶州市', '山东省，青岛市，胶州市', '120.006202', '36.285878', '0532', '266300', '370281', 'JiaoZhouShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (13404, 12754, 3, '市北区', '山东省，青岛市，市北区', '120.355026', '36.083819', '0532', '266011', '370203', 'ShiBeiQu', 'SBQ', 'S');
INSERT INTO `sys_area` VALUES (13539, 12755, 3, '临清市', '山东省，聊城市，临清市', '115.713462', '36.842598', '0635', '252600', '371581', 'LinQingShi', 'LQS', 'L');
INSERT INTO `sys_area` VALUES (13540, 12755, 3, '茌平县', '山东省，聊城市，茌平县', '116.25335', '36.591934', '0635', '252100', '371523', 'ChiPingXian', 'CPX', 'C');
INSERT INTO `sys_area` VALUES (13541, 12755, 3, '冠县', '山东省，聊城市，冠县', '115.444808', '36.483753', '0635', '252500', '371525', 'GuanXian', 'GX', 'G');
INSERT INTO `sys_area` VALUES (13542, 12755, 3, '东昌府区', '山东省，聊城市，东昌府区', '115.980023', '36.45606', '0635', '252000', '371502', 'DongChangFuQu', 'DCFQ', 'D');
INSERT INTO `sys_area` VALUES (13543, 12755, 3, '东阿县', '山东省，聊城市，东阿县', '116.248855', '36.336004', '0635', '252200', '371524', 'DongEXian', 'DEX', 'D');
INSERT INTO `sys_area` VALUES (13544, 12755, 3, '高唐县', '山东省，聊城市，高唐县', '116.229662', '36.859755', '0635', '252800', '371526', 'GaoTangXian', 'GTX', 'G');
INSERT INTO `sys_area` VALUES (13545, 12755, 3, '莘县', '山东省，聊城市，莘县', '115.667291', '36.237597', '0635', '252400', '371522', 'ShenXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (13546, 12755, 3, '阳谷县', '山东省，聊城市，阳谷县', '115.784287', '36.113708', '0635', '252300', '371521', 'YangGuXian', 'YGX', 'Y');
INSERT INTO `sys_area` VALUES (13683, 12756, 3, '宁津县', '山东省，德州市，宁津县', '116.79372', '37.649619', '0534', '253400', '371422', 'NingJinXian', 'NJX', 'N');
INSERT INTO `sys_area` VALUES (13684, 12756, 3, '陵城区', '山东省，德州市，陵城区', '116.574929', '37.332848', '0534', '253500', '371403', 'LingChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (13685, 12756, 3, '乐陵市', '山东省，德州市，乐陵市', '117.216657', '37.729115', '0534', '253600', '371481', 'LeLingShi', 'LLS', 'L');
INSERT INTO `sys_area` VALUES (13686, 12756, 3, '庆云县', '山东省，德州市，庆云县', '117.390507', '37.777724', '0534', '253700', '371423', 'QingYunXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (13687, 12756, 3, '德城区', '山东省，德州市，德城区', '116.307076', '37.453923', '0534', '253012', '371402', 'DeChengQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (13688, 12756, 3, '临邑县', '山东省，德州市，临邑县', '116.867028', '37.192044', '0534', '251500', '371424', 'LinYiXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (13689, 12756, 3, '武城县', '山东省，德州市，武城县', '116.078627', '37.209527', '0534', '253300', '371428', 'WuChengXian', 'WCX', 'W');
INSERT INTO `sys_area` VALUES (13690, 12756, 3, '禹城市', '山东省，德州市，禹城市', '116.642554', '36.934485', '0534', '251200', '371482', 'YuChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (13691, 12756, 3, '平原县', '山东省，德州市，平原县', '116.433904', '37.164465', '0534', '253100', '371426', 'PingYuanXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (13692, 12756, 3, '夏津县', '山东省，德州市，夏津县', '116.003816', '36.950501', '0534', '253200', '371427', 'XiaJinXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (13693, 12756, 3, '齐河县', '山东省，德州市，齐河县', '116.758394', '36.795497', '0534', '251100', '371425', 'QiHeXian', 'QHX', 'Q');
INSERT INTO `sys_area` VALUES (13828, 12757, 3, '五莲县', '山东省，日照市，五莲县', '119.206745', '35.751936', '0633', '262300', '371121', 'WuLianXian', 'WLX', 'W');
INSERT INTO `sys_area` VALUES (13829, 12757, 3, '岚山区', '山东省，日照市，岚山区', '119.315844', '35.119794', '0633', '276808', '371103', 'LanShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (13830, 12757, 3, '莒县', '山东省，日照市，莒县', '118.832859', '35.588115', '0633', '276500', '371122', 'JuXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (13831, 12757, 3, '东港区', '山东省，日照市，东港区', '119.457703', '35.426152', '0633', '276800', '371102', 'DongGangQu', 'DGQ', 'D');
INSERT INTO `sys_area` VALUES (13888, 12758, 3, '牡丹区', '山东省，菏泽市，牡丹区', '115.470946', '35.24311', '0530', '274009', '371702', 'MuDanQu', 'MDQ', 'M');
INSERT INTO `sys_area` VALUES (13889, 12758, 3, '鄄城县', '山东省，菏泽市，鄄城县', '115.51434', '35.560257', '0530', '274600', '371726', 'JuanChengXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (13890, 12758, 3, '定陶区', '山东省，菏泽市，定陶区', '115.569601', '35.072701', '0530', '274100', '371703', 'DingTaoQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (13891, 12758, 3, '东明县', '山东省，菏泽市，东明县', '115.098412', '35.289637', '0530', '274500', '371728', 'DongMingXian', 'DMX', 'D');
INSERT INTO `sys_area` VALUES (13892, 12758, 3, '曹县', '山东省，菏泽市，曹县', '115.549482', '34.823253', '0530', '274400', '371721', 'CaoXian', 'CX', 'C');
INSERT INTO `sys_area` VALUES (13893, 12758, 3, '成武县', '山东省，菏泽市，成武县', '115.897349', '34.947366', '0530', '274200', '371723', 'ChengWuXian', 'CWX', 'C');
INSERT INTO `sys_area` VALUES (13894, 12758, 3, '单县', '山东省，菏泽市，单县', '116.08262', '34.790851', '0530', '273700', '371722', 'DanXian', 'DX', 'D');
INSERT INTO `sys_area` VALUES (13895, 12758, 3, '巨野县', '山东省，菏泽市，巨野县', '116.089341', '35.390999', '0530', '274900', '371724', 'JuYeXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (13896, 12758, 3, '郓城县', '山东省，菏泽市，郓城县', '115.93885', '35.594773', '0530', '274700', '371725', 'YunChengXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (14065, 12759, 3, '青州市', '山东省，潍坊市，青州市', '118.484693', '36.697855', '0536', '262500', '370781', 'QingZhouShi', 'QZS', 'Q');
INSERT INTO `sys_area` VALUES (14066, 12759, 3, '奎文区', '山东省，潍坊市，奎文区', '119.137357', '36.709494', '0536', '261031', '370705', 'KuiWenQu', 'KWQ', 'K');
INSERT INTO `sys_area` VALUES (14067, 12759, 3, '潍城区', '山东省，潍坊市，潍城区', '119.103784', '36.710062', '0536', '261021', '370702', 'WeiChengQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (14068, 12759, 3, '昌乐县', '山东省，潍坊市，昌乐县', '118.839995', '36.703253', '0536', '262400', '370725', 'ChangLeXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (14069, 12759, 3, '坊子区', '山东省，潍坊市，坊子区', '119.166326', '36.654616', '0536', '261200', '370704', 'FangZiQu', 'FZQ', 'F');
INSERT INTO `sys_area` VALUES (14070, 12759, 3, '临朐县', '山东省，潍坊市，临朐县', '118.539876', '36.516371', '0536', '262600', '370724', 'LinQuXian', 'LQX', 'L');
INSERT INTO `sys_area` VALUES (14071, 12759, 3, '高密市', '山东省，潍坊市，高密市', '119.757033', '36.37754', '0536', '261500', '370785', 'GaoMiShi', 'GMS', 'G');
INSERT INTO `sys_area` VALUES (14072, 12759, 3, '安丘市', '山东省，潍坊市，安丘市', '119.206886', '36.427417', '0536', '262100', '370784', 'AnQiuShi', 'AQS', 'A');
INSERT INTO `sys_area` VALUES (14073, 12759, 3, '诸城市', '山东省，潍坊市，诸城市', '119.403182', '35.997093', '0536', '262200', '370782', 'ZhuChengShi', 'ZCS', 'Z');
INSERT INTO `sys_area` VALUES (14074, 12759, 3, '寿光市', '山东省，潍坊市，寿光市', '118.736451', '36.874411', '0536', '262700', '370783', 'ShouGuangShi', 'SGS', 'S');
INSERT INTO `sys_area` VALUES (14075, 12759, 3, '寒亭区', '山东省，潍坊市，寒亭区', '119.207866', '36.772103', '0536', '261100', '370703', 'HanTingQu', 'HTQ', 'H');
INSERT INTO `sys_area` VALUES (14076, 12759, 3, '昌邑市', '山东省，潍坊市，昌邑市', '119.394502', '36.854937', '0536', '261300', '370786', 'ChangYiShi', 'CYS', 'C');
INSERT INTO `sys_area` VALUES (14200, 12760, 3, '商河县', '山东省，济南市，商河县', '117.156369', '37.310544', '0531', '251600', '370126', 'ShangHeXian', 'SHX', 'S');
INSERT INTO `sys_area` VALUES (14201, 12760, 3, '济阳县', '山东省，济南市，济阳县', '117.176035', '36.976772', '0531', '251400', '370125', 'JiYangXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (14202, 12760, 3, '章丘区', '山东省，济南市，章丘区', '117.54069', '36.71209', '0531', '250200', '370114', 'ZhangQiuQu', 'ZQQ', 'Z');
INSERT INTO `sys_area` VALUES (14203, 12760, 3, '长清区', '山东省，济南市，长清区', '116.74588', '36.561049', '0531', '250300', '370113', 'ChangQingQu', 'CQQ', 'C');
INSERT INTO `sys_area` VALUES (14204, 12760, 3, '市中区', '山东省，济南市，市中区', '116.99898', '36.657354', '0531', '250001', '370103', 'ShiZhongQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (14205, 12760, 3, '天桥区', '山东省，济南市，天桥区', '116.996086', '36.693374', '0531', '250031', '370105', 'TianQiaoQu', 'TQQ', 'T');
INSERT INTO `sys_area` VALUES (14206, 12760, 3, '槐荫区', '山东省，济南市，槐荫区', '116.947921', '36.668205', '0531', '250117', '370104', 'HuaiYinQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (14207, 12760, 3, '平阴县', '山东省，济南市，平阴县', '116.455054', '36.286923', '0531', '250400', '370124', 'PingYinXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (14208, 12760, 3, '历城区', '山东省，济南市，历城区', '117.063744', '36.681744', '0531', '250100', '370112', 'LiChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (14209, 12760, 3, '历下区', '山东省，济南市，历下区', '117.03862', '36.664169', '0531', '250014', '370102', 'LiXiaQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (14353, 12761, 3, '岱岳区', '山东省，泰安市，岱岳区', '117.04353', '36.1841', '0538', '271000', '370911', 'DaiYueQu', 'DYQ', 'D');
INSERT INTO `sys_area` VALUES (14354, 12761, 3, '东平县', '山东省，泰安市，东平县', '116.461052', '35.930467', '0538', '271500', '370923', 'DongPingXian', 'DPX', 'D');
INSERT INTO `sys_area` VALUES (14355, 12761, 3, '新泰市', '山东省，泰安市，新泰市', '117.766092', '35.910387', '0538', '271200', '370982', 'XinTaiShi', 'XTS', 'X');
INSERT INTO `sys_area` VALUES (14356, 12761, 3, '泰山区', '山东省，泰安市，泰山区', '117.129984', '36.189313', '0538', '271000', '370902', 'TaiShanQu', 'TSQ', 'T');
INSERT INTO `sys_area` VALUES (14357, 12761, 3, '肥城市', '山东省，泰安市，肥城市', '116.763703', '36.1856', '0538', '271600', '370983', 'FeiChengShi', 'FCS', 'F');
INSERT INTO `sys_area` VALUES (14358, 12761, 3, '宁阳县', '山东省，泰安市，宁阳县', '116.799297', '35.76754', '0538', '271400', '370921', 'NingYangXian', 'NYX', 'N');
INSERT INTO `sys_area` VALUES (14446, 12762, 3, '利津县', '山东省，东营市，利津县', '118.248854', '37.493365', '0546', '257400', '370522', 'LiJinXian', 'LJX', 'L');
INSERT INTO `sys_area` VALUES (14447, 12762, 3, '广饶县', '山东省，东营市，广饶县', '118.407522', '37.05161', '0546', '257300', '370523', 'GuangRaoXian', 'GRX', 'G');
INSERT INTO `sys_area` VALUES (14448, 12762, 3, '东营区', '山东省，东营市，东营区', '118.507543', '37.461567', '0546', '257029', '370502', 'DongYingQu', 'DYQ', 'D');
INSERT INTO `sys_area` VALUES (14449, 12762, 3, '垦利区', '山东省，东营市，垦利区', '118.551314', '37.588679', '0546', '257500', '370505', 'KenLiQu', 'KLQ', 'K');
INSERT INTO `sys_area` VALUES (14450, 12762, 3, '河口区', '山东省，东营市，河口区', '118.529613', '37.886015', '0546', '257200', '370503', 'HeKouQu', 'HKQ', 'H');
INSERT INTO `sys_area` VALUES (14502, 12763, 3, '梁山县', '山东省，济宁市，梁山县', '116.08963', '35.801843', '0537', '272600', '370832', 'LiangShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (14503, 12763, 3, '曲阜市', '山东省，济宁市，曲阜市', '116.991885', '35.592788', '0537', '273100', '370881', 'QuFuShi', 'QFS', 'Q');
INSERT INTO `sys_area` VALUES (14504, 12763, 3, '兖州区', '山东省，济宁市，兖州区', '116.828996', '35.556445', '0537', '272000', '370812', 'YanZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (14505, 12763, 3, '邹城市', '山东省，济宁市，邹城市', '116.96673', '35.405259', '0537', '273500', '370883', 'ZouChengShi', 'ZCS', 'Z');
INSERT INTO `sys_area` VALUES (14506, 12763, 3, '汶上县', '山东省，济宁市，汶上县', '116.487146', '35.721746', '0537', '272501', '370830', 'WenShangXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (14507, 12763, 3, '泗水县', '山东省，济宁市，泗水县', '117.273605', '35.653216', '0537', '273200', '370831', 'SiShuiXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (14508, 12763, 3, '鱼台县', '山东省，济宁市，鱼台县', '116.650023', '34.997706', '0537', '272300', '370827', 'YuTaiXian', 'YTX', 'Y');
INSERT INTO `sys_area` VALUES (14509, 12763, 3, '金乡县', '山东省，济宁市，金乡县', '116.310364', '35.06977', '0537', '272200', '370828', 'JinXiangXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (14510, 12763, 3, '任城区', '山东省，济宁市，任城区', '116.595261', '35.414828', '0537', '272113', '370811', 'RenChengQu', 'RCQ', 'R');
INSERT INTO `sys_area` VALUES (14511, 12763, 3, '嘉祥县', '山东省，济宁市，嘉祥县', '116.342885', '35.398098', '0537', '272400', '370829', 'JiaXiangXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (14512, 12763, 3, '微山县', '山东省，济宁市，微山县', '117.12861', '34.809525', '0537', '277600', '370826', 'WeiShanXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (14672, 12764, 3, '市中区', '山东省，枣庄市，市中区', '117.557281', '34.856651', '0632', '277101', '370402', 'ShiZhongQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (14673, 12764, 3, '薛城区', '山东省，枣庄市，薛城区', '117.265293', '34.79789', '0632', '277000', '370403', 'XueChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (14674, 12764, 3, '山亭区', '山东省，枣庄市，山亭区', '117.458968', '35.096077', '0632', '277200', '370406', 'ShanTingQu', 'STQ', 'S');
INSERT INTO `sys_area` VALUES (14675, 12764, 3, '峄城区', '山东省，枣庄市，峄城区', '117.586316', '34.767713', '0632', '277300', '370404', 'YiChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (14676, 12764, 3, '台儿庄区', '山东省，枣庄市，台儿庄区', '117.734747', '34.564815', '0632', '277400', '370405', 'TaiErZhuangQu', 'TEZQ', 'T');
INSERT INTO `sys_area` VALUES (14677, 12764, 3, '滕州市', '山东省，枣庄市，滕州市', '117.162098', '35.088498', '0632', '277500', '370481', 'TengZhouShi', 'TZS', 'T');
INSERT INTO `sys_area` VALUES (14742, 9, 2, '商洛市', '陕西省，商洛市', '109.939776', '33.868319', '0914', '726000', '611000', 'ShangLuoShi', 'SLS', 'S');
INSERT INTO `sys_area` VALUES (14743, 9, 2, '西安市', '陕西省，西安市', '108.948024', '34.263161', '029', '710003', '610100', 'XiAnShi', 'XAS', 'X');
INSERT INTO `sys_area` VALUES (14744, 9, 2, '汉中市', '陕西省，汉中市', '107.028621', '33.077668', '0916', '723000', '610700', 'HanZhongShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (14745, 9, 2, '安康市', '陕西省，安康市', '109.029273', '32.6903', '0915', '725000', '610900', 'AnKangShi', 'AKS', 'A');
INSERT INTO `sys_area` VALUES (14746, 9, 2, '榆林市', '陕西省，榆林市', '109.741193', '38.290162', '0912', '719000', '610800', 'YuLinShi', 'YLS', 'Y');
INSERT INTO `sys_area` VALUES (14747, 9, 2, '铜川市', '陕西省，铜川市', '108.979608', '34.916582', '0919', '727100', '610200', 'TongChuanShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (14748, 9, 2, '咸阳市', '陕西省，咸阳市', '108.705117', '34.333439', '029', '712000', '610400', 'XianYangShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (14749, 9, 2, '宝鸡市', '陕西省，宝鸡市', '107.14487', '34.369315', '0917', '721000', '610300', 'BaoJiShi', 'BJS', 'B');
INSERT INTO `sys_area` VALUES (14750, 9, 2, '延安市', '陕西省，延安市', '109.49081', '36.596537', '0911', '716000', '610600', 'YanAnShi', 'YAS', 'Y');
INSERT INTO `sys_area` VALUES (14751, 9, 2, '渭南市', '陕西省，渭南市', '109.502882', '34.499381', '0913', '714000', '610500', 'WeiNanShi', 'WNS', 'W');
INSERT INTO `sys_area` VALUES (14752, 14742, 3, '柞水县', '陕西省，商洛市，柞水县', '109.111249', '33.682773', '0914', '711400', '611026', 'ZhaShuiXian', 'ZSX', 'Z');
INSERT INTO `sys_area` VALUES (14753, 14742, 3, '洛南县', '陕西省，商洛市，洛南县', '110.145716', '34.088502', '0914', '726100', '611021', 'LuoNanXian', 'LNX', 'L');
INSERT INTO `sys_area` VALUES (14754, 14742, 3, '商州区', '陕西省，商洛市，商州区', '109.937685', '33.869208', '0914', '726000', '611002', 'ShangZhouQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (14755, 14742, 3, '丹凤县', '陕西省，商洛市，丹凤县', '110.33191', '33.694711', '0914', '726200', '611022', 'DanFengXian', 'DFX', 'D');
INSERT INTO `sys_area` VALUES (14756, 14742, 3, '商南县', '陕西省，商洛市，商南县', '110.885437', '33.526367', '0914', '726300', '611023', 'ShangNanXian', 'SNX', 'S');
INSERT INTO `sys_area` VALUES (14757, 14742, 3, '山阳县', '陕西省，商洛市，山阳县', '109.880435', '33.530411', '0914', '726400', '611024', 'ShanYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (14758, 14742, 3, '镇安县', '陕西省，商洛市，镇安县', '109.151075', '33.423981', '0914', '711500', '611025', 'ZhenAnXian', 'ZAX', 'Z');
INSERT INTO `sys_area` VALUES (14870, 14743, 3, '高陵区', '陕西省，西安市，高陵区', '109.088896', '34.535065', '029', '710200', '610117', 'GaoLingQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (14871, 14743, 3, '临潼区', '陕西省，西安市，临潼区', '109.213986', '34.372065', '029', '710600', '610115', 'LinTongQu', 'LTQ', 'L');
INSERT INTO `sys_area` VALUES (14872, 14743, 3, '阎良区', '陕西省，西安市，阎良区', '109.22802', '34.662141', '029', '710087', '610114', 'YanLiangQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (14873, 14743, 3, '长安区', '陕西省，西安市，长安区', '108.941579', '34.157097', '029', '710100', '610116', 'ChangAnQu', 'CAQ', 'C');
INSERT INTO `sys_area` VALUES (14874, 14743, 3, '鄠邑区', '陕西省，西安市，鄠邑区', '108.607385', '34.108668', '029', '710300', '610118', 'HuYiQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (14875, 14743, 3, '蓝田县', '陕西省，西安市，蓝田县', '109.317634', '34.156189', '029', '710500', '610122', 'LanTianXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (14876, 14743, 3, '未央区', '陕西省，西安市，未央区', '108.946022', '34.30823', '029', '710014', '610112', 'WeiYangQu', 'WYQ', 'W');
INSERT INTO `sys_area` VALUES (14877, 14743, 3, '碑林区', '陕西省，西安市，碑林区', '108.946994', '34.251061', '029', '710001', '610103', 'BeiLinQu', 'BLQ', 'B');
INSERT INTO `sys_area` VALUES (14878, 14743, 3, '莲湖区', '陕西省，西安市，莲湖区', '108.933194', '34.2656', '029', '710003', '610104', 'LianHuQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (14879, 14743, 3, '雁塔区', '陕西省，西安市，雁塔区', '108.926593', '34.213389', '029', '710061', '610113', 'YanTaQu', 'YTQ', 'Y');
INSERT INTO `sys_area` VALUES (14880, 14743, 3, '周至县', '陕西省，西安市，周至县', '108.216465', '34.161532', '029', '710400', '610124', 'ZhouZhiXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (14881, 14743, 3, '新城区', '陕西省，西安市，新城区', '108.959903', '34.26927', '029', '710004', '610102', 'XinChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (14882, 14743, 3, '灞桥区', '陕西省，西安市，灞桥区', '109.067261', '34.267453', '029', '710038', '610111', 'BaQiaoQu', 'BQQ', 'B');
INSERT INTO `sys_area` VALUES (15052, 14744, 3, '留坝县', '陕西省，汉中市，留坝县', '106.924377', '33.61334', '0916', '724100', '610729', 'LiuBaXian', 'LBX', 'L');
INSERT INTO `sys_area` VALUES (15053, 14744, 3, '汉台区', '陕西省，汉中市，汉台区', '107.028233', '33.077674', '0916', '723000', '610702', 'HanTaiQu', 'HTQ', 'H');
INSERT INTO `sys_area` VALUES (15054, 14744, 3, '洋县', '陕西省，汉中市，洋县', '107.549962', '33.223283', '0916', '723300', '610723', 'YangXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (15055, 14744, 3, '城固县', '陕西省，汉中市，城固县', '107.329887', '33.153098', '0916', '723200', '610722', 'ChengGuXian', 'CGX', 'C');
INSERT INTO `sys_area` VALUES (15056, 14744, 3, '佛坪县', '陕西省，汉中市，佛坪县', '107.988582', '33.520745', '0916', '723400', '610730', 'FoPingXian', 'FPX', 'F');
INSERT INTO `sys_area` VALUES (15057, 14744, 3, '勉县', '陕西省，汉中市，勉县', '106.680175', '33.155618', '0916', '724200', '610725', 'MianXian', 'MX', 'M');
INSERT INTO `sys_area` VALUES (15058, 14744, 3, '略阳县', '陕西省，汉中市，略阳县', '106.153899', '33.329638', '0916', '724300', '610727', 'LveYangXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (15059, 14744, 3, '南郑区', '陕西省，汉中市，南郑区', '106.942393', '33.003341', '0916', '723100', '610703', 'NanZhengQu', 'NZQ', 'N');
INSERT INTO `sys_area` VALUES (15060, 14744, 3, '西乡县', '陕西省，汉中市，西乡县', '107.765858', '32.987961', '0916', '723500', '610724', 'XiXiangXian', 'XXX', 'X');
INSERT INTO `sys_area` VALUES (15061, 14744, 3, '镇巴县', '陕西省，汉中市，镇巴县', '107.89531', '32.535854', '0916', '723600', '610728', 'ZhenBaXian', 'ZBX', 'Z');
INSERT INTO `sys_area` VALUES (15062, 14744, 3, '宁强县', '陕西省，汉中市，宁强县', '106.25739', '32.830806', '0916', '724400', '610726', 'NingQiangXian', 'NQX', 'N');
INSERT INTO `sys_area` VALUES (15240, 14745, 3, '宁陕县', '陕西省，安康市，宁陕县', '108.313714', '33.312184', '0915', '711600', '610923', 'NingShanXian', 'NSX', 'N');
INSERT INTO `sys_area` VALUES (15241, 14745, 3, '石泉县', '陕西省，安康市，石泉县', '108.250512', '33.038512', '0915', '725200', '610922', 'ShiQuanXian', 'SQX', 'S');
INSERT INTO `sys_area` VALUES (15242, 14745, 3, '旬阳县', '陕西省，安康市，旬阳县', '109.368149', '32.833567', '0915', '725700', '610928', 'XunYangXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (15243, 14745, 3, '汉滨区', '陕西省，安康市，汉滨区', '109.029098', '32.690817', '0915', '725000', '610902', 'HanBinQu', 'HBQ', 'H');
INSERT INTO `sys_area` VALUES (15244, 14745, 3, '汉阴县', '陕西省，安康市，汉阴县', '108.510946', '32.891121', '0915', '725100', '610921', 'HanYinXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (15245, 14745, 3, '紫阳县', '陕西省，安康市，紫阳县', '108.537788', '32.520176', '0915', '725300', '610924', 'ZiYangXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (15246, 14745, 3, '白河县', '陕西省，安康市，白河县', '110.114186', '32.809484', '0915', '725800', '610929', 'BaiHeXian', 'BHX', 'B');
INSERT INTO `sys_area` VALUES (15247, 14745, 3, '平利县', '陕西省，安康市，平利县', '109.361865', '32.387933', '0915', '725500', '610926', 'PingLiXian', 'PLX', 'P');
INSERT INTO `sys_area` VALUES (15248, 14745, 3, '镇坪县', '陕西省，安康市，镇坪县', '109.526437', '31.883395', '0915', '725600', '610927', 'ZhenPingXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (15249, 14745, 3, '岚皋县', '陕西省，安康市，岚皋县', '108.900663', '32.31069', '0915', '725400', '610925', 'LanGaoXian', 'LGX', 'L');
INSERT INTO `sys_area` VALUES (15390, 14746, 3, '神木市', '陕西省，榆林市，神木市', '110.497005', '38.835641', '0912', '719300', '610881', 'ShenMuShi', 'SMS', 'S');
INSERT INTO `sys_area` VALUES (15391, 14746, 3, '榆阳区', '陕西省，榆林市，榆阳区', '109.74791', '38.299267', '0912', '719000', '610802', 'YuYangQu', 'YYQ', 'Y');
INSERT INTO `sys_area` VALUES (15392, 14746, 3, '府谷县', '陕西省，榆林市，府谷县', '111.069645', '39.029243', '0912', '719400', '610822', 'FuGuXian', 'FGX', 'F');
INSERT INTO `sys_area` VALUES (15393, 14746, 3, '子洲县', '陕西省，榆林市，子洲县', '110.03457', '37.611573', '0912', '718400', '610831', 'ZiZhouXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (15394, 14746, 3, '横山区', '陕西省，榆林市，横山区', '109.292596', '37.964048', '0912', '719100', '610803', 'HengShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (15395, 14746, 3, '佳县', '陕西省，榆林市，佳县', '110.493367', '38.021597', '0912', '719200', '610828', 'JiaXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (15396, 14746, 3, '靖边县', '陕西省，榆林市，靖边县', '108.80567', '37.596084', '0912', '718500', '610824', 'JingBianXian', 'JBX', 'J');
INSERT INTO `sys_area` VALUES (15397, 14746, 3, '清涧县', '陕西省，榆林市，清涧县', '110.12146', '37.087702', '0912', '718300', '610830', 'QingJianXian', 'QJX', 'Q');
INSERT INTO `sys_area` VALUES (15398, 14746, 3, '绥德县', '陕西省，榆林市，绥德县', '110.265377', '37.507701', '0912', '718000', '610826', 'SuiDeXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (15399, 14746, 3, '吴堡县', '陕西省，榆林市，吴堡县', '110.739315', '37.451925', '0912', '718200', '610829', 'WuBuXian', 'WBX', 'W');
INSERT INTO `sys_area` VALUES (15400, 14746, 3, '米脂县', '陕西省，榆林市，米脂县', '110.178683', '37.759081', '0912', '718100', '610827', 'MiZhiXian', 'MZX', 'M');
INSERT INTO `sys_area` VALUES (15401, 14746, 3, '定边县', '陕西省，榆林市，定边县', '107.601284', '37.59523', '0912', '718600', '610825', 'DingBianXian', 'DBX', 'D');
INSERT INTO `sys_area` VALUES (15573, 14747, 3, '耀州区', '陕西省，铜川市，耀州区', '108.962538', '34.910206', '0919', '727100', '610204', 'YaoZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (15574, 14747, 3, '宜君县', '陕西省，铜川市，宜君县', '109.118278', '35.398766', '0919', '727200', '610222', 'YiJunXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (15575, 14747, 3, '印台区', '陕西省，铜川市，印台区', '109.100814', '35.111927', '0919', '727007', '610203', 'YinTaiQu', 'YTQ', 'Y');
INSERT INTO `sys_area` VALUES (15576, 14747, 3, '王益区', '陕西省，铜川市，王益区', '109.075862', '35.069098', '0919', '727000', '610202', 'WangYiQu', 'WYQ', 'W');
INSERT INTO `sys_area` VALUES (15615, 14748, 3, '旬邑县', '陕西省，咸阳市，旬邑县', '108.337231', '35.112234', '029', '711300', '610429', 'XunYiXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (15616, 14748, 3, '长武县', '陕西省，咸阳市，长武县', '107.795835', '35.206122', '029', '713600', '610428', 'ChangWuXian', 'CWX', 'C');
INSERT INTO `sys_area` VALUES (15617, 14748, 3, '彬县', '陕西省，咸阳市，彬县', '108.083674', '35.034233', '029', '713500', '610427', 'BinXian', 'BX', 'B');
INSERT INTO `sys_area` VALUES (15618, 14748, 3, '永寿县', '陕西省，咸阳市，永寿县', '108.143129', '34.692619', '029', '713400', '610426', 'YongShouXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (15619, 14748, 3, '淳化县', '陕西省，咸阳市，淳化县', '108.581173', '34.79797', '029', '711200', '610430', 'ChunHuaXian', 'CHX', 'C');
INSERT INTO `sys_area` VALUES (15620, 14748, 3, '乾县', '陕西省，咸阳市，乾县', '108.247406', '34.527261', '029', '713300', '610424', 'QianXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (15621, 14748, 3, '礼泉县', '陕西省，咸阳市，礼泉县', '108.428317', '34.482583', '029', '713200', '610425', 'LiQuanXian', 'LQX', 'L');
INSERT INTO `sys_area` VALUES (15622, 14748, 3, '三原县', '陕西省，咸阳市，三原县', '108.943481', '34.613996', '029', '713800', '610422', 'SanYuanXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (15623, 14748, 3, '秦都区', '陕西省，咸阳市，秦都区', '108.698636', '34.329801', '029', '712000', '610402', 'QinDouQu', 'QDQ', 'Q');
INSERT INTO `sys_area` VALUES (15624, 14748, 3, '渭城区', '陕西省，咸阳市，渭城区', '108.730957', '34.336847', '029', '712000', '610404', 'WeiChengQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (15625, 14748, 3, '兴平市', '陕西省，咸阳市，兴平市', '108.488493', '34.297134', '029', '713100', '610481', 'XingPingShi', 'XPS', 'X');
INSERT INTO `sys_area` VALUES (15626, 14748, 3, '武功县', '陕西省，咸阳市，武功县', '108.212857', '34.259732', '029', '712200', '610431', 'WuGongXian', 'WGX', 'W');
INSERT INTO `sys_area` VALUES (15627, 14748, 3, '杨陵区', '陕西省，咸阳市，杨陵区', '108.086348', '34.27135', '029', '712100', '610403', 'YangLingQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (15628, 14748, 3, '泾阳县', '陕西省，咸阳市，泾阳县', '108.83784', '34.528493', '029', '713700', '610423', 'JingYangXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (15770, 14749, 3, '陇县', '陕西省，宝鸡市，陇县', '106.857066', '34.893262', '0917', '721200', '610327', 'LongXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (15771, 14749, 3, '麟游县', '陕西省，宝鸡市，麟游县', '107.796608', '34.677714', '0917', '721500', '610329', 'LinYouXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (15772, 14749, 3, '千阳县', '陕西省，宝鸡市，千阳县', '107.132987', '34.642584', '0917', '721100', '610328', 'QianYangXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (15773, 14749, 3, '渭滨区', '陕西省，宝鸡市，渭滨区', '107.144467', '34.371008', '0917', '721000', '610302', 'WeiBinQu', 'WBQ', 'W');
INSERT INTO `sys_area` VALUES (15774, 14749, 3, '金台区', '陕西省，宝鸡市，金台区', '107.149943', '34.375192', '0917', '721000', '610303', 'JinTaiQu', 'JTQ', 'J');
INSERT INTO `sys_area` VALUES (15775, 14749, 3, '岐山县', '陕西省，宝鸡市，岐山县', '107.624464', '34.44296', '0917', '722400', '610323', 'QiShanXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (15776, 14749, 3, '凤县', '陕西省，宝鸡市，凤县', '106.525212', '33.912464', '0917', '721700', '610330', 'FengXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (15777, 14749, 3, '眉县', '陕西省，宝鸡市，眉县', '107.752371', '34.272137', '0917', '722300', '610326', 'MeiXian', 'MX', 'M');
INSERT INTO `sys_area` VALUES (15778, 14749, 3, '扶风县', '陕西省，宝鸡市，扶风县', '107.891419', '34.375497', '0917', '722200', '610324', 'FuFengXian', 'FFX', 'F');
INSERT INTO `sys_area` VALUES (15779, 14749, 3, '太白县', '陕西省，宝鸡市，太白县', '107.316533', '34.059215', '0917', '721600', '610331', 'TaiBaiXian', 'TBX', 'T');
INSERT INTO `sys_area` VALUES (15780, 14749, 3, '陈仓区', '陕西省，宝鸡市，陈仓区', '107.383645', '34.352747', '0917', '721300', '610304', 'ChenCangQu', 'CCQ', 'C');
INSERT INTO `sys_area` VALUES (15781, 14749, 3, '凤翔县', '陕西省，宝鸡市，凤翔县', '107.400577', '34.521668', '0917', '721400', '610322', 'FengXiangXian', 'FXX', 'F');
INSERT INTO `sys_area` VALUES (15900, 14750, 3, '吴起县', '陕西省，延安市，吴起县', '108.176976', '36.924852', '0911', '717600', '610626', 'WuQiXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (15901, 14750, 3, '子长县', '陕西省，延安市，子长县', '109.675968', '37.14207', '0911', '717300', '610623', 'ZiChangXian', 'ZCX', 'Z');
INSERT INTO `sys_area` VALUES (15902, 14750, 3, '延长县', '陕西省，延安市，延长县', '110.012961', '36.578306', '0911', '717100', '610621', 'YanChangXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (15903, 14750, 3, '宝塔区', '陕西省，延安市，宝塔区', '109.49069', '36.596291', '0911', '716000', '610602', 'BaoTaQu', 'BTQ', 'B');
INSERT INTO `sys_area` VALUES (15904, 14750, 3, '安塞区', '陕西省，延安市，安塞区', '109.325341', '36.86441', '0911', '717400', '610603', 'AnSaiQu', 'ASQ', 'A');
INSERT INTO `sys_area` VALUES (15905, 14750, 3, '宜川县', '陕西省，延安市，宜川县', '110.175537', '36.050391', '0911', '716200', '610630', 'YiChuanXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (15906, 14750, 3, '延川县', '陕西省，延安市，延川县', '110.190314', '36.882066', '0911', '717200', '610622', 'YanChuanXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (15907, 14750, 3, '志丹县', '陕西省，延安市，志丹县', '108.768898', '36.823031', '0911', '717500', '610625', 'ZhiDanXian', 'ZDX', 'Z');
INSERT INTO `sys_area` VALUES (15908, 14750, 3, '甘泉县', '陕西省，延安市，甘泉县', '109.34961', '36.277729', '0911', '716100', '610627', 'GanQuanXian', 'GQX', 'G');
INSERT INTO `sys_area` VALUES (15909, 14750, 3, '洛川县', '陕西省，延安市，洛川县', '109.435712', '35.762133', '0911', '727400', '610629', 'LuoChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (15910, 14750, 3, '富县', '陕西省，延安市，富县', '109.384136', '35.996495', '0911', '727500', '610628', 'FuXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (15911, 14750, 3, '黄陵县', '陕西省，延安市，黄陵县', '109.262469', '35.580165', '0911', '727300', '610632', 'HuangLingXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (15912, 14750, 3, '黄龙县', '陕西省，延安市，黄龙县', '109.83502', '35.583276', '0911', '715700', '610631', 'HuangLongXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (16025, 14751, 3, '韩城市', '陕西省，渭南市，韩城市', '110.452391', '35.475238', '0913', '715400', '610581', 'HanChengShi', 'HCS', 'H');
INSERT INTO `sys_area` VALUES (16026, 14751, 3, '白水县', '陕西省，渭南市，白水县', '109.594309', '35.177291', '0913', '715600', '610527', 'BaiShuiXian', 'BSX', 'B');
INSERT INTO `sys_area` VALUES (16027, 14751, 3, '富平县', '陕西省，渭南市，富平县', '109.187174', '34.746679', '0913', '711700', '610528', 'FuPingXian', 'FPX', 'F');
INSERT INTO `sys_area` VALUES (16028, 14751, 3, '大荔县', '陕西省，渭南市，大荔县', '109.943123', '34.795011', '0913', '715100', '610523', 'DaLiXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (16029, 14751, 3, '临渭区', '陕西省，渭南市，临渭区', '109.503299', '34.501271', '0913', '714000', '610502', 'LinWeiQu', 'LWQ', 'L');
INSERT INTO `sys_area` VALUES (16030, 14751, 3, '华州区', '陕西省，渭南市，华州区', '109.76141', '34.511958', '0913', '714100', '610503', 'HuaZhouQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (16031, 14751, 3, '华阴市', '陕西省，渭南市，华阴市', '110.08952', '34.565359', '0913', '714200', '610582', 'HuaYinShi', 'HYS', 'H');
INSERT INTO `sys_area` VALUES (16032, 14751, 3, '潼关县', '陕西省，渭南市，潼关县', '110.24726', '34.544515', '0913', '714300', '610522', 'TongGuanXian', 'TGX', 'T');
INSERT INTO `sys_area` VALUES (16033, 14751, 3, '合阳县', '陕西省，渭南市，合阳县', '110.147979', '35.237098', '0913', '715300', '610524', 'HeYangXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (16034, 14751, 3, '澄城县', '陕西省，渭南市，澄城县', '109.937609', '35.184', '0913', '715200', '610525', 'ChengChengXian', 'CCX', 'C');
INSERT INTO `sys_area` VALUES (16035, 14751, 3, '蒲城县', '陕西省，渭南市，蒲城县', '109.589653', '34.956034', '0913', '715500', '610526', 'PuChengXian', 'PCX', 'P');
INSERT INTO `sys_area` VALUES (16170, 10, 2, '上海城区', '上海市，上海城区', '121.472644', '31.231706', '', '', '310100', 'ShangHaiChengQu', 'SHCQ', 'S');
INSERT INTO `sys_area` VALUES (16171, 16170, 3, '崇明区', '上海市，上海城区，崇明区', '121.397516', '31.626946', '021', '202150', '310151', 'ChongMingQu', 'CMQ', 'C');
INSERT INTO `sys_area` VALUES (16172, 16170, 3, '奉贤区', '上海市，上海城区，奉贤区', '121.458472', '30.912345', '021', '201400', '310120', 'FengXianQu', 'FXQ', 'F');
INSERT INTO `sys_area` VALUES (16173, 16170, 3, '浦东新区', '上海市，上海城区，浦东新区', '121.567706', '31.245944', '021', '200135', '310115', 'PuDongXinQu', 'PDXQ', 'P');
INSERT INTO `sys_area` VALUES (16174, 16170, 3, '金山区', '上海市，上海城区，金山区', '121.330736', '30.724697', '021', '200540', '310116', 'JinShanQu', 'JSQ', 'J');
INSERT INTO `sys_area` VALUES (16175, 16170, 3, '宝山区', '上海市，上海城区，宝山区', '121.489934', '31.398896', '021', '201900', '310113', 'BaoShanQu', 'BSQ', 'B');
INSERT INTO `sys_area` VALUES (16176, 16170, 3, '黄浦区', '上海市，上海城区，黄浦区', '121.490317', '31.222771', '021', '200001', '310101', 'HuangPuQu', 'HPQ', 'H');
INSERT INTO `sys_area` VALUES (16177, 16170, 3, '嘉定区', '上海市，上海城区，嘉定区', '121.250333', '31.383524', '021', '201800', '310114', 'JiaDingQu', 'JDQ', 'J');
INSERT INTO `sys_area` VALUES (16178, 16170, 3, '徐汇区', '上海市，上海城区，徐汇区', '121.43752', '31.179973', '021', '200030', '310104', 'XuHuiQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (16179, 16170, 3, '普陀区', '上海市，上海城区，普陀区', '121.392499', '31.241701', '021', '200333', '310107', 'PuTuoQu', 'PTQ', 'P');
INSERT INTO `sys_area` VALUES (16180, 16170, 3, '闵行区', '上海市，上海城区，闵行区', '121.375972', '31.111658', '021', '201100', '310112', 'MinXingQu', 'MXQ', 'M');
INSERT INTO `sys_area` VALUES (16181, 16170, 3, '杨浦区', '上海市，上海城区，杨浦区', '121.522797', '31.270755', '021', '200082', '310110', 'YangPuQu', 'YPQ', 'Y');
INSERT INTO `sys_area` VALUES (16182, 16170, 3, '青浦区', '上海市，上海城区，青浦区', '121.113021', '31.151209', '021', '201700', '310118', 'QingPuQu', 'QPQ', 'Q');
INSERT INTO `sys_area` VALUES (16183, 16170, 3, '松江区', '上海市，上海城区，松江区', '121.223543', '31.03047', '021', '201600', '310117', 'SongJiangQu', 'SJQ', 'S');
INSERT INTO `sys_area` VALUES (16184, 16170, 3, '长宁区', '上海市，上海城区，长宁区', '121.4222', '31.218123', '021', '200050', '310105', 'ChangNingQu', 'CNQ', 'C');
INSERT INTO `sys_area` VALUES (16185, 16170, 3, '虹口区', '上海市，上海城区，虹口区', '121.491832', '31.26097', '021', '200086', '310109', 'HongKouQu', 'HKQ', 'H');
INSERT INTO `sys_area` VALUES (16186, 16170, 3, '静安区', '上海市，上海城区，静安区', '121.448224', '31.229003', '021', '200040', '310106', 'JingAnQu', 'JAQ', 'J');
INSERT INTO `sys_area` VALUES (16416, 11, 2, '铜仁市', '贵州省，铜仁市', '109.191555', '27.718346', '0856', '554300', '520600', 'TongRenShi', 'TRS', 'T');
INSERT INTO `sys_area` VALUES (16417, 11, 2, '六盘水市', '贵州省，六盘水市', '104.846743', '26.584643', '0858', '553400', '520200', 'LiuPanShuiShi', 'LPSS', 'L');
INSERT INTO `sys_area` VALUES (16418, 11, 2, '黔东南苗族侗族自治州', '贵州省，黔东南苗族侗族自治州', '107.977488', '26.583352', '0855', '556000', '522600', 'QianDongNanMiaoZuDongZuZiZhiZhou', 'QDNMZDZZZZ', 'Q');
INSERT INTO `sys_area` VALUES (16419, 11, 2, '遵义市', '贵州省，遵义市', '106.937265', '27.706626', '0852', '563000', '520300', 'ZunYiShi', 'ZYS', 'Z');
INSERT INTO `sys_area` VALUES (16420, 11, 2, '黔南布依族苗族自治州', '贵州省，黔南布依族苗族自治州', '107.517156', '26.258219', '0854', '558000', '522700', 'QianNanBuYiZuMiaoZuZiZhiZhou', 'QNBYZMZZZZ', 'Q');
INSERT INTO `sys_area` VALUES (16421, 11, 2, '黔西南布依族苗族自治州', '贵州省，黔西南布依族苗族自治州', '104.897971', '25.08812', '0859', '562400', '522300', 'QianXiNanBuYiZuMiaoZuZiZhiZhou', 'QXNBYZMZZZZ', 'Q');
INSERT INTO `sys_area` VALUES (16422, 11, 2, '安顺市', '贵州省，安顺市', '105.932188', '26.245544', '0853', '561000', '520400', 'AnShunShi', 'ASS', 'A');
INSERT INTO `sys_area` VALUES (16423, 11, 2, '毕节市', '贵州省，毕节市', '105.28501', '27.301693', '0857', '551700', '520500', 'BiJieShi', 'BJS', 'B');
INSERT INTO `sys_area` VALUES (16424, 11, 2, '贵阳市', '贵州省，贵阳市', '106.713478', '26.578343', '0851', '550001', '520100', 'GuiYangShi', 'GYS', 'G');
INSERT INTO `sys_area` VALUES (16425, 16416, 3, '印江土家族苗族自治县', '贵州省，铜仁市，印江土家族苗族自治县', '108.405517', '27.997976', '0856', '555200', '520625', 'YinJiangTuJiaZuMiaoZuZiZhiXian', 'YJTJZMZZZX', 'Y');
INSERT INTO `sys_area` VALUES (16426, 16416, 3, '玉屏侗族自治县', '贵州省，铜仁市，玉屏侗族自治县', '108.917882', '27.238024', '0856', '554004', '520622', 'YuPingDongZuZiZhiXian', 'YPDZZZX', 'Y');
INSERT INTO `sys_area` VALUES (16427, 16416, 3, '石阡县', '贵州省，铜仁市，石阡县', '108.229854', '27.519386', '0856', '555100', '520623', 'ShiQianXian', 'SQX', 'S');
INSERT INTO `sys_area` VALUES (16428, 16416, 3, '碧江区', '贵州省，铜仁市，碧江区', '109.192117', '27.718745', '0856', '554300', '520602', 'BiJiangQu', 'BJQ', 'B');
INSERT INTO `sys_area` VALUES (16429, 16416, 3, '思南县', '贵州省，铜仁市，思南县', '108.255827', '27.941331', '0856', '565100', '520624', 'SiNanXian', 'SNX', 'S');
INSERT INTO `sys_area` VALUES (16430, 16416, 3, '德江县', '贵州省，铜仁市，德江县', '108.117317', '28.26094', '0856', '565200', '520626', 'DeJiangXian', 'DJX', 'D');
INSERT INTO `sys_area` VALUES (16431, 16416, 3, '沿河土家族自治县', '贵州省，铜仁市，沿河土家族自治县', '108.495746', '28.560487', '0856', '565300', '520627', 'YanHeTuJiaZuZiZhiXian', 'YHTJZZZX', 'Y');
INSERT INTO `sys_area` VALUES (16432, 16416, 3, '江口县', '贵州省，铜仁市，江口县', '108.848427', '27.691904', '0856', '554400', '520621', 'JiangKouXian', 'JKX', 'J');
INSERT INTO `sys_area` VALUES (16433, 16416, 3, '万山区', '贵州省，铜仁市，万山区', '109.21199', '27.51903', '0856', '554200', '520603', 'WanShanQu', 'WSQ', 'W');
INSERT INTO `sys_area` VALUES (16434, 16416, 3, '松桃苗族自治县', '贵州省，铜仁市，松桃苗族自治县', '109.202627', '28.165419', '0856', '554100', '520628', 'SongTaoMiaoZuZiZhiXian', 'STMZZZX', 'S');
INSERT INTO `sys_area` VALUES (16606, 16417, 3, '钟山区', '贵州省，六盘水市，钟山区', '104.846244', '26.584805', '0858', '553000', '520201', 'ZhongShanQu', 'ZSQ', 'Z');
INSERT INTO `sys_area` VALUES (16607, 16417, 3, '六枝特区', '贵州省，六盘水市，六枝特区', '105.474235', '26.210662', '0858', '553400', '520203', 'LiuZhiTeQu', 'LZTQ', 'L');
INSERT INTO `sys_area` VALUES (16608, 16417, 3, '盘州市', '贵州省，六盘水市，盘州市', '104.468367', '25.706966', '0858', '561601', '520281', 'PanZhouShi', 'PZS', 'P');
INSERT INTO `sys_area` VALUES (16609, 16417, 3, '水城县', '贵州省，六盘水市，水城县', '104.95685', '26.540478', '0858', '553000', '520221', 'ShuiChengXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (16697, 16418, 3, '三穗县', '贵州省，黔东南苗族侗族自治州，三穗县', '108.681121', '26.959884', '0855', '556500', '522624', 'SanSuiXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (16698, 16418, 3, '锦屏县', '贵州省，黔东南苗族侗族自治州，锦屏县', '109.20252', '26.680625', '0855', '556700', '522628', 'JinPingXian', 'JPX', 'J');
INSERT INTO `sys_area` VALUES (16699, 16418, 3, '剑河县', '贵州省，黔东南苗族侗族自治州，剑河县', '108.440499', '26.727349', '0855', '556400', '522629', 'JianHeXian', 'JHX', 'J');
INSERT INTO `sys_area` VALUES (16700, 16418, 3, '天柱县', '贵州省，黔东南苗族侗族自治州，天柱县', '109.212798', '26.909684', '0855', '556600', '522627', 'TianZhuXian', 'TZX', 'T');
INSERT INTO `sys_area` VALUES (16701, 16418, 3, '从江县', '贵州省，黔东南苗族侗族自治州，从江县', '108.912648', '25.747058', '0855', '557400', '522633', 'CongJiangXian', 'CJX', 'C');
INSERT INTO `sys_area` VALUES (16702, 16418, 3, '雷山县', '贵州省，黔东南苗族侗族自治州，雷山县', '108.079613', '26.381027', '0855', '557100', '522634', 'LeiShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (16703, 16418, 3, '黎平县', '贵州省，黔东南苗族侗族自治州，黎平县', '109.136504', '26.230636', '0855', '557300', '522631', 'LiPingXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (16704, 16418, 3, '榕江县', '贵州省，黔东南苗族侗族自治州，榕江县', '108.521026', '25.931085', '0855', '557200', '522632', 'RongJiangXian', 'RJX', 'R');
INSERT INTO `sys_area` VALUES (16705, 16418, 3, '施秉县', '贵州省，黔东南苗族侗族自治州，施秉县', '108.12678', '27.034657', '0855', '556200', '522623', 'ShiBingXian', 'SBX', 'S');
INSERT INTO `sys_area` VALUES (16706, 16418, 3, '镇远县', '贵州省，黔东南苗族侗族自治州，镇远县', '108.423656', '27.050233', '0855', '557700', '522625', 'ZhenYuanXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (16707, 16418, 3, '凯里市', '贵州省，黔东南苗族侗族自治州，凯里市', '107.977541', '26.582964', '0855', '556000', '522601', 'KaiLiShi', 'KLS', 'K');
INSERT INTO `sys_area` VALUES (16708, 16418, 3, '丹寨县', '贵州省，黔东南苗族侗族自治州，丹寨县', '107.794808', '26.199497', '0855', '557500', '522636', 'DanZhaiXian', 'DZX', 'D');
INSERT INTO `sys_area` VALUES (16709, 16418, 3, '麻江县', '贵州省，黔东南苗族侗族自治州，麻江县', '107.593172', '26.494803', '0855', '557600', '522635', 'MaJiangXian', 'MJX', 'M');
INSERT INTO `sys_area` VALUES (16710, 16418, 3, '黄平县', '贵州省，黔东南苗族侗族自治州，黄平县', '107.901337', '26.896973', '0855', '556100', '522622', 'HuangPingXian', 'HPX', 'H');
INSERT INTO `sys_area` VALUES (16711, 16418, 3, '台江县', '贵州省，黔东南苗族侗族自治州，台江县', '108.314637', '26.669138', '0855', '556300', '522630', 'TaiJiangXian', 'TJX', 'T');
INSERT INTO `sys_area` VALUES (16712, 16418, 3, '岑巩县', '贵州省，黔东南苗族侗族自治州，岑巩县', '108.816459', '27.173244', '0855', '557800', '522626', 'CenGongXian', 'CGX', 'C');
INSERT INTO `sys_area` VALUES (16917, 16419, 3, '桐梓县', '贵州省，遵义市，桐梓县', '106.826591', '28.131559', '0852', '563200', '520322', 'TongZiXian', 'TZX', 'T');
INSERT INTO `sys_area` VALUES (16918, 16419, 3, '湄潭县', '贵州省，遵义市，湄潭县', '107.485723', '27.765839', '0852', '564100', '520328', 'MeiTanXian', 'MTX', 'M');
INSERT INTO `sys_area` VALUES (16919, 16419, 3, '绥阳县', '贵州省，遵义市，绥阳县', '107.191024', '27.951342', '0852', '563300', '520323', 'SuiYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (16920, 16419, 3, '余庆县', '贵州省，遵义市，余庆县', '107.892566', '27.221552', '0852', '564400', '520329', 'YuQingXian', 'YQX', 'Y');
INSERT INTO `sys_area` VALUES (16921, 16419, 3, '红花岗区', '贵州省，遵义市，红花岗区', '106.943784', '27.694395', '0852', '563000', '520302', 'HongHuaGangQu', 'HHGQ', 'H');
INSERT INTO `sys_area` VALUES (16922, 16419, 3, '汇川区', '贵州省，遵义市，汇川区', '106.937265', '27.706626', '0852', '563000', '520303', 'HuiChuanQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (16923, 16419, 3, '凤冈县', '贵州省，遵义市，凤冈县', '107.722021', '27.960858', '0852', '564200', '520327', 'FengGangXian', 'FGX', 'F');
INSERT INTO `sys_area` VALUES (16924, 16419, 3, '务川仡佬族苗族自治县', '贵州省，遵义市，务川仡佬族苗族自治县', '107.887857', '28.521567', '0852', '564300', '520326', 'WuChuanYiLaoZuMiaoZuZiZhiXian', 'WCYLZMZZZX', 'W');
INSERT INTO `sys_area` VALUES (16925, 16419, 3, '仁怀市', '贵州省，遵义市，仁怀市', '106.412476', '27.803377', '0852', '564500', '520382', 'RenHuaiShi', 'RHS', 'R');
INSERT INTO `sys_area` VALUES (16926, 16419, 3, '播州区', '贵州省，遵义市，播州区', '106.831668', '27.535288', '0851', '563100', '520304', 'BoZhouQu', 'BZQ', 'B');
INSERT INTO `sys_area` VALUES (16927, 16419, 3, '赤水市', '贵州省，遵义市，赤水市', '105.698116', '28.587057', '0852', '564700', '520381', 'ChiShuiShi', 'CSS', 'C');
INSERT INTO `sys_area` VALUES (16928, 16419, 3, '习水县', '贵州省，遵义市，习水县', '106.200954', '28.327826', '0852', '564600', '520330', 'XiShuiXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (16929, 16419, 3, '正安县', '贵州省，遵义市，正安县', '107.441872', '28.550337', '0852', '563400', '520324', 'ZhengAnXian', 'ZAX', 'Z');
INSERT INTO `sys_area` VALUES (16930, 16419, 3, '道真仡佬族苗族自治县', '贵州省，遵义市，道真仡佬族苗族自治县', '107.605342', '28.880088', '0852', '563500', '520325', 'DaoZhenYiLaoZuMiaoZuZiZhiXian', 'DZYLZMZZZX', 'D');
INSERT INTO `sys_area` VALUES (17179, 16420, 3, '都匀市', '贵州省，黔南布依族苗族自治州，都匀市', '107.517021', '26.258205', '0854', '558000', '522701', 'DouYunShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (17180, 16420, 3, '惠水县', '贵州省，黔南布依族苗族自治州，惠水县', '106.657848', '26.128637', '0854', '550600', '522731', 'HuiShuiXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (17181, 16420, 3, '平塘县', '贵州省，黔南布依族苗族自治州，平塘县', '107.32405', '25.831803', '0854', '558300', '522727', 'PingTangXian', 'PTX', 'P');
INSERT INTO `sys_area` VALUES (17182, 16420, 3, '独山县', '贵州省，黔南布依族苗族自治州，独山县', '107.542757', '25.826283', '0854', '558200', '522726', 'DuShanXian', 'DSX', 'D');
INSERT INTO `sys_area` VALUES (17183, 16420, 3, '罗甸县', '贵州省，黔南布依族苗族自治州，罗甸县', '106.750006', '25.429894', '0854', '550100', '522728', 'LuoDianXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (17184, 16420, 3, '荔波县', '贵州省，黔南布依族苗族自治州，荔波县', '107.8838', '25.412239', '0854', '558400', '522722', 'LiBoXian', 'LBX', 'L');
INSERT INTO `sys_area` VALUES (17185, 16420, 3, '长顺县', '贵州省，黔南布依族苗族自治州，长顺县', '106.447376', '26.022116', '0854', '550700', '522729', 'ChangShunXian', 'CSX', 'C');
INSERT INTO `sys_area` VALUES (17186, 16420, 3, '龙里县', '贵州省，黔南布依族苗族自治州，龙里县', '106.977733', '26.448809', '0854', '551200', '522730', 'LongLiXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (17187, 16420, 3, '贵定县', '贵州省，黔南布依族苗族自治州，贵定县', '107.233588', '26.580807', '0854', '551300', '522723', 'GuiDingXian', 'GDX', 'G');
INSERT INTO `sys_area` VALUES (17188, 16420, 3, '三都水族自治县', '贵州省，黔南布依族苗族自治州，三都水族自治县', '107.87747', '25.985183', '0854', '558100', '522732', 'SanDouShuiZuZiZhiXian', 'SDSZZZX', 'S');
INSERT INTO `sys_area` VALUES (17189, 16420, 3, '福泉市', '贵州省，黔南布依族苗族自治州，福泉市', '107.513508', '26.702508', '0854', '550500', '522702', 'FuQuanShi', 'FQS', 'F');
INSERT INTO `sys_area` VALUES (17190, 16420, 3, '瓮安县', '贵州省，黔南布依族苗族自治州，瓮安县', '107.478417', '27.066339', '0854', '550400', '522725', 'WengAnXian', 'WAX', 'W');
INSERT INTO `sys_area` VALUES (17365, 16421, 3, '兴仁县', '贵州省，黔西南布依族苗族自治州，兴仁县', '105.192778', '25.431378', '0859', '562300', '522322', 'XingRenXian', 'XRX', 'X');
INSERT INTO `sys_area` VALUES (17366, 16421, 3, '兴义市', '贵州省，黔西南布依族苗族自治州，兴义市', '104.897982', '25.088599', '0859', '562400', '522301', 'XingYiShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (17367, 16421, 3, '安龙县', '贵州省，黔西南布依族苗族自治州，安龙县', '105.471498', '25.108959', '0859', '552400', '522328', 'AnLongXian', 'ALX', 'A');
INSERT INTO `sys_area` VALUES (17368, 16421, 3, '册亨县', '贵州省，黔西南布依族苗族自治州，册亨县', '105.81241', '24.983338', '0859', '552200', '522327', 'CeHengXian', 'CHX', 'C');
INSERT INTO `sys_area` VALUES (17369, 16421, 3, '晴隆县', '贵州省，黔西南布依族苗族自治州，晴隆县', '105.218773', '25.832881', '0859', '561400', '522324', 'QingLongXian', 'QLX', 'Q');
INSERT INTO `sys_area` VALUES (17370, 16421, 3, '普安县', '贵州省，黔西南布依族苗族自治州，普安县', '104.955347', '25.786404', '0859', '561500', '522323', 'PuAnXian', 'PAX', 'P');
INSERT INTO `sys_area` VALUES (17371, 16421, 3, '贞丰县', '贵州省，黔西南布依族苗族自治州，贞丰县', '105.650133', '25.385752', '0859', '562200', '522325', 'ZhenFengXian', 'ZFX', 'Z');
INSERT INTO `sys_area` VALUES (17372, 16421, 3, '望谟县', '贵州省，黔西南布依族苗族自治州，望谟县', '106.091563', '25.166667', '0859', '552300', '522326', 'WangMoXian', 'WMX', 'W');
INSERT INTO `sys_area` VALUES (17500, 16422, 3, '西秀区', '贵州省，安顺市，西秀区', '105.946169', '26.248323', '0853', '561000', '520402', 'XiXiuQu', 'XXQ', 'X');
INSERT INTO `sys_area` VALUES (17501, 16422, 3, '普定县', '贵州省，安顺市，普定县', '105.745609', '26.305794', '0853', '562100', '520422', 'PuDingXian', 'PDX', 'P');
INSERT INTO `sys_area` VALUES (17502, 16422, 3, '紫云苗族布依族自治县', '贵州省，安顺市，紫云苗族布依族自治县', '106.084515', '25.751567', '0853', '550800', '520425', 'ZiYunMiaoZuBuYiZuZiZhiXian', 'ZYMZBYZZZX', 'Z');
INSERT INTO `sys_area` VALUES (17503, 16422, 3, '镇宁布依族苗族自治县', '贵州省，安顺市，镇宁布依族苗族自治县', '105.768656', '26.056096', '0853', '561200', '520423', 'ZhenNingBuYiZuMiaoZuZiZhiXian', 'ZNBYZMZZZX', 'Z');
INSERT INTO `sys_area` VALUES (17504, 16422, 3, '关岭布依族苗族自治县', '贵州省，安顺市，关岭布依族苗族自治县', '105.618454', '25.944248', '0853', '561300', '520424', 'GuanLingBuYiZuMiaoZuZiZhiXian', 'GLBYZMZZZX', 'G');
INSERT INTO `sys_area` VALUES (17505, 16422, 3, '平坝区', '贵州省，安顺市，平坝区', '106.259942', '26.40608', '0853', '561100', '520403', 'PingBaQu', 'PBQ', 'P');
INSERT INTO `sys_area` VALUES (17594, 16423, 3, '七星关区', '贵州省，毕节市，七星关区', '105.284852', '27.302085', '0857', '551700', '520502', 'QiXingGuanQu', 'QXGQ', 'Q');
INSERT INTO `sys_area` VALUES (17595, 16423, 3, '大方县', '贵州省，毕节市，大方县', '105.609254', '27.143521', '0857', '551600', '520521', 'DaFangXian', 'DFX', 'D');
INSERT INTO `sys_area` VALUES (17596, 16423, 3, '黔西县', '贵州省，毕节市，黔西县', '106.038299', '27.024923', '0857', '551500', '520522', 'QianXiXian', 'QXX', 'Q');
INSERT INTO `sys_area` VALUES (17597, 16423, 3, '金沙县', '贵州省，毕节市，金沙县', '106.222103', '27.459693', '0857', '551800', '520523', 'JinShaXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (17598, 16423, 3, '纳雍县', '贵州省，毕节市，纳雍县', '105.375322', '26.769875', '0857', '553300', '520525', 'NaYongXian', 'NYX', 'N');
INSERT INTO `sys_area` VALUES (17599, 16423, 3, '织金县', '贵州省，毕节市，织金县', '105.768997', '26.668497', '0857', '552100', '520524', 'ZhiJinXian', 'ZJX', 'Z');
INSERT INTO `sys_area` VALUES (17600, 16423, 3, '赫章县', '贵州省，毕节市，赫章县', '104.726438', '27.119243', '0857', '553200', '520527', 'HeZhangXian', 'HZX', 'H');
INSERT INTO `sys_area` VALUES (17601, 16423, 3, '威宁彝族回族苗族自治县', '贵州省，毕节市，威宁彝族回族苗族自治县', '104.286523', '26.859099', '0857', '553100', '520526', 'WeiNingYiZuHuiZuMiaoZuZiZhiXian', 'WNYZHZMZZZX', 'W');
INSERT INTO `sys_area` VALUES (17860, 16424, 3, '开阳县', '贵州省，贵阳市，开阳县', '106.969438', '27.056793', '0851', '550300', '520121', 'KaiYangXian', 'KYX', 'K');
INSERT INTO `sys_area` VALUES (17861, 16424, 3, '白云区', '贵州省，贵阳市，白云区', '106.633037', '26.676849', '0851', '550014', '520113', 'BaiYunQu', 'BYQ', 'B');
INSERT INTO `sys_area` VALUES (17862, 16424, 3, '乌当区', '贵州省，贵阳市，乌当区', '106.762123', '26.630928', '0851', '550018', '520112', 'WuDangQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (17863, 16424, 3, '观山湖区', '贵州省，贵阳市，观山湖区', '106.626323', '26.646358', '0851', '550009', '520115', 'GuanShanHuQu', 'GSHQ', 'G');
INSERT INTO `sys_area` VALUES (17864, 16424, 3, '息烽县', '贵州省，贵阳市，息烽县', '106.737693', '27.092665', '0851', '551100', '520122', 'XiFengXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (17865, 16424, 3, '修文县', '贵州省，贵阳市，修文县', '106.599218', '26.840672', '0851', '550200', '520123', 'XiuWenXian', 'XWX', 'X');
INSERT INTO `sys_area` VALUES (17866, 16424, 3, '清镇市', '贵州省，贵阳市，清镇市', '106.470278', '26.551289', '0851', '551400', '520181', 'QingZhenShi', 'QZS', 'Q');
INSERT INTO `sys_area` VALUES (17867, 16424, 3, '花溪区', '贵州省，贵阳市，花溪区', '106.670791', '26.410464', '0851', '550025', '520111', 'HuaXiQu', 'HXQ', 'H');
INSERT INTO `sys_area` VALUES (17868, 16424, 3, '南明区', '贵州省，贵阳市，南明区', '106.715963', '26.573743', '0851', '550001', '520102', 'NanMingQu', 'NMQ', 'N');
INSERT INTO `sys_area` VALUES (17869, 16424, 3, '云岩区', '贵州省，贵阳市，云岩区', '106.713397', '26.58301', '0851', '550001', '520103', 'YunYanQu', 'YYQ', 'Y');
INSERT INTO `sys_area` VALUES (18038, 12, 2, '重庆城区', '重庆市，重庆城区', '106.504962', '29.533155', '', '', '500100', 'ChongQingChengQu', 'CQCQ', 'C');
INSERT INTO `sys_area` VALUES (18039, 12, 2, '重庆郊县', '重庆市，重庆郊县', '108.170255', '29.291965', '', '', '500200', 'ChongQingJiaoXian', 'CQJX', 'C');
INSERT INTO `sys_area` VALUES (18040, 18038, 3, '铜梁区', '重庆市，重庆城区，铜梁区', '106.054948', '29.839944', '023', '402560', '500151', 'TongLiangQu', 'TLQ', 'T');
INSERT INTO `sys_area` VALUES (18041, 18038, 3, '潼南区', '重庆市，重庆城区，潼南区', '105.841818', '30.189554', '023', '402660', '500152', 'TongNanQu', 'TNQ', 'T');
INSERT INTO `sys_area` VALUES (18042, 18038, 3, '合川区', '重庆市，重庆城区，合川区', '106.265554', '29.990993', '023', '401520', '500117', 'HeChuanQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (18043, 18038, 3, '璧山区', '重庆市，重庆城区，璧山区', '106.231126', '29.593581', '023', '402760', '500120', 'BiShanQu', 'BSQ', 'B');
INSERT INTO `sys_area` VALUES (18044, 18038, 3, '大足区', '重庆市，重庆城区，大足区', '105.715319', '29.700498', '023', '400900', '500111', 'DaZuQu', 'DZQ', 'D');
INSERT INTO `sys_area` VALUES (18045, 18038, 3, '长寿区', '重庆市，重庆城区，长寿区', '107.074854', '29.833671', '023', '401220', '500115', 'ChangShouQu', 'CSQ', 'C');
INSERT INTO `sys_area` VALUES (18046, 18038, 3, '荣昌区', '重庆市，重庆城区，荣昌区', '105.594061', '29.403627', '023', '402460', '500153', 'RongChangQu', 'RCQ', 'R');
INSERT INTO `sys_area` VALUES (18047, 18038, 3, '永川区', '重庆市，重庆城区，永川区', '105.894714', '29.348748', '023', '402160', '500118', 'YongChuanQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (18048, 18038, 3, '大渡口区', '重庆市，重庆城区，大渡口区', '106.48613', '29.481002', '023', '400080', '500104', 'DaDuKouQu', 'DDKQ', 'D');
INSERT INTO `sys_area` VALUES (18049, 18038, 3, '武隆区', '重庆市，重庆城区，武隆区', '107.75655', '29.32376', '023', '408500', '500156', 'WuLongQu', 'WLQ', 'W');
INSERT INTO `sys_area` VALUES (18050, 18038, 3, '江北区', '重庆市，重庆城区，江北区', '106.532844', '29.575352', '023', '400020', '500105', 'JiangBeiQu', 'JBQ', 'J');
INSERT INTO `sys_area` VALUES (18051, 18038, 3, '渝中区', '重庆市，重庆城区，渝中区', '106.56288', '29.556742', '023', '400010', '500103', 'YuZhongQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (18052, 18038, 3, '万州区', '重庆市，重庆城区，万州区', '108.380246', '30.807807', '023', '404000', '500101', 'WanZhouQu', 'WZQ', 'W');
INSERT INTO `sys_area` VALUES (18053, 18038, 3, '涪陵区', '重庆市，重庆城区，涪陵区', '107.394905', '29.703652', '023', '408000', '500102', 'FuLingQu', 'FLQ', 'F');
INSERT INTO `sys_area` VALUES (18054, 18038, 3, '九龙坡区', '重庆市，重庆城区，九龙坡区', '106.480989', '29.523492', '023', '400050', '500107', 'JiuLongPoQu', 'JLPQ', 'J');
INSERT INTO `sys_area` VALUES (18055, 18038, 3, '渝北区', '重庆市，重庆城区，渝北区', '106.512851', '29.601451', '023', '401120', '500112', 'YuBeiQu', 'YBQ', 'Y');
INSERT INTO `sys_area` VALUES (18056, 18038, 3, '南川区', '重庆市，重庆城区，南川区', '107.098153', '29.156646', '023', '408400', '500119', 'NanChuanQu', 'NCQ', 'N');
INSERT INTO `sys_area` VALUES (18057, 18038, 3, '綦江区', '重庆市，重庆城区，綦江区', '106.651417', '29.028091', '023', '400800', '500110', 'QiJiangQu', 'QJQ', 'Q');
INSERT INTO `sys_area` VALUES (18058, 18038, 3, '梁平区', '重庆市，重庆城区，梁平区', '107.800034', '30.672168', '023', '405200', '500155', 'LiangPingQu', 'LPQ', 'L');
INSERT INTO `sys_area` VALUES (18059, 18038, 3, '开州区', '重庆市，重庆城区，开州区', '108.413317', '31.167735', '023', '405400', '500154', 'KaiZhouQu', 'KZQ', 'K');
INSERT INTO `sys_area` VALUES (18060, 18038, 3, '黔江区', '重庆市，重庆城区，黔江区', '108.782577', '29.527548', '023', '409700', '500114', 'QianJiangQu', 'QJQ', 'Q');
INSERT INTO `sys_area` VALUES (18061, 18038, 3, '江津区', '重庆市，重庆城区，江津区', '106.253156', '29.283387', '023', '402260', '500116', 'JiangJinQu', 'JJQ', 'J');
INSERT INTO `sys_area` VALUES (18062, 18038, 3, '南岸区', '重庆市，重庆城区，南岸区', '106.560813', '29.523992', '023', '400064', '500108', 'NanAnQu', 'NAQ', 'N');
INSERT INTO `sys_area` VALUES (18063, 18038, 3, '巴南区', '重庆市，重庆城区，巴南区', '106.519423', '29.381919', '023', '401320', '500113', 'BaNanQu', 'BNQ', 'B');
INSERT INTO `sys_area` VALUES (18064, 18038, 3, '沙坪坝区', '重庆市，重庆城区，沙坪坝区', '106.4542', '29.541224', '023', '400030', '500106', 'ShaPingBaQu', 'SPBQ', 'S');
INSERT INTO `sys_area` VALUES (18065, 18038, 3, '北碚区', '重庆市，重庆城区，北碚区', '106.437868', '29.82543', '023', '400700', '500109', 'BeiBeiQu', 'BBQ', 'B');
INSERT INTO `sys_area` VALUES (18710, 18039, 3, '城口县', '重庆市，重庆郊县，城口县', '108.6649', '31.946293', '023', '405900', '500229', 'ChengKouXian', 'CKX', 'C');
INSERT INTO `sys_area` VALUES (18711, 18039, 3, '巫溪县', '重庆市，重庆郊县，巫溪县', '109.628912', '31.3966', '023', '405800', '500238', 'WuXiXian', 'WXX', 'W');
INSERT INTO `sys_area` VALUES (18712, 18039, 3, '奉节县', '重庆市，重庆郊县，奉节县', '109.465774', '31.019967', '023', '404600', '500236', 'FengJieXian', 'FJX', 'F');
INSERT INTO `sys_area` VALUES (18713, 18039, 3, '丰都县', '重庆市，重庆郊县，丰都县', '107.73248', '29.866424', '023', '408200', '500230', 'FengDouXian', 'FDX', 'F');
INSERT INTO `sys_area` VALUES (18714, 18039, 3, '彭水苗族土家族自治县', '重庆市，重庆郊县，彭水苗族土家族自治县', '108.166551', '29.293856', '023', '409600', '500243', 'PengShuiMiaoZuTuJiaZuZiZhiXian', 'PSMZTJZZZX', 'P');
INSERT INTO `sys_area` VALUES (18715, 18039, 3, '垫江县', '重庆市，重庆郊县，垫江县', '107.348692', '30.330012', '023', '408300', '500231', 'DianJiangXian', 'DJX', 'D');
INSERT INTO `sys_area` VALUES (18716, 18039, 3, '秀山土家族苗族自治县', '重庆市，重庆郊县，秀山土家族苗族自治县', '108.996043', '28.444772', '023', '409900', '500241', 'XiuShanTuJiaZuMiaoZuZiZhiXian', 'XSTJZMZZZX', 'X');
INSERT INTO `sys_area` VALUES (18717, 18039, 3, '云阳县', '重庆市，重庆郊县，云阳县', '108.697698', '30.930529', '023', '404500', '500235', 'YunYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (18718, 18039, 3, '巫山县', '重庆市，重庆郊县，巫山县', '109.878928', '31.074843', '023', '404700', '500237', 'WuShanXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (18719, 18039, 3, '酉阳土家族苗族自治县', '重庆市，重庆郊县，酉阳土家族苗族自治县', '108.767201', '28.839828', '023', '409800', '500242', 'YouYangTuJiaZuMiaoZuZiZhiXian', 'YYTJZMZZZX', 'Y');
INSERT INTO `sys_area` VALUES (18720, 18039, 3, '忠县', '重庆市，重庆郊县，忠县', '108.037518', '30.291537', '023', '404300', '500233', 'ZhongXian', 'ZX', 'Z');
INSERT INTO `sys_area` VALUES (18721, 18039, 3, '石柱土家族自治县', '重庆市，重庆郊县，石柱土家族自治县', '108.112448', '29.99853', '023', '409100', '500240', 'ShiZhuTuJiaZuZiZhiXian', 'SZTJZZZX', 'S');
INSERT INTO `sys_area` VALUES (19102, 13, 2, '昌都市', '西藏自治区，昌都市', '97.178452', '31.136875', '0895', '854000', '540300', 'ChangDuShi', 'CDS', 'C');
INSERT INTO `sys_area` VALUES (19103, 13, 2, '拉萨市', '西藏自治区，拉萨市', '91.132212', '29.660361', '0891', '850000', '540100', 'LaSaShi', 'LSS', 'L');
INSERT INTO `sys_area` VALUES (19104, 13, 2, '那曲市', '西藏自治区，那曲市', '92.060214', '31.476004', '0896', '852000', '540600', 'NaQuShi', 'NQS', 'N');
INSERT INTO `sys_area` VALUES (19105, 13, 2, '日喀则市', '西藏自治区，日喀则市', '88.885148', '29.267519', '0892', '857000', '540200', 'RiKaZeShi', 'RKZS', 'R');
INSERT INTO `sys_area` VALUES (19106, 13, 2, '山南市', '西藏自治区，山南市', '91.766529', '29.236023', '0893', '856000', '540500', 'ShanNanShi', 'SNS', 'S');
INSERT INTO `sys_area` VALUES (19107, 13, 2, '林芝市', '西藏自治区，林芝市', '94.362348', '29.654693', '0894', '850400', '540400', 'LinZhiShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (19108, 13, 2, '阿里地区', '西藏自治区，阿里地区', '80.105498', '32.503187', '0897', '859000', '542500', 'ALiDiQu', 'ALDQ', 'A');
INSERT INTO `sys_area` VALUES (19109, 19102, 3, '江达县', '西藏自治区，昌都市，江达县', '98.218351', '31.499534', '0895', '854100', '540321', 'JiangDaXian', 'JDX', 'J');
INSERT INTO `sys_area` VALUES (19110, 19102, 3, '卡若区', '西藏自治区，昌都市，卡若区', '97.178255', '31.137035', '0895', '854000', '540302', 'KaRuoQu', 'KRQ', 'K');
INSERT INTO `sys_area` VALUES (19111, 19102, 3, '丁青县', '西藏自治区，昌都市，丁青县', '95.597748', '31.410681', '0895', '855700', '540324', 'DingQingXian', 'DQX', 'D');
INSERT INTO `sys_area` VALUES (19112, 19102, 3, '类乌齐县', '西藏自治区，昌都市，类乌齐县', '96.601259', '31.213048', '0895', '855600', '540323', 'LeiWuQiXian', 'LWQX', 'L');
INSERT INTO `sys_area` VALUES (19113, 19102, 3, '边坝县', '西藏自治区，昌都市，边坝县', '94.707504', '30.933849', '0895', '855500', '540330', 'BianBaXian', 'BBX', 'B');
INSERT INTO `sys_area` VALUES (19114, 19102, 3, '洛隆县', '西藏自治区，昌都市，洛隆县', '95.823418', '30.741947', '0895', '855400', '540329', 'LuoLongXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (19115, 19102, 3, '八宿县', '西藏自治区，昌都市，八宿县', '96.917893', '30.053408', '0895', '854600', '540326', 'BaSuXian', 'BSX', 'B');
INSERT INTO `sys_area` VALUES (19116, 19102, 3, '贡觉县', '西藏自治区，昌都市，贡觉县', '98.271191', '30.859206', '0895', '854200', '540322', 'GongJueXian', 'GJX', 'G');
INSERT INTO `sys_area` VALUES (19117, 19102, 3, '察雅县', '西藏自治区，昌都市，察雅县', '97.565701', '30.653038', '0895', '854300', '540325', 'ChaYaXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (19118, 19102, 3, '芒康县', '西藏自治区，昌都市，芒康县', '98.596444', '29.686615', '0895', '854500', '540328', 'MangKangXian', 'MKX', 'M');
INSERT INTO `sys_area` VALUES (19119, 19102, 3, '左贡县', '西藏自治区，昌都市，左贡县', '97.840532', '29.671335', '0895', '854400', '540327', 'ZuoGongXian', 'ZGX', 'Z');
INSERT INTO `sys_area` VALUES (19258, 19103, 3, '当雄县', '西藏自治区，拉萨市，当雄县', '91.103551', '30.474819', '0891', '851500', '540122', 'DangXiongXian', 'DXX', 'D');
INSERT INTO `sys_area` VALUES (19259, 19103, 3, '墨竹工卡县', '西藏自治区，拉萨市，墨竹工卡县', '91.731158', '29.834657', '0891', '850200', '540127', 'MoZhuGongKaXian', 'MZGKX', 'M');
INSERT INTO `sys_area` VALUES (19260, 19103, 3, '林周县', '西藏自治区，拉萨市，林周县', '91.261842', '29.895754', '0891', '851600', '540121', 'LinZhouXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (19261, 19103, 3, '堆龙德庆区', '西藏自治区，拉萨市，堆龙德庆区', '91.002823', '29.647347', '0891', '851400', '540103', 'DuiLongDeQingQu', 'DLDQQ', 'D');
INSERT INTO `sys_area` VALUES (19262, 19103, 3, '城关区', '西藏自治区，拉萨市，城关区', '91.132911', '29.659472', '0891', '850000', '540102', 'ChengGuanQu', 'CGQ', 'C');
INSERT INTO `sys_area` VALUES (19263, 19103, 3, '尼木县', '西藏自治区，拉萨市，尼木县', '90.165545', '29.431346', '0891', '851300', '540123', 'NiMuXian', 'NMX', 'N');
INSERT INTO `sys_area` VALUES (19264, 19103, 3, '达孜区', '西藏自治区，拉萨市，达孜区', '91.350976', '29.670314', '0891', '850100', '540104', 'DaZiQu', 'DZQ', 'D');
INSERT INTO `sys_area` VALUES (19265, 19103, 3, '曲水县', '西藏自治区，拉萨市，曲水县', '90.738051', '29.349895', '0891', '850600', '540124', 'QuShuiXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (19331, 19104, 3, '聂荣县', '西藏自治区，那曲市，聂荣县', '92.303659', '32.107855', '0896', '853500', '540623', 'NieRongXian', 'NRX', 'N');
INSERT INTO `sys_area` VALUES (19332, 19104, 3, '巴青县', '西藏自治区，那曲市，巴青县', '94.054049', '31.918691', '0896', '852100', '540628', 'BaQingXian', 'BQX', 'B');
INSERT INTO `sys_area` VALUES (19333, 19104, 3, '安多县', '西藏自治区，那曲市，安多县', '91.681879', '32.260299', '0896', '853400', '540624', 'AnDuoXian', 'ADX', 'A');
INSERT INTO `sys_area` VALUES (19334, 19104, 3, '班戈县', '西藏自治区，那曲市，班戈县', '90.011822', '31.394578', '0896', '852500', '540627', 'BanGeXian', 'BGX', 'B');
INSERT INTO `sys_area` VALUES (19335, 19104, 3, '比如县', '西藏自治区，那曲市，比如县', '93.68044', '31.479917', '0896', '852300', '540622', 'BiRuXian', 'BRX', 'B');
INSERT INTO `sys_area` VALUES (19336, 19104, 3, '申扎县', '西藏自治区，那曲市，申扎县', '88.709777', '30.929056', '0896', '853100', '540625', 'ShenZaXian', 'SZX', 'S');
INSERT INTO `sys_area` VALUES (19337, 19104, 3, '索县', '西藏自治区，那曲市，索县', '93.784964', '31.886173', '0896', '852200', '540626', 'SuoXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (19338, 19104, 3, '色尼区', '西藏自治区，那曲市，色尼区', '92.061862', '31.475756', '0896', '852000', '540602', 'SeNiQu', 'SNQ', 'S');
INSERT INTO `sys_area` VALUES (19339, 19104, 3, '嘉黎县', '西藏自治区，那曲市，嘉黎县', '93.232907', '30.640846', '0896', '852400', '540621', 'JiaLiXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (19340, 19104, 3, '尼玛县', '西藏自治区，那曲市，尼玛县', '87.236646', '31.784979', '0896', '852600', '540629', 'NiMaXian', 'NMX', 'N');
INSERT INTO `sys_area` VALUES (19341, 19104, 3, '双湖县', '西藏自治区，那曲市，双湖县', '88.838578', '33.18698', '0896', '852600', '540630', 'ShuangHuXian', 'SHX', 'S');
INSERT INTO `sys_area` VALUES (19452, 19105, 3, '仲巴县', '西藏自治区，日喀则市，仲巴县', '84.032826', '29.768336', '0892', '858800', '540232', 'ZhongBaXian', 'ZBX', 'Z');
INSERT INTO `sys_area` VALUES (19453, 19105, 3, '昂仁县', '西藏自治区，日喀则市，昂仁县', '87.23578', '29.294758', '0892', '858500', '540226', 'AngRenXian', 'ARX', 'A');
INSERT INTO `sys_area` VALUES (19454, 19105, 3, '谢通门县', '西藏自治区，日喀则市，谢通门县', '88.260517', '29.431597', '0892', '858900', '540227', 'XieTongMenXian', 'XTMX', 'X');
INSERT INTO `sys_area` VALUES (19455, 19105, 3, '南木林县', '西藏自治区，日喀则市，南木林县', '89.099434', '29.680459', '0892', '857100', '540221', 'NanMuLinXian', 'NMLX', 'N');
INSERT INTO `sys_area` VALUES (19456, 19105, 3, '萨嘎县', '西藏自治区，日喀则市，萨嘎县', '85.234622', '29.328194', '0892', '857800', '540236', 'SaGaXian', 'SGX', 'S');
INSERT INTO `sys_area` VALUES (19457, 19105, 3, '桑珠孜区', '西藏自治区，日喀则市，桑珠孜区', '88.88667', '29.267003', '0892', '857000', '540202', 'SangZhuZiQu', 'SZZQ', 'S');
INSERT INTO `sys_area` VALUES (19458, 19105, 3, '拉孜县', '西藏自治区，日喀则市，拉孜县', '87.63743', '29.085136', '0892', '858100', '540225', 'LaZiXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (19459, 19105, 3, '吉隆县', '西藏自治区，日喀则市，吉隆县', '85.298349', '28.852416', '0892', '858700', '540234', 'JiLongXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (19460, 19105, 3, '仁布县', '西藏自治区，日喀则市，仁布县', '89.843207', '29.230299', '0892', '857200', '540229', 'RenBuXian', 'RBX', 'R');
INSERT INTO `sys_area` VALUES (19461, 19105, 3, '萨迦县', '西藏自治区，日喀则市，萨迦县', '88.023007', '28.901077', '0892', '857800', '540224', 'SaJiaXian', 'SJX', 'S');
INSERT INTO `sys_area` VALUES (19462, 19105, 3, '白朗县', '西藏自治区，日喀则市，白朗县', '89.263618', '29.106627', '0892', '857300', '540228', 'BaiLangXian', 'BLX', 'B');
INSERT INTO `sys_area` VALUES (19463, 19105, 3, '定日县', '西藏自治区，日喀则市，定日县', '87.123887', '28.656667', '0892', '858200', '540223', 'DingRiXian', 'DRX', 'D');
INSERT INTO `sys_area` VALUES (19464, 19105, 3, '江孜县', '西藏自治区，日喀则市，江孜县', '89.605044', '28.908845', '0892', '857400', '540222', 'JiangZiXian', 'JZX', 'J');
INSERT INTO `sys_area` VALUES (19465, 19105, 3, '聂拉木县', '西藏自治区，日喀则市，聂拉木县', '85.981953', '28.15595', '0892', '858300', '540235', 'NieLaMuXian', 'NLMX', 'N');
INSERT INTO `sys_area` VALUES (19466, 19105, 3, '康马县', '西藏自治区，日喀则市，康马县', '89.683406', '28.554719', '0892', '857500', '540230', 'KangMaXian', 'KMX', 'K');
INSERT INTO `sys_area` VALUES (19467, 19105, 3, '岗巴县', '西藏自治区，日喀则市，岗巴县', '88.518903', '28.274371', '0892', '857700', '540237', 'GangBaXian', 'GBX', 'G');
INSERT INTO `sys_area` VALUES (19468, 19105, 3, '定结县', '西藏自治区，日喀则市，定结县', '87.767723', '28.36409', '0892', '857900', '540231', 'DingJieXian', 'DJX', 'D');
INSERT INTO `sys_area` VALUES (19469, 19105, 3, '亚东县', '西藏自治区，日喀则市，亚东县', '88.906806', '27.482772', '0892', '857600', '540233', 'YaDongXian', 'YDX', 'Y');
INSERT INTO `sys_area` VALUES (19673, 19106, 3, '桑日县', '西藏自治区，山南市，桑日县', '92.015732', '29.259774', '0893', '856200', '540523', 'SangRiXian', 'SRX', 'S');
INSERT INTO `sys_area` VALUES (19674, 19106, 3, '加查县', '西藏自治区，山南市，加查县', '92.591043', '29.140921', '0893', '856400', '540528', 'JiaChaXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (19675, 19106, 3, '乃东区', '西藏自治区，山南市，乃东区', '91.76525', '29.236106', '0893', '856100', '540502', 'NaiDongQu', 'NDQ', 'N');
INSERT INTO `sys_area` VALUES (19676, 19106, 3, '贡嘎县', '西藏自治区，山南市，贡嘎县', '90.985271', '29.289078', '0893', '850700', '540522', 'GongGaXian', 'GGX', 'G');
INSERT INTO `sys_area` VALUES (19677, 19106, 3, '扎囊县', '西藏自治区，山南市，扎囊县', '91.338', '29.246476', '0893', '850800', '540521', 'ZaNangXian', 'ZNX', 'Z');
INSERT INTO `sys_area` VALUES (19678, 19106, 3, '浪卡子县', '西藏自治区，山南市，浪卡子县', '90.398747', '28.96836', '0893', '851100', '540531', 'LangQiaZiXian', 'LQZX', 'L');
INSERT INTO `sys_area` VALUES (19679, 19106, 3, '隆子县', '西藏自治区，山南市，隆子县', '92.463309', '28.408548', '0893', '856600', '540529', 'LongZiXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (19680, 19106, 3, '琼结县', '西藏自治区，山南市，琼结县', '91.683753', '29.025242', '0893', '856800', '540524', 'QiongJieXian', 'QJX', 'Q');
INSERT INTO `sys_area` VALUES (19681, 19106, 3, '曲松县', '西藏自治区，山南市，曲松县', '92.201066', '29.063656', '0893', '856300', '540525', 'QuSongXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (19682, 19106, 3, '措美县', '西藏自治区，山南市，措美县', '91.432347', '28.437353', '0893', '856900', '540526', 'CuoMeiXian', 'CMX', 'C');
INSERT INTO `sys_area` VALUES (19683, 19106, 3, '洛扎县', '西藏自治区，山南市，洛扎县', '90.858243', '28.385765', '0893', '856600', '540527', 'LuoZaXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (19684, 19106, 3, '错那县', '西藏自治区，山南市，错那县', '91.960132', '27.991707', '0893', '856700', '540530', 'CuoNaXian', 'CNX', 'C');
INSERT INTO `sys_area` VALUES (19767, 19107, 3, '波密县', '西藏自治区，林芝市，波密县', '95.768151', '29.858771', '0894', '855200', '540424', 'BoMiXian', 'BMX', 'B');
INSERT INTO `sys_area` VALUES (19768, 19107, 3, '工布江达县', '西藏自治区，林芝市，工布江达县', '93.246515', '29.88447', '0894', '850300', '540421', 'GongBuJiangDaXian', 'GBJDX', 'G');
INSERT INTO `sys_area` VALUES (19769, 19107, 3, '巴宜区', '西藏自治区，林芝市，巴宜区', '94.360987', '29.653732', '0894', '850400', '540402', 'BaYiQu', 'BYQ', 'B');
INSERT INTO `sys_area` VALUES (19770, 19107, 3, '墨脱县', '西藏自治区，林芝市，墨脱县', '95.332245', '29.32573', '0894', '855300', '540423', 'MoTuoXian', 'MTX', 'M');
INSERT INTO `sys_area` VALUES (19771, 19107, 3, '米林县', '西藏自治区，林芝市，米林县', '94.213679', '29.213811', '0894', '850500', '540422', 'MiLinXian', 'MLX', 'M');
INSERT INTO `sys_area` VALUES (19772, 19107, 3, '察隅县', '西藏自治区，林芝市，察隅县', '97.465002', '28.660244', '0894', '855100', '540425', 'ChaYuXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (19773, 19107, 3, '朗县', '西藏自治区，林芝市，朗县', '93.073429', '29.0446', '0894', '856500', '540426', 'LangXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (19828, 19108, 3, '札达县', '西藏自治区，阿里地区，札达县', '79.803191', '31.478587', '0897', '859600', '542522', 'ZhaDaXian', 'ZDX', 'Z');
INSERT INTO `sys_area` VALUES (19829, 19108, 3, '改则县', '西藏自治区，阿里地区，改则县', '84.062384', '32.302076', '0897', '859200', '542526', 'GaiZeXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (19830, 19108, 3, '措勤县', '西藏自治区，阿里地区，措勤县', '85.159254', '31.016774', '0897', '859300', '542527', 'CuoQinXian', 'CQX', 'C');
INSERT INTO `sys_area` VALUES (19831, 19108, 3, '普兰县', '西藏自治区，阿里地区，普兰县', '81.177588', '30.291896', '0897', '859500', '542521', 'PuLanXian', 'PLX', 'P');
INSERT INTO `sys_area` VALUES (19832, 19108, 3, '噶尔县', '西藏自治区，阿里地区，噶尔县', '80.105005', '32.503373', '0897', '859400', '542523', 'GaErXian', 'GEX', 'G');
INSERT INTO `sys_area` VALUES (19833, 19108, 3, '日土县', '西藏自治区，阿里地区，日土县', '79.731937', '33.382454', '0897', '859700', '542524', 'RiTuXian', 'RTX', 'R');
INSERT INTO `sys_area` VALUES (19834, 19108, 3, '革吉县', '西藏自治区，阿里地区，革吉县', '81.142896', '32.389192', '0897', '859100', '542525', 'GeJiXian', 'GJX', 'G');
INSERT INTO `sys_area` VALUES (19872, 14, 2, '阜阳市', '安徽省，阜阳市', '115.819729', '32.896969', '0558', '236033', '341200', 'FuYangShi', 'FYS', 'F');
INSERT INTO `sys_area` VALUES (19873, 14, 2, '淮北市', '安徽省，淮北市', '116.794664', '33.971707', '0561', '235000', '340600', 'HuaiBeiShi', 'HBS', 'H');
INSERT INTO `sys_area` VALUES (19874, 14, 2, '铜陵市', '安徽省，铜陵市', '117.816576', '30.929935', '0562', '244000', '340700', 'TongLingShi', 'TLS', 'T');
INSERT INTO `sys_area` VALUES (19875, 14, 2, '蚌埠市', '安徽省，蚌埠市', '117.363228', '32.939667', '0552', '233000', '340300', 'BengBuShi', 'BBS', 'B');
INSERT INTO `sys_area` VALUES (19876, 14, 2, '马鞍山市', '安徽省，马鞍山市', '118.507906', '31.689362', '0555', '243001', '340500', 'MaAnShanShi', 'MASS', 'M');
INSERT INTO `sys_area` VALUES (19877, 14, 2, '池州市', '安徽省，池州市', '117.489157', '30.656037', '0566', '247100', '341700', 'ChiZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (19878, 14, 2, '亳州市', '安徽省，亳州市', '115.782939', '33.869338', '0558', '236802', '341600', 'BoZhouShi', 'BZS', 'B');
INSERT INTO `sys_area` VALUES (19879, 14, 2, '滁州市', '安徽省，滁州市', '118.316264', '32.303627', '0550', '239000', '341100', 'ChuZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (19880, 14, 2, '安庆市', '安徽省，安庆市', '117.043551', '30.50883', '0556', '246001', '340800', 'AnQingShi', 'AQS', 'A');
INSERT INTO `sys_area` VALUES (19881, 14, 2, '黄山市', '安徽省，黄山市', '118.317325', '29.709239', '0559', '245000', '341000', 'HuangShanShi', 'HSS', 'H');
INSERT INTO `sys_area` VALUES (19882, 14, 2, '宣城市', '安徽省，宣城市', '118.757995', '30.945667', '0563', '242000', '341800', 'XuanChengShi', 'XCS', 'X');
INSERT INTO `sys_area` VALUES (19883, 14, 2, '芜湖市', '安徽省，芜湖市', '118.376451', '31.326319', '0553', '241000', '340200', 'WuHuShi', 'WHS', 'W');
INSERT INTO `sys_area` VALUES (19884, 14, 2, '六安市', '安徽省，六安市', '116.507676', '31.752889', '0564', '237000', '341500', 'LuAnShi', 'LAS', 'L');
INSERT INTO `sys_area` VALUES (19885, 14, 2, '淮南市', '安徽省，淮南市', '117.018329', '32.647574', '0554', '232001', '340400', 'HuaiNanShi', 'HNS', 'H');
INSERT INTO `sys_area` VALUES (19886, 14, 2, '合肥市', '安徽省，合肥市', '117.283042', '31.86119', '0551', '230001', '340100', 'HeFeiShi', 'HFS', 'H');
INSERT INTO `sys_area` VALUES (19887, 14, 2, '宿州市', '安徽省，宿州市', '116.984084', '33.633891', '0557', '234000', '341300', 'SuZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (19888, 19872, 3, '太和县', '安徽省，阜阳市，太和县', '115.627243', '33.16229', '0558', '236600', '341222', 'TaiHeXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (19889, 19872, 3, '临泉县', '安徽省，阜阳市，临泉县', '115.261688', '33.062698', '0558', '236400', '341221', 'LinQuanXian', 'LQX', 'L');
INSERT INTO `sys_area` VALUES (19890, 19872, 3, '颍泉区', '安徽省，阜阳市，颍泉区', '115.804525', '32.924797', '0558', '236045', '341204', 'YingQuanQu', 'YQQ', 'Y');
INSERT INTO `sys_area` VALUES (19891, 19872, 3, '颍东区', '安徽省，阜阳市，颍东区', '115.858747', '32.908861', '0558', '236058', '341203', 'YingDongQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (19892, 19872, 3, '颍州区', '安徽省，阜阳市，颍州区', '115.813914', '32.891238', '0558', '236001', '341202', 'YingZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (19893, 19872, 3, '阜南县', '安徽省，阜阳市，阜南县', '115.590534', '32.638102', '0558', '236300', '341225', 'FuNanXian', 'FNX', 'F');
INSERT INTO `sys_area` VALUES (19894, 19872, 3, '颍上县', '安徽省，阜阳市，颍上县', '116.259122', '32.637065', '0558', '236200', '341226', 'YingShangXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (19895, 19872, 3, '界首市', '安徽省，阜阳市，界首市', '115.362117', '33.26153', '0558', '236500', '341282', 'JieShouShi', 'JSS', 'J');
INSERT INTO `sys_area` VALUES (20069, 19873, 3, '杜集区', '安徽省，淮北市，杜集区', '116.833925', '33.991218', '0561', '235000', '340602', 'DuJiQu', 'DJQ', 'D');
INSERT INTO `sys_area` VALUES (20070, 19873, 3, '相山区', '安徽省，淮北市，相山区', '116.790775', '33.970916', '0561', '235000', '340603', 'XiangShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (20071, 19873, 3, '濉溪县', '安徽省，淮北市，濉溪县', '116.767435', '33.916407', '0561', '235100', '340621', 'SuiXiXian', 'SXX', 'S');
INSERT INTO `sys_area` VALUES (20072, 19873, 3, '烈山区', '安徽省，淮北市，烈山区', '116.809465', '33.889529', '0561', '235000', '340604', 'LieShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (20107, 19874, 3, '枞阳县', '安徽省，铜陵市，枞阳县', '117.222027', '30.700615', '0562', '246700', '340722', 'ZongYangXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (20108, 19874, 3, '郊区', '安徽省，铜陵市，郊区', '117.80707', '30.908927', '0562', '244000', '340711', 'JiaoQu', 'JQ', 'J');
INSERT INTO `sys_area` VALUES (20109, 19874, 3, '铜官区', '安徽省，铜陵市，铜官区', '117.818427', '30.93182', '0562', '244000', '340705', 'TongGuanQu', 'TGQ', 'T');
INSERT INTO `sys_area` VALUES (20110, 19874, 3, '义安区', '安徽省，铜陵市，义安区', '117.792288', '30.952338', '0562', '244100', '340706', 'YiAnQu', 'YAQ', 'Y');
INSERT INTO `sys_area` VALUES (20157, 19875, 3, '淮上区', '安徽省，蚌埠市，淮上区', '117.34709', '32.963147', '0552', '233002', '340311', 'HuaiShangQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (20158, 19875, 3, '固镇县', '安徽省，蚌埠市，固镇县', '117.315962', '33.318679', '0552', '233700', '340323', 'GuZhenXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (20159, 19875, 3, '龙子湖区', '安徽省，蚌埠市，龙子湖区', '117.382312', '32.950452', '0552', '233000', '340302', 'LongZiHuQu', 'LZHQ', 'L');
INSERT INTO `sys_area` VALUES (20160, 19875, 3, '五河县', '安徽省，蚌埠市，五河县', '117.888809', '33.146202', '0552', '233300', '340322', 'WuHeXian', 'WHX', 'W');
INSERT INTO `sys_area` VALUES (20161, 19875, 3, '怀远县', '安徽省，蚌埠市，怀远县', '117.200171', '32.956934', '0552', '233400', '340321', 'HuaiYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (20162, 19875, 3, '禹会区', '安徽省，蚌埠市，禹会区', '117.35259', '32.931933', '0552', '233010', '340304', 'YuHuiQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (20163, 19875, 3, '蚌山区', '安徽省，蚌埠市，蚌山区', '117.355789', '32.938066', '0552', '233000', '340303', 'BangShanQu', 'BSQ', 'B');
INSERT INTO `sys_area` VALUES (20244, 19876, 3, '博望区', '安徽省，马鞍山市，博望区', '118.843742', '31.562321', '0555', '243131', '340506', 'BoWangQu', 'BWQ', 'B');
INSERT INTO `sys_area` VALUES (20245, 19876, 3, '当涂县', '安徽省，马鞍山市，当涂县', '118.489873', '31.556167', '0555', '243100', '340521', 'DangTuXian', 'DTX', 'D');
INSERT INTO `sys_area` VALUES (20246, 19876, 3, '花山区', '安徽省，马鞍山市，花山区', '118.511308', '31.69902', '0555', '243000', '340503', 'HuaShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (20247, 19876, 3, '雨山区', '安徽省，马鞍山市，雨山区', '118.493104', '31.685912', '0555', '243071', '340504', 'YuShanQu', 'YSQ', 'Y');
INSERT INTO `sys_area` VALUES (20248, 19876, 3, '和县', '安徽省，马鞍山市，和县', '118.362998', '31.716634', '0555', '238200', '340523', 'HeXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (20249, 19876, 3, '含山县', '安徽省，马鞍山市，含山县', '118.105545', '31.727758', '0555', '238100', '340522', 'HanShanXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (20311, 19877, 3, '青阳县', '安徽省，池州市，青阳县', '117.857395', '30.63818', '0566', '242800', '341723', 'QingYangXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (20312, 19877, 3, '东至县', '安徽省，池州市，东至县', '117.021476', '30.096568', '0566', '247200', '341721', 'DongZhiXian', 'DZX', 'D');
INSERT INTO `sys_area` VALUES (20313, 19877, 3, '贵池区', '安徽省，池州市，贵池区', '117.488342', '30.657378', '0566', '247100', '341702', 'GuiChiQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (20314, 19877, 3, '石台县', '安徽省，池州市，石台县', '117.482907', '30.210324', '0566', '245100', '341722', 'ShiTaiXian', 'STX', 'S');
INSERT INTO `sys_area` VALUES (20379, 19878, 3, '涡阳县', '安徽省，亳州市，涡阳县', '116.211551', '33.502831', '0558', '233600', '341621', 'WoYangXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (20380, 19878, 3, '谯城区', '安徽省，亳州市，谯城区', '115.781214', '33.869284', '0558', '236800', '341602', 'QiaoChengQu', 'QCQ', 'Q');
INSERT INTO `sys_area` VALUES (20381, 19878, 3, '蒙城县', '安徽省，亳州市，蒙城县', '116.560337', '33.260814', '0558', '233500', '341622', 'MengChengXian', 'MCX', 'M');
INSERT INTO `sys_area` VALUES (20382, 19878, 3, '利辛县', '安徽省，亳州市，利辛县', '116.207782', '33.143503', '0558', '236700', '341623', 'LiXinXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (20483, 19879, 3, '明光市', '安徽省，滁州市，明光市', '117.998048', '32.781206', '0550', '239400', '341182', 'MingGuangShi', 'MGS', 'M');
INSERT INTO `sys_area` VALUES (20484, 19879, 3, '天长市', '安徽省，滁州市，天长市', '119.011212', '32.6815', '0550', '239300', '341181', 'TianChangShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (20485, 19879, 3, '全椒县', '安徽省，滁州市，全椒县', '118.268576', '32.09385', '0550', '239500', '341124', 'QuanJiaoXian', 'QJX', 'Q');
INSERT INTO `sys_area` VALUES (20486, 19879, 3, '凤阳县', '安徽省，滁州市，凤阳县', '117.562461', '32.867146', '0550', '233100', '341126', 'FengYangXian', 'FYX', 'F');
INSERT INTO `sys_area` VALUES (20487, 19879, 3, '定远县', '安徽省，滁州市，定远县', '117.683713', '32.527105', '0550', '233200', '341125', 'DingYuanXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (20488, 19879, 3, '来安县', '安徽省，滁州市，来安县', '118.433293', '32.450231', '0550', '239200', '341122', 'LaiAnXian', 'LAX', 'L');
INSERT INTO `sys_area` VALUES (20489, 19879, 3, '南谯区', '安徽省，滁州市，南谯区', '118.296955', '32.329841', '0550', '239000', '341103', 'NanQiaoQu', 'NQQ', 'N');
INSERT INTO `sys_area` VALUES (20490, 19879, 3, '琅琊区', '安徽省，滁州市，琅琊区', '118.316475', '32.303797', '0550', '239000', '341102', 'LangYaQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (20612, 19880, 3, '潜山县', '安徽省，安庆市，潜山县', '116.573666', '30.638222', '0556', '246300', '340824', 'QianShanXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (20613, 19880, 3, '岳西县', '安徽省，安庆市，岳西县', '116.360482', '30.848502', '0556', '246600', '340828', 'YueXiXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (20614, 19880, 3, '桐城市', '安徽省，安庆市，桐城市', '116.959656', '31.050576', '0556', '231400', '340881', 'TongChengShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (20615, 19880, 3, '太湖县', '安徽省，安庆市，太湖县', '116.305225', '30.451869', '0556', '246400', '340825', 'TaiHuXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (20616, 19880, 3, '迎江区', '安徽省，安庆市，迎江区', '117.044965', '30.506375', '0556', '246001', '340802', 'YingJiangQu', 'YJQ', 'Y');
INSERT INTO `sys_area` VALUES (20617, 19880, 3, '宜秀区', '安徽省，安庆市，宜秀区', '117.070003', '30.541323', '0556', '246003', '340811', 'YiXiuQu', 'YXQ', 'Y');
INSERT INTO `sys_area` VALUES (20618, 19880, 3, '宿松县', '安徽省，安庆市，宿松县', '116.120204', '30.158327', '0556', '246500', '340826', 'SuSongXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (20619, 19880, 3, '望江县', '安徽省，安庆市，望江县', '116.690927', '30.12491', '0556', '246200', '340827', 'WangJiangXian', 'WJX', 'W');
INSERT INTO `sys_area` VALUES (20620, 19880, 3, '大观区', '安徽省，安庆市，大观区', '117.034512', '30.505632', '0556', '246002', '340803', 'DaGuanQu', 'DGQ', 'D');
INSERT INTO `sys_area` VALUES (20621, 19880, 3, '怀宁县', '安徽省，安庆市，怀宁县', '116.828664', '30.734994', '0556', '246100', '340822', 'HuaiNingXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (20782, 19881, 3, '黄山区', '安徽省，黄山市，黄山区', '118.136639', '30.294517', '0559', '242700', '341003', 'HuangShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (20783, 19881, 3, '黟县', '安徽省，黄山市，黟县', '117.942911', '29.923812', '0559', '245500', '341023', 'YiXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (20784, 19881, 3, '休宁县', '安徽省，黄山市，休宁县', '118.188531', '29.788878', '0559', '245400', '341022', 'XiuNingXian', 'XNX', 'X');
INSERT INTO `sys_area` VALUES (20785, 19881, 3, '屯溪区', '安徽省，黄山市，屯溪区', '118.317354', '29.709186', '0559', '245000', '341002', 'TunXiQu', 'TXQ', 'T');
INSERT INTO `sys_area` VALUES (20786, 19881, 3, '祁门县', '安徽省，黄山市，祁门县', '117.717237', '29.853472', '0559', '245600', '341024', 'QiMenXian', 'QMX', 'Q');
INSERT INTO `sys_area` VALUES (20787, 19881, 3, '徽州区', '安徽省，黄山市，徽州区', '118.339743', '29.825201', '0559', '245061', '341004', 'HuiZhouQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (20788, 19881, 3, '歙县', '安徽省，黄山市，歙县', '118.428025', '29.867748', '0559', '245200', '341021', 'SheXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (20897, 19882, 3, '广德县', '安徽省，宣城市，广德县', '119.417521', '30.893116', '0563', '242200', '341822', 'GuangDeXian', 'GDX', 'G');
INSERT INTO `sys_area` VALUES (20898, 19882, 3, '泾县', '安徽省，宣城市，泾县', '118.412397', '30.685975', '0563', '242500', '341823', 'JingXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (20899, 19882, 3, '旌德县', '安徽省，宣城市，旌德县', '118.543081', '30.288057', '0563', '242600', '341825', 'JingDeXian', 'JDX', 'J');
INSERT INTO `sys_area` VALUES (20900, 19882, 3, '绩溪县', '安徽省，宣城市，绩溪县', '118.594705', '30.065267', '0563', '245300', '341824', 'JiXiXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (20901, 19882, 3, '宣州区', '安徽省，宣城市，宣州区', '118.758412', '30.946003', '0563', '242000', '341802', 'XuanZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (20902, 19882, 3, '郎溪县', '安徽省，宣城市，郎溪县', '119.185024', '31.127834', '0563', '242100', '341821', 'LangXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (20903, 19882, 3, '宁国市', '安徽省，宣城市，宁国市', '118.983407', '30.626529', '0563', '242300', '341881', 'NingGuoShi', 'NGS', 'N');
INSERT INTO `sys_area` VALUES (21003, 19883, 3, '繁昌县', '安徽省，芜湖市，繁昌县', '118.201349', '31.080896', '0553', '241200', '340222', 'FanChangXian', 'FCX', 'F');
INSERT INTO `sys_area` VALUES (21004, 19883, 3, '无为县', '安徽省，芜湖市，无为县', '117.911432', '31.303075', '0553', '238300', '340225', 'WuWeiXian', 'WWX', 'W');
INSERT INTO `sys_area` VALUES (21005, 19883, 3, '弋江区', '安徽省，芜湖市，弋江区', '118.377476', '31.313394', '0553', '241000', '340203', 'YiJiangQu', 'YJQ', 'Y');
INSERT INTO `sys_area` VALUES (21006, 19883, 3, '镜湖区', '安徽省，芜湖市，镜湖区', '118.376343', '31.32559', '0553', '241000', '340202', 'JingHuQu', 'JHQ', 'J');
INSERT INTO `sys_area` VALUES (21007, 19883, 3, '南陵县', '安徽省，芜湖市，南陵县', '118.337104', '30.919638', '0553', '242400', '340223', 'NanLingXian', 'NLX', 'N');
INSERT INTO `sys_area` VALUES (21008, 19883, 3, '鸠江区', '安徽省，芜湖市，鸠江区', '118.400174', '31.362716', '0553', '241000', '340207', 'JiuJiangQu', 'JJQ', 'J');
INSERT INTO `sys_area` VALUES (21009, 19883, 3, '三山区', '安徽省，芜湖市，三山区', '118.233987', '31.225423', '0553', '241000', '340208', 'SanShanQu', 'SSQ', 'S');
INSERT INTO `sys_area` VALUES (21010, 19883, 3, '芜湖县', '安徽省，芜湖市，芜湖县', '118.572301', '31.145262', '0553', '241100', '340221', 'WuHuXian', 'WHX', 'W');
INSERT INTO `sys_area` VALUES (21094, 19884, 3, '霍山县', '安徽省，六安市，霍山县', '116.333078', '31.402456', '0564', '237200', '341525', 'HuoShanXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (21095, 19884, 3, '裕安区', '安徽省，六安市，裕安区', '116.494543', '31.750692', '0564', '237010', '341503', 'YuAnQu', 'YAQ', 'Y');
INSERT INTO `sys_area` VALUES (21096, 19884, 3, '金寨县', '安徽省，六安市，金寨县', '115.878514', '31.681624', '0564', '237300', '341524', 'JinZhaiXian', 'JZX', 'J');
INSERT INTO `sys_area` VALUES (21097, 19884, 3, '舒城县', '安徽省，六安市，舒城县', '116.944088', '31.462848', '0564', '231300', '341523', 'ShuChengXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (21098, 19884, 3, '金安区', '安徽省，六安市，金安区', '116.503288', '31.754491', '0564', '237005', '341502', 'JinAnQu', 'JAQ', 'J');
INSERT INTO `sys_area` VALUES (21099, 19884, 3, '叶集区', '安徽省，六安市，叶集区', '115.913594', '31.84768', '0564', '237431', '341504', 'YeJiQu', 'YJQ', 'Y');
INSERT INTO `sys_area` VALUES (21100, 19884, 3, '霍邱县', '安徽省，六安市，霍邱县', '116.278875', '32.341305', '0564', '237400', '341522', 'HuoQiuXian', 'HQX', 'H');
INSERT INTO `sys_area` VALUES (21248, 19885, 3, '八公山区', '安徽省，淮南市，八公山区', '116.841111', '32.628229', '0554', '232072', '340405', 'BaGongShanQu', 'BGSQ', 'B');
INSERT INTO `sys_area` VALUES (21249, 19885, 3, '潘集区', '安徽省，淮南市，潘集区', '116.816879', '32.782117', '0554', '232082', '340406', 'PanJiQu', 'PJQ', 'P');
INSERT INTO `sys_area` VALUES (21250, 19885, 3, '谢家集区', '安徽省，淮南市，谢家集区', '116.865354', '32.598289', '0554', '232052', '340404', 'XieJiaJiQu', 'XJJQ', 'X');
INSERT INTO `sys_area` VALUES (21251, 19885, 3, '凤台县', '安徽省，淮南市，凤台县', '116.722769', '32.705382', '0554', '232100', '340421', 'FengTaiXian', 'FTX', 'F');
INSERT INTO `sys_area` VALUES (21252, 19885, 3, '大通区', '安徽省，淮南市，大通区', '117.052927', '32.632066', '0554', '232033', '340402', 'DaTongQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (21253, 19885, 3, '田家庵区', '安徽省，淮南市，田家庵区', '117.018318', '32.644342', '0554', '232000', '340403', 'TianJiaAnQu', 'TJAQ', 'T');
INSERT INTO `sys_area` VALUES (21254, 19885, 3, '寿县', '安徽省，淮南市，寿县', '116.785349', '32.577304', '0554', '232200', '340422', 'ShouXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (21350, 19886, 3, '庐阳区', '安徽省，合肥市，庐阳区', '117.283776', '31.869011', '0551', '230001', '340103', 'LuYangQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (21351, 19886, 3, '肥东县', '安徽省，合肥市，肥东县', '117.463222', '31.883992', '0551', '231600', '340122', 'FeiDongXian', 'FDX', 'F');
INSERT INTO `sys_area` VALUES (21352, 19886, 3, '庐江县', '安徽省，合肥市，庐江县', '117.289844', '31.251488', '0551', '231500', '340124', 'LuJiangXian', 'LJX', 'L');
INSERT INTO `sys_area` VALUES (21353, 19886, 3, '瑶海区', '安徽省，合肥市，瑶海区', '117.315358', '31.86961', '0551', '230011', '340102', 'YaoHaiQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (21354, 19886, 3, '长丰县', '安徽省，合肥市，长丰县', '117.164699', '32.478548', '0551', '231100', '340121', 'ChangFengXian', 'CFX', 'C');
INSERT INTO `sys_area` VALUES (21355, 19886, 3, '肥西县', '安徽省，合肥市，肥西县', '117.166118', '31.719646', '0551', '231200', '340123', 'FeiXiXian', 'FXX', 'F');
INSERT INTO `sys_area` VALUES (21356, 19886, 3, '蜀山区', '安徽省，合肥市，蜀山区', '117.262072', '31.855868', '0551', '230031', '340104', 'ShuShanQu', 'SSQ', 'S');
INSERT INTO `sys_area` VALUES (21357, 19886, 3, '包河区', '安徽省，合肥市，包河区', '117.285751', '31.82956', '0551', '230041', '340111', 'BaoHeQu', 'BHQ', 'B');
INSERT INTO `sys_area` VALUES (21358, 19886, 3, '巢湖市', '安徽省，合肥市，巢湖市', '117.874155', '31.600518', '0565', '238000', '340181', 'ChaoHuShi', 'CHS', 'C');
INSERT INTO `sys_area` VALUES (21502, 19887, 3, '砀山县', '安徽省，宿州市，砀山县', '116.351113', '34.426247', '0557', '235300', '341321', 'DangShanXian', 'DSX', 'D');
INSERT INTO `sys_area` VALUES (21503, 19887, 3, '埇桥区', '安徽省，宿州市，埇桥区', '116.983309', '33.633853', '0557', '234000', '341302', 'YongQiaoQu', 'YQQ', 'Y');
INSERT INTO `sys_area` VALUES (21504, 19887, 3, '泗县', '安徽省，宿州市，泗县', '117.885443', '33.47758', '0557', '234300', '341324', 'SiXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (21505, 19887, 3, '灵璧县', '安徽省，宿州市，灵璧县', '117.551493', '33.540629', '0557', '234200', '341323', 'LingBiXian', 'LBX', 'L');
INSERT INTO `sys_area` VALUES (21506, 19887, 3, '萧县', '安徽省，宿州市，萧县', '116.945399', '34.183266', '0557', '235200', '341322', 'XiaoXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (21625, 15, 2, '宁德市', '福建省，宁德市', '119.527082', '26.65924', '0593', '352100', '350900', 'NingDeShi', 'NDS', 'N');
INSERT INTO `sys_area` VALUES (21626, 15, 2, '福州市', '福建省，福州市', '119.306239', '26.075302', '0591', '350001', '350100', 'FuZhouShi', 'FZS', 'F');
INSERT INTO `sys_area` VALUES (21627, 15, 2, '龙岩市', '福建省，龙岩市', '117.02978', '25.091603', '0597', '364000', '350800', 'LongYanShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (21628, 15, 2, '莆田市', '福建省，莆田市', '119.007558', '25.431011', '0594', '351100', '350300', 'PuTianShi', 'PTS', 'P');
INSERT INTO `sys_area` VALUES (21629, 15, 2, '泉州市', '福建省，泉州市', '118.589421', '24.908853', '0595', '362000', '350500', 'QuanZhouShi', 'QZS', 'Q');
INSERT INTO `sys_area` VALUES (21630, 15, 2, '三明市', '福建省，三明市', '117.635001', '26.265444', '0598', '365000', '350400', 'SanMingShi', 'SMS', 'S');
INSERT INTO `sys_area` VALUES (21631, 15, 2, '厦门市', '福建省，厦门市', '118.11022', '24.490474', '0592', '361003', '350200', 'XiaMenShi', 'XMS', 'X');
INSERT INTO `sys_area` VALUES (21632, 15, 2, '漳州市', '福建省，漳州市', '117.661801', '24.510897', '0596', '363005', '350600', 'ZhangZhouShi', 'ZZS', 'Z');
INSERT INTO `sys_area` VALUES (21633, 15, 2, '南平市', '福建省，南平市', '118.178459', '26.635627', '0599', '353000', '350700', 'NanPingShi', 'NPS', 'N');
INSERT INTO `sys_area` VALUES (21634, 21625, 3, '寿宁县', '福建省，宁德市，寿宁县', '119.506733', '27.457798', '0593', '355500', '350924', 'ShouNingXian', 'SNX', 'S');
INSERT INTO `sys_area` VALUES (21635, 21625, 3, '周宁县', '福建省，宁德市，周宁县', '119.338239', '27.103106', '0593', '355400', '350925', 'ZhouNingXian', 'ZNX', 'Z');
INSERT INTO `sys_area` VALUES (21636, 21625, 3, '柘荣县', '福建省，宁德市，柘荣县', '119.898226', '27.236163', '0593', '355300', '350926', 'ZheRongXian', 'ZRX', 'Z');
INSERT INTO `sys_area` VALUES (21637, 21625, 3, '福安市', '福建省，宁德市，福安市', '119.650798', '27.084246', '0593', '355000', '350981', 'FuAnShi', 'FAS', 'F');
INSERT INTO `sys_area` VALUES (21638, 21625, 3, '霞浦县', '福建省，宁德市，霞浦县', '120.005214', '26.882068', '0593', '355100', '350921', 'XiaPuXian', 'XPX', 'X');
INSERT INTO `sys_area` VALUES (21639, 21625, 3, '屏南县', '福建省，宁德市，屏南县', '118.987544', '26.910826', '0593', '352300', '350923', 'PingNanXian', 'PNX', 'P');
INSERT INTO `sys_area` VALUES (21640, 21625, 3, '蕉城区', '福建省，宁德市，蕉城区', '119.527225', '26.659253', '0593', '352100', '350902', 'JiaoChengQu', 'JCQ', 'J');
INSERT INTO `sys_area` VALUES (21641, 21625, 3, '古田县', '福建省，宁德市，古田县', '118.743156', '26.577491', '0593', '352200', '350922', 'GuTianXian', 'GTX', 'G');
INSERT INTO `sys_area` VALUES (21642, 21625, 3, '福鼎市', '福建省，宁德市，福鼎市', '120.219761', '27.318884', '0593', '355200', '350982', 'FuDingShi', 'FDS', 'F');
INSERT INTO `sys_area` VALUES (21772, 21626, 3, '罗源县', '福建省，福州市，罗源县', '119.552645', '26.487234', '0591', '350600', '350123', 'LuoYuanXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (21773, 21626, 3, '连江县', '福建省，福州市，连江县', '119.538365', '26.202109', '0591', '350500', '350122', 'LianJiangXian', 'LJX', 'L');
INSERT INTO `sys_area` VALUES (21774, 21626, 3, '闽清县', '福建省，福州市，闽清县', '118.868416', '26.223793', '0591', '350800', '350124', 'MinQingXian', 'MQX', 'M');
INSERT INTO `sys_area` VALUES (21775, 21626, 3, '闽侯县', '福建省，福州市，闽侯县', '119.145117', '26.148567', '0591', '350100', '350121', 'MinHouXian', 'MHX', 'M');
INSERT INTO `sys_area` VALUES (21776, 21626, 3, '长乐区', '福建省，福州市，长乐区', '119.510849', '25.960583', '0591', '350200', '350112', 'ChangLeQu', 'CLQ', 'C');
INSERT INTO `sys_area` VALUES (21777, 21626, 3, '仓山区', '福建省，福州市，仓山区', '119.320988', '26.038912', '0591', '350007', '350104', 'CangShanQu', 'CSQ', 'C');
INSERT INTO `sys_area` VALUES (21778, 21626, 3, '永泰县', '福建省，福州市，永泰县', '118.939089', '25.864825', '0591', '350700', '350125', 'YongTaiXian', 'YTX', 'Y');
INSERT INTO `sys_area` VALUES (21779, 21626, 3, '平潭县', '福建省，福州市，平潭县', '119.791197', '25.503672', '0591', '350400', '350128', 'PingTanXian', 'PTX', 'P');
INSERT INTO `sys_area` VALUES (21780, 21626, 3, '福清市', '福建省，福州市，福清市', '119.376992', '25.720402', '0591', '350300', '350181', 'FuQingShi', 'FQS', 'F');
INSERT INTO `sys_area` VALUES (21781, 21626, 3, '台江区', '福建省，福州市，台江区', '119.310156', '26.058616', '0591', '350004', '350103', 'TaiJiangQu', 'TJQ', 'T');
INSERT INTO `sys_area` VALUES (21782, 21626, 3, '鼓楼区', '福建省，福州市，鼓楼区', '119.29929', '26.082284', '0591', '350001', '350102', 'GuLouQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (21783, 21626, 3, '马尾区', '福建省，福州市，马尾区', '119.458725', '25.991975', '0591', '350015', '350105', 'MaWeiQu', 'MWQ', 'M');
INSERT INTO `sys_area` VALUES (21784, 21626, 3, '晋安区', '福建省，福州市，晋安区', '119.328597', '26.078837', '0591', '350011', '350111', 'JinAnQu', 'JAQ', 'J');
INSERT INTO `sys_area` VALUES (21978, 21627, 3, '新罗区', '福建省，龙岩市，新罗区', '117.030721', '25.0918', '0597', '364000', '350802', 'XinLuoQu', 'XLQ', 'X');
INSERT INTO `sys_area` VALUES (21979, 21627, 3, '漳平市', '福建省，龙岩市，漳平市', '117.42073', '25.291597', '0597', '364400', '350881', 'ZhangPingShi', 'ZPS', 'Z');
INSERT INTO `sys_area` VALUES (21980, 21627, 3, '长汀县', '福建省，龙岩市，长汀县', '116.361007', '25.842278', '0597', '366300', '350821', 'ChangTingXian', 'CTX', 'C');
INSERT INTO `sys_area` VALUES (21981, 21627, 3, '连城县', '福建省，龙岩市，连城县', '116.756687', '25.708506', '0597', '366200', '350825', 'LianChengXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (21982, 21627, 3, '武平县', '福建省，龙岩市，武平县', '116.100928', '25.08865', '0597', '364300', '350824', 'WuPingXian', 'WPX', 'W');
INSERT INTO `sys_area` VALUES (21983, 21627, 3, '上杭县', '福建省，龙岩市，上杭县', '116.424774', '25.050019', '0597', '364200', '350823', 'ShangHangXian', 'SHX', 'S');
INSERT INTO `sys_area` VALUES (21984, 21627, 3, '永定区', '福建省，龙岩市，永定区', '116.732691', '24.720442', '0597', '364100', '350803', 'YongDingQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (22119, 21628, 3, '城厢区', '福建省，莆田市，城厢区', '119.001028', '25.433737', '0594', '351100', '350302', 'ChengXiangQu', 'CXQ', 'C');
INSERT INTO `sys_area` VALUES (22120, 21628, 3, '仙游县', '福建省，莆田市，仙游县', '118.694331', '25.356529', '0594', '351200', '350322', 'XianYouXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (22121, 21628, 3, '秀屿区', '福建省，莆田市，秀屿区', '119.092607', '25.316141', '0594', '351152', '350305', 'XiuYuQu', 'XYQ', 'X');
INSERT INTO `sys_area` VALUES (22122, 21628, 3, '荔城区', '福建省，莆田市，荔城区', '119.020047', '25.430047', '0594', '351100', '350304', 'LiChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (22123, 21628, 3, '涵江区', '福建省，莆田市，涵江区', '119.119102', '25.459273', '0594', '351111', '350303', 'HanJiangQu', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (22181, 21629, 3, '德化县', '福建省，泉州市，德化县', '118.242986', '25.489004', '0595', '362500', '350526', 'DeHuaXian', 'DHX', 'D');
INSERT INTO `sys_area` VALUES (22182, 21629, 3, '永春县', '福建省，泉州市，永春县', '118.29503', '25.320721', '0595', '362600', '350525', 'YongChunXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (22183, 21629, 3, '南安市', '福建省，泉州市，南安市', '118.387031', '24.959494', '0595', '362300', '350583', 'NanAnShi', 'NAS', 'N');
INSERT INTO `sys_area` VALUES (22184, 21629, 3, '洛江区', '福建省，泉州市，洛江区', '118.670312', '24.941153', '0595', '362011', '350504', 'LuoJiangQu', 'LJQ', 'L');
INSERT INTO `sys_area` VALUES (22185, 21629, 3, '安溪县', '福建省，泉州市，安溪县', '118.186014', '25.056824', '0595', '362400', '350524', 'AnXiXian', 'AXX', 'A');
INSERT INTO `sys_area` VALUES (22186, 21629, 3, '泉港区', '福建省，泉州市，泉港区', '118.912285', '25.126859', '0595', '362114', '350505', 'QuanGangQu', 'QGQ', 'Q');
INSERT INTO `sys_area` VALUES (22187, 21629, 3, '丰泽区', '福建省，泉州市，丰泽区', '118.605147', '24.896041', '0595', '362000', '350503', 'FengZeQu', 'FZQ', 'F');
INSERT INTO `sys_area` VALUES (22188, 21629, 3, '惠安县', '福建省，泉州市，惠安县', '118.798954', '25.028718', '0595', '362100', '350521', 'HuiAnXian', 'HAX', 'H');
INSERT INTO `sys_area` VALUES (22189, 21629, 3, '晋江市', '福建省，泉州市，晋江市', '118.577338', '24.807322', '0595', '362200', '350582', 'JinJiangShi', 'JJS', 'J');
INSERT INTO `sys_area` VALUES (22190, 21629, 3, '石狮市', '福建省，泉州市，石狮市', '118.628402', '24.731978', '0595', '362700', '350581', 'ShiShiShi', 'SSS', 'S');
INSERT INTO `sys_area` VALUES (22191, 21629, 3, '金门县', '福建省，泉州市，金门县', '118.323221', '24.436417', '', '', '350527', 'JinMenXian', 'JMX', 'J');
INSERT INTO `sys_area` VALUES (22192, 21629, 3, '鲤城区', '福建省，泉州市，鲤城区', '118.588929', '24.907645', '0595', '362000', '350502', 'LiChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (22363, 21630, 3, '宁化县', '福建省，三明市，宁化县', '116.659725', '26.259932', '0598', '365400', '350424', 'NingHuaXian', 'NHX', 'N');
INSERT INTO `sys_area` VALUES (22364, 21630, 3, '泰宁县', '福建省，三明市，泰宁县', '117.177522', '26.897995', '0598', '354400', '350429', 'TaiNingXian', 'TNX', 'T');
INSERT INTO `sys_area` VALUES (22365, 21630, 3, '大田县', '福建省，三明市，大田县', '117.849355', '25.690803', '0598', '366100', '350425', 'DaTianXian', 'DTX', 'D');
INSERT INTO `sys_area` VALUES (22366, 21630, 3, '梅列区', '福建省，三明市，梅列区', '117.63687', '26.269208', '0598', '365000', '350402', 'MeiLieQu', 'MLQ', 'M');
INSERT INTO `sys_area` VALUES (22367, 21630, 3, '永安市', '福建省，三明市，永安市', '117.364447', '25.974075', '0598', '366000', '350481', 'YongAnShi', 'YAS', 'Y');
INSERT INTO `sys_area` VALUES (22368, 21630, 3, '三元区', '福建省，三明市，三元区', '117.607418', '26.234191', '0598', '365001', '350403', 'SanYuanQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (22369, 21630, 3, '清流县', '福建省，三明市，清流县', '116.815821', '26.17761', '0598', '365300', '350423', 'QingLiuXian', 'QLX', 'Q');
INSERT INTO `sys_area` VALUES (22370, 21630, 3, '沙县', '福建省，三明市，沙县', '117.789095', '26.397361', '0598', '365500', '350427', 'ShaXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (22371, 21630, 3, '建宁县', '福建省，三明市，建宁县', '116.845832', '26.831398', '0598', '354500', '350430', 'JianNingXian', 'JNX', 'J');
INSERT INTO `sys_area` VALUES (22372, 21630, 3, '尤溪县', '福建省，三明市，尤溪县', '118.188577', '26.169261', '0598', '365100', '350426', 'YouXiXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (22373, 21630, 3, '将乐县', '福建省，三明市，将乐县', '117.473558', '26.728667', '0598', '353300', '350428', 'JiangLeXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (22374, 21630, 3, '明溪县', '福建省，三明市，明溪县', '117.201845', '26.357375', '0598', '365200', '350421', 'MingXiXian', 'MXX', 'M');
INSERT INTO `sys_area` VALUES (22524, 21631, 3, '同安区', '福建省，厦门市，同安区', '118.150455', '24.729333', '0592', '361100', '350212', 'TongAnQu', 'TAQ', 'T');
INSERT INTO `sys_area` VALUES (22525, 21631, 3, '海沧区', '福建省，厦门市，海沧区', '118.036364', '24.492512', '0592', '361026', '350205', 'HaiCangQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (22526, 21631, 3, '集美区', '福建省，厦门市，集美区', '118.100869', '24.572874', '0592', '361021', '350211', 'JiMeiQu', 'JMQ', 'J');
INSERT INTO `sys_area` VALUES (22527, 21631, 3, '湖里区', '福建省，厦门市，湖里区', '118.10943', '24.512764', '0592', '361006', '350206', 'HuLiQu', 'HLQ', 'H');
INSERT INTO `sys_area` VALUES (22528, 21631, 3, '思明区', '福建省，厦门市，思明区', '118.087828', '24.462059', '0592', '361001', '350203', 'SiMingQu', 'SMQ', 'S');
INSERT INTO `sys_area` VALUES (22529, 21631, 3, '翔安区', '福建省，厦门市，翔安区', '118.242811', '24.637479', '0592', '361101', '350213', 'XiangAnQu', 'XAQ', 'X');
INSERT INTO `sys_area` VALUES (22581, 21632, 3, '华安县', '福建省，漳州市，华安县', '117.53631', '25.001416', '0596', '363800', '350629', 'HuaAnXian', 'HAX', 'H');
INSERT INTO `sys_area` VALUES (22582, 21632, 3, '南靖县', '福建省，漳州市，南靖县', '117.365462', '24.516425', '0596', '363600', '350627', 'NanJingXian', 'NJX', 'N');
INSERT INTO `sys_area` VALUES (22583, 21632, 3, '长泰县', '福建省，漳州市，长泰县', '117.755913', '24.621475', '0596', '363900', '350625', 'ChangTaiXian', 'CTX', 'C');
INSERT INTO `sys_area` VALUES (22584, 21632, 3, '云霄县', '福建省，漳州市，云霄县', '117.340946', '23.950486', '0596', '363300', '350622', 'YunXiaoXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (22585, 21632, 3, '平和县', '福建省，漳州市，平和县', '117.313549', '24.366158', '0596', '363700', '350628', 'PingHeXian', 'PHX', 'P');
INSERT INTO `sys_area` VALUES (22586, 21632, 3, '诏安县', '福建省，漳州市，诏安县', '117.176083', '23.710834', '0596', '363500', '350624', 'ZhaoAnXian', 'ZAX', 'Z');
INSERT INTO `sys_area` VALUES (22587, 21632, 3, '漳浦县', '福建省，漳州市，漳浦县', '117.614023', '24.117907', '0596', '363200', '350623', 'ZhangPuXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (22588, 21632, 3, '龙海市', '福建省，漳州市，龙海市', '117.817292', '24.445341', '0596', '363100', '350681', 'LongHaiShi', 'LHS', 'L');
INSERT INTO `sys_area` VALUES (22589, 21632, 3, '东山县', '福建省，漳州市，东山县', '117.427679', '23.702845', '0596', '363400', '350626', 'DongShanXian', 'DSX', 'D');
INSERT INTO `sys_area` VALUES (22590, 21632, 3, '龙文区', '福建省，漳州市，龙文区', '117.671387', '24.515656', '0596', '363005', '350603', 'LongWenQu', 'LWQ', 'L');
INSERT INTO `sys_area` VALUES (22591, 21632, 3, '芗城区', '福建省，漳州市，芗城区', '117.656461', '24.509955', '0596', '363000', '350602', 'XiangChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (22752, 21633, 3, '武夷山市', '福建省，南平市，武夷山市', '118.032796', '27.751733', '0599', '354300', '350782', 'WuYiShanShi', 'WYSS', 'W');
INSERT INTO `sys_area` VALUES (22753, 21633, 3, '浦城县', '福建省，南平市，浦城县', '118.536822', '27.920412', '0599', '353400', '350722', 'PuChengXian', 'PCX', 'P');
INSERT INTO `sys_area` VALUES (22754, 21633, 3, '松溪县', '福建省，南平市，松溪县', '118.783491', '27.525785', '0599', '353500', '350724', 'SongXiXian', 'SXX', 'S');
INSERT INTO `sys_area` VALUES (22755, 21633, 3, '光泽县', '福建省，南平市，光泽县', '117.337897', '27.542803', '0599', '354100', '350723', 'GuangZeXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (22756, 21633, 3, '建阳区', '福建省，南平市，建阳区', '118.12267', '27.332067', '0599', '354200', '350703', 'JianYangQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (22757, 21633, 3, '邵武市', '福建省，南平市，邵武市', '117.491544', '27.337952', '0599', '354000', '350781', 'ShaoWuShi', 'SWS', 'S');
INSERT INTO `sys_area` VALUES (22758, 21633, 3, '建瓯市', '福建省，南平市，建瓯市', '118.321765', '27.03502', '0599', '353100', '350783', 'JianOuShi', 'JOS', 'J');
INSERT INTO `sys_area` VALUES (22759, 21633, 3, '政和县', '福建省，南平市，政和县', '118.858661', '27.365398', '0599', '353600', '350725', 'ZhengHeXian', 'ZHX', 'Z');
INSERT INTO `sys_area` VALUES (22760, 21633, 3, '顺昌县', '福建省，南平市，顺昌县', '117.80771', '26.792851', '0599', '353200', '350721', 'ShunChangXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (22761, 21633, 3, '延平区', '福建省，南平市，延平区', '118.178918', '26.636079', '0599', '353000', '350702', 'YanPingQu', 'YPQ', 'Y');
INSERT INTO `sys_area` VALUES (22902, 16, 2, '岳阳市', '湖南省，岳阳市', '113.132855', '29.37029', '0730', '414000', '430600', 'YueYangShi', 'YYS', 'Y');
INSERT INTO `sys_area` VALUES (22903, 16, 2, '衡阳市', '湖南省，衡阳市', '112.607693', '26.900358', '0734', '421001', '430400', 'HengYangShi', 'HYS', 'H');
INSERT INTO `sys_area` VALUES (22904, 16, 2, '娄底市', '湖南省，娄底市', '112.008497', '27.728136', '0738', '417000', '431300', 'LouDiShi', 'LDS', 'L');
INSERT INTO `sys_area` VALUES (22905, 16, 2, '湘潭市', '湖南省，湘潭市', '112.944052', '27.82973', '0731', '411100', '430300', 'XiangTanShi', 'XTS', 'X');
INSERT INTO `sys_area` VALUES (22906, 16, 2, '益阳市', '湖南省，益阳市', '112.355042', '28.570066', '0737', '413000', '430900', 'YiYangShi', 'YYS', 'Y');
INSERT INTO `sys_area` VALUES (22907, 16, 2, '长沙市', '湖南省，长沙市', '112.982279', '28.19409', '0731', '410005', '430100', 'ChangShaShi', 'CSS', 'C');
INSERT INTO `sys_area` VALUES (22908, 16, 2, '常德市', '湖南省，常德市', '111.691347', '29.040225', '0736', '415000', '430700', 'ChangDeShi', 'CDS', 'C');
INSERT INTO `sys_area` VALUES (22909, 16, 2, '怀化市', '湖南省，怀化市', '109.97824', '27.550082', '0745', '418000', '431200', 'HuaiHuaShi', 'HHS', 'H');
INSERT INTO `sys_area` VALUES (22910, 16, 2, '邵阳市', '湖南省，邵阳市', '111.46923', '27.237842', '0739', '422000', '430500', 'ShaoYangShi', 'SYS', 'S');
INSERT INTO `sys_area` VALUES (22911, 16, 2, '张家界市', '湖南省，张家界市', '110.479921', '29.127401', '0744', '427000', '430800', 'ZhangJiaJieShi', 'ZJJS', 'Z');
INSERT INTO `sys_area` VALUES (22912, 16, 2, '湘西土家族苗族自治州', '湖南省，湘西土家族苗族自治州', '109.739735', '28.314296', '0743', '416000', '433100', 'XiangXiTuJiaZuMiaoZuZiZhiZhou', 'XXTJZMZZZZ', 'X');
INSERT INTO `sys_area` VALUES (22913, 16, 2, '株洲市', '湖南省，株洲市', '113.151737', '27.835806', '0731', '412000', '430200', 'ZhuZhouShi', 'ZZS', 'Z');
INSERT INTO `sys_area` VALUES (22914, 16, 2, '永州市', '湖南省，永州市', '111.608019', '26.434516', '0746', '425000', '431100', 'YongZhouShi', 'YZS', 'Y');
INSERT INTO `sys_area` VALUES (22915, 16, 2, '郴州市', '湖南省，郴州市', '113.032067', '25.793589', '0735', '423000', '431000', 'ChenZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (22916, 22902, 3, '华容县', '湖南省，岳阳市，华容县', '112.559369', '29.524107', '0730', '414200', '430623', 'HuaRongXian', 'HRX', 'H');
INSERT INTO `sys_area` VALUES (22917, 22902, 3, '岳阳楼区', '湖南省，岳阳市，岳阳楼区', '113.120751', '29.366784', '0730', '414000', '430602', 'YueYangLouQu', 'YYLQ', 'Y');
INSERT INTO `sys_area` VALUES (22918, 22902, 3, '君山区', '湖南省，岳阳市，君山区', '113.004082', '29.438062', '0730', '414005', '430611', 'JunShanQu', 'JSQ', 'J');
INSERT INTO `sys_area` VALUES (22919, 22902, 3, '云溪区', '湖南省，岳阳市，云溪区', '113.27387', '29.473395', '0730', '414009', '430603', 'YunXiQu', 'YXQ', 'Y');
INSERT INTO `sys_area` VALUES (22920, 22902, 3, '汨罗市', '湖南省，岳阳市，汨罗市', '113.079419', '28.803149', '0730', '414400', '430681', 'MiLuoShi', 'MLS', 'M');
INSERT INTO `sys_area` VALUES (22921, 22902, 3, '湘阴县', '湖南省，岳阳市，湘阴县', '112.889748', '28.677498', '0730', '414600', '430624', 'XiangYinXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (22922, 22902, 3, '岳阳县', '湖南省，岳阳市，岳阳县', '113.116073', '29.144843', '0730', '414100', '430621', 'YueYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (22923, 22902, 3, '临湘市', '湖南省，岳阳市，临湘市', '113.450809', '29.471594', '0730', '414300', '430682', 'LinXiangShi', 'LXS', 'L');
INSERT INTO `sys_area` VALUES (22924, 22902, 3, '平江县', '湖南省，岳阳市，平江县', '113.593751', '28.701523', '0730', '414500', '430626', 'PingJiangXian', 'PJX', 'P');
INSERT INTO `sys_area` VALUES (23067, 22903, 3, '衡山县', '湖南省，衡阳市，衡山县', '112.86971', '27.234808', '0734', '421300', '430423', 'HengShanXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (23068, 22903, 3, '衡东县', '湖南省，衡阳市，衡东县', '112.950412', '27.083531', '0734', '421400', '430424', 'HengDongXian', 'HDX', 'H');
INSERT INTO `sys_area` VALUES (23069, 22903, 3, '南岳区', '湖南省，衡阳市，南岳区', '112.734147', '27.240536', '0734', '421900', '430412', 'NanYueQu', 'NYQ', 'N');
INSERT INTO `sys_area` VALUES (23070, 22903, 3, '衡阳县', '湖南省，衡阳市，衡阳县', '112.379643', '26.962388', '0734', '421200', '430421', 'HengYangXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (23071, 22903, 3, '雁峰区', '湖南省，衡阳市，雁峰区', '112.612241', '26.893694', '0734', '421001', '430406', 'YanFengQu', 'YFQ', 'Y');
INSERT INTO `sys_area` VALUES (23072, 22903, 3, '珠晖区', '湖南省，衡阳市，珠晖区', '112.626324', '26.891063', '0734', '421002', '430405', 'ZhuHuiQu', 'ZHQ', 'Z');
INSERT INTO `sys_area` VALUES (23073, 22903, 3, '石鼓区', '湖南省，衡阳市，石鼓区', '112.607635', '26.903908', '0734', '421005', '430407', 'ShiGuQu', 'SGQ', 'S');
INSERT INTO `sys_area` VALUES (23074, 22903, 3, '祁东县', '湖南省，衡阳市，祁东县', '112.111192', '26.787109', '0734', '421600', '430426', 'QiDongXian', 'QDX', 'Q');
INSERT INTO `sys_area` VALUES (23075, 22903, 3, '衡南县', '湖南省，衡阳市，衡南县', '112.677459', '26.739973', '0734', '421131', '430422', 'HengNanXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (23076, 22903, 3, '耒阳市', '湖南省，衡阳市，耒阳市', '112.847215', '26.414162', '0734', '421800', '430481', 'LeiYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (23077, 22903, 3, '蒸湘区', '湖南省，衡阳市，蒸湘区', '112.570608', '26.89087', '0734', '421001', '430408', 'ZhengXiangQu', 'ZXQ', 'Z');
INSERT INTO `sys_area` VALUES (23078, 22903, 3, '常宁市', '湖南省，衡阳市，常宁市', '112.396821', '26.406773', '0734', '421500', '430482', 'ChangNingShi', 'CNS', 'C');
INSERT INTO `sys_area` VALUES (23271, 22904, 3, '冷水江市', '湖南省，娄底市，冷水江市', '111.434674', '27.685759', '0738', '417500', '431381', 'LengShuiJiangShi', 'LSJS', 'L');
INSERT INTO `sys_area` VALUES (23272, 22904, 3, '新化县', '湖南省，娄底市，新化县', '111.306747', '27.737456', '0738', '417600', '431322', 'XinHuaXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (23273, 22904, 3, '双峰县', '湖南省，娄底市，双峰县', '112.198245', '27.459126', '0738', '417700', '431321', 'ShuangFengXian', 'SFX', 'S');
INSERT INTO `sys_area` VALUES (23274, 22904, 3, '娄星区', '湖南省，娄底市，娄星区', '112.008486', '27.726643', '0738', '417000', '431302', 'LouXingQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (23275, 22904, 3, '涟源市', '湖南省，娄底市，涟源市', '111.670847', '27.692301', '0738', '417100', '431382', 'LianYuanShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (23368, 22905, 3, '岳塘区', '湖南省，湘潭市，岳塘区', '112.927707', '27.828854', '0731', '411101', '430304', 'YueTangQu', 'YTQ', 'Y');
INSERT INTO `sys_area` VALUES (23369, 22905, 3, '湘潭县', '湖南省，湘潭市，湘潭县', '112.952829', '27.778601', '0731', '411228', '430321', 'XiangTanXian', 'XTX', 'X');
INSERT INTO `sys_area` VALUES (23370, 22905, 3, '雨湖区', '湖南省，湘潭市，雨湖区', '112.907427', '27.86077', '0731', '411100', '430302', 'YuHuQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (23371, 22905, 3, '韶山市', '湖南省，湘潭市，韶山市', '112.52848', '27.922682', '0731', '411300', '430382', 'ShaoShanShi', 'SSS', 'S');
INSERT INTO `sys_area` VALUES (23372, 22905, 3, '湘乡市', '湖南省，湘潭市，湘乡市', '112.525217', '27.734918', '0731', '411400', '430381', 'XiangXiangShi', 'XXS', 'X');
INSERT INTO `sys_area` VALUES (23448, 22906, 3, '沅江市', '湖南省，益阳市，沅江市', '112.361088', '28.839713', '0737', '413100', '430981', 'YuanJiangShi', 'YJS', 'Y');
INSERT INTO `sys_area` VALUES (23449, 22906, 3, '南县', '湖南省，益阳市，南县', '112.410399', '29.372181', '0737', '413200', '430921', 'NanXian', 'NX', 'N');
INSERT INTO `sys_area` VALUES (23450, 22906, 3, '资阳区', '湖南省，益阳市，资阳区', '112.33084', '28.592771', '0737', '413001', '430902', 'ZiYangQu', 'ZYQ', 'Z');
INSERT INTO `sys_area` VALUES (23451, 22906, 3, '桃江县', '湖南省，益阳市，桃江县', '112.139732', '28.520993', '0737', '413400', '430922', 'TaoJiangXian', 'TJX', 'T');
INSERT INTO `sys_area` VALUES (23452, 22906, 3, '赫山区', '湖南省，益阳市，赫山区', '112.360946', '28.568327', '0737', '413002', '430903', 'HeShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (23453, 22906, 3, '安化县', '湖南省，益阳市，安化县', '111.221824', '28.377421', '0737', '413500', '430923', 'AnHuaXian', 'AHX', 'A');
INSERT INTO `sys_area` VALUES (23554, 22907, 3, '芙蓉区', '湖南省，长沙市，芙蓉区', '112.988094', '28.193106', '0731', '410011', '430102', 'FuRongQu', 'FRQ', 'F');
INSERT INTO `sys_area` VALUES (23555, 22907, 3, '开福区', '湖南省，长沙市，开福区', '112.985525', '28.201336', '0731', '410008', '430105', 'KaiFuQu', 'KFQ', 'K');
INSERT INTO `sys_area` VALUES (23556, 22907, 3, '岳麓区', '湖南省，长沙市，岳麓区', '112.911591', '28.213044', '0731', '410013', '430104', 'YueLuQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (23557, 22907, 3, '长沙县', '湖南省，长沙市，长沙县', '113.080098', '28.237888', '0731', '410100', '430121', 'ChangShaXian', 'CSX', 'C');
INSERT INTO `sys_area` VALUES (23558, 22907, 3, '天心区', '湖南省，长沙市，天心区', '112.97307', '28.192375', '0731', '410004', '430103', 'TianXinQu', 'TXQ', 'T');
INSERT INTO `sys_area` VALUES (23559, 22907, 3, '浏阳市', '湖南省，长沙市，浏阳市', '113.633301', '28.141112', '0731', '410300', '430181', 'LiuYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (23560, 22907, 3, '雨花区', '湖南省，长沙市，雨花区', '113.016337', '28.109937', '0731', '410011', '430111', 'YuHuaQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (23561, 22907, 3, '宁乡市', '湖南省，长沙市，宁乡市', '112.553182', '28.253928', '0731', '410600', '430182', 'NingXiangShi', 'NXS', 'N');
INSERT INTO `sys_area` VALUES (23562, 22907, 3, '望城区', '湖南省，长沙市，望城区', '112.819549', '28.347458', '0731', '410200', '430112', 'WangChengQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (23733, 22908, 3, '临澧县', '湖南省，常德市，临澧县', '111.645602', '29.443217', '0736', '415200', '430724', 'LinLiXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (23734, 22908, 3, '石门县', '湖南省，常德市，石门县', '111.379087', '29.584703', '0736', '415300', '430726', 'ShiMenXian', 'SMX', 'S');
INSERT INTO `sys_area` VALUES (23735, 22908, 3, '津市市', '湖南省，常德市，津市市', '111.879609', '29.630867', '0736', '415400', '430781', 'JinShiShi', 'JSS', 'J');
INSERT INTO `sys_area` VALUES (23736, 22908, 3, '澧县', '湖南省，常德市，澧县', '111.761682', '29.64264', '0736', '415500', '430723', 'LiXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (23737, 22908, 3, '鼎城区', '湖南省，常德市，鼎城区', '111.685327', '29.014426', '0736', '415101', '430703', 'DingChengQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (23738, 22908, 3, '武陵区', '湖南省，常德市，武陵区', '111.690718', '29.040477', '0736', '415000', '430702', 'WuLingQu', 'WLQ', 'W');
INSERT INTO `sys_area` VALUES (23739, 22908, 3, '汉寿县', '湖南省，常德市，汉寿县', '111.968506', '28.907319', '0736', '415900', '430722', 'HanShouXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (23740, 22908, 3, '桃源县', '湖南省，常德市，桃源县', '111.484503', '28.902734', '0736', '415700', '430725', 'TaoYuanXian', 'TYX', 'T');
INSERT INTO `sys_area` VALUES (23741, 22908, 3, '安乡县', '湖南省，常德市，安乡县', '112.172289', '29.414483', '0736', '415600', '430721', 'AnXiangXian', 'AXX', 'A');
INSERT INTO `sys_area` VALUES (23929, 22909, 3, '芷江侗族自治县', '湖南省，怀化市，芷江侗族自治县', '109.687777', '27.437996', '0745', '419100', '431228', 'ZhiJiangDongZuZiZhiXian', 'ZJDZZZX', 'Z');
INSERT INTO `sys_area` VALUES (23930, 22909, 3, '洪江市', '湖南省，怀化市，洪江市', '109.831765', '27.201876', '0745', '418100', '431281', 'HongJiangShi', 'HJS', 'H');
INSERT INTO `sys_area` VALUES (23931, 22909, 3, '通道侗族自治县', '湖南省，怀化市，通道侗族自治县', '109.783359', '26.158349', '0745', '418500', '431230', 'TongDaoDongZuZiZhiXian', 'TDDZZZX', 'T');
INSERT INTO `sys_area` VALUES (23932, 22909, 3, '沅陵县', '湖南省，怀化市，沅陵县', '110.399161', '28.455554', '0745', '419600', '431222', 'YuanLingXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (23933, 22909, 3, '溆浦县', '湖南省，怀化市，溆浦县', '110.593373', '27.903802', '0745', '419300', '431224', 'XuPuXian', 'XPX', 'X');
INSERT INTO `sys_area` VALUES (23934, 22909, 3, '辰溪县', '湖南省，怀化市，辰溪县', '110.196953', '28.005474', '0745', '419500', '431223', 'ChenXiXian', 'CXX', 'C');
INSERT INTO `sys_area` VALUES (23935, 22909, 3, '靖州苗族侗族自治县', '湖南省，怀化市，靖州苗族侗族自治县', '109.691159', '26.573511', '0745', '418400', '431229', 'JingZhouMiaoZuDongZuZiZhiXian', 'JZMZDZZZX', 'J');
INSERT INTO `sys_area` VALUES (23936, 22909, 3, '麻阳苗族自治县', '湖南省，怀化市，麻阳苗族自治县', '109.802807', '27.865991', '0745', '419400', '431226', 'MaYangMiaoZuZiZhiXian', 'MYMZZZX', 'M');
INSERT INTO `sys_area` VALUES (23937, 22909, 3, '会同县', '湖南省，怀化市，会同县', '109.720785', '26.870789', '0745', '418300', '431225', 'HuiTongXian', 'HTX', 'H');
INSERT INTO `sys_area` VALUES (23938, 22909, 3, '新晃侗族自治县', '湖南省，怀化市，新晃侗族自治县', '109.174443', '27.359897', '0745', '419200', '431227', 'XinHuangDongZuZiZhiXian', 'XHDZZZX', 'X');
INSERT INTO `sys_area` VALUES (23939, 22909, 3, '鹤城区', '湖南省，怀化市，鹤城区', '109.982242', '27.548474', '0745', '418000', '431202', 'HeChengQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (23940, 22909, 3, '中方县', '湖南省，怀化市，中方县', '109.948061', '27.43736', '0745', '418005', '431221', 'ZhongFangXian', 'ZFX', 'Z');
INSERT INTO `sys_area` VALUES (24162, 22910, 3, '隆回县', '湖南省，邵阳市，隆回县', '111.038785', '27.116002', '0739', '422200', '430524', 'LongHuiXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (24163, 22910, 3, '邵东县', '湖南省，邵阳市，邵东县', '111.743168', '27.257273', '0739', '422800', '430521', 'ShaoDongXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (24164, 22910, 3, '大祥区', '湖南省，邵阳市，大祥区', '111.462968', '27.233593', '0739', '422000', '430503', 'DaXiangQu', 'DXQ', 'D');
INSERT INTO `sys_area` VALUES (24165, 22910, 3, '邵阳县', '湖南省，邵阳市，邵阳县', '111.2757', '26.989713', '0739', '422100', '430523', 'ShaoYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (24166, 22910, 3, '北塔区', '湖南省，邵阳市，北塔区', '111.452315', '27.245688', '0739', '422007', '430511', 'BeiTaQu', 'BTQ', 'B');
INSERT INTO `sys_area` VALUES (24167, 22910, 3, '绥宁县', '湖南省，邵阳市，绥宁县', '110.155075', '26.580622', '0739', '422600', '430527', 'SuiNingXian', 'SNX', 'S');
INSERT INTO `sys_area` VALUES (24168, 22910, 3, '双清区', '湖南省，邵阳市，双清区', '111.479756', '27.240001', '0739', '422001', '430502', 'ShuangQingQu', 'SQQ', 'S');
INSERT INTO `sys_area` VALUES (24169, 22910, 3, '新宁县', '湖南省，邵阳市，新宁县', '110.859115', '26.438912', '0739', '422700', '430528', 'XinNingXian', 'XNX', 'X');
INSERT INTO `sys_area` VALUES (24170, 22910, 3, '城步苗族自治县', '湖南省，邵阳市，城步苗族自治县', '110.313226', '26.363575', '0739', '422500', '430529', 'ChengBuMiaoZuZiZhiXian', 'CBMZZZX', 'C');
INSERT INTO `sys_area` VALUES (24171, 22910, 3, '新邵县', '湖南省，邵阳市，新邵县', '111.459762', '27.311429', '0739', '422900', '430522', 'XinShaoXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (24172, 22910, 3, '武冈市', '湖南省，邵阳市，武冈市', '110.636804', '26.732086', '0739', '422400', '430581', 'WuGangShi', 'WGS', 'W');
INSERT INTO `sys_area` VALUES (24173, 22910, 3, '洞口县', '湖南省，邵阳市，洞口县', '110.579212', '27.062286', '0739', '422300', '430525', 'DongKouXian', 'DKX', 'D');
INSERT INTO `sys_area` VALUES (24388, 22911, 3, '武陵源区', '湖南省，张家界市，武陵源区', '110.54758', '29.347827', '0744', '427400', '430811', 'WuLingYuanQu', 'WLYQ', 'W');
INSERT INTO `sys_area` VALUES (24389, 22911, 3, '慈利县', '湖南省，张家界市，慈利县', '111.132702', '29.423876', '0744', '427200', '430821', 'CiLiXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (24390, 22911, 3, '桑植县', '湖南省，张家界市，桑植县', '110.164039', '29.399939', '0744', '427100', '430822', 'SangZhiXian', 'SZX', 'S');
INSERT INTO `sys_area` VALUES (24391, 22911, 3, '永定区', '湖南省，张家界市，永定区', '110.484559', '29.125961', '0744', '427000', '430802', 'YongDingQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (24476, 22912, 3, '永顺县', '湖南省，湘西土家族苗族自治州，永顺县', '109.853292', '28.998068', '0743', '416700', '433127', 'YongShunXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (24477, 22912, 3, '花垣县', '湖南省，湘西土家族苗族自治州，花垣县', '109.479063', '28.581352', '0743', '416400', '433124', 'HuaYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (24478, 22912, 3, '保靖县', '湖南省，湘西土家族苗族自治州，保靖县', '109.651445', '28.709605', '0743', '416500', '433125', 'BaoJingXian', 'BJX', 'B');
INSERT INTO `sys_area` VALUES (24479, 22912, 3, '吉首市', '湖南省，湘西土家族苗族自治州，吉首市', '109.738273', '28.314827', '0743', '416000', '433101', 'JiShouShi', 'JSS', 'J');
INSERT INTO `sys_area` VALUES (24480, 22912, 3, '古丈县', '湖南省，湘西土家族苗族自治州，古丈县', '109.949592', '28.616973', '0743', '416300', '433126', 'GuZhangXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (24481, 22912, 3, '泸溪县', '湖南省，湘西土家族苗族自治州，泸溪县', '110.214428', '28.214516', '0743', '416100', '433122', 'LuXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (24482, 22912, 3, '龙山县', '湖南省，湘西土家族苗族自治州，龙山县', '109.441189', '29.453438', '0743', '416800', '433130', 'LongShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (24483, 22912, 3, '凤凰县', '湖南省，湘西土家族苗族自治州，凤凰县', '109.599191', '27.948308', '0743', '416200', '433123', 'FengHuangXian', 'FHX', 'F');
INSERT INTO `sys_area` VALUES (24608, 22913, 3, '荷塘区', '湖南省，株洲市，荷塘区', '113.162548', '27.833036', '0731', '412000', '430202', 'HeTangQu', 'HTQ', 'H');
INSERT INTO `sys_area` VALUES (24609, 22913, 3, '茶陵县', '湖南省，株洲市，茶陵县', '113.546509', '26.789534', '0731', '412400', '430224', 'ChaLingXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (24610, 22913, 3, '攸县', '湖南省，株洲市，攸县', '113.345774', '27.000071', '0731', '412300', '430223', 'YouXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (24611, 22913, 3, '炎陵县', '湖南省，株洲市，炎陵县', '113.776884', '26.489459', '0731', '412500', '430225', 'YanLingXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (24612, 22913, 3, '天元区', '湖南省，株洲市，天元区', '113.136252', '27.826909', '0731', '412007', '430211', 'TianYuanQu', 'TYQ', 'T');
INSERT INTO `sys_area` VALUES (24613, 22913, 3, '芦淞区', '湖南省，株洲市，芦淞区', '113.155169', '27.827246', '0731', '412000', '430203', 'LuSongQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (24614, 22913, 3, '株洲县', '湖南省，株洲市，株洲县', '113.146176', '27.705844', '0731', '412100', '430221', 'ZhuZhouXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (24615, 22913, 3, '石峰区', '湖南省，株洲市，石峰区', '113.11295', '27.871945', '0731', '412005', '430204', 'ShiFengQu', 'SFQ', 'S');
INSERT INTO `sys_area` VALUES (24616, 22913, 3, '醴陵市', '湖南省，株洲市，醴陵市', '113.507157', '27.657873', '0731', '412200', '430281', 'LiLingShi', 'LLS', 'L');
INSERT INTO `sys_area` VALUES (24734, 22914, 3, '冷水滩区', '湖南省，永州市，冷水滩区', '111.607156', '26.434364', '0746', '425100', '431103', 'LengShuiTanQu', 'LSTQ', 'L');
INSERT INTO `sys_area` VALUES (24735, 22914, 3, '东安县', '湖南省，永州市，东安县', '111.313035', '26.397278', '0746', '425900', '431122', 'DongAnXian', 'DAX', 'D');
INSERT INTO `sys_area` VALUES (24736, 22914, 3, '祁阳县', '湖南省，永州市，祁阳县', '111.85734', '26.585929', '0746', '426100', '431121', 'QiYangXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (24737, 22914, 3, '新田县', '湖南省，永州市，新田县', '112.220341', '25.906927', '0746', '425700', '431128', 'XinTianXian', 'XTX', 'X');
INSERT INTO `sys_area` VALUES (24738, 22914, 3, '零陵区', '湖南省，永州市，零陵区', '111.626348', '26.223347', '0746', '425100', '431102', 'LingLingQu', 'LLQ', 'L');
INSERT INTO `sys_area` VALUES (24739, 22914, 3, '宁远县', '湖南省，永州市，宁远县', '111.944529', '25.584112', '0746', '425600', '431126', 'NingYuanXian', 'NYX', 'N');
INSERT INTO `sys_area` VALUES (24740, 22914, 3, '道县', '湖南省，永州市，道县', '111.591614', '25.518444', '0746', '425300', '431124', 'DaoXian', 'DX', 'D');
INSERT INTO `sys_area` VALUES (24741, 22914, 3, '蓝山县', '湖南省，永州市，蓝山县', '112.194195', '25.375255', '0746', '425800', '431127', 'LanShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (24742, 22914, 3, '江华瑶族自治县', '湖南省，永州市，江华瑶族自治县', '111.577276', '25.182596', '0746', '425500', '431129', 'JiangHuaYaoZuZiZhiXian', 'JHYZZZX', 'J');
INSERT INTO `sys_area` VALUES (24743, 22914, 3, '江永县', '湖南省，永州市，江永县', '111.346803', '25.268154', '0746', '425400', '431125', 'JiangYongXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (24744, 22914, 3, '双牌县', '湖南省，永州市，双牌县', '111.662146', '25.959397', '0746', '425200', '431123', 'ShuangPaiXian', 'SPX', 'S');
INSERT INTO `sys_area` VALUES (24934, 22915, 3, '安仁县', '湖南省，郴州市，安仁县', '113.27217', '26.708625', '0735', '423600', '431028', 'AnRenXian', 'ARX', 'A');
INSERT INTO `sys_area` VALUES (24935, 22915, 3, '永兴县', '湖南省，郴州市，永兴县', '113.114819', '26.129392', '0735', '423300', '431023', 'YongXingXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (24936, 22915, 3, '苏仙区', '湖南省，郴州市，苏仙区', '113.038698', '25.793157', '0735', '423000', '431003', 'SuXianQu', 'SXQ', 'S');
INSERT INTO `sys_area` VALUES (24937, 22915, 3, '资兴市', '湖南省，郴州市，资兴市', '113.23682', '25.974152', '0735', '423400', '431081', 'ZiXingShi', 'ZXS', 'Z');
INSERT INTO `sys_area` VALUES (24938, 22915, 3, '桂东县', '湖南省，郴州市，桂东县', '113.945879', '26.073917', '0735', '423500', '431027', 'GuiDongXian', 'GDX', 'G');
INSERT INTO `sys_area` VALUES (24939, 22915, 3, '汝城县', '湖南省，郴州市，汝城县', '113.685686', '25.553759', '0735', '424100', '431026', 'RuChengXian', 'RCX', 'R');
INSERT INTO `sys_area` VALUES (24940, 22915, 3, '嘉禾县', '湖南省，郴州市，嘉禾县', '112.370618', '25.587309', '0735', '424500', '431024', 'JiaHeXian', 'JHX', 'J');
INSERT INTO `sys_area` VALUES (24941, 22915, 3, '北湖区', '湖南省，郴州市，北湖区', '113.032208', '25.792628', '0735', '423000', '431002', 'BeiHuQu', 'BHQ', 'B');
INSERT INTO `sys_area` VALUES (24942, 22915, 3, '临武县', '湖南省，郴州市，临武县', '112.564589', '25.279119', '0735', '424300', '431025', 'LinWuXian', 'LWX', 'L');
INSERT INTO `sys_area` VALUES (24943, 22915, 3, '桂阳县', '湖南省，郴州市，桂阳县', '112.734466', '25.737447', '0735', '424400', '431021', 'GuiYangXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (24944, 22915, 3, '宜章县', '湖南省，郴州市，宜章县', '112.947884', '25.394345', '0735', '424200', '431022', 'YiZhangXian', 'YZX', 'Y');
INSERT INTO `sys_area` VALUES (25115, 17, 3, '屯昌县', '海南省，屯昌县', '110.102773', '19.362916', '0898', '571600', '469022', 'TunChangXian', 'TCX', 'T');
INSERT INTO `sys_area` VALUES (25116, 17, 3, '琼海市', '海南省，琼海市', '110.466785', '19.246011', '0898', '571400', '469002', 'QiongHaiShi', 'QHS', 'Q');
INSERT INTO `sys_area` VALUES (25117, 17, 3, '昌江黎族自治县', '海南省，昌江黎族自治县', '109.053351', '19.260968', '0898', '572700', '469026', 'ChangJiangLiZuZiZhiXian', 'CJLZZZX', 'C');
INSERT INTO `sys_area` VALUES (25118, 17, 3, '定安县', '海南省，定安县', '110.349235', '19.684966', '0898', '571200', '469021', 'DingAnXian', 'DAX', 'D');
INSERT INTO `sys_area` VALUES (25119, 17, 3, '琼中黎族苗族自治县', '海南省，琼中黎族苗族自治县', '109.839996', '19.03557', '0898', '572900', '469030', 'QiongZhongLiZuMiaoZuZiZhiXian', 'QZLZMZZZX', 'Q');
INSERT INTO `sys_area` VALUES (25120, 17, 3, '临高县', '海南省，临高县', '109.687697', '19.908293', '0898', '571800', '469024', 'LinGaoXian', 'LGX', 'L');
INSERT INTO `sys_area` VALUES (25121, 17, 3, '东方市', '海南省，东方市', '108.653789', '19.10198', '0898', '572600', '469007', 'DongFangShi', 'DFS', 'D');
INSERT INTO `sys_area` VALUES (25122, 17, 3, '白沙黎族自治县', '海南省，白沙黎族自治县', '109.452606', '19.224584', '0898', '572800', '469025', 'BaiShaLiZuZiZhiXian', 'BSLZZZX', 'B');
INSERT INTO `sys_area` VALUES (25123, 17, 3, '文昌市', '海南省，文昌市', '110.753975', '19.612986', '0898', '571339', '469005', 'WenChangShi', 'WCS', 'W');
INSERT INTO `sys_area` VALUES (25124, 17, 3, '五指山市', '海南省，五指山市', '109.516662', '18.776921', '0898', '572200', '469001', 'WuZhiShanShi', 'WZSS', 'W');
INSERT INTO `sys_area` VALUES (25125, 17, 3, '保亭黎族苗族自治县', '海南省，保亭黎族苗族自治县', '109.70245', '18.636371', '0898', '572300', '469029', 'BaoTingLiZuMiaoZuZiZhiXian', 'BTLZMZZZX', 'B');
INSERT INTO `sys_area` VALUES (25126, 17, 3, '澄迈县', '海南省，澄迈县', '110.007147', '19.737095', '0898', '571900', '469023', 'ChengMaiXian', 'CMX', 'C');
INSERT INTO `sys_area` VALUES (25127, 17, 2, '三沙市', '海南省，三沙市', '112.34882', '16.831039', '0898', '', '460300', 'SanShaShi', 'SSS', 'S');
INSERT INTO `sys_area` VALUES (25128, 17, 3, '陵水黎族自治县', '海南省，陵水黎族自治县', '110.037218', '18.505006', '0898', '572400', '469028', 'LingShuiLiZuZiZhiXian', 'LSLZZZX', 'L');
INSERT INTO `sys_area` VALUES (25129, 17, 2, '三亚市', '海南省，三亚市', '109.508268', '18.247872', '0898', '572000', '460200', 'SanYaShi', 'SYS', 'S');
INSERT INTO `sys_area` VALUES (25130, 17, 3, '万宁市', '海南省，万宁市', '110.388793', '18.796216', '0898', '571500', '469006', 'WanNingShi', 'WNS', 'W');
INSERT INTO `sys_area` VALUES (25131, 17, 3, '乐东黎族自治县', '海南省，乐东黎族自治县', '109.175444', '18.74758', '0898', '572500', '469027', 'LeDongLiZuZiZhiXian', 'LDLZZZX', 'L');
INSERT INTO `sys_area` VALUES (25132, 17, 2, '儋州市', '海南省，儋州市', '109.576782', '19.517486', '0898', '571700', '460400', 'DanZhouShi', 'DZS', 'D');
INSERT INTO `sys_area` VALUES (25133, 17, 2, '海口市', '海南省，海口市', '110.33119', '20.031971', '0898', '570000', '460100', 'HaiKouShi', 'HKS', 'H');
INSERT INTO `sys_area` VALUES (25295, 25127, 3, '西沙群岛', '海南省，三沙市，西沙群岛', '111.792944', '16.204546', '0898', '573199', '460321', 'XiShaQunDao', 'XSQD', 'X');
INSERT INTO `sys_area` VALUES (25296, 25127, 3, '南沙群岛', '海南省，三沙市，南沙群岛', '116.749998', '11.471888', '0898', '573199', '460322', 'NanShaQunDao', 'NSQD', 'N');
INSERT INTO `sys_area` VALUES (25297, 25127, 3, '中沙群岛的岛礁及其海域', '海南省，三沙市，中沙群岛的岛礁及其海域', '117.740071', '15.112856', '0898', '573199', '460323', 'ZhongShaQunDaoDeDaoJiaoJiQiHaiYu', 'ZSQDDDJJQHY', 'Z');
INSERT INTO `sys_area` VALUES (25313, 25129, 3, '崖州区', '海南省，三亚市，崖州区', '109.174306', '18.352192', '0898', '572024', '460205', 'YaZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (25314, 25129, 3, '天涯区', '海南省，三亚市，天涯区', '109.506357', '18.24734', '0898', '572100', '460204', 'TianYaQu', 'TYQ', 'T');
INSERT INTO `sys_area` VALUES (25315, 25129, 3, '海棠区', '海南省，三亚市，海棠区', '109.760778', '18.407516', '0898', '572013', '460202', 'HaiTangQu', 'HTQ', 'H');
INSERT INTO `sys_area` VALUES (25316, 25129, 3, '吉阳区', '海南省，三亚市，吉阳区', '109.512081', '18.247436', '0898', '572099', '460203', 'JiYangQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (25385, 25133, 3, '龙华区', '海南省，海口市，龙华区', '110.330373', '20.031026', '0898', '570145', '460106', 'LongHuaQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (25386, 25133, 3, '美兰区', '海南省，海口市，美兰区', '110.356566', '20.03074', '0898', '570100', '460108', 'MeiLanQu', 'MLQ', 'M');
INSERT INTO `sys_area` VALUES (25387, 25133, 3, '琼山区', '海南省，海口市，琼山区', '110.354722', '20.001051', '0898', '571100', '460107', 'QiongShanQu', 'QSQ', 'Q');
INSERT INTO `sys_area` VALUES (25388, 25133, 3, '秀英区', '海南省，海口市，秀英区', '110.282393', '20.008145', '0898', '570311', '460105', 'XiuYingQu', 'XYQ', 'X');
INSERT INTO `sys_area` VALUES (25439, 18, 2, '宿迁市', '江苏省，宿迁市', '118.275162', '33.963008', '0527', '223800', '321300', 'SuQianShi', 'SQS', 'S');
INSERT INTO `sys_area` VALUES (25440, 18, 2, '连云港市', '江苏省，连云港市', '119.178821', '34.600018', '0518', '222002', '320700', 'LianYunGangShi', 'LYGS', 'L');
INSERT INTO `sys_area` VALUES (25441, 18, 2, '扬州市', '江苏省，扬州市', '119.421003', '32.393159', '0514', '225002', '321000', 'YangZhouShi', 'YZS', 'Y');
INSERT INTO `sys_area` VALUES (25442, 18, 2, '南京市', '江苏省，南京市', '118.767413', '32.041544', '025', '210008', '320100', 'NanJingShi', 'NJS', 'N');
INSERT INTO `sys_area` VALUES (25443, 18, 2, '南通市', '江苏省，南通市', '120.864608', '32.016212', '0513', '226001', '320600', 'NanTongShi', 'NTS', 'N');
INSERT INTO `sys_area` VALUES (25444, 18, 2, '无锡市', '江苏省，无锡市', '120.301663', '31.574729', '0510', '214000', '320200', 'WuXiShi', 'WXS', 'W');
INSERT INTO `sys_area` VALUES (25445, 18, 2, '镇江市', '江苏省，镇江市', '119.452753', '32.204402', '0511', '212004', '321100', 'ZhenJiangShi', 'ZJS', 'Z');
INSERT INTO `sys_area` VALUES (25446, 18, 2, '淮安市', '江苏省，淮安市', '119.021265', '33.597506', '0517', '223001', '320800', 'HuaiAnShi', 'HAS', 'H');
INSERT INTO `sys_area` VALUES (25447, 18, 2, '泰州市', '江苏省，泰州市', '119.915176', '32.484882', '0523', '225300', '321200', 'TaiZhouShi', 'TZS', 'T');
INSERT INTO `sys_area` VALUES (25448, 18, 2, '徐州市', '江苏省，徐州市', '117.184811', '34.261792', '0516', '221003', '320300', 'XuZhouShi', 'XZS', 'X');
INSERT INTO `sys_area` VALUES (25449, 18, 2, '苏州市', '江苏省，苏州市', '120.619585', '31.299379', '0512', '215002', '320500', 'SuZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (25450, 18, 2, '常州市', '江苏省，常州市', '119.946973', '31.772752', '0519', '213003', '320400', 'ChangZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (25451, 18, 2, '盐城市', '江苏省，盐城市', '120.139998', '33.377631', '0515', '224005', '320900', 'YanChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (25452, 25439, 3, '沭阳县', '江苏省，宿迁市，沭阳县', '118.775889', '34.129097', '0527', '223600', '321322', 'ShuYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (25453, 25439, 3, '泗阳县', '江苏省，宿迁市，泗阳县', '118.681284', '33.711433', '0527', '223700', '321323', 'SiYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (25454, 25439, 3, '泗洪县', '江苏省，宿迁市，泗洪县', '118.211824', '33.456538', '0527', '223900', '321324', 'SiHongXian', 'SHX', 'S');
INSERT INTO `sys_area` VALUES (25455, 25439, 3, '宿城区', '江苏省，宿迁市，宿城区', '118.278984', '33.937726', '0527', '223800', '321302', 'SuChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (25456, 25439, 3, '宿豫区', '江苏省，宿迁市，宿豫区', '118.330012', '33.941071', '0527', '223800', '321311', 'SuYuQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (25586, 25440, 3, '东海县', '江苏省，连云港市，东海县', '118.766489', '34.522859', '0518', '222300', '320722', 'DongHaiXian', 'DHX', 'D');
INSERT INTO `sys_area` VALUES (25587, 25440, 3, '连云区', '江苏省，连云港市，连云区', '119.366487', '34.739529', '0518', '222042', '320703', 'LianYunQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (25588, 25440, 3, '灌云县', '江苏省，连云港市，灌云县', '119.255741', '34.298436', '0518', '222200', '320723', 'GuanYunXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (25589, 25440, 3, '灌南县', '江苏省，连云港市，灌南县', '119.352331', '34.092553', '0518', '222500', '320724', 'GuanNanXian', 'GNX', 'G');
INSERT INTO `sys_area` VALUES (25590, 25440, 3, '赣榆区', '江苏省，连云港市，赣榆区', '119.128774', '34.839154', '0518', '222100', '320707', 'GanYuQu', 'GYQ', 'G');
INSERT INTO `sys_area` VALUES (25591, 25440, 3, '海州区', '江苏省，连云港市，海州区', '119.179793', '34.601584', '0518', '222003', '320706', 'HaiZhouQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (25696, 25441, 3, '宝应县', '江苏省，扬州市，宝应县', '119.321284', '33.23694', '0514', '225800', '321023', 'BaoYingXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (25697, 25441, 3, '江都区', '江苏省，扬州市，江都区', '119.567481', '32.426564', '0514', '225200', '321012', 'JiangDouQu', 'JDQ', 'J');
INSERT INTO `sys_area` VALUES (25698, 25441, 3, '广陵区', '江苏省，扬州市，广陵区', '119.442267', '32.392154', '0514', '225002', '321002', 'GuangLingQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (25699, 25441, 3, '邗江区', '江苏省，扬州市，邗江区', '119.397777', '32.377899', '0514', '225002', '321003', 'HanJiangQu', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (25700, 25441, 3, '高邮市', '江苏省，扬州市，高邮市', '119.443842', '32.785164', '0514', '225600', '321084', 'GaoYouShi', 'GYS', 'G');
INSERT INTO `sys_area` VALUES (25701, 25441, 3, '仪征市', '江苏省，扬州市，仪征市', '119.182443', '32.271965', '0514', '211400', '321081', 'YiZhengShi', 'YZS', 'Y');
INSERT INTO `sys_area` VALUES (25801, 25442, 3, '浦口区', '江苏省，南京市，浦口区', '118.625307', '32.05839', '025', '211800', '320111', 'PuKouQu', 'PKQ', 'P');
INSERT INTO `sys_area` VALUES (25802, 25442, 3, '雨花台区', '江苏省，南京市，雨花台区', '118.77207', '31.995946', '025', '210012', '320114', 'YuHuaTaiQu', 'YHTQ', 'Y');
INSERT INTO `sys_area` VALUES (25803, 25442, 3, '溧水区', '江苏省，南京市，溧水区', '119.028732', '31.653061', '025', '211200', '320117', 'LiShuiQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (25804, 25442, 3, '江宁区', '江苏省，南京市，江宁区', '118.850621', '31.953418', '025', '211100', '320115', 'JiangNingQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (25805, 25442, 3, '玄武区', '江苏省，南京市，玄武区', '118.792199', '32.050678', '025', '210018', '320102', 'XuanWuQu', 'XWQ', 'X');
INSERT INTO `sys_area` VALUES (25806, 25442, 3, '栖霞区', '江苏省，南京市，栖霞区', '118.808702', '32.102147', '025', '210046', '320113', 'QiXiaQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (25807, 25442, 3, '秦淮区', '江苏省，南京市，秦淮区', '118.786088', '32.033818', '025', '210001', '320104', 'QinHuaiQu', 'QHQ', 'Q');
INSERT INTO `sys_area` VALUES (25808, 25442, 3, '高淳区', '江苏省，南京市，高淳区', '118.87589', '31.327132', '025', '211300', '320118', 'GaoChunQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (25809, 25442, 3, '六合区', '江苏省，南京市，六合区', '118.85065', '32.340655', '025', '211500', '320116', 'LiuHeQu', 'LHQ', 'L');
INSERT INTO `sys_area` VALUES (25810, 25442, 3, '建邺区', '江苏省，南京市，建邺区', '118.732688', '32.004538', '025', '210004', '320105', 'JianYeQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (25811, 25442, 3, '鼓楼区', '江苏省，南京市，鼓楼区', '118.769739', '32.066966', '025', '210009', '320106', 'GuLouQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (25942, 25443, 3, '如皋市', '江苏省，南通市，如皋市', '120.566324', '32.391591', '0513', '226500', '320682', 'RuGaoShi', 'RGS', 'R');
INSERT INTO `sys_area` VALUES (25943, 25443, 3, '海门市', '江苏省，南通市，海门市', '121.176609', '31.893528', '0513', '226100', '320684', 'HaiMenShi', 'HMS', 'H');
INSERT INTO `sys_area` VALUES (25944, 25443, 3, '海安县', '江苏省，南通市，海安县', '120.465995', '32.540289', '0513', '226600', '320621', 'HaiAnXian', 'HAX', 'H');
INSERT INTO `sys_area` VALUES (25945, 25443, 3, '启东市', '江苏省，南通市，启东市', '121.659724', '31.810158', '0513', '226200', '320681', 'QiDongShi', 'QDS', 'Q');
INSERT INTO `sys_area` VALUES (25946, 25443, 3, '如东县', '江苏省，南通市，如东县', '121.186088', '32.311832', '0513', '226400', '320623', 'RuDongXian', 'RDX', 'R');
INSERT INTO `sys_area` VALUES (25947, 25443, 3, '通州区', '江苏省，南通市，通州区', '121.073171', '32.084287', '0513', '226300', '320612', 'TongZhouQu', 'TZQ', 'T');
INSERT INTO `sys_area` VALUES (25948, 25443, 3, '崇川区', '江苏省，南通市，崇川区', '120.86635', '32.015278', '0513', '226001', '320602', 'ChongChuanQu', 'CCQ', 'C');
INSERT INTO `sys_area` VALUES (25949, 25443, 3, '港闸区', '江苏省，南通市，港闸区', '120.8339', '32.040299', '0513', '226001', '320611', 'GangZhaQu', 'GZQ', 'G');
INSERT INTO `sys_area` VALUES (26063, 25444, 3, '宜兴市', '江苏省，无锡市，宜兴市', '119.820538', '31.364384', '0510', '214200', '320282', 'YiXingShi', 'YXS', 'Y');
INSERT INTO `sys_area` VALUES (26064, 25444, 3, '惠山区', '江苏省，无锡市，惠山区', '120.303543', '31.681019', '0510', '214174', '320206', 'HuiShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (26065, 25444, 3, '江阴市', '江苏省，无锡市，江阴市', '120.275891', '31.910984', '0510', '214431', '320281', 'JiangYinShi', 'JYS', 'J');
INSERT INTO `sys_area` VALUES (26066, 25444, 3, '梁溪区', '江苏省，无锡市，梁溪区', '120.296595', '31.575706', '0510', '214001', '320213', 'LiangXiQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (26067, 25444, 3, '锡山区', '江苏省，无锡市，锡山区', '120.357298', '31.585559', '0510', '214101', '320205', 'XiShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (26068, 25444, 3, '新吴区', '江苏省，无锡市，新吴区', '120.352782', '31.550966', '0510', '214135', '320214', 'XinWuQu', 'XWQ', 'X');
INSERT INTO `sys_area` VALUES (26069, 25444, 3, '滨湖区', '江苏省，无锡市，滨湖区', '120.266053', '31.550228', '0510', '214123', '320211', 'BinHuQu', 'BHQ', 'B');
INSERT INTO `sys_area` VALUES (26154, 25445, 3, '扬中市', '江苏省，镇江市，扬中市', '119.828054', '32.237266', '0511', '212200', '321182', 'YangZhongShi', 'YZS', 'Y');
INSERT INTO `sys_area` VALUES (26155, 25445, 3, '丹阳市', '江苏省，镇江市，丹阳市', '119.581911', '31.991459', '0511', '212300', '321181', 'DanYangShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (26156, 25445, 3, '润州区', '江苏省，镇江市，润州区', '119.414877', '32.213501', '0511', '212005', '321111', 'RunZhouQu', 'RZQ', 'R');
INSERT INTO `sys_area` VALUES (26157, 25445, 3, '句容市', '江苏省，镇江市，句容市', '119.167135', '31.947355', '0511', '212400', '321183', 'JuRongShi', 'JRS', 'J');
INSERT INTO `sys_area` VALUES (26158, 25445, 3, '丹徒区', '江苏省，镇江市，丹徒区', '119.433883', '32.128972', '0511', '212028', '321112', 'DanTuQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (26159, 25445, 3, '京口区', '江苏省，镇江市，京口区', '119.454571', '32.206191', '0511', '212003', '321102', 'JingKouQu', 'JKQ', 'J');
INSERT INTO `sys_area` VALUES (26222, 25446, 3, '涟水县', '江苏省，淮安市，涟水县', '119.266078', '33.771308', '0517', '223400', '320826', 'LianShuiXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (26223, 25446, 3, '洪泽区', '江苏省，淮安市，洪泽区', '118.867875', '33.294975', '0517', '223100', '320813', 'HongZeQu', 'HZQ', 'H');
INSERT INTO `sys_area` VALUES (26224, 25446, 3, '金湖县', '江苏省，淮安市，金湖县', '119.016936', '33.018162', '0517', '211600', '320831', 'JinHuXian', 'JHX', 'J');
INSERT INTO `sys_area` VALUES (26225, 25446, 3, '淮安区', '江苏省，淮安市，淮安区', '119.14634', '33.507499', '0517', '223200', '320803', 'HuaiAnQu', 'HAQ', 'H');
INSERT INTO `sys_area` VALUES (26226, 25446, 3, '淮阴区', '江苏省，淮安市，淮阴区', '119.020817', '33.622452', '0517', '223300', '320804', 'HuaiYinQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (26227, 25446, 3, '盱眙县', '江苏省，淮安市，盱眙县', '118.493823', '33.00439', '0517', '211700', '320830', 'XuYiXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (26228, 25446, 3, '清江浦区', '江苏省，淮安市，清江浦区', '119.019454', '33.603234', '0517', '223002', '320812', 'QingJiangPuQu', 'QJPQ', 'Q');
INSERT INTO `sys_area` VALUES (26380, 25447, 3, '兴化市', '江苏省，泰州市，兴化市', '119.840162', '32.938065', '0523', '225700', '321281', 'XingHuaShi', 'XHS', 'X');
INSERT INTO `sys_area` VALUES (26381, 25447, 3, '靖江市', '江苏省，泰州市，靖江市', '120.26825', '32.018168', '0523', '214500', '321282', 'JingJiangShi', 'JJS', 'J');
INSERT INTO `sys_area` VALUES (26382, 25447, 3, '海陵区', '江苏省，泰州市，海陵区', '119.920187', '32.488406', '0523', '225300', '321202', 'HaiLingQu', 'HLQ', 'H');
INSERT INTO `sys_area` VALUES (26383, 25447, 3, '泰兴市', '江苏省，泰州市，泰兴市', '120.020228', '32.168784', '0523', '225400', '321283', 'TaiXingShi', 'TXS', 'T');
INSERT INTO `sys_area` VALUES (26384, 25447, 3, '高港区', '江苏省，泰州市，高港区', '119.88166', '32.315701', '0523', '225321', '321203', 'GaoGangQu', 'GGQ', 'G');
INSERT INTO `sys_area` VALUES (26385, 25447, 3, '姜堰区', '江苏省，泰州市，姜堰区', '120.148208', '32.508483', '0523', '225500', '321204', 'JiangYanQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (26488, 25448, 3, '丰县', '江苏省，徐州市，丰县', '116.592888', '34.696946', '0516', '221700', '320321', 'FengXian', 'FX', 'F');
INSERT INTO `sys_area` VALUES (26489, 25448, 3, '邳州市', '江苏省，徐州市，邳州市', '117.963923', '34.314708', '0516', '221300', '320382', 'PiZhouShi', 'PZS', 'P');
INSERT INTO `sys_area` VALUES (26490, 25448, 3, '新沂市', '江苏省，徐州市，新沂市', '118.345828', '34.368779', '0516', '221400', '320381', 'XinYiShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (26491, 25448, 3, '泉山区', '江苏省，徐州市，泉山区', '117.182225', '34.262249', '0516', '221006', '320311', 'QuanShanQu', 'QSQ', 'Q');
INSERT INTO `sys_area` VALUES (26492, 25448, 3, '铜山区', '江苏省，徐州市，铜山区', '117.183894', '34.19288', '0516', '221106', '320312', 'TongShanQu', 'TSQ', 'T');
INSERT INTO `sys_area` VALUES (26493, 25448, 3, '睢宁县', '江苏省，徐州市，睢宁县', '117.95066', '33.899222', '0516', '221200', '320324', 'HuiNingXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (26494, 25448, 3, '鼓楼区', '江苏省，徐州市，鼓楼区', '117.192941', '34.269397', '0516', '221005', '320302', 'GuLouQu', 'GLQ', 'G');
INSERT INTO `sys_area` VALUES (26495, 25448, 3, '贾汪区', '江苏省，徐州市，贾汪区', '117.450212', '34.441642', '0516', '221003', '320305', 'JiaWangQu', 'JWQ', 'J');
INSERT INTO `sys_area` VALUES (26496, 25448, 3, '云龙区', '江苏省，徐州市，云龙区', '117.194589', '34.254805', '0516', '221007', '320303', 'YunLongQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (26497, 25448, 3, '沛县', '江苏省，徐州市，沛县', '116.937182', '34.729044', '0516', '221600', '320322', 'PeiXian', 'PX', 'P');
INSERT INTO `sys_area` VALUES (26668, 25449, 3, '张家港市', '江苏省，苏州市，张家港市', '120.543441', '31.865553', '0512', '215600', '320582', 'ZhangJiaGangShi', 'ZJGS', 'Z');
INSERT INTO `sys_area` VALUES (26669, 25449, 3, '虎丘区', '江苏省，苏州市，虎丘区', '120.566833', '31.294845', '0512', '215004', '320505', 'HuQiuQu', 'HQQ', 'H');
INSERT INTO `sys_area` VALUES (26670, 25449, 3, '常熟市', '江苏省，苏州市，常熟市', '120.74852', '31.658156', '0512', '215500', '320581', 'ChangShuShi', 'CSS', 'C');
INSERT INTO `sys_area` VALUES (26671, 25449, 3, '太仓市', '江苏省，苏州市，太仓市', '121.112275', '31.452568', '0512', '215400', '320585', 'TaiCangShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (26672, 25449, 3, '昆山市', '江苏省，苏州市，昆山市', '120.958137', '31.381925', '0512', '215300', '320583', 'KunShanShi', 'KSS', 'K');
INSERT INTO `sys_area` VALUES (26673, 25449, 3, '姑苏区', '江苏省，苏州市，姑苏区', '120.622249', '31.311414', '0512', '215031', '320508', 'GuSuQu', 'GSQ', 'G');
INSERT INTO `sys_area` VALUES (26674, 25449, 3, '相城区', '江苏省，苏州市，相城区', '120.618956', '31.396684', '0512', '215131', '320507', 'XiangChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (26675, 25449, 3, '吴江区', '江苏省，苏州市，吴江区', '120.641601', '31.160404', '0512', '215200', '320509', 'WuJiangQu', 'WJQ', 'W');
INSERT INTO `sys_area` VALUES (26676, 25449, 3, '吴中区', '江苏省，苏州市，吴中区', '120.624621', '31.270839', '0512', '215128', '320506', 'WuZhongQu', 'WZQ', 'W');
INSERT INTO `sys_area` VALUES (26781, 25450, 3, '金坛区', '江苏省，常州市，金坛区', '119.573395', '31.744399', '0519', '213200', '320413', 'JinTanQu', 'JTQ', 'J');
INSERT INTO `sys_area` VALUES (26782, 25450, 3, '武进区', '江苏省，常州市，武进区', '119.958773', '31.718566', '0519', '213159', '320412', 'WuJinQu', 'WJQ', 'W');
INSERT INTO `sys_area` VALUES (26783, 25450, 3, '钟楼区', '江苏省，常州市，钟楼区', '119.948388', '31.78096', '0519', '213023', '320404', 'ZhongLouQu', 'ZLQ', 'Z');
INSERT INTO `sys_area` VALUES (26784, 25450, 3, '天宁区', '江苏省，常州市，天宁区', '119.963783', '31.779632', '0519', '213000', '320402', 'TianNingQu', 'TNQ', 'T');
INSERT INTO `sys_area` VALUES (26785, 25450, 3, '新北区', '江苏省，常州市，新北区', '119.974654', '31.824664', '0519', '213022', '320411', 'XinBeiQu', 'XBQ', 'X');
INSERT INTO `sys_area` VALUES (26786, 25450, 3, '溧阳市', '江苏省，常州市，溧阳市', '119.487816', '31.427081', '0519', '213300', '320481', 'LiYangShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (26850, 25451, 3, '响水县', '江苏省，盐城市，响水县', '119.579573', '34.19996', '0515', '224600', '320921', 'XiangShuiXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (26851, 25451, 3, '滨海县', '江苏省，盐城市，滨海县', '119.828434', '33.989888', '0515', '224500', '320922', 'BinHaiXian', 'BHX', 'B');
INSERT INTO `sys_area` VALUES (26852, 25451, 3, '射阳县', '江苏省，盐城市，射阳县', '120.257444', '33.773779', '0515', '224300', '320924', 'SheYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (26853, 25451, 3, '阜宁县', '江苏省，盐城市，阜宁县', '119.805338', '33.78573', '0515', '224400', '320923', 'FuNingXian', 'FNX', 'F');
INSERT INTO `sys_area` VALUES (26854, 25451, 3, '建湖县', '江苏省，盐城市，建湖县', '119.793105', '33.472621', '0515', '224700', '320925', 'JianHuXian', 'JHX', 'J');
INSERT INTO `sys_area` VALUES (26855, 25451, 3, '亭湖区', '江苏省，盐城市，亭湖区', '120.136078', '33.383912', '0515', '224005', '320902', 'TingHuQu', 'THQ', 'T');
INSERT INTO `sys_area` VALUES (26856, 25451, 3, '盐都区', '江苏省，盐城市，盐都区', '120.139753', '33.341288', '0515', '224055', '320903', 'YanDouQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (26857, 25451, 3, '大丰区', '江苏省，盐城市，大丰区', '120.470324', '33.199531', '0515', '224100', '320904', 'DaFengQu', 'DFQ', 'D');
INSERT INTO `sys_area` VALUES (26858, 25451, 3, '东台市', '江苏省，盐城市，东台市', '120.314101', '32.853174', '0515', '224200', '320981', 'DongTaiShi', 'DTS', 'D');
INSERT INTO `sys_area` VALUES (27016, 19, 2, '海东市', '青海省，海东市', '102.10327', '36.502916', '0972', '810700', '630200', 'HaiDongShi', 'HDS', 'H');
INSERT INTO `sys_area` VALUES (27017, 19, 2, '海南藏族自治州', '青海省，海南藏族自治州', '100.619542', '36.280353', '0974', '813000', '632500', 'HaiNanCangZuZiZhiZhou', 'HNCZZZZ', 'H');
INSERT INTO `sys_area` VALUES (27018, 19, 2, '海西蒙古族藏族自治州', '青海省，海西蒙古族藏族自治州', '97.370785', '37.374663', '0977', '817000', '632800', 'HaiXiMengGuZuCangZuZiZhiZhou', 'HXMGZCZZZZ', 'H');
INSERT INTO `sys_area` VALUES (27019, 19, 2, '玉树藏族自治州', '青海省，玉树藏族自治州', '97.008522', '33.004049', '0976', '815000', '632700', 'YuShuCangZuZiZhiZhou', 'YSCZZZZ', 'Y');
INSERT INTO `sys_area` VALUES (27020, 19, 2, '黄南藏族自治州', '青海省，黄南藏族自治州', '102.019988', '35.517744', '0973', '811300', '632300', 'HuangNanCangZuZiZhiZhou', 'HNCZZZZ', 'H');
INSERT INTO `sys_area` VALUES (27021, 19, 2, '果洛藏族自治州', '青海省，果洛藏族自治州', '100.242143', '34.4736', '0975', '814000', '632600', 'GuoLuoCangZuZiZhiZhou', 'GLCZZZZ', 'G');
INSERT INTO `sys_area` VALUES (27022, 19, 2, '海北藏族自治州', '青海省，海北藏族自治州', '100.901059', '36.959435', '0970', '812200', '632200', 'HaiBeiCangZuZiZhiZhou', 'HBCZZZZ', 'H');
INSERT INTO `sys_area` VALUES (27023, 19, 2, '西宁市', '青海省，西宁市', '101.778916', '36.623178', '0971', '810000', '630100', 'XiNingShi', 'XNS', 'X');
INSERT INTO `sys_area` VALUES (27024, 27016, 3, '化隆回族自治县', '青海省，海东市，化隆回族自治县', '102.262329', '36.098322', '0972', '810900', '630224', 'HuaLongHuiZuZiZhiXian', 'HLHZZZX', 'H');
INSERT INTO `sys_area` VALUES (27025, 27016, 3, '循化撒拉族自治县', '青海省，海东市，循化撒拉族自治县', '102.486534', '35.847247', '0972', '811100', '630225', 'XunHuaSaLaZuZiZhiXian', 'XHSLZZZX', 'X');
INSERT INTO `sys_area` VALUES (27026, 27016, 3, '平安区', '青海省，海东市，平安区', '102.104295', '36.502714', '0972', '810600', '630203', 'PingAnQu', 'PAQ', 'P');
INSERT INTO `sys_area` VALUES (27027, 27016, 3, '乐都区', '青海省，海东市，乐都区', '102.402431', '36.480291', '0972', '810700', '630202', 'LeDouQu', 'LDQ', 'L');
INSERT INTO `sys_area` VALUES (27028, 27016, 3, '民和回族土族自治县', '青海省，海东市，民和回族土族自治县', '102.804209', '36.329451', '0972', '810800', '630222', 'MinHeHuiZuTuZuZiZhiXian', 'MHHZTZZZX', 'M');
INSERT INTO `sys_area` VALUES (27029, 27016, 3, '互助土族自治县', '青海省，海东市，互助土族自治县', '101.956734', '36.83994', '0972', '810500', '630223', 'HuZhuTuZuZiZhiXian', 'HZTZZZX', 'H');
INSERT INTO `sys_area` VALUES (27126, 27017, 3, '贵南县', '青海省，海南藏族自治州，贵南县', '100.74792', '35.587085', '0974', '813100', '632525', 'GuiNanXian', 'GNX', 'G');
INSERT INTO `sys_area` VALUES (27127, 27017, 3, '同德县', '青海省，海南藏族自治州，同德县', '100.579465', '35.254492', '0974', '813200', '632522', 'TongDeXian', 'TDX', 'T');
INSERT INTO `sys_area` VALUES (27128, 27017, 3, '兴海县', '青海省，海南藏族自治州，兴海县', '99.986963', '35.58909', '0974', '813300', '632524', 'XingHaiXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (27129, 27017, 3, '贵德县', '青海省，海南藏族自治州，贵德县', '101.431856', '36.040456', '0974', '811700', '632523', 'GuiDeXian', 'GDX', 'G');
INSERT INTO `sys_area` VALUES (27130, 27017, 3, '共和县', '青海省，海南藏族自治州，共和县', '100.619597', '36.280286', '0974', '813000', '632521', 'GongHeXian', 'GHX', 'G');
INSERT INTO `sys_area` VALUES (27174, 27018, 3, '德令哈市', '青海省，海西蒙古族藏族自治州，德令哈市', '97.370143', '37.374555', '0977', '817000', '632802', 'DeLingHaShi', 'DLHS', 'D');
INSERT INTO `sys_area` VALUES (27175, 27018, 3, '格尔木市', '青海省，海西蒙古族藏族自治州，格尔木市', '94.905777', '36.401541', '0979', '816000', '632801', 'GeErMuShi', 'GEMS', 'G');
INSERT INTO `sys_area` VALUES (27176, 27018, 3, '天峻县', '青海省，海西蒙古族藏族自治州，天峻县', '99.02078', '37.29906', '0977', '817200', '632823', 'TianJunXian', 'TJX', 'T');
INSERT INTO `sys_area` VALUES (27177, 27018, 3, '海西蒙古族藏族自治州直辖', '青海省，海西蒙古族藏族自治州，海西蒙古族藏族自治州直辖', '95.357233', '37.853631', '0977', '817000', '632825', 'HaiXiMengGuZuCangZuZiZhiZhouZhiXia', 'HXMGZCZZZZZX', 'H');
INSERT INTO `sys_area` VALUES (27178, 27018, 3, '都兰县', '青海省，海西蒙古族藏族自治州，都兰县', '98.089161', '36.298553', '0977', '816100', '632822', 'DouLanXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (27179, 27018, 3, '乌兰县', '青海省，海西蒙古族藏族自治州，乌兰县', '98.479852', '36.930389', '0977', '817100', '632821', 'WuLanXian', 'WLX', 'W');
INSERT INTO `sys_area` VALUES (27226, 27019, 3, '曲麻莱县', '青海省，玉树藏族自治州，曲麻莱县', '95.800674', '34.12654', '0976', '815500', '632726', 'QuMaLaiXian', 'QMLX', 'Q');
INSERT INTO `sys_area` VALUES (27227, 27019, 3, '治多县', '青海省，玉树藏族自治州，治多县', '95.616843', '33.852322', '0976', '815400', '632724', 'ZhiDuoXian', 'ZDX', 'Z');
INSERT INTO `sys_area` VALUES (27228, 27019, 3, '称多县', '青海省，玉树藏族自治州，称多县', '97.110893', '33.367884', '0976', '815100', '632723', 'ChengDuoXian', 'CDX', 'C');
INSERT INTO `sys_area` VALUES (27229, 27019, 3, '玉树市', '青海省，玉树藏族自治州，玉树市', '97.008762', '33.00393', '0976', '815000', '632701', 'YuShuShi', 'YSS', 'Y');
INSERT INTO `sys_area` VALUES (27230, 27019, 3, '杂多县', '青海省，玉树藏族自治州，杂多县', '95.293423', '32.891886', '0976', '815300', '632722', 'ZaDuoXian', 'ZDX', 'Z');
INSERT INTO `sys_area` VALUES (27231, 27019, 3, '囊谦县', '青海省，玉树藏族自治州，囊谦县', '96.479797', '32.203206', '0976', '815200', '632725', 'NangQianXian', 'NQX', 'N');
INSERT INTO `sys_area` VALUES (27278, 27020, 3, '尖扎县', '青海省，黄南藏族自治州，尖扎县', '102.031953', '35.938205', '0973', '811200', '632322', 'JianZaXian', 'JZX', 'J');
INSERT INTO `sys_area` VALUES (27279, 27020, 3, '泽库县', '青海省，黄南藏族自治州，泽库县', '101.469343', '35.036842', '0973', '811400', '632323', 'ZeKuXian', 'ZKX', 'Z');
INSERT INTO `sys_area` VALUES (27280, 27020, 3, '同仁县', '青海省，黄南藏族自治州，同仁县', '102.017604', '35.516337', '0973', '811300', '632321', 'TongRenXian', 'TRX', 'T');
INSERT INTO `sys_area` VALUES (27281, 27020, 3, '河南蒙古族自治县', '青海省，黄南藏族自治州，河南蒙古族自治县', '101.611877', '34.734522', '0973', '811500', '632324', 'HeNanMengGuZuZiZhiXian', 'HNMGZZZX', 'H');
INSERT INTO `sys_area` VALUES (27314, 27021, 3, '达日县', '青海省，果洛藏族自治州，达日县', '99.651715', '33.753259', '0975', '814200', '632624', 'DaRiXian', 'DRX', 'D');
INSERT INTO `sys_area` VALUES (27315, 27021, 3, '久治县', '青海省，果洛藏族自治州，久治县', '101.484884', '33.430217', '0975', '624700', '632625', 'JiuZhiXian', 'JZX', 'J');
INSERT INTO `sys_area` VALUES (27316, 27021, 3, '甘德县', '青海省，果洛藏族自治州，甘德县', '99.902589', '33.966987', '0975', '814100', '632623', 'GanDeXian', 'GDX', 'G');
INSERT INTO `sys_area` VALUES (27317, 27021, 3, '玛沁县', '青海省，果洛藏族自治州，玛沁县', '100.243531', '34.473386', '0975', '814000', '632621', 'MaQinXian', 'MQX', 'M');
INSERT INTO `sys_area` VALUES (27318, 27021, 3, '班玛县', '青海省，果洛藏族自治州，班玛县', '100.737955', '32.931589', '0975', '814300', '632622', 'BanMaXian', 'BMX', 'B');
INSERT INTO `sys_area` VALUES (27319, 27021, 3, '玛多县', '青海省，果洛藏族自治州，玛多县', '98.211343', '34.91528', '0975', '813500', '632626', 'MaDuoXian', 'MDX', 'M');
INSERT INTO `sys_area` VALUES (27364, 27022, 3, '海晏县', '青海省，海北藏族自治州，海晏县', '100.90049', '36.959542', '0970', '812200', '632223', 'HaiYanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (27365, 27022, 3, '门源回族自治县', '青海省，海北藏族自治州，门源回族自治县', '101.618461', '37.376627', '0970', '810300', '632221', 'MenYuanHuiZuZiZhiXian', 'MYHZZZX', 'M');
INSERT INTO `sys_area` VALUES (27366, 27022, 3, '祁连县', '青海省，海北藏族自治州，祁连县', '100.249778', '38.175409', '0970', '810400', '632222', 'QiLianXian', 'QLX', 'Q');
INSERT INTO `sys_area` VALUES (27367, 27022, 3, '刚察县', '青海省，海北藏族自治州，刚察县', '100.138417', '37.326263', '0970', '812300', '632224', 'GangChaXian', 'GCX', 'G');
INSERT INTO `sys_area` VALUES (27402, 27023, 3, '大通回族土族自治县', '青海省，西宁市，大通回族土族自治县', '101.684183', '36.931343', '0971', '810100', '630121', 'DaTongHuiZuTuZuZiZhiXian', 'DTHZTZZZX', 'D');
INSERT INTO `sys_area` VALUES (27403, 27023, 3, '湟源县', '青海省，西宁市，湟源县', '101.263435', '36.684818', '0971', '812100', '630123', 'HuangYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (27404, 27023, 3, '城东区', '青海省，西宁市，城东区', '101.796095', '36.616043', '0971', '810007', '630102', 'ChengDongQu', 'CDQ', 'C');
INSERT INTO `sys_area` VALUES (27405, 27023, 3, '城西区', '青海省，西宁市，城西区', '101.763649', '36.628323', '0971', '810001', '630104', 'ChengXiQu', 'CXQ', 'C');
INSERT INTO `sys_area` VALUES (27406, 27023, 3, '城中区', '青海省，西宁市，城中区', '101.784554', '36.621181', '0971', '810000', '630103', 'ChengZhongQu', 'CZQ', 'C');
INSERT INTO `sys_area` VALUES (27407, 27023, 3, '湟中县', '青海省，西宁市，湟中县', '101.569475', '36.500419', '0971', '811600', '630122', 'HuangZhongXian', 'HZX', 'H');
INSERT INTO `sys_area` VALUES (27408, 27023, 3, '城北区', '青海省，西宁市，城北区', '101.761297', '36.648448', '0971', '810003', '630105', 'ChengBeiQu', 'CBQ', 'C');
INSERT INTO `sys_area` VALUES (27485, 20, 2, '钦州市', '广西壮族自治区，钦州市', '108.624175', '21.967127', '0777', '535099', '450700', 'QinZhouShi', 'QZS', 'Q');
INSERT INTO `sys_area` VALUES (27486, 20, 2, '桂林市', '广西壮族自治区，桂林市', '110.299121', '25.274215', '0773', '541100', '450300', 'GuiLinShi', 'GLS', 'G');
INSERT INTO `sys_area` VALUES (27487, 20, 2, '百色市', '广西壮族自治区，百色市', '106.616285', '23.897742', '0776', '533000', '451000', 'BaiSeShi', 'BSS', 'B');
INSERT INTO `sys_area` VALUES (27488, 20, 2, '北海市', '广西壮族自治区，北海市', '109.119254', '21.473343', '0779', '536000', '450500', 'BeiHaiShi', 'BHS', 'B');
INSERT INTO `sys_area` VALUES (27489, 20, 2, '贵港市', '广西壮族自治区，贵港市', '109.602146', '23.0936', '0775', '537100', '450800', 'GuiGangShi', 'GGS', 'G');
INSERT INTO `sys_area` VALUES (27490, 20, 2, '河池市', '广西壮族自治区，河池市', '108.062105', '24.695899', '0778', '547000', '451200', 'HeChiShi', 'HCS', 'H');
INSERT INTO `sys_area` VALUES (27491, 20, 2, '柳州市', '广西壮族自治区，柳州市', '109.411703', '24.314617', '0772', '545001', '450200', 'LiuZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (27492, 20, 2, '南宁市', '广西壮族自治区，南宁市', '108.320004', '22.82402', '0771', '530028', '450100', 'NanNingShi', 'NNS', 'N');
INSERT INTO `sys_area` VALUES (27493, 20, 2, '来宾市', '广西壮族自治区，来宾市', '109.229772', '23.733766', '0772', '546100', '451300', 'LaiBinShi', 'LBS', 'L');
INSERT INTO `sys_area` VALUES (27494, 20, 2, '崇左市', '广西壮族自治区，崇左市', '107.353926', '22.404108', '0771', '532299', '451400', 'ChongZuoShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (27495, 20, 2, '贺州市', '广西壮族自治区，贺州市', '111.552056', '24.414141', '0774', '542800', '451100', 'HeZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (27496, 20, 2, '防城港市', '广西壮族自治区，防城港市', '108.345478', '21.614631', '0770', '538001', '450600', 'FangChengGangShi', 'FCGS', 'F');
INSERT INTO `sys_area` VALUES (27497, 20, 2, '梧州市', '广西壮族自治区，梧州市', '111.297604', '23.474803', '0774', '543002', '450400', 'WuZhouShi', 'WZS', 'W');
INSERT INTO `sys_area` VALUES (27498, 20, 2, '玉林市', '广西壮族自治区，玉林市', '110.154393', '22.63136', '0775', '537000', '450900', 'YuLinShi', 'YLS', 'Y');
INSERT INTO `sys_area` VALUES (27499, 27485, 3, '钦南区', '广西壮族自治区，钦州市，钦南区', '108.626629', '21.966808', '0777', '535099', '450702', 'QinNanQu', 'QNQ', 'Q');
INSERT INTO `sys_area` VALUES (27500, 27485, 3, '灵山县', '广西壮族自治区，钦州市，灵山县', '109.293468', '22.418041', '0777', '535099', '450721', 'LingShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (27501, 27485, 3, '浦北县', '广西壮族自治区，钦州市，浦北县', '109.556341', '22.268335', '0777', '535099', '450722', 'PuBeiXian', 'PBX', 'P');
INSERT INTO `sys_area` VALUES (27502, 27485, 3, '钦北区', '广西壮族自治区，钦州市，钦北区', '108.44911', '22.132761', '0777', '535099', '450703', 'QinBeiQu', 'QBQ', 'Q');
INSERT INTO `sys_area` VALUES (27574, 27486, 3, '七星区', '广西壮族自治区，桂林市，七星区', '110.317577', '25.254339', '0773', '541004', '450305', 'QiXingQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (27575, 27486, 3, '临桂区', '广西壮族自治区，桂林市，临桂区', '110.205487', '25.246257', '0773', '541100', '450312', 'LinGuiQu', 'LGQ', 'L');
INSERT INTO `sys_area` VALUES (27576, 27486, 3, '叠彩区', '广西壮族自治区，桂林市，叠彩区', '110.300783', '25.301334', '0773', '541001', '450303', 'DieCaiQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (27577, 27486, 3, '兴安县', '广西壮族自治区，桂林市，兴安县', '110.670783', '25.609554', '0773', '541300', '450325', 'XingAnXian', 'XAX', 'X');
INSERT INTO `sys_area` VALUES (27578, 27486, 3, '资源县', '广西壮族自治区，桂林市，资源县', '110.642587', '26.0342', '0773', '541400', '450329', 'ZiYuanXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (27579, 27486, 3, '阳朔县', '广西壮族自治区，桂林市，阳朔县', '110.494699', '24.77534', '0773', '541900', '450321', 'YangShuoXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (27580, 27486, 3, '灵川县', '广西壮族自治区，桂林市，灵川县', '110.325712', '25.408541', '0773', '541200', '450323', 'LingChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (27581, 27486, 3, '恭城瑶族自治县', '广西壮族自治区，桂林市，恭城瑶族自治县', '110.82952', '24.833612', '0773', '542500', '450332', 'GongChengYaoZuZiZhiXian', 'GCYZZZX', 'G');
INSERT INTO `sys_area` VALUES (27582, 27486, 3, '荔浦县', '广西壮族自治区，桂林市，荔浦县', '110.400149', '24.497786', '0773', '546600', '450331', 'LiPuXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (27583, 27486, 3, '雁山区', '广西壮族自治区，桂林市，雁山区', '110.305667', '25.077646', '0773', '541006', '450311', 'YanShanQu', 'YSQ', 'Y');
INSERT INTO `sys_area` VALUES (27584, 27486, 3, '永福县', '广西壮族自治区，桂林市，永福县', '109.989208', '24.986692', '0773', '541800', '450326', 'YongFuXian', 'YFX', 'Y');
INSERT INTO `sys_area` VALUES (27585, 27486, 3, '平乐县', '广西壮族自治区，桂林市，平乐县', '110.642821', '24.632216', '0773', '542400', '450330', 'PingLeXian', 'PLX', 'P');
INSERT INTO `sys_area` VALUES (27586, 27486, 3, '龙胜各族自治县', '广西壮族自治区，桂林市，龙胜各族自治县', '110.009423', '25.796428', '0773', '541700', '450328', 'LongShengGeZuZiZhiXian', 'LSGZZZX', 'L');
INSERT INTO `sys_area` VALUES (27587, 27486, 3, '秀峰区', '广西壮族自治区，桂林市，秀峰区', '110.292445', '25.278544', '0773', '541001', '450302', 'XiuFengQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (27588, 27486, 3, '象山区', '广西壮族自治区，桂林市，象山区', '110.284882', '25.261986', '0773', '541002', '450304', 'XiangShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (27589, 27486, 3, '灌阳县', '广西壮族自治区，桂林市，灌阳县', '111.160248', '25.489098', '0773', '541600', '450327', 'GuanYangXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (27590, 27486, 3, '全州县', '广西壮族自治区，桂林市，全州县', '111.072989', '25.929897', '0773', '541503', '450324', 'QuanZhouXian', 'QZX', 'Q');
INSERT INTO `sys_area` VALUES (27736, 27487, 3, '乐业县', '广西壮族自治区，百色市，乐业县', '106.559638', '24.782204', '0776', '533200', '451028', 'LeYeXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (27737, 27487, 3, '隆林各族自治县', '广西壮族自治区，百色市，隆林各族自治县', '105.342363', '24.774318', '0776', '533400', '451031', 'LongLinGeZuZiZhiXian', 'LLGZZZX', 'L');
INSERT INTO `sys_area` VALUES (27738, 27487, 3, '西林县', '广西壮族自治区，百色市，西林县', '105.095025', '24.492041', '0776', '533500', '451030', 'XiLinXian', 'XLX', 'X');
INSERT INTO `sys_area` VALUES (27739, 27487, 3, '凌云县', '广西壮族自治区，百色市，凌云县', '106.56487', '24.345643', '0776', '533100', '451027', 'LingYunXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (27740, 27487, 3, '田东县', '广西壮族自治区，百色市，田东县', '107.12426', '23.600444', '0776', '531500', '451022', 'TianDongXian', 'TDX', 'T');
INSERT INTO `sys_area` VALUES (27741, 27487, 3, '平果县', '广西壮族自治区，百色市，平果县', '107.580403', '23.320479', '0776', '531400', '451023', 'PingGuoXian', 'PGX', 'P');
INSERT INTO `sys_area` VALUES (27742, 27487, 3, '右江区', '广西壮族自治区，百色市，右江区', '106.615727', '23.897675', '0776', '533000', '451002', 'YouJiangQu', 'YJQ', 'Y');
INSERT INTO `sys_area` VALUES (27743, 27487, 3, '德保县', '广西壮族自治区，百色市，德保县', '106.618164', '23.321464', '0776', '533700', '451024', 'DeBaoXian', 'DBX', 'D');
INSERT INTO `sys_area` VALUES (27744, 27487, 3, '田阳县', '广西壮族自治区，百色市，田阳县', '106.904315', '23.736079', '0776', '533600', '451021', 'TianYangQu', 'TYQ', 'T');
INSERT INTO `sys_area` VALUES (27745, 27487, 3, '靖西市', '广西壮族自治区，百色市，靖西市', '106.417549', '23.134766', '0776', '533800', '451081', 'JingXiShi', 'JXS', 'J');
INSERT INTO `sys_area` VALUES (27746, 27487, 3, '田林县', '广西壮族自治区，百色市，田林县', '106.235047', '24.290262', '0776', '533300', '451029', 'TianLinXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (27747, 27487, 3, '那坡县', '广西壮族自治区，百色市，那坡县', '105.833553', '23.400785', '0776', '533900', '451026', 'NaPoXian', 'NPX', 'N');
INSERT INTO `sys_area` VALUES (27885, 27488, 3, '合浦县', '广西壮族自治区，北海市，合浦县', '109.200695', '21.663554', '0779', '536100', '450521', 'HePuXian', 'HPX', 'H');
INSERT INTO `sys_area` VALUES (27886, 27488, 3, '海城区', '广西壮族自治区，北海市，海城区', '109.107529', '21.468443', '0779', '536000', '450502', 'HaiChengQu', 'HCQ', 'H');
INSERT INTO `sys_area` VALUES (27887, 27488, 3, '银海区', '广西壮族自治区，北海市，银海区', '109.118707', '21.444909', '0779', '536000', '450503', 'YinHaiQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (27888, 27488, 3, '铁山港区', '广西壮族自治区，北海市，铁山港区', '109.450573', '21.5928', '0779', '536017', '450512', 'TieShanGangQu', 'TSGQ', 'T');
INSERT INTO `sys_area` VALUES (27919, 27489, 3, '平南县', '广西壮族自治区，贵港市，平南县', '110.397485', '23.544546', '0775', '537300', '450821', 'PingNanXian', 'PNX', 'P');
INSERT INTO `sys_area` VALUES (27920, 27489, 3, '桂平市', '广西壮族自治区，贵港市，桂平市', '110.074668', '23.382473', '0775', '537200', '450881', 'GuiPingShi', 'GPS', 'G');
INSERT INTO `sys_area` VALUES (27921, 27489, 3, '覃塘区', '广西壮族自治区，贵港市，覃塘区', '109.415697', '23.132815', '0775', '537121', '450804', 'TanTangQu', 'TTQ', 'T');
INSERT INTO `sys_area` VALUES (27922, 27489, 3, '港南区', '广西壮族自治区，贵港市，港南区', '109.604665', '23.067516', '0775', '537100', '450803', 'GangNanQu', 'GNQ', 'G');
INSERT INTO `sys_area` VALUES (27923, 27489, 3, '港北区', '广西壮族自治区，贵港市，港北区', '109.59481', '23.107677', '0775', '537100', '450802', 'GangBeiQu', 'GBQ', 'G');
INSERT INTO `sys_area` VALUES (27998, 27490, 3, '环江毛南族自治县', '广西壮族自治区，河池市，环江毛南族自治县', '108.258669', '24.827628', '0778', '547100', '451226', 'HuanJiangMaoNanZuZiZhiXian', 'HJMNZZZX', 'H');
INSERT INTO `sys_area` VALUES (27999, 27490, 3, '金城江区', '广西壮族自治区，河池市，金城江区', '108.062131', '24.695625', '0778', '547000', '451202', 'JinChengJiangQu', 'JCJQ', 'J');
INSERT INTO `sys_area` VALUES (28000, 27490, 3, '罗城仫佬族自治县', '广西壮族自治区，河池市，罗城仫佬族自治县', '108.902453', '24.779327', '0778', '546400', '451225', 'LuoChengMuLaoZuZiZhiXian', 'LCMLZZZX', 'L');
INSERT INTO `sys_area` VALUES (28001, 27490, 3, '天峨县', '广西壮族自治区，河池市，天峨县', '107.174939', '24.985964', '0778', '547300', '451222', 'TianEXian', 'TEX', 'T');
INSERT INTO `sys_area` VALUES (28002, 27490, 3, '宜州区', '广西壮族自治区，河池市，宜州区', '108.653965', '24.492193', '0778', '546300', '451203', 'YiZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (28003, 27490, 3, '凤山县', '广西壮族自治区，河池市，凤山县', '107.044592', '24.544561', '0778', '547600', '451223', 'FengShanXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (28004, 27490, 3, '南丹县', '广西壮族自治区，河池市，南丹县', '107.546605', '24.983192', '0778', '547200', '451221', 'NanDanXian', 'NDX', 'N');
INSERT INTO `sys_area` VALUES (28005, 27490, 3, '大化瑶族自治县', '广西壮族自治区，河池市，大化瑶族自治县', '107.9945', '23.739596', '0778', '530800', '451229', 'DaHuaYaoZuZiZhiXian', 'DHYZZZX', 'D');
INSERT INTO `sys_area` VALUES (28006, 27490, 3, '巴马瑶族自治县', '广西壮族自治区，河池市，巴马瑶族自治县', '107.253126', '24.139538', '0778', '547500', '451227', 'BaMaYaoZuZiZhiXian', 'BMYZZZX', 'B');
INSERT INTO `sys_area` VALUES (28007, 27490, 3, '都安瑶族自治县', '广西壮族自治区，河池市，都安瑶族自治县', '108.102761', '23.934964', '0778', '530700', '451228', 'DouAnYaoZuZiZhiXian', 'DAYZZZX', 'D');
INSERT INTO `sys_area` VALUES (28008, 27490, 3, '东兰县', '广西壮族自治区，河池市，东兰县', '107.373696', '24.509367', '0778', '547400', '451224', 'DongLanXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (28148, 27491, 3, '融安县', '广西壮族自治区，柳州市，融安县', '109.403621', '25.214703', '0772', '545400', '450224', 'RongAnXian', 'RAX', 'R');
INSERT INTO `sys_area` VALUES (28149, 27491, 3, '融水苗族自治县', '广西壮族自治区，柳州市，融水苗族自治县', '109.252744', '25.068812', '0772', '545300', '450225', 'RongShuiMiaoZuZiZhiXian', 'RSMZZZX', 'R');
INSERT INTO `sys_area` VALUES (28150, 27491, 3, '三江侗族自治县', '广西壮族自治区，柳州市，三江侗族自治县', '109.614846', '25.78553', '0772', '545500', '450226', 'SanJiangDongZuZiZhiXian', 'SJDZZZX', 'S');
INSERT INTO `sys_area` VALUES (28151, 27491, 3, '城中区', '广西壮族自治区，柳州市，城中区', '109.411749', '24.312324', '0772', '545001', '450202', 'ChengZhongQu', 'CZQ', 'C');
INSERT INTO `sys_area` VALUES (28152, 27491, 3, '柳北区', '广西壮族自治区，柳州市，柳北区', '109.406577', '24.359145', '0772', '545002', '450205', 'LiuBeiQu', 'LBQ', 'L');
INSERT INTO `sys_area` VALUES (28153, 27491, 3, '鹿寨县', '广西壮族自治区，柳州市，鹿寨县', '109.740805', '24.483405', '0772', '545600', '450223', 'LuZhaiXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (28154, 27491, 3, '柳城县', '广西壮族自治区，柳州市，柳城县', '109.245812', '24.655121', '0772', '545200', '450222', 'LiuChengXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (28155, 27491, 3, '鱼峰区', '广西壮族自治区，柳州市，鱼峰区', '109.415364', '24.303848', '0772', '545005', '450203', 'YuFengQu', 'YFQ', 'Y');
INSERT INTO `sys_area` VALUES (28156, 27491, 3, '柳江区', '广西壮族自治区，柳州市，柳江区', '109.334503', '24.257512', '0772', '545100', '450206', 'LiuJiangQu', 'LJQ', 'L');
INSERT INTO `sys_area` VALUES (28157, 27491, 3, '柳南区', '广西壮族自治区，柳州市，柳南区', '109.395936', '24.287013', '0772', '545007', '450204', 'LiuNanQu', 'LNQ', 'L');
INSERT INTO `sys_area` VALUES (28276, 27492, 3, '上林县', '广西壮族自治区，南宁市，上林县', '108.603937', '23.431769', '0771', '530500', '450125', 'ShangLinXian', 'SLX', 'S');
INSERT INTO `sys_area` VALUES (28277, 27492, 3, '马山县', '广西壮族自治区，南宁市，马山县', '108.172903', '23.711758', '0771', '530600', '450124', 'MaShanXian', 'MSX', 'M');
INSERT INTO `sys_area` VALUES (28278, 27492, 3, '横县', '广西壮族自治区，南宁市，横县', '109.270987', '22.68743', '0771', '530300', '450127', 'HengXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (28279, 27492, 3, '西乡塘区', '广西壮族自治区，南宁市，西乡塘区', '108.306903', '22.832779', '0771', '530001', '450107', 'XiXiangTangQu', 'XXTQ', 'X');
INSERT INTO `sys_area` VALUES (28280, 27492, 3, '江南区', '广西壮族自治区，南宁市，江南区', '108.310478', '22.799593', '0771', '530031', '450105', 'JiangNanQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (28281, 27492, 3, '隆安县', '广西壮族自治区，南宁市，隆安县', '107.688661', '23.174763', '0771', '532700', '450123', 'LongAnXian', 'LAX', 'L');
INSERT INTO `sys_area` VALUES (28282, 27492, 3, '武鸣区', '广西壮族自治区，南宁市，武鸣区', '108.280717', '23.157163', '0771', '530100', '450110', 'WuMingQu', 'WMQ', 'W');
INSERT INTO `sys_area` VALUES (28283, 27492, 3, '兴宁区', '广西壮族自治区，南宁市，兴宁区', '108.320189', '22.819511', '0771', '530023', '450102', 'XingNingQu', 'XNQ', 'X');
INSERT INTO `sys_area` VALUES (28284, 27492, 3, '宾阳县', '广西壮族自治区，南宁市，宾阳县', '108.816735', '23.216884', '0771', '530400', '450126', 'BinYangXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (28285, 27492, 3, '邕宁区', '广西壮族自治区，南宁市，邕宁区', '108.484251', '22.756598', '0771', '530200', '450109', 'YongNingQu', 'YNQ', 'Y');
INSERT INTO `sys_area` VALUES (28286, 27492, 3, '良庆区', '广西壮族自治区，南宁市，良庆区', '108.322102', '22.75909', '0771', '530219', '450108', 'LiangQingQu', 'LQQ', 'L');
INSERT INTO `sys_area` VALUES (28287, 27492, 3, '青秀区', '广西壮族自治区，南宁市，青秀区', '108.346113', '22.816614', '0771', '530213', '450103', 'QingXiuQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (28429, 27493, 3, '兴宾区', '广西壮族自治区，来宾市，兴宾区', '109.230541', '23.732926', '0772', '546100', '451302', 'XingBinQu', 'XBQ', 'X');
INSERT INTO `sys_area` VALUES (28430, 27493, 3, '象州县', '广西壮族自治区，来宾市，象州县', '109.684555', '23.959824', '0772', '545800', '451322', 'XiangZhouXian', 'XZX', 'X');
INSERT INTO `sys_area` VALUES (28431, 27493, 3, '忻城县', '广西壮族自治区，来宾市，忻城县', '108.667361', '24.064779', '0772', '546200', '451321', 'XinChengXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (28432, 27493, 3, '金秀瑶族自治县', '广西壮族自治区，来宾市，金秀瑶族自治县', '110.188556', '24.134941', '0772', '545799', '451324', 'JinXiuYaoZuZiZhiXian', 'JXYZZZX', 'J');
INSERT INTO `sys_area` VALUES (28433, 27493, 3, '武宣县', '广西壮族自治区，来宾市，武宣县', '109.66287', '23.604162', '0772', '545900', '451323', 'WuXuanXian', 'WXX', 'W');
INSERT INTO `sys_area` VALUES (28434, 27493, 3, '合山市', '广西壮族自治区，来宾市，合山市', '108.88858', '23.81311', '0772', '546500', '451381', 'HeShanShi', 'HSS', 'H');
INSERT INTO `sys_area` VALUES (28508, 27494, 3, '扶绥县', '广西壮族自治区，崇左市，扶绥县', '107.911533', '22.635821', '0771', '532199', '451421', 'FuSuiXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (28509, 27494, 3, '宁明县', '广西壮族自治区，崇左市，宁明县', '107.067616', '22.131353', '0771', '532599', '451422', 'NingMingXian', 'NMX', 'N');
INSERT INTO `sys_area` VALUES (28510, 27494, 3, '凭祥市', '广西壮族自治区，崇左市，凭祥市', '106.759038', '22.108882', '0771', '532699', '451481', 'PingXiangShi', 'PXS', 'P');
INSERT INTO `sys_area` VALUES (28511, 27494, 3, '江州区', '广西壮族自治区，崇左市，江州区', '107.354443', '22.40469', '0771', '532299', '451402', 'JiangZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (28512, 27494, 3, '大新县', '广西壮族自治区，崇左市，大新县', '107.200803', '22.833369', '0771', '532399', '451424', 'DaXinXian', 'DXX', 'D');
INSERT INTO `sys_area` VALUES (28513, 27494, 3, '天等县', '广西壮族自治区，崇左市，天等县', '107.142441', '23.082484', '0771', '532899', '451425', 'TianDengXian', 'TDX', 'T');
INSERT INTO `sys_area` VALUES (28514, 27494, 3, '龙州县', '广西壮族自治区，崇左市，龙州县', '106.857502', '22.343716', '0771', '532499', '451423', 'LongZhouXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (28599, 27495, 3, '富川瑶族自治县', '广西壮族自治区，贺州市，富川瑶族自治县', '111.277228', '24.81896', '0774', '542700', '451123', 'FuChuanYaoZuZiZhiXian', 'FCYZZZX', 'F');
INSERT INTO `sys_area` VALUES (28600, 27495, 3, '昭平县', '广西壮族自治区，贺州市，昭平县', '110.810865', '24.172958', '0774', '546800', '451121', 'ZhaoPingXian', 'ZPX', 'Z');
INSERT INTO `sys_area` VALUES (28601, 27495, 3, '八步区', '广西壮族自治区，贺州市，八步区', '111.551991', '24.412446', '0774', '542800', '451102', 'BaBuQu', 'BBQ', 'B');
INSERT INTO `sys_area` VALUES (28602, 27495, 3, '钟山县', '广西壮族自治区，贺州市，钟山县', '111.303629', '24.528566', '0774', '542600', '451122', 'ZhongShanXian', 'ZSX', 'Z');
INSERT INTO `sys_area` VALUES (28603, 27495, 3, '平桂区', '广西壮族自治区，贺州市，平桂区', '111.524014', '24.417148', '0774', '542800', '451103', 'PingGuiQu', 'PGQ', 'P');
INSERT INTO `sys_area` VALUES (28665, 27496, 3, '上思县', '广西壮族自治区，防城港市，上思县', '107.982139', '22.151423', '0770', '535500', '450621', 'ShangSiXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (28666, 27496, 3, '防城区', '广西壮族自治区，防城港市，防城区', '108.358426', '21.764758', '0770', '538021', '450603', 'FangChengQu', 'FCQ', 'F');
INSERT INTO `sys_area` VALUES (28667, 27496, 3, '港口区', '广西壮族自治区，防城港市，港口区', '108.346281', '21.614406', '0770', '538001', '450602', 'GangKouQu', 'GKQ', 'G');
INSERT INTO `sys_area` VALUES (28668, 27496, 3, '东兴市', '广西壮族自治区，防城港市，东兴市', '107.97017', '21.541172', '0770', '538100', '450681', 'DongXingShi', 'DXS', 'D');
INSERT INTO `sys_area` VALUES (28701, 27497, 3, '蒙山县', '广西壮族自治区，梧州市，蒙山县', '110.5226', '24.199829', '0774', '546700', '450423', 'MengShanXian', 'MSX', 'M');
INSERT INTO `sys_area` VALUES (28702, 27497, 3, '藤县', '广西壮族自治区，梧州市，藤县', '110.931826', '23.373963', '0774', '543300', '450422', 'TengXian', 'TX', 'T');
INSERT INTO `sys_area` VALUES (28703, 27497, 3, '岑溪市', '广西壮族自治区，梧州市，岑溪市', '110.998114', '22.918406', '0774', '543200', '450481', 'CenXiShi', 'CXS', 'C');
INSERT INTO `sys_area` VALUES (28704, 27497, 3, '万秀区', '广西壮族自治区，梧州市，万秀区', '111.315817', '23.471318', '0774', '543000', '450403', 'WanXiuQu', 'WXQ', 'W');
INSERT INTO `sys_area` VALUES (28705, 27497, 3, '龙圩区', '广西壮族自治区，梧州市，龙圩区', '111.246035', '23.40996', '0774', '543002', '450406', 'LongXuQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (28706, 27497, 3, '长洲区', '广西壮族自治区，梧州市，长洲区', '111.275678', '23.4777', '0774', '543003', '450405', 'ChangZhouQu', 'CZQ', 'C');
INSERT INTO `sys_area` VALUES (28707, 27497, 3, '苍梧县', '广西壮族自治区，梧州市，苍梧县', '111.544008', '23.845097', '0774', '543100', '450421', 'CangWuXian', 'CWX', 'C');
INSERT INTO `sys_area` VALUES (28775, 27498, 3, '兴业县', '广西壮族自治区，玉林市，兴业县', '109.877768', '22.74187', '0775', '537800', '450924', 'XingYeXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (28776, 27498, 3, '福绵区', '广西壮族自治区，玉林市，福绵区', '110.054155', '22.58163', '0775', '537023', '450903', 'FuMianQu', 'FMQ', 'F');
INSERT INTO `sys_area` VALUES (28777, 27498, 3, '玉州区', '广西壮族自治区，玉林市，玉州区', '110.154912', '22.632132', '0775', '537000', '450902', 'YuZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (28778, 27498, 3, '博白县', '广西壮族自治区，玉林市，博白县', '109.980004', '22.271285', '0775', '537600', '450923', 'BoBaiXian', 'BBX', 'B');
INSERT INTO `sys_area` VALUES (28779, 27498, 3, '陆川县', '广西壮族自治区，玉林市，陆川县', '110.264842', '22.321054', '0775', '537700', '450922', 'LuChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (28780, 27498, 3, '容县', '广西壮族自治区，玉林市，容县', '110.552467', '22.856435', '0775', '537500', '450921', 'RongXian', 'RX', 'R');
INSERT INTO `sys_area` VALUES (28781, 27498, 3, '北流市', '广西壮族自治区，玉林市，北流市', '110.348052', '22.701648', '0775', '537400', '450981', 'BeiLiuShi', 'BLS', 'B');
INSERT INTO `sys_area` VALUES (28892, 21, 2, '固原市', '宁夏回族自治区，固原市', '106.285241', '36.004561', '0954', '756000', '640400', 'GuYuanShi', 'GYS', 'G');
INSERT INTO `sys_area` VALUES (28893, 21, 2, '中卫市', '宁夏回族自治区，中卫市', '105.189568', '37.514951', '0955', '751700', '640500', 'ZhongWeiShi', 'ZWS', 'Z');
INSERT INTO `sys_area` VALUES (28894, 21, 2, '银川市', '宁夏回族自治区，银川市', '106.278179', '38.46637', '0951', '750004', '640100', 'YinChuanShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (28895, 21, 2, '石嘴山市', '宁夏回族自治区，石嘴山市', '106.376173', '39.01333', '0952', '753000', '640200', 'ShiZuiShanShi', 'SZSS', 'S');
INSERT INTO `sys_area` VALUES (28896, 21, 2, '吴忠市', '宁夏回族自治区，吴忠市', '106.199409', '37.986165', '0953', '751100', '640300', 'WuZhongShi', 'WZS', 'W');
INSERT INTO `sys_area` VALUES (28897, 28892, 3, '泾源县', '宁夏回族自治区，固原市，泾源县', '106.338674', '35.49344', '0954', '756400', '640424', 'JingYuanXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (28898, 28892, 3, '隆德县', '宁夏回族自治区，固原市，隆德县', '106.12344', '35.618234', '0954', '756300', '640423', 'LongDeXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (28899, 28892, 3, '原州区', '宁夏回族自治区，固原市，原州区', '106.28477', '36.005337', '0954', '756000', '640402', 'YuanZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (28900, 28892, 3, '彭阳县', '宁夏回族自治区，固原市，彭阳县', '106.641512', '35.849975', '0954', '756500', '640425', 'PengYangXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (28901, 28892, 3, '西吉县', '宁夏回族自治区，固原市，西吉县', '105.731801', '35.965384', '0954', '756200', '640422', 'XiJiXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (28968, 28893, 3, '海原县', '宁夏回族自治区，中卫市，海原县', '105.647323', '36.562007', '0955', '751800', '640522', 'HaiYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (28969, 28893, 3, '沙坡头区', '宁夏回族自治区，中卫市，沙坡头区', '105.190536', '37.514564', '0955', '755000', '640502', 'ShaPoTouQu', 'SPTQ', 'S');
INSERT INTO `sys_area` VALUES (28970, 28893, 3, '中宁县', '宁夏回族自治区，中卫市，中宁县', '105.675784', '37.489736', '0955', '751200', '640521', 'ZhongNingXian', 'ZNX', 'Z');
INSERT INTO `sys_area` VALUES (29019, 28894, 3, '贺兰县', '宁夏回族自治区，银川市，贺兰县', '106.345904', '38.554563', '0951', '750200', '640122', 'HeLanXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (29020, 28894, 3, '西夏区', '宁夏回族自治区，银川市，西夏区', '106.132116', '38.492424', '0951', '750021', '640105', 'XiXiaQu', 'XXQ', 'X');
INSERT INTO `sys_area` VALUES (29021, 28894, 3, '兴庆区', '宁夏回族自治区，银川市，兴庆区', '106.278393', '38.46747', '0951', '750001', '640104', 'XingQingQu', 'XQQ', 'X');
INSERT INTO `sys_area` VALUES (29022, 28894, 3, '金凤区', '宁夏回族自治区，银川市，金凤区', '106.228486', '38.477353', '0951', '750011', '640106', 'JinFengQu', 'JFQ', 'J');
INSERT INTO `sys_area` VALUES (29023, 28894, 3, '永宁县', '宁夏回族自治区，银川市，永宁县', '106.253781', '38.28043', '0951', '750100', '640121', 'YongNingXian', 'YNX', 'Y');
INSERT INTO `sys_area` VALUES (29024, 28894, 3, '灵武市', '宁夏回族自治区，银川市，灵武市', '106.334701', '38.094058', '0951', '750004', '640181', 'LingWuShi', 'LWS', 'L');
INSERT INTO `sys_area` VALUES (29084, 28895, 3, '平罗县', '宁夏回族自治区，石嘴山市，平罗县', '106.54489', '38.90674', '0952', '753400', '640221', 'PingLuoXian', 'PLX', 'P');
INSERT INTO `sys_area` VALUES (29085, 28895, 3, '大武口区', '宁夏回族自治区，石嘴山市，大武口区', '106.376651', '39.014158', '0952', '753000', '640202', 'DaWuKouQu', 'DWKQ', 'D');
INSERT INTO `sys_area` VALUES (29086, 28895, 3, '惠农区', '宁夏回族自治区，石嘴山市，惠农区', '106.775513', '39.230094', '0952', '753600', '640205', 'HuiNongQu', 'HNQ', 'H');
INSERT INTO `sys_area` VALUES (29127, 28896, 3, '同心县', '宁夏回族自治区，吴忠市，同心县', '105.914764', '36.9829', '0953', '751300', '640324', 'TongXinXian', 'TXX', 'T');
INSERT INTO `sys_area` VALUES (29128, 28896, 3, '盐池县', '宁夏回族自治区，吴忠市，盐池县', '107.40541', '37.784222', '0953', '751500', '640323', 'YanChiXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (29129, 28896, 3, '利通区', '宁夏回族自治区，吴忠市，利通区', '106.199419', '37.985967', '0953', '751100', '640302', 'LiTongQu', 'LTQ', 'L');
INSERT INTO `sys_area` VALUES (29130, 28896, 3, '红寺堡区', '宁夏回族自治区，吴忠市，红寺堡区', '106.067315', '37.421616', '0953', '751900', '640303', 'HongSiBaoQu', 'HSBQ', 'H');
INSERT INTO `sys_area` VALUES (29131, 28896, 3, '青铜峡市', '宁夏回族自治区，吴忠市，青铜峡市', '106.075395', '38.021509', '0953', '751600', '640381', 'QingTongXiaShi', 'QTXS', 'Q');
INSERT INTO `sys_area` VALUES (29182, 22, 2, '景德镇市', '江西省，景德镇市', '117.214664', '29.29256', '0798', '333000', '360200', 'JingDeZhenShi', 'JDZS', 'J');
INSERT INTO `sys_area` VALUES (29183, 22, 2, '九江市', '江西省，九江市', '115.992811', '29.712034', '0792', '332000', '360400', 'JiuJiangShi', 'JJS', 'J');
INSERT INTO `sys_area` VALUES (29184, 22, 2, '抚州市', '江西省，抚州市', '116.358351', '27.98385', '0794', '344000', '361000', 'FuZhouShi', 'FZS', 'F');
INSERT INTO `sys_area` VALUES (29185, 22, 2, '上饶市', '江西省，上饶市', '117.971185', '28.44442', '0793', '334000', '361100', 'ShangRaoShi', 'SRS', 'S');
INSERT INTO `sys_area` VALUES (29186, 22, 2, '新余市', '江西省，新余市', '114.930835', '27.810834', '0790', '338025', '360500', 'XinYuShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (29187, 22, 2, '赣州市', '江西省，赣州市', '114.940278', '25.85097', '0797', '341000', '360700', 'GanZhouShi', 'GZS', 'G');
INSERT INTO `sys_area` VALUES (29188, 22, 2, '鹰潭市', '江西省，鹰潭市', '117.033838', '28.238638', '0701', '335000', '360600', 'YingTanShi', 'YTS', 'Y');
INSERT INTO `sys_area` VALUES (29189, 22, 2, '南昌市', '江西省，南昌市', '115.892151', '28.676493', '0791', '330008', '360100', 'NanChangShi', 'NCS', 'N');
INSERT INTO `sys_area` VALUES (29190, 22, 2, '吉安市', '江西省，吉安市', '114.986373', '27.111699', '0796', '343000', '360800', 'JiAnShi', 'JAS', 'J');
INSERT INTO `sys_area` VALUES (29191, 22, 2, '萍乡市', '江西省，萍乡市', '113.852186', '27.622946', '0799', '337000', '360300', 'PingXiangShi', 'PXS', 'P');
INSERT INTO `sys_area` VALUES (29192, 22, 2, '宜春市', '江西省，宜春市', '114.391136', '27.8043', '0795', '336000', '360900', 'YiChunShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (29193, 29182, 3, '乐平市', '江西省，景德镇市，乐平市', '117.129376', '28.967361', '0798', '333300', '360281', 'LePingShi', 'LPS', 'L');
INSERT INTO `sys_area` VALUES (29194, 29182, 3, '昌江区', '江西省，景德镇市，昌江区', '117.195023', '29.288465', '0798', '333000', '360202', 'ChangJiangQu', 'CJQ', 'C');
INSERT INTO `sys_area` VALUES (29195, 29182, 3, '浮梁县', '江西省，景德镇市，浮梁县', '117.217611', '29.352251', '0798', '333400', '360222', 'FuLiangXian', 'FLX', 'F');
INSERT INTO `sys_area` VALUES (29196, 29182, 3, '珠山区', '江西省，景德镇市，珠山区', '117.214814', '29.292812', '0798', '333000', '360203', 'ZhuShanQu', 'ZSQ', 'Z');
INSERT INTO `sys_area` VALUES (29258, 29183, 3, '彭泽县', '江西省，九江市，彭泽县', '116.55584', '29.898865', '0792', '332700', '360430', 'PengZeXian', 'PZX', 'P');
INSERT INTO `sys_area` VALUES (29259, 29183, 3, '武宁县', '江西省，九江市，武宁县', '115.105646', '29.260182', '0792', '332300', '360423', 'WuNingXian', 'WNX', 'W');
INSERT INTO `sys_area` VALUES (29260, 29183, 3, '柴桑区', '江西省，九江市，柴桑区', '115.892977', '29.610264', '0792', '332100', '360404', 'ChaiSangQu', 'CSQ', 'C');
INSERT INTO `sys_area` VALUES (29261, 29183, 3, '湖口县', '江西省，九江市，湖口县', '116.244313', '29.7263', '0792', '332500', '360429', 'HuKouXian', 'HKX', 'H');
INSERT INTO `sys_area` VALUES (29262, 29183, 3, '瑞昌市', '江西省，九江市，瑞昌市', '115.669081', '29.676599', '0792', '332200', '360481', 'RuiChangShi', 'RCS', 'R');
INSERT INTO `sys_area` VALUES (29263, 29183, 3, '都昌县', '江西省，九江市，都昌县', '116.205114', '29.275105', '0792', '332600', '360428', 'DouChangXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (29264, 29183, 3, '修水县', '江西省，九江市，修水县', '114.573428', '29.032729', '0792', '332400', '360424', 'XiuShuiXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (29265, 29183, 3, '庐山市', '江西省，九江市，庐山市', '116.043743', '29.456169', '0792', '332800', '360483', 'LuShanShi', 'LSS', 'L');
INSERT INTO `sys_area` VALUES (29266, 29183, 3, '濂溪区', '江西省，九江市，濂溪区', '115.99012', '29.676175', '0792', '332005', '360402', 'LianXiQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (29267, 29183, 3, '浔阳区', '江西省，九江市，浔阳区', '115.995947', '29.72465', '0792', '332000', '360403', 'XunYangQu', 'XYQ', 'X');
INSERT INTO `sys_area` VALUES (29268, 29183, 3, '德安县', '江西省，九江市，德安县', '115.762611', '29.327474', '0792', '330400', '360426', 'DeAnXian', 'DAX', 'D');
INSERT INTO `sys_area` VALUES (29269, 29183, 3, '永修县', '江西省，九江市，永修县', '115.809055', '29.018212', '0792', '330300', '360425', 'YongXiuXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (29270, 29183, 3, '共青城市', '江西省，九江市，共青城市', '115.805712', '29.247884', '0792', '332020', '360482', 'GongQingChengShi', 'GQCS', 'G');
INSERT INTO `sys_area` VALUES (29503, 29184, 3, '东乡区', '江西省，抚州市，东乡区', '116.605341', '28.2325', '0794', '331800', '361003', 'DongXiangQu', 'DXQ', 'D');
INSERT INTO `sys_area` VALUES (29504, 29184, 3, '金溪县', '江西省，抚州市，金溪县', '116.778751', '27.907387', '0794', '344800', '361027', 'JinXiXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (29505, 29184, 3, '资溪县', '江西省，抚州市，资溪县', '117.066095', '27.70653', '0794', '335300', '361028', 'ZiXiXian', 'ZXX', 'Z');
INSERT INTO `sys_area` VALUES (29506, 29184, 3, '南丰县', '江西省，抚州市，南丰县', '116.532994', '27.210132', '0794', '344500', '361023', 'NanFengXian', 'NFX', 'N');
INSERT INTO `sys_area` VALUES (29507, 29184, 3, '南城县', '江西省，抚州市，南城县', '116.63945', '27.55531', '0794', '344700', '361021', 'NanChengXian', 'NCX', 'N');
INSERT INTO `sys_area` VALUES (29508, 29184, 3, '乐安县', '江西省，抚州市，乐安县', '115.838432', '27.420101', '0794', '344300', '361025', 'LeAnXian', 'LAX', 'L');
INSERT INTO `sys_area` VALUES (29509, 29184, 3, '广昌县', '江西省，抚州市，广昌县', '116.327291', '26.838426', '0794', '344900', '361030', 'GuangChangXian', 'GCX', 'G');
INSERT INTO `sys_area` VALUES (29510, 29184, 3, '崇仁县', '江西省，抚州市，崇仁县', '116.059109', '27.760907', '0794', '344200', '361024', 'ChongRenXian', 'CRX', 'C');
INSERT INTO `sys_area` VALUES (29511, 29184, 3, '宜黄县', '江西省，抚州市，宜黄县', '116.223023', '27.546512', '0794', '344400', '361026', 'YiHuangXian', 'YHX', 'Y');
INSERT INTO `sys_area` VALUES (29512, 29184, 3, '临川区', '江西省，抚州市，临川区', '116.361404', '27.981919', '0794', '344000', '361002', 'LinChuanQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (29513, 29184, 3, '黎川县', '江西省，抚州市，黎川县', '116.91457', '27.292561', '0794', '344600', '361022', 'LiChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (29695, 29185, 3, '德兴市', '江西省，上饶市，德兴市', '117.578732', '28.945034', '0793', '334200', '361181', 'DeXingShi', 'DXS', 'D');
INSERT INTO `sys_area` VALUES (29696, 29185, 3, '铅山县', '江西省，上饶市，铅山县', '117.711906', '28.310892', '0793', '334500', '361124', 'QianShanXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (29697, 29185, 3, '鄱阳县', '江西省，上饶市，鄱阳县', '116.673748', '28.993374', '0793', '333100', '361128', 'PoYangXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (29698, 29185, 3, '婺源县', '江西省，上饶市，婺源县', '117.86219', '29.254015', '0793', '333200', '361130', 'WuYuanXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (29699, 29185, 3, '信州区', '江西省，上饶市，信州区', '117.970522', '28.445378', '0793', '334000', '361102', 'XinZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (29700, 29185, 3, '上饶县', '江西省，上饶市，上饶县', '117.90612', '28.453897', '0793', '334100', '361121', 'GuangXinQu', 'GXQ', 'G');
INSERT INTO `sys_area` VALUES (29701, 29185, 3, '广丰区', '江西省，上饶市，广丰区', '118.189852', '28.440285', '0793', '334600', '361103', 'GuangFengQu', 'GFQ', 'G');
INSERT INTO `sys_area` VALUES (29702, 29185, 3, '弋阳县', '江西省，上饶市，弋阳县', '117.435002', '28.402391', '0793', '334400', '361126', 'YiYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (29703, 29185, 3, '万年县', '江西省，上饶市，万年县', '117.07015', '28.692589', '0793', '335500', '361129', 'WanNianXian', 'WNX', 'W');
INSERT INTO `sys_area` VALUES (29704, 29185, 3, '余干县', '江西省，上饶市，余干县', '116.691072', '28.69173', '0793', '335100', '361127', 'YuGanXian', 'YGX', 'Y');
INSERT INTO `sys_area` VALUES (29705, 29185, 3, '横峰县', '江西省，上饶市，横峰县', '117.608247', '28.415103', '0793', '334300', '361125', 'HengFengXian', 'HFX', 'H');
INSERT INTO `sys_area` VALUES (29706, 29185, 3, '玉山县', '江西省，上饶市，玉山县', '118.244408', '28.673479', '0793', '334700', '361123', 'YuShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (29934, 29186, 3, '分宜县', '江西省，新余市，分宜县', '114.675262', '27.811301', '0790', '336600', '360521', 'FenYiXian', 'FYX', 'F');
INSERT INTO `sys_area` VALUES (29935, 29186, 3, '渝水区', '江西省，新余市，渝水区', '114.923923', '27.819171', '0790', '338000', '360502', 'YuShuiQu', 'YSQ', 'Y');
INSERT INTO `sys_area` VALUES (29975, 29187, 3, '宁都县', '江西省，赣州市，宁都县', '116.018782', '26.472054', '0797', '342800', '360730', 'NingDouXian', 'NDX', 'N');
INSERT INTO `sys_area` VALUES (29976, 29187, 3, '兴国县', '江西省，赣州市，兴国县', '115.351896', '26.330489', '0797', '342400', '360732', 'XingGuoXian', 'XGX', 'X');
INSERT INTO `sys_area` VALUES (29977, 29187, 3, '石城县', '江西省，赣州市，石城县', '116.342249', '26.326582', '0797', '342700', '360735', 'ShiChengXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (29978, 29187, 3, '于都县', '江西省，赣州市，于都县', '115.411198', '25.955033', '0797', '342300', '360731', 'YuDouXian', 'YDX', 'Y');
INSERT INTO `sys_area` VALUES (29979, 29187, 3, '瑞金市', '江西省，赣州市，瑞金市', '116.034854', '25.875278', '0797', '342500', '360781', 'RuiJinShi', 'RJS', 'R');
INSERT INTO `sys_area` VALUES (29980, 29187, 3, '上犹县', '江西省，赣州市，上犹县', '114.540537', '25.794284', '0797', '341200', '360724', 'ShangYouXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (29981, 29187, 3, '会昌县', '江西省，赣州市，会昌县', '115.791158', '25.599125', '0797', '342600', '360733', 'HuiChangXian', 'HCX', 'H');
INSERT INTO `sys_area` VALUES (29982, 29187, 3, '崇义县', '江西省，赣州市，崇义县', '114.307348', '25.687911', '0797', '341300', '360725', 'ChongYiXian', 'CYX', 'C');
INSERT INTO `sys_area` VALUES (29983, 29187, 3, '安远县', '江西省，赣州市，安远县', '115.392328', '25.134591', '0797', '342100', '360726', 'AnYuanXian', 'AYX', 'A');
INSERT INTO `sys_area` VALUES (29984, 29187, 3, '大余县', '江西省，赣州市，大余县', '114.362243', '25.395937', '0797', '341500', '360723', 'DaYuXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (29985, 29187, 3, '信丰县', '江西省，赣州市，信丰县', '114.930893', '25.38023', '0797', '341600', '360722', 'XinFengXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (29986, 29187, 3, '寻乌县', '江西省，赣州市，寻乌县', '115.651399', '24.954136', '0797', '342200', '360734', 'XunWuXian', 'XWX', 'X');
INSERT INTO `sys_area` VALUES (29987, 29187, 3, '全南县', '江西省，赣州市，全南县', '114.531589', '24.742651', '0797', '341800', '360729', 'QuanNanXian', 'QNX', 'Q');
INSERT INTO `sys_area` VALUES (29988, 29187, 3, '定南县', '江西省，赣州市，定南县', '115.03267', '24.774277', '0797', '341900', '360728', 'DingNanXian', 'DNX', 'D');
INSERT INTO `sys_area` VALUES (29989, 29187, 3, '龙南县', '江西省，赣州市，龙南县', '114.792657', '24.90476', '0797', '341700', '360727', 'LongNanXian', 'LNX', 'L');
INSERT INTO `sys_area` VALUES (29990, 29187, 3, '章贡区', '江西省，赣州市，章贡区', '114.93872', '25.851367', '0797', '341000', '360702', 'ZhangGongQu', 'ZGQ', 'Z');
INSERT INTO `sys_area` VALUES (29991, 29187, 3, '南康区', '江西省，赣州市，南康区', '114.756933', '25.661721', '0797', '341400', '360703', 'NanKangQu', 'NKQ', 'N');
INSERT INTO `sys_area` VALUES (29992, 29187, 3, '赣县区', '江西省，赣州市，赣县区', '115.018461', '25.865432', '0797', '341100', '360704', 'GanXianQu', 'GXQ', 'G');
INSERT INTO `sys_area` VALUES (30302, 29188, 3, '贵溪市', '江西省，鹰潭市，贵溪市', '117.212103', '28.283693', '0701', '335400', '360681', 'GuiXiShi', 'GXS', 'G');
INSERT INTO `sys_area` VALUES (30303, 29188, 3, '余江县', '江西省，鹰潭市，余江县', '116.822763', '28.206177', '0701', '335200', '360622', 'YuJiangXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (30304, 29188, 3, '月湖区', '江西省，鹰潭市，月湖区', '117.034112', '28.239076', '0701', '335000', '360602', 'YueHuQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (30367, 29189, 3, '安义县', '江西省，南昌市，安义县', '115.553109', '28.841334', '0791', '330500', '360123', 'AnYiXian', 'AYX', 'A');
INSERT INTO `sys_area` VALUES (30368, 29189, 3, '进贤县', '江西省，南昌市，进贤县', '116.267671', '28.365681', '0791', '331700', '360124', 'JinXianXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (30369, 29189, 3, '青云谱区', '江西省，南昌市，青云谱区', '115.907292', '28.635724', '0791', '330001', '360104', 'QingYunPuQu', 'QYPQ', 'Q');
INSERT INTO `sys_area` VALUES (30370, 29189, 3, '南昌县', '江西省，南昌市，南昌县', '115.942465', '28.543781', '0791', '330200', '360121', 'NanChangXian', 'NCX', 'N');
INSERT INTO `sys_area` VALUES (30371, 29189, 3, '青山湖区', '江西省，南昌市，青山湖区', '115.949044', '28.689292', '0791', '330029', '360111', 'QingShanHuQu', 'QSHQ', 'Q');
INSERT INTO `sys_area` VALUES (30372, 29189, 3, '湾里区', '江西省，南昌市，湾里区', '115.731324', '28.714803', '0791', '330004', '360105', 'WanLiQu', 'WLQ', 'W');
INSERT INTO `sys_area` VALUES (30373, 29189, 3, '新建区', '江西省，南昌市，新建区', '115.820806', '28.690788', '0791', '330100', '360112', 'XinJianQu', 'XJQ', 'X');
INSERT INTO `sys_area` VALUES (30374, 29189, 3, '西湖区', '江西省，南昌市，西湖区', '115.91065', '28.662901', '0791', '330009', '360103', 'XiHuQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (30375, 29189, 3, '东湖区', '江西省，南昌市，东湖区', '115.889675', '28.682988', '0791', '330006', '360102', 'DongHuQu', 'DHQ', 'D');
INSERT INTO `sys_area` VALUES (30513, 29190, 3, '吉水县', '江西省，吉安市，吉水县', '115.134569', '27.213445', '0796', '331600', '360822', 'JiShuiXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (30514, 29190, 3, '遂川县', '江西省，吉安市，遂川县', '114.51689', '26.323705', '0796', '343900', '360827', 'SuiChuanXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (30515, 29190, 3, '永新县', '江西省，吉安市，永新县', '114.242534', '26.944721', '0796', '343400', '360830', 'YongXinXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (30516, 29190, 3, '永丰县', '江西省，吉安市，永丰县', '115.435559', '27.321087', '0796', '331500', '360825', 'YongFengXian', 'YFX', 'Y');
INSERT INTO `sys_area` VALUES (30517, 29190, 3, '吉州区', '江西省，吉安市，吉州区', '114.987331', '27.112367', '0796', '343000', '360802', 'JiZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (30518, 29190, 3, '青原区', '江西省，吉安市，青原区', '115.016306', '27.105879', '0796', '343009', '360803', 'QingYuanQu', 'QYQ', 'Q');
INSERT INTO `sys_area` VALUES (30519, 29190, 3, '吉安县', '江西省，吉安市，吉安县', '114.905117', '27.040042', '0796', '343100', '360821', 'JiAnXian', 'JAX', 'J');
INSERT INTO `sys_area` VALUES (30520, 29190, 3, '万安县', '江西省，吉安市，万安县', '114.784694', '26.462085', '0796', '343800', '360828', 'WanAnXian', 'WAX', 'W');
INSERT INTO `sys_area` VALUES (30521, 29190, 3, '峡江县', '江西省，吉安市，峡江县', '115.319331', '27.580862', '0796', '331409', '360823', 'XiaJiangXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (30522, 29190, 3, '泰和县', '江西省，吉安市，泰和县', '114.901393', '26.790164', '0796', '343700', '360826', 'TaiHeXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (30523, 29190, 3, '井冈山市', '江西省，吉安市，井冈山市', '114.284421', '26.745919', '0796', '343600', '360881', 'JingGangShanShi', 'JGSS', 'J');
INSERT INTO `sys_area` VALUES (30524, 29190, 3, '新干县', '江西省，吉安市，新干县', '115.399294', '27.755758', '0796', '331300', '360824', 'XinGanXian', 'XGX', 'X');
INSERT INTO `sys_area` VALUES (30525, 29190, 3, '安福县', '江西省，吉安市，安福县', '114.61384', '27.382746', '0796', '343200', '360829', 'AnFuXian', 'AFX', 'A');
INSERT INTO `sys_area` VALUES (30781, 29191, 3, '湘东区', '江西省，萍乡市，湘东区', '113.7456', '27.639319', '0799', '337016', '360313', 'XiangDongQu', 'XDQ', 'X');
INSERT INTO `sys_area` VALUES (30782, 29191, 3, '安源区', '江西省，萍乡市，安源区', '113.855044', '27.625826', '0799', '337000', '360302', 'AnYuanQu', 'AYQ', 'A');
INSERT INTO `sys_area` VALUES (30783, 29191, 3, '上栗县', '江西省，萍乡市，上栗县', '113.800525', '27.877041', '0799', '337009', '360322', 'ShangLiXian', 'SLX', 'S');
INSERT INTO `sys_area` VALUES (30784, 29191, 3, '芦溪县', '江西省，萍乡市，芦溪县', '114.041206', '27.633633', '0799', '337053', '360323', 'LuXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (30785, 29191, 3, '莲花县', '江西省，萍乡市，莲花县', '113.955582', '27.127807', '0799', '337100', '360321', 'LianHuaXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (30842, 29192, 3, '上高县', '江西省，宜春市，上高县', '114.932653', '28.234789', '0795', '336400', '360923', 'ShangGaoXian', 'SGX', 'S');
INSERT INTO `sys_area` VALUES (30843, 29192, 3, '丰城市', '江西省，宜春市，丰城市', '115.786005', '28.191584', '0795', '331100', '360981', 'FengChengShi', 'FCS', 'F');
INSERT INTO `sys_area` VALUES (30844, 29192, 3, '宜丰县', '江西省，宜春市，宜丰县', '114.787381', '28.388289', '0795', '336300', '360924', 'YiFengXian', 'YFX', 'Y');
INSERT INTO `sys_area` VALUES (30845, 29192, 3, '靖安县', '江西省，宜春市，靖安县', '115.361744', '28.86054', '0795', '330600', '360925', 'JingAnXian', 'JAX', 'J');
INSERT INTO `sys_area` VALUES (30846, 29192, 3, '高安市', '江西省，宜春市，高安市', '115.381527', '28.420951', '0795', '330800', '360983', 'GaoAnShi', 'GAS', 'G');
INSERT INTO `sys_area` VALUES (30847, 29192, 3, '奉新县', '江西省，宜春市，奉新县', '115.389899', '28.700672', '0795', '330700', '360921', 'FengXinXian', 'FXX', 'F');
INSERT INTO `sys_area` VALUES (30848, 29192, 3, '万载县', '江西省，宜春市，万载县', '114.449012', '28.104528', '0795', '336100', '360922', 'WanZaiXian', 'WZX', 'W');
INSERT INTO `sys_area` VALUES (30849, 29192, 3, '铜鼓县', '江西省，宜春市，铜鼓县', '114.37014', '28.520956', '0795', '336200', '360926', 'TongGuXian', 'TGX', 'T');
INSERT INTO `sys_area` VALUES (30850, 29192, 3, '袁州区', '江西省，宜春市，袁州区', '114.387379', '27.800117', '0795', '336000', '360902', 'YuanZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (30851, 29192, 3, '樟树市', '江西省，宜春市，樟树市', '115.543388', '28.055898', '0795', '331200', '360982', 'ZhangShuShi', 'ZSS', 'Z');
INSERT INTO `sys_area` VALUES (31073, 23, 2, '宁波市', '浙江省，宁波市', '121.549792', '29.868388', '0574', '315000', '330200', 'NingBoShi', 'NBS', 'N');
INSERT INTO `sys_area` VALUES (31074, 23, 2, '台州市', '浙江省，台州市', '121.428599', '28.661378', '0576', '318000', '331000', 'TaiZhouShi', 'TZS', 'T');
INSERT INTO `sys_area` VALUES (31075, 23, 2, '嘉兴市', '浙江省，嘉兴市', '120.750865', '30.762653', '0573', '314000', '330400', 'JiaXingShi', 'JXS', 'J');
INSERT INTO `sys_area` VALUES (31076, 23, 2, '舟山市', '浙江省，舟山市', '122.106863', '30.016028', '0580', '316000', '330900', 'ZhouShanShi', 'ZSS', 'Z');
INSERT INTO `sys_area` VALUES (31077, 23, 2, '温州市', '浙江省，温州市', '120.672111', '28.000575', '0577', '325000', '330300', 'WenZhouShi', 'WZS', 'W');
INSERT INTO `sys_area` VALUES (31078, 23, 2, '衢州市', '浙江省，衢州市', '118.87263', '28.941708', '0570', '324002', '330800', 'QuZhouShi', 'QZS', 'Q');
INSERT INTO `sys_area` VALUES (31079, 23, 2, '金华市', '浙江省，金华市', '119.649506', '29.089524', '0579', '321000', '330700', 'JinHuaShi', 'JHS', 'J');
INSERT INTO `sys_area` VALUES (31080, 23, 2, '丽水市', '浙江省，丽水市', '119.921786', '28.451993', '0578', '323000', '331100', 'LiShuiShi', 'LSS', 'L');
INSERT INTO `sys_area` VALUES (31081, 23, 2, '杭州市', '浙江省，杭州市', '120.153576', '30.287459', '0571', '310026', '330100', 'HangZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (31082, 23, 2, '绍兴市', '浙江省，绍兴市', '120.582112', '29.997117', '0575', '312000', '330600', 'ShaoXingShi', 'SXS', 'S');
INSERT INTO `sys_area` VALUES (31083, 23, 2, '湖州市', '浙江省，湖州市', '120.102398', '30.867198', '0572', '313000', '330500', 'HuZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (31084, 31073, 3, '北仑区', '浙江省，宁波市，北仑区', '121.831303', '29.90944', '0574', '315800', '330206', 'BeiLunQu', 'BLQ', 'B');
INSERT INTO `sys_area` VALUES (31085, 31073, 3, '象山县', '浙江省，宁波市，象山县', '121.877091', '29.470206', '0574', '315700', '330225', 'XiangShanXian', 'XSX', 'X');
INSERT INTO `sys_area` VALUES (31086, 31073, 3, '镇海区', '浙江省，宁波市，镇海区', '121.713162', '29.952107', '0574', '315200', '330211', 'ZhenHaiQu', 'ZHQ', 'Z');
INSERT INTO `sys_area` VALUES (31087, 31073, 3, '江北区', '浙江省，宁波市，江北区', '121.559282', '29.888361', '0574', '315020', '330205', 'JiangBeiQu', 'JBQ', 'J');
INSERT INTO `sys_area` VALUES (31088, 31073, 3, '奉化区', '浙江省，宁波市，奉化区', '121.41089', '29.662348', '0574', '315500', '330213', 'FengHuaQu', 'FHQ', 'F');
INSERT INTO `sys_area` VALUES (31089, 31073, 3, '宁海县', '浙江省，宁波市，宁海县', '121.432606', '29.299836', '0574', '315600', '330226', 'NingHaiXian', 'NHX', 'N');
INSERT INTO `sys_area` VALUES (31090, 31073, 3, '余姚市', '浙江省，宁波市，余姚市', '121.156294', '30.045404', '0574', '315400', '330281', 'YuYaoShi', 'YYS', 'Y');
INSERT INTO `sys_area` VALUES (31091, 31073, 3, '鄞州区', '浙江省，宁波市，鄞州区', '121.558436', '29.831662', '0574', '315100', '330212', 'YinZhouQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (31092, 31073, 3, '海曙区', '浙江省，宁波市，海曙区', '121.539698', '29.874452', '0574', '315000', '330203', 'HaiShuQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (31093, 31073, 3, '慈溪市', '浙江省，宁波市，慈溪市', '121.248052', '30.177142', '0574', '315300', '330282', 'CiXiShi', 'CXS', 'C');
INSERT INTO `sys_area` VALUES (31250, 31074, 3, '路桥区', '浙江省，台州市，路桥区', '121.37292', '28.581799', '0576', '318050', '331004', 'LuQiaoQu', 'LQQ', 'L');
INSERT INTO `sys_area` VALUES (31251, 31074, 3, '临海市', '浙江省，台州市，临海市', '121.131229', '28.845441', '0576', '317000', '331082', 'LinHaiShi', 'LHS', 'L');
INSERT INTO `sys_area` VALUES (31252, 31074, 3, '椒江区', '浙江省，台州市，椒江区', '121.431049', '28.67615', '0576', '318000', '331002', 'JiaoJiangQu', 'JJQ', 'J');
INSERT INTO `sys_area` VALUES (31253, 31074, 3, '三门县', '浙江省，台州市，三门县', '121.376429', '29.118955', '0576', '317100', '331022', 'SanMenXian', 'SMX', 'S');
INSERT INTO `sys_area` VALUES (31254, 31074, 3, '天台县', '浙江省，台州市，天台县', '121.031227', '29.141126', '0576', '317200', '331023', 'TianTaiXian', 'TTX', 'T');
INSERT INTO `sys_area` VALUES (31255, 31074, 3, '温岭市', '浙江省，台州市，温岭市', '121.373611', '28.368781', '0576', '317500', '331081', 'WenLingShi', 'WLS', 'W');
INSERT INTO `sys_area` VALUES (31256, 31074, 3, '玉环市', '浙江省，台州市，玉环市', '121.232337', '28.12842', '0576', '317600', '331083', 'YuHuanShi', 'YHS', 'Y');
INSERT INTO `sys_area` VALUES (31257, 31074, 3, '黄岩区', '浙江省，台州市，黄岩区', '121.262138', '28.64488', '0576', '318020', '331003', 'HuangYanQu', 'HYQ', 'H');
INSERT INTO `sys_area` VALUES (31258, 31074, 3, '仙居县', '浙江省，台州市，仙居县', '120.735074', '28.849213', '0576', '317300', '331024', 'XianJuXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (31392, 31075, 3, '平湖市', '浙江省，嘉兴市，平湖市', '121.014666', '30.698921', '0573', '314200', '330482', 'PingHuShi', 'PHS', 'P');
INSERT INTO `sys_area` VALUES (31393, 31075, 3, '桐乡市', '浙江省，嘉兴市，桐乡市', '120.551085', '30.629065', '0573', '314500', '330483', 'TongXiangShi', 'TXS', 'T');
INSERT INTO `sys_area` VALUES (31394, 31075, 3, '海宁市', '浙江省，嘉兴市，海宁市', '120.688821', '30.525544', '0573', '314400', '330481', 'HaiNingShi', 'HNS', 'H');
INSERT INTO `sys_area` VALUES (31395, 31075, 3, '秀洲区', '浙江省，嘉兴市，秀洲区', '120.720431', '30.763323', '0573', '314031', '330411', 'XiuZhouQu', 'XZQ', 'X');
INSERT INTO `sys_area` VALUES (31396, 31075, 3, '南湖区', '浙江省，嘉兴市，南湖区', '120.749953', '30.764652', '0573', '314051', '330402', 'NanHuQu', 'NHQ', 'N');
INSERT INTO `sys_area` VALUES (31397, 31075, 3, '嘉善县', '浙江省，嘉兴市，嘉善县', '120.921871', '30.841352', '0573', '314100', '330421', 'JiaShanXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (31398, 31075, 3, '海盐县', '浙江省，嘉兴市，海盐县', '120.942017', '30.522223', '0573', '314300', '330424', 'HaiYanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (31472, 31076, 3, '定海区', '浙江省，舟山市，定海区', '122.108496', '30.016423', '0580', '316000', '330902', 'DingHaiQu', 'DHQ', 'D');
INSERT INTO `sys_area` VALUES (31473, 31076, 3, '普陀区', '浙江省，舟山市，普陀区', '122.301953', '29.945614', '0580', '316100', '330903', 'PuTuoQu', 'PTQ', 'P');
INSERT INTO `sys_area` VALUES (31474, 31076, 3, '岱山县', '浙江省，舟山市，岱山县', '122.201132', '30.242865', '0580', '316200', '330921', 'DaiShanXian', 'DSX', 'D');
INSERT INTO `sys_area` VALUES (31475, 31076, 3, '嵊泗县', '浙江省，舟山市，嵊泗县', '122.457809', '30.727166', '0580', '202450', '330922', 'ShengSiXian', 'SSX', 'S');
INSERT INTO `sys_area` VALUES (31511, 31077, 3, '平阳县', '浙江省，温州市，平阳县', '120.564387', '27.6693', '0577', '325400', '330326', 'PingYangXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (31512, 31077, 3, '洞头区', '浙江省，温州市，洞头区', '121.156181', '27.836057', '0577', '325700', '330305', 'DongTouQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (31513, 31077, 3, '瑞安市', '浙江省，温州市，瑞安市', '120.646171', '27.779321', '0577', '325200', '330381', 'RuiAnShi', 'RAS', 'R');
INSERT INTO `sys_area` VALUES (31514, 31077, 3, '苍南县', '浙江省，温州市，苍南县', '120.406256', '27.507743', '0577', '325800', '330327', 'CangNanXian', 'CNX', 'C');
INSERT INTO `sys_area` VALUES (31515, 31077, 3, '鹿城区', '浙江省，温州市，鹿城区', '120.674231', '28.003352', '0577', '325000', '330302', 'LuChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (31516, 31077, 3, '永嘉县', '浙江省，温州市，永嘉县', '120.690968', '28.153886', '0577', '325100', '330324', 'YongJiaXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (31517, 31077, 3, '泰顺县', '浙江省，温州市，泰顺县', '119.71624', '27.557309', '0577', '325500', '330329', 'TaiShunXian', 'TSX', 'T');
INSERT INTO `sys_area` VALUES (31518, 31077, 3, '文成县', '浙江省，温州市，文成县', '120.09245', '27.789133', '0577', '325300', '330328', 'WenChengXian', 'WCX', 'W');
INSERT INTO `sys_area` VALUES (31519, 31077, 3, '乐清市', '浙江省，温州市，乐清市', '120.967147', '28.116083', '0577', '325600', '330382', 'LeQingShi', 'LQS', 'L');
INSERT INTO `sys_area` VALUES (31520, 31077, 3, '龙湾区', '浙江省，温州市，龙湾区', '120.763469', '27.970254', '0577', '325013', '330303', 'LongWanQu', 'LWQ', 'L');
INSERT INTO `sys_area` VALUES (31521, 31077, 3, '瓯海区', '浙江省，温州市，瓯海区', '120.637145', '28.006444', '0577', '325005', '330304', 'OuHaiQu', 'OHQ', 'O');
INSERT INTO `sys_area` VALUES (31666, 31078, 3, '衢江区', '浙江省，衢州市，衢江区', '118.957683', '28.973195', '0570', '324022', '330803', 'QuJiangQu', 'QJQ', 'Q');
INSERT INTO `sys_area` VALUES (31667, 31078, 3, '柯城区', '浙江省，衢州市，柯城区', '118.873041', '28.944539', '0570', '324100', '330802', 'KeChengQu', 'KCQ', 'K');
INSERT INTO `sys_area` VALUES (31668, 31078, 3, '常山县', '浙江省，衢州市，常山县', '118.521654', '28.900039', '0570', '324200', '330822', 'ChangShanXian', 'CSX', 'C');
INSERT INTO `sys_area` VALUES (31669, 31078, 3, '开化县', '浙江省，衢州市，开化县', '118.414435', '29.136503', '0570', '324300', '330824', 'KaiHuaXian', 'KHX', 'K');
INSERT INTO `sys_area` VALUES (31670, 31078, 3, '龙游县', '浙江省，衢州市，龙游县', '119.172525', '29.031364', '0570', '324400', '330825', 'LongYouXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (31671, 31078, 3, '江山市', '浙江省，衢州市，江山市', '118.627879', '28.734674', '0570', '324100', '330881', 'JiangShanShi', 'JSS', 'J');
INSERT INTO `sys_area` VALUES (31776, 31079, 3, '浦江县', '浙江省，金华市，浦江县', '119.893363', '29.451254', '0579', '322200', '330726', 'PuJiangXian', 'PJX', 'P');
INSERT INTO `sys_area` VALUES (31777, 31079, 3, '永康市', '浙江省，金华市，永康市', '120.036328', '28.895293', '0579', '321300', '330784', 'YongKangShi', 'YKS', 'Y');
INSERT INTO `sys_area` VALUES (31778, 31079, 3, '武义县', '浙江省，金华市，武义县', '119.819159', '28.896563', '0579', '321200', '330723', 'WuYiXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (31779, 31079, 3, '兰溪市', '浙江省，金华市，兰溪市', '119.460521', '29.210065', '0579', '321100', '330781', 'LanXiShi', 'LXS', 'L');
INSERT INTO `sys_area` VALUES (31780, 31079, 3, '东阳市', '浙江省，金华市，东阳市', '120.23334', '29.262546', '0579', '322100', '330783', 'DongYangShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (31781, 31079, 3, '婺城区', '浙江省，金华市，婺城区', '119.652579', '29.082607', '0579', '321000', '330702', 'WuChengQu', 'WCQ', 'W');
INSERT INTO `sys_area` VALUES (31782, 31079, 3, '磐安县', '浙江省，金华市，磐安县', '120.44513', '29.052627', '0579', '322300', '330727', 'PanAnXian', 'PAX', 'P');
INSERT INTO `sys_area` VALUES (31783, 31079, 3, '金东区', '浙江省，金华市，金东区', '119.681264', '29.095835', '0579', '321000', '330703', 'JinDongQu', 'JDQ', 'J');
INSERT INTO `sys_area` VALUES (31784, 31079, 3, '义乌市', '浙江省，金华市，义乌市', '120.074911', '29.306863', '0579', '322000', '330782', 'YiWuShi', 'YWS', 'Y');
INSERT INTO `sys_area` VALUES (31932, 31080, 3, '莲都区', '浙江省，丽水市，莲都区', '119.922293', '28.451103', '0578', '323000', '331102', 'LianDouQu', 'LDQ', 'L');
INSERT INTO `sys_area` VALUES (31933, 31080, 3, '松阳县', '浙江省，丽水市，松阳县', '119.485292', '28.449937', '0578', '323400', '331124', 'SongYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (31934, 31080, 3, '龙泉市', '浙江省，丽水市，龙泉市', '119.132319', '28.069177', '0578', '323700', '331181', 'LongQuanShi', 'LQS', 'L');
INSERT INTO `sys_area` VALUES (31935, 31080, 3, '遂昌县', '浙江省，丽水市，遂昌县', '119.27589', '28.5924', '0578', '323300', '331123', 'SuiChangXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (31936, 31080, 3, '云和县', '浙江省，丽水市，云和县', '119.569458', '28.111077', '0578', '323600', '331125', 'YunHeXian', 'YHX', 'Y');
INSERT INTO `sys_area` VALUES (31937, 31080, 3, '缙云县', '浙江省，丽水市，缙云县', '120.078965', '28.654208', '0578', '321400', '331122', 'JinYunXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (31938, 31080, 3, '景宁畲族自治县', '浙江省，丽水市，景宁畲族自治县', '119.634669', '27.977247', '0578', '323500', '331127', 'JingNingSheZuZiZhiXian', 'JNSZZZX', 'J');
INSERT INTO `sys_area` VALUES (31939, 31080, 3, '青田县', '浙江省，丽水市，青田县', '120.291939', '28.135247', '0578', '323900', '331121', 'QingTianXian', 'QTX', 'Q');
INSERT INTO `sys_area` VALUES (31940, 31080, 3, '庆元县', '浙江省，丽水市，庆元县', '119.067233', '27.618231', '0578', '323800', '331126', 'QingYuanXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (32115, 31081, 3, '富阳区', '浙江省，杭州市，富阳区', '119.949869', '30.049871', '0571', '311400', '330111', 'FuYangQu', 'FYQ', 'F');
INSERT INTO `sys_area` VALUES (32116, 31081, 3, '桐庐县', '浙江省，杭州市，桐庐县', '119.685045', '29.797437', '0571', '311500', '330122', 'TongLuXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (32117, 31081, 3, '西湖区', '浙江省，杭州市，西湖区', '120.147376', '30.272934', '0571', '310013', '330106', 'XiHuQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (32118, 31081, 3, '上城区', '浙江省，杭州市，上城区', '120.171465', '30.250236', '0571', '310002', '330102', 'ShangChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (32119, 31081, 3, '建德市', '浙江省，杭州市，建德市', '119.279089', '29.472284', '0571', '311600', '330182', 'JianDeShi', 'JDS', 'J');
INSERT INTO `sys_area` VALUES (32120, 31081, 3, '淳安县', '浙江省，杭州市，淳安县', '119.044276', '29.604177', '0571', '311700', '330127', 'ChunAnXian', 'CAX', 'C');
INSERT INTO `sys_area` VALUES (32121, 31081, 3, '余杭区', '浙江省，杭州市，余杭区', '120.301737', '30.421187', '0571', '311100', '330110', 'YuHangQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (32122, 31081, 3, '萧山区', '浙江省，杭州市，萧山区', '120.27069', '30.162932', '0571', '311200', '330109', 'XiaoShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (32123, 31081, 3, '滨江区', '浙江省，杭州市，滨江区', '120.21062', '30.206615', '0571', '310051', '330108', 'BinJiangQu', 'BJQ', 'B');
INSERT INTO `sys_area` VALUES (32124, 31081, 3, '江干区', '浙江省，杭州市，江干区', '120.202633', '30.266603', '0571', '310016', '330104', 'JiangGanQu', 'JGQ', 'J');
INSERT INTO `sys_area` VALUES (32125, 31081, 3, '下城区', '浙江省，杭州市，下城区', '120.172763', '30.276271', '0571', '310006', '330103', 'XiaChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (32126, 31081, 3, '临安区', '浙江省，杭州市，临安区', '119.715101', '30.231153', '0571', '311300', '330112', 'LinAnQu', 'LAQ', 'L');
INSERT INTO `sys_area` VALUES (32127, 31081, 3, '拱墅区', '浙江省，杭州市，拱墅区', '120.150053', '30.314697', '0571', '310011', '330105', 'GongShuQu', 'GSQ', 'G');
INSERT INTO `sys_area` VALUES (32323, 31082, 3, '上虞区', '浙江省，绍兴市，上虞区', '120.874185', '30.016769', '0575', '312300', '330604', 'ShangYuQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (32324, 31082, 3, '嵊州市', '浙江省，绍兴市，嵊州市', '120.82888', '29.586606', '0575', '312400', '330683', 'ShengZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (32325, 31082, 3, '新昌县', '浙江省，绍兴市，新昌县', '120.905665', '29.501205', '0575', '312500', '330624', 'XinChangXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (32326, 31082, 3, '越城区', '浙江省，绍兴市，越城区', '120.585315', '29.996993', '0575', '312000', '330602', 'YueChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (32327, 31082, 3, '柯桥区', '浙江省，绍兴市，柯桥区', '120.476075', '30.078038', '0575', '312030', '330603', 'KeQiaoQu', 'KQQ', 'K');
INSERT INTO `sys_area` VALUES (32328, 31082, 3, '诸暨市', '浙江省，绍兴市，诸暨市', '120.244326', '29.713662', '0575', '311800', '330681', 'ZhuJiShi', 'ZJS', 'Z');
INSERT INTO `sys_area` VALUES (32448, 31083, 3, '德清县', '浙江省，湖州市，德清县', '119.967662', '30.534927', '0572', '313200', '330521', 'DeQingXian', 'DQX', 'D');
INSERT INTO `sys_area` VALUES (32449, 31083, 3, '长兴县', '浙江省，湖州市，长兴县', '119.910122', '31.00475', '0572', '313100', '330522', 'ChangXingXian', 'CXX', 'C');
INSERT INTO `sys_area` VALUES (32450, 31083, 3, '吴兴区', '浙江省，湖州市，吴兴区', '120.101416', '30.867252', '0572', '313000', '330502', 'WuXingQu', 'WXQ', 'W');
INSERT INTO `sys_area` VALUES (32451, 31083, 3, '安吉县', '浙江省，湖州市，安吉县', '119.687891', '30.631974', '0572', '313300', '330523', 'AnJiXian', 'AJX', 'A');
INSERT INTO `sys_area` VALUES (32452, 31083, 3, '南浔区', '浙江省，湖州市，南浔区', '120.417195', '30.872742', '0572', '313009', '330503', 'NanXunQu', 'NXQ', 'N');
INSERT INTO `sys_area` VALUES (32519, 24, 2, '邢台市', '河北省，邢台市', '114.508851', '37.0682', '0319', '054001', '130500', 'XingTaiShi', 'XTS', 'X');
INSERT INTO `sys_area` VALUES (32520, 24, 2, '邯郸市', '河北省，邯郸市', '114.490686', '36.612273', '0310', '056002', '130400', 'HanDanShi', 'HDS', 'H');
INSERT INTO `sys_area` VALUES (32521, 24, 2, '唐山市', '河北省，唐山市', '118.175393', '39.635113', '0315', '063000', '130200', 'TangShanShi', 'TSS', 'T');
INSERT INTO `sys_area` VALUES (32522, 24, 2, '承德市', '河北省，承德市', '117.939152', '40.976204', '0314', '067000', '130800', 'ChengDeShi', 'CDS', 'C');
INSERT INTO `sys_area` VALUES (32523, 24, 2, '张家口市', '河北省，张家口市', '114.884091', '40.811901', '0313', '075000', '130700', 'ZhangJiaKouShi', 'ZJKS', 'Z');
INSERT INTO `sys_area` VALUES (32524, 24, 2, '廊坊市', '河北省，廊坊市', '116.704441', '39.523927', '0316', '065000', '131000', 'LangFangShi', 'LFS', 'L');
INSERT INTO `sys_area` VALUES (32525, 24, 2, '沧州市', '河北省，沧州市', '116.857461', '38.310582', '0317', '061001', '130900', 'CangZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (32526, 24, 2, '衡水市', '河北省，衡水市', '115.665993', '37.735097', '0318', '053000', '131100', 'HengShuiShi', 'HSS', 'H');
INSERT INTO `sys_area` VALUES (32527, 24, 2, '秦皇岛市', '河北省，秦皇岛市', '119.586579', '39.942531', '0335', '066000', '130300', 'QinHuangDaoShi', 'QHDS', 'Q');
INSERT INTO `sys_area` VALUES (32528, 24, 2, '保定市', '河北省，保定市', '115.482331', '38.867657', '0312', '071052', '130600', 'BaoDingShi', 'BDS', 'B');
INSERT INTO `sys_area` VALUES (32529, 24, 2, '石家庄市', '河北省，石家庄市', '114.502461', '38.045474', '0311', '050011', '130100', 'ShiJiaZhuangShi', 'SJZS', 'S');
INSERT INTO `sys_area` VALUES (32530, 32519, 3, '内丘县', '河北省，邢台市，内丘县', '114.511523', '37.287663', '0319', '054200', '130523', 'NeiQiuXian', 'NQX', 'N');
INSERT INTO `sys_area` VALUES (32531, 32519, 3, '柏乡县', '河北省，邢台市，柏乡县', '114.693382', '37.483596', '0319', '055450', '130524', 'BaiXiangXian', 'BXX', 'B');
INSERT INTO `sys_area` VALUES (32532, 32519, 3, '新河县', '河北省，邢台市，新河县', '115.247537', '37.526216', '0319', '055650', '130530', 'XinHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (32533, 32519, 3, '隆尧县', '河北省，邢台市，隆尧县', '114.776348', '37.350925', '0319', '055350', '130525', 'LongYaoXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (32534, 32519, 3, '临城县', '河北省，邢台市，临城县', '114.506873', '37.444009', '0319', '054300', '130522', 'LinChengXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (32535, 32519, 3, '南宫市', '河北省，邢台市，南宫市', '115.398102', '37.359668', '0319', '055750', '130581', 'NanGongShi', 'NGS', 'N');
INSERT INTO `sys_area` VALUES (32536, 32519, 3, '宁晋县', '河北省，邢台市，宁晋县', '114.921027', '37.618956', '0319', '055550', '130528', 'NingJinXian', 'NJX', 'N');
INSERT INTO `sys_area` VALUES (32537, 32519, 3, '平乡县', '河北省，邢台市，平乡县', '115.029218', '37.069404', '0319', '054500', '130532', 'PingXiangXian', 'PXX', 'P');
INSERT INTO `sys_area` VALUES (32538, 32519, 3, '桥西区', '河北省，邢台市，桥西区', '114.473687', '37.068009', '0319', '054000', '130503', 'QiaoXiQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (32539, 32519, 3, '南和县', '河北省，邢台市，南和县', '114.691377', '37.003812', '0319', '054400', '130527', 'NanHeXian', 'NHX', 'N');
INSERT INTO `sys_area` VALUES (32540, 32519, 3, '沙河市', '河北省，邢台市，沙河市', '114.504902', '36.861903', '0319', '054100', '130582', 'ShaHeShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (32541, 32519, 3, '临西县', '河北省，邢台市，临西县', '115.498684', '36.8642', '0319', '054999', '130535', 'LinXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (32542, 32519, 3, '巨鹿县', '河北省，邢台市，巨鹿县', '115.038782', '37.21768', '0319', '055250', '130529', 'JuLuXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (32543, 32519, 3, '威县', '河北省，邢台市，威县', '115.272749', '36.983272', '0319', '054700', '130533', 'WeiXian', 'WX', 'W');
INSERT INTO `sys_area` VALUES (32544, 32519, 3, '广宗县', '河北省，邢台市，广宗县', '115.142797', '37.075548', '0319', '054600', '130531', 'GuangZongXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (32545, 32519, 3, '清河县', '河北省，邢台市，清河县', '115.668999', '37.059991', '0319', '054800', '130534', 'QingHeXian', 'QHX', 'Q');
INSERT INTO `sys_area` VALUES (32546, 32519, 3, '任县', '河北省，邢台市，任县', '114.684469', '37.129952', '0319', '055150', '130526', 'RenXian', 'RX', 'R');
INSERT INTO `sys_area` VALUES (32547, 32519, 3, '桥东区', '河北省，邢台市，桥东区', '114.507131', '37.064125', '0319', '054001', '130502', 'QiaoDongQu', 'QDQ', 'Q');
INSERT INTO `sys_area` VALUES (32548, 32519, 3, '邢台县', '河北省，邢台市，邢台县', '114.561132', '37.05073', '0319', '054001', '130521', 'XingTaiXian', 'XTX', 'X');
INSERT INTO `sys_area` VALUES (32746, 32520, 3, '广平县', '河北省，邯郸市，广平县', '114.950859', '36.483603', '0310', '057650', '130432', 'GuangPingXian', 'GPX', 'G');
INSERT INTO `sys_area` VALUES (32747, 32520, 3, '馆陶县', '河北省，邯郸市，馆陶县', '115.289057', '36.539461', '0310', '057750', '130433', 'GuanTaoXian', 'GTX', 'G');
INSERT INTO `sys_area` VALUES (32748, 32520, 3, '武安市', '河北省，邯郸市，武安市', '114.194581', '36.696115', '0310', '056300', '130481', 'WuAnShi', 'WAS', 'W');
INSERT INTO `sys_area` VALUES (32749, 32520, 3, '临漳县', '河北省，邯郸市，临漳县', '114.610703', '36.337604', '0310', '056600', '130423', 'LinZhangXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (32750, 32520, 3, '魏县', '河北省，邯郸市，魏县', '114.93411', '36.354248', '0310', '056800', '130434', 'WeiXian', 'WX', 'W');
INSERT INTO `sys_area` VALUES (32751, 32520, 3, '肥乡区', '河北省，邯郸市，肥乡区', '114.805154', '36.555778', '0310', '057550', '130407', 'FeiXiangQu', 'FXQ', 'F');
INSERT INTO `sys_area` VALUES (32752, 32520, 3, '峰峰矿区', '河北省，邯郸市，峰峰矿区', '114.209936', '36.420487', '0310', '056200', '130406', 'FengFengKuangQu', 'FFKQ', 'F');
INSERT INTO `sys_area` VALUES (32753, 32520, 3, '涉县', '河北省，邯郸市，涉县', '113.673297', '36.563143', '0310', '056400', '130426', 'SheXian', 'SX', 'S');
INSERT INTO `sys_area` VALUES (32754, 32520, 3, '大名县', '河北省，邯郸市，大名县', '115.152586', '36.283316', '0310', '056900', '130425', 'DaMingXian', 'DMX', 'D');
INSERT INTO `sys_area` VALUES (32755, 32520, 3, '邱县', '河北省，邯郸市，邱县', '115.168584', '36.81325', '0310', '057450', '130430', 'QiuXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (32756, 32520, 3, '曲周县', '河北省，邯郸市，曲周县', '114.957588', '36.773398', '0310', '057250', '130435', 'QuZhouXian', 'QZX', 'Q');
INSERT INTO `sys_area` VALUES (32757, 32520, 3, '鸡泽县', '河北省，邯郸市，鸡泽县', '114.878517', '36.914908', '0310', '057350', '130431', 'JiZeXian', 'JZX', 'J');
INSERT INTO `sys_area` VALUES (32758, 32520, 3, '磁县', '河北省，邯郸市，磁县', '114.38208', '36.367673', '0310', '056500', '130427', 'CiXian', 'CX', 'C');
INSERT INTO `sys_area` VALUES (32759, 32520, 3, '丛台区', '河北省，邯郸市，丛台区', '114.494703', '36.611082', '0310', '056002', '130403', 'CongTaiQu', 'CTQ', 'C');
INSERT INTO `sys_area` VALUES (32760, 32520, 3, '复兴区', '河北省，邯郸市，复兴区', '114.458242', '36.615484', '0310', '056003', '130404', 'FuXingQu', 'FXQ', 'F');
INSERT INTO `sys_area` VALUES (32761, 32520, 3, '永年区', '河北省，邯郸市，永年区', '114.496162', '36.776413', '0310', '057150', '130408', 'YongNianQu', 'YNQ', 'Y');
INSERT INTO `sys_area` VALUES (32762, 32520, 3, '邯山区', '河北省，邯郸市，邯山区', '114.484989', '36.603196', '0310', '056001', '130402', 'HanShanQu', 'HSQ', 'H');
INSERT INTO `sys_area` VALUES (32763, 32520, 3, '成安县', '河北省，邯郸市，成安县', '114.680356', '36.443832', '0310', '056700', '130424', 'ChengAnXian', 'CAX', 'C');
INSERT INTO `sys_area` VALUES (33005, 32521, 3, '滦南县', '河北省，唐山市，滦南县', '118.681552', '39.506201', '0315', '063500', '130224', 'LuanNanXian', 'LNX', 'L');
INSERT INTO `sys_area` VALUES (33006, 32521, 3, '乐亭县', '河北省，唐山市，乐亭县', '118.905341', '39.42813', '0315', '063600', '130225', 'LeTingXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (33007, 32521, 3, '迁西县', '河北省，唐山市，迁西县', '118.305139', '40.146238', '0315', '064300', '130227', 'QianXiXian', 'QXX', 'Q');
INSERT INTO `sys_area` VALUES (33008, 32521, 3, '遵化市', '河北省，唐山市，遵化市', '117.965875', '40.188616', '0315', '064200', '130281', 'ZunHuaShi', 'ZHS', 'Z');
INSERT INTO `sys_area` VALUES (33009, 32521, 3, '迁安市', '河北省，唐山市，迁安市', '118.701933', '40.012108', '0315', '064400', '130283', 'QianAnShi', 'QAS', 'Q');
INSERT INTO `sys_area` VALUES (33010, 32521, 3, '滦县', '河北省，唐山市，滦县', '118.699547', '39.744851', '0315', '063700', '130223', 'LuanXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (33011, 32521, 3, '曹妃甸区', '河北省，唐山市，曹妃甸区', '118.446585', '39.278277', '0315', '063200', '130209', 'CaoFeiDianQu', 'CFDQ', 'C');
INSERT INTO `sys_area` VALUES (33012, 32521, 3, '玉田县', '河北省，唐山市，玉田县', '117.753665', '39.887323', '0315', '064100', '130229', 'YuTianXian', 'YTX', 'Y');
INSERT INTO `sys_area` VALUES (33013, 32521, 3, '路南区', '河北省，唐山市，路南区', '118.210821', '39.615162', '0315', '063000', '130202', 'LuNanQu', 'LNQ', 'L');
INSERT INTO `sys_area` VALUES (33014, 32521, 3, '丰南区', '河北省，唐山市，丰南区', '118.110793', '39.56303', '0315', '063300', '130207', 'FengNanQu', 'FNQ', 'F');
INSERT INTO `sys_area` VALUES (33015, 32521, 3, '路北区', '河北省，唐山市，路北区', '118.174736', '39.628538', '0315', '063000', '130203', 'LuBeiQu', 'LBQ', 'L');
INSERT INTO `sys_area` VALUES (33016, 32521, 3, '丰润区', '河北省，唐山市，丰润区', '118.155779', '39.831363', '0315', '064000', '130208', 'FengRunQu', 'FRQ', 'F');
INSERT INTO `sys_area` VALUES (33017, 32521, 3, '古冶区', '河北省，唐山市，古冶区', '118.45429', '39.715736', '0315', '063100', '130204', 'GuYeQu', 'GYQ', 'G');
INSERT INTO `sys_area` VALUES (33018, 32521, 3, '开平区', '河北省，唐山市，开平区', '118.264425', '39.676171', '0315', '063021', '130205', 'KaiPingQu', 'KPQ', 'K');
INSERT INTO `sys_area` VALUES (33261, 32522, 3, '围场满族蒙古族自治县', '河北省，承德市，围场满族蒙古族自治县', '117.764086', '41.949404', '0314', '068450', '130828', 'WeiChangManZuMengGuZuZiZhiXian', 'WCMZMGZZZX', 'W');
INSERT INTO `sys_area` VALUES (33262, 32522, 3, '宽城满族自治县', '河北省，承德市，宽城满族自治县', '118.488642', '40.607981', '0314', '067600', '130827', 'KuanChengManZuZiZhiXian', 'KCMZZZX', 'K');
INSERT INTO `sys_area` VALUES (33263, 32522, 3, '隆化县', '河北省，承德市，隆化县', '117.736343', '41.316667', '0314', '068150', '130825', 'LongHuaXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (33264, 32522, 3, '鹰手营子矿区', '河北省，承德市，鹰手营子矿区', '117.661154', '40.546956', '0314', '067200', '130804', 'YingShouYingZiKuangQu', 'YSYZKQ', 'Y');
INSERT INTO `sys_area` VALUES (33265, 32522, 3, '丰宁满族自治县', '河北省，承德市，丰宁满族自治县', '116.65121', '41.209903', '0314', '068350', '130826', 'FengNingManZuZiZhiXian', 'FNMZZZX', 'F');
INSERT INTO `sys_area` VALUES (33266, 32522, 3, '平泉市', '河北省，承德市，平泉市', '118.690238', '41.00561', '0314', '067500', '130881', 'PingQuanShi', 'PQS', 'P');
INSERT INTO `sys_area` VALUES (33267, 32522, 3, '兴隆县', '河北省，承德市，兴隆县', '117.507098', '40.418525', '0314', '067300', '130822', 'XingLongXian', 'XLX', 'X');
INSERT INTO `sys_area` VALUES (33268, 32522, 3, '双滦区', '河北省，承德市，双滦区', '117.797485', '40.959756', '0314', '067001', '130803', 'ShuangLuanQu', 'SLQ', 'S');
INSERT INTO `sys_area` VALUES (33269, 32522, 3, '滦平县', '河北省，承德市，滦平县', '117.337124', '40.936644', '0314', '068250', '130824', 'LuanPingXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (33270, 32522, 3, '承德县', '河北省，承德市，承德县', '118.172496', '40.768637', '0314', '067400', '130821', 'ChengDeXian', 'CDX', 'C');
INSERT INTO `sys_area` VALUES (33271, 32522, 3, '双桥区', '河北省，承德市，双桥区', '117.939152', '40.976204', '0314', '067000', '130802', 'ShuangQiaoQu', 'SQQ', 'S');
INSERT INTO `sys_area` VALUES (33491, 32523, 3, '阳原县', '河北省，张家口市，阳原县', '114.167343', '40.113419', '0313', '075800', '130727', 'YangYuanXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (33492, 32523, 3, '沽源县', '河北省，张家口市，沽源县', '115.684836', '41.667419', '0313', '076550', '130724', 'GuYuanXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (33493, 32523, 3, '怀安县', '河北省，张家口市，怀安县', '114.422364', '40.671274', '0313', '076150', '130728', 'HuaiAnXian', 'HAX', 'H');
INSERT INTO `sys_area` VALUES (33494, 32523, 3, '蔚县', '河北省，张家口市，蔚县', '114.582695', '39.837181', '0313', '075700', '130726', 'YuXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (33495, 32523, 3, '崇礼区', '河北省，张家口市，崇礼区', '115.281652', '40.971302', '0313', '076350', '130709', 'ChongLiQu', 'CLQ', 'C');
INSERT INTO `sys_area` VALUES (33496, 32523, 3, '怀来县', '河北省，张家口市，怀来县', '115.520846', '40.405405', '0313', '075400', '130730', 'HuaiLaiXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (33497, 32523, 3, '张北县', '河北省，张家口市，张北县', '114.715951', '41.151713', '0313', '076450', '130722', 'ZhangBeiXian', 'ZBX', 'Z');
INSERT INTO `sys_area` VALUES (33498, 32523, 3, '康保县', '河北省，张家口市，康保县', '114.615809', '41.850046', '0313', '076650', '130723', 'KangBaoXian', 'KBX', 'K');
INSERT INTO `sys_area` VALUES (33499, 32523, 3, '尚义县', '河北省，张家口市，尚义县', '113.977713', '41.080091', '0313', '076750', '130725', 'ShangYiXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (33500, 32523, 3, '下花园区', '河北省，张家口市，下花园区', '115.281002', '40.488645', '0313', '075300', '130706', 'XiaHuaYuanQu', 'XHYQ', 'X');
INSERT INTO `sys_area` VALUES (33501, 32523, 3, '涿鹿县', '河北省，张家口市，涿鹿县', '115.219246', '40.378701', '0313', '075600', '130731', 'ZhuoLuXian', 'ZLX', 'Z');
INSERT INTO `sys_area` VALUES (33502, 32523, 3, '赤城县', '河北省，张家口市，赤城县', '115.832708', '40.912081', '0313', '075500', '130732', 'ChiChengXian', 'CCX', 'C');
INSERT INTO `sys_area` VALUES (33503, 32523, 3, '万全区', '河北省，张家口市，万全区', '114.736131', '40.765136', '0313', '076250', '130708', 'WanQuanQu', 'WQQ', 'W');
INSERT INTO `sys_area` VALUES (33504, 32523, 3, '桥东区', '河北省，张家口市，桥东区', '114.885658', '40.813875', '0313', '075000', '130702', 'QiaoDongQu', 'QDQ', 'Q');
INSERT INTO `sys_area` VALUES (33505, 32523, 3, '桥西区', '河北省，张家口市，桥西区', '114.882127', '40.824385', '0313', '075061', '130703', 'QiaoXiQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (33506, 32523, 3, '宣化区', '河北省，张家口市，宣化区', '115.0632', '40.609368', '0313', '075100', '130705', 'XuanHuaQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (33747, 32524, 3, '大厂回族自治县', '河北省，廊坊市，大厂回族自治县', '116.986501', '39.889266', '0316', '065300', '131028', 'DaChangHuiZuZiZhiXian', 'DCHZZZX', 'D');
INSERT INTO `sys_area` VALUES (33748, 32524, 3, '霸州市', '河北省，廊坊市，霸州市', '116.392021', '39.117331', '0316', '065700', '131081', 'BaZhouShi', 'BZS', 'B');
INSERT INTO `sys_area` VALUES (33749, 32524, 3, '大城县', '河北省，廊坊市，大城县', '116.640735', '38.699215', '0316', '065900', '131025', 'DaiChengXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (33750, 32524, 3, '永清县', '河北省，廊坊市，永清县', '116.498089', '39.319717', '0316', '065600', '131023', 'YongQingXian', 'YQX', 'Y');
INSERT INTO `sys_area` VALUES (33751, 32524, 3, '香河县', '河北省，廊坊市，香河县', '117.007161', '39.757212', '0316', '065400', '131024', 'XiangHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (33752, 32524, 3, '固安县', '河北省，廊坊市，固安县', '116.299894', '39.436468', '0316', '065500', '131022', 'GuAnXian', 'GAX', 'G');
INSERT INTO `sys_area` VALUES (33753, 32524, 3, '文安县', '河北省，廊坊市，文安县', '116.460107', '38.866801', '0316', '065800', '131026', 'WenAnXian', 'WAX', 'W');
INSERT INTO `sys_area` VALUES (33754, 32524, 3, '广阳区', '河北省，廊坊市，广阳区', '116.713708', '39.521931', '0316', '065000', '131003', 'GuangYangQu', 'GYQ', 'G');
INSERT INTO `sys_area` VALUES (33755, 32524, 3, '安次区', '河北省，廊坊市，安次区', '116.694544', '39.502569', '0316', '065000', '131002', 'AnCiQu', 'ACQ', 'A');
INSERT INTO `sys_area` VALUES (33756, 32524, 3, '三河市', '河北省，廊坊市，三河市', '117.077018', '39.982778', '0316', '065200', '131082', 'SanHeShi', 'SHS', 'S');
INSERT INTO `sys_area` VALUES (33869, 32525, 3, '运河区', '河北省，沧州市，运河区', '116.840063', '38.307405', '0317', '061001', '130903', 'YunHeQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (33870, 32525, 3, '任丘市', '河北省，沧州市，任丘市', '116.106764', '38.706513', '0317', '062550', '130982', 'RenQiuShi', 'RQS', 'R');
INSERT INTO `sys_area` VALUES (33871, 32525, 3, '孟村回族自治县', '河北省，沧州市，孟村回族自治县', '117.105104', '38.057953', '0317', '061400', '130930', 'MengCunHuiZuZiZhiXian', 'MCHZZZX', 'M');
INSERT INTO `sys_area` VALUES (33872, 32525, 3, '新华区', '河北省，沧州市，新华区', '116.873049', '38.308273', '0317', '061000', '130902', 'XinHuaQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (33873, 32525, 3, '青县', '河北省，沧州市，青县', '116.838384', '38.569646', '0317', '062650', '130922', 'QingXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (33874, 32525, 3, '河间市', '河北省，沧州市，河间市', '116.089452', '38.44149', '0317', '062450', '130984', 'HeJianShi', 'HJS', 'H');
INSERT INTO `sys_area` VALUES (33875, 32525, 3, '海兴县', '河北省，沧州市，海兴县', '117.496606', '38.141582', '0317', '061200', '130924', 'HaiXingXian', 'HXX', 'H');
INSERT INTO `sys_area` VALUES (33876, 32525, 3, '盐山县', '河北省，沧州市，盐山县', '117.229814', '38.056141', '0317', '061300', '130925', 'YanShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (33877, 32525, 3, '南皮县', '河北省，沧州市，南皮县', '116.709171', '38.042439', '0317', '061500', '130927', 'NanPiXian', 'NPX', 'N');
INSERT INTO `sys_area` VALUES (33878, 32525, 3, '东光县', '河北省，沧州市，东光县', '116.542062', '37.88655', '0317', '061600', '130923', 'DongGuangXian', 'DGX', 'D');
INSERT INTO `sys_area` VALUES (33879, 32525, 3, '献县', '河北省，沧州市，献县', '116.123844', '38.189661', '0317', '062250', '130929', 'XianXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (33880, 32525, 3, '沧县', '河北省，沧州市，沧县', '117.007478', '38.219856', '0317', '061000', '130921', 'CangXian', 'CX', 'C');
INSERT INTO `sys_area` VALUES (33881, 32525, 3, '肃宁县', '河北省，沧州市，肃宁县', '115.835856', '38.427102', '0317', '062350', '130926', 'SuNingXian', 'SNX', 'S');
INSERT INTO `sys_area` VALUES (33882, 32525, 3, '吴桥县', '河北省，沧州市，吴桥县', '116.391512', '37.628182', '0317', '061800', '130928', 'WuQiaoXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (33883, 32525, 3, '黄骅市', '河北省，沧州市，黄骅市', '117.343803', '38.369238', '0317', '061100', '130983', 'HuangHuaShi', 'HHS', 'H');
INSERT INTO `sys_area` VALUES (33884, 32525, 3, '泊头市', '河北省，沧州市，泊头市', '116.570163', '38.073479', '0317', '062150', '130981', 'BoTouShi', 'BTS', 'B');
INSERT INTO `sys_area` VALUES (34093, 32526, 3, '安平县', '河北省，衡水市，安平县', '115.519627', '38.233511', '0318', '053600', '131125', 'AnPingXian', 'APX', 'A');
INSERT INTO `sys_area` VALUES (34094, 32526, 3, '枣强县', '河北省，衡水市，枣强县', '115.726499', '37.511512', '0318', '053100', '131121', 'ZaoQiangXian', 'ZQX', 'Z');
INSERT INTO `sys_area` VALUES (34095, 32526, 3, '武邑县', '河北省，衡水市，武邑县', '115.892415', '37.803774', '0318', '053400', '131122', 'WuYiXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (34096, 32526, 3, '武强县', '河北省，衡水市，武强县', '115.970236', '38.03698', '0318', '053300', '131123', 'WuQiangXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (34097, 32526, 3, '桃城区', '河北省，衡水市，桃城区', '115.694945', '37.732237', '0318', '053000', '131102', 'TaoChengQu', 'TCQ', 'T');
INSERT INTO `sys_area` VALUES (34098, 32526, 3, '深州市', '河北省，衡水市，深州市', '115.554596', '38.00347', '0318', '053800', '131182', 'ShenZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (34099, 32526, 3, '饶阳县', '河北省，衡水市，饶阳县', '115.726577', '38.232671', '0318', '053900', '131124', 'RaoYangXian', 'RYX', 'R');
INSERT INTO `sys_area` VALUES (34100, 32526, 3, '冀州区', '河北省，衡水市，冀州区', '115.579173', '37.542788', '0318', '053200', '131103', 'JiZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (34101, 32526, 3, '景县', '河北省，衡水市，景县', '116.258446', '37.686622', '0318', '053500', '131127', 'JingXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (34102, 32526, 3, '故城县', '河北省，衡水市，故城县', '115.966747', '37.350981', '0318', '053800', '131126', 'GuChengXian', 'GCX', 'G');
INSERT INTO `sys_area` VALUES (34103, 32526, 3, '阜城县', '河北省，衡水市，阜城县', '116.164727', '37.869945', '0318', '053700', '131128', 'FuChengXian', 'FCX', 'F');
INSERT INTO `sys_area` VALUES (34227, 32527, 3, '卢龙县', '河北省，秦皇岛市，卢龙县', '118.881809', '39.891639', '0335', '066400', '130324', 'LuLongXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (34228, 32527, 3, '青龙满族自治县', '河北省，秦皇岛市，青龙满族自治县', '118.954555', '40.406023', '0335', '066500', '130321', 'QingLongManZuZiZhiXian', 'QLMZZZX', 'Q');
INSERT INTO `sys_area` VALUES (34229, 32527, 3, '山海关区', '河北省，秦皇岛市，山海关区', '119.753591', '39.998023', '0335', '066200', '130303', 'ShanHaiGuanQu', 'SHGQ', 'S');
INSERT INTO `sys_area` VALUES (34230, 32527, 3, '海港区', '河北省，秦皇岛市，海港区', '119.596224', '39.943458', '0335', '066000', '130302', 'HaiGangQu', 'HGQ', 'H');
INSERT INTO `sys_area` VALUES (34231, 32527, 3, '北戴河区', '河北省，秦皇岛市，北戴河区', '119.486286', '39.825121', '0335', '066100', '130304', 'BeiDaiHeQu', 'BDHQ', 'B');
INSERT INTO `sys_area` VALUES (34232, 32527, 3, '抚宁区', '河北省，秦皇岛市，抚宁区', '119.240651', '39.887053', '0335', '066300', '130306', 'FuNingQu', 'FNQ', 'F');
INSERT INTO `sys_area` VALUES (34233, 32527, 3, '昌黎县', '河北省，秦皇岛市，昌黎县', '119.164541', '39.709729', '0335', '066600', '130322', 'ChangLiXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (34339, 32528, 3, '顺平县', '河北省，保定市，顺平县', '115.132749', '38.845127', '0312', '072250', '130636', 'ShunPingXian', 'SPX', 'S');
INSERT INTO `sys_area` VALUES (34340, 32528, 3, '阜平县', '河北省，保定市，阜平县', '114.198801', '38.847276', '0312', '073200', '130624', 'FuPingXian', 'FPX', 'F');
INSERT INTO `sys_area` VALUES (34341, 32528, 3, '容城县', '河北省，保定市，容城县', '115.866247', '39.05282', '0312', '071700', '130629', 'RongChengXian', 'RCX', 'R');
INSERT INTO `sys_area` VALUES (34342, 32528, 3, '涞源县', '河北省，保定市，涞源县', '114.692567', '39.35755', '0312', '074300', '130630', 'LaiYuanXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (34343, 32528, 3, '安新县', '河北省，保定市，安新县', '115.931979', '38.929912', '0312', '071600', '130632', 'AnXinXian', 'AXX', 'A');
INSERT INTO `sys_area` VALUES (34344, 32528, 3, '望都县', '河北省，保定市，望都县', '115.154009', '38.707448', '0312', '072450', '130631', 'WangDouXian', 'WDX', 'W');
INSERT INTO `sys_area` VALUES (34345, 32528, 3, '高阳县', '河北省，保定市，高阳县', '115.778878', '38.690092', '0312', '071500', '130628', 'GaoYangXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (34346, 32528, 3, '雄县', '河北省，保定市，雄县', '116.107474', '38.990819', '0312', '071800', '130638', 'XiongXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (34347, 32528, 3, '徐水区', '河北省，保定市，徐水区', '115.64941', '39.020395', '0312', '072550', '130609', 'XuShuiQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (34348, 32528, 3, '定兴县', '河北省，保定市，定兴县', '115.796895', '39.266195', '0312', '072650', '130626', 'DingXingXian', 'DXX', 'D');
INSERT INTO `sys_area` VALUES (34349, 32528, 3, '易县', '河北省，保定市，易县', '115.501146', '39.35297', '0312', '074200', '130633', 'YiXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (34350, 32528, 3, '莲池区', '河北省，保定市，莲池区', '115.500934', '38.865005', '0312', '071000', '130606', 'LianChiQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (34351, 32528, 3, '蠡县', '河北省，保定市，蠡县', '115.583631', '38.496429', '0312', '071400', '130635', 'LiXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (34352, 32528, 3, '博野县', '河北省，保定市，博野县', '115.461798', '38.458271', '0312', '071300', '130637', 'BoYeXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (34353, 32528, 3, '竞秀区', '河北省，保定市，竞秀区', '115.470659', '38.88662', '0312', '071051', '130602', 'JingXiuQu', 'JXQ', 'J');
INSERT INTO `sys_area` VALUES (34354, 32528, 3, '唐县', '河北省，保定市，唐县', '114.981241', '38.748542', '0312', '072350', '130627', 'TangXian', 'TX', 'T');
INSERT INTO `sys_area` VALUES (34355, 32528, 3, '涞水县', '河北省，保定市，涞水县', '115.711985', '39.393148', '0312', '074100', '130623', 'LaiShuiXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (34356, 32528, 3, '涿州市', '河北省，保定市，涿州市', '115.973409', '39.485765', '0312', '072750', '130681', 'ZhuoZhouShi', 'ZZS', 'Z');
INSERT INTO `sys_area` VALUES (34357, 32528, 3, '高碑店市', '河北省，保定市，高碑店市', '115.882704', '39.327689', '0312', '074000', '130684', 'GaoBeiDianShi', 'GBDS', 'G');
INSERT INTO `sys_area` VALUES (34358, 32528, 3, '曲阳县', '河北省，保定市，曲阳县', '114.704055', '38.619992', '0312', '073100', '130634', 'QuYangXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (34359, 32528, 3, '满城区', '河北省，保定市，满城区', '115.32442', '38.95138', '0312', '072150', '130607', 'ManChengQu', 'MCQ', 'M');
INSERT INTO `sys_area` VALUES (34360, 32528, 3, '清苑区', '河北省，保定市，清苑区', '115.492221', '38.771012', '0312', '071100', '130608', 'QingYuanQu', 'QYQ', 'Q');
INSERT INTO `sys_area` VALUES (34361, 32528, 3, '安国市', '河北省，保定市，安国市', '115.33141', '38.421367', '0312', '071200', '130683', 'AnGuoShi', 'AGS', 'A');
INSERT INTO `sys_area` VALUES (34362, 32528, 3, '定州市', '河北省，保定市，定州市', '114.991389', '38.517602', '0312', '073000', '130682', 'DingZhouShi', 'DZS', 'D');
INSERT INTO `sys_area` VALUES (34706, 32529, 3, '晋州市', '河北省，石家庄市，晋州市', '115.044886', '38.027478', '0311', '052260', '130183', 'JinZhouShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (34707, 32529, 3, '元氏县', '河北省，石家庄市，元氏县', '114.52618', '37.762514', '0311', '051130', '130132', 'YuanShiXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (34708, 32529, 3, '赵县', '河北省，石家庄市，赵县', '114.775362', '37.754341', '0311', '051530', '130133', 'ZhaoXian', 'ZX', 'Z');
INSERT INTO `sys_area` VALUES (34709, 32529, 3, '灵寿县', '河北省，石家庄市，灵寿县', '114.37946', '38.306546', '0311', '050500', '130126', 'LingShouXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (34710, 32529, 3, '赞皇县', '河北省，石家庄市，赞皇县', '114.387756', '37.660199', '0311', '051230', '130129', 'ZanHuangXian', 'ZHX', 'Z');
INSERT INTO `sys_area` VALUES (34711, 32529, 3, '无极县', '河北省，石家庄市，无极县', '114.977845', '38.176376', '0311', '052460', '130130', 'WuJiXian', 'WJX', 'W');
INSERT INTO `sys_area` VALUES (34712, 32529, 3, '高邑县', '河北省，石家庄市，高邑县', '114.610699', '37.605714', '0311', '051330', '130127', 'GaoYiXian', 'GYX', 'G');
INSERT INTO `sys_area` VALUES (34713, 32529, 3, '鹿泉区', '河北省，石家庄市，鹿泉区', '114.321023', '38.093994', '0311', '050200', '130110', 'LuQuanQu', 'LQQ', 'L');
INSERT INTO `sys_area` VALUES (34714, 32529, 3, '藁城区', '河北省，石家庄市，藁城区', '114.849647', '38.033767', '0311', '052160', '130109', 'GaoChengQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (34715, 32529, 3, '平山县', '河北省，石家庄市，平山县', '114.184144', '38.259311', '0311', '050400', '130131', 'PingShanXian', 'PSX', 'P');
INSERT INTO `sys_area` VALUES (34716, 32529, 3, '行唐县', '河北省，石家庄市，行唐县', '114.552734', '38.437422', '0311', '050600', '130125', 'XingTangXian', 'XTX', 'X');
INSERT INTO `sys_area` VALUES (34717, 32529, 3, '正定县', '河北省，石家庄市，正定县', '114.569887', '38.147835', '0311', '050800', '130123', 'ZhengDingXian', 'ZDX', 'Z');
INSERT INTO `sys_area` VALUES (34718, 32529, 3, '栾城区', '河北省，石家庄市，栾城区', '114.654281', '37.886911', '0311', '051430', '130111', 'LuanChengQu', 'LCQ', 'L');
INSERT INTO `sys_area` VALUES (34719, 32529, 3, '裕华区', '河北省，石家庄市，裕华区', '114.533257', '38.027696', '0311', '050031', '130108', 'YuHuaQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (34720, 32529, 3, '井陉县', '河北省，石家庄市，井陉县', '114.144488', '38.033614', '0311', '050300', '130121', 'JingXingXian', 'JXX', 'J');
INSERT INTO `sys_area` VALUES (34721, 32529, 3, '井陉矿区', '河北省，石家庄市，井陉矿区', '114.058178', '38.069748', '0311', '050100', '130107', 'JingXingKuangQu', 'JXKQ', 'J');
INSERT INTO `sys_area` VALUES (34722, 32529, 3, '辛集市', '河北省，石家庄市，辛集市', '115.217451', '37.92904', '0311', '052360', '130181', 'XinJiShi', 'XJS', 'X');
INSERT INTO `sys_area` VALUES (34723, 32529, 3, '长安区', '河北省，石家庄市，长安区', '114.548151', '38.047501', '0311', '050011', '130102', 'ChangAnQu', 'CAQ', 'C');
INSERT INTO `sys_area` VALUES (34724, 32529, 3, '桥西区', '河北省，石家庄市，桥西区', '114.462931', '38.028383', '0311', '050091', '130104', 'QiaoXiQu', 'QXQ', 'Q');
INSERT INTO `sys_area` VALUES (34725, 32529, 3, '新华区', '河北省，石家庄市，新华区', '114.465974', '38.067142', '0311', '050051', '130105', 'XinHuaQu', 'XHQ', 'X');
INSERT INTO `sys_area` VALUES (34726, 32529, 3, '新乐市', '河北省，石家庄市，新乐市', '114.68578', '38.344768', '0311', '050700', '130184', 'XinLeShi', 'XLS', 'X');
INSERT INTO `sys_area` VALUES (34727, 32529, 3, '深泽县', '河北省，石家庄市，深泽县', '115.200207', '38.18454', '0311', '052560', '130128', 'ShenZeXian', 'SZX', 'S');
INSERT INTO `sys_area` VALUES (35007, 25, 3, '深水埗区', '香港特别行政区，深水埗区', '114.163349', '22.333775', '', '', '810006', 'ShenShuiBuQu', 'SSBQ', 'S');
INSERT INTO `sys_area` VALUES (35008, 25, 3, '西贡区', '香港特别行政区，西贡区', '114.264813', '22.314203', '', '', '810015', 'XiGongQu', 'XGQ', 'X');
INSERT INTO `sys_area` VALUES (35009, 25, 3, '元朗区', '香港特别行政区，元朗区', '114.032528', '22.44132', '', '', '810012', 'YuanLangQu', 'YLQ', 'Y');
INSERT INTO `sys_area` VALUES (35010, 25, 3, '油尖旺区', '香港特别行政区，油尖旺区', '114.173347', '22.311632', '', '', '810005', 'YouJianWangQu', 'YJWQ', 'Y');
INSERT INTO `sys_area` VALUES (35011, 25, 3, '湾仔区', '香港特别行政区，湾仔区', '114.18299', '22.276345', '', '', '810002', 'WanZiQu', 'WZQ', 'W');
INSERT INTO `sys_area` VALUES (35012, 25, 3, '屯门区', '香港特别行政区，屯门区', '113.976308', '22.393896', '', '', '810011', 'TunMenQu', 'TMQ', 'T');
INSERT INTO `sys_area` VALUES (35013, 25, 3, '黄大仙区', '香港特别行政区，黄大仙区', '114.203985', '22.336112', '', '', '810008', 'HuangDaXianQu', 'HDXQ', 'H');
INSERT INTO `sys_area` VALUES (35014, 25, 3, '东区', '香港特别行政区，东区', '114.225965', '22.279779', '', '', '810003', 'DongQu', 'DQ', 'D');
INSERT INTO `sys_area` VALUES (35015, 25, 3, '中西区', '香港特别行政区，中西区', '114.154334', '22.281931', '', '', '810001', 'ZhongXiQu', 'ZXQ', 'Z');
INSERT INTO `sys_area` VALUES (35016, 25, 3, '大埔区', '香港特别行政区，大埔区', '114.171713', '22.44573', '', '', '810014', 'DaBuQu', 'DBQ', 'D');
INSERT INTO `sys_area` VALUES (35017, 25, 3, '九龙城区', '香港特别行政区，九龙城区', '114.193047', '22.312373', '', '', '810007', 'JiuLongChengQu', 'JLCQ', 'J');
INSERT INTO `sys_area` VALUES (35018, 25, 3, '沙田区', '香港特别行政区，沙田区', '114.195126', '22.379715', '', '', '810016', 'ShaTianQu', 'STQ', 'S');
INSERT INTO `sys_area` VALUES (35019, 25, 3, '南区', '香港特别行政区，南区', '114.160023', '22.245811', '', '', '810004', 'NanQu', 'NQ', 'N');
INSERT INTO `sys_area` VALUES (35020, 25, 3, '观塘区', '香港特别行政区，观塘区', '114.214083', '22.320679', '', '', '810009', 'GuanTangQu', 'GTQ', 'G');
INSERT INTO `sys_area` VALUES (35021, 25, 3, '北区', '香港特别行政区，北区', '114.147404', '22.496143', '', '', '810013', 'BeiQu', 'BQ', 'B');
INSERT INTO `sys_area` VALUES (35022, 25, 3, '离岛区', '香港特别行政区，离岛区', '113.946059', '22.286371', '', '', '810018', 'LiDaoQu', 'LDQ', 'L');
INSERT INTO `sys_area` VALUES (35023, 25, 3, '荃湾区', '香港特别行政区，荃湾区', '114.121234', '22.368458', '', '', '810010', 'QuanWanQu', 'QWQ', 'Q');
INSERT INTO `sys_area` VALUES (35024, 25, 3, '葵青区', '香港特别行政区，葵青区', '114.13918', '22.363908', '', '', '810017', 'KuiQingQu', 'KQQ', 'K');
INSERT INTO `sys_area` VALUES (35025, 26, 2, '阳泉市', '山西省，阳泉市', '113.583285', '37.861188', '0353', '045000', '140300', 'YangQuanShi', 'YQS', 'Y');
INSERT INTO `sys_area` VALUES (35026, 26, 2, '太原市', '山西省，太原市', '112.549248', '37.857014', '0351', '030082', '140100', 'TaiYuanShi', 'TYS', 'T');
INSERT INTO `sys_area` VALUES (35027, 26, 2, '临汾市', '山西省，临汾市', '111.517973', '36.08415', '0357', '041000', '141000', 'LinFenShi', 'LFS', 'L');
INSERT INTO `sys_area` VALUES (35028, 26, 2, '大同市', '山西省，大同市', '113.295259', '40.09031', '0352', '037008', '140200', 'DaTongShi', 'DTS', 'D');
INSERT INTO `sys_area` VALUES (35029, 26, 2, '晋城市', '山西省，晋城市', '112.851274', '35.497553', '0356', '048000', '140500', 'JinChengShi', 'JCS', 'J');
INSERT INTO `sys_area` VALUES (35030, 26, 2, '忻州市', '山西省，忻州市', '112.733538', '38.41769', '0350', '034000', '140900', 'XinZhouShi', 'XZS', 'X');
INSERT INTO `sys_area` VALUES (35031, 26, 2, '长治市', '山西省，长治市', '113.113556', '36.191112', '0355', '046000', '140400', 'ChangZhiShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (35032, 26, 2, '运城市', '山西省，运城市', '111.003957', '35.022778', '0359', '044000', '140800', 'YunChengShi', 'YCS', 'Y');
INSERT INTO `sys_area` VALUES (35033, 26, 2, '朔州市', '山西省，朔州市', '112.433387', '39.331261', '0349', '038500', '140600', 'ShuoZhouShi', 'SZS', 'S');
INSERT INTO `sys_area` VALUES (35034, 26, 2, '晋中市', '山西省，晋中市', '112.736465', '37.696495', '0354', '030600', '140700', 'JinZhongShi', 'JZS', 'J');
INSERT INTO `sys_area` VALUES (35035, 26, 2, '吕梁市', '山西省，吕梁市', '111.134335', '37.524366', '0358', '033000', '141100', 'LvLiangShi', 'LLS', 'L');
INSERT INTO `sys_area` VALUES (35036, 35025, 3, '平定县', '山西省，阳泉市，平定县', '113.631049', '37.800289', '0353', '045200', '140321', 'PingDingXian', 'PDX', 'P');
INSERT INTO `sys_area` VALUES (35037, 35025, 3, '盂县', '山西省，阳泉市，盂县', '113.41223', '38.086131', '0353', '045100', '140322', 'YuXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (35038, 35025, 3, '郊区', '山西省，阳泉市，郊区', '113.58664', '37.94096', '0353', '045011', '140311', 'JiaoQu', 'JQ', 'J');
INSERT INTO `sys_area` VALUES (35039, 35025, 3, '矿区', '山西省，阳泉市，矿区', '113.559066', '37.870085', '0353', '045000', '140303', 'KuangQu', 'KQ', 'K');
INSERT INTO `sys_area` VALUES (35040, 35025, 3, '城区', '山西省，阳泉市，城区', '113.586513', '37.860938', '0353', '045000', '140302', 'ChengQu', 'CQ', 'C');
INSERT INTO `sys_area` VALUES (35084, 35026, 3, '万柏林区', '山西省，太原市，万柏林区', '112.522258', '37.862653', '0351', '030024', '140109', 'WanBoLinQu', 'WBLQ', 'W');
INSERT INTO `sys_area` VALUES (35085, 35026, 3, '尖草坪区', '山西省，太原市，尖草坪区', '112.487122', '37.939893', '0351', '030023', '140108', 'JianCaoPingQu', 'JCPQ', 'J');
INSERT INTO `sys_area` VALUES (35086, 35026, 3, '娄烦县', '山西省，太原市，娄烦县', '111.793798', '38.066035', '0351', '030300', '140123', 'LouFanXian', 'LFX', 'L');
INSERT INTO `sys_area` VALUES (35087, 35026, 3, '晋源区', '山西省，太原市，晋源区', '112.477849', '37.715619', '0351', '030025', '140110', 'JinYuanQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (35088, 35026, 3, '阳曲县', '山西省，太原市，阳曲县', '112.673818', '38.058797', '0351', '030100', '140122', 'YangQuXian', 'YQX', 'Y');
INSERT INTO `sys_area` VALUES (35089, 35026, 3, '古交市', '山西省，太原市，古交市', '112.174353', '37.908534', '0351', '030200', '140181', 'GuJiaoShi', 'GJS', 'G');
INSERT INTO `sys_area` VALUES (35090, 35026, 3, '清徐县', '山西省，太原市，清徐县', '112.357961', '37.60729', '0351', '030400', '140121', 'QingXuXian', 'QXX', 'Q');
INSERT INTO `sys_area` VALUES (35091, 35026, 3, '杏花岭区', '山西省，太原市，杏花岭区', '112.560743', '37.879291', '0351', '030009', '140107', 'XingHuaLingQu', 'XHLQ', 'X');
INSERT INTO `sys_area` VALUES (35092, 35026, 3, '小店区', '山西省，太原市，小店区', '112.564273', '37.817974', '0351', '030032', '140105', 'XiaoDianQu', 'XDQ', 'X');
INSERT INTO `sys_area` VALUES (35093, 35026, 3, '迎泽区', '山西省，太原市，迎泽区', '112.558851', '37.855804', '0351', '030002', '140106', 'YingZeQu', 'YZQ', 'Y');
INSERT INTO `sys_area` VALUES (35206, 35027, 3, '隰县', '山西省，临汾市，隰县', '110.935809', '36.692675', '0357', '041300', '141031', 'XiXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (35207, 35027, 3, '蒲县', '山西省，临汾市，蒲县', '111.09733', '36.411682', '0357', '041200', '141033', 'PuXian', 'PX', 'P');
INSERT INTO `sys_area` VALUES (35208, 35027, 3, '尧都区', '山西省，临汾市，尧都区', '111.522945', '36.080366', '0357', '041000', '141002', 'YaoDouQu', 'YDQ', 'Y');
INSERT INTO `sys_area` VALUES (35209, 35027, 3, '洪洞县', '山西省，临汾市，洪洞县', '111.673692', '36.255742', '0357', '041600', '141024', 'HongDongXian', 'HDX', 'H');
INSERT INTO `sys_area` VALUES (35210, 35027, 3, '大宁县', '山西省，临汾市，大宁县', '110.751283', '36.46383', '0357', '042300', '141030', 'DaNingXian', 'DNX', 'D');
INSERT INTO `sys_area` VALUES (35211, 35027, 3, '安泽县', '山西省，临汾市，安泽县', '112.251372', '36.146032', '0357', '042500', '141026', 'AnZeXian', 'AZX', 'A');
INSERT INTO `sys_area` VALUES (35212, 35027, 3, '汾西县', '山西省，临汾市，汾西县', '111.563021', '36.653368', '0357', '031500', '141034', 'FenXiXian', 'FXX', 'F');
INSERT INTO `sys_area` VALUES (35213, 35027, 3, '古县', '山西省，临汾市，古县', '111.920207', '36.26855', '0357', '042400', '141025', 'GuXian', 'GX', 'G');
INSERT INTO `sys_area` VALUES (35214, 35027, 3, '吉县', '山西省，临汾市，吉县', '110.682853', '36.099355', '0357', '042200', '141028', 'JiXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (35215, 35027, 3, '曲沃县', '山西省，临汾市，曲沃县', '111.475529', '35.641387', '0357', '043400', '141021', 'QuWoXian', 'QWX', 'Q');
INSERT INTO `sys_area` VALUES (35216, 35027, 3, '浮山县', '山西省，临汾市，浮山县', '111.850039', '35.971359', '0357', '042600', '141027', 'FuShanXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (35217, 35027, 3, '襄汾县', '山西省，临汾市，襄汾县', '111.442932', '35.876139', '0357', '041500', '141023', 'XiangFenXian', 'XFX', 'X');
INSERT INTO `sys_area` VALUES (35218, 35027, 3, '霍州市', '山西省，临汾市，霍州市', '111.723103', '36.57202', '0357', '031400', '141082', 'HuoZhouShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (35219, 35027, 3, '翼城县', '山西省，临汾市，翼城县', '111.713508', '35.738621', '0357', '043500', '141022', 'YiChengXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (35220, 35027, 3, '侯马市', '山西省，临汾市，侯马市', '111.371272', '35.620302', '0357', '043000', '141081', 'HouMaShi', 'HMS', 'H');
INSERT INTO `sys_area` VALUES (35221, 35027, 3, '乡宁县', '山西省，临汾市，乡宁县', '110.857365', '35.975402', '0357', '042100', '141029', 'XiangNingXian', 'XNX', 'X');
INSERT INTO `sys_area` VALUES (35222, 35027, 3, '永和县', '山西省，临汾市，永和县', '110.631276', '36.760614', '0357', '041400', '141032', 'YongHeXian', 'YHX', 'Y');
INSERT INTO `sys_area` VALUES (35395, 35028, 3, '广灵县', '山西省，大同市，广灵县', '114.279252', '39.763051', '0352', '037500', '140223', 'GuangLingXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (35396, 35028, 3, '阳高县', '山西省，大同市，阳高县', '113.749871', '40.364927', '0352', '038100', '140221', 'YangGaoXian', 'YGX', 'Y');
INSERT INTO `sys_area` VALUES (35397, 35028, 3, '新荣区', '山西省，大同市，新荣区', '113.141044', '40.258269', '0352', '037002', '140212', 'XinRongQu', 'XRQ', 'X');
INSERT INTO `sys_area` VALUES (35398, 35028, 3, '灵丘县', '山西省，大同市，灵丘县', '114.23576', '39.438867', '0352', '034400', '140224', 'LingQiuXian', 'LQX', 'L');
INSERT INTO `sys_area` VALUES (35399, 35028, 3, '天镇县', '山西省，大同市，天镇县', '114.09112', '40.421336', '0352', '038200', '140222', 'TianZhenXian', 'TZX', 'T');
INSERT INTO `sys_area` VALUES (35400, 35028, 3, '浑源县', '山西省，大同市，浑源县', '113.698091', '39.699099', '0352', '037400', '140225', 'HunYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (35401, 35028, 3, '城区', '山西省，大同市，城区', '113.301438', '40.090511', '0352', '037008', '140202', 'ChengQu', 'CQ', 'C');
INSERT INTO `sys_area` VALUES (35402, 35028, 3, '左云县', '山西省，大同市，左云县', '112.70641', '40.012873', '0352', '037100', '140226', 'ZuoYunXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (35403, 35028, 3, '南郊区', '山西省，大同市，南郊区', '113.16892', '40.01802', '0352', '037001', '140211', 'NanJiaoQu', 'NJQ', 'N');
INSERT INTO `sys_area` VALUES (35404, 35028, 3, '矿区', '山西省，大同市，矿区', '113.168656', '40.03626', '0352', '037003', '140203', 'KuangQu', 'KQ', 'K');
INSERT INTO `sys_area` VALUES (35405, 35028, 3, '大同县', '山西省，大同市，大同县', '113.611306', '40.039345', '0352', '037300', '140227', 'DaTongXian', 'DTX', 'D');
INSERT INTO `sys_area` VALUES (35537, 35029, 3, '高平市', '山西省，晋城市，高平市', '112.930691', '35.791355', '0356', '048400', '140581', 'GaoPingShi', 'GPS', 'G');
INSERT INTO `sys_area` VALUES (35538, 35029, 3, '泽州县', '山西省，晋城市，泽州县', '112.899137', '35.617221', '0356', '048012', '140525', 'ZeZhouXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (35539, 35029, 3, '城区', '山西省，晋城市，城区', '112.853106', '35.496641', '0356', '048000', '140502', 'ChengQu', 'CQ', 'C');
INSERT INTO `sys_area` VALUES (35540, 35029, 3, '陵川县', '山西省，晋城市，陵川县', '113.278877', '35.775614', '0356', '048300', '140524', 'LingChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (35541, 35029, 3, '沁水县', '山西省，晋城市，沁水县', '112.187213', '35.689472', '0356', '048200', '140521', 'QinShuiXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (35542, 35029, 3, '阳城县', '山西省，晋城市，阳城县', '112.422014', '35.482177', '0356', '048100', '140522', 'YangChengXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (35630, 35030, 3, '五寨县', '山西省，忻州市，五寨县', '111.841015', '38.912761', '0350', '036200', '140928', 'WuZhaiXian', 'WZX', 'W');
INSERT INTO `sys_area` VALUES (35631, 35030, 3, '代县', '山西省，忻州市，代县', '112.962519', '39.065138', '0350', '034200', '140923', 'DaiXian', 'DX', 'D');
INSERT INTO `sys_area` VALUES (35632, 35030, 3, '宁武县', '山西省，忻州市，宁武县', '112.307936', '39.001718', '0350', '036700', '140925', 'NingWuXian', 'NWX', 'N');
INSERT INTO `sys_area` VALUES (35633, 35030, 3, '忻府区', '山西省，忻州市，忻府区', '112.734112', '38.417743', '0350', '034000', '140902', 'XinFuQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (35634, 35030, 3, '河曲县', '山西省，忻州市，河曲县', '111.146609', '39.381895', '0350', '036500', '140930', 'HeQuXian', 'HQX', 'H');
INSERT INTO `sys_area` VALUES (35635, 35030, 3, '偏关县', '山西省，忻州市，偏关县', '111.500477', '39.442153', '0350', '036400', '140932', 'PianGuanXian', 'PGX', 'P');
INSERT INTO `sys_area` VALUES (35636, 35030, 3, '原平市', '山西省，忻州市，原平市', '112.713132', '38.729186', '0350', '034100', '140981', 'YuanPingShi', 'YPS', 'Y');
INSERT INTO `sys_area` VALUES (35637, 35030, 3, '五台县', '山西省，忻州市，五台县', '113.259012', '38.725711', '0350', '035500', '140922', 'WuTaiXian', 'WTX', 'W');
INSERT INTO `sys_area` VALUES (35638, 35030, 3, '岢岚县', '山西省，忻州市，岢岚县', '111.56981', '38.705625', '0350', '036300', '140929', 'KeLanXian', 'KLX', 'K');
INSERT INTO `sys_area` VALUES (35639, 35030, 3, '静乐县', '山西省，忻州市，静乐县', '111.940231', '38.355947', '0350', '035100', '140926', 'JingLeXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (35640, 35030, 3, '定襄县', '山西省，忻州市，定襄县', '112.963231', '38.484948', '0350', '035400', '140921', 'DingXiangXian', 'DXX', 'D');
INSERT INTO `sys_area` VALUES (35641, 35030, 3, '神池县', '山西省，忻州市，神池县', '112.200438', '39.088467', '0350', '036100', '140927', 'ShenChiXian', 'SCX', 'S');
INSERT INTO `sys_area` VALUES (35642, 35030, 3, '保德县', '山西省，忻州市，保德县', '111.085688', '39.022576', '0350', '036600', '140931', 'BaoDeXian', 'BDX', 'B');
INSERT INTO `sys_area` VALUES (35643, 35030, 3, '繁峙县', '山西省，忻州市，繁峙县', '113.267707', '39.188104', '0350', '034300', '140924', 'FanZhiXian', 'FZX', 'F');
INSERT INTO `sys_area` VALUES (35840, 35031, 3, '黎城县', '山西省，长治市，黎城县', '113.387366', '36.502971', '0355', '047600', '140426', 'LiChengXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (35841, 35031, 3, '郊区', '山西省，长治市，郊区', '113.101211', '36.218388', '0355', '046011', '140411', 'JiaoQu', 'JQ', 'J');
INSERT INTO `sys_area` VALUES (35842, 35031, 3, '城区', '山西省，长治市，城区', '113.114107', '36.187896', '0355', '046011', '140402', 'ChengQu', 'CQ', 'C');
INSERT INTO `sys_area` VALUES (35843, 35031, 3, '潞城市', '山西省，长治市，潞城市', '113.223245', '36.332233', '0355', '047500', '140481', 'LuChengShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (35844, 35031, 3, '长治县', '山西省，长治市，长治县', '113.056679', '36.052438', '0355', '047100', '140421', 'ChangZhiXian', 'CZX', 'C');
INSERT INTO `sys_area` VALUES (35845, 35031, 3, '沁县', '山西省，长治市，沁县', '112.70138', '36.757123', '0355', '046400', '140430', 'QinXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (35846, 35031, 3, '壶关县', '山西省，长治市，壶关县', '113.206138', '36.110938', '0355', '047300', '140427', 'HuGuanXian', 'HGX', 'H');
INSERT INTO `sys_area` VALUES (35847, 35031, 3, '长子县', '山西省，长治市，长子县', '112.884656', '36.119484', '0355', '046600', '140428', 'ChangZiXian', 'CZX', 'C');
INSERT INTO `sys_area` VALUES (35848, 35031, 3, '屯留县', '山西省，长治市，屯留县', '112.892741', '36.314072', '0355', '046100', '140424', 'TunLiuXian', 'TLX', 'T');
INSERT INTO `sys_area` VALUES (35849, 35031, 3, '武乡县', '山西省，长治市，武乡县', '112.8653', '36.834315', '0355', '046300', '140429', 'WuXiangXian', 'WXX', 'W');
INSERT INTO `sys_area` VALUES (35850, 35031, 3, '沁源县', '山西省，长治市，沁源县', '112.340878', '36.500777', '0355', '046500', '140431', 'QinYuanXian', 'QYX', 'Q');
INSERT INTO `sys_area` VALUES (35851, 35031, 3, '平顺县', '山西省，长治市，平顺县', '113.438791', '36.200202', '0355', '047400', '140425', 'PingShunXian', 'PSX', 'P');
INSERT INTO `sys_area` VALUES (35852, 35031, 3, '襄垣县', '山西省，长治市，襄垣县', '113.050094', '36.532854', '0355', '046200', '140423', 'XiangYuanXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (36008, 35032, 3, '夏县', '山西省，运城市，夏县', '111.223174', '35.140441', '0359', '044400', '140828', 'XiaXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (36009, 35032, 3, '临猗县', '山西省，运城市，临猗县', '110.77493', '35.141883', '0359', '044100', '140821', 'LinYiXian', 'LYX', 'L');
INSERT INTO `sys_area` VALUES (36010, 35032, 3, '盐湖区', '山西省，运城市，盐湖区', '111.000627', '35.025643', '0359', '044000', '140802', 'YanHuQu', 'YHQ', 'Y');
INSERT INTO `sys_area` VALUES (36011, 35032, 3, '闻喜县', '山西省，运城市，闻喜县', '111.220306', '35.353839', '0359', '043800', '140823', 'WenXiXian', 'WXX', 'W');
INSERT INTO `sys_area` VALUES (36012, 35032, 3, '平陆县', '山西省，运城市，平陆县', '111.212377', '34.837256', '0359', '044300', '140829', 'PingLuXian', 'PLX', 'P');
INSERT INTO `sys_area` VALUES (36013, 35032, 3, '永济市', '山西省，运城市，永济市', '110.447984', '34.865125', '0359', '044500', '140881', 'YongJiShi', 'YJS', 'Y');
INSERT INTO `sys_area` VALUES (36014, 35032, 3, '万荣县', '山西省，运城市，万荣县', '110.843561', '35.417042', '0359', '044200', '140822', 'WanRongXian', 'WRX', 'W');
INSERT INTO `sys_area` VALUES (36015, 35032, 3, '芮城县', '山西省，运城市，芮城县', '110.69114', '34.694769', '0359', '044600', '140830', 'RuiChengXian', 'RCX', 'R');
INSERT INTO `sys_area` VALUES (36016, 35032, 3, '绛县', '山西省，运城市，绛县', '111.576182', '35.49045', '0359', '043600', '140826', 'JiangXian', 'JX', 'J');
INSERT INTO `sys_area` VALUES (36017, 35032, 3, '垣曲县', '山西省，运城市，垣曲县', '111.67099', '35.298293', '0359', '043700', '140827', 'YuanQuXian', 'YQX', 'Y');
INSERT INTO `sys_area` VALUES (36018, 35032, 3, '新绛县', '山西省，运城市，新绛县', '111.225205', '35.613697', '0359', '043100', '140825', 'XinJiangXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (36019, 35032, 3, '稷山县', '山西省，运城市，稷山县', '110.978996', '35.600412', '0359', '043200', '140824', 'JiShanXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (36020, 35032, 3, '河津市', '山西省，运城市，河津市', '110.710268', '35.59715', '0359', '043300', '140882', 'HeJinShi', 'HJS', 'H');
INSERT INTO `sys_area` VALUES (36182, 35033, 3, '平鲁区', '山西省，朔州市，平鲁区', '112.295227', '39.515603', '0349', '038600', '140603', 'PingLuQu', 'PLQ', 'P');
INSERT INTO `sys_area` VALUES (36183, 35033, 3, '右玉县', '山西省，朔州市，右玉县', '112.465588', '39.988812', '0349', '037200', '140623', 'YouYuXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (36184, 35033, 3, '山阴县', '山西省，朔州市，山阴县', '112.816396', '39.52677', '0349', '036900', '140621', 'ShanYinXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (36185, 35033, 3, '朔城区', '山西省，朔州市，朔城区', '112.428676', '39.324525', '0349', '036000', '140602', 'ShuoChengQu', 'SCQ', 'S');
INSERT INTO `sys_area` VALUES (36186, 35033, 3, '怀仁县', '山西省，朔州市，怀仁县', '113.100512', '39.82079', '0349', '038300', '140624', 'HuaiRenXian', 'HRX', 'H');
INSERT INTO `sys_area` VALUES (36187, 35033, 3, '应县', '山西省，朔州市，应县', '113.187505', '39.559187', '0349', '037600', '140622', 'YingXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (36267, 35034, 3, '平遥县', '山西省，晋中市，平遥县', '112.174059', '37.195474', '0354', '031100', '140728', 'PingYaoXian', 'PYX', 'P');
INSERT INTO `sys_area` VALUES (36268, 35034, 3, '昔阳县', '山西省，晋中市，昔阳县', '113.706166', '37.60437', '0354', '045300', '140724', 'XiYangXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (36269, 35034, 3, '和顺县', '山西省，晋中市，和顺县', '113.572919', '37.327027', '0354', '032700', '140723', 'HeShunXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (36270, 35034, 3, '太谷县', '山西省，晋中市，太谷县', '112.554103', '37.424595', '0354', '030800', '140726', 'TaiGuXian', 'TGX', 'T');
INSERT INTO `sys_area` VALUES (36271, 35034, 3, '介休市', '山西省，晋中市，介休市', '111.913857', '37.027616', '0354', '032000', '140781', 'JieXiuShi', 'JXS', 'J');
INSERT INTO `sys_area` VALUES (36272, 35034, 3, '左权县', '山西省，晋中市，左权县', '113.377834', '37.079672', '0354', '032600', '140722', 'ZuoQuanXian', 'ZQX', 'Z');
INSERT INTO `sys_area` VALUES (36273, 35034, 3, '灵石县', '山西省，晋中市，灵石县', '111.772759', '36.847469', '0354', '031300', '140729', 'LingShiXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (36274, 35034, 3, '寿阳县', '山西省，晋中市，寿阳县', '113.177708', '37.891136', '0354', '045400', '140725', 'ShouYangXian', 'SYX', 'S');
INSERT INTO `sys_area` VALUES (36275, 35034, 3, '榆社县', '山西省，晋中市，榆社县', '112.973521', '37.069019', '0354', '031800', '140721', 'YuSheXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (36276, 35034, 3, '榆次区', '山西省，晋中市，榆次区', '112.740056', '37.6976', '0354', '030600', '140702', 'YuCiQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (36277, 35034, 3, '祁县', '山西省，晋中市，祁县', '112.330532', '37.358739', '0354', '030900', '140727', 'QiXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (36426, 35035, 3, '汾阳市', '山西省，吕梁市，汾阳市', '111.785273', '37.267742', '0358', '032200', '141182', 'FenYangShi', 'FYS', 'F');
INSERT INTO `sys_area` VALUES (36427, 35035, 3, '离石区', '山西省，吕梁市，离石区', '111.134462', '37.524037', '0358', '033000', '141102', 'LiShiQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (36428, 35035, 3, '中阳县', '山西省，吕梁市，中阳县', '111.193319', '37.342054', '0358', '033400', '141129', 'ZhongYangXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (36429, 35035, 3, '柳林县', '山西省，吕梁市，柳林县', '110.89613', '37.431664', '0358', '033300', '141125', 'LiuLinXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (36430, 35035, 3, '临县', '山西省，吕梁市，临县', '110.995963', '37.960806', '0358', '033200', '141124', 'LinXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (36431, 35035, 3, '方山县', '山西省，吕梁市，方山县', '111.238885', '37.892632', '0358', '033100', '141128', 'FangShanXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (36432, 35035, 3, '岚县', '山西省，吕梁市，岚县', '111.671555', '38.278654', '0358', '033500', '141127', 'LanXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (36433, 35035, 3, '交口县', '山西省，吕梁市，交口县', '111.183188', '36.983068', '0358', '032400', '141130', 'JiaoKouXian', 'JKX', 'J');
INSERT INTO `sys_area` VALUES (36434, 35035, 3, '孝义市', '山西省，吕梁市，孝义市', '111.781568', '37.144474', '0358', '032300', '141181', 'XiaoYiShi', 'XYS', 'X');
INSERT INTO `sys_area` VALUES (36435, 35035, 3, '石楼县', '山西省，吕梁市，石楼县', '110.837119', '36.999426', '0358', '032500', '141126', 'ShiLouXian', 'SLX', 'S');
INSERT INTO `sys_area` VALUES (36436, 35035, 3, '交城县', '山西省，吕梁市，交城县', '112.159154', '37.555155', '0358', '030500', '141122', 'JiaoChengXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (36437, 35035, 3, '兴县', '山西省，吕梁市，兴县', '111.124816', '38.464136', '0358', '033600', '141123', 'XingXian', 'XX', 'X');
INSERT INTO `sys_area` VALUES (36438, 35035, 3, '文水县', '山西省，吕梁市，文水县', '112.032595', '37.436314', '0358', '032100', '141121', 'WenShuiXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (36604, 28, 3, '风顺堂区', '澳门特别行政区，风顺堂区', '113.54167', '22.187778', '', '', '820005', 'FengShunTangQu', 'FSTQ', 'F');
INSERT INTO `sys_area` VALUES (36605, 28, 3, '花地玛堂区', '澳门特别行政区，花地玛堂区', '113.552965', '22.207882', '', '', '820001', 'HuaDiMaTangQu', 'HDMTQ', 'H');
INSERT INTO `sys_area` VALUES (36606, 28, 3, '圣方济各堂区', '澳门特别行政区，圣方济各堂区', '113.559954', '22.124049', '', '', '820008', 'ShengFangJiGeTangQu', 'SFJGTQ', 'S');
INSERT INTO `sys_area` VALUES (36607, 28, 3, '花王堂区', '澳门特别行政区，花王堂区', '113.549052', '22.199175', '', '', '820002', 'HuaWangTangQu', 'HWTQ', 'H');
INSERT INTO `sys_area` VALUES (36608, 28, 3, '路凼填海区', '澳门特别行政区，路凼填海区', '113.56925', '22.136546', '', '', '820007', 'LuDangTianHaiQu', 'LDTHQ', 'L');
INSERT INTO `sys_area` VALUES (36609, 28, 3, '大堂区', '澳门特别行政区，大堂区', '113.55374', '22.188119', '', '', '820004', 'DaTangQu', 'DTQ', 'D');
INSERT INTO `sys_area` VALUES (36610, 28, 3, '嘉模堂区', '澳门特别行政区，嘉模堂区', '113.558783', '22.154124', '', '', '820006', 'JiaMoTangQu', 'JMTQ', 'J');
INSERT INTO `sys_area` VALUES (36611, 28, 3, '望德堂区', '澳门特别行政区，望德堂区', '113.550252', '22.193791', '', '', '820003', 'WangDeTangQu', 'WDTQ', 'W');
INSERT INTO `sys_area` VALUES (36612, 29, 2, '兰州市', '甘肃省，兰州市', '103.823557', '36.058039', '0931', '730030', '620100', 'LanZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (36613, 29, 2, '金昌市', '甘肃省，金昌市', '102.187888', '38.514238', '0935', '737100', '620300', 'JinChangShi', 'JCS', 'J');
INSERT INTO `sys_area` VALUES (36614, 29, 2, '嘉峪关市', '甘肃省，嘉峪关市', '98.277304', '39.786529', '0937', '735100', '620200', 'JiaYuGuanShi', 'JYGS', 'J');
INSERT INTO `sys_area` VALUES (36615, 29, 2, '酒泉市', '甘肃省，酒泉市', '98.510795', '39.744023', '0937', '735000', '620900', 'JiuQuanShi', 'JQS', 'J');
INSERT INTO `sys_area` VALUES (36616, 29, 2, '平凉市', '甘肃省，平凉市', '106.684691', '35.54279', '0933', '744000', '620800', 'PingLiangShi', 'PLS', 'P');
INSERT INTO `sys_area` VALUES (36617, 29, 2, '白银市', '甘肃省，白银市', '104.173606', '36.54568', '0943', '730900', '620400', 'BaiYinShi', 'BYS', 'B');
INSERT INTO `sys_area` VALUES (36618, 29, 2, '张掖市', '甘肃省，张掖市', '100.455472', '38.932897', '0936', '734000', '620700', 'ZhangYeShi', 'ZYS', 'Z');
INSERT INTO `sys_area` VALUES (36619, 29, 2, '甘南藏族自治州', '甘肃省，甘南藏族自治州', '102.911008', '34.986354', '0941', '747000', '623000', 'GanNanCangZuZiZhiZhou', 'GNCZZZZ', 'G');
INSERT INTO `sys_area` VALUES (36620, 29, 2, '临夏回族自治州', '甘肃省，临夏回族自治州', '103.212006', '35.599446', '0930', '731100', '622900', 'LinXiaHuiZuZiZhiZhou', 'LXHZZZZ', 'L');
INSERT INTO `sys_area` VALUES (36621, 29, 2, '陇南市', '甘肃省，陇南市', '104.929379', '33.388598', '0939', '746000', '621200', 'LongNanShi', 'LNS', 'L');
INSERT INTO `sys_area` VALUES (36622, 29, 2, '天水市', '甘肃省，天水市', '105.724998', '34.578529', '0938', '741000', '620500', 'TianShuiShi', 'TSS', 'T');
INSERT INTO `sys_area` VALUES (36623, 29, 2, '武威市', '甘肃省，武威市', '102.634697', '37.929996', '0935', '733000', '620600', 'WuWeiShi', 'WWS', 'W');
INSERT INTO `sys_area` VALUES (36624, 29, 2, '定西市', '甘肃省，定西市', '104.626294', '35.579578', '0932', '743000', '621100', 'DingXiShi', 'DXS', 'D');
INSERT INTO `sys_area` VALUES (36625, 29, 2, '庆阳市', '甘肃省，庆阳市', '107.638372', '35.734218', '0934', '745000', '621000', 'QingYangShi', 'QYS', 'Q');
INSERT INTO `sys_area` VALUES (36626, 36612, 3, '皋兰县', '甘肃省，兰州市，皋兰县', '103.94933', '36.331254', '0931', '730200', '620122', 'GaoLanXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (36627, 36612, 3, '红古区', '甘肃省，兰州市，红古区', '102.861814', '36.344177', '0931', '730084', '620111', 'HongGuQu', 'HGQ', 'H');
INSERT INTO `sys_area` VALUES (36628, 36612, 3, '西固区', '甘肃省，兰州市，西固区', '103.622331', '36.100369', '0931', '730060', '620104', 'XiGuQu', 'XGQ', 'X');
INSERT INTO `sys_area` VALUES (36629, 36612, 3, '永登县', '甘肃省，兰州市，永登县', '103.262203', '36.734428', '0931', '730300', '620121', 'YongDengXian', 'YDX', 'Y');
INSERT INTO `sys_area` VALUES (36630, 36612, 3, '七里河区', '甘肃省，兰州市，七里河区', '103.784326', '36.06673', '0931', '730050', '620103', 'QiLiHeQu', 'QLHQ', 'Q');
INSERT INTO `sys_area` VALUES (36631, 36612, 3, '榆中县', '甘肃省，兰州市，榆中县', '104.114975', '35.84443', '0931', '730100', '620123', 'YuZhongXian', 'YZX', 'Y');
INSERT INTO `sys_area` VALUES (36632, 36612, 3, '城关区', '甘肃省，兰州市，城关区', '103.841032', '36.049115', '0931', '730030', '620102', 'ChengGuanQu', 'CGQ', 'C');
INSERT INTO `sys_area` VALUES (36633, 36612, 3, '安宁区', '甘肃省，兰州市，安宁区', '103.724038', '36.10329', '0931', '730070', '620105', 'AnNingQu', 'ANQ', 'A');
INSERT INTO `sys_area` VALUES (36752, 36613, 3, '金川区', '甘肃省，金昌市，金川区', '102.187683', '38.513793', '0935', '737100', '620302', 'JinChuanQu', 'JCQ', 'J');
INSERT INTO `sys_area` VALUES (36753, 36613, 3, '永昌县', '甘肃省，金昌市，永昌县', '101.971957', '38.247354', '0935', '737200', '620321', 'YongChangXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (36775, 36614, 3, '雄关区', '甘肃省，嘉峪关市，雄关区', '98.317', '39.8839', '0937', '735100', '620200', 'XiongGuanQu', 'XGQ', 'X');
INSERT INTO `sys_area` VALUES (36776, 36614, 3, '镜铁区', '甘肃省，嘉峪关市，镜铁区', '98.3342', '39.7378', '0937', '735100', '620200', 'JingTieQu', 'JTQ', 'J');
INSERT INTO `sys_area` VALUES (36777, 36614, 3, '长城区', '甘肃省，嘉峪关市，长城区', '98.255', '39.8552', '0937', '735100', '620200', 'ChangChengQu', 'CCQ', 'C');
INSERT INTO `sys_area` VALUES (36778, 36615, 3, '玉门市', '甘肃省，酒泉市，玉门市', '97.037206', '40.28682', '0937', '735200', '620981', 'YuMenShi', 'YMS', 'Y');
INSERT INTO `sys_area` VALUES (36779, 36615, 3, '敦煌市', '甘肃省，酒泉市，敦煌市', '94.664279', '40.141119', '0937', '736200', '620982', 'DunHuangShi', 'DHS', 'D');
INSERT INTO `sys_area` VALUES (36780, 36615, 3, '肃北蒙古族自治县', '甘肃省，酒泉市，肃北蒙古族自治县', '94.87728', '39.51224', '0937', '736300', '620923', 'SuBeiMengGuZuZiZhiXian', 'SBMGZZZX', 'S');
INSERT INTO `sys_area` VALUES (36781, 36615, 3, '肃州区', '甘肃省，酒泉市，肃州区', '98.511155', '39.743858', '0937', '735000', '620902', 'SuZhouQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (36782, 36615, 3, '金塔县', '甘肃省，酒泉市，金塔县', '98.902959', '39.983036', '0937', '735300', '620921', 'JinTaXian', 'JTX', 'J');
INSERT INTO `sys_area` VALUES (36783, 36615, 3, '阿克塞哈萨克族自治县', '甘肃省，酒泉市，阿克塞哈萨克族自治县', '94.337642', '39.631642', '0937', '736400', '620924', 'AKeSaiHaSaKeZuZiZhiXian', 'AKSHSKZZZX', 'A');
INSERT INTO `sys_area` VALUES (36784, 36615, 3, '瓜州县', '甘肃省，酒泉市，瓜州县', '95.780591', '40.516525', '0937', '736100', '620922', 'GuaZhouXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (36876, 36616, 3, '崆峒区', '甘肃省，平凉市，崆峒区', '106.684223', '35.54173', '0933', '744000', '620802', 'KongTongQu', 'KTQ', 'K');
INSERT INTO `sys_area` VALUES (36877, 36616, 3, '灵台县', '甘肃省，平凉市，灵台县', '107.620587', '35.064009', '0933', '744400', '620822', 'LingTaiXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (36878, 36616, 3, '庄浪县', '甘肃省，平凉市，庄浪县', '106.041979', '35.203428', '0933', '744600', '620825', 'ZhuangLangXian', 'ZLX', 'Z');
INSERT INTO `sys_area` VALUES (36879, 36616, 3, '崇信县', '甘肃省，平凉市，崇信县', '107.031253', '35.304533', '0933', '744200', '620823', 'ChongXinXian', 'CXX', 'C');
INSERT INTO `sys_area` VALUES (36880, 36616, 3, '华亭县', '甘肃省，平凉市，华亭县', '106.649308', '35.215342', '0933', '744100', '620824', 'HuaTingXian', 'HTX', 'H');
INSERT INTO `sys_area` VALUES (36881, 36616, 3, '静宁县', '甘肃省，平凉市，静宁县', '105.733489', '35.525243', '0933', '743400', '620826', 'JingNingXian', 'JNX', 'J');
INSERT INTO `sys_area` VALUES (36882, 36616, 3, '泾川县', '甘肃省，平凉市，泾川县', '107.365218', '35.335283', '0933', '744300', '620821', 'JingChuanXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (37003, 36617, 3, '靖远县', '甘肃省，白银市，靖远县', '104.686972', '36.561424', '0943', '730600', '620421', 'JingYuanXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (37004, 36617, 3, '白银区', '甘肃省，白银市，白银区', '104.17425', '36.545649', '0943', '730900', '620402', 'BaiYinQu', 'BYQ', 'B');
INSERT INTO `sys_area` VALUES (37005, 36617, 3, '平川区', '甘肃省，白银市，平川区', '104.819207', '36.72921', '0943', '730913', '620403', 'PingChuanQu', 'PCQ', 'P');
INSERT INTO `sys_area` VALUES (37006, 36617, 3, '景泰县', '甘肃省，白银市，景泰县', '104.066394', '37.193519', '0943', '730400', '620423', 'JingTaiXian', 'JTX', 'J');
INSERT INTO `sys_area` VALUES (37007, 36617, 3, '会宁县', '甘肃省，白银市，会宁县', '105.054337', '35.692486', '0943', '730700', '620422', 'HuiNingXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (37087, 36618, 3, '高台县', '甘肃省，张掖市，高台县', '99.81665', '39.376308', '0936', '734300', '620724', 'GaoTaiXian', 'GTX', 'G');
INSERT INTO `sys_area` VALUES (37088, 36618, 3, '肃南裕固族自治县', '甘肃省，张掖市，肃南裕固族自治县', '99.617086', '38.837269', '0936', '734400', '620721', 'SuNanYuGuZuZiZhiXian', 'SNYGZZZX', 'S');
INSERT INTO `sys_area` VALUES (37089, 36618, 3, '临泽县', '甘肃省，张掖市，临泽县', '100.166333', '39.152151', '0936', '734200', '620723', 'LinZeXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (37090, 36618, 3, '甘州区', '甘肃省，张掖市，甘州区', '100.454862', '38.931774', '0936', '734000', '620702', 'GanZhouQu', 'GZQ', 'G');
INSERT INTO `sys_area` VALUES (37091, 36618, 3, '山丹县', '甘肃省，张掖市，山丹县', '101.088442', '38.784839', '0936', '734100', '620725', 'ShanDanXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (37092, 36618, 3, '民乐县', '甘肃省，张掖市，民乐县', '100.816623', '38.434454', '0936', '734500', '620722', 'MinLeXian', 'MLX', 'M');
INSERT INTO `sys_area` VALUES (37174, 36619, 3, '舟曲县', '甘肃省，甘南藏族自治州，舟曲县', '104.370271', '33.782964', '0941', '746300', '623023', 'ZhouQuXian', 'ZQX', 'Z');
INSERT INTO `sys_area` VALUES (37175, 36619, 3, '夏河县', '甘肃省，甘南藏族自治州，夏河县', '102.520743', '35.200853', '0941', '747100', '623027', 'XiaHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (37176, 36619, 3, '迭部县', '甘肃省，甘南藏族自治州，迭部县', '103.221009', '34.055348', '0941', '747400', '623024', 'DieBuXian', 'DBX', 'D');
INSERT INTO `sys_area` VALUES (37177, 36619, 3, '玛曲县', '甘肃省，甘南藏族自治州，玛曲县', '102.075767', '33.998068', '0941', '747300', '623025', 'MaQuXian', 'MQX', 'M');
INSERT INTO `sys_area` VALUES (37178, 36619, 3, '碌曲县', '甘肃省，甘南藏族自治州，碌曲县', '102.488495', '34.589591', '0941', '747200', '623026', 'LuQuXian', 'LQX', 'L');
INSERT INTO `sys_area` VALUES (37179, 36619, 3, '合作市', '甘肃省，甘南藏族自治州，合作市', '102.91149', '34.985973', '0941', '747000', '623001', 'HeZuoShi', 'HZS', 'H');
INSERT INTO `sys_area` VALUES (37180, 36619, 3, '临潭县', '甘肃省，甘南藏族自治州，临潭县', '103.353054', '34.69164', '0941', '747500', '623021', 'LinTanXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (37181, 36619, 3, '卓尼县', '甘肃省，甘南藏族自治州，卓尼县', '103.508508', '34.588165', '0941', '747600', '623022', 'ZhuoNiXian', 'ZNX', 'Z');
INSERT INTO `sys_area` VALUES (37286, 36620, 3, '永靖县', '甘肃省，临夏回族自治州，永靖县', '103.319871', '35.938933', '0930', '731600', '622923', 'YongJingXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (37287, 36620, 3, '临夏县', '甘肃省，临夏回族自治州，临夏县', '102.993873', '35.49236', '0930', '731800', '622921', 'LinXiaXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (37288, 36620, 3, '东乡族自治县', '甘肃省，临夏回族自治州，东乡族自治县', '103.389568', '35.66383', '0930', '731400', '622926', 'DongXiangZuZiZhiXian', 'DXZZZX', 'D');
INSERT INTO `sys_area` VALUES (37289, 36620, 3, '广河县', '甘肃省，临夏回族自治州，广河县', '103.576188', '35.481688', '0930', '731300', '622924', 'GuangHeXian', 'GHX', 'G');
INSERT INTO `sys_area` VALUES (37290, 36620, 3, '康乐县', '甘肃省，临夏回族自治州，康乐县', '103.709852', '35.371906', '0930', '731500', '622922', 'KangLeXian', 'KLX', 'K');
INSERT INTO `sys_area` VALUES (37291, 36620, 3, '积石山保安族东乡族撒拉族自治县', '甘肃省，临夏回族自治州，积石山保安族东乡族撒拉族自治县', '102.877473', '35.712906', '0930', '731700', '622927', 'JiShiShanBaoAnZuDongXiangZuSaLaZuZiZhiXian', 'JSSBAZDXZSLZZZX', 'J');
INSERT INTO `sys_area` VALUES (37292, 36620, 3, '临夏市', '甘肃省，临夏回族自治州，临夏市', '103.211634', '35.59941', '0930', '731100', '622901', 'LinXiaShi', 'LXS', 'L');
INSERT INTO `sys_area` VALUES (37293, 36620, 3, '和政县', '甘肃省，临夏回族自治州，和政县', '103.350357', '35.425971', '0930', '731200', '622925', 'HeZhengXian', 'HZX', 'H');
INSERT INTO `sys_area` VALUES (37424, 36621, 3, '成县', '甘肃省，陇南市，成县', '105.734434', '33.739863', '0939', '742500', '621221', 'ChengXian', 'CX', 'C');
INSERT INTO `sys_area` VALUES (37425, 36621, 3, '武都区', '甘肃省，陇南市，武都区', '104.929866', '33.388155', '0939', '746000', '621202', 'WuDouQu', 'WDQ', 'W');
INSERT INTO `sys_area` VALUES (37426, 36621, 3, '礼县', '甘肃省，陇南市，礼县', '105.181616', '34.189387', '0939', '742200', '621226', 'LiXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (37427, 36621, 3, '徽县', '甘肃省，陇南市，徽县', '106.085632', '33.767785', '0939', '742300', '621227', 'HuiXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (37428, 36621, 3, '宕昌县', '甘肃省，陇南市，宕昌县', '104.394475', '34.042655', '0939', '748500', '621223', 'DangChangXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (37429, 36621, 3, '两当县', '甘肃省，陇南市，两当县', '106.306959', '33.910729', '0939', '742400', '621228', 'LiangDangXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (37430, 36621, 3, '康县', '甘肃省，陇南市，康县', '105.609534', '33.328266', '0939', '746500', '621224', 'KangXian', 'KX', 'K');
INSERT INTO `sys_area` VALUES (37431, 36621, 3, '文县', '甘肃省，陇南市，文县', '104.682448', '32.942171', '0939', '746400', '621222', 'WenXian', 'WX', 'W');
INSERT INTO `sys_area` VALUES (37432, 36621, 3, '西和县', '甘肃省，陇南市，西和县', '105.299737', '34.013718', '0939', '742100', '621225', 'XiHeXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (37628, 36622, 3, '张家川回族自治县', '甘肃省，天水市，张家川回族自治县', '106.212416', '34.993237', '0938', '741500', '620525', 'ZhangJiaChuanHuiZuZiZhiXian', 'ZJCHZZZX', 'Z');
INSERT INTO `sys_area` VALUES (37629, 36622, 3, '武山县', '甘肃省，天水市，武山县', '104.891696', '34.721955', '0938', '741300', '620524', 'WuShanXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (37630, 36622, 3, '秦安县', '甘肃省，天水市，秦安县', '105.6733', '34.862354', '0938', '741600', '620522', 'QinAnXian', 'QAX', 'Q');
INSERT INTO `sys_area` VALUES (37631, 36622, 3, '清水县', '甘肃省，天水市，清水县', '106.139878', '34.75287', '0938', '741400', '620521', 'QingShuiXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (37632, 36622, 3, '麦积区', '甘肃省，天水市，麦积区', '105.897631', '34.563504', '0938', '741020', '620503', 'MaiJiQu', 'MJQ', 'M');
INSERT INTO `sys_area` VALUES (37633, 36622, 3, '秦州区', '甘肃省，天水市，秦州区', '105.724477', '34.578645', '0938', '741000', '620502', 'QinZhouQu', 'QZQ', 'Q');
INSERT INTO `sys_area` VALUES (37634, 36622, 3, '甘谷县', '甘肃省，天水市，甘谷县', '105.332347', '34.747327', '0938', '741200', '620523', 'GanGuXian', 'GGX', 'G');
INSERT INTO `sys_area` VALUES (37765, 36623, 3, '天祝藏族自治县', '甘肃省，武威市，天祝藏族自治县', '103.142034', '36.971678', '0935', '733200', '620623', 'TianZhuCangZuZiZhiXian', 'TZCZZZX', 'T');
INSERT INTO `sys_area` VALUES (37766, 36623, 3, '古浪县', '甘肃省，武威市，古浪县', '102.898047', '37.470571', '0935', '733100', '620622', 'GuLangXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (37767, 36623, 3, '凉州区', '甘肃省，武威市，凉州区', '102.634492', '37.93025', '0935', '733000', '620602', 'LiangZhouQu', 'LZQ', 'L');
INSERT INTO `sys_area` VALUES (37768, 36623, 3, '民勤县', '甘肃省，武威市，民勤县', '103.090654', '38.624621', '0935', '733300', '620621', 'MinQinXian', 'MQX', 'M');
INSERT INTO `sys_area` VALUES (37873, 36624, 3, '临洮县', '甘肃省，定西市，临洮县', '103.862186', '35.376233', '0932', '730500', '621124', 'LinTaoXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (37874, 36624, 3, '陇西县', '甘肃省，定西市，陇西县', '104.637554', '35.003409', '0932', '748100', '621122', 'LongXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (37875, 36624, 3, '漳县', '甘肃省，定西市，漳县', '104.466756', '34.848642', '0932', '748300', '621125', 'ZhangXian', 'ZX', 'Z');
INSERT INTO `sys_area` VALUES (37876, 36624, 3, '渭源县', '甘肃省，定西市，渭源县', '104.211742', '35.133023', '0932', '748200', '621123', 'WeiYuanXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (37877, 36624, 3, '安定区', '甘肃省，定西市，安定区', '104.62577', '35.579764', '0932', '743000', '621102', 'AnDingQu', 'ADQ', 'A');
INSERT INTO `sys_area` VALUES (37878, 36624, 3, '岷县', '甘肃省，定西市，岷县', '104.039882', '34.439105', '0932', '748400', '621126', 'MinXian', 'MX', 'M');
INSERT INTO `sys_area` VALUES (37879, 36624, 3, '通渭县', '甘肃省，定西市，通渭县', '105.250102', '35.208922', '0932', '743300', '621121', 'TongWeiXian', 'TWX', 'T');
INSERT INTO `sys_area` VALUES (38001, 36625, 3, '合水县', '甘肃省，庆阳市，合水县', '108.019865', '35.819005', '0934', '745400', '621024', 'HeShuiXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (38002, 36625, 3, '庆城县', '甘肃省，庆阳市，庆城县', '107.885664', '36.013504', '0934', '745100', '621021', 'QingChengXian', 'QCX', 'Q');
INSERT INTO `sys_area` VALUES (38003, 36625, 3, '华池县', '甘肃省，庆阳市，华池县', '107.986288', '36.457304', '0934', '745600', '621023', 'HuaChiXian', 'HCX', 'H');
INSERT INTO `sys_area` VALUES (38004, 36625, 3, '正宁县', '甘肃省，庆阳市，正宁县', '108.361068', '35.490642', '0934', '745300', '621025', 'ZhengNingXian', 'ZNX', 'Z');
INSERT INTO `sys_area` VALUES (38005, 36625, 3, '镇原县', '甘肃省，庆阳市，镇原县', '107.195706', '35.677806', '0934', '744500', '621027', 'ZhenYuanXian', 'ZYX', 'Z');
INSERT INTO `sys_area` VALUES (38006, 36625, 3, '宁县', '甘肃省，庆阳市，宁县', '107.921182', '35.50201', '0934', '745200', '621026', 'NingXian', 'NX', 'N');
INSERT INTO `sys_area` VALUES (38007, 36625, 3, '环县', '甘肃省，庆阳市，环县', '107.308754', '36.569322', '0934', '745700', '621022', 'HuanXian', 'HX', 'H');
INSERT INTO `sys_area` VALUES (38008, 36625, 3, '西峰区', '甘肃省，庆阳市，西峰区', '107.638824', '35.733713', '0934', '745000', '621002', 'XiFengQu', 'XFQ', 'X');
INSERT INTO `sys_area` VALUES (38129, 30, 2, '广元市', '四川省，广元市', '105.829757', '32.433668', '0839', '628000', '510800', 'GuangYuanShi', 'GYS', 'G');
INSERT INTO `sys_area` VALUES (38130, 30, 2, '南充市', '四川省，南充市', '106.082974', '30.795281', '0817', '637000', '511300', 'NanChongShi', 'NCS', 'N');
INSERT INTO `sys_area` VALUES (38131, 30, 2, '达州市', '四川省，达州市', '107.502262', '31.209484', '0818', '635000', '511700', 'DaZhouShi', 'DZS', 'D');
INSERT INTO `sys_area` VALUES (38132, 30, 2, '眉山市', '四川省，眉山市', '103.831788', '30.048318', '028', '620020', '511400', 'MeiShanShi', 'MSS', 'M');
INSERT INTO `sys_area` VALUES (38133, 30, 2, '德阳市', '四川省，德阳市', '104.398651', '31.127991', '0838', '618000', '510600', 'DeYangShi', 'DYS', 'D');
INSERT INTO `sys_area` VALUES (38134, 30, 2, '遂宁市', '四川省，遂宁市', '105.571331', '30.513311', '0825', '629000', '510900', 'SuiNingShi', 'SNS', 'S');
INSERT INTO `sys_area` VALUES (38135, 30, 2, '巴中市', '四川省，巴中市', '106.753669', '31.858809', '0827', '636000', '511900', 'BaZhongShi', 'BZS', 'B');
INSERT INTO `sys_area` VALUES (38136, 30, 2, '广安市', '四川省，广安市', '106.633369', '30.456398', '0826', '638000', '511600', 'GuangAnShi', 'GAS', 'G');
INSERT INTO `sys_area` VALUES (38137, 30, 2, '资阳市', '四川省，资阳市', '104.641917', '30.122211', '028', '641300', '512000', 'ZiYangShi', 'ZYS', 'Z');
INSERT INTO `sys_area` VALUES (38138, 30, 2, '成都市', '四川省，成都市', '104.065735', '30.659462', '028', '610015', '510100', 'ChengDuShi', 'CDS', 'C');
INSERT INTO `sys_area` VALUES (38139, 30, 2, '绵阳市', '四川省，绵阳市', '104.741722', '31.46402', '0816', '621000', '510700', 'MianYangShi', 'MYS', 'M');
INSERT INTO `sys_area` VALUES (38140, 30, 2, '内江市', '四川省，内江市', '105.066138', '29.58708', '0832', '641000', '511000', 'NeiJiangShi', 'NJS', 'N');
INSERT INTO `sys_area` VALUES (38141, 30, 2, '宜宾市', '四川省，宜宾市', '104.630825', '28.760189', '0831', '644000', '511500', 'YiBinShi', 'YBS', 'Y');
INSERT INTO `sys_area` VALUES (38142, 30, 2, '自贡市', '四川省，自贡市', '104.773447', '29.352765', '0813', '643000', '510300', 'ZiGongShi', 'ZGS', 'Z');
INSERT INTO `sys_area` VALUES (38143, 30, 2, '雅安市', '四川省，雅安市', '103.001033', '29.987722', '0835', '625000', '511800', 'YaAnShi', 'YAS', 'Y');
INSERT INTO `sys_area` VALUES (38144, 30, 2, '攀枝花市', '四川省，攀枝花市', '101.716007', '26.580446', '0812', '617000', '510400', 'PanZhiHuaShi', 'PZHS', 'P');
INSERT INTO `sys_area` VALUES (38145, 30, 2, '乐山市', '四川省，乐山市', '103.761263', '29.582024', '0833', '614000', '511100', 'LeShanShi', 'LSS', 'L');
INSERT INTO `sys_area` VALUES (38146, 30, 2, '甘孜藏族自治州', '四川省，甘孜藏族自治州', '101.963815', '30.050663', '0836', '626000', '513300', 'GanZiCangZuZiZhiZhou', 'GZCZZZZ', 'G');
INSERT INTO `sys_area` VALUES (38147, 30, 2, '泸州市', '四川省，泸州市', '105.443348', '28.889138', '0830', '646000', '510500', 'LuZhouShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (38148, 30, 2, '阿坝藏族羌族自治州', '四川省，阿坝藏族羌族自治州', '102.221374', '31.899792', '0837', '624000', '513200', 'ABaCangZuQiangZuZiZhiZhou', 'ABCZQZZZZ', 'A');
INSERT INTO `sys_area` VALUES (38149, 30, 2, '凉山彝族自治州', '四川省，凉山彝族自治州', '102.258746', '27.886762', '0834', '615000', '513400', 'LiangShanYiZuZiZhiZhou', 'LSYZZZZ', 'L');
INSERT INTO `sys_area` VALUES (38150, 38129, 3, '朝天区', '四川省，广元市，朝天区', '105.88917', '32.642632', '0839', '628017', '510812', 'ChaoTianQu', 'CTQ', 'C');
INSERT INTO `sys_area` VALUES (38151, 38129, 3, '昭化区', '四川省，广元市，昭化区', '105.964121', '32.322788', '0839', '628017', '510811', 'ZhaoHuaQu', 'ZHQ', 'Z');
INSERT INTO `sys_area` VALUES (38152, 38129, 3, '剑阁县', '四川省，广元市，剑阁县', '105.527035', '32.286517', '0839', '628300', '510823', 'JianGeXian', 'JGX', 'J');
INSERT INTO `sys_area` VALUES (38153, 38129, 3, '苍溪县', '四川省，广元市，苍溪县', '105.939706', '31.732251', '0839', '628400', '510824', 'CangXiXian', 'CXX', 'C');
INSERT INTO `sys_area` VALUES (38154, 38129, 3, '旺苍县', '四川省，广元市，旺苍县', '106.290426', '32.22833', '0839', '628200', '510821', 'WangCangXian', 'WCX', 'W');
INSERT INTO `sys_area` VALUES (38155, 38129, 3, '青川县', '四川省，广元市，青川县', '105.238847', '32.585655', '0839', '628100', '510822', 'QingChuanXian', 'QCX', 'Q');
INSERT INTO `sys_area` VALUES (38156, 38129, 3, '利州区', '四川省，广元市，利州区', '105.826194', '32.432276', '0839', '628017', '510802', 'LiZhouQu', 'LZQ', 'L');
INSERT INTO `sys_area` VALUES (38405, 38130, 3, '顺庆区', '四川省，南充市，顺庆区', '106.084091', '30.795572', '0817', '637000', '511302', 'ShunQingQu', 'SQQ', 'S');
INSERT INTO `sys_area` VALUES (38406, 38130, 3, '嘉陵区', '四川省，南充市，嘉陵区', '106.067027', '30.762976', '0817', '637100', '511304', 'JiaLingQu', 'JLQ', 'J');
INSERT INTO `sys_area` VALUES (38407, 38130, 3, '南部县', '四川省，南充市，南部县', '106.061138', '31.349407', '0817', '637300', '511321', 'NanBuXian', 'NBX', 'N');
INSERT INTO `sys_area` VALUES (38408, 38130, 3, '蓬安县', '四川省，南充市，蓬安县', '106.413488', '31.027978', '0817', '637800', '511323', 'PengAnXian', 'PAX', 'P');
INSERT INTO `sys_area` VALUES (38409, 38130, 3, '营山县', '四川省，南充市，营山县', '106.564893', '31.075907', '0817', '637700', '511322', 'YingShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (38410, 38130, 3, '西充县', '四川省，南充市，西充县', '105.893021', '30.994616', '0817', '637200', '511325', 'XiChongXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (38411, 38130, 3, '仪陇县', '四川省，南充市，仪陇县', '106.297083', '31.271261', '0817', '637600', '511324', 'YiLongXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (38412, 38130, 3, '阆中市', '四川省，南充市，阆中市', '105.975266', '31.580466', '0817', '637400', '511381', 'LangZhongShi', 'LZS', 'L');
INSERT INTO `sys_area` VALUES (38413, 38130, 3, '高坪区', '四川省，南充市，高坪区', '106.108996', '30.781809', '0817', '637100', '511303', 'GaoPingQu', 'GPQ', 'G');
INSERT INTO `sys_area` VALUES (38837, 38131, 3, '宣汉县', '四川省，达州市，宣汉县', '107.722254', '31.355025', '0818', '636150', '511722', 'XuanHanXian', 'XHX', 'X');
INSERT INTO `sys_area` VALUES (38838, 38131, 3, '大竹县', '四川省，达州市，大竹县', '107.20742', '30.736289', '0818', '635100', '511724', 'DaZhuXian', 'DZX', 'D');
INSERT INTO `sys_area` VALUES (38839, 38131, 3, '达川区', '四川省，达州市，达川区', '107.507926', '31.199062', '0818', '635000', '511703', 'DaChuanQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (38840, 38131, 3, '通川区', '四川省，达州市，通川区', '107.501062', '31.213522', '0818', '635000', '511702', 'TongChuanQu', 'TCQ', 'T');
INSERT INTO `sys_area` VALUES (38841, 38131, 3, '渠县', '四川省，达州市，渠县', '106.970746', '30.836348', '0818', '635200', '511725', 'QuXian', 'QX', 'Q');
INSERT INTO `sys_area` VALUES (38842, 38131, 3, '万源市', '四川省，达州市，万源市', '108.037548', '32.06777', '0818', '636350', '511781', 'WanYuanShi', 'WYS', 'W');
INSERT INTO `sys_area` VALUES (38843, 38131, 3, '开江县', '四川省，达州市，开江县', '107.864135', '31.085537', '0818', '636250', '511723', 'KaiJiangXian', 'KJX', 'K');
INSERT INTO `sys_area` VALUES (39158, 38132, 3, '丹棱县', '四川省，眉山市，丹棱县', '103.518333', '30.012751', '028', '620200', '511424', 'DanLengXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (39159, 38132, 3, '仁寿县', '四川省，眉山市，仁寿县', '104.147646', '29.996721', '028', '620500', '511421', 'RenShouXian', 'RSX', 'R');
INSERT INTO `sys_area` VALUES (39160, 38132, 3, '洪雅县', '四川省，眉山市，洪雅县', '103.375006', '29.904867', '028', '620360', '511423', 'HongYaXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (39161, 38132, 3, '青神县', '四川省，眉山市，青神县', '103.846131', '29.831469', '028', '620460', '511425', 'QingShenXian', 'QSX', 'Q');
INSERT INTO `sys_area` VALUES (39162, 38132, 3, '东坡区', '四川省，眉山市，东坡区', '103.831553', '30.048128', '028', '620010', '511402', 'DongPoQu', 'DPQ', 'D');
INSERT INTO `sys_area` VALUES (39163, 38132, 3, '彭山区', '四川省，眉山市，彭山区', '103.8701', '30.192298', '028', '620860', '511403', 'PengShanQu', 'PSQ', 'P');
INSERT INTO `sys_area` VALUES (39295, 38133, 3, '旌阳区', '四川省，德阳市，旌阳区', '104.389648', '31.130428', '0838', '618000', '510603', 'JingYangQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (39296, 38133, 3, '中江县', '四川省，德阳市，中江县', '104.677831', '31.03681', '0838', '618100', '510623', 'ZhongJiangXian', 'ZJX', 'Z');
INSERT INTO `sys_area` VALUES (39297, 38133, 3, '什邡市', '四川省，德阳市，什邡市', '104.173653', '31.126881', '0838', '618400', '510682', 'ShenFangShi', 'SFS', 'S');
INSERT INTO `sys_area` VALUES (39298, 38133, 3, '广汉市', '四川省，德阳市，广汉市', '104.281903', '30.97715', '0838', '618300', '510681', 'GuangHanShi', 'GHS', 'G');
INSERT INTO `sys_area` VALUES (39299, 38133, 3, '罗江区', '四川省，德阳市，罗江区', '104.507126', '31.303281', '0838', '618500', '510626', 'LuoJiangQu', 'LJQ', 'L');
INSERT INTO `sys_area` VALUES (39300, 38133, 3, '绵竹市', '四川省，德阳市，绵竹市', '104.200162', '31.343084', '0838', '618200', '510683', 'MianZhuShi', 'MZS', 'M');
INSERT INTO `sys_area` VALUES (39429, 38134, 3, '船山区', '四川省，遂宁市，船山区', '105.582215', '30.502647', '0825', '629000', '510903', 'ChuanShanQu', 'CSQ', 'C');
INSERT INTO `sys_area` VALUES (39430, 38134, 3, '大英县', '四川省，遂宁市，大英县', '105.252187', '30.581571', '0825', '629300', '510923', 'DaYingXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (39431, 38134, 3, '蓬溪县', '四川省，遂宁市，蓬溪县', '105.713699', '30.774883', '0825', '629100', '510921', 'PengXiXian', 'PXX', 'P');
INSERT INTO `sys_area` VALUES (39432, 38134, 3, '射洪县', '四川省，遂宁市，射洪县', '105.381849', '30.868752', '0825', '629200', '510922', 'SheHongXian', 'SHX', 'S');
INSERT INTO `sys_area` VALUES (39433, 38134, 3, '安居区', '四川省，遂宁市，安居区', '105.459383', '30.346121', '0825', '629000', '510904', 'AnJuQu', 'AJQ', 'A');
INSERT INTO `sys_area` VALUES (39563, 38135, 3, '南江县', '四川省，巴中市，南江县', '106.843418', '32.353164', '0827', '636600', '511922', 'NanJiangXian', 'NJX', 'N');
INSERT INTO `sys_area` VALUES (39564, 38135, 3, '通江县', '四川省，巴中市，通江县', '107.247621', '31.91212', '0827', '636700', '511921', 'TongJiangXian', 'TJX', 'T');
INSERT INTO `sys_area` VALUES (39565, 38135, 3, '平昌县', '四川省，巴中市，平昌县', '107.101937', '31.562814', '0827', '636400', '511923', 'PingChangXian', 'PCX', 'P');
INSERT INTO `sys_area` VALUES (39566, 38135, 3, '巴州区', '四川省，巴中市，巴州区', '106.753671', '31.858366', '0827', '636001', '511902', 'BaZhouQu', 'BZQ', 'B');
INSERT INTO `sys_area` VALUES (39567, 38135, 3, '恩阳区', '四川省，巴中市，恩阳区', '106.486515', '31.816336', '0827', '636064', '511903', 'EnYangQu', 'EYQ', 'E');
INSERT INTO `sys_area` VALUES (39763, 38136, 3, '邻水县', '四川省，广安市，邻水县', '106.934968', '30.334323', '0826', '638500', '511623', 'LinShuiXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (39764, 38136, 3, '武胜县', '四川省，广安市，武胜县', '106.292473', '30.344291', '0826', '638400', '511622', 'WuShengXian', 'WSX', 'W');
INSERT INTO `sys_area` VALUES (39765, 38136, 3, '广安区', '四川省，广安市，广安区', '106.632907', '30.456462', '0826', '638000', '511602', 'GuangAnQu', 'GAQ', 'G');
INSERT INTO `sys_area` VALUES (39766, 38136, 3, '岳池县', '四川省，广安市，岳池县', '106.444451', '30.533538', '0826', '638300', '511621', 'YueChiXian', 'YCX', 'Y');
INSERT INTO `sys_area` VALUES (39767, 38136, 3, '前锋区', '四川省，广安市，前锋区', '106.893277', '30.4963', '0826', '638019', '511603', 'QianFengQu', 'QFQ', 'Q');
INSERT INTO `sys_area` VALUES (39768, 38136, 3, '华蓥市', '四川省，广安市，华蓥市', '106.777882', '30.380574', '0826', '638600', '511681', 'HuaYingShi', 'HYS', 'H');
INSERT INTO `sys_area` VALUES (39950, 38137, 3, '雁江区', '四川省，资阳市，雁江区', '104.642338', '30.121686', '028', '641300', '512002', 'YanJiangQu', 'YJQ', 'Y');
INSERT INTO `sys_area` VALUES (39951, 38137, 3, '乐至县', '四川省，资阳市，乐至县', '105.031142', '30.275619', '028', '641500', '512022', 'LeZhiXian', 'LZX', 'L');
INSERT INTO `sys_area` VALUES (39952, 38137, 3, '安岳县', '四川省，资阳市，安岳县', '105.336764', '30.099206', '028', '642350', '512021', 'AnYueXian', 'AYX', 'A');
INSERT INTO `sys_area` VALUES (40074, 38138, 3, '彭州市', '四川省，成都市，彭州市', '103.941173', '30.985161', '028', '611930', '510182', 'PengZhouShi', 'PZS', 'P');
INSERT INTO `sys_area` VALUES (40075, 38138, 3, '都江堰市', '四川省，成都市，都江堰市', '103.627898', '30.99114', '028', '611830', '510181', 'DouJiangYanShi', 'DJYS', 'D');
INSERT INTO `sys_area` VALUES (40076, 38138, 3, '新都区', '四川省，成都市，新都区', '104.16022', '30.824223', '028', '610500', '510114', 'XinDouQu', 'XDQ', 'X');
INSERT INTO `sys_area` VALUES (40077, 38138, 3, '青白江区', '四川省，成都市，青白江区', '104.25494', '30.883438', '028', '610300', '510113', 'QingBaiJiangQu', 'QBJQ', 'Q');
INSERT INTO `sys_area` VALUES (40078, 38138, 3, '简阳市', '四川省，成都市，简阳市', '104.550339', '30.390666', '028', '641400', '510185', 'JianYangShi', 'JYS', 'J');
INSERT INTO `sys_area` VALUES (40079, 38138, 3, '蒲江县', '四川省，成都市，蒲江县', '103.511541', '30.194359', '028', '611630', '510131', 'PuJiangXian', 'PJX', 'P');
INSERT INTO `sys_area` VALUES (40080, 38138, 3, '崇州市', '四川省，成都市，崇州市', '103.671049', '30.631478', '028', '611230', '510184', 'ChongZhouShi', 'CZS', 'C');
INSERT INTO `sys_area` VALUES (40081, 38138, 3, '大邑县', '四川省，成都市，大邑县', '103.522397', '30.586602', '028', '611330', '510129', 'DaYiXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (40082, 38138, 3, '成华区', '四川省，成都市，成华区', '104.103077', '30.660275', '028', '610066', '510108', 'ChengHuaQu', 'CHQ', 'C');
INSERT INTO `sys_area` VALUES (40083, 38138, 3, '金堂县', '四川省，成都市，金堂县', '104.415604', '30.858417', '028', '610400', '510121', 'JinTangXian', 'JTX', 'J');
INSERT INTO `sys_area` VALUES (40084, 38138, 3, '邛崃市', '四川省，成都市，邛崃市', '103.46143', '30.413271', '028', '611530', '510183', 'QiongLaiShi', 'QLS', 'Q');
INSERT INTO `sys_area` VALUES (40085, 38138, 3, '新津县', '四川省，成都市，新津县', '103.812449', '30.414284', '028', '611430', '510132', 'XinJinXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (40086, 38138, 3, '龙泉驿区', '四川省，成都市，龙泉驿区', '104.269181', '30.56065', '028', '610100', '510112', 'LongQuanYiQu', 'LQYQ', 'L');
INSERT INTO `sys_area` VALUES (40087, 38138, 3, '锦江区', '四川省，成都市，锦江区', '104.080989', '30.657689', '028', '610021', '510104', 'JinJiangQu', 'JJQ', 'J');
INSERT INTO `sys_area` VALUES (40088, 38138, 3, '青羊区', '四川省，成都市，青羊区', '104.055731', '30.667648', '028', '610031', '510105', 'QingYangQu', 'QYQ', 'Q');
INSERT INTO `sys_area` VALUES (40089, 38138, 3, '温江区', '四川省，成都市，温江区', '103.836776', '30.697996', '028', '611130', '510115', 'WenJiangQu', 'WJQ', 'W');
INSERT INTO `sys_area` VALUES (40090, 38138, 3, '金牛区', '四川省，成都市，金牛区', '104.043487', '30.692058', '028', '610036', '510106', 'JinNiuQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (40091, 38138, 3, '郫都区', '四川省，成都市，郫都区', '103.887842', '30.808752', '028', '611730', '510117', 'PiDouQu', 'PDQ', 'P');
INSERT INTO `sys_area` VALUES (40092, 38138, 3, '武侯区', '四川省，成都市，武侯区', '104.05167', '30.630862', '028', '610041', '510107', 'WuHouQu', 'WHQ', 'W');
INSERT INTO `sys_area` VALUES (40093, 38138, 3, '双流区', '四川省，成都市，双流区', '103.922706', '30.573243', '028', '610200', '510116', 'ShuangLiuQu', 'SLQ', 'S');
INSERT INTO `sys_area` VALUES (40464, 38139, 3, '三台县', '四川省，绵阳市，三台县', '105.090316', '31.090909', '0816', '621100', '510722', 'SanTaiXian', 'STX', 'S');
INSERT INTO `sys_area` VALUES (40465, 38139, 3, '梓潼县', '四川省，绵阳市，梓潼县', '105.16353', '31.635225', '0816', '622150', '510725', 'ZiTongXian', 'ZTX', 'Z');
INSERT INTO `sys_area` VALUES (40466, 38139, 3, '江油市', '四川省，绵阳市，江油市', '104.744431', '31.776386', '0816', '621700', '510781', 'JiangYouShi', 'JYS', 'J');
INSERT INTO `sys_area` VALUES (40467, 38139, 3, '游仙区', '四川省，绵阳市，游仙区', '104.770006', '31.484772', '0816', '621022', '510704', 'YouXianQu', 'YXQ', 'Y');
INSERT INTO `sys_area` VALUES (40468, 38139, 3, '安州区', '四川省，绵阳市，安州区', '104.560341', '31.53894', '0816', '622650', '510705', 'AnZhouQu', 'AZQ', 'A');
INSERT INTO `sys_area` VALUES (40469, 38139, 3, '北川羌族自治县', '四川省，绵阳市，北川羌族自治县', '104.468069', '31.615863', '0816', '622750', '510726', 'BeiChuanQiangZuZiZhiXian', 'BCQZZZX', 'B');
INSERT INTO `sys_area` VALUES (40470, 38139, 3, '盐亭县', '四川省，绵阳市，盐亭县', '105.391991', '31.22318', '0816', '621600', '510723', 'YanTingXian', 'YTX', 'Y');
INSERT INTO `sys_area` VALUES (40471, 38139, 3, '涪城区', '四川省，绵阳市，涪城区', '104.740971', '31.463557', '0816', '621000', '510703', 'FuChengQu', 'FCQ', 'F');
INSERT INTO `sys_area` VALUES (40472, 38139, 3, '平武县', '四川省，绵阳市，平武县', '104.530555', '32.407588', '0816', '622550', '510727', 'PingWuXian', 'PWX', 'P');
INSERT INTO `sys_area` VALUES (40768, 38140, 3, '资中县', '四川省，内江市，资中县', '104.852463', '29.775295', '0832', '641200', '511025', 'ZiZhongXian', 'ZZX', 'Z');
INSERT INTO `sys_area` VALUES (40769, 38140, 3, '威远县', '四川省，内江市，威远县', '104.668327', '29.52686', '0832', '642450', '511024', 'WeiYuanXian', 'WYX', 'W');
INSERT INTO `sys_area` VALUES (40770, 38140, 3, '东兴区', '四川省，内江市，东兴区', '105.067203', '29.600107', '0832', '641100', '511011', 'DongXingQu', 'DXQ', 'D');
INSERT INTO `sys_area` VALUES (40771, 38140, 3, '隆昌市', '四川省，内江市，隆昌市', '105.288074', '29.338162', '0832', '642150', '511083', 'LongChangShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (40772, 38140, 3, '市中区', '四川省，内江市，市中区', '105.065467', '29.585265', '0832', '641000', '511002', 'ShiZhongQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (40895, 38141, 3, '长宁县', '四川省，宜宾市，长宁县', '104.921116', '28.577271', '0831', '644300', '511524', 'ChangNingXian', 'CNX', 'C');
INSERT INTO `sys_area` VALUES (40896, 38141, 3, '珙县', '四川省，宜宾市，珙县', '104.712268', '28.449041', '0831', '644500', '511526', 'GongXian', 'GX', 'G');
INSERT INTO `sys_area` VALUES (40897, 38141, 3, '翠屏区', '四川省，宜宾市，翠屏区', '104.630231', '28.760179', '0831', '644000', '511502', 'CuiPingQu', 'CPQ', 'C');
INSERT INTO `sys_area` VALUES (40898, 38141, 3, '江安县', '四川省，宜宾市，江安县', '105.068697', '28.728102', '0831', '644200', '511523', 'JiangAnXian', 'JAX', 'J');
INSERT INTO `sys_area` VALUES (40899, 38141, 3, '南溪区', '四川省，宜宾市，南溪区', '104.981133', '28.839806', '0831', '644100', '511503', 'NanXiQu', 'NXQ', 'N');
INSERT INTO `sys_area` VALUES (40900, 38141, 3, '高县', '四川省，宜宾市，高县', '104.519187', '28.435676', '0831', '645150', '511525', 'GaoXian', 'GX', 'G');
INSERT INTO `sys_area` VALUES (40901, 38141, 3, '筠连县', '四川省，宜宾市，筠连县', '104.507848', '28.162017', '0831', '645250', '511527', 'YunLianXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (40902, 38141, 3, '兴文县', '四川省，宜宾市，兴文县', '105.236549', '28.302988', '0831', '644400', '511528', 'XingWenXian', 'XWX', 'X');
INSERT INTO `sys_area` VALUES (40903, 38141, 3, '屏山县', '四川省，宜宾市，屏山县', '104.162617', '28.64237', '0831', '645350', '511529', 'PingShanXian', 'PSX', 'P');
INSERT INTO `sys_area` VALUES (40904, 38141, 3, '宜宾县', '四川省，宜宾市，宜宾县', '104.541489', '28.695678', '0831', '644600', '511521', 'YiBinXian', 'YBX', 'Y');
INSERT INTO `sys_area` VALUES (41090, 38142, 3, '荣县', '四川省，自贡市，荣县', '104.423932', '29.454851', '0813', '643100', '510321', 'RongXian', 'RX', 'R');
INSERT INTO `sys_area` VALUES (41091, 38142, 3, '贡井区', '四川省，自贡市，贡井区', '104.714372', '29.345675', '0813', '643020', '510303', 'GongJingQu', 'GJQ', 'G');
INSERT INTO `sys_area` VALUES (41092, 38142, 3, '沿滩区', '四川省，自贡市，沿滩区', '104.876417', '29.272521', '0813', '643030', '510311', 'YanTanQu', 'YTQ', 'Y');
INSERT INTO `sys_area` VALUES (41093, 38142, 3, '富顺县', '四川省，自贡市，富顺县', '104.984256', '29.181282', '0813', '643200', '510322', 'FuShunXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (41094, 38142, 3, '大安区', '四川省，自贡市，大安区', '104.783229', '29.367136', '0813', '643010', '510304', 'DaAnQu', 'DAQ', 'D');
INSERT INTO `sys_area` VALUES (41095, 38142, 3, '自流井区', '四川省，自贡市，自流井区', '104.778188', '29.343231', '0813', '643000', '510302', 'ZiLiuJingQu', 'ZLJQ', 'Z');
INSERT INTO `sys_area` VALUES (41204, 38143, 3, '宝兴县', '四川省，雅安市，宝兴县', '102.813377', '30.369026', '0835', '625700', '511827', 'BaoXingXian', 'BXX', 'B');
INSERT INTO `sys_area` VALUES (41205, 38143, 3, '雨城区', '四川省，雅安市，雨城区', '103.003398', '29.981831', '0835', '625000', '511802', 'YuChengQu', 'YCQ', 'Y');
INSERT INTO `sys_area` VALUES (41206, 38143, 3, '石棉县', '四川省，雅安市，石棉县', '102.35962', '29.234063', '0835', '625400', '511824', 'ShiMianXian', 'SMX', 'S');
INSERT INTO `sys_area` VALUES (41207, 38143, 3, '汉源县', '四川省，雅安市，汉源县', '102.677145', '29.349915', '0835', '625300', '511823', 'HanYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (41208, 38143, 3, '芦山县', '四川省，雅安市，芦山县', '102.924016', '30.152907', '0835', '625600', '511826', 'LuShanXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (41209, 38143, 3, '天全县', '四川省，雅安市，天全县', '102.763462', '30.059955', '0835', '625500', '511825', 'TianQuanXian', 'TQX', 'T');
INSERT INTO `sys_area` VALUES (41210, 38143, 3, '荥经县', '四川省，雅安市，荥经县', '102.844674', '29.795529', '0835', '625200', '511822', 'XingJingXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (41211, 38143, 3, '名山区', '四川省，雅安市，名山区', '103.112214', '30.084718', '0835', '625100', '511803', 'MingShanQu', 'MSQ', 'M');
INSERT INTO `sys_area` VALUES (41355, 38144, 3, '米易县', '四川省，攀枝花市，米易县', '102.109877', '26.887474', '0812', '617200', '510421', 'MiYiXian', 'MYX', 'M');
INSERT INTO `sys_area` VALUES (41356, 38144, 3, '西区', '四川省，攀枝花市，西区', '101.637969', '26.596776', '0812', '617068', '510403', 'XiQu', 'XQ', 'X');
INSERT INTO `sys_area` VALUES (41357, 38144, 3, '东区', '四川省，攀枝花市，东区', '101.715134', '26.580887', '0812', '617067', '510402', 'DongQu', 'DQ', 'D');
INSERT INTO `sys_area` VALUES (41358, 38144, 3, '仁和区', '四川省，攀枝花市，仁和区', '101.737916', '26.497185', '0812', '617061', '510411', 'RenHeQu', 'RHQ', 'R');
INSERT INTO `sys_area` VALUES (41359, 38144, 3, '盐边县', '四川省，攀枝花市，盐边县', '101.851848', '26.677619', '0812', '617100', '510422', 'YanBianXian', 'YBX', 'Y');
INSERT INTO `sys_area` VALUES (41420, 38145, 3, '五通桥区', '四川省，乐山市，五通桥区', '103.816837', '29.406186', '0833', '614800', '511112', 'WuTongQiaoQu', 'WTQQ', 'W');
INSERT INTO `sys_area` VALUES (41421, 38145, 3, '沙湾区', '四川省，乐山市，沙湾区', '103.549961', '29.416536', '0833', '614900', '511111', 'ShaWanQu', 'SWQ', 'S');
INSERT INTO `sys_area` VALUES (41422, 38145, 3, '井研县', '四川省，乐山市，井研县', '104.06885', '29.651645', '0833', '613100', '511124', 'JingYanXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (41423, 38145, 3, '金口河区', '四川省，乐山市，金口河区', '103.077831', '29.24602', '0833', '614700', '511113', 'JinKouHeQu', 'JKHQ', 'J');
INSERT INTO `sys_area` VALUES (41424, 38145, 3, '峨边彝族自治县', '四川省，乐山市，峨边彝族自治县', '103.262148', '29.230271', '0833', '614300', '511132', 'EBianYiZuZiZhiXian', 'EBYZZZX', 'E');
INSERT INTO `sys_area` VALUES (41425, 38145, 3, '犍为县', '四川省，乐山市，犍为县', '103.944266', '29.209782', '0833', '614400', '511123', 'JianWeiXian', 'JWX', 'J');
INSERT INTO `sys_area` VALUES (41426, 38145, 3, '夹江县', '四川省，乐山市，夹江县', '103.578862', '29.741019', '0833', '614100', '511126', 'JiaJiangXian', 'JJX', 'J');
INSERT INTO `sys_area` VALUES (41427, 38145, 3, '沐川县', '四川省，乐山市，沐川县', '103.90211', '28.956338', '0833', '614500', '511129', 'MuChuanXian', 'MCX', 'M');
INSERT INTO `sys_area` VALUES (41428, 38145, 3, '马边彝族自治县', '四川省，乐山市，马边彝族自治县', '103.546851', '28.838933', '0833', '614600', '511133', 'MaBianYiZuZiZhiXian', 'MBYZZZX', 'M');
INSERT INTO `sys_area` VALUES (41429, 38145, 3, '市中区', '四川省，乐山市，市中区', '103.75539', '29.588327', '0833', '614000', '511102', 'ShiZhongQu', 'SZQ', 'S');
INSERT INTO `sys_area` VALUES (41430, 38145, 3, '峨眉山市', '四川省，乐山市，峨眉山市', '103.492488', '29.597478', '0833', '614200', '511181', 'EMeiShanShi', 'EMSS', 'E');
INSERT INTO `sys_area` VALUES (41650, 38146, 3, '甘孜县', '四川省，甘孜藏族自治州，甘孜县', '99.991753', '31.61975', '0836', '626700', '513328', 'GanZiXian', 'GZX', 'G');
INSERT INTO `sys_area` VALUES (41651, 38146, 3, '德格县', '四川省，甘孜藏族自治州，德格县', '98.57999', '31.806729', '0836', '627250', '513330', 'DeGeXian', 'DGX', 'D');
INSERT INTO `sys_area` VALUES (41652, 38146, 3, '石渠县', '四川省，甘孜藏族自治州，石渠县', '98.100887', '32.975302', '0836', '627350', '513332', 'ShiQuXian', 'SQX', 'S');
INSERT INTO `sys_area` VALUES (41653, 38146, 3, '炉霍县', '四川省，甘孜藏族自治州，炉霍县', '100.679495', '31.392674', '0836', '626500', '513327', 'LuHuoXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (41654, 38146, 3, '道孚县', '四川省，甘孜藏族自治州，道孚县', '101.123327', '30.978767', '0836', '626400', '513326', 'DaoFuXian', 'DFX', 'D');
INSERT INTO `sys_area` VALUES (41655, 38146, 3, '新龙县', '四川省，甘孜藏族自治州，新龙县', '100.312094', '30.93896', '0836', '626800', '513329', 'XinLongXian', 'XLX', 'X');
INSERT INTO `sys_area` VALUES (41656, 38146, 3, '白玉县', '四川省，甘孜藏族自治州，白玉县', '98.824343', '31.208805', '0836', '627150', '513331', 'BaiYuXian', 'BYX', 'B');
INSERT INTO `sys_area` VALUES (41657, 38146, 3, '雅江县', '四川省，甘孜藏族自治州，雅江县', '101.015735', '30.03225', '0836', '627450', '513325', 'YaJiangXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (41658, 38146, 3, '理塘县', '四川省，甘孜藏族自治州，理塘县', '100.269862', '29.991807', '0836', '627550', '513334', 'LiTangXian', 'LTX', 'L');
INSERT INTO `sys_area` VALUES (41659, 38146, 3, '九龙县', '四川省，甘孜藏族自治州，九龙县', '101.506942', '29.001975', '0836', '626200', '513324', 'JiuLongXian', 'JLX', 'J');
INSERT INTO `sys_area` VALUES (41660, 38146, 3, '巴塘县', '四川省，甘孜藏族自治州，巴塘县', '99.109037', '30.005723', '0836', '627650', '513335', 'BaTangXian', 'BTX', 'B');
INSERT INTO `sys_area` VALUES (41661, 38146, 3, '康定市', '四川省，甘孜藏族自治州，康定市', '101.964057', '30.050738', '0836', '626000', '513301', 'KangDingShi', 'KDS', 'K');
INSERT INTO `sys_area` VALUES (41662, 38146, 3, '泸定县', '四川省，甘孜藏族自治州，泸定县', '102.233225', '29.912482', '0836', '626100', '513322', 'LuDingXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (41663, 38146, 3, '乡城县', '四川省，甘孜藏族自治州，乡城县', '99.799943', '28.930855', '0836', '627850', '513336', 'XiangChengXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (41664, 38146, 3, '稻城县', '四川省，甘孜藏族自治州，稻城县', '100.296689', '29.037544', '0836', '627750', '513337', 'DaoChengXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (41665, 38146, 3, '得荣县', '四川省，甘孜藏族自治州，得荣县', '99.288036', '28.71134', '0836', '627950', '513338', 'DeRongXian', 'DRX', 'D');
INSERT INTO `sys_area` VALUES (41666, 38146, 3, '丹巴县', '四川省，甘孜藏族自治州，丹巴县', '101.886125', '30.877083', '0836', '626300', '513323', 'DanBaXian', 'DBX', 'D');
INSERT INTO `sys_area` VALUES (41667, 38146, 3, '色达县', '四川省，甘孜藏族自治州，色达县', '100.331657', '32.268777', '0836', '626600', '513333', 'SeDaXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (41992, 38147, 3, '龙马潭区', '四川省，泸州市，龙马潭区', '105.435228', '28.897572', '0830', '646000', '510504', 'LongMaTanQu', 'LMTQ', 'L');
INSERT INTO `sys_area` VALUES (41993, 38147, 3, '叙永县', '四川省，泸州市，叙永县', '105.437775', '28.167919', '0830', '646400', '510524', 'XuYongXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (41994, 38147, 3, '泸县', '四川省，泸州市，泸县', '105.376335', '29.151288', '0830', '646106', '510521', 'LuXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (41995, 38147, 3, '纳溪区', '四川省，泸州市，纳溪区', '105.37721', '28.77631', '0830', '646300', '510503', 'NaXiQu', 'NXQ', 'N');
INSERT INTO `sys_area` VALUES (41996, 38147, 3, '古蔺县', '四川省，泸州市，古蔺县', '105.813359', '28.03948', '0830', '646500', '510525', 'GuLinXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (41997, 38147, 3, '江阳区', '四川省，泸州市，江阳区', '105.445131', '28.882889', '0830', '646000', '510502', 'JiangYangQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (41998, 38147, 3, '合江县', '四川省，泸州市，合江县', '105.834098', '28.810325', '0830', '646200', '510522', 'HeJiangXian', 'HJX', 'H');
INSERT INTO `sys_area` VALUES (42149, 38148, 3, '阿坝县', '四川省，阿坝藏族羌族自治州，阿坝县', '101.700985', '32.904223', '0837', '624600', '513231', 'ABaXian', 'ABX', 'A');
INSERT INTO `sys_area` VALUES (42150, 38148, 3, '九寨沟县', '四川省，阿坝藏族羌族自治州，九寨沟县', '104.236344', '33.262097', '0837', '623400', '513225', 'JiuZhaiGouShi', 'JZGS', 'J');
INSERT INTO `sys_area` VALUES (42151, 38148, 3, '红原县', '四川省，阿坝藏族羌族自治州，红原县', '102.544906', '32.793902', '0837', '624400', '513233', 'HongYuanXian', 'HYX', 'H');
INSERT INTO `sys_area` VALUES (42152, 38148, 3, '若尔盖县', '四川省，阿坝藏族羌族自治州，若尔盖县', '102.963726', '33.575934', '0837', '624500', '513232', 'RuoErGaiXian', 'REGX', 'R');
INSERT INTO `sys_area` VALUES (42153, 38148, 3, '黑水县', '四川省，阿坝藏族羌族自治州，黑水县', '102.990805', '32.061721', '0837', '623500', '513228', 'HeiShuiXian', 'HSX', 'H');
INSERT INTO `sys_area` VALUES (42154, 38148, 3, '理县', '四川省，阿坝藏族羌族自治州，理县', '103.165486', '31.436764', '0837', '623100', '513222', 'LiXian', 'LX', 'L');
INSERT INTO `sys_area` VALUES (42155, 38148, 3, '马尔康市', '四川省，阿坝藏族羌族自治州，马尔康市', '102.221187', '31.899761', '0837', '624000', '513201', 'MaErKangShi', 'MEKS', 'M');
INSERT INTO `sys_area` VALUES (42156, 38148, 3, '汶川县', '四川省，阿坝藏族羌族自治州，汶川县', '103.580675', '31.47463', '0837', '623000', '513221', 'WenChuanXian', 'WCX', 'W');
INSERT INTO `sys_area` VALUES (42157, 38148, 3, '金川县', '四川省，阿坝藏族羌族自治州，金川县', '102.064647', '31.476356', '0837', '624100', '513226', 'JinChuanXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (42158, 38148, 3, '茂县', '四川省，阿坝藏族羌族自治州，茂县', '103.850684', '31.680407', '0837', '623200', '513223', 'MaoXian', 'MX', 'M');
INSERT INTO `sys_area` VALUES (42159, 38148, 3, '松潘县', '四川省，阿坝藏族羌族自治州，松潘县', '103.599177', '32.63838', '0837', '623300', '513224', 'SongPanXian', 'SPX', 'S');
INSERT INTO `sys_area` VALUES (42160, 38148, 3, '壤塘县', '四川省，阿坝藏族羌族自治州，壤塘县', '100.979136', '32.264887', '0837', '624300', '513230', 'RangTangXian', 'RTX', 'R');
INSERT INTO `sys_area` VALUES (42161, 38148, 3, '小金县', '四川省，阿坝藏族羌族自治州，小金县', '102.363193', '30.999016', '0837', '624200', '513227', 'XiaoJinXian', 'XJX', 'X');
INSERT INTO `sys_area` VALUES (42388, 38149, 3, '木里藏族自治县', '四川省，凉山彝族自治州，木里藏族自治县', '101.280184', '27.926859', '0834', '615800', '513422', 'MuLiCangZuZiZhiXian', 'MLCZZZX', 'M');
INSERT INTO `sys_area` VALUES (42389, 38149, 3, '喜德县', '四川省，凉山彝族自治州，喜德县', '102.412342', '28.305486', '0834', '616750', '513432', 'XiDeXian', 'XDX', 'X');
INSERT INTO `sys_area` VALUES (42390, 38149, 3, '西昌市', '四川省，凉山彝族自治州，西昌市', '102.258758', '27.885786', '0834', '615000', '513401', 'XiChangShi', 'XCS', 'X');
INSERT INTO `sys_area` VALUES (42391, 38149, 3, '会理县', '四川省，凉山彝族自治州，会理县', '102.249548', '26.658702', '0834', '615100', '513425', 'HuiLiXian', 'HLX', 'H');
INSERT INTO `sys_area` VALUES (42392, 38149, 3, '布拖县', '四川省，凉山彝族自治州，布拖县', '102.808801', '27.709062', '0834', '616350', '513429', 'BuTuoXian', 'BTX', 'B');
INSERT INTO `sys_area` VALUES (42393, 38149, 3, '甘洛县', '四川省，凉山彝族自治州，甘洛县', '102.775924', '28.977094', '0834', '616850', '513435', 'GanLuoXian', 'GLX', 'G');
INSERT INTO `sys_area` VALUES (42394, 38149, 3, '美姑县', '四川省，凉山彝族自治州，美姑县', '103.132007', '28.327946', '0834', '616450', '513436', 'MeiGuXian', 'MGX', 'M');
INSERT INTO `sys_area` VALUES (42395, 38149, 3, '昭觉县', '四川省，凉山彝族自治州，昭觉县', '102.843991', '28.010554', '0834', '616150', '513431', 'ZhaoJueXian', 'ZJX', 'Z');
INSERT INTO `sys_area` VALUES (42396, 38149, 3, '金阳县', '四川省，凉山彝族自治州，金阳县', '103.248704', '27.695916', '0834', '616250', '513430', 'JinYangXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (42397, 38149, 3, '盐源县', '四川省，凉山彝族自治州，盐源县', '101.508909', '27.423415', '0834', '615700', '513423', 'YanYuanXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (42398, 38149, 3, '冕宁县', '四川省，凉山彝族自治州，冕宁县', '102.170046', '28.550844', '0834', '615600', '513433', 'MianNingXian', 'MNX', 'M');
INSERT INTO `sys_area` VALUES (42399, 38149, 3, '越西县', '四川省，凉山彝族自治州，越西县', '102.508875', '28.639632', '0834', '616650', '513434', 'YueXiXian', 'YXX', 'Y');
INSERT INTO `sys_area` VALUES (42400, 38149, 3, '会东县', '四川省，凉山彝族自治州，会东县', '102.578985', '26.630713', '0834', '615200', '513426', 'HuiDongXian', 'HDX', 'H');
INSERT INTO `sys_area` VALUES (42401, 38149, 3, '普格县', '四川省，凉山彝族自治州，普格县', '102.541082', '27.376828', '0834', '615300', '513428', 'PuGeXian', 'PGX', 'P');
INSERT INTO `sys_area` VALUES (42402, 38149, 3, '雷波县', '四川省，凉山彝族自治州，雷波县', '103.571584', '28.262946', '0834', '616550', '513437', 'LeiBoXian', 'LBX', 'L');
INSERT INTO `sys_area` VALUES (42403, 38149, 3, '宁南县', '四川省，凉山彝族自治州，宁南县', '102.757374', '27.065205', '0834', '615400', '513427', 'NingNanXian', 'NNX', 'N');
INSERT INTO `sys_area` VALUES (42404, 38149, 3, '德昌县', '四川省，凉山彝族自治州，德昌县', '102.178845', '27.403827', '0834', '615500', '513424', 'DeChangXian', 'DCX', 'D');
INSERT INTO `sys_area` VALUES (42980, 31, 2, '昭通市', '云南省，昭通市', '103.717216', '27.336999', '0870', '657000', '530600', 'ZhaoTongShi', 'ZTS', 'Z');
INSERT INTO `sys_area` VALUES (42981, 31, 2, '曲靖市', '云南省，曲靖市', '103.797851', '25.501557', '0874', '655000', '530300', 'QuJingShi', 'QJS', 'Q');
INSERT INTO `sys_area` VALUES (42982, 31, 2, '红河哈尼族彝族自治州', '云南省，红河哈尼族彝族自治州', '103.384182', '23.366775', '0873', '661400', '532500', 'HongHeHaNiZuYiZuZiZhiZhou', 'HHHNZYZZZZ', 'H');
INSERT INTO `sys_area` VALUES (42983, 31, 2, '丽江市', '云南省，丽江市', '100.233026', '26.872108', '0888', '674100', '530700', 'LiJiangShi', 'LJS', 'L');
INSERT INTO `sys_area` VALUES (42984, 31, 2, '西双版纳傣族自治州', '云南省，西双版纳傣族自治州', '100.797941', '22.001724', '0691', '666100', '532800', 'XiShuangBanNaDaiZuZiZhiZhou', 'XSBNDZZZZ', 'X');
INSERT INTO `sys_area` VALUES (42985, 31, 2, '保山市', '云南省，保山市', '99.167133', '25.111802', '0875', '678000', '530500', 'BaoShanShi', 'BSS', 'B');
INSERT INTO `sys_area` VALUES (42986, 31, 2, '文山壮族苗族自治州', '云南省，文山壮族苗族自治州', '104.24401', '23.36951', '0876', '663000', '532600', 'WenShanZhuangZuMiaoZuZiZhiZhou', 'WSZZMZZZZ', 'W');
INSERT INTO `sys_area` VALUES (42987, 31, 2, '大理白族自治州', '云南省，大理白族自治州', '100.225668', '25.589449', '0872', '671000', '532900', 'DaLiBaiZuZiZhiZhou', 'DLBZZZZ', 'D');
INSERT INTO `sys_area` VALUES (42988, 31, 2, '怒江傈僳族自治州', '云南省，怒江傈僳族自治州', '98.854304', '25.850949', '0886', '673100', '533300', 'NuJiangLiSuZuZiZhiZhou', 'NJLSZZZZ', 'N');
INSERT INTO `sys_area` VALUES (42989, 31, 2, '迪庆藏族自治州', '云南省，迪庆藏族自治州', '99.706463', '27.826853', '0887', '674400', '533400', 'DiQingCangZuZiZhiZhou', 'DQCZZZZ', 'D');
INSERT INTO `sys_area` VALUES (42990, 31, 2, '玉溪市', '云南省，玉溪市', '102.543907', '24.350461', '0877', '653100', '530400', 'YuXiShi', 'YXS', 'Y');
INSERT INTO `sys_area` VALUES (42991, 31, 2, '普洱市', '云南省，普洱市', '100.972344', '22.777321', '0879', '665000', '530800', 'PuErShi', 'PES', 'P');
INSERT INTO `sys_area` VALUES (42992, 31, 2, '昆明市', '云南省，昆明市', '102.712251', '25.040609', '0871', '650500', '530100', 'KunMingShi', 'KMS', 'K');
INSERT INTO `sys_area` VALUES (42993, 31, 2, '楚雄彝族自治州', '云南省，楚雄彝族自治州', '101.546046', '25.041988', '0878', '675000', '532300', 'ChuXiongYiZuZiZhiZhou', 'CXYZZZZ', 'C');
INSERT INTO `sys_area` VALUES (42994, 31, 2, '德宏傣族景颇族自治州', '云南省，德宏傣族景颇族自治州', '98.578363', '24.436694', '0692', '678400', '533100', 'DeHongDaiZuJingPoZuZiZhiZhou', 'DHDZJPZZZZ', 'D');
INSERT INTO `sys_area` VALUES (42995, 31, 2, '临沧市', '云南省，临沧市', '100.08697', '23.886567', '0883', '677000', '530900', 'LinCangShi', 'LCS', 'L');
INSERT INTO `sys_area` VALUES (42996, 42980, 3, '大关县', '云南省，昭通市，大关县', '103.891608', '27.747114', '0870', '657400', '530624', 'DaGuanXian', 'DGX', 'D');
INSERT INTO `sys_area` VALUES (42997, 42980, 3, '水富县', '云南省，昭通市，水富县', '104.415376', '28.629688', '0870', '657800', '530630', 'ShuiFuXian', 'SFX', 'S');
INSERT INTO `sys_area` VALUES (42998, 42980, 3, '绥江县', '云南省，昭通市，绥江县', '103.961095', '28.599953', '0870', '657700', '530626', 'SuiJiangXian', 'SJX', 'S');
INSERT INTO `sys_area` VALUES (42999, 42980, 3, '永善县', '云南省，昭通市，永善县', '103.63732', '28.231526', '0870', '657300', '530625', 'YongShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (43000, 42980, 3, '威信县', '云南省，昭通市，威信县', '105.04869', '27.843381', '0870', '657900', '530629', 'WeiXinXian', 'WXX', 'W');
INSERT INTO `sys_area` VALUES (43001, 42980, 3, '巧家县', '云南省，昭通市，巧家县', '102.929284', '26.9117', '0870', '654600', '530622', 'QiaoJiaXian', 'QJX', 'Q');
INSERT INTO `sys_area` VALUES (43002, 42980, 3, '昭阳区', '云南省，昭通市，昭阳区', '103.717267', '27.336636', '0870', '657000', '530602', 'ZhaoYangQu', 'ZYQ', 'Z');
INSERT INTO `sys_area` VALUES (43003, 42980, 3, '镇雄县', '云南省，昭通市，镇雄县', '104.873055', '27.436267', '0870', '657200', '530627', 'ZhenXiongXian', 'ZXX', 'Z');
INSERT INTO `sys_area` VALUES (43004, 42980, 3, '鲁甸县', '云南省，昭通市，鲁甸县', '103.549333', '27.191637', '0870', '657100', '530621', 'LuDianXian', 'LDX', 'L');
INSERT INTO `sys_area` VALUES (43005, 42980, 3, '彝良县', '云南省，昭通市，彝良县', '104.048492', '27.627425', '0870', '657600', '530628', 'YiLiangXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (43006, 42980, 3, '盐津县', '云南省，昭通市，盐津县', '104.23506', '28.106923', '0870', '657500', '530623', 'YanJinXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (43151, 42981, 3, '会泽县', '云南省，曲靖市，会泽县', '103.300041', '26.412861', '0874', '654200', '530326', 'HuiZeXian', 'HZX', 'H');
INSERT INTO `sys_area` VALUES (43152, 42981, 3, '沾益区', '云南省，曲靖市，沾益区', '103.819262', '25.600878', '0874', '655331', '530303', 'ZhanYiQu', 'ZYQ', 'Z');
INSERT INTO `sys_area` VALUES (43153, 42981, 3, '麒麟区', '云南省，曲靖市，麒麟区', '103.798054', '25.501269', '0874', '655000', '530302', 'QiLinQu', 'QLQ', 'Q');
INSERT INTO `sys_area` VALUES (43154, 42981, 3, '马龙县', '云南省，曲靖市，马龙县', '103.578755', '25.429451', '0874', '655100', '530321', 'MaLongXian', 'MLX', 'M');
INSERT INTO `sys_area` VALUES (43155, 42981, 3, '罗平县', '云南省，曲靖市，罗平县', '104.309263', '24.885708', '0874', '655800', '530324', 'LuoPingXian', 'LPX', 'L');
INSERT INTO `sys_area` VALUES (43156, 42981, 3, '陆良县', '云南省，曲靖市，陆良县', '103.655233', '25.022878', '0874', '655600', '530322', 'LuLiangXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (43157, 42981, 3, '师宗县', '云南省，曲靖市，师宗县', '103.993808', '24.825681', '0874', '655700', '530323', 'ShiZongXian', 'SZX', 'S');
INSERT INTO `sys_area` VALUES (43158, 42981, 3, '富源县', '云南省，曲靖市，富源县', '104.25692', '25.67064', '0874', '655500', '530325', 'FuYuanXian', 'FYX', 'F');
INSERT INTO `sys_area` VALUES (43159, 42981, 3, '宣威市', '云南省，曲靖市，宣威市', '104.09554', '26.227777', '0874', '655400', '530381', 'XuanWeiShi', 'XWS', 'X');
INSERT INTO `sys_area` VALUES (43284, 42982, 3, '弥勒市', '云南省，红河哈尼族彝族自治州，弥勒市', '103.436988', '24.40837', '0873', '652300', '532504', 'MiLeShi', 'MLS', 'M');
INSERT INTO `sys_area` VALUES (43285, 42982, 3, '泸西县', '云南省，红河哈尼族彝族自治州，泸西县', '103.759622', '24.532368', '0873', '652400', '532527', 'LuXiXian', 'LXX', 'L');
INSERT INTO `sys_area` VALUES (43286, 42982, 3, '建水县', '云南省，红河哈尼族彝族自治州，建水县', '102.820493', '23.618387', '0873', '654300', '532524', 'JianShuiXian', 'JSX', 'J');
INSERT INTO `sys_area` VALUES (43287, 42982, 3, '开远市', '云南省，红河哈尼族彝族自治州，开远市', '103.258679', '23.713832', '0873', '661600', '532502', 'KaiYuanShi', 'KYS', 'K');
INSERT INTO `sys_area` VALUES (43288, 42982, 3, '石屏县', '云南省，红河哈尼族彝族自治州，石屏县', '102.484469', '23.712569', '0873', '662200', '532525', 'ShiPingXian', 'SPX', 'S');
INSERT INTO `sys_area` VALUES (43289, 42982, 3, '个旧市', '云南省，红河哈尼族彝族自治州，个旧市', '103.154752', '23.360383', '0873', '661000', '532501', 'GeJiuShi', 'GJS', 'G');
INSERT INTO `sys_area` VALUES (43290, 42982, 3, '屏边苗族自治县', '云南省，红河哈尼族彝族自治州，屏边苗族自治县', '103.687229', '22.987013', '0873', '661200', '532523', 'PingBianMiaoZuZiZhiXian', 'PBMZZZX', 'P');
INSERT INTO `sys_area` VALUES (43291, 42982, 3, '红河县', '云南省，红河哈尼族彝族自治州，红河县', '102.42121', '23.369191', '0873', '654400', '532529', 'HongHeXian', 'HHX', 'H');
INSERT INTO `sys_area` VALUES (43292, 42982, 3, '元阳县', '云南省，红河哈尼族彝族自治州，元阳县', '102.837056', '23.219773', '0873', '662400', '532528', 'YuanYangXian', 'YYX', 'Y');
INSERT INTO `sys_area` VALUES (43293, 42982, 3, '蒙自市', '云南省，红河哈尼族彝族自治州，蒙自市', '103.385005', '23.366843', '0873', '661101', '532503', 'MengZiShi', 'MZS', 'M');
INSERT INTO `sys_area` VALUES (43294, 42982, 3, '河口瑶族自治县', '云南省，红河哈尼族彝族自治州，河口瑶族自治县', '103.961593', '22.507563', '0873', '661300', '532532', 'HeKouYaoZuZiZhiXian', 'HKYZZZX', 'H');
INSERT INTO `sys_area` VALUES (43295, 42982, 3, '绿春县', '云南省，红河哈尼族彝族自治州，绿春县', '102.39286', '22.99352', '0873', '662500', '532531', 'LvChunXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (43296, 42982, 3, '金平苗族瑶族傣族自治县', '云南省，红河哈尼族彝族自治州，金平苗族瑶族傣族自治县', '103.228359', '22.779982', '0873', '661500', '532530', 'JinPingMiaoZuYaoZuDaiZuZiZhiXian', 'JPMZYZDZZZX', 'J');
INSERT INTO `sys_area` VALUES (43430, 42983, 3, '玉龙纳西族自治县', '云南省，丽江市，玉龙纳西族自治县', '100.238312', '26.830593', '0888', '674100', '530721', 'YuLongNaXiZuZiZhiXian', 'YLNXZZZX', 'Y');
INSERT INTO `sys_area` VALUES (43431, 42983, 3, '宁蒗彝族自治县', '云南省，丽江市，宁蒗彝族自治县', '100.852427', '27.281109', '0888', '674300', '530724', 'NingLangYiZuZiZhiXian', 'NLYZZZX', 'N');
INSERT INTO `sys_area` VALUES (43432, 42983, 3, '华坪县', '云南省，丽江市，华坪县', '101.267796', '26.628834', '0888', '674800', '530723', 'HuaPingXian', 'HPX', 'H');
INSERT INTO `sys_area` VALUES (43433, 42983, 3, '古城区', '云南省，丽江市，古城区', '100.234412', '26.872229', '0888', '674100', '530702', 'GuChengQu', 'GCQ', 'G');
INSERT INTO `sys_area` VALUES (43434, 42983, 3, '永胜县', '云南省，丽江市，永胜县', '100.750901', '26.685623', '0888', '674200', '530722', 'YongShengXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (43498, 42984, 3, '景洪市', '云南省，西双版纳傣族自治州，景洪市', '100.797947', '22.002087', '0691', '666100', '532801', 'JingHongShi', 'JHS', 'J');
INSERT INTO `sys_area` VALUES (43499, 42984, 3, '勐腊县', '云南省，西双版纳傣族自治州，勐腊县', '101.567051', '21.479449', '0691', '666300', '532823', 'MengLaXian', 'MLX', 'M');
INSERT INTO `sys_area` VALUES (43500, 42984, 3, '勐海县', '云南省，西双版纳傣族自治州，勐海县', '100.448288', '21.955866', '0691', '666200', '532822', 'MengHaiXian', 'MHX', 'M');
INSERT INTO `sys_area` VALUES (43546, 42985, 3, '隆阳区', '云南省，保山市，隆阳区', '99.165825', '25.112144', '0875', '678000', '530502', 'LongYangQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (43547, 42985, 3, '腾冲市', '云南省，保山市，腾冲市', '98.497292', '25.01757', '0875', '679100', '530581', 'TengChongShi', 'TCS', 'T');
INSERT INTO `sys_area` VALUES (43548, 42985, 3, '昌宁县', '云南省，保山市，昌宁县', '99.612344', '24.823662', '0875', '678100', '530524', 'ChangNingXian', 'CNX', 'C');
INSERT INTO `sys_area` VALUES (43549, 42985, 3, '施甸县', '云南省，保山市，施甸县', '99.183758', '24.730847', '0875', '678200', '530521', 'ShiDianXian', 'SDX', 'S');
INSERT INTO `sys_area` VALUES (43550, 42985, 3, '龙陵县', '云南省，保山市，龙陵县', '98.693567', '24.591912', '0875', '678300', '530523', 'LongLingXian', 'LLX', 'L');
INSERT INTO `sys_area` VALUES (43626, 42986, 3, '丘北县', '云南省，文山壮族苗族自治州，丘北县', '104.194366', '24.040982', '0876', '663200', '532626', 'QiuBeiXian', 'QBX', 'Q');
INSERT INTO `sys_area` VALUES (43627, 42986, 3, '广南县', '云南省，文山壮族苗族自治州，广南县', '105.056684', '24.050272', '0876', '663300', '532627', 'GuangNanXian', 'GNX', 'G');
INSERT INTO `sys_area` VALUES (43628, 42986, 3, '文山市', '云南省，文山壮族苗族自治州，文山市', '104.244277', '23.369216', '0876', '663000', '532601', 'WenShanShi', 'WSS', 'W');
INSERT INTO `sys_area` VALUES (43629, 42986, 3, '砚山县', '云南省，文山壮族苗族自治州，砚山县', '104.343989', '23.612301', '0876', '663100', '532622', 'YanShanXian', 'YSX', 'Y');
INSERT INTO `sys_area` VALUES (43630, 42986, 3, '西畴县', '云南省，文山壮族苗族自治州，西畴县', '104.675711', '23.437439', '0876', '663500', '532623', 'XiChouXian', 'XCX', 'X');
INSERT INTO `sys_area` VALUES (43631, 42986, 3, '马关县', '云南省，文山壮族苗族自治州，马关县', '104.398619', '23.011723', '0876', '663700', '532625', 'MaGuanXian', 'MGX', 'M');
INSERT INTO `sys_area` VALUES (43632, 42986, 3, '麻栗坡县', '云南省，文山壮族苗族自治州，麻栗坡县', '104.701899', '23.124202', '0876', '663600', '532624', 'MaLiPoXian', 'MLPX', 'M');
INSERT INTO `sys_area` VALUES (43633, 42986, 3, '富宁县', '云南省，文山壮族苗族自治州，富宁县', '105.62856', '23.626494', '0876', '663400', '532628', 'FuNingXian', 'FNX', 'F');
INSERT INTO `sys_area` VALUES (43741, 42987, 3, '剑川县', '云南省，大理白族自治州，剑川县', '99.905887', '26.530066', '0872', '671300', '532931', 'JianChuanXian', 'JCX', 'J');
INSERT INTO `sys_area` VALUES (43742, 42987, 3, '鹤庆县', '云南省，大理白族自治州，鹤庆县', '100.173375', '26.55839', '0872', '671500', '532932', 'HeQingXian', 'HQX', 'H');
INSERT INTO `sys_area` VALUES (43743, 42987, 3, '大理市', '云南省，大理白族自治州，大理市', '100.241369', '25.593067', '0872', '671000', '532901', 'DaLiShi', 'DLS', 'D');
INSERT INTO `sys_area` VALUES (43744, 42987, 3, '洱源县', '云南省，大理白族自治州，洱源县', '99.951708', '26.111184', '0872', '671200', '532930', 'ErYuanXian', 'EYX', 'E');
INSERT INTO `sys_area` VALUES (43745, 42987, 3, '宾川县', '云南省，大理白族自治州，宾川县', '100.578957', '25.825904', '0872', '671600', '532924', 'BinChuanXian', 'BCX', 'B');
INSERT INTO `sys_area` VALUES (43746, 42987, 3, '云龙县', '云南省，大理白族自治州，云龙县', '99.369402', '25.884955', '0872', '672700', '532929', 'YunLongXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (43747, 42987, 3, '祥云县', '云南省，大理白族自治州，祥云县', '100.554025', '25.477072', '0872', '672100', '532923', 'XiangYunXian', 'XYX', 'X');
INSERT INTO `sys_area` VALUES (43748, 42987, 3, '漾濞彝族自治县', '云南省，大理白族自治州，漾濞彝族自治县', '99.95797', '25.669543', '0872', '672500', '532922', 'YangBiYiZuZiZhiXian', 'YBYZZZX', 'Y');
INSERT INTO `sys_area` VALUES (43749, 42987, 3, '巍山彝族回族自治县', '云南省，大理白族自治州，巍山彝族回族自治县', '100.30793', '25.230909', '0872', '672400', '532927', 'WeiShanYiZuHuiZuZiZhiXian', 'WSYZHZZZX', 'W');
INSERT INTO `sys_area` VALUES (43750, 42987, 3, '永平县', '云南省，大理白族自治州，永平县', '99.533536', '25.461281', '0872', '672600', '532928', 'YongPingXian', 'YPX', 'Y');
INSERT INTO `sys_area` VALUES (43751, 42987, 3, '弥渡县', '云南省，大理白族自治州，弥渡县', '100.490669', '25.342594', '0872', '675600', '532925', 'MiDuXian', 'MDX', 'M');
INSERT INTO `sys_area` VALUES (43752, 42987, 3, '南涧彝族自治县', '云南省，大理白族自治州，南涧彝族自治县', '100.518683', '25.041279', '0872', '675700', '532926', 'NanJianYiZuZiZhiXian', 'NJYZZZX', 'N');
INSERT INTO `sys_area` VALUES (43865, 42988, 3, '贡山独龙族怒族自治县', '云南省，怒江傈僳族自治州，贡山独龙族怒族自治县', '98.666141', '27.738054', '0886', '673500', '533324', 'GongShanDuLongZuNuZuZiZhiXian', 'GSDLZNZZZX', 'G');
INSERT INTO `sys_area` VALUES (43866, 42988, 3, '福贡县', '云南省，怒江傈僳族自治州，福贡县', '98.867413', '26.902738', '0886', '673400', '533323', 'FuGongXian', 'FGX', 'F');
INSERT INTO `sys_area` VALUES (43867, 42988, 3, '兰坪白族普米族自治县', '云南省，怒江傈僳族自治州，兰坪白族普米族自治县', '99.421378', '26.453839', '0886', '671400', '533325', 'LanPingBaiZuPuMiZuZiZhiXian', 'LPBZPMZZZX', 'L');
INSERT INTO `sys_area` VALUES (43868, 42988, 3, '泸水市', '云南省，怒江傈僳族自治州，泸水市', '98.854063', '25.851142', '0886', '673100', '533301', 'LuShuiShi', 'LSS', 'L');
INSERT INTO `sys_area` VALUES (43898, 42989, 3, '德钦县', '云南省，迪庆藏族自治州，德钦县', '98.91506', '28.483272', '0887', '674500', '533422', 'DeQinXian', 'DQX', 'D');
INSERT INTO `sys_area` VALUES (43899, 42989, 3, '香格里拉市', '云南省，迪庆藏族自治州，香格里拉市', '99.708667', '27.825804', '0887', '674400', '533401', 'XiangGeLiLaShi', 'XGLLS', 'X');
INSERT INTO `sys_area` VALUES (43900, 42989, 3, '维西傈僳族自治县', '云南省，迪庆藏族自治州，维西傈僳族自治县', '99.286355', '27.180948', '0887', '674600', '533423', 'WeiXiLiSuZuZiZhiXian', 'WXLSZZZX', 'W');
INSERT INTO `sys_area` VALUES (43930, 42990, 3, '澄江县', '云南省，玉溪市，澄江县', '102.916652', '24.669679', '0877', '652500', '530422', 'ChengJiangXian', 'CJX', 'C');
INSERT INTO `sys_area` VALUES (43931, 42990, 3, '易门县', '云南省，玉溪市，易门县', '102.16211', '24.669598', '0877', '651100', '530425', 'YiMenXian', 'YMX', 'Y');
INSERT INTO `sys_area` VALUES (43932, 42990, 3, '峨山彝族自治县', '云南省，玉溪市，峨山彝族自治县', '102.404358', '24.173256', '0877', '653200', '530426', 'EShanYiZuZiZhiXian', 'ESYZZZX', 'E');
INSERT INTO `sys_area` VALUES (43933, 42990, 3, '华宁县', '云南省，玉溪市，华宁县', '102.928982', '24.189807', '0877', '652800', '530424', 'HuaNingXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (43934, 42990, 3, '红塔区', '云南省，玉溪市，红塔区', '102.543468', '24.350753', '0877', '653100', '530402', 'HongTaQu', 'HTQ', 'H');
INSERT INTO `sys_area` VALUES (43935, 42990, 3, '新平彝族傣族自治县', '云南省，玉溪市，新平彝族傣族自治县', '101.990903', '24.0664', '0877', '653400', '530427', 'XinPingYiZuDaiZuZiZhiXian', 'XPYZDZZZX', 'X');
INSERT INTO `sys_area` VALUES (43936, 42990, 3, '元江哈尼族彝族傣族自治县', '云南省，玉溪市，元江哈尼族彝族傣族自治县', '101.999658', '23.597618', '0877', '653300', '530428', 'YuanJiangHaNiZuYiZuDaiZuZiZhiXian', 'YJHNZYZDZZZX', 'Y');
INSERT INTO `sys_area` VALUES (43937, 42990, 3, '江川区', '云南省，玉溪市，江川区', '102.749839', '24.291006', '0877', '652600', '530403', 'JiangChuanQu', 'JCQ', 'J');
INSERT INTO `sys_area` VALUES (43938, 42990, 3, '通海县', '云南省，玉溪市，通海县', '102.760039', '24.112205', '0877', '652700', '530423', 'TongHaiXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (44014, 42991, 3, '景东彝族自治县', '云南省，普洱市，景东彝族自治县', '100.840011', '24.448523', '0879', '676200', '530823', 'JingDongYiZuZiZhiXian', 'JDYZZZX', 'J');
INSERT INTO `sys_area` VALUES (44015, 42991, 3, '景谷傣族彝族自治县', '云南省，普洱市，景谷傣族彝族自治县', '100.701425', '23.500278', '0879', '666400', '530824', 'JingGuDaiZuYiZuZiZhiXian', 'JGDZYZZZX', 'J');
INSERT INTO `sys_area` VALUES (44016, 42991, 3, '镇沅彝族哈尼族拉祜族自治县', '云南省，普洱市，镇沅彝族哈尼族拉祜族自治县', '101.108512', '24.005712', '0879', '666500', '530825', 'ZhenYuanYiZuHaNiZuLaHuZuZiZhiXian', 'ZYYZHNZLHZZZX', 'Z');
INSERT INTO `sys_area` VALUES (44017, 42991, 3, '墨江哈尼族自治县', '云南省，普洱市，墨江哈尼族自治县', '101.687606', '23.428165', '0879', '654800', '530822', 'MoJiangHaNiZuZiZhiXian', 'MJHNZZZX', 'M');
INSERT INTO `sys_area` VALUES (44018, 42991, 3, '宁洱哈尼族彝族自治县', '云南省，普洱市，宁洱哈尼族彝族自治县', '101.04524', '23.062507', '0879', '665100', '530821', 'NingErHaNiZuYiZuZiZhiXian', 'NEHNZYZZZX', 'N');
INSERT INTO `sys_area` VALUES (44019, 42991, 3, '澜沧拉祜族自治县', '云南省，普洱市，澜沧拉祜族自治县', '99.931201', '22.553083', '0879', '665600', '530828', 'LanCangLaHuZuZiZhiXian', 'LCLHZZZX', 'L');
INSERT INTO `sys_area` VALUES (44020, 42991, 3, '西盟佤族自治县', '云南省，普洱市，西盟佤族自治县', '99.594372', '22.644423', '0879', '665700', '530829', 'XiMengWaZuZiZhiXian', 'XMWZZZX', 'X');
INSERT INTO `sys_area` VALUES (44021, 42991, 3, '思茅区', '云南省，普洱市，思茅区', '100.973227', '22.776595', '0879', '665000', '530802', 'SiMaoQu', 'SMQ', 'S');
INSERT INTO `sys_area` VALUES (44022, 42991, 3, '江城哈尼族彝族自治县', '云南省，普洱市，江城哈尼族彝族自治县', '101.859144', '22.58336', '0879', '665900', '530826', 'JiangChengHaNiZuYiZuZiZhiXian', 'JCHNZYZZZX', 'J');
INSERT INTO `sys_area` VALUES (44023, 42991, 3, '孟连傣族拉祜族佤族自治县', '云南省，普洱市，孟连傣族拉祜族佤族自治县', '99.585406', '22.325924', '0879', '665800', '530827', 'MengLianDaiZuLaHuZuWaZuZiZhiXian', 'MLDZLHZWZZZX', 'M');
INSERT INTO `sys_area` VALUES (44127, 42992, 3, '东川区', '云南省，昆明市，东川区', '103.182', '26.08349', '0871', '654100', '530113', 'DongChuanQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (44128, 42992, 3, '寻甸回族彝族自治县', '云南省，昆明市，寻甸回族彝族自治县', '103.257588', '25.559474', '0871', '655200', '530129', 'XunDianHuiZuYiZuZiZhiXian', 'XDHZYZZZX', 'X');
INSERT INTO `sys_area` VALUES (44129, 42992, 3, '西山区', '云南省，昆明市，西山区', '102.705904', '25.02436', '0871', '650118', '530112', 'XiShanQu', 'XSQ', 'X');
INSERT INTO `sys_area` VALUES (44130, 42992, 3, '宜良县', '云南省，昆明市，宜良县', '103.145989', '24.918215', '0871', '652100', '530125', 'YiLiangXian', 'YLX', 'Y');
INSERT INTO `sys_area` VALUES (44131, 42992, 3, '五华区', '云南省，昆明市，五华区', '102.704412', '25.042165', '0871', '650021', '530102', 'WuHuaQu', 'WHQ', 'W');
INSERT INTO `sys_area` VALUES (44132, 42992, 3, '石林彝族自治县', '云南省，昆明市，石林彝族自治县', '103.271962', '24.754545', '0871', '652200', '530126', 'ShiLinYiZuZiZhiXian', 'SLYZZZX', 'S');
INSERT INTO `sys_area` VALUES (44133, 42992, 3, '呈贡区', '云南省，昆明市，呈贡区', '102.801382', '24.889275', '0871', '650500', '530114', 'ChengGongQu', 'CGQ', 'C');
INSERT INTO `sys_area` VALUES (44134, 42992, 3, '晋宁区', '云南省，昆明市，晋宁区', '102.594987', '24.666944', '0871', '650600', '530115', 'JinNingQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (44135, 42992, 3, '禄劝彝族苗族自治县', '云南省，昆明市，禄劝彝族苗族自治县', '102.46905', '25.556533', '0871', '651500', '530128', 'LuQuanYiZuMiaoZuZiZhiXian', 'LQYZMZZZX', 'L');
INSERT INTO `sys_area` VALUES (44136, 42992, 3, '富民县', '云南省，昆明市，富民县', '102.497888', '25.219667', '0871', '650400', '530124', 'FuMinXian', 'FMX', 'F');
INSERT INTO `sys_area` VALUES (44137, 42992, 3, '安宁市', '云南省，昆明市，安宁市', '102.485544', '24.921785', '0871', '650300', '530181', 'AnNingShi', 'ANS', 'A');
INSERT INTO `sys_area` VALUES (44138, 42992, 3, '官渡区', '云南省，昆明市，官渡区', '102.723437', '25.021211', '0871', '650200', '530111', 'GuanDuQu', 'GDQ', 'G');
INSERT INTO `sys_area` VALUES (44139, 42992, 3, '嵩明县', '云南省，昆明市，嵩明县', '103.038777', '25.335087', '0871', '651700', '530127', 'SongMingXian', 'SMX', 'S');
INSERT INTO `sys_area` VALUES (44140, 42992, 3, '盘龙区', '云南省，昆明市，盘龙区', '102.729044', '25.070239', '0871', '650051', '530103', 'PanLongQu', 'PLQ', 'P');
INSERT INTO `sys_area` VALUES (44275, 42993, 3, '元谋县', '云南省，楚雄彝族自治州，元谋县', '101.870837', '25.703313', '0878', '651300', '532328', 'YuanMouXian', 'YMX', 'Y');
INSERT INTO `sys_area` VALUES (44276, 42993, 3, '姚安县', '云南省，楚雄彝族自治州，姚安县', '101.238399', '25.505403', '0878', '675300', '532325', 'YaoAnXian', 'YAX', 'Y');
INSERT INTO `sys_area` VALUES (44277, 42993, 3, '牟定县', '云南省，楚雄彝族自治州，牟定县', '101.543044', '25.312111', '0878', '675500', '532323', 'MouDingXian', 'MDX', 'M');
INSERT INTO `sys_area` VALUES (44278, 42993, 3, '大姚县', '云南省，楚雄彝族自治州，大姚县', '101.323602', '25.722348', '0878', '675400', '532326', 'DaYaoXian', 'DYX', 'D');
INSERT INTO `sys_area` VALUES (44279, 42993, 3, '南华县', '云南省，楚雄彝族自治州，南华县', '101.274991', '25.192408', '0878', '675200', '532324', 'NanHuaXian', 'NHX', 'N');
INSERT INTO `sys_area` VALUES (44280, 42993, 3, '禄丰县', '云南省，楚雄彝族自治州，禄丰县', '102.075694', '25.14327', '0878', '651200', '532331', 'LuFengXian', 'LFX', 'L');
INSERT INTO `sys_area` VALUES (44281, 42993, 3, '楚雄市', '云南省，楚雄彝族自治州，楚雄市', '101.546145', '25.040912', '0878', '675000', '532301', 'ChuXiongShi', 'CXS', 'C');
INSERT INTO `sys_area` VALUES (44282, 42993, 3, '双柏县', '云南省，楚雄彝族自治州，双柏县', '101.63824', '24.685094', '0878', '675100', '532322', 'ShuangBaiXian', 'SBX', 'S');
INSERT INTO `sys_area` VALUES (44283, 42993, 3, '武定县', '云南省，楚雄彝族自治州，武定县', '102.406785', '25.5301', '0878', '651600', '532329', 'WuDingXian', 'WDX', 'W');
INSERT INTO `sys_area` VALUES (44284, 42993, 3, '永仁县', '云南省，楚雄彝族自治州，永仁县', '101.671175', '26.056316', '0878', '651400', '532327', 'YongRenXian', 'YRX', 'Y');
INSERT INTO `sys_area` VALUES (44388, 42994, 3, '盈江县', '云南省，德宏傣族景颇族自治州，盈江县', '97.93393', '24.709541', '0692', '679300', '533123', 'YingJiangXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (44389, 42994, 3, '梁河县', '云南省，德宏傣族景颇族自治州，梁河县', '98.298196', '24.80742', '0692', '679200', '533122', 'LiangHeXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (44390, 42994, 3, '芒市', '云南省，德宏傣族景颇族自治州，芒市', '98.577608', '24.436699', '0692', '678400', '533103', 'MangShi', 'MS', 'M');
INSERT INTO `sys_area` VALUES (44391, 42994, 3, '陇川县', '云南省，德宏傣族景颇族自治州，陇川县', '97.794441', '24.184065', '0692', '678700', '533124', 'LongChuanXian', 'LCX', 'L');
INSERT INTO `sys_area` VALUES (44392, 42994, 3, '瑞丽市', '云南省，德宏傣族景颇族自治州，瑞丽市', '97.855883', '24.010734', '0692', '678600', '533102', 'RuiLiShi', 'RLS', 'R');
INSERT INTO `sys_area` VALUES (44444, 42995, 3, '凤庆县', '云南省，临沧市，凤庆县', '99.91871', '24.592738', '0883', '675900', '530921', 'FengQingXian', 'FQX', 'F');
INSERT INTO `sys_area` VALUES (44445, 42995, 3, '云县', '云南省，临沧市，云县', '100.125637', '24.439026', '0883', '675800', '530922', 'YunXian', 'YX', 'Y');
INSERT INTO `sys_area` VALUES (44446, 42995, 3, '镇康县', '云南省，临沧市，镇康县', '98.82743', '23.761415', '0883', '677704', '530924', 'ZhenKangXian', 'ZKX', 'Z');
INSERT INTO `sys_area` VALUES (44447, 42995, 3, '临翔区', '云南省，临沧市，临翔区', '100.086486', '23.886562', '0883', '677000', '530902', 'LinXiangQu', 'LXQ', 'L');
INSERT INTO `sys_area` VALUES (44448, 42995, 3, '永德县', '云南省，临沧市，永德县', '99.253679', '24.028159', '0883', '677600', '530923', 'YongDeXian', 'YDX', 'Y');
INSERT INTO `sys_area` VALUES (44449, 42995, 3, '耿马傣族佤族自治县', '云南省，临沧市，耿马傣族佤族自治县', '99.402495', '23.534579', '0883', '677500', '530926', 'GengMaDaiZuWaZuZiZhiXian', 'GMDZWZZZX', 'G');
INSERT INTO `sys_area` VALUES (44450, 42995, 3, '双江拉祜族佤族布朗族傣族自治县', '云南省，临沧市，双江拉祜族佤族布朗族傣族自治县', '99.824419', '23.477476', '0883', '677300', '530925', 'ShuangJiangLaHuZuWaZuBuLangZuDaiZuZiZhiXian', 'SJLHZWZBLZDZZZX', 'S');
INSERT INTO `sys_area` VALUES (44451, 42995, 3, '沧源佤族自治县', '云南省，临沧市，沧源佤族自治县', '99.2474', '23.146887', '0883', '677400', '530927', 'CangYuanWaZuZiZhiXian', 'CYWZZZX', 'C');
INSERT INTO `sys_area` VALUES (44536, 32, 2, '北京城区', '北京市，北京城区', '116.405285', '39.904989', '', '', '110100', 'BeiJingChengQu', 'BJCQ', 'B');
INSERT INTO `sys_area` VALUES (44537, 44536, 3, '怀柔区', '北京市，北京城区，怀柔区', '116.637122', '40.324272', '010', '101400', '110116', 'HuaiRouQu', 'HRQ', 'H');
INSERT INTO `sys_area` VALUES (44538, 44536, 3, '延庆区', '北京市，北京城区，延庆区', '115.985006', '40.465325', '010', '102100', '110119', 'YanQingQu', 'YQQ', 'Y');
INSERT INTO `sys_area` VALUES (44539, 44536, 3, '密云区', '北京市，北京城区，密云区', '116.843352', '40.377362', '010', '101500', '110118', 'MiYunQu', 'MYQ', 'M');
INSERT INTO `sys_area` VALUES (44540, 44536, 3, '丰台区', '北京市，北京城区，丰台区', '116.286968', '39.863642', '010', '100071', '110106', 'FengTaiQu', 'FTQ', 'F');
INSERT INTO `sys_area` VALUES (44541, 44536, 3, '门头沟区', '北京市，北京城区，门头沟区', '116.105381', '39.937183', '010', '102300', '110109', 'MenTouGouQu', 'MTGQ', 'M');
INSERT INTO `sys_area` VALUES (44542, 44536, 3, '顺义区', '北京市，北京城区，顺义区', '116.653525', '40.128936', '010', '101300', '110113', 'ShunYiQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (44543, 44536, 3, '朝阳区', '北京市，北京城区，朝阳区', '116.486409', '39.921489', '010', '100020', '110105', 'ChaoYangQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (44544, 44536, 3, '石景山区', '北京市，北京城区，石景山区', '116.195445', '39.914601', '010', '100043', '110107', 'ShiJingShanQu', 'SJSQ', 'S');
INSERT INTO `sys_area` VALUES (44545, 44536, 3, '房山区', '北京市，北京城区，房山区', '116.139157', '39.735535', '010', '102488', '110111', 'FangShanQu', 'FSQ', 'F');
INSERT INTO `sys_area` VALUES (44546, 44536, 3, '东城区', '北京市，北京城区，东城区', '116.418757', '39.917544', '010', '100010', '110101', 'DongChengQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (44547, 44536, 3, '大兴区', '北京市，北京城区，大兴区', '116.338033', '39.728908', '010', '102600', '110115', 'DaXingQu', 'DXQ', 'D');
INSERT INTO `sys_area` VALUES (44548, 44536, 3, '平谷区', '北京市，北京城区，平谷区', '117.112335', '40.144783', '010', '101200', '110117', 'PingGuQu', 'PGQ', 'P');
INSERT INTO `sys_area` VALUES (44549, 44536, 3, '通州区', '北京市，北京城区，通州区', '116.658603', '39.902486', '010', '101149', '110112', 'TongZhouQu', 'TZQ', 'T');
INSERT INTO `sys_area` VALUES (44550, 44536, 3, '昌平区', '北京市，北京城区，昌平区', '116.235906', '40.218085', '010', '102200', '110114', 'ChangPingQu', 'CPQ', 'C');
INSERT INTO `sys_area` VALUES (44551, 44536, 3, '海淀区', '北京市，北京城区，海淀区', '116.310316', '39.956074', '010', '100089', '110108', 'HaiDianQu', 'HDQ', 'H');
INSERT INTO `sys_area` VALUES (44552, 44536, 3, '西城区', '北京市，北京城区，西城区', '116.366794', '39.915309', '010', '100032', '110102', 'XiChengQu', 'XCQ', 'X');
INSERT INTO `sys_area` VALUES (44886, 33, 2, '天津城区', '天津市，天津城区', '117.190182', '39.125596', '', '', '120100', 'TianJinChengQu', 'TJCQ', 'T');
INSERT INTO `sys_area` VALUES (44887, 44886, 3, '河西区', '天津市，天津城区，河西区', '117.217536', '39.101897', '022', '300202', '120103', 'HeXiQu', 'HXQ', 'H');
INSERT INTO `sys_area` VALUES (44888, 44886, 3, '河东区', '天津市，天津城区，河东区', '117.226568', '39.122125', '022', '300171', '120102', 'HeDongQu', 'HDQ', 'H');
INSERT INTO `sys_area` VALUES (44889, 44886, 3, '河北区', '天津市，天津城区，河北区', '117.201569', '39.156632', '022', '300143', '120105', 'HeBeiQu', 'HBQ', 'H');
INSERT INTO `sys_area` VALUES (44890, 44886, 3, '和平区', '天津市，天津城区，和平区', '117.195907', '39.118327', '022', '300041', '120101', 'HePingQu', 'HPQ', 'H');
INSERT INTO `sys_area` VALUES (44891, 44886, 3, '宝坻区', '天津市，天津城区，宝坻区', '117.308094', '39.716965', '022', '301800', '120115', 'BaoDiQu', 'BDQ', 'B');
INSERT INTO `sys_area` VALUES (44892, 44886, 3, '津南区', '天津市，天津城区，津南区', '117.382549', '38.989577', '022', '300350', '120112', 'JinNanQu', 'JNQ', 'J');
INSERT INTO `sys_area` VALUES (44893, 44886, 3, '东丽区', '天津市，天津城区，东丽区', '117.313967', '39.087764', '022', '300300', '120110', 'DongLiQu', 'DLQ', 'D');
INSERT INTO `sys_area` VALUES (44894, 44886, 3, '静海区', '天津市，天津城区，静海区', '116.925304', '38.935671', '022', '301600', '120118', 'JingHaiQu', 'JHQ', 'J');
INSERT INTO `sys_area` VALUES (44895, 44886, 3, '宁河区', '天津市，天津城区，宁河区', '117.82828', '39.328886', '022', '301500', '120117', 'NingHeQu', 'NHQ', 'N');
INSERT INTO `sys_area` VALUES (44896, 44886, 3, '蓟州区', '天津市，天津城区，蓟州区', '117.407449', '40.045342', '022', '301900', '120119', 'JiZhouQu', 'JZQ', 'J');
INSERT INTO `sys_area` VALUES (44897, 44886, 3, '滨海新区', '天津市，天津城区，滨海新区', '117.654173', '39.032846', '022', '300451', '120116', 'BinHaiXinQu', 'BHXQ', 'B');
INSERT INTO `sys_area` VALUES (44898, 44886, 3, '北辰区', '天津市，天津城区，北辰区', '117.13482', '39.225555', '022', '300400', '120113', 'BeiChenQu', 'BCQ', 'B');
INSERT INTO `sys_area` VALUES (44899, 44886, 3, '武清区', '天津市，天津城区，武清区', '117.057959', '39.376925', '022', '301700', '120114', 'WuQingQu', 'WQQ', 'W');
INSERT INTO `sys_area` VALUES (44900, 44886, 3, '红桥区', '天津市，天津城区，红桥区', '117.163301', '39.175066', '022', '300131', '120106', 'HongQiaoQu', 'HQQ', 'H');
INSERT INTO `sys_area` VALUES (44901, 44886, 3, '西青区', '天津市，天津城区，西青区', '117.012247', '39.139446', '022', '300380', '120111', 'XiQingQu', 'XQQ', 'X');
INSERT INTO `sys_area` VALUES (44902, 44886, 3, '南开区', '天津市，天津城区，南开区', '117.164143', '39.120474', '022', '300110', '120104', 'NanKaiQu', 'NKQ', 'N');
INSERT INTO `sys_area` VALUES (45207, 34, 2, '长春市', '吉林省，长春市', '125.3245', '43.886841', '0431', '130022', '220100', 'ChangChunShi', 'CCS', 'C');
INSERT INTO `sys_area` VALUES (45208, 34, 2, '辽源市', '吉林省，辽源市', '125.145349', '42.902692', '0437', '136200', '220400', 'LiaoYuanShi', 'LYS', 'L');
INSERT INTO `sys_area` VALUES (45209, 34, 2, '吉林市', '吉林省，吉林市', '126.55302', '43.843577', '0432', '132011', '220200', 'JiLinShi', 'JLS', 'J');
INSERT INTO `sys_area` VALUES (45210, 34, 2, '白城市', '吉林省，白城市', '122.841114', '45.619026', '0436', '137000', '220800', 'BaiChengShi', 'BCS', 'B');
INSERT INTO `sys_area` VALUES (45211, 34, 2, '松原市', '吉林省，松原市', '124.823608', '45.118243', '0438', '138000', '220700', 'SongYuanShi', 'SYS', 'S');
INSERT INTO `sys_area` VALUES (45212, 34, 2, '四平市', '吉林省，四平市', '124.370785', '43.170344', '0434', '136000', '220300', 'SiPingShi', 'SPS', 'S');
INSERT INTO `sys_area` VALUES (45213, 34, 2, '延边朝鲜族自治州', '吉林省，延边朝鲜族自治州', '129.513228', '42.904823', '0433', '133000', '222400', 'YanBianChaoXianZuZiZhiZhou', 'YBCXZZZZ', 'Y');
INSERT INTO `sys_area` VALUES (45214, 34, 2, '白山市', '吉林省，白山市', '126.427839', '41.942505', '0439', '134300', '220600', 'BaiShanShi', 'BSS', 'B');
INSERT INTO `sys_area` VALUES (45215, 34, 2, '通化市', '吉林省，通化市', '125.936501', '41.721177', '0435', '134001', '220500', 'TongHuaShi', 'THS', 'T');
INSERT INTO `sys_area` VALUES (45216, 45207, 3, '榆树市', '吉林省，长春市，榆树市', '126.550107', '44.827642', '0431', '130400', '220182', 'YuShuShi', 'YSS', 'Y');
INSERT INTO `sys_area` VALUES (45217, 45207, 3, '德惠市', '吉林省，长春市，德惠市', '125.703327', '44.533909', '0431', '130300', '220183', 'DeHuiShi', 'DHS', 'D');
INSERT INTO `sys_area` VALUES (45218, 45207, 3, '双阳区', '吉林省，长春市，双阳区', '125.659018', '43.525168', '0431', '130600', '220112', 'ShuangYangQu', 'SYQ', 'S');
INSERT INTO `sys_area` VALUES (45219, 45207, 3, '农安县', '吉林省，长春市，农安县', '125.175287', '44.431258', '0431', '130200', '220122', 'NongAnXian', 'NAX', 'N');
INSERT INTO `sys_area` VALUES (45220, 45207, 3, '朝阳区', '吉林省，长春市，朝阳区', '125.318042', '43.86491', '0431', '130012', '220104', 'ChaoYangQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (45221, 45207, 3, '绿园区', '吉林省，长春市，绿园区', '125.272467', '43.892177', '0431', '130062', '220106', 'LvYuanQu', 'LYQ', 'L');
INSERT INTO `sys_area` VALUES (45222, 45207, 3, '二道区', '吉林省，长春市，二道区', '125.384727', '43.870824', '0431', '130031', '220105', 'ErDaoQu', 'EDQ', 'E');
INSERT INTO `sys_area` VALUES (45223, 45207, 3, '九台区', '吉林省，长春市，九台区', '125.844682', '44.157155', '0431', '130500', '220113', 'JiuTaiQu', 'JTQ', 'J');
INSERT INTO `sys_area` VALUES (45224, 45207, 3, '南关区', '吉林省，长春市，南关区', '125.337237', '43.890235', '0431', '130022', '220102', 'NanGuanQu', 'NGQ', 'N');
INSERT INTO `sys_area` VALUES (45225, 45207, 3, '宽城区', '吉林省，长春市，宽城区', '125.342828', '43.903823', '0431', '130051', '220103', 'KuanChengQu', 'KCQ', 'K');
INSERT INTO `sys_area` VALUES (45392, 45208, 3, '西安区', '吉林省，辽源市，西安区', '125.151424', '42.920415', '0437', '136201', '220403', 'XiAnQu', 'XAQ', 'X');
INSERT INTO `sys_area` VALUES (45393, 45208, 3, '龙山区', '吉林省，辽源市，龙山区', '125.145164', '42.902702', '0437', '136200', '220402', 'LongShanQu', 'LSQ', 'L');
INSERT INTO `sys_area` VALUES (45394, 45208, 3, '东辽县', '吉林省，辽源市，东辽县', '124.991995', '42.927724', '0437', '136600', '220422', 'DongLiaoXian', 'DLX', 'D');
INSERT INTO `sys_area` VALUES (45395, 45208, 3, '东丰县', '吉林省，辽源市，东丰县', '125.529623', '42.675228', '0437', '136300', '220421', 'DongFengXian', 'DFX', 'D');
INSERT INTO `sys_area` VALUES (45430, 45209, 3, '舒兰市', '吉林省，吉林市，舒兰市', '126.947813', '44.410906', '0432', '132600', '220283', 'ShuLanShi', 'SLS', 'S');
INSERT INTO `sys_area` VALUES (45431, 45209, 3, '船营区', '吉林省，吉林市，船营区', '126.55239', '43.843804', '0432', '132011', '220204', 'ChuanYingQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (45432, 45209, 3, '丰满区', '吉林省，吉林市，丰满区', '126.560759', '43.816594', '0432', '132013', '220211', 'FengManQu', 'FMQ', 'F');
INSERT INTO `sys_area` VALUES (45433, 45209, 3, '桦甸市', '吉林省，吉林市，桦甸市', '126.745445', '42.972093', '0432', '132400', '220282', 'HuaDianShi', 'HDS', 'H');
INSERT INTO `sys_area` VALUES (45434, 45209, 3, '昌邑区', '吉林省，吉林市，昌邑区', '126.570766', '43.851118', '0432', '132002', '220202', 'ChangYiQu', 'CYQ', 'C');
INSERT INTO `sys_area` VALUES (45435, 45209, 3, '蛟河市', '吉林省，吉林市，蛟河市', '127.342739', '43.720579', '0432', '132500', '220281', 'JiaoHeShi', 'JHS', 'J');
INSERT INTO `sys_area` VALUES (45436, 45209, 3, '龙潭区', '吉林省，吉林市，龙潭区', '126.561429', '43.909755', '0432', '132021', '220203', 'LongTanQu', 'LTQ', 'L');
INSERT INTO `sys_area` VALUES (45437, 45209, 3, '永吉县', '吉林省，吉林市，永吉县', '126.501622', '43.667416', '0432', '132200', '220221', 'YongJiXian', 'YJX', 'Y');
INSERT INTO `sys_area` VALUES (45438, 45209, 3, '磐石市', '吉林省，吉林市，磐石市', '126.059929', '42.942476', '0432', '132300', '220284', 'PanShiShi', 'PSS', 'P');
INSERT INTO `sys_area` VALUES (45587, 45210, 3, '大安市', '吉林省，白城市，大安市', '124.291512', '45.507648', '0436', '131300', '220882', 'DaAnShi', 'DAS', 'D');
INSERT INTO `sys_area` VALUES (45588, 45210, 3, '洮南市', '吉林省，白城市，洮南市', '122.783779', '45.339113', '0436', '137100', '220881', 'TaoNanShi', 'TNS', 'T');
INSERT INTO `sys_area` VALUES (45589, 45210, 3, '通榆县', '吉林省，白城市，通榆县', '123.088543', '44.80915', '0436', '137200', '220822', 'TongYuXian', 'TYX', 'T');
INSERT INTO `sys_area` VALUES (45590, 45210, 3, '洮北区', '吉林省，白城市，洮北区', '122.842499', '45.619253', '0436', '137000', '220802', 'TaoBeiQu', 'TBQ', 'T');
INSERT INTO `sys_area` VALUES (45591, 45210, 3, '镇赉县', '吉林省，白城市，镇赉县', '123.202246', '45.846089', '0436', '137300', '220821', 'ZhenLaiXian', 'ZLX', 'Z');
INSERT INTO `sys_area` VALUES (45723, 45211, 3, '扶余市', '吉林省，松原市，扶余市', '126.042758', '44.986199', '0438', '131200', '220781', 'FuYuShi', 'FYS', 'F');
INSERT INTO `sys_area` VALUES (45724, 45211, 3, '宁江区', '吉林省，松原市，宁江区', '124.827851', '45.176498', '0438', '138000', '220702', 'NingJiangQu', 'NJQ', 'N');
INSERT INTO `sys_area` VALUES (45725, 45211, 3, '前郭尔罗斯蒙古族自治县', '吉林省，松原市，前郭尔罗斯蒙古族自治县', '124.826808', '45.116288', '0438', '138000', '220721', 'QianGuoErLuoSiMengGuZuZiZhiXian', 'QGELSMGZZZX', 'Q');
INSERT INTO `sys_area` VALUES (45726, 45211, 3, '乾安县', '吉林省，松原市，乾安县', '124.024361', '45.006846', '0438', '131400', '220723', 'QianAnXian', 'QAX', 'Q');
INSERT INTO `sys_area` VALUES (45727, 45211, 3, '长岭县', '吉林省，松原市，长岭县', '123.985184', '44.276579', '0438', '131500', '220722', 'ChangLingXian', 'CLX', 'C');
INSERT INTO `sys_area` VALUES (45865, 45212, 3, '铁东区', '吉林省，四平市，铁东区', '124.388464', '43.16726', '0434', '136001', '220303', 'TieDongQu', 'TDQ', 'T');
INSERT INTO `sys_area` VALUES (45866, 45212, 3, '双辽市', '吉林省，四平市，双辽市', '123.505283', '43.518275', '0434', '136400', '220382', 'ShuangLiaoShi', 'SLS', 'S');
INSERT INTO `sys_area` VALUES (45867, 45212, 3, '公主岭市', '吉林省，四平市，公主岭市', '124.817588', '43.509474', '0434', '136100', '220381', 'GongZhuLingShi', 'GZLS', 'G');
INSERT INTO `sys_area` VALUES (45868, 45212, 3, '伊通满族自治县', '吉林省，四平市，伊通满族自治县', '125.303124', '43.345464', '0434', '130700', '220323', 'YiTongManZuZiZhiXian', 'YTMZZZX', 'Y');
INSERT INTO `sys_area` VALUES (45869, 45212, 3, '铁西区', '吉林省，四平市，铁西区', '124.360894', '43.176263', '0434', '136000', '220302', 'TieXiQu', 'TXQ', 'T');
INSERT INTO `sys_area` VALUES (45870, 45212, 3, '梨树县', '吉林省，四平市，梨树县', '124.335802', '43.30831', '0434', '136500', '220322', 'LiShuXian', 'LSX', 'L');
INSERT INTO `sys_area` VALUES (45988, 45213, 3, '敦化市', '吉林省，延边朝鲜族自治州，敦化市', '128.22986', '43.366921', '0433', '133700', '222403', 'DunHuaShi', 'DHS', 'D');
INSERT INTO `sys_area` VALUES (45989, 45213, 3, '图们市', '吉林省，延边朝鲜族自治州，图们市', '129.846701', '42.966621', '0433', '133100', '222402', 'TuMenShi', 'TMS', 'T');
INSERT INTO `sys_area` VALUES (45990, 45213, 3, '珲春市', '吉林省，延边朝鲜族自治州，珲春市', '130.365787', '42.871057', '0433', '133300', '222404', 'HunChunShi', 'HCS', 'H');
INSERT INTO `sys_area` VALUES (45991, 45213, 3, '和龙市', '吉林省，延边朝鲜族自治州，和龙市', '129.008748', '42.547004', '0433', '133500', '222406', 'HeLongShi', 'HLS', 'H');
INSERT INTO `sys_area` VALUES (45992, 45213, 3, '汪清县', '吉林省，延边朝鲜族自治州，汪清县', '129.766161', '43.315426', '0433', '133200', '222424', 'WangQingXian', 'WQX', 'W');
INSERT INTO `sys_area` VALUES (45993, 45213, 3, '延吉市', '吉林省，延边朝鲜族自治州，延吉市', '129.51579', '42.906964', '0433', '133000', '222401', 'YanJiShi', 'YJS', 'Y');
INSERT INTO `sys_area` VALUES (45994, 45213, 3, '龙井市', '吉林省，延边朝鲜族自治州，龙井市', '129.425747', '42.771029', '0433', '133400', '222405', 'LongJingShi', 'LJS', 'L');
INSERT INTO `sys_area` VALUES (45995, 45213, 3, '安图县', '吉林省，延边朝鲜族自治州，安图县', '128.901865', '43.110994', '0433', '133600', '222426', 'AnTuXian', 'ATX', 'A');
INSERT INTO `sys_area` VALUES (46121, 45214, 3, '靖宇县', '吉林省，白山市，靖宇县', '126.808386', '42.389689', '0439', '135200', '220622', 'JingYuXian', 'JYX', 'J');
INSERT INTO `sys_area` VALUES (46122, 45214, 3, '长白朝鲜族自治县', '吉林省，白山市，长白朝鲜族自治县', '128.203384', '41.419361', '0439', '134400', '220623', 'ChangBaiChaoXianZuZiZhiXian', 'CBCXZZZX', 'C');
INSERT INTO `sys_area` VALUES (46123, 45214, 3, '江源区', '吉林省，白山市，江源区', '126.584229', '42.048109', '0439', '134700', '220605', 'JiangYuanQu', 'JYQ', 'J');
INSERT INTO `sys_area` VALUES (46124, 45214, 3, '抚松县', '吉林省，白山市，抚松县', '127.273796', '42.332643', '0439', '134500', '220621', 'FuSongXian', 'FSX', 'F');
INSERT INTO `sys_area` VALUES (46125, 45214, 3, '浑江区', '吉林省，白山市，浑江区', '126.428035', '41.943065', '0439', '134300', '220602', 'HunJiangQu', 'HJQ', 'H');
INSERT INTO `sys_area` VALUES (46126, 45214, 3, '临江市', '吉林省，白山市，临江市', '126.919296', '41.810689', '0439', '134600', '220681', 'LinJiangShi', 'LJS', 'L');
INSERT INTO `sys_area` VALUES (46197, 45215, 3, '东昌区', '吉林省，通化市，东昌区', '125.936716', '41.721233', '0435', '134001', '220502', 'DongChangQu', 'DCQ', 'D');
INSERT INTO `sys_area` VALUES (46198, 45215, 3, '二道江区', '吉林省，通化市，二道江区', '126.045987', '41.777564', '0435', '134003', '220503', 'ErDaoJiangQu', 'EDJQ', 'E');
INSERT INTO `sys_area` VALUES (46199, 45215, 3, '通化县', '吉林省，通化市，通化县', '125.753121', '41.677918', '0435', '134100', '220521', 'TongHuaXian', 'THX', 'T');
INSERT INTO `sys_area` VALUES (46200, 45215, 3, '柳河县', '吉林省，通化市，柳河县', '125.740536', '42.281484', '0435', '135300', '220524', 'LiuHeXian', 'LHX', 'L');
INSERT INTO `sys_area` VALUES (46201, 45215, 3, '梅河口市', '吉林省，通化市，梅河口市', '125.687336', '42.530002', '0435', '135000', '220581', 'MeiHeKouShi', 'MHKS', 'M');
INSERT INTO `sys_area` VALUES (46202, 45215, 3, '辉南县', '吉林省，通化市，辉南县', '126.042821', '42.683459', '0435', '135100', '220523', 'HuiNanXian', 'HNX', 'H');
INSERT INTO `sys_area` VALUES (46203, 45215, 3, '集安市', '吉林省，通化市，集安市', '126.186204', '41.126276', '0435', '134200', '220582', 'JiAnShi', 'JAS', 'J');
COMMIT;

-- ----------------------------
-- Table structure for sys_comp
-- ----------------------------
DROP TABLE IF EXISTS `sys_comp`;
CREATE TABLE `sys_comp` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `type` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '类型标志 0 公司 1部门',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级公司ID，一级公司为0',
  `parent_ids` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '所有父级编号集合',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '公司或部门名称',
  `full_name` varchar(250) CHARACTER SET utf8 DEFAULT '' COMMENT '公司或部门全称',
  `area_ids` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公司归属地区',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '描述',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `tenant_id` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '租户号',
  `tenant_name` varchar(250) COLLATE utf8mb4_bin DEFAULT '' COMMENT '租户名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司组织表';

-- ----------------------------
-- Records of sys_comp
-- ----------------------------
BEGIN;
INSERT INTO `sys_comp` VALUES (1, '0', 0, '1', '总公司', '', NULL, '根部公司', 0, '0', '0', '', '', '2019-12-21 23:54:41', '', 'admin', '2020-02-24 03:50:37');
INSERT INTO `sys_comp` VALUES (1236303334564106350, '0', 1, '1', '北京有限公司', '北京测试有限公司', NULL, '', 2, '0', '0', '', '', '2020-03-15 16:31:16', '', 'admin', '2020-06-12 15:57:45');
INSERT INTO `sys_comp` VALUES (1239875326212898817, '0', 1, '1', '南京有限公司', '南京测试有限公司', NULL, '', 3, '0', '0', '', '', '2020-03-17 19:24:48', 'admin', 'admin', '2020-06-12 15:57:35');
INSERT INTO `sys_comp` VALUES (1241024147242586113, '0', 1, '1', '上海法斯特有限公司', '法斯特有限公司', '16171,16172,16173', '', 0, '0', '0', '', '', '2020-03-20 10:29:48', 'admin', 'admin', '2020-06-12 15:57:55');
INSERT INTO `sys_comp` VALUES (1267294898115256320, '1', 1236303334564106350, '1,1236303334564106350', '科技部', '', NULL, '', 0, '0', '0', '', '', '2020-06-10 10:03:05', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1270643743532093441, '0', 1, '1', '测试公司', '上海测试公司', '36,133,134,135,136,137', '', 0, '0', '0', '', '', '2020-06-10 17:07:31', 'admin', 'admin', '2020-06-15 13:50:48');
INSERT INTO `sys_comp` VALUES (1270986234210029570, '1', 1236303334564106350, '1236303334564106350,1', '人事部', '北京人事部', NULL, '', 1, '0', '0', '', '', '2020-06-11 15:48:27', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1271030135314837505, '1', 1239875326212898817, '1239875326212898817,1', '科技部', '南京公司科技部', NULL, '', 0, '0', '0', '', '', '2020-06-11 18:42:54', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1271030309013549058, '1', 1239875326212898817, '1239875326212898817,1', '人事部', '南京公司人事部', NULL, '', 1, '0', '0', '', '', '2020-06-11 18:43:35', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1271250518156554241, '0', 1236303334564106350, '1236303334564106350,1', '天津子公司', '天津子公司测试全称', '44887,44888', '', 0, '0', '0', '', '', '2020-06-12 09:18:37', 'admin', 'admin', '2020-06-12 15:56:54');
INSERT INTO `sys_comp` VALUES (1271250684183883778, '1', 1271250518156554241, '1271250518156554241,1236303334564106350,1', '科技部', '天津子公司科技部', NULL, '', 0, '0', '0', '', '', '2020-06-12 09:19:16', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1271250799447552002, '1', 1271250518156554241, '1271250518156554241,1236303334564106350,1', '人事部', '天津子公司人事部', NULL, '', 1, '0', '0', '', '', '2020-06-12 09:19:44', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1271318337648971778, '1', 1241024147242586113, '1241024147242586113,1', '科技部', '上海法斯特科技部', NULL, '', 0, '0', '0', '', '', '2020-06-12 13:48:06', 'admin', 'admin', '2020-06-12 15:40:40');
INSERT INTO `sys_comp` VALUES (1271319830053638145, '1', 1270643743532093441, '1270643743532093441,1', '会计部', '测试公司会计部', NULL, '', 0, '0', '0', '', '', '2020-06-12 13:54:02', 'admin', 'admin', '2020-06-12 15:56:26');
INSERT INTO `sys_comp` VALUES (1271320074380234754, '1', 1270643743532093441, '1270643743532093441,1', '研发部', '测试公司研发部', NULL, '', 1, '0', '0', '', '', '2020-06-12 13:55:00', 'admin', 'admin', '2020-06-15 14:10:40');
INSERT INTO `sys_comp` VALUES (1271320285504720897, '1', 1241024147242586113, '1241024147242586113,1', '研发部', '上海法斯特研发部', NULL, '', 1, '0', '0', '', '', '2020-06-12 13:55:51', 'admin', 'admin', '2020-06-12 15:54:33');
INSERT INTO `sys_comp` VALUES (1271320402131537921, '1', 1241024147242586113, '1241024147242586113,1', '运维部', '上海法斯特运维部', NULL, '', 2, '0', '0', '', '', '2020-06-12 13:56:19', 'admin', 'admin', '2020-06-12 15:54:56');
INSERT INTO `sys_comp` VALUES (1271320536974217217, '1', 1241024147242586113, '1241024147242586113,1', '财务部', '上海法斯特财务部', NULL, '', 10, '0', '0', '', '', '2020-06-12 13:56:51', 'admin', 'admin', '2020-06-12 15:55:09');
INSERT INTO `sys_comp` VALUES (1271320650761490433, '1', 1241024147242586113, '1241024147242586113,1', '人事部', '上海法斯特人事部', NULL, '', 5, '0', '0', '', '', '2020-06-12 13:57:18', 'admin', 'admin', '2020-06-12 15:55:21');
INSERT INTO `sys_comp` VALUES (1273415444107223041, '1', 1271320285504720897, '1271320285504720897,1241024147242586113,1', '研发一部', '上海法斯特研发一部', NULL, '', 0, '0', '0', '', '', '2020-06-18 08:41:15', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1273415577674833921, '1', 1271320285504720897, '1271320285504720897,1241024147242586113,1', '研发二部', '上海法斯特研发二部', NULL, '', 1, '0', '0', '', '', '2020-06-18 08:41:47', 'admin', '', NULL);
INSERT INTO `sys_comp` VALUES (1273447354850099201, '0', 1236303334564106350, '1236303334564106350,1', '北京分公司2', '北京有限公司分公司2', '44537,44551,44552', '', 4, '1', '0', '', '', '2020-06-18 10:48:04', '00214', '', NULL);
INSERT INTO `sys_comp` VALUES (1273453418250104834, '0', 1236303334564106350, '1236303334564106350', '北京分公司', '北京有限公司分公司', '44551,44552', '', 2, '0', '0', '', '', '2020-06-18 11:12:09', '00214', '', NULL);
INSERT INTO `sys_comp` VALUES (1273455559962390529, '1', 1273453418250104834, '1273453418250104834,1236303334564106350,1', '研发部', '北京分公司研发部', NULL, '', 0, '0', '0', '', '', '2020-06-18 11:20:40', '00214', '', NULL);
INSERT INTO `sys_comp` VALUES (1273455694884761602, '1', 1273453418250104834, '1273453418250104834,1236303334564106350', '销售部', '北京分公司销售部', NULL, '', 1, '0', '0', '', '', '2020-06-18 11:21:12', '00214', '', NULL);
INSERT INTO `sys_comp` VALUES (1273482974687432705, '1', 1273453418250104834, '1273453418250104834', '人事部', '北京分公司人事部', NULL, '', 5, '0', '0', '', '', '2020-06-18 13:09:36', '0224', '', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_comp_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_comp_dept`;
CREATE TABLE `sys_comp_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '地区ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司对应地区关系';

-- ----------------------------
-- Records of sys_comp_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `param_name` varchar(100) CHARACTER SET utf8 DEFAULT '' COMMENT '参数名称',
  `param_key` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '参数Key',
  `param_value` varchar(10000) CHARACTER SET utf8 DEFAULT '' COMMENT '参数值 Value',
  `config_type` char(1) CHARACTER SET utf8 DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `remark` varchar(500) CHARACTER SET utf8 DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新者',
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统配置信息表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_config` VALUES (1, '云存储', 'CLOUD_STORAGE_CONFIG_KEY', '{\"type\":1,\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"qiniuBucketName\":\"ios-app\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\"}', 'Y', '0', '云存储配置信息', '', '2019-12-24 10:12:02', NULL, '');
INSERT INTO `sys_config` VALUES (2, '项目标题', 'SYS_CONFIG_TITLE', 'J2eeFAST', 'Y', '0', '系统名称', '', '2019-12-24 10:12:03', '2020-05-14 22:31:50', 'admin');
INSERT INTO `sys_config` VALUES (4, '项目版本', 'SYS_CONFIG_VERSION', '2.4.5', 'Y', '0', '系统版本', '', '2019-12-24 10:12:07', '2020-06-01 19:30:18', 'admin');
INSERT INTO `sys_config` VALUES (5, '系统参数', 'SYS_CONFIG_KEY', '{\"login_maxCount\":100,\"login_NumCount\":3,\"lock_time\":5,\"company\":\"Powered By j2eefast\",\"copyrightYear\":\"2020\",\"ipc\":\"湘ICP备20005342号\"}', 'Y', '0', '系统参数配置、登陆错误次数锁定账户时间、所属公司', '', '2019-12-24 10:12:08', '2020-06-01 19:30:07', 'admin');
INSERT INTO `sys_config` VALUES (7, 'JS版本', 'SYS_CONFIG_DV_VERSION', '213213', 'Y', '0', 'JS\\CSS版本-日期表示', '', '2019-12-24 10:12:11', '2020-06-10 13:21:02', 'admin');
INSERT INTO `sys_config` VALUES (8, '项目小标题', 'SYS_CONFIG_TITLE_MINI', 'JFT', 'Y', '0', '系统简称', '', '2019-12-24 10:12:13', '2020-05-14 22:32:23', 'admin');
INSERT INTO `sys_config` VALUES (11, '上传路径', 'SYS_CONFIG_PROFILE', '/Users/huanzhou/j2eefastFile/uploadPath', 'Y', '0', '项目静态文件', '', '2019-12-24 10:12:18', '2020-06-09 14:40:55', 'admin');
INSERT INTO `sys_config` VALUES (12, ' 用户管理-账号初始密码', 'SYS_USER_INITPASSWORD', '123456', 'Y', '0', '用户初始密码', '', '2019-12-24 10:12:20', '2020-01-02 09:26:18', 'admin');
INSERT INTO `sys_config` VALUES (13, '项目页面压缩', 'SYS_COMPRESS', 'false', 'Y', '0', '项目输出前端页面是否压缩 true 压缩 false 不压缩 注意:开启页面压缩页面JS不能使用// 做注解 可以使用 /**/', 'admin', '2019-12-27 10:51:49', '2020-02-13 08:45:30', 'admin');
INSERT INTO `sys_config` VALUES (14, '登陆排挤', 'SYS_IS_LOGIN', '1', 'Y', '0', '同一账户只能一个人登陆 0 支持 1不支持', 'admin', '2020-01-10 18:50:31', '2019-12-23 01:40:16', 'admin');
INSERT INTO `sys_config` VALUES (15, '屏保时间', 'SYS_LOCK_SCEREEN', '{\"time\":30,\"flag\":true}', 'Y', '0', '是否开启true  false 自动屏保及时间(分钟)', 'admin', '2020-01-18 19:29:17', '2019-12-31 00:28:26', 'admin');
INSERT INTO `sys_config` VALUES (16, '主框架页-默认皮肤样式名称', 'SYS_INDEX_SKINNAME', 'skin-blue-light', 'Y', '0', 'skin-black-light、skin-black、skin-blue-light、skin-blue、skin-green-light、skin-green、skin-purple-light、skin-purple、skin-red-light、skin-red、skin-yellow-light、skin-yellow', 'admin', '2020-02-03 11:31:11', '2020-01-10 12:06:06', 'admin');
INSERT INTO `sys_config` VALUES (17, '项目文件库', 'SYS_CONFIG_FILE', '/Users/huanzhou/j2eefastFile/file/temp', 'Y', '0', '系统默认文件库', 'admin', '2020-02-13 14:56:22', '2020-06-09 14:41:26', 'admin');
INSERT INTO `sys_config` VALUES (1243831619548323842, 'TOP提示消失时间', 'SYS_TIP_TIME', '3', 'Y', '0', '分钟表示', 'admin', '2020-03-28 17:25:42', NULL, '');
INSERT INTO `sys_config` VALUES (1245316284947877890, '系统登陆页面默认主题', 'SYS_LOGIN_DEFAULT_VIEW', 'Gitee', 'Y', '0', '系统登陆页面默认主题', 'admin', '2020-04-05 16:01:07', '2020-04-05 07:03:11', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for sys_database
-- ----------------------------
DROP TABLE IF EXISTS `sys_database`;
CREATE TABLE `sys_database` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `db_name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '数据库名称(英文)获取标识',
  `jdbc_driver` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT 'jdbc的驱动类型',
  `user_name` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '数据库账号',
  `password` varchar(255) COLLATE utf8mb4_bin NOT NULL COMMENT '数据库密码',
  `jdbc_url` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '数据库连接',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '0 正常 1停用',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志删除标志 0：正常 1：删除',
  `enc_type` varchar(10) COLLATE utf8mb4_bin DEFAULT 'DEFAULT' COMMENT '加密标识',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='多源数据库配置表';

-- ----------------------------
-- Records of sys_database
-- ----------------------------
BEGIN;
INSERT INTO `sys_database` VALUES (1273978388352909313, 'MASTER', 'com.mysql.cj.jdbc.Driver', 'sFsQ1C9YHigj5OLlcr6llg==', 'hf80wyqjFYVSgvk8wMjHmynmMq8gzkc7', 'Epkirj7+3SC/bnl1x2FBKPr9P9trvXuJ3JHCgtUqMpC+wBfESyuCRwtyCp0CMRKg6r2vPvLGC/PQXPvF241RT7ApLam7jJxOCnKfLs0hSy84FmiH7C5g+Zq1h4sm5+zgUp5uOlJlyi/iYW7BhoQhV91sD3vpnjVDxwYbFt5zP/dXd1kD9XJgDIguYDErE6cW', '0', '0', 'ENC', '2020-06-19 21:58:11', 'system', NULL, NULL, '主数据源，项目启动数据源！');
COMMIT;

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) CHARACTER SET utf8 DEFAULT '' COMMENT '部门名称',
  `type` int(11) DEFAULT NULL COMMENT '类型  0: 地区 1:线路',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) CHARACTER SET utf8 DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT '',
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='部门管理/地区管理';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `id` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '样式属性（其他样式扩展）css类名（如：red）',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `is_sys` char(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '是否系统内置(Y 是 N否)',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `css_style` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT 'css样式（如：color:red)',
  `list_class` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '0', 'Y', '0', '', '', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '0', 'Y', '0', '', '', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-01 17:35:50', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '0', 'Y', '0', '', '', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2019-12-01 02:34:17', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', '0', 'Y', '0', 'color:#1ab394', 'primary', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-17 16:26:25', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', '0', 'Y', '0', 'color:#ed5565', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-17 16:26:06', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '0', 'Y', '0', '', '', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '0', 'Y', '0', '', '', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', '0', 'Y', '0', 'color:#aaa;', 'primary', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-17 16:32:11', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', '0', 'Y', '0', 'color:#ed5565', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-17 16:32:29', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '0', 'sys_notice_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-25 06:26:20', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '1', 'sys_notice_type', '', '0', 'Y', '0', '', 'danger', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-25 06:26:26', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '发布', '0', 'sys_notice_status', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-26 09:49:07', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '未发布', '1', 'sys_notice_status', '', '0', 'Y', '0', '', 'danger', 'Y', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-26 09:49:02', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '正常', '0', 'sys_user_show_hide', NULL, '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2019-12-19 17:39:34', '', NULL, '用户正常状态');
INSERT INTO `sys_dict_data` VALUES (30, 2, '禁用', '1', 'sys_user_show_hide', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2019-12-19 17:40:10', 'admin', '2019-12-01 02:54:23', '用户禁用状态');
INSERT INTO `sys_dict_data` VALUES (31, 1, '地区', '0', 'sys_dept_line', NULL, '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2019-12-22 13:07:31', '', NULL, '地区字典');
INSERT INTO `sys_dict_data` VALUES (32, 1, '线路', '1', 'sys_dept_line', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-22 13:08:02', 'admin', '2019-12-03 22:13:19', '线路显示');
INSERT INTO `sys_dict_data` VALUES (33, 0, '在线', '0', 'sys_monitor_online', '', '0', 'Y', '0', '', 'success', 'Y', 'admin', '2019-12-23 16:06:32', 'admin', '2019-12-05 00:31:38', '用户在线');
INSERT INTO `sys_dict_data` VALUES (34, 1, '离线', '1', 'sys_monitor_online', NULL, '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-23 16:07:07', '', NULL, '用户离线');
INSERT INTO `sys_dict_data` VALUES (35, 0, '成功', '00000', 'sys_login_status', NULL, '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2019-12-23 17:17:20', '', NULL, '登陆成功');
INSERT INTO `sys_dict_data` VALUES (36, 1, '失败', '-1', 'sys_login_status', NULL, '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-23 17:17:59', '', NULL, '其他失败情况');
INSERT INTO `sys_dict_data` VALUES (37, 0, '纸币', '1', 'sys_pay_type', 'label label-primary', '0', 'Y', '0', '', '', 'Y', 'admin', '2019-12-25 11:04:01', 'admin', '2019-12-30 02:22:06', '交易纸币');
INSERT INTO `sys_dict_data` VALUES (38, 1, '硬币', '2', 'sys_pay_type', 'label label-success', '0', 'Y', '0', '', '', 'N', 'admin', '2019-12-25 11:04:38', 'admin', '2019-12-30 02:22:22', '硬币类型');
INSERT INTO `sys_dict_data` VALUES (39, 2, '公交卡', '3', 'sys_pay_type', 'label label-warning', '0', 'Y', '0', '', '', 'N', 'admin', '2019-12-25 11:05:11', 'admin', '2019-12-30 02:22:55', '公交卡类型');
INSERT INTO `sys_dict_data` VALUES (40, 3, '微信', '4', 'sys_pay_type', 'label label-info', '0', 'Y', '0', '', '', 'N', 'admin', '2019-12-25 11:06:04', 'admin', '2019-12-30 02:23:18', '微信类型');
INSERT INTO `sys_dict_data` VALUES (41, 4, '支付宝', '5', 'sys_pay_type', 'label label-default', '0', 'Y', '0', '', '', 'N', 'admin', '2019-12-25 11:06:37', 'admin', '2019-12-30 02:23:33', '支付宝类型');
INSERT INTO `sys_dict_data` VALUES (42, 0, '空闲', '0000', 'sys_bag_status', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2019-12-25 16:40:03', 'admin', '2019-12-08 22:52:33', '钞袋空闲');
INSERT INTO `sys_dict_data` VALUES (43, 1, '使用中', '0001', 'sys_bag_status', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2019-12-25 16:41:08', 'admin', '2019-12-08 22:52:44', '钞袋使用中');
INSERT INTO `sys_dict_data` VALUES (44, 2, '清机完成未入胆', '0002', 'sys_bag_status', NULL, '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-25 16:42:20', '', NULL, '钞袋清机完成未入胆');
INSERT INTO `sys_dict_data` VALUES (45, 3, '钞袋在胆箱中', '0003', 'sys_bag_status', NULL, '0', 'Y', '0', '', 'info', 'N', 'admin', '2019-12-25 16:42:52', '', NULL, '钞袋胆箱中');
INSERT INTO `sys_dict_data` VALUES (46, 4, '清胆完成未入库', '0004', 'sys_bag_status', NULL, '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-25 16:43:27', '', NULL, '清单完成未入库');
INSERT INTO `sys_dict_data` VALUES (47, 5, '入库完成,等待处理', '0005', 'sys_bag_status', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2019-12-25 16:43:59', 'admin', '2019-12-08 22:52:22', '完成入库，未处理');
INSERT INTO `sys_dict_data` VALUES (48, 0, '初始密码', '0', 'sys_user_passwordModifySecurityLevel', '', '0', 'Y', '0', '', 'danger', 'Y', 'admin', '2019-12-29 17:33:11', 'admin', '2020-01-30 22:46:46', '用户密码为初始密码');
INSERT INTO `sys_dict_data` VALUES (49, 1, '非常弱', '1', 'sys_user_passwordModifySecurityLevel', NULL, '0', 'Y', '0', '', 'danger', 'N', 'admin', '2019-12-29 17:35:16', '', NULL, '密码等级');
INSERT INTO `sys_dict_data` VALUES (50, 2, '弱', '2', 'sys_user_passwordModifySecurityLevel', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2019-12-29 17:36:18', 'admin', '2019-12-11 01:50:28', '密码等级弱');
INSERT INTO `sys_dict_data` VALUES (51, 3, '一般', '3', 'sys_user_passwordModifySecurityLevel', NULL, '0', 'Y', '0', '', 'warning', 'N', 'admin', '2019-12-29 17:37:01', '', NULL, '密码等级一般');
INSERT INTO `sys_dict_data` VALUES (52, 4, '强', '4', 'sys_user_passwordModifySecurityLevel', NULL, '0', 'Y', '0', '', 'success', 'N', 'admin', '2019-12-29 17:37:54', '', NULL, '密码安全等级强');
INSERT INTO `sys_dict_data` VALUES (53, 5, '非常强', '5', 'sys_user_passwordModifySecurityLevel', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2019-12-29 17:38:25', 'admin', '2019-12-11 01:52:09', '密码等级非常强');
INSERT INTO `sys_dict_data` VALUES (54, 6, '安全', '6', 'sys_user_passwordModifySecurityLevel', NULL, '0', 'Y', '0', '', 'primary', 'N', 'admin', '2019-12-29 17:39:10', '', NULL, '密码等级安全');
INSERT INTO `sys_dict_data` VALUES (55, 7, '非常安全', '7', 'sys_user_passwordModifySecurityLevel', NULL, '0', 'Y', '0', '', 'primary', 'N', 'admin', '2019-12-29 17:39:37', '', NULL, '密码等级最高级别安全');
INSERT INTO `sys_dict_data` VALUES (56, 0, '中文(简体)', 'zh_CN', 'sys_lang_type', '', '0', 'Y', '0', '', 'default', 'Y', 'admin', '2020-01-05 14:39:47', 'admin', '2019-12-17 22:49:13', '中文');
INSERT INTO `sys_dict_data` VALUES (57, 1, 'English', 'en_US', 'sys_lang_type', '', '0', 'Y', '0', '', 'default', 'N', 'admin', '2020-01-05 14:40:32', 'admin', '2020-01-07 20:04:28', '英文字体');
INSERT INTO `sys_dict_data` VALUES (59, 1, '月报表', '1', 'bcs_poi_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2020-01-08 10:56:14', '', NULL, '月报表');
INSERT INTO `sys_dict_data` VALUES (64, 0, '主数据库', '0', 'sys_db', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-01-09 14:23:51', '', NULL, '主数据库');
INSERT INTO `sys_dict_data` VALUES (66, 2, '한국어', 'ko_KR', 'sys_lang_type', '', '0', 'Y', '0', '', 'default', 'N', 'admin', '2020-01-29 22:47:51', 'admin', '2020-01-08 07:15:59', '韩语');
INSERT INTO `sys_dict_data` VALUES (67, 3, '日本語', 'ja_JP', 'sys_lang_type', '', '0', 'Y', '0', '', 'default', 'N', 'admin', '2020-01-29 23:11:28', '', NULL, '日本语言');
INSERT INTO `sys_dict_data` VALUES (68, 4, '中文(繁體)', 'zh_TW', 'sys_lang_type', '', '0', 'Y', '0', '', 'default', 'N', 'admin', '2020-01-30 11:19:35', 'admin', '2020-05-14 22:11:01', '中文简体');
INSERT INTO `sys_dict_data` VALUES (69, 0, '目录', '0', 'sys_menu_type', 'label label-success', '0', 'Y', '0', '', '', 'N', 'admin', '2020-02-01 16:42:21', '', NULL, '菜单目录');
INSERT INTO `sys_dict_data` VALUES (70, 1, '菜单', '1', 'sys_menu_type', 'label label-primary', '0', 'Y', '0', '', '', 'Y', 'admin', '2020-02-01 16:44:06', '', NULL, '菜单');
INSERT INTO `sys_dict_data` VALUES (71, 2, '权限', '2', 'sys_menu_type', 'label label-warning', '0', 'Y', '0', '', '', 'N', 'admin', '2020-02-01 16:50:27', 'admin', '2020-01-11 22:49:48', '权限按钮');
INSERT INTO `sys_dict_data` VALUES (72, 0, 'Tab打开', '_tab', 'sys_menu_target', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-02-07 10:50:17', 'admin', '2020-01-12 22:10:20', '菜单打开已TAB形式打开');
INSERT INTO `sys_dict_data` VALUES (73, 1, '新窗口', '_blank', 'sys_menu_target', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-02-07 10:53:07', 'admin', '2020-01-12 22:10:31', '在新窗口打开_blank');
INSERT INTO `sys_dict_data` VALUES (74, 2, '弹出窗体', '_alert', 'sys_menu_target', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-02-07 10:54:51', 'admin', '2020-01-12 22:10:40', '弹出窗口形式');
INSERT INTO `sys_dict_data` VALUES (75, 3, '全屏', '_fullscreen', 'sys_menu_target', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-02-07 13:30:58', 'admin', '2020-01-12 22:24:11', '打开窗体全屏显示');
INSERT INTO `sys_dict_data` VALUES (82, 0, '默认', 'default', 'sys_table_actions_type', '', '0', 'N', '0', '', '', 'Y', 'admin', '2020-02-12 16:44:19', 'admin', '2020-01-16 13:21:34', '默认风格');
INSERT INTO `sys_dict_data` VALUES (83, 1, '图标', 'icon', 'sys_table_actions_type', '', '0', 'N', '0', '', '', 'N', 'admin', '2020-02-12 16:51:59', '', NULL, '操作按钮图标');
INSERT INTO `sys_dict_data` VALUES (84, 0, '正常', '0', 'sys_module_status', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-02-14 19:39:35', 'admin', '2020-01-17 16:12:38', '正常');
INSERT INTO `sys_dict_data` VALUES (85, 1, '停用', '1', 'sys_module_status', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-02-14 19:40:24', 'admin', '2020-01-20 23:52:10', '');
INSERT INTO `sys_dict_data` VALUES (86, 2, '未安装', '2', 'sys_module_status', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-02-14 19:41:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (87, 0, '高层', '1', 'sys_post_type', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-02-27 17:41:47', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (88, 1, '中层', '2', 'sys_post_type', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-02-27 17:42:20', 'admin', '2020-01-29 23:48:22', '');
INSERT INTO `sys_dict_data` VALUES (89, 2, '基层', '3', 'sys_post_type', '', '0', 'Y', '0', '', '', 'Y', 'admin', '2020-02-27 17:42:52', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (90, 3, '其他', '4', 'sys_post_type', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-02-27 17:44:11', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (91, 0, '正常', '0', 'sys_status', '', '0', 'Y', '0', 'color:#1ab394', 'default', 'Y', 'admin', '2020-02-27 18:04:01', 'admin', '2020-06-17 16:20:23', '正常');
INSERT INTO `sys_dict_data` VALUES (92, 1, '停用', '1', 'sys_status', '', '0', 'Y', '0', 'color:#ed5565', 'default', 'N', 'admin', '2020-02-27 18:04:21', 'admin', '2020-06-17 16:20:30', '');
INSERT INTO `sys_dict_data` VALUES (1243048136005525506, 3, '失效', '2', 'sys_notice_status', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-03-25 21:32:25', 'admin', '2020-02-25 06:42:17', '失效状态');
INSERT INTO `sys_dict_data` VALUES (1243462158207123457, 0, '普通', '0', 'sys_notice_level', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-03-27 16:57:36', '', NULL, '普通等级');
INSERT INTO `sys_dict_data` VALUES (1243462260573306881, 1, '紧急', '1', 'sys_notice_level', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-03-27 16:58:00', 'admin', '2020-02-26 10:07:36', '等级紧急');
INSERT INTO `sys_dict_data` VALUES (1243462373609799681, 2, '严重', '2', 'sys_notice_level', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-03-27 16:58:27', '', NULL, '等级严重');
INSERT INTO `sys_dict_data` VALUES (1246694957642915842, 0, 'Admin-LTE', 'Admin-LTE', 'sys_login_view', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-04-04 23:03:35', 'admin', '2020-04-06 16:58:43', '');
INSERT INTO `sys_dict_data` VALUES (1246695157451169794, 1, '高仿码云', 'Gitee', 'sys_login_view', '', '0', 'Y', '0', '', '', 'Y', 'admin', '2020-04-04 23:04:23', 'admin', '2020-03-05 14:57:16', '');
INSERT INTO `sys_dict_data` VALUES (1246999804745269250, 2, '高仿OsChina', 'OsChina', 'sys_login_view', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-04-05 19:14:56', '', NULL, '高仿OsChina');
INSERT INTO `sys_dict_data` VALUES (1247074141611454465, 3, '蓝色科技', 'Blue-Science', 'sys_login_view', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-04-06 00:10:20', '', NULL, '仿百度登陆');
INSERT INTO `sys_dict_data` VALUES (1250243358410100738, 0, '默认', 'DEFAULT', 'sys_db_encrypt_type', '', '0', 'Y', '0', '', 'info', 'Y', 'admin', '2020-04-14 18:03:40', '', NULL, '默认不加密明文存储');
INSERT INTO `sys_dict_data` VALUES (1250243543534096386, 1, '国密', 'SM4', 'sys_db_encrypt_type', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-04-14 18:04:24', 'admin', '2020-04-14 18:06:47', '国密算法加密');
INSERT INTO `sys_dict_data` VALUES (1250243880370262017, 2, 'DES', 'DES', 'sys_db_encrypt_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-04-14 18:05:44', '', NULL, 'DES算法加密');
INSERT INTO `sys_dict_data` VALUES (1250244110092292098, 3, 'ENC', 'ENC', 'sys_db_encrypt_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2020-04-14 18:06:39', 'admin', '2020-04-14 18:06:57', 'ENC算法加密');
INSERT INTO `sys_dict_data` VALUES (1250425838756929537, 0, 'Mysql', 'com.mysql.cj.jdbc.Driver', 'sys_db_driver_type', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-04-15 06:08:46', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1250426132769251329, 1, 'Oracle', 'oracle.jdbc.OracleDriver', 'sys_db_driver_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2020-04-15 06:09:57', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1250426268857638913, 2, 'Sql Server', 'net.sourceforge.jtds.jdbc.Driver', 'sys_db_driver_type', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-04-15 06:10:29', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1250426387174760450, 3, 'Postgre Sql', 'org.postgresql.Driver', 'sys_db_driver_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2020-04-15 06:10:57', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1251483713247899650, 0, '办公流程', 'office', 'sys_bpm_category', '', '0', 'Y', '0', '', 'success', 'Y', 'admin', '2020-04-18 04:12:23', 'admin', '2020-04-19 01:34:03', '');
INSERT INTO `sys_dict_data` VALUES (1251485000723066882, 1, '项目管理', 'project', 'sys_bpm_category', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-04-18 04:17:30', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1251775715659202562, 0, '激活', '1', 'sys_bpm_status', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2020-04-18 23:32:42', 'admin', '2020-04-21 18:00:56', '');
INSERT INTO `sys_dict_data` VALUES (1251776027023360002, 1, '挂起', '2', 'sys_bpm_status', '', '0', 'Y', '0', 'color:red', 'danger', 'N', 'admin', '2020-04-18 23:33:56', 'admin', '2020-04-19 01:28:32', '');
INSERT INTO `sys_dict_data` VALUES (1252216192816517122, 0, '事假', '0', 'sys_leave_type', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-04-20 04:43:00', 'admin', '2020-04-20 04:43:10', '');
INSERT INTO `sys_dict_data` VALUES (1252216336798584834, 1, '病假', '1', 'sys_leave_type', '', '0', 'Y', '0', '', 'success', 'N', 'admin', '2020-04-20 04:43:34', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1252216431539523586, 2, '婚嫁', '2', 'sys_leave_type', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-04-20 04:43:57', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1252216526460817409, 3, '丧假', '3', 'sys_leave_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-04-20 04:44:20', 'admin', '2020-04-20 04:44:49', '');
INSERT INTO `sys_dict_data` VALUES (1252216821798539265, 4, '产假', '4', 'sys_leave_type', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-04-20 04:45:30', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1252216888336977921, 5, '其他', '5', 'sys_leave_type', '', '0', 'Y', '0', '', 'default', 'N', 'admin', '2020-04-20 04:45:46', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1254031958289395713, 0, '一般', '50', 'sys_bpm_priority', '', '0', 'Y', '0', '', 'success', 'Y', 'admin', '2020-04-25 04:58:12', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1254032043152748546, 1, '重要', '100', 'sys_bpm_priority', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-04-25 04:58:33', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1254032114871152641, 2, '紧急', '150', 'sys_bpm_priority', '', '0', 'Y', '0', '', 'danger', 'N', 'admin', '2020-04-25 04:58:50', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1254646390153490434, 0, '结束', '0', 'sys_bpm_ins_status', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-04-26 21:39:44', 'admin', '2020-04-26 21:40:44', '');
INSERT INTO `sys_dict_data` VALUES (1254646515491876865, 1, '进行中', '1', 'sys_bpm_ins_status', '', '0', 'Y', '0', '', 'danger', 'Y', 'admin', '2020-04-26 21:40:14', 'admin', '2020-04-26 21:40:49', '');
INSERT INTO `sys_dict_data` VALUES (1254761798395215873, 0, '弹出窗体', '0', 'sys_bpm_from_type', '', '0', 'Y', '0', '', 'default', 'Y', 'admin', '2020-04-27 05:18:20', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1254761912262180866, 1, 'TAB打开', '1', 'sys_bpm_from_type', '', '0', 'Y', '0', '', '', 'Y', 'admin', '2020-04-27 05:18:47', '', NULL, '');
INSERT INTO `sys_dict_data` VALUES (1268422308059656194, 0, '省', '1', 'sys_area_type', '', '0', 'Y', '0', '', 'primary', 'Y', 'admin', '2020-06-03 22:00:19', '', NULL, '省级');
INSERT INTO `sys_dict_data` VALUES (1268425844520640513, 1, '市', '2', 'sys_area_type', '', '0', 'Y', '0', '', 'info', 'N', 'admin', '2020-06-03 22:14:22', '', NULL, '地级市');
INSERT INTO `sys_dict_data` VALUES (1268425989039579138, 2, '区县', '3', 'sys_area_type', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2020-06-03 22:14:57', '', NULL, '区县');
INSERT INTO `sys_dict_data` VALUES (1268426099387523074, 3, '街道镇', '4', 'sys_area_type', '', '0', 'Y', '0', '', 'warning', 'N', 'admin', '2020-06-03 22:15:23', '', NULL, '街道镇');
INSERT INTO `sys_dict_data` VALUES (1270529903648923649, 0, '公司', '0', 'sys_comp_type', '', '0', 'Y', '0', '', 'primary', 'N', 'admin', '2020-06-10 09:35:09', 'admin', '2020-06-11 13:35:48', '');
INSERT INTO `sys_dict_data` VALUES (1270529977808412673, 1, '部门', '1', 'sys_comp_type', '', '0', 'Y', '0', '', 'success', 'Y', 'admin', '2020-06-10 09:35:27', 'admin', '2020-06-11 13:35:52', '');
INSERT INTO `sys_dict_data` VALUES (1273060441177722881, 0, '未设置', '0', 'sys_role_data_scope', '', '0', 'Y', '0', 'color:#aaa;', '', 'Y', 'admin', '2020-06-17 09:10:36', 'admin', '2020-06-17 14:11:39', '');
INSERT INTO `sys_dict_data` VALUES (1273060648707690497, 6, '所有数据权限', '6', 'sys_role_data_scope', '', '0', 'Y', '0', 'color:#c243d6;', 'default', 'N', 'admin', '2020-06-17 09:11:26', 'admin', '2020-06-17 21:43:09', '');
INSERT INTO `sys_dict_data` VALUES (1273060969412562946, 5, '自定义数据权限', '5', 'sys_role_data_scope', '', '0', 'Y', '0', 'color:#1e5edb', '', 'N', 'admin', '2020-06-17 09:12:42', 'admin', '2020-06-17 21:42:46', '');
INSERT INTO `sys_dict_data` VALUES (1273061086102294530, 4, '本部门数据权限', '4', 'sys_role_data_scope', '', '0', 'Y', '0', '', '', 'N', 'admin', '2020-06-17 09:13:10', 'admin', '2020-06-17 21:42:21', '');
INSERT INTO `sys_dict_data` VALUES (1273061265429762049, 3, '本部门及以下数据权限', '3', 'sys_role_data_scope', '', '0', 'Y', '0', 'color: #f39c12', '', 'N', 'admin', '2020-06-17 09:13:53', 'admin', '2020-06-17 21:41:57', '');
INSERT INTO `sys_dict_data` VALUES (1273065080493182977, 1, '仅本人数据权限', '1', 'sys_role_data_scope', '', '0', 'Y', '0', 'color:#00a65a', '', 'N', 'admin', '2020-06-17 09:29:02', 'admin', '2020-06-17 21:43:18', '');
INSERT INTO `sys_dict_data` VALUES (1273249422590894082, 2, '本公司及以下数据', '2', 'sys_role_data_scope', '', '0', 'Y', '0', 'color:#d9534f', '', 'N', 'admin', '2020-06-17 21:41:33', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `id` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `is_sys` char(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '是否系统内置(Y 是 N否)',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `sys_dict_type` VALUES (1106120265689055233, '状态', 'sys_status', 'Y', '0', '0', 'admin', '2020-02-27 18:03:27', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (1106120532442595330, '用户性别', 'sys_user_sex', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (1106120574163337218, '菜单状态', 'sys_show_hide', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-01 16:54:07', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (1106120645697191938, '系统开关', 'sys_normal_disable', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (1106120699468169217, '任务状态', 'sys_job_status', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (1106120784318939137, '任务分组', 'sys_job_group', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (1106120825993543682, '系统是否', 'sys_yes_no', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (1106120875872206849, '公告类型', 'sys_notice_type', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-25 06:24:58', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (1106120935070613505, '公告状态', 'sys_notice_status', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-25 06:25:08', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (1106120968910258177, '操作类型', 'sys_oper_type', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (1149218674746355713, '系统状态', 'sys_common_status', 'Y', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (1160532775455047681, '模块状态标志', 'sys_module_status', 'Y', '0', '0', 'admin', '2020-02-14 18:49:20', '', NULL, '模块状态标志');
INSERT INTO `sys_dict_type` VALUES (1160532886713155585, '岗位分类', 'sys_post_type', 'Y', '0', '0', 'admin', '2020-02-27 17:40:05', '', NULL, '岗位分类');
INSERT INTO `sys_dict_type` VALUES (1160533264645111810, '用户状态0', 'sys_user_show_hide', 'Y', '0', '0', 'admin', '2019-12-19 17:38:33', 'admin', '2019-12-01 23:49:00', '用户状态列表');
INSERT INTO `sys_dict_type` VALUES (1160533377727741954, '地区线路', 'sys_dept_line', 'Y', '0', '0', 'admin', '2019-12-22 12:57:47', '', NULL, '地区线路标志');
INSERT INTO `sys_dict_type` VALUES (1160533455343337474, '用户监控', 'sys_monitor_online', 'Y', '0', '0', 'admin', '2019-12-23 15:52:34', '', NULL, '用户监控状态');
INSERT INTO `sys_dict_type` VALUES (1160533574843252737, '登陆状态', 'sys_login_status', 'Y', '0', '0', 'admin', '2019-12-23 17:15:43', '', NULL, '系统登陆状态');
INSERT INTO `sys_dict_type` VALUES (1160533625615302658, '密码安全策略', 'sys_user_passwordModifySecurityLevel', 'Y', '0', '0', 'admin', '2019-12-29 17:30:21', '', NULL, '密码安全等级');
INSERT INTO `sys_dict_type` VALUES (1160533707215486977, '国际化语言类型', 'sys_lang_type', 'Y', '0', '0', 'admin', '2020-01-05 14:15:33', 'admin', '2020-04-09 18:11:12', '国际化语言');
INSERT INTO `sys_dict_type` VALUES (1160533765403066370, '数据库类型', 'sys_db', 'Y', '0', '0', 'admin', '2020-01-09 14:21:58', 'admin', '2020-01-02 08:27:14', '数据库类型');
INSERT INTO `sys_dict_type` VALUES (1160533863834992641, '菜单类型', 'sys_menu_type', 'Y', '0', '0', 'admin', '2020-02-01 16:39:17', '', NULL, '菜单类型');
INSERT INTO `sys_dict_type` VALUES (1160533945309347841, '菜单目标', 'sys_menu_target', 'Y', '0', '0', 'admin', '2020-02-07 10:46:07', '', NULL, '左侧菜单打开呈现方式');
INSERT INTO `sys_dict_type` VALUES (1160534007389241346, '表格操作风格', 'sys_table_actions_type', 'Y', '0', '0', 'admin', '2020-02-12 16:43:07', 'admin', '2020-01-16 23:41:47', '菜单表格操作按钮风格');
INSERT INTO `sys_dict_type` VALUES (1243461975188668417, '公告等级', 'sys_notice_level', 'Y', '0', '0', 'admin', '2020-03-27 16:56:52', '', NULL, '公告等级 等级 0 普通 1紧急 2严重');
INSERT INTO `sys_dict_type` VALUES (1246694124452814850, '登录页面', 'sys_login_view', 'Y', '0', '0', 'admin', '2020-04-04 23:00:16', '', NULL, '登录页面视图风格');
INSERT INTO `sys_dict_type` VALUES (1250242290494164994, '多源数据加密类型', 'sys_db_encrypt_type', 'Y', '0', '0', 'admin', '2020-04-14 17:59:25', 'admin', '2020-04-14 18:02:38', '针对数据库连接中敏感字段加密(连接账号、密码、url)');
INSERT INTO `sys_dict_type` VALUES (1250425576013144065, '驱动类型', 'sys_db_driver_type', 'Y', '0', '0', 'admin', '2020-04-15 06:07:44', '', NULL, '数据库驱动类型');
INSERT INTO `sys_dict_type` VALUES (1251483362960601089, '流程分类', 'sys_bpm_category', 'Y', '0', '0', 'admin', '2020-04-18 04:11:00', 'admin', '2020-04-19 01:33:04', '业务流程分类');
INSERT INTO `sys_dict_type` VALUES (1251775275764793345, '业务流程状态', 'sys_bpm_status', 'Y', '0', '0', 'admin', '2020-04-18 23:30:57', 'admin', '2020-04-18 23:31:20', '业务流程状态');
INSERT INTO `sys_dict_type` VALUES (1252214983749668865, '请假类型', 'sys_leave_type', 'Y', '0', '0', 'admin', '2020-04-20 04:38:12', '', NULL, '');
INSERT INTO `sys_dict_type` VALUES (1254031180950646785, '任务优先级', 'sys_bpm_priority', 'Y', '0', '0', 'admin', '2020-04-25 04:55:07', '', NULL, '流程任务任务优先级');
INSERT INTO `sys_dict_type` VALUES (1254646232007258113, '流程实例状态', 'sys_bpm_ins_status', 'Y', '0', '0', 'admin', '2020-04-26 21:39:07', '', NULL, '进行中，结束');
INSERT INTO `sys_dict_type` VALUES (1254761249419542530, '流程表单形式', 'sys_bpm_from_type', 'Y', '0', '0', 'admin', '2020-04-27 05:16:09', '', NULL, '流程表单展现形式');
INSERT INTO `sys_dict_type` VALUES (1268419748816990209, '行政区域等级', 'sys_area_type', 'Y', '0', '0', 'admin', '2020-06-03 21:50:09', '', NULL, '行政区域等级');
INSERT INTO `sys_dict_type` VALUES (1270529786241966082, '公司组织类型', 'sys_comp_type', 'Y', '0', '0', 'admin', '2020-06-10 09:34:41', '', NULL, '公司组织类型');
INSERT INTO `sys_dict_type` VALUES (1273060212370051073, '角色数据权限范围', 'sys_role_data_scope', 'Y', '0', '0', 'admin', '2020-06-17 09:09:42', '', NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_index
-- ----------------------------
DROP TABLE IF EXISTS `sys_index`;
CREATE TABLE `sys_index` (
  `help_topic_id` bigint(20) NOT NULL COMMENT '连续ID',
  `temp` varchar(5) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`help_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统数据库获取连续id';

-- ----------------------------
-- Records of sys_index
-- ----------------------------
BEGIN;
INSERT INTO `sys_index` VALUES (0, '');
INSERT INTO `sys_index` VALUES (1, '');
INSERT INTO `sys_index` VALUES (2, '');
INSERT INTO `sys_index` VALUES (3, '');
INSERT INTO `sys_index` VALUES (4, '');
INSERT INTO `sys_index` VALUES (5, '');
INSERT INTO `sys_index` VALUES (6, '');
INSERT INTO `sys_index` VALUES (7, '');
INSERT INTO `sys_index` VALUES (8, '');
INSERT INTO `sys_index` VALUES (9, '');
INSERT INTO `sys_index` VALUES (10, '');
INSERT INTO `sys_index` VALUES (11, '');
INSERT INTO `sys_index` VALUES (12, '');
INSERT INTO `sys_index` VALUES (13, '');
INSERT INTO `sys_index` VALUES (14, '');
INSERT INTO `sys_index` VALUES (15, '');
INSERT INTO `sys_index` VALUES (16, '');
INSERT INTO `sys_index` VALUES (17, '');
INSERT INTO `sys_index` VALUES (18, '');
INSERT INTO `sys_index` VALUES (19, '');
INSERT INTO `sys_index` VALUES (20, '');
INSERT INTO `sys_index` VALUES (21, '');
INSERT INTO `sys_index` VALUES (22, '');
INSERT INTO `sys_index` VALUES (23, '');
INSERT INTO `sys_index` VALUES (24, '');
INSERT INTO `sys_index` VALUES (25, '');
INSERT INTO `sys_index` VALUES (26, '');
INSERT INTO `sys_index` VALUES (27, '');
INSERT INTO `sys_index` VALUES (28, '');
INSERT INTO `sys_index` VALUES (29, '');
INSERT INTO `sys_index` VALUES (30, '');
INSERT INTO `sys_index` VALUES (31, '');
INSERT INTO `sys_index` VALUES (32, '');
INSERT INTO `sys_index` VALUES (33, '');
INSERT INTO `sys_index` VALUES (34, '');
INSERT INTO `sys_index` VALUES (35, '');
INSERT INTO `sys_index` VALUES (36, '');
INSERT INTO `sys_index` VALUES (37, '');
INSERT INTO `sys_index` VALUES (38, '');
INSERT INTO `sys_index` VALUES (39, '');
INSERT INTO `sys_index` VALUES (40, '');
INSERT INTO `sys_index` VALUES (41, '');
INSERT INTO `sys_index` VALUES (42, '');
INSERT INTO `sys_index` VALUES (43, '');
INSERT INTO `sys_index` VALUES (44, '');
INSERT INTO `sys_index` VALUES (45, '');
INSERT INTO `sys_index` VALUES (46, '');
INSERT INTO `sys_index` VALUES (47, '');
INSERT INTO `sys_index` VALUES (48, '');
INSERT INTO `sys_index` VALUES (49, '');
INSERT INTO `sys_index` VALUES (50, '');
INSERT INTO `sys_index` VALUES (51, '');
INSERT INTO `sys_index` VALUES (52, '');
INSERT INTO `sys_index` VALUES (53, '');
INSERT INTO `sys_index` VALUES (54, '');
INSERT INTO `sys_index` VALUES (55, '');
INSERT INTO `sys_index` VALUES (56, '');
INSERT INTO `sys_index` VALUES (57, '');
INSERT INTO `sys_index` VALUES (58, '');
INSERT INTO `sys_index` VALUES (59, '');
INSERT INTO `sys_index` VALUES (60, '');
INSERT INTO `sys_index` VALUES (61, '');
INSERT INTO `sys_index` VALUES (62, '');
INSERT INTO `sys_index` VALUES (63, '');
INSERT INTO `sys_index` VALUES (64, '');
INSERT INTO `sys_index` VALUES (65, '');
INSERT INTO `sys_index` VALUES (66, '');
INSERT INTO `sys_index` VALUES (67, '');
INSERT INTO `sys_index` VALUES (68, '');
INSERT INTO `sys_index` VALUES (69, '');
INSERT INTO `sys_index` VALUES (70, '');
INSERT INTO `sys_index` VALUES (71, '');
INSERT INTO `sys_index` VALUES (72, '');
INSERT INTO `sys_index` VALUES (73, '');
INSERT INTO `sys_index` VALUES (74, '');
INSERT INTO `sys_index` VALUES (75, '');
INSERT INTO `sys_index` VALUES (76, '');
INSERT INTO `sys_index` VALUES (77, '');
INSERT INTO `sys_index` VALUES (78, '');
INSERT INTO `sys_index` VALUES (79, '');
INSERT INTO `sys_index` VALUES (80, '');
INSERT INTO `sys_index` VALUES (81, '');
INSERT INTO `sys_index` VALUES (82, '');
INSERT INTO `sys_index` VALUES (83, '');
INSERT INTO `sys_index` VALUES (84, '');
INSERT INTO `sys_index` VALUES (85, '');
INSERT INTO `sys_index` VALUES (86, '');
INSERT INTO `sys_index` VALUES (87, '');
INSERT INTO `sys_index` VALUES (88, '');
INSERT INTO `sys_index` VALUES (89, '');
INSERT INTO `sys_index` VALUES (90, '');
INSERT INTO `sys_index` VALUES (91, '');
INSERT INTO `sys_index` VALUES (92, '');
INSERT INTO `sys_index` VALUES (93, '');
INSERT INTO `sys_index` VALUES (94, '');
INSERT INTO `sys_index` VALUES (95, '');
INSERT INTO `sys_index` VALUES (96, '');
INSERT INTO `sys_index` VALUES (97, '');
INSERT INTO `sys_index` VALUES (98, '');
INSERT INTO `sys_index` VALUES (99, '');
INSERT INTO `sys_index` VALUES (100, '');
INSERT INTO `sys_index` VALUES (101, '');
INSERT INTO `sys_index` VALUES (102, '');
INSERT INTO `sys_index` VALUES (103, '');
INSERT INTO `sys_index` VALUES (104, '');
INSERT INTO `sys_index` VALUES (105, '');
INSERT INTO `sys_index` VALUES (106, '');
INSERT INTO `sys_index` VALUES (107, '');
INSERT INTO `sys_index` VALUES (108, '');
INSERT INTO `sys_index` VALUES (109, '');
INSERT INTO `sys_index` VALUES (110, '');
INSERT INTO `sys_index` VALUES (111, '');
INSERT INTO `sys_index` VALUES (112, '');
INSERT INTO `sys_index` VALUES (113, '');
INSERT INTO `sys_index` VALUES (114, '');
INSERT INTO `sys_index` VALUES (115, '');
INSERT INTO `sys_index` VALUES (116, '');
INSERT INTO `sys_index` VALUES (117, '');
INSERT INTO `sys_index` VALUES (118, '');
INSERT INTO `sys_index` VALUES (119, '');
INSERT INTO `sys_index` VALUES (120, '');
INSERT INTO `sys_index` VALUES (121, '');
INSERT INTO `sys_index` VALUES (122, '');
INSERT INTO `sys_index` VALUES (123, '');
INSERT INTO `sys_index` VALUES (124, '');
INSERT INTO `sys_index` VALUES (125, '');
INSERT INTO `sys_index` VALUES (126, '');
INSERT INTO `sys_index` VALUES (127, '');
INSERT INTO `sys_index` VALUES (128, '');
INSERT INTO `sys_index` VALUES (129, '');
INSERT INTO `sys_index` VALUES (130, '');
INSERT INTO `sys_index` VALUES (131, '');
INSERT INTO `sys_index` VALUES (132, '');
INSERT INTO `sys_index` VALUES (133, '');
INSERT INTO `sys_index` VALUES (134, '');
INSERT INTO `sys_index` VALUES (135, '');
INSERT INTO `sys_index` VALUES (136, '');
INSERT INTO `sys_index` VALUES (137, '');
INSERT INTO `sys_index` VALUES (138, '');
INSERT INTO `sys_index` VALUES (139, '');
INSERT INTO `sys_index` VALUES (140, '');
INSERT INTO `sys_index` VALUES (141, '');
INSERT INTO `sys_index` VALUES (142, '');
INSERT INTO `sys_index` VALUES (143, '');
INSERT INTO `sys_index` VALUES (144, '');
INSERT INTO `sys_index` VALUES (145, '');
INSERT INTO `sys_index` VALUES (146, '');
INSERT INTO `sys_index` VALUES (147, '');
INSERT INTO `sys_index` VALUES (148, '');
INSERT INTO `sys_index` VALUES (149, '');
INSERT INTO `sys_index` VALUES (150, '');
INSERT INTO `sys_index` VALUES (151, '');
INSERT INTO `sys_index` VALUES (152, '');
INSERT INTO `sys_index` VALUES (153, '');
INSERT INTO `sys_index` VALUES (154, '');
INSERT INTO `sys_index` VALUES (155, '');
INSERT INTO `sys_index` VALUES (156, '');
INSERT INTO `sys_index` VALUES (157, '');
INSERT INTO `sys_index` VALUES (158, '');
INSERT INTO `sys_index` VALUES (159, '');
INSERT INTO `sys_index` VALUES (160, '');
INSERT INTO `sys_index` VALUES (161, '');
INSERT INTO `sys_index` VALUES (162, '');
INSERT INTO `sys_index` VALUES (163, '');
INSERT INTO `sys_index` VALUES (164, '');
INSERT INTO `sys_index` VALUES (165, '');
INSERT INTO `sys_index` VALUES (166, '');
INSERT INTO `sys_index` VALUES (167, '');
INSERT INTO `sys_index` VALUES (168, '');
INSERT INTO `sys_index` VALUES (169, '');
INSERT INTO `sys_index` VALUES (170, '');
INSERT INTO `sys_index` VALUES (171, '');
INSERT INTO `sys_index` VALUES (172, '');
INSERT INTO `sys_index` VALUES (173, '');
INSERT INTO `sys_index` VALUES (174, '');
INSERT INTO `sys_index` VALUES (175, '');
INSERT INTO `sys_index` VALUES (176, '');
INSERT INTO `sys_index` VALUES (177, '');
INSERT INTO `sys_index` VALUES (178, '');
INSERT INTO `sys_index` VALUES (179, '');
INSERT INTO `sys_index` VALUES (180, '');
INSERT INTO `sys_index` VALUES (181, '');
INSERT INTO `sys_index` VALUES (182, '');
INSERT INTO `sys_index` VALUES (183, '');
INSERT INTO `sys_index` VALUES (184, '');
INSERT INTO `sys_index` VALUES (185, '');
INSERT INTO `sys_index` VALUES (186, '');
INSERT INTO `sys_index` VALUES (187, '');
INSERT INTO `sys_index` VALUES (188, '');
INSERT INTO `sys_index` VALUES (189, '');
INSERT INTO `sys_index` VALUES (190, '');
INSERT INTO `sys_index` VALUES (191, '');
INSERT INTO `sys_index` VALUES (192, '');
INSERT INTO `sys_index` VALUES (193, '');
INSERT INTO `sys_index` VALUES (194, '');
INSERT INTO `sys_index` VALUES (195, '');
INSERT INTO `sys_index` VALUES (196, '');
INSERT INTO `sys_index` VALUES (197, '');
INSERT INTO `sys_index` VALUES (198, '');
INSERT INTO `sys_index` VALUES (199, '');
INSERT INTO `sys_index` VALUES (200, '');
INSERT INTO `sys_index` VALUES (201, '');
INSERT INTO `sys_index` VALUES (202, '');
INSERT INTO `sys_index` VALUES (203, '');
INSERT INTO `sys_index` VALUES (204, '');
INSERT INTO `sys_index` VALUES (205, '');
INSERT INTO `sys_index` VALUES (206, '');
INSERT INTO `sys_index` VALUES (207, '');
INSERT INTO `sys_index` VALUES (208, '');
INSERT INTO `sys_index` VALUES (209, '');
INSERT INTO `sys_index` VALUES (210, '');
INSERT INTO `sys_index` VALUES (211, '');
INSERT INTO `sys_index` VALUES (212, '');
INSERT INTO `sys_index` VALUES (213, '');
INSERT INTO `sys_index` VALUES (214, '');
INSERT INTO `sys_index` VALUES (215, '');
INSERT INTO `sys_index` VALUES (216, '');
INSERT INTO `sys_index` VALUES (217, '');
INSERT INTO `sys_index` VALUES (218, '');
INSERT INTO `sys_index` VALUES (219, '');
INSERT INTO `sys_index` VALUES (220, '');
INSERT INTO `sys_index` VALUES (221, '');
INSERT INTO `sys_index` VALUES (222, '');
INSERT INTO `sys_index` VALUES (223, '');
INSERT INTO `sys_index` VALUES (224, '');
INSERT INTO `sys_index` VALUES (225, '');
INSERT INTO `sys_index` VALUES (226, '');
INSERT INTO `sys_index` VALUES (227, '');
INSERT INTO `sys_index` VALUES (228, '');
INSERT INTO `sys_index` VALUES (229, '');
INSERT INTO `sys_index` VALUES (230, '');
INSERT INTO `sys_index` VALUES (231, '');
INSERT INTO `sys_index` VALUES (232, '');
INSERT INTO `sys_index` VALUES (233, '');
INSERT INTO `sys_index` VALUES (234, '');
INSERT INTO `sys_index` VALUES (235, '');
INSERT INTO `sys_index` VALUES (236, '');
INSERT INTO `sys_index` VALUES (237, '');
INSERT INTO `sys_index` VALUES (238, '');
INSERT INTO `sys_index` VALUES (239, '');
INSERT INTO `sys_index` VALUES (240, '');
INSERT INTO `sys_index` VALUES (241, '');
INSERT INTO `sys_index` VALUES (242, '');
INSERT INTO `sys_index` VALUES (243, '');
INSERT INTO `sys_index` VALUES (244, '');
INSERT INTO `sys_index` VALUES (245, '');
INSERT INTO `sys_index` VALUES (246, '');
INSERT INTO `sys_index` VALUES (247, '');
INSERT INTO `sys_index` VALUES (248, '');
INSERT INTO `sys_index` VALUES (249, '');
INSERT INTO `sys_index` VALUES (250, '');
INSERT INTO `sys_index` VALUES (251, '');
INSERT INTO `sys_index` VALUES (252, '');
INSERT INTO `sys_index` VALUES (253, '');
INSERT INTO `sys_index` VALUES (254, '');
INSERT INTO `sys_index` VALUES (255, '');
INSERT INTO `sys_index` VALUES (256, '');
INSERT INTO `sys_index` VALUES (257, '');
INSERT INTO `sys_index` VALUES (258, '');
INSERT INTO `sys_index` VALUES (259, '');
INSERT INTO `sys_index` VALUES (260, '');
INSERT INTO `sys_index` VALUES (261, '');
INSERT INTO `sys_index` VALUES (262, '');
INSERT INTO `sys_index` VALUES (263, '');
INSERT INTO `sys_index` VALUES (264, '');
INSERT INTO `sys_index` VALUES (265, '');
INSERT INTO `sys_index` VALUES (266, '');
INSERT INTO `sys_index` VALUES (267, '');
INSERT INTO `sys_index` VALUES (268, '');
INSERT INTO `sys_index` VALUES (269, '');
INSERT INTO `sys_index` VALUES (270, '');
INSERT INTO `sys_index` VALUES (271, '');
INSERT INTO `sys_index` VALUES (272, '');
INSERT INTO `sys_index` VALUES (273, '');
INSERT INTO `sys_index` VALUES (274, '');
INSERT INTO `sys_index` VALUES (275, '');
INSERT INTO `sys_index` VALUES (276, '');
INSERT INTO `sys_index` VALUES (277, '');
INSERT INTO `sys_index` VALUES (278, '');
INSERT INTO `sys_index` VALUES (279, '');
INSERT INTO `sys_index` VALUES (280, '');
INSERT INTO `sys_index` VALUES (281, '');
INSERT INTO `sys_index` VALUES (282, '');
INSERT INTO `sys_index` VALUES (283, '');
INSERT INTO `sys_index` VALUES (284, '');
INSERT INTO `sys_index` VALUES (285, '');
INSERT INTO `sys_index` VALUES (286, '');
INSERT INTO `sys_index` VALUES (287, '');
INSERT INTO `sys_index` VALUES (288, '');
INSERT INTO `sys_index` VALUES (289, '');
INSERT INTO `sys_index` VALUES (290, '');
INSERT INTO `sys_index` VALUES (291, '');
INSERT INTO `sys_index` VALUES (292, '');
INSERT INTO `sys_index` VALUES (293, '');
INSERT INTO `sys_index` VALUES (294, '');
INSERT INTO `sys_index` VALUES (295, '');
INSERT INTO `sys_index` VALUES (296, '');
INSERT INTO `sys_index` VALUES (297, '');
INSERT INTO `sys_index` VALUES (298, '');
INSERT INTO `sys_index` VALUES (299, '');
INSERT INTO `sys_index` VALUES (300, '');
INSERT INTO `sys_index` VALUES (301, '');
INSERT INTO `sys_index` VALUES (302, '');
INSERT INTO `sys_index` VALUES (303, '');
INSERT INTO `sys_index` VALUES (304, '');
INSERT INTO `sys_index` VALUES (305, '');
INSERT INTO `sys_index` VALUES (306, '');
INSERT INTO `sys_index` VALUES (307, '');
INSERT INTO `sys_index` VALUES (308, '');
INSERT INTO `sys_index` VALUES (309, '');
INSERT INTO `sys_index` VALUES (310, '');
INSERT INTO `sys_index` VALUES (311, '');
INSERT INTO `sys_index` VALUES (312, '');
INSERT INTO `sys_index` VALUES (313, '');
INSERT INTO `sys_index` VALUES (314, '');
INSERT INTO `sys_index` VALUES (315, '');
INSERT INTO `sys_index` VALUES (316, '');
INSERT INTO `sys_index` VALUES (317, '');
INSERT INTO `sys_index` VALUES (318, '');
INSERT INTO `sys_index` VALUES (319, '');
INSERT INTO `sys_index` VALUES (320, '');
INSERT INTO `sys_index` VALUES (321, '');
INSERT INTO `sys_index` VALUES (322, '');
INSERT INTO `sys_index` VALUES (323, '');
INSERT INTO `sys_index` VALUES (324, '');
INSERT INTO `sys_index` VALUES (325, '');
INSERT INTO `sys_index` VALUES (326, '');
INSERT INTO `sys_index` VALUES (327, '');
INSERT INTO `sys_index` VALUES (328, '');
INSERT INTO `sys_index` VALUES (329, '');
INSERT INTO `sys_index` VALUES (330, '');
INSERT INTO `sys_index` VALUES (331, '');
INSERT INTO `sys_index` VALUES (332, '');
INSERT INTO `sys_index` VALUES (333, '');
INSERT INTO `sys_index` VALUES (334, '');
INSERT INTO `sys_index` VALUES (335, '');
INSERT INTO `sys_index` VALUES (336, '');
INSERT INTO `sys_index` VALUES (337, '');
INSERT INTO `sys_index` VALUES (338, '');
INSERT INTO `sys_index` VALUES (339, '');
INSERT INTO `sys_index` VALUES (340, '');
INSERT INTO `sys_index` VALUES (341, '');
INSERT INTO `sys_index` VALUES (342, '');
INSERT INTO `sys_index` VALUES (343, '');
INSERT INTO `sys_index` VALUES (344, '');
INSERT INTO `sys_index` VALUES (345, '');
INSERT INTO `sys_index` VALUES (346, '');
INSERT INTO `sys_index` VALUES (347, '');
INSERT INTO `sys_index` VALUES (348, '');
INSERT INTO `sys_index` VALUES (349, '');
INSERT INTO `sys_index` VALUES (350, '');
INSERT INTO `sys_index` VALUES (351, '');
INSERT INTO `sys_index` VALUES (352, '');
INSERT INTO `sys_index` VALUES (353, '');
INSERT INTO `sys_index` VALUES (354, '');
INSERT INTO `sys_index` VALUES (355, '');
INSERT INTO `sys_index` VALUES (356, '');
INSERT INTO `sys_index` VALUES (357, '');
INSERT INTO `sys_index` VALUES (358, '');
INSERT INTO `sys_index` VALUES (359, '');
INSERT INTO `sys_index` VALUES (360, '');
INSERT INTO `sys_index` VALUES (361, '');
INSERT INTO `sys_index` VALUES (362, '');
INSERT INTO `sys_index` VALUES (363, '');
INSERT INTO `sys_index` VALUES (364, '');
INSERT INTO `sys_index` VALUES (365, '');
INSERT INTO `sys_index` VALUES (366, '');
INSERT INTO `sys_index` VALUES (367, '');
INSERT INTO `sys_index` VALUES (368, '');
INSERT INTO `sys_index` VALUES (369, '');
INSERT INTO `sys_index` VALUES (370, '');
INSERT INTO `sys_index` VALUES (371, '');
INSERT INTO `sys_index` VALUES (372, '');
INSERT INTO `sys_index` VALUES (373, '');
INSERT INTO `sys_index` VALUES (374, '');
INSERT INTO `sys_index` VALUES (375, '');
INSERT INTO `sys_index` VALUES (376, '');
INSERT INTO `sys_index` VALUES (377, '');
INSERT INTO `sys_index` VALUES (378, '');
INSERT INTO `sys_index` VALUES (379, '');
INSERT INTO `sys_index` VALUES (380, '');
INSERT INTO `sys_index` VALUES (381, '');
INSERT INTO `sys_index` VALUES (382, '');
INSERT INTO `sys_index` VALUES (383, '');
INSERT INTO `sys_index` VALUES (384, '');
INSERT INTO `sys_index` VALUES (385, '');
INSERT INTO `sys_index` VALUES (386, '');
INSERT INTO `sys_index` VALUES (387, '');
INSERT INTO `sys_index` VALUES (388, '');
INSERT INTO `sys_index` VALUES (389, '');
INSERT INTO `sys_index` VALUES (390, '');
INSERT INTO `sys_index` VALUES (391, '');
INSERT INTO `sys_index` VALUES (392, '');
INSERT INTO `sys_index` VALUES (393, '');
INSERT INTO `sys_index` VALUES (394, '');
INSERT INTO `sys_index` VALUES (395, '');
INSERT INTO `sys_index` VALUES (396, '');
INSERT INTO `sys_index` VALUES (397, '');
INSERT INTO `sys_index` VALUES (398, '');
INSERT INTO `sys_index` VALUES (399, '');
INSERT INTO `sys_index` VALUES (400, '');
INSERT INTO `sys_index` VALUES (401, '');
INSERT INTO `sys_index` VALUES (402, '');
INSERT INTO `sys_index` VALUES (403, '');
INSERT INTO `sys_index` VALUES (404, '');
INSERT INTO `sys_index` VALUES (405, '');
INSERT INTO `sys_index` VALUES (406, '');
INSERT INTO `sys_index` VALUES (407, '');
INSERT INTO `sys_index` VALUES (408, '');
INSERT INTO `sys_index` VALUES (409, '');
INSERT INTO `sys_index` VALUES (410, '');
INSERT INTO `sys_index` VALUES (411, '');
INSERT INTO `sys_index` VALUES (412, '');
INSERT INTO `sys_index` VALUES (413, '');
INSERT INTO `sys_index` VALUES (414, '');
INSERT INTO `sys_index` VALUES (415, '');
INSERT INTO `sys_index` VALUES (416, '');
INSERT INTO `sys_index` VALUES (417, '');
INSERT INTO `sys_index` VALUES (418, '');
INSERT INTO `sys_index` VALUES (419, '');
INSERT INTO `sys_index` VALUES (420, '');
INSERT INTO `sys_index` VALUES (421, '');
INSERT INTO `sys_index` VALUES (422, '');
INSERT INTO `sys_index` VALUES (423, '');
INSERT INTO `sys_index` VALUES (424, '');
INSERT INTO `sys_index` VALUES (425, '');
INSERT INTO `sys_index` VALUES (426, '');
INSERT INTO `sys_index` VALUES (427, '');
INSERT INTO `sys_index` VALUES (428, '');
INSERT INTO `sys_index` VALUES (429, '');
INSERT INTO `sys_index` VALUES (430, '');
INSERT INTO `sys_index` VALUES (431, '');
INSERT INTO `sys_index` VALUES (432, '');
INSERT INTO `sys_index` VALUES (433, '');
INSERT INTO `sys_index` VALUES (434, '');
INSERT INTO `sys_index` VALUES (435, '');
INSERT INTO `sys_index` VALUES (436, '');
INSERT INTO `sys_index` VALUES (437, '');
INSERT INTO `sys_index` VALUES (438, '');
INSERT INTO `sys_index` VALUES (439, '');
INSERT INTO `sys_index` VALUES (440, '');
INSERT INTO `sys_index` VALUES (441, '');
INSERT INTO `sys_index` VALUES (442, '');
INSERT INTO `sys_index` VALUES (443, '');
INSERT INTO `sys_index` VALUES (444, '');
INSERT INTO `sys_index` VALUES (445, '');
INSERT INTO `sys_index` VALUES (446, '');
INSERT INTO `sys_index` VALUES (447, '');
INSERT INTO `sys_index` VALUES (448, '');
INSERT INTO `sys_index` VALUES (449, '');
INSERT INTO `sys_index` VALUES (450, '');
INSERT INTO `sys_index` VALUES (451, '');
INSERT INTO `sys_index` VALUES (452, '');
INSERT INTO `sys_index` VALUES (453, '');
INSERT INTO `sys_index` VALUES (454, '');
INSERT INTO `sys_index` VALUES (455, '');
INSERT INTO `sys_index` VALUES (456, '');
INSERT INTO `sys_index` VALUES (457, '');
INSERT INTO `sys_index` VALUES (458, '');
INSERT INTO `sys_index` VALUES (459, '');
INSERT INTO `sys_index` VALUES (460, '');
INSERT INTO `sys_index` VALUES (461, '');
INSERT INTO `sys_index` VALUES (462, '');
INSERT INTO `sys_index` VALUES (463, '');
INSERT INTO `sys_index` VALUES (464, '');
INSERT INTO `sys_index` VALUES (465, '');
INSERT INTO `sys_index` VALUES (466, '');
INSERT INTO `sys_index` VALUES (467, '');
INSERT INTO `sys_index` VALUES (468, '');
INSERT INTO `sys_index` VALUES (469, '');
INSERT INTO `sys_index` VALUES (470, '');
INSERT INTO `sys_index` VALUES (471, '');
INSERT INTO `sys_index` VALUES (472, '');
INSERT INTO `sys_index` VALUES (473, '');
INSERT INTO `sys_index` VALUES (474, '');
INSERT INTO `sys_index` VALUES (475, '');
INSERT INTO `sys_index` VALUES (476, '');
INSERT INTO `sys_index` VALUES (477, '');
INSERT INTO `sys_index` VALUES (478, '');
INSERT INTO `sys_index` VALUES (479, '');
INSERT INTO `sys_index` VALUES (480, '');
INSERT INTO `sys_index` VALUES (481, '');
INSERT INTO `sys_index` VALUES (482, '');
INSERT INTO `sys_index` VALUES (483, '');
INSERT INTO `sys_index` VALUES (484, '');
INSERT INTO `sys_index` VALUES (485, '');
INSERT INTO `sys_index` VALUES (486, '');
INSERT INTO `sys_index` VALUES (487, '');
INSERT INTO `sys_index` VALUES (488, '');
INSERT INTO `sys_index` VALUES (489, '');
INSERT INTO `sys_index` VALUES (490, '');
INSERT INTO `sys_index` VALUES (491, '');
INSERT INTO `sys_index` VALUES (492, '');
INSERT INTO `sys_index` VALUES (493, '');
INSERT INTO `sys_index` VALUES (494, '');
INSERT INTO `sys_index` VALUES (495, '');
INSERT INTO `sys_index` VALUES (496, '');
INSERT INTO `sys_index` VALUES (497, '');
INSERT INTO `sys_index` VALUES (498, '');
INSERT INTO `sys_index` VALUES (499, '');
INSERT INTO `sys_index` VALUES (500, '');
INSERT INTO `sys_index` VALUES (501, '');
INSERT INTO `sys_index` VALUES (502, '');
INSERT INTO `sys_index` VALUES (503, '');
INSERT INTO `sys_index` VALUES (504, '');
INSERT INTO `sys_index` VALUES (505, '');
INSERT INTO `sys_index` VALUES (506, '');
INSERT INTO `sys_index` VALUES (507, '');
INSERT INTO `sys_index` VALUES (508, '');
INSERT INTO `sys_index` VALUES (509, '');
INSERT INTO `sys_index` VALUES (510, '');
INSERT INTO `sys_index` VALUES (511, '');
INSERT INTO `sys_index` VALUES (512, '');
INSERT INTO `sys_index` VALUES (513, '');
INSERT INTO `sys_index` VALUES (514, '');
INSERT INTO `sys_index` VALUES (515, '');
INSERT INTO `sys_index` VALUES (516, '');
INSERT INTO `sys_index` VALUES (517, '');
INSERT INTO `sys_index` VALUES (518, '');
INSERT INTO `sys_index` VALUES (519, '');
INSERT INTO `sys_index` VALUES (520, '');
INSERT INTO `sys_index` VALUES (521, '');
INSERT INTO `sys_index` VALUES (522, '');
INSERT INTO `sys_index` VALUES (523, '');
INSERT INTO `sys_index` VALUES (524, '');
INSERT INTO `sys_index` VALUES (525, '');
INSERT INTO `sys_index` VALUES (526, '');
INSERT INTO `sys_index` VALUES (527, '');
INSERT INTO `sys_index` VALUES (528, '');
INSERT INTO `sys_index` VALUES (529, '');
INSERT INTO `sys_index` VALUES (530, '');
INSERT INTO `sys_index` VALUES (531, '');
INSERT INTO `sys_index` VALUES (532, '');
INSERT INTO `sys_index` VALUES (533, '');
INSERT INTO `sys_index` VALUES (534, '');
INSERT INTO `sys_index` VALUES (535, '');
INSERT INTO `sys_index` VALUES (536, '');
INSERT INTO `sys_index` VALUES (537, '');
INSERT INTO `sys_index` VALUES (538, '');
INSERT INTO `sys_index` VALUES (539, '');
INSERT INTO `sys_index` VALUES (540, '');
INSERT INTO `sys_index` VALUES (541, '');
INSERT INTO `sys_index` VALUES (542, '');
INSERT INTO `sys_index` VALUES (543, '');
INSERT INTO `sys_index` VALUES (544, '');
INSERT INTO `sys_index` VALUES (545, '');
INSERT INTO `sys_index` VALUES (546, '');
INSERT INTO `sys_index` VALUES (547, '');
INSERT INTO `sys_index` VALUES (548, '');
INSERT INTO `sys_index` VALUES (549, '');
INSERT INTO `sys_index` VALUES (550, '');
INSERT INTO `sys_index` VALUES (551, '');
INSERT INTO `sys_index` VALUES (552, '');
INSERT INTO `sys_index` VALUES (553, '');
INSERT INTO `sys_index` VALUES (554, '');
INSERT INTO `sys_index` VALUES (555, '');
INSERT INTO `sys_index` VALUES (556, '');
INSERT INTO `sys_index` VALUES (557, '');
INSERT INTO `sys_index` VALUES (558, '');
INSERT INTO `sys_index` VALUES (559, '');
INSERT INTO `sys_index` VALUES (560, '');
INSERT INTO `sys_index` VALUES (561, '');
INSERT INTO `sys_index` VALUES (562, '');
INSERT INTO `sys_index` VALUES (563, '');
INSERT INTO `sys_index` VALUES (564, '');
INSERT INTO `sys_index` VALUES (565, '');
INSERT INTO `sys_index` VALUES (566, '');
INSERT INTO `sys_index` VALUES (567, '');
INSERT INTO `sys_index` VALUES (568, '');
INSERT INTO `sys_index` VALUES (569, '');
INSERT INTO `sys_index` VALUES (570, '');
INSERT INTO `sys_index` VALUES (571, '');
INSERT INTO `sys_index` VALUES (572, '');
INSERT INTO `sys_index` VALUES (573, '');
INSERT INTO `sys_index` VALUES (574, '');
INSERT INTO `sys_index` VALUES (575, '');
INSERT INTO `sys_index` VALUES (576, '');
INSERT INTO `sys_index` VALUES (577, '');
INSERT INTO `sys_index` VALUES (578, '');
INSERT INTO `sys_index` VALUES (579, '');
INSERT INTO `sys_index` VALUES (580, '');
INSERT INTO `sys_index` VALUES (581, '');
INSERT INTO `sys_index` VALUES (582, '');
INSERT INTO `sys_index` VALUES (583, '');
INSERT INTO `sys_index` VALUES (584, '');
INSERT INTO `sys_index` VALUES (585, '');
INSERT INTO `sys_index` VALUES (586, '');
INSERT INTO `sys_index` VALUES (587, '');
INSERT INTO `sys_index` VALUES (588, '');
INSERT INTO `sys_index` VALUES (589, '');
INSERT INTO `sys_index` VALUES (590, '');
INSERT INTO `sys_index` VALUES (591, '');
INSERT INTO `sys_index` VALUES (592, '');
INSERT INTO `sys_index` VALUES (593, '');
INSERT INTO `sys_index` VALUES (594, '');
INSERT INTO `sys_index` VALUES (595, '');
INSERT INTO `sys_index` VALUES (596, '');
INSERT INTO `sys_index` VALUES (597, '');
INSERT INTO `sys_index` VALUES (598, '');
INSERT INTO `sys_index` VALUES (599, '');
INSERT INTO `sys_index` VALUES (600, '');
INSERT INTO `sys_index` VALUES (601, '');
INSERT INTO `sys_index` VALUES (602, '');
INSERT INTO `sys_index` VALUES (603, '');
INSERT INTO `sys_index` VALUES (604, '');
INSERT INTO `sys_index` VALUES (605, '');
INSERT INTO `sys_index` VALUES (606, '');
INSERT INTO `sys_index` VALUES (607, '');
INSERT INTO `sys_index` VALUES (608, '');
INSERT INTO `sys_index` VALUES (609, '');
INSERT INTO `sys_index` VALUES (610, '');
INSERT INTO `sys_index` VALUES (611, '');
INSERT INTO `sys_index` VALUES (612, '');
INSERT INTO `sys_index` VALUES (613, '');
INSERT INTO `sys_index` VALUES (614, '');
INSERT INTO `sys_index` VALUES (615, '');
INSERT INTO `sys_index` VALUES (616, '');
INSERT INTO `sys_index` VALUES (617, '');
INSERT INTO `sys_index` VALUES (618, '');
INSERT INTO `sys_index` VALUES (619, '');
INSERT INTO `sys_index` VALUES (620, '');
INSERT INTO `sys_index` VALUES (621, '');
INSERT INTO `sys_index` VALUES (622, '');
INSERT INTO `sys_index` VALUES (623, '');
INSERT INTO `sys_index` VALUES (624, '');
INSERT INTO `sys_index` VALUES (625, '');
INSERT INTO `sys_index` VALUES (626, '');
INSERT INTO `sys_index` VALUES (627, '');
INSERT INTO `sys_index` VALUES (628, '');
INSERT INTO `sys_index` VALUES (629, '');
INSERT INTO `sys_index` VALUES (630, '');
INSERT INTO `sys_index` VALUES (631, '');
INSERT INTO `sys_index` VALUES (632, '');
INSERT INTO `sys_index` VALUES (633, '');
INSERT INTO `sys_index` VALUES (634, '');
INSERT INTO `sys_index` VALUES (635, '');
INSERT INTO `sys_index` VALUES (636, '');
INSERT INTO `sys_index` VALUES (637, '');
INSERT INTO `sys_index` VALUES (638, '');
INSERT INTO `sys_index` VALUES (639, '');
INSERT INTO `sys_index` VALUES (640, '');
INSERT INTO `sys_index` VALUES (641, '');
INSERT INTO `sys_index` VALUES (642, '');
INSERT INTO `sys_index` VALUES (643, '');
INSERT INTO `sys_index` VALUES (644, '');
INSERT INTO `sys_index` VALUES (645, '');
INSERT INTO `sys_index` VALUES (646, '');
INSERT INTO `sys_index` VALUES (647, '');
INSERT INTO `sys_index` VALUES (648, '');
INSERT INTO `sys_index` VALUES (649, '');
INSERT INTO `sys_index` VALUES (650, '');
INSERT INTO `sys_index` VALUES (651, '');
INSERT INTO `sys_index` VALUES (652, '');
INSERT INTO `sys_index` VALUES (653, '');
INSERT INTO `sys_index` VALUES (654, '');
INSERT INTO `sys_index` VALUES (655, '');
INSERT INTO `sys_index` VALUES (656, '');
INSERT INTO `sys_index` VALUES (657, '');
INSERT INTO `sys_index` VALUES (658, '');
INSERT INTO `sys_index` VALUES (659, '');
INSERT INTO `sys_index` VALUES (660, '');
INSERT INTO `sys_index` VALUES (661, '');
INSERT INTO `sys_index` VALUES (662, '');
INSERT INTO `sys_index` VALUES (663, '');
INSERT INTO `sys_index` VALUES (664, '');
INSERT INTO `sys_index` VALUES (665, '');
INSERT INTO `sys_index` VALUES (666, '');
INSERT INTO `sys_index` VALUES (667, '');
INSERT INTO `sys_index` VALUES (668, '');
INSERT INTO `sys_index` VALUES (669, '');
INSERT INTO `sys_index` VALUES (670, '');
INSERT INTO `sys_index` VALUES (671, '');
INSERT INTO `sys_index` VALUES (672, '');
INSERT INTO `sys_index` VALUES (673, '');
INSERT INTO `sys_index` VALUES (674, '');
INSERT INTO `sys_index` VALUES (675, '');
INSERT INTO `sys_index` VALUES (676, '');
INSERT INTO `sys_index` VALUES (677, '');
INSERT INTO `sys_index` VALUES (678, '');
INSERT INTO `sys_index` VALUES (679, '');
INSERT INTO `sys_index` VALUES (680, '');
INSERT INTO `sys_index` VALUES (681, '');
INSERT INTO `sys_index` VALUES (682, '');
INSERT INTO `sys_index` VALUES (683, '');
INSERT INTO `sys_index` VALUES (684, '');
INSERT INTO `sys_index` VALUES (685, '');
INSERT INTO `sys_index` VALUES (686, '');
INSERT INTO `sys_index` VALUES (687, '');
INSERT INTO `sys_index` VALUES (688, '');
INSERT INTO `sys_index` VALUES (689, '');
INSERT INTO `sys_index` VALUES (690, '');
INSERT INTO `sys_index` VALUES (691, '');
INSERT INTO `sys_index` VALUES (692, '');
INSERT INTO `sys_index` VALUES (693, '');
INSERT INTO `sys_index` VALUES (694, '');
INSERT INTO `sys_index` VALUES (695, '');
INSERT INTO `sys_index` VALUES (696, '');
INSERT INTO `sys_index` VALUES (697, '');
INSERT INTO `sys_index` VALUES (698, '');
INSERT INTO `sys_index` VALUES (699, '');
INSERT INTO `sys_index` VALUES (700, '');
INSERT INTO `sys_index` VALUES (701, '');
INSERT INTO `sys_index` VALUES (702, '');
INSERT INTO `sys_index` VALUES (703, '');
INSERT INTO `sys_index` VALUES (704, '');
INSERT INTO `sys_index` VALUES (705, '');
INSERT INTO `sys_index` VALUES (706, '');
INSERT INTO `sys_index` VALUES (707, '');
INSERT INTO `sys_index` VALUES (708, '');
INSERT INTO `sys_index` VALUES (709, '');
INSERT INTO `sys_index` VALUES (710, '');
INSERT INTO `sys_index` VALUES (711, '');
INSERT INTO `sys_index` VALUES (712, '');
INSERT INTO `sys_index` VALUES (713, '');
INSERT INTO `sys_index` VALUES (714, '');
INSERT INTO `sys_index` VALUES (715, '');
INSERT INTO `sys_index` VALUES (716, '');
INSERT INTO `sys_index` VALUES (717, '');
INSERT INTO `sys_index` VALUES (718, '');
INSERT INTO `sys_index` VALUES (719, '');
INSERT INTO `sys_index` VALUES (720, '');
INSERT INTO `sys_index` VALUES (721, '');
INSERT INTO `sys_index` VALUES (722, '');
INSERT INTO `sys_index` VALUES (723, '');
INSERT INTO `sys_index` VALUES (724, '');
INSERT INTO `sys_index` VALUES (725, '');
INSERT INTO `sys_index` VALUES (726, '');
INSERT INTO `sys_index` VALUES (727, '');
INSERT INTO `sys_index` VALUES (728, '');
INSERT INTO `sys_index` VALUES (729, '');
INSERT INTO `sys_index` VALUES (730, '');
INSERT INTO `sys_index` VALUES (731, '');
INSERT INTO `sys_index` VALUES (732, '');
INSERT INTO `sys_index` VALUES (733, '');
INSERT INTO `sys_index` VALUES (734, '');
INSERT INTO `sys_index` VALUES (735, '');
INSERT INTO `sys_index` VALUES (736, '');
INSERT INTO `sys_index` VALUES (737, '');
INSERT INTO `sys_index` VALUES (738, '');
INSERT INTO `sys_index` VALUES (739, '');
INSERT INTO `sys_index` VALUES (740, '');
INSERT INTO `sys_index` VALUES (741, '');
INSERT INTO `sys_index` VALUES (742, '');
INSERT INTO `sys_index` VALUES (743, '');
INSERT INTO `sys_index` VALUES (744, '');
INSERT INTO `sys_index` VALUES (745, '');
INSERT INTO `sys_index` VALUES (746, '');
INSERT INTO `sys_index` VALUES (747, '');
INSERT INTO `sys_index` VALUES (748, '');
INSERT INTO `sys_index` VALUES (749, '');
INSERT INTO `sys_index` VALUES (750, '');
INSERT INTO `sys_index` VALUES (751, '');
INSERT INTO `sys_index` VALUES (752, '');
INSERT INTO `sys_index` VALUES (753, '');
INSERT INTO `sys_index` VALUES (754, '');
INSERT INTO `sys_index` VALUES (755, '');
INSERT INTO `sys_index` VALUES (756, '');
INSERT INTO `sys_index` VALUES (757, '');
INSERT INTO `sys_index` VALUES (758, '');
INSERT INTO `sys_index` VALUES (759, '');
INSERT INTO `sys_index` VALUES (760, '');
INSERT INTO `sys_index` VALUES (761, '');
INSERT INTO `sys_index` VALUES (762, '');
INSERT INTO `sys_index` VALUES (763, '');
INSERT INTO `sys_index` VALUES (764, '');
INSERT INTO `sys_index` VALUES (765, '');
INSERT INTO `sys_index` VALUES (766, '');
INSERT INTO `sys_index` VALUES (767, '');
INSERT INTO `sys_index` VALUES (768, '');
INSERT INTO `sys_index` VALUES (769, '');
INSERT INTO `sys_index` VALUES (770, '');
INSERT INTO `sys_index` VALUES (771, '');
INSERT INTO `sys_index` VALUES (772, '');
INSERT INTO `sys_index` VALUES (773, '');
INSERT INTO `sys_index` VALUES (774, '');
INSERT INTO `sys_index` VALUES (775, '');
INSERT INTO `sys_index` VALUES (776, '');
INSERT INTO `sys_index` VALUES (777, '');
INSERT INTO `sys_index` VALUES (778, '');
INSERT INTO `sys_index` VALUES (779, '');
INSERT INTO `sys_index` VALUES (780, '');
INSERT INTO `sys_index` VALUES (781, '');
INSERT INTO `sys_index` VALUES (782, '');
INSERT INTO `sys_index` VALUES (783, '');
INSERT INTO `sys_index` VALUES (784, '');
INSERT INTO `sys_index` VALUES (785, '');
INSERT INTO `sys_index` VALUES (786, '');
INSERT INTO `sys_index` VALUES (787, '');
INSERT INTO `sys_index` VALUES (788, '');
INSERT INTO `sys_index` VALUES (789, '');
INSERT INTO `sys_index` VALUES (790, '');
INSERT INTO `sys_index` VALUES (791, '');
INSERT INTO `sys_index` VALUES (792, '');
INSERT INTO `sys_index` VALUES (793, '');
INSERT INTO `sys_index` VALUES (794, '');
INSERT INTO `sys_index` VALUES (795, '');
INSERT INTO `sys_index` VALUES (796, '');
INSERT INTO `sys_index` VALUES (797, '');
INSERT INTO `sys_index` VALUES (798, '');
INSERT INTO `sys_index` VALUES (799, '');
INSERT INTO `sys_index` VALUES (800, '');
INSERT INTO `sys_index` VALUES (801, '');
INSERT INTO `sys_index` VALUES (802, '');
INSERT INTO `sys_index` VALUES (803, '');
INSERT INTO `sys_index` VALUES (804, '');
INSERT INTO `sys_index` VALUES (805, '');
INSERT INTO `sys_index` VALUES (806, '');
INSERT INTO `sys_index` VALUES (807, '');
INSERT INTO `sys_index` VALUES (808, '');
INSERT INTO `sys_index` VALUES (809, '');
INSERT INTO `sys_index` VALUES (810, '');
INSERT INTO `sys_index` VALUES (811, '');
INSERT INTO `sys_index` VALUES (812, '');
INSERT INTO `sys_index` VALUES (813, '');
INSERT INTO `sys_index` VALUES (814, '');
INSERT INTO `sys_index` VALUES (815, '');
INSERT INTO `sys_index` VALUES (816, '');
INSERT INTO `sys_index` VALUES (817, '');
INSERT INTO `sys_index` VALUES (818, '');
INSERT INTO `sys_index` VALUES (819, '');
INSERT INTO `sys_index` VALUES (820, '');
INSERT INTO `sys_index` VALUES (821, '');
INSERT INTO `sys_index` VALUES (822, '');
INSERT INTO `sys_index` VALUES (823, '');
INSERT INTO `sys_index` VALUES (824, '');
INSERT INTO `sys_index` VALUES (825, '');
INSERT INTO `sys_index` VALUES (826, '');
INSERT INTO `sys_index` VALUES (827, '');
INSERT INTO `sys_index` VALUES (828, '');
INSERT INTO `sys_index` VALUES (829, '');
INSERT INTO `sys_index` VALUES (830, '');
INSERT INTO `sys_index` VALUES (831, '');
INSERT INTO `sys_index` VALUES (832, '');
INSERT INTO `sys_index` VALUES (833, '');
INSERT INTO `sys_index` VALUES (834, '');
INSERT INTO `sys_index` VALUES (835, '');
INSERT INTO `sys_index` VALUES (836, '');
INSERT INTO `sys_index` VALUES (837, '');
INSERT INTO `sys_index` VALUES (838, '');
INSERT INTO `sys_index` VALUES (839, '');
INSERT INTO `sys_index` VALUES (840, '');
INSERT INTO `sys_index` VALUES (841, '');
INSERT INTO `sys_index` VALUES (842, '');
INSERT INTO `sys_index` VALUES (843, '');
INSERT INTO `sys_index` VALUES (844, '');
INSERT INTO `sys_index` VALUES (845, '');
INSERT INTO `sys_index` VALUES (846, '');
INSERT INTO `sys_index` VALUES (847, '');
INSERT INTO `sys_index` VALUES (848, '');
INSERT INTO `sys_index` VALUES (849, '');
INSERT INTO `sys_index` VALUES (850, '');
INSERT INTO `sys_index` VALUES (851, '');
INSERT INTO `sys_index` VALUES (852, '');
INSERT INTO `sys_index` VALUES (853, '');
INSERT INTO `sys_index` VALUES (854, '');
INSERT INTO `sys_index` VALUES (855, '');
INSERT INTO `sys_index` VALUES (856, '');
INSERT INTO `sys_index` VALUES (857, '');
INSERT INTO `sys_index` VALUES (858, '');
INSERT INTO `sys_index` VALUES (859, '');
INSERT INTO `sys_index` VALUES (860, '');
INSERT INTO `sys_index` VALUES (861, '');
INSERT INTO `sys_index` VALUES (862, '');
INSERT INTO `sys_index` VALUES (863, '');
INSERT INTO `sys_index` VALUES (864, '');
INSERT INTO `sys_index` VALUES (865, '');
INSERT INTO `sys_index` VALUES (866, '');
INSERT INTO `sys_index` VALUES (867, '');
INSERT INTO `sys_index` VALUES (868, '');
INSERT INTO `sys_index` VALUES (869, '');
INSERT INTO `sys_index` VALUES (870, '');
INSERT INTO `sys_index` VALUES (871, '');
INSERT INTO `sys_index` VALUES (872, '');
INSERT INTO `sys_index` VALUES (873, '');
INSERT INTO `sys_index` VALUES (874, '');
INSERT INTO `sys_index` VALUES (875, '');
INSERT INTO `sys_index` VALUES (876, '');
INSERT INTO `sys_index` VALUES (877, '');
INSERT INTO `sys_index` VALUES (878, '');
INSERT INTO `sys_index` VALUES (879, '');
INSERT INTO `sys_index` VALUES (880, '');
INSERT INTO `sys_index` VALUES (881, '');
INSERT INTO `sys_index` VALUES (882, '');
INSERT INTO `sys_index` VALUES (883, '');
INSERT INTO `sys_index` VALUES (884, '');
INSERT INTO `sys_index` VALUES (885, '');
INSERT INTO `sys_index` VALUES (886, '');
INSERT INTO `sys_index` VALUES (887, '');
INSERT INTO `sys_index` VALUES (888, '');
INSERT INTO `sys_index` VALUES (889, '');
INSERT INTO `sys_index` VALUES (890, '');
INSERT INTO `sys_index` VALUES (891, '');
INSERT INTO `sys_index` VALUES (892, '');
INSERT INTO `sys_index` VALUES (893, '');
INSERT INTO `sys_index` VALUES (894, '');
INSERT INTO `sys_index` VALUES (895, '');
INSERT INTO `sys_index` VALUES (896, '');
INSERT INTO `sys_index` VALUES (897, '');
INSERT INTO `sys_index` VALUES (898, '');
INSERT INTO `sys_index` VALUES (899, '');
INSERT INTO `sys_index` VALUES (900, '');
INSERT INTO `sys_index` VALUES (901, '');
INSERT INTO `sys_index` VALUES (902, '');
INSERT INTO `sys_index` VALUES (903, '');
INSERT INTO `sys_index` VALUES (904, '');
INSERT INTO `sys_index` VALUES (905, '');
INSERT INTO `sys_index` VALUES (906, '');
INSERT INTO `sys_index` VALUES (907, '');
INSERT INTO `sys_index` VALUES (908, '');
INSERT INTO `sys_index` VALUES (909, '');
INSERT INTO `sys_index` VALUES (910, '');
INSERT INTO `sys_index` VALUES (911, '');
INSERT INTO `sys_index` VALUES (912, '');
INSERT INTO `sys_index` VALUES (913, '');
INSERT INTO `sys_index` VALUES (914, '');
INSERT INTO `sys_index` VALUES (915, '');
INSERT INTO `sys_index` VALUES (916, '');
INSERT INTO `sys_index` VALUES (917, '');
INSERT INTO `sys_index` VALUES (918, '');
INSERT INTO `sys_index` VALUES (919, '');
INSERT INTO `sys_index` VALUES (920, '');
INSERT INTO `sys_index` VALUES (921, '');
INSERT INTO `sys_index` VALUES (922, '');
INSERT INTO `sys_index` VALUES (923, '');
INSERT INTO `sys_index` VALUES (924, '');
INSERT INTO `sys_index` VALUES (925, '');
INSERT INTO `sys_index` VALUES (926, '');
INSERT INTO `sys_index` VALUES (927, '');
INSERT INTO `sys_index` VALUES (928, '');
INSERT INTO `sys_index` VALUES (929, '');
INSERT INTO `sys_index` VALUES (930, '');
INSERT INTO `sys_index` VALUES (931, '');
INSERT INTO `sys_index` VALUES (932, '');
INSERT INTO `sys_index` VALUES (933, '');
INSERT INTO `sys_index` VALUES (934, '');
INSERT INTO `sys_index` VALUES (935, '');
INSERT INTO `sys_index` VALUES (936, '');
INSERT INTO `sys_index` VALUES (937, '');
INSERT INTO `sys_index` VALUES (938, '');
INSERT INTO `sys_index` VALUES (939, '');
INSERT INTO `sys_index` VALUES (940, '');
INSERT INTO `sys_index` VALUES (941, '');
INSERT INTO `sys_index` VALUES (942, '');
INSERT INTO `sys_index` VALUES (943, '');
INSERT INTO `sys_index` VALUES (944, '');
INSERT INTO `sys_index` VALUES (945, '');
INSERT INTO `sys_index` VALUES (946, '');
INSERT INTO `sys_index` VALUES (947, '');
INSERT INTO `sys_index` VALUES (948, '');
INSERT INTO `sys_index` VALUES (949, '');
INSERT INTO `sys_index` VALUES (950, '');
INSERT INTO `sys_index` VALUES (951, '');
INSERT INTO `sys_index` VALUES (952, '');
INSERT INTO `sys_index` VALUES (953, '');
INSERT INTO `sys_index` VALUES (954, '');
INSERT INTO `sys_index` VALUES (955, '');
INSERT INTO `sys_index` VALUES (956, '');
INSERT INTO `sys_index` VALUES (957, '');
INSERT INTO `sys_index` VALUES (958, '');
INSERT INTO `sys_index` VALUES (959, '');
INSERT INTO `sys_index` VALUES (960, '');
INSERT INTO `sys_index` VALUES (961, '');
INSERT INTO `sys_index` VALUES (962, '');
INSERT INTO `sys_index` VALUES (963, '');
INSERT INTO `sys_index` VALUES (964, '');
INSERT INTO `sys_index` VALUES (965, '');
INSERT INTO `sys_index` VALUES (966, '');
INSERT INTO `sys_index` VALUES (967, '');
INSERT INTO `sys_index` VALUES (968, '');
INSERT INTO `sys_index` VALUES (969, '');
INSERT INTO `sys_index` VALUES (970, '');
INSERT INTO `sys_index` VALUES (971, '');
INSERT INTO `sys_index` VALUES (972, '');
INSERT INTO `sys_index` VALUES (973, '');
INSERT INTO `sys_index` VALUES (974, '');
INSERT INTO `sys_index` VALUES (975, '');
INSERT INTO `sys_index` VALUES (976, '');
INSERT INTO `sys_index` VALUES (977, '');
INSERT INTO `sys_index` VALUES (978, '');
INSERT INTO `sys_index` VALUES (979, '');
INSERT INTO `sys_index` VALUES (980, '');
INSERT INTO `sys_index` VALUES (981, '');
INSERT INTO `sys_index` VALUES (982, '');
INSERT INTO `sys_index` VALUES (983, '');
INSERT INTO `sys_index` VALUES (984, '');
INSERT INTO `sys_index` VALUES (985, '');
INSERT INTO `sys_index` VALUES (986, '');
INSERT INTO `sys_index` VALUES (987, '');
INSERT INTO `sys_index` VALUES (988, '');
INSERT INTO `sys_index` VALUES (989, '');
INSERT INTO `sys_index` VALUES (990, '');
INSERT INTO `sys_index` VALUES (991, '');
INSERT INTO `sys_index` VALUES (992, '');
INSERT INTO `sys_index` VALUES (993, '');
INSERT INTO `sys_index` VALUES (994, '');
INSERT INTO `sys_index` VALUES (995, '');
INSERT INTO `sys_index` VALUES (996, '');
INSERT INTO `sys_index` VALUES (997, '');
INSERT INTO `sys_index` VALUES (998, '');
INSERT INTO `sys_index` VALUES (999, '');
INSERT INTO `sys_index` VALUES (1000, '');
INSERT INTO `sys_index` VALUES (1001, '');
INSERT INTO `sys_index` VALUES (1002, '');
INSERT INTO `sys_index` VALUES (1003, '');
INSERT INTO `sys_index` VALUES (1004, '');
INSERT INTO `sys_index` VALUES (1005, '');
INSERT INTO `sys_index` VALUES (1006, '');
INSERT INTO `sys_index` VALUES (1007, '');
INSERT INTO `sys_index` VALUES (1008, '');
INSERT INTO `sys_index` VALUES (1009, '');
INSERT INTO `sys_index` VALUES (1010, '');
INSERT INTO `sys_index` VALUES (1011, '');
INSERT INTO `sys_index` VALUES (1012, '');
INSERT INTO `sys_index` VALUES (1013, '');
INSERT INTO `sys_index` VALUES (1014, '');
INSERT INTO `sys_index` VALUES (1015, '');
INSERT INTO `sys_index` VALUES (1016, '');
INSERT INTO `sys_index` VALUES (1017, '');
INSERT INTO `sys_index` VALUES (1018, '');
INSERT INTO `sys_index` VALUES (1019, '');
INSERT INTO `sys_index` VALUES (1020, '');
INSERT INTO `sys_index` VALUES (1021, '');
INSERT INTO `sys_index` VALUES (1022, '');
INSERT INTO `sys_index` VALUES (1023, '');
INSERT INTO `sys_index` VALUES (1024, '');
INSERT INTO `sys_index` VALUES (1025, '');
INSERT INTO `sys_index` VALUES (1026, '');
INSERT INTO `sys_index` VALUES (1027, '');
INSERT INTO `sys_index` VALUES (1028, '');
INSERT INTO `sys_index` VALUES (1029, '');
INSERT INTO `sys_index` VALUES (1030, '');
INSERT INTO `sys_index` VALUES (1031, '');
INSERT INTO `sys_index` VALUES (1032, '');
INSERT INTO `sys_index` VALUES (1033, '');
INSERT INTO `sys_index` VALUES (1034, '');
INSERT INTO `sys_index` VALUES (1035, '');
INSERT INTO `sys_index` VALUES (1036, '');
INSERT INTO `sys_index` VALUES (1037, '');
INSERT INTO `sys_index` VALUES (1038, '');
INSERT INTO `sys_index` VALUES (1039, '');
INSERT INTO `sys_index` VALUES (1040, '');
INSERT INTO `sys_index` VALUES (1041, '');
INSERT INTO `sys_index` VALUES (1042, '');
INSERT INTO `sys_index` VALUES (1043, '');
INSERT INTO `sys_index` VALUES (1044, '');
INSERT INTO `sys_index` VALUES (1045, '');
INSERT INTO `sys_index` VALUES (1046, '');
INSERT INTO `sys_index` VALUES (1047, '');
INSERT INTO `sys_index` VALUES (1048, '');
INSERT INTO `sys_index` VALUES (1049, '');
INSERT INTO `sys_index` VALUES (1050, '');
INSERT INTO `sys_index` VALUES (1051, '');
INSERT INTO `sys_index` VALUES (1052, '');
INSERT INTO `sys_index` VALUES (1053, '');
INSERT INTO `sys_index` VALUES (1054, '');
INSERT INTO `sys_index` VALUES (1055, '');
INSERT INTO `sys_index` VALUES (1056, '');
INSERT INTO `sys_index` VALUES (1057, '');
INSERT INTO `sys_index` VALUES (1058, '');
INSERT INTO `sys_index` VALUES (1059, '');
INSERT INTO `sys_index` VALUES (1060, '');
INSERT INTO `sys_index` VALUES (1061, '');
INSERT INTO `sys_index` VALUES (1062, '');
INSERT INTO `sys_index` VALUES (1063, '');
INSERT INTO `sys_index` VALUES (1064, '');
INSERT INTO `sys_index` VALUES (1065, '');
INSERT INTO `sys_index` VALUES (1066, '');
INSERT INTO `sys_index` VALUES (1067, '');
INSERT INTO `sys_index` VALUES (1068, '');
INSERT INTO `sys_index` VALUES (1069, '');
INSERT INTO `sys_index` VALUES (1070, '');
INSERT INTO `sys_index` VALUES (1071, '');
INSERT INTO `sys_index` VALUES (1072, '');
INSERT INTO `sys_index` VALUES (1073, '');
INSERT INTO `sys_index` VALUES (1074, '');
INSERT INTO `sys_index` VALUES (1075, '');
INSERT INTO `sys_index` VALUES (1076, '');
INSERT INTO `sys_index` VALUES (1077, '');
INSERT INTO `sys_index` VALUES (1078, '');
INSERT INTO `sys_index` VALUES (1079, '');
INSERT INTO `sys_index` VALUES (1080, '');
INSERT INTO `sys_index` VALUES (1081, '');
INSERT INTO `sys_index` VALUES (1082, '');
INSERT INTO `sys_index` VALUES (1083, '');
INSERT INTO `sys_index` VALUES (1084, '');
INSERT INTO `sys_index` VALUES (1085, '');
INSERT INTO `sys_index` VALUES (1086, '');
INSERT INTO `sys_index` VALUES (1087, '');
INSERT INTO `sys_index` VALUES (1088, '');
INSERT INTO `sys_index` VALUES (1089, '');
INSERT INTO `sys_index` VALUES (1090, '');
INSERT INTO `sys_index` VALUES (1091, '');
INSERT INTO `sys_index` VALUES (1092, '');
INSERT INTO `sys_index` VALUES (1093, '');
INSERT INTO `sys_index` VALUES (1094, '');
INSERT INTO `sys_index` VALUES (1095, '');
INSERT INTO `sys_index` VALUES (1096, '');
INSERT INTO `sys_index` VALUES (1097, '');
INSERT INTO `sys_index` VALUES (1098, '');
INSERT INTO `sys_index` VALUES (1099, '');
INSERT INTO `sys_index` VALUES (1100, '');
INSERT INTO `sys_index` VALUES (1101, '');
INSERT INTO `sys_index` VALUES (1102, '');
INSERT INTO `sys_index` VALUES (1103, '');
INSERT INTO `sys_index` VALUES (1104, '');
INSERT INTO `sys_index` VALUES (1105, '');
INSERT INTO `sys_index` VALUES (1106, '');
INSERT INTO `sys_index` VALUES (1107, '');
INSERT INTO `sys_index` VALUES (1108, '');
INSERT INTO `sys_index` VALUES (1109, '');
INSERT INTO `sys_index` VALUES (1110, '');
INSERT INTO `sys_index` VALUES (1111, '');
INSERT INTO `sys_index` VALUES (1112, '');
INSERT INTO `sys_index` VALUES (1113, '');
INSERT INTO `sys_index` VALUES (1114, '');
INSERT INTO `sys_index` VALUES (1115, '');
INSERT INTO `sys_index` VALUES (1116, '');
INSERT INTO `sys_index` VALUES (1117, '');
INSERT INTO `sys_index` VALUES (1118, '');
INSERT INTO `sys_index` VALUES (1119, '');
INSERT INTO `sys_index` VALUES (1120, '');
INSERT INTO `sys_index` VALUES (1121, '');
INSERT INTO `sys_index` VALUES (1122, '');
INSERT INTO `sys_index` VALUES (1123, '');
INSERT INTO `sys_index` VALUES (1124, '');
INSERT INTO `sys_index` VALUES (1125, '');
INSERT INTO `sys_index` VALUES (1126, '');
INSERT INTO `sys_index` VALUES (1127, '');
INSERT INTO `sys_index` VALUES (1128, '');
INSERT INTO `sys_index` VALUES (1129, '');
INSERT INTO `sys_index` VALUES (1130, '');
INSERT INTO `sys_index` VALUES (1131, '');
INSERT INTO `sys_index` VALUES (1132, '');
INSERT INTO `sys_index` VALUES (1133, '');
INSERT INTO `sys_index` VALUES (1134, '');
INSERT INTO `sys_index` VALUES (1135, '');
INSERT INTO `sys_index` VALUES (1136, '');
INSERT INTO `sys_index` VALUES (1137, '');
INSERT INTO `sys_index` VALUES (1138, '');
INSERT INTO `sys_index` VALUES (1139, '');
INSERT INTO `sys_index` VALUES (1140, '');
INSERT INTO `sys_index` VALUES (1141, '');
INSERT INTO `sys_index` VALUES (1142, '');
INSERT INTO `sys_index` VALUES (1143, '');
INSERT INTO `sys_index` VALUES (1144, '');
INSERT INTO `sys_index` VALUES (1145, '');
INSERT INTO `sys_index` VALUES (1146, '');
INSERT INTO `sys_index` VALUES (1147, '');
INSERT INTO `sys_index` VALUES (1148, '');
INSERT INTO `sys_index` VALUES (1149, '');
INSERT INTO `sys_index` VALUES (1150, '');
INSERT INTO `sys_index` VALUES (1151, '');
INSERT INTO `sys_index` VALUES (1152, '');
INSERT INTO `sys_index` VALUES (1153, '');
INSERT INTO `sys_index` VALUES (1154, '');
INSERT INTO `sys_index` VALUES (1155, '');
INSERT INTO `sys_index` VALUES (1156, '');
INSERT INTO `sys_index` VALUES (1157, '');
INSERT INTO `sys_index` VALUES (1158, '');
INSERT INTO `sys_index` VALUES (1159, '');
INSERT INTO `sys_index` VALUES (1160, '');
INSERT INTO `sys_index` VALUES (1161, '');
INSERT INTO `sys_index` VALUES (1162, '');
INSERT INTO `sys_index` VALUES (1163, '');
INSERT INTO `sys_index` VALUES (1164, '');
INSERT INTO `sys_index` VALUES (1165, '');
INSERT INTO `sys_index` VALUES (1166, '');
INSERT INTO `sys_index` VALUES (1167, '');
INSERT INTO `sys_index` VALUES (1168, '');
INSERT INTO `sys_index` VALUES (1169, '');
INSERT INTO `sys_index` VALUES (1170, '');
INSERT INTO `sys_index` VALUES (1171, '');
INSERT INTO `sys_index` VALUES (1172, '');
INSERT INTO `sys_index` VALUES (1173, '');
INSERT INTO `sys_index` VALUES (1174, '');
INSERT INTO `sys_index` VALUES (1175, '');
INSERT INTO `sys_index` VALUES (1176, '');
INSERT INTO `sys_index` VALUES (1177, '');
INSERT INTO `sys_index` VALUES (1178, '');
INSERT INTO `sys_index` VALUES (1179, '');
INSERT INTO `sys_index` VALUES (1180, '');
INSERT INTO `sys_index` VALUES (1181, '');
INSERT INTO `sys_index` VALUES (1182, '');
INSERT INTO `sys_index` VALUES (1183, '');
INSERT INTO `sys_index` VALUES (1184, '');
INSERT INTO `sys_index` VALUES (1185, '');
INSERT INTO `sys_index` VALUES (1186, '');
INSERT INTO `sys_index` VALUES (1187, '');
INSERT INTO `sys_index` VALUES (1188, '');
INSERT INTO `sys_index` VALUES (1189, '');
INSERT INTO `sys_index` VALUES (1190, '');
INSERT INTO `sys_index` VALUES (1191, '');
INSERT INTO `sys_index` VALUES (1192, '');
INSERT INTO `sys_index` VALUES (1193, '');
INSERT INTO `sys_index` VALUES (1194, '');
INSERT INTO `sys_index` VALUES (1195, '');
INSERT INTO `sys_index` VALUES (1196, '');
INSERT INTO `sys_index` VALUES (1197, '');
INSERT INTO `sys_index` VALUES (1198, '');
INSERT INTO `sys_index` VALUES (1199, '');
INSERT INTO `sys_index` VALUES (1200, '');
INSERT INTO `sys_index` VALUES (1201, '');
INSERT INTO `sys_index` VALUES (1202, '');
INSERT INTO `sys_index` VALUES (1203, '');
INSERT INTO `sys_index` VALUES (1204, '');
INSERT INTO `sys_index` VALUES (1205, '');
INSERT INTO `sys_index` VALUES (1206, '');
INSERT INTO `sys_index` VALUES (1207, '');
INSERT INTO `sys_index` VALUES (1208, '');
INSERT INTO `sys_index` VALUES (1209, '');
INSERT INTO `sys_index` VALUES (1210, '');
INSERT INTO `sys_index` VALUES (1211, '');
INSERT INTO `sys_index` VALUES (1212, '');
INSERT INTO `sys_index` VALUES (1213, '');
INSERT INTO `sys_index` VALUES (1214, '');
INSERT INTO `sys_index` VALUES (1215, '');
INSERT INTO `sys_index` VALUES (1216, '');
INSERT INTO `sys_index` VALUES (1217, '');
INSERT INTO `sys_index` VALUES (1218, '');
INSERT INTO `sys_index` VALUES (1219, '');
INSERT INTO `sys_index` VALUES (1220, '');
INSERT INTO `sys_index` VALUES (1221, '');
INSERT INTO `sys_index` VALUES (1222, '');
INSERT INTO `sys_index` VALUES (1223, '');
INSERT INTO `sys_index` VALUES (1224, '');
INSERT INTO `sys_index` VALUES (1225, '');
INSERT INTO `sys_index` VALUES (1226, '');
INSERT INTO `sys_index` VALUES (1227, '');
INSERT INTO `sys_index` VALUES (1228, '');
INSERT INTO `sys_index` VALUES (1229, '');
INSERT INTO `sys_index` VALUES (1230, '');
INSERT INTO `sys_index` VALUES (1231, '');
INSERT INTO `sys_index` VALUES (1232, '');
INSERT INTO `sys_index` VALUES (1233, '');
INSERT INTO `sys_index` VALUES (1234, '');
INSERT INTO `sys_index` VALUES (1235, '');
INSERT INTO `sys_index` VALUES (1236, '');
INSERT INTO `sys_index` VALUES (1237, '');
INSERT INTO `sys_index` VALUES (1238, '');
INSERT INTO `sys_index` VALUES (1239, '');
INSERT INTO `sys_index` VALUES (1240, '');
INSERT INTO `sys_index` VALUES (1241, '');
INSERT INTO `sys_index` VALUES (1242, '');
INSERT INTO `sys_index` VALUES (1243, '');
INSERT INTO `sys_index` VALUES (1244, '');
INSERT INTO `sys_index` VALUES (1245, '');
INSERT INTO `sys_index` VALUES (1246, '');
INSERT INTO `sys_index` VALUES (1247, '');
INSERT INTO `sys_index` VALUES (1248, '');
INSERT INTO `sys_index` VALUES (1249, '');
INSERT INTO `sys_index` VALUES (1250, '');
INSERT INTO `sys_index` VALUES (1251, '');
INSERT INTO `sys_index` VALUES (1252, '');
INSERT INTO `sys_index` VALUES (1253, '');
INSERT INTO `sys_index` VALUES (1254, '');
INSERT INTO `sys_index` VALUES (1255, '');
INSERT INTO `sys_index` VALUES (1256, '');
INSERT INTO `sys_index` VALUES (1257, '');
INSERT INTO `sys_index` VALUES (1258, '');
INSERT INTO `sys_index` VALUES (1259, '');
INSERT INTO `sys_index` VALUES (1260, '');
INSERT INTO `sys_index` VALUES (1261, '');
INSERT INTO `sys_index` VALUES (1262, '');
INSERT INTO `sys_index` VALUES (1263, '');
INSERT INTO `sys_index` VALUES (1264, '');
INSERT INTO `sys_index` VALUES (1265, '');
INSERT INTO `sys_index` VALUES (1266, '');
INSERT INTO `sys_index` VALUES (1267, '');
INSERT INTO `sys_index` VALUES (1268, '');
INSERT INTO `sys_index` VALUES (1269, '');
INSERT INTO `sys_index` VALUES (1270, '');
INSERT INTO `sys_index` VALUES (1271, '');
INSERT INTO `sys_index` VALUES (1272, '');
INSERT INTO `sys_index` VALUES (1273, '');
INSERT INTO `sys_index` VALUES (1274, '');
INSERT INTO `sys_index` VALUES (1275, '');
INSERT INTO `sys_index` VALUES (1276, '');
INSERT INTO `sys_index` VALUES (1277, '');
INSERT INTO `sys_index` VALUES (1278, '');
INSERT INTO `sys_index` VALUES (1279, '');
INSERT INTO `sys_index` VALUES (1280, '');
INSERT INTO `sys_index` VALUES (1281, '');
INSERT INTO `sys_index` VALUES (1282, '');
INSERT INTO `sys_index` VALUES (1283, '');
INSERT INTO `sys_index` VALUES (1284, '');
INSERT INTO `sys_index` VALUES (1285, '');
INSERT INTO `sys_index` VALUES (1286, '');
INSERT INTO `sys_index` VALUES (1287, '');
INSERT INTO `sys_index` VALUES (1288, '');
INSERT INTO `sys_index` VALUES (1289, '');
INSERT INTO `sys_index` VALUES (1290, '');
INSERT INTO `sys_index` VALUES (1291, '');
INSERT INTO `sys_index` VALUES (1292, '');
INSERT INTO `sys_index` VALUES (1293, '');
INSERT INTO `sys_index` VALUES (1294, '');
INSERT INTO `sys_index` VALUES (1295, '');
INSERT INTO `sys_index` VALUES (1296, '');
INSERT INTO `sys_index` VALUES (1297, '');
INSERT INTO `sys_index` VALUES (1298, '');
INSERT INTO `sys_index` VALUES (1299, '');
INSERT INTO `sys_index` VALUES (1300, '');
INSERT INTO `sys_index` VALUES (1301, '');
INSERT INTO `sys_index` VALUES (1302, '');
INSERT INTO `sys_index` VALUES (1303, '');
INSERT INTO `sys_index` VALUES (1304, '');
INSERT INTO `sys_index` VALUES (1305, '');
INSERT INTO `sys_index` VALUES (1306, '');
INSERT INTO `sys_index` VALUES (1307, '');
INSERT INTO `sys_index` VALUES (1308, '');
INSERT INTO `sys_index` VALUES (1309, '');
INSERT INTO `sys_index` VALUES (1310, '');
INSERT INTO `sys_index` VALUES (1311, '');
INSERT INTO `sys_index` VALUES (1312, '');
INSERT INTO `sys_index` VALUES (1313, '');
INSERT INTO `sys_index` VALUES (1314, '');
INSERT INTO `sys_index` VALUES (1315, '');
INSERT INTO `sys_index` VALUES (1316, '');
INSERT INTO `sys_index` VALUES (1317, '');
INSERT INTO `sys_index` VALUES (1318, '');
INSERT INTO `sys_index` VALUES (1319, '');
INSERT INTO `sys_index` VALUES (1320, '');
INSERT INTO `sys_index` VALUES (1321, '');
INSERT INTO `sys_index` VALUES (1322, '');
INSERT INTO `sys_index` VALUES (1323, '');
INSERT INTO `sys_index` VALUES (1324, '');
INSERT INTO `sys_index` VALUES (1325, '');
INSERT INTO `sys_index` VALUES (1326, '');
INSERT INTO `sys_index` VALUES (1327, '');
INSERT INTO `sys_index` VALUES (1328, '');
INSERT INTO `sys_index` VALUES (1329, '');
INSERT INTO `sys_index` VALUES (1330, '');
INSERT INTO `sys_index` VALUES (1331, '');
INSERT INTO `sys_index` VALUES (1332, '');
INSERT INTO `sys_index` VALUES (1333, '');
INSERT INTO `sys_index` VALUES (1334, '');
INSERT INTO `sys_index` VALUES (1335, '');
INSERT INTO `sys_index` VALUES (1336, '');
INSERT INTO `sys_index` VALUES (1337, '');
INSERT INTO `sys_index` VALUES (1338, '');
INSERT INTO `sys_index` VALUES (1339, '');
INSERT INTO `sys_index` VALUES (1340, '');
INSERT INTO `sys_index` VALUES (1341, '');
INSERT INTO `sys_index` VALUES (1342, '');
INSERT INTO `sys_index` VALUES (1343, '');
INSERT INTO `sys_index` VALUES (1344, '');
INSERT INTO `sys_index` VALUES (1345, '');
INSERT INTO `sys_index` VALUES (1346, '');
INSERT INTO `sys_index` VALUES (1347, '');
INSERT INTO `sys_index` VALUES (1348, '');
INSERT INTO `sys_index` VALUES (1349, '');
INSERT INTO `sys_index` VALUES (1350, '');
INSERT INTO `sys_index` VALUES (1351, '');
INSERT INTO `sys_index` VALUES (1352, '');
INSERT INTO `sys_index` VALUES (1353, '');
INSERT INTO `sys_index` VALUES (1354, '');
INSERT INTO `sys_index` VALUES (1355, '');
INSERT INTO `sys_index` VALUES (1356, '');
INSERT INTO `sys_index` VALUES (1357, '');
INSERT INTO `sys_index` VALUES (1358, '');
INSERT INTO `sys_index` VALUES (1359, '');
INSERT INTO `sys_index` VALUES (1360, '');
INSERT INTO `sys_index` VALUES (1361, '');
INSERT INTO `sys_index` VALUES (1362, '');
INSERT INTO `sys_index` VALUES (1363, '');
INSERT INTO `sys_index` VALUES (1364, '');
INSERT INTO `sys_index` VALUES (1365, '');
INSERT INTO `sys_index` VALUES (1366, '');
INSERT INTO `sys_index` VALUES (1367, '');
INSERT INTO `sys_index` VALUES (1368, '');
INSERT INTO `sys_index` VALUES (1369, '');
INSERT INTO `sys_index` VALUES (1370, '');
INSERT INTO `sys_index` VALUES (1371, '');
INSERT INTO `sys_index` VALUES (1372, '');
INSERT INTO `sys_index` VALUES (1373, '');
INSERT INTO `sys_index` VALUES (1374, '');
INSERT INTO `sys_index` VALUES (1375, '');
INSERT INTO `sys_index` VALUES (1376, '');
INSERT INTO `sys_index` VALUES (1377, '');
INSERT INTO `sys_index` VALUES (1378, '');
INSERT INTO `sys_index` VALUES (1379, '');
INSERT INTO `sys_index` VALUES (1380, '');
INSERT INTO `sys_index` VALUES (1381, '');
INSERT INTO `sys_index` VALUES (1382, '');
INSERT INTO `sys_index` VALUES (1383, '');
INSERT INTO `sys_index` VALUES (1384, '');
INSERT INTO `sys_index` VALUES (1385, '');
INSERT INTO `sys_index` VALUES (1386, '');
INSERT INTO `sys_index` VALUES (1387, '');
INSERT INTO `sys_index` VALUES (1388, '');
INSERT INTO `sys_index` VALUES (1389, '');
INSERT INTO `sys_index` VALUES (1390, '');
INSERT INTO `sys_index` VALUES (1391, '');
INSERT INTO `sys_index` VALUES (1392, '');
INSERT INTO `sys_index` VALUES (1393, '');
INSERT INTO `sys_index` VALUES (1394, '');
INSERT INTO `sys_index` VALUES (1395, '');
INSERT INTO `sys_index` VALUES (1396, '');
INSERT INTO `sys_index` VALUES (1397, '');
INSERT INTO `sys_index` VALUES (1398, '');
INSERT INTO `sys_index` VALUES (1399, '');
INSERT INTO `sys_index` VALUES (1400, '');
INSERT INTO `sys_index` VALUES (1401, '');
INSERT INTO `sys_index` VALUES (1402, '');
INSERT INTO `sys_index` VALUES (1403, '');
INSERT INTO `sys_index` VALUES (1404, '');
INSERT INTO `sys_index` VALUES (1405, '');
INSERT INTO `sys_index` VALUES (1406, '');
INSERT INTO `sys_index` VALUES (1407, '');
INSERT INTO `sys_index` VALUES (1408, '');
INSERT INTO `sys_index` VALUES (1409, '');
INSERT INTO `sys_index` VALUES (1410, '');
INSERT INTO `sys_index` VALUES (1411, '');
INSERT INTO `sys_index` VALUES (1412, '');
INSERT INTO `sys_index` VALUES (1413, '');
INSERT INTO `sys_index` VALUES (1414, '');
INSERT INTO `sys_index` VALUES (1415, '');
INSERT INTO `sys_index` VALUES (1416, '');
INSERT INTO `sys_index` VALUES (1417, '');
INSERT INTO `sys_index` VALUES (1418, '');
INSERT INTO `sys_index` VALUES (1419, '');
INSERT INTO `sys_index` VALUES (1420, '');
INSERT INTO `sys_index` VALUES (1421, '');
INSERT INTO `sys_index` VALUES (1422, '');
INSERT INTO `sys_index` VALUES (1423, '');
INSERT INTO `sys_index` VALUES (1424, '');
INSERT INTO `sys_index` VALUES (1425, '');
INSERT INTO `sys_index` VALUES (1426, '');
INSERT INTO `sys_index` VALUES (1427, '');
INSERT INTO `sys_index` VALUES (1428, '');
INSERT INTO `sys_index` VALUES (1429, '');
INSERT INTO `sys_index` VALUES (1430, '');
INSERT INTO `sys_index` VALUES (1431, '');
INSERT INTO `sys_index` VALUES (1432, '');
INSERT INTO `sys_index` VALUES (1433, '');
INSERT INTO `sys_index` VALUES (1434, '');
INSERT INTO `sys_index` VALUES (1435, '');
INSERT INTO `sys_index` VALUES (1436, '');
INSERT INTO `sys_index` VALUES (1437, '');
INSERT INTO `sys_index` VALUES (1438, '');
INSERT INTO `sys_index` VALUES (1439, '');
INSERT INTO `sys_index` VALUES (1440, '');
INSERT INTO `sys_index` VALUES (1441, '');
INSERT INTO `sys_index` VALUES (1442, '');
INSERT INTO `sys_index` VALUES (1443, '');
INSERT INTO `sys_index` VALUES (1444, '');
INSERT INTO `sys_index` VALUES (1445, '');
INSERT INTO `sys_index` VALUES (1446, '');
INSERT INTO `sys_index` VALUES (1447, '');
INSERT INTO `sys_index` VALUES (1448, '');
INSERT INTO `sys_index` VALUES (1449, '');
INSERT INTO `sys_index` VALUES (1450, '');
INSERT INTO `sys_index` VALUES (1451, '');
INSERT INTO `sys_index` VALUES (1452, '');
INSERT INTO `sys_index` VALUES (1453, '');
INSERT INTO `sys_index` VALUES (1454, '');
INSERT INTO `sys_index` VALUES (1455, '');
INSERT INTO `sys_index` VALUES (1456, '');
INSERT INTO `sys_index` VALUES (1457, '');
INSERT INTO `sys_index` VALUES (1458, '');
INSERT INTO `sys_index` VALUES (1459, '');
INSERT INTO `sys_index` VALUES (1460, '');
INSERT INTO `sys_index` VALUES (1461, '');
INSERT INTO `sys_index` VALUES (1462, '');
INSERT INTO `sys_index` VALUES (1463, '');
INSERT INTO `sys_index` VALUES (1464, '');
INSERT INTO `sys_index` VALUES (1465, '');
INSERT INTO `sys_index` VALUES (1466, '');
INSERT INTO `sys_index` VALUES (1467, '');
INSERT INTO `sys_index` VALUES (1468, '');
INSERT INTO `sys_index` VALUES (1469, '');
INSERT INTO `sys_index` VALUES (1470, '');
INSERT INTO `sys_index` VALUES (1471, '');
INSERT INTO `sys_index` VALUES (1472, '');
INSERT INTO `sys_index` VALUES (1473, '');
INSERT INTO `sys_index` VALUES (1474, '');
INSERT INTO `sys_index` VALUES (1475, '');
INSERT INTO `sys_index` VALUES (1476, '');
INSERT INTO `sys_index` VALUES (1477, '');
INSERT INTO `sys_index` VALUES (1478, '');
INSERT INTO `sys_index` VALUES (1479, '');
INSERT INTO `sys_index` VALUES (1480, '');
INSERT INTO `sys_index` VALUES (1481, '');
INSERT INTO `sys_index` VALUES (1482, '');
INSERT INTO `sys_index` VALUES (1483, '');
INSERT INTO `sys_index` VALUES (1484, '');
INSERT INTO `sys_index` VALUES (1485, '');
INSERT INTO `sys_index` VALUES (1486, '');
INSERT INTO `sys_index` VALUES (1487, '');
INSERT INTO `sys_index` VALUES (1488, '');
INSERT INTO `sys_index` VALUES (1489, '');
INSERT INTO `sys_index` VALUES (1490, '');
INSERT INTO `sys_index` VALUES (1491, '');
INSERT INTO `sys_index` VALUES (1492, '');
INSERT INTO `sys_index` VALUES (1493, '');
INSERT INTO `sys_index` VALUES (1494, '');
INSERT INTO `sys_index` VALUES (1495, '');
INSERT INTO `sys_index` VALUES (1496, '');
INSERT INTO `sys_index` VALUES (1497, '');
INSERT INTO `sys_index` VALUES (1498, '');
INSERT INTO `sys_index` VALUES (1499, '');
INSERT INTO `sys_index` VALUES (1500, '');
INSERT INTO `sys_index` VALUES (1501, '');
INSERT INTO `sys_index` VALUES (1502, '');
INSERT INTO `sys_index` VALUES (1503, '');
INSERT INTO `sys_index` VALUES (1504, '');
INSERT INTO `sys_index` VALUES (1505, '');
INSERT INTO `sys_index` VALUES (1506, '');
INSERT INTO `sys_index` VALUES (1507, '');
INSERT INTO `sys_index` VALUES (1508, '');
INSERT INTO `sys_index` VALUES (1509, '');
INSERT INTO `sys_index` VALUES (1510, '');
INSERT INTO `sys_index` VALUES (1511, '');
INSERT INTO `sys_index` VALUES (1512, '');
INSERT INTO `sys_index` VALUES (1513, '');
INSERT INTO `sys_index` VALUES (1514, '');
INSERT INTO `sys_index` VALUES (1515, '');
INSERT INTO `sys_index` VALUES (1516, '');
INSERT INTO `sys_index` VALUES (1517, '');
INSERT INTO `sys_index` VALUES (1518, '');
INSERT INTO `sys_index` VALUES (1519, '');
INSERT INTO `sys_index` VALUES (1520, '');
INSERT INTO `sys_index` VALUES (1521, '');
INSERT INTO `sys_index` VALUES (1522, '');
INSERT INTO `sys_index` VALUES (1523, '');
INSERT INTO `sys_index` VALUES (1524, '');
INSERT INTO `sys_index` VALUES (1525, '');
INSERT INTO `sys_index` VALUES (1526, '');
INSERT INTO `sys_index` VALUES (1527, '');
INSERT INTO `sys_index` VALUES (1528, '');
INSERT INTO `sys_index` VALUES (1529, '');
INSERT INTO `sys_index` VALUES (1530, '');
INSERT INTO `sys_index` VALUES (1531, '');
INSERT INTO `sys_index` VALUES (1532, '');
INSERT INTO `sys_index` VALUES (1533, '');
INSERT INTO `sys_index` VALUES (1534, '');
INSERT INTO `sys_index` VALUES (1535, '');
INSERT INTO `sys_index` VALUES (1536, '');
INSERT INTO `sys_index` VALUES (1537, '');
INSERT INTO `sys_index` VALUES (1538, '');
INSERT INTO `sys_index` VALUES (1539, '');
INSERT INTO `sys_index` VALUES (1540, '');
INSERT INTO `sys_index` VALUES (1541, '');
INSERT INTO `sys_index` VALUES (1542, '');
INSERT INTO `sys_index` VALUES (1543, '');
INSERT INTO `sys_index` VALUES (1544, '');
INSERT INTO `sys_index` VALUES (1545, '');
INSERT INTO `sys_index` VALUES (1546, '');
INSERT INTO `sys_index` VALUES (1547, '');
INSERT INTO `sys_index` VALUES (1548, '');
INSERT INTO `sys_index` VALUES (1549, '');
INSERT INTO `sys_index` VALUES (1550, '');
INSERT INTO `sys_index` VALUES (1551, '');
INSERT INTO `sys_index` VALUES (1552, '');
INSERT INTO `sys_index` VALUES (1553, '');
INSERT INTO `sys_index` VALUES (1554, '');
INSERT INTO `sys_index` VALUES (1555, '');
INSERT INTO `sys_index` VALUES (1556, '');
INSERT INTO `sys_index` VALUES (1557, '');
INSERT INTO `sys_index` VALUES (1558, '');
INSERT INTO `sys_index` VALUES (1559, '');
INSERT INTO `sys_index` VALUES (1560, '');
INSERT INTO `sys_index` VALUES (1561, '');
INSERT INTO `sys_index` VALUES (1562, '');
INSERT INTO `sys_index` VALUES (1563, '');
INSERT INTO `sys_index` VALUES (1564, '');
INSERT INTO `sys_index` VALUES (1565, '');
INSERT INTO `sys_index` VALUES (1566, '');
INSERT INTO `sys_index` VALUES (1567, '');
INSERT INTO `sys_index` VALUES (1568, '');
INSERT INTO `sys_index` VALUES (1569, '');
INSERT INTO `sys_index` VALUES (1570, '');
INSERT INTO `sys_index` VALUES (1571, '');
INSERT INTO `sys_index` VALUES (1572, '');
INSERT INTO `sys_index` VALUES (1573, '');
INSERT INTO `sys_index` VALUES (1574, '');
INSERT INTO `sys_index` VALUES (1575, '');
INSERT INTO `sys_index` VALUES (1576, '');
INSERT INTO `sys_index` VALUES (1577, '');
INSERT INTO `sys_index` VALUES (1578, '');
INSERT INTO `sys_index` VALUES (1579, '');
INSERT INTO `sys_index` VALUES (1580, '');
INSERT INTO `sys_index` VALUES (1581, '');
INSERT INTO `sys_index` VALUES (1582, '');
INSERT INTO `sys_index` VALUES (1583, '');
INSERT INTO `sys_index` VALUES (1584, '');
INSERT INTO `sys_index` VALUES (1585, '');
INSERT INTO `sys_index` VALUES (1586, '');
INSERT INTO `sys_index` VALUES (1587, '');
INSERT INTO `sys_index` VALUES (1588, '');
INSERT INTO `sys_index` VALUES (1589, '');
INSERT INTO `sys_index` VALUES (1590, '');
INSERT INTO `sys_index` VALUES (1591, '');
INSERT INTO `sys_index` VALUES (1592, '');
INSERT INTO `sys_index` VALUES (1593, '');
INSERT INTO `sys_index` VALUES (1594, '');
INSERT INTO `sys_index` VALUES (1595, '');
INSERT INTO `sys_index` VALUES (1596, '');
INSERT INTO `sys_index` VALUES (1597, '');
INSERT INTO `sys_index` VALUES (1598, '');
INSERT INTO `sys_index` VALUES (1599, '');
INSERT INTO `sys_index` VALUES (1600, '');
INSERT INTO `sys_index` VALUES (1601, '');
INSERT INTO `sys_index` VALUES (1602, '');
INSERT INTO `sys_index` VALUES (1603, '');
INSERT INTO `sys_index` VALUES (1604, '');
INSERT INTO `sys_index` VALUES (1605, '');
INSERT INTO `sys_index` VALUES (1606, '');
INSERT INTO `sys_index` VALUES (1607, '');
INSERT INTO `sys_index` VALUES (1608, '');
INSERT INTO `sys_index` VALUES (1609, '');
INSERT INTO `sys_index` VALUES (1610, '');
INSERT INTO `sys_index` VALUES (1611, '');
INSERT INTO `sys_index` VALUES (1612, '');
INSERT INTO `sys_index` VALUES (1613, '');
INSERT INTO `sys_index` VALUES (1614, '');
INSERT INTO `sys_index` VALUES (1615, '');
INSERT INTO `sys_index` VALUES (1616, '');
INSERT INTO `sys_index` VALUES (1617, '');
INSERT INTO `sys_index` VALUES (1618, '');
INSERT INTO `sys_index` VALUES (1619, '');
INSERT INTO `sys_index` VALUES (1620, '');
INSERT INTO `sys_index` VALUES (1621, '');
INSERT INTO `sys_index` VALUES (1622, '');
INSERT INTO `sys_index` VALUES (1623, '');
INSERT INTO `sys_index` VALUES (1624, '');
INSERT INTO `sys_index` VALUES (1625, '');
INSERT INTO `sys_index` VALUES (1626, '');
INSERT INTO `sys_index` VALUES (1627, '');
INSERT INTO `sys_index` VALUES (1628, '');
INSERT INTO `sys_index` VALUES (1629, '');
INSERT INTO `sys_index` VALUES (1630, '');
INSERT INTO `sys_index` VALUES (1631, '');
INSERT INTO `sys_index` VALUES (1632, '');
INSERT INTO `sys_index` VALUES (1633, '');
INSERT INTO `sys_index` VALUES (1634, '');
INSERT INTO `sys_index` VALUES (1635, '');
INSERT INTO `sys_index` VALUES (1636, '');
INSERT INTO `sys_index` VALUES (1637, '');
INSERT INTO `sys_index` VALUES (1638, '');
INSERT INTO `sys_index` VALUES (1639, '');
INSERT INTO `sys_index` VALUES (1640, '');
INSERT INTO `sys_index` VALUES (1641, '');
INSERT INTO `sys_index` VALUES (1642, '');
INSERT INTO `sys_index` VALUES (1643, '');
INSERT INTO `sys_index` VALUES (1644, '');
INSERT INTO `sys_index` VALUES (1645, '');
INSERT INTO `sys_index` VALUES (1646, '');
INSERT INTO `sys_index` VALUES (1647, '');
INSERT INTO `sys_index` VALUES (1648, '');
INSERT INTO `sys_index` VALUES (1649, '');
INSERT INTO `sys_index` VALUES (1650, '');
INSERT INTO `sys_index` VALUES (1651, '');
INSERT INTO `sys_index` VALUES (1652, '');
INSERT INTO `sys_index` VALUES (1653, '');
INSERT INTO `sys_index` VALUES (1654, '');
INSERT INTO `sys_index` VALUES (1655, '');
INSERT INTO `sys_index` VALUES (1656, '');
INSERT INTO `sys_index` VALUES (1657, '');
INSERT INTO `sys_index` VALUES (1658, '');
INSERT INTO `sys_index` VALUES (1659, '');
INSERT INTO `sys_index` VALUES (1660, '');
INSERT INTO `sys_index` VALUES (1661, '');
INSERT INTO `sys_index` VALUES (1662, '');
INSERT INTO `sys_index` VALUES (1663, '');
INSERT INTO `sys_index` VALUES (1664, '');
INSERT INTO `sys_index` VALUES (1665, '');
INSERT INTO `sys_index` VALUES (1666, '');
INSERT INTO `sys_index` VALUES (1667, '');
INSERT INTO `sys_index` VALUES (1668, '');
INSERT INTO `sys_index` VALUES (1669, '');
INSERT INTO `sys_index` VALUES (1670, '');
INSERT INTO `sys_index` VALUES (1671, '');
INSERT INTO `sys_index` VALUES (1672, '');
INSERT INTO `sys_index` VALUES (1673, '');
INSERT INTO `sys_index` VALUES (1674, '');
INSERT INTO `sys_index` VALUES (1675, '');
INSERT INTO `sys_index` VALUES (1676, '');
INSERT INTO `sys_index` VALUES (1677, '');
INSERT INTO `sys_index` VALUES (1678, '');
INSERT INTO `sys_index` VALUES (1679, '');
INSERT INTO `sys_index` VALUES (1680, '');
INSERT INTO `sys_index` VALUES (1681, '');
INSERT INTO `sys_index` VALUES (1682, '');
INSERT INTO `sys_index` VALUES (1683, '');
INSERT INTO `sys_index` VALUES (1684, '');
INSERT INTO `sys_index` VALUES (1685, '');
INSERT INTO `sys_index` VALUES (1686, '');
INSERT INTO `sys_index` VALUES (1687, '');
INSERT INTO `sys_index` VALUES (1688, '');
INSERT INTO `sys_index` VALUES (1689, '');
INSERT INTO `sys_index` VALUES (1690, '');
INSERT INTO `sys_index` VALUES (1691, '');
INSERT INTO `sys_index` VALUES (1692, '');
INSERT INTO `sys_index` VALUES (1693, '');
INSERT INTO `sys_index` VALUES (1694, '');
INSERT INTO `sys_index` VALUES (1695, '');
INSERT INTO `sys_index` VALUES (1696, '');
INSERT INTO `sys_index` VALUES (1697, '');
INSERT INTO `sys_index` VALUES (1698, '');
INSERT INTO `sys_index` VALUES (1699, '');
INSERT INTO `sys_index` VALUES (1700, '');
INSERT INTO `sys_index` VALUES (1701, '');
INSERT INTO `sys_index` VALUES (1702, '');
INSERT INTO `sys_index` VALUES (1703, '');
INSERT INTO `sys_index` VALUES (1704, '');
INSERT INTO `sys_index` VALUES (1705, '');
INSERT INTO `sys_index` VALUES (1706, '');
INSERT INTO `sys_index` VALUES (1707, '');
INSERT INTO `sys_index` VALUES (1708, '');
INSERT INTO `sys_index` VALUES (1709, '');
INSERT INTO `sys_index` VALUES (1710, '');
INSERT INTO `sys_index` VALUES (1711, '');
INSERT INTO `sys_index` VALUES (1712, '');
INSERT INTO `sys_index` VALUES (1713, '');
INSERT INTO `sys_index` VALUES (1714, '');
INSERT INTO `sys_index` VALUES (1715, '');
INSERT INTO `sys_index` VALUES (1716, '');
INSERT INTO `sys_index` VALUES (1717, '');
INSERT INTO `sys_index` VALUES (1718, '');
INSERT INTO `sys_index` VALUES (1719, '');
INSERT INTO `sys_index` VALUES (1720, '');
INSERT INTO `sys_index` VALUES (1721, '');
INSERT INTO `sys_index` VALUES (1722, '');
INSERT INTO `sys_index` VALUES (1723, '');
INSERT INTO `sys_index` VALUES (1724, '');
INSERT INTO `sys_index` VALUES (1725, '');
INSERT INTO `sys_index` VALUES (1726, '');
INSERT INTO `sys_index` VALUES (1727, '');
INSERT INTO `sys_index` VALUES (1728, '');
INSERT INTO `sys_index` VALUES (1729, '');
INSERT INTO `sys_index` VALUES (1730, '');
INSERT INTO `sys_index` VALUES (1731, '');
INSERT INTO `sys_index` VALUES (1732, '');
INSERT INTO `sys_index` VALUES (1733, '');
INSERT INTO `sys_index` VALUES (1734, '');
INSERT INTO `sys_index` VALUES (1735, '');
INSERT INTO `sys_index` VALUES (1736, '');
INSERT INTO `sys_index` VALUES (1737, '');
INSERT INTO `sys_index` VALUES (1738, '');
INSERT INTO `sys_index` VALUES (1739, '');
INSERT INTO `sys_index` VALUES (1740, '');
INSERT INTO `sys_index` VALUES (1741, '');
INSERT INTO `sys_index` VALUES (1742, '');
INSERT INTO `sys_index` VALUES (1743, '');
INSERT INTO `sys_index` VALUES (1744, '');
INSERT INTO `sys_index` VALUES (1745, '');
INSERT INTO `sys_index` VALUES (1746, '');
INSERT INTO `sys_index` VALUES (1747, '');
INSERT INTO `sys_index` VALUES (1748, '');
INSERT INTO `sys_index` VALUES (1749, '');
INSERT INTO `sys_index` VALUES (1750, '');
INSERT INTO `sys_index` VALUES (1751, '');
INSERT INTO `sys_index` VALUES (1752, '');
INSERT INTO `sys_index` VALUES (1753, '');
INSERT INTO `sys_index` VALUES (1754, '');
INSERT INTO `sys_index` VALUES (1755, '');
INSERT INTO `sys_index` VALUES (1756, '');
INSERT INTO `sys_index` VALUES (1757, '');
INSERT INTO `sys_index` VALUES (1758, '');
INSERT INTO `sys_index` VALUES (1759, '');
INSERT INTO `sys_index` VALUES (1760, '');
INSERT INTO `sys_index` VALUES (1761, '');
INSERT INTO `sys_index` VALUES (1762, '');
INSERT INTO `sys_index` VALUES (1763, '');
INSERT INTO `sys_index` VALUES (1764, '');
INSERT INTO `sys_index` VALUES (1765, '');
INSERT INTO `sys_index` VALUES (1766, '');
INSERT INTO `sys_index` VALUES (1767, '');
INSERT INTO `sys_index` VALUES (1768, '');
INSERT INTO `sys_index` VALUES (1769, '');
INSERT INTO `sys_index` VALUES (1770, '');
INSERT INTO `sys_index` VALUES (1771, '');
INSERT INTO `sys_index` VALUES (1772, '');
INSERT INTO `sys_index` VALUES (1773, '');
INSERT INTO `sys_index` VALUES (1774, '');
INSERT INTO `sys_index` VALUES (1775, '');
INSERT INTO `sys_index` VALUES (1776, '');
INSERT INTO `sys_index` VALUES (1777, '');
INSERT INTO `sys_index` VALUES (1778, '');
INSERT INTO `sys_index` VALUES (1779, '');
INSERT INTO `sys_index` VALUES (1780, '');
INSERT INTO `sys_index` VALUES (1781, '');
INSERT INTO `sys_index` VALUES (1782, '');
INSERT INTO `sys_index` VALUES (1783, '');
INSERT INTO `sys_index` VALUES (1784, '');
INSERT INTO `sys_index` VALUES (1785, '');
INSERT INTO `sys_index` VALUES (1786, '');
INSERT INTO `sys_index` VALUES (1787, '');
INSERT INTO `sys_index` VALUES (1788, '');
INSERT INTO `sys_index` VALUES (1789, '');
INSERT INTO `sys_index` VALUES (1790, '');
INSERT INTO `sys_index` VALUES (1791, '');
INSERT INTO `sys_index` VALUES (1792, '');
INSERT INTO `sys_index` VALUES (1793, '');
INSERT INTO `sys_index` VALUES (1794, '');
INSERT INTO `sys_index` VALUES (1795, '');
INSERT INTO `sys_index` VALUES (1796, '');
INSERT INTO `sys_index` VALUES (1797, '');
INSERT INTO `sys_index` VALUES (1798, '');
INSERT INTO `sys_index` VALUES (1799, '');
INSERT INTO `sys_index` VALUES (1800, '');
INSERT INTO `sys_index` VALUES (1801, '');
INSERT INTO `sys_index` VALUES (1802, '');
INSERT INTO `sys_index` VALUES (1803, '');
INSERT INTO `sys_index` VALUES (1804, '');
INSERT INTO `sys_index` VALUES (1805, '');
INSERT INTO `sys_index` VALUES (1806, '');
INSERT INTO `sys_index` VALUES (1807, '');
INSERT INTO `sys_index` VALUES (1808, '');
INSERT INTO `sys_index` VALUES (1809, '');
INSERT INTO `sys_index` VALUES (1810, '');
INSERT INTO `sys_index` VALUES (1811, '');
INSERT INTO `sys_index` VALUES (1812, '');
INSERT INTO `sys_index` VALUES (1813, '');
INSERT INTO `sys_index` VALUES (1814, '');
INSERT INTO `sys_index` VALUES (1815, '');
INSERT INTO `sys_index` VALUES (1816, '');
INSERT INTO `sys_index` VALUES (1817, '');
INSERT INTO `sys_index` VALUES (1818, '');
INSERT INTO `sys_index` VALUES (1819, '');
INSERT INTO `sys_index` VALUES (1820, '');
INSERT INTO `sys_index` VALUES (1821, '');
INSERT INTO `sys_index` VALUES (1822, '');
INSERT INTO `sys_index` VALUES (1823, '');
INSERT INTO `sys_index` VALUES (1824, '');
INSERT INTO `sys_index` VALUES (1825, '');
INSERT INTO `sys_index` VALUES (1826, '');
INSERT INTO `sys_index` VALUES (1827, '');
INSERT INTO `sys_index` VALUES (1828, '');
INSERT INTO `sys_index` VALUES (1829, '');
INSERT INTO `sys_index` VALUES (1830, '');
INSERT INTO `sys_index` VALUES (1831, '');
INSERT INTO `sys_index` VALUES (1832, '');
INSERT INTO `sys_index` VALUES (1833, '');
INSERT INTO `sys_index` VALUES (1834, '');
INSERT INTO `sys_index` VALUES (1835, '');
INSERT INTO `sys_index` VALUES (1836, '');
INSERT INTO `sys_index` VALUES (1837, '');
INSERT INTO `sys_index` VALUES (1838, '');
INSERT INTO `sys_index` VALUES (1839, '');
INSERT INTO `sys_index` VALUES (1840, '');
INSERT INTO `sys_index` VALUES (1841, '');
INSERT INTO `sys_index` VALUES (1842, '');
INSERT INTO `sys_index` VALUES (1843, '');
INSERT INTO `sys_index` VALUES (1844, '');
INSERT INTO `sys_index` VALUES (1845, '');
INSERT INTO `sys_index` VALUES (1846, '');
INSERT INTO `sys_index` VALUES (1847, '');
INSERT INTO `sys_index` VALUES (1848, '');
INSERT INTO `sys_index` VALUES (1849, '');
INSERT INTO `sys_index` VALUES (1850, '');
INSERT INTO `sys_index` VALUES (1851, '');
INSERT INTO `sys_index` VALUES (1852, '');
INSERT INTO `sys_index` VALUES (1853, '');
INSERT INTO `sys_index` VALUES (1854, '');
INSERT INTO `sys_index` VALUES (1855, '');
INSERT INTO `sys_index` VALUES (1856, '');
INSERT INTO `sys_index` VALUES (1857, '');
INSERT INTO `sys_index` VALUES (1858, '');
INSERT INTO `sys_index` VALUES (1859, '');
INSERT INTO `sys_index` VALUES (1860, '');
INSERT INTO `sys_index` VALUES (1861, '');
INSERT INTO `sys_index` VALUES (1862, '');
INSERT INTO `sys_index` VALUES (1863, '');
INSERT INTO `sys_index` VALUES (1864, '');
INSERT INTO `sys_index` VALUES (1865, '');
INSERT INTO `sys_index` VALUES (1866, '');
INSERT INTO `sys_index` VALUES (1867, '');
INSERT INTO `sys_index` VALUES (1868, '');
INSERT INTO `sys_index` VALUES (1869, '');
INSERT INTO `sys_index` VALUES (1870, '');
INSERT INTO `sys_index` VALUES (1871, '');
INSERT INTO `sys_index` VALUES (1872, '');
INSERT INTO `sys_index` VALUES (1873, '');
INSERT INTO `sys_index` VALUES (1874, '');
INSERT INTO `sys_index` VALUES (1875, '');
INSERT INTO `sys_index` VALUES (1876, '');
INSERT INTO `sys_index` VALUES (1877, '');
INSERT INTO `sys_index` VALUES (1878, '');
INSERT INTO `sys_index` VALUES (1879, '');
INSERT INTO `sys_index` VALUES (1880, '');
INSERT INTO `sys_index` VALUES (1881, '');
INSERT INTO `sys_index` VALUES (1882, '');
INSERT INTO `sys_index` VALUES (1883, '');
INSERT INTO `sys_index` VALUES (1884, '');
INSERT INTO `sys_index` VALUES (1885, '');
INSERT INTO `sys_index` VALUES (1886, '');
INSERT INTO `sys_index` VALUES (1887, '');
INSERT INTO `sys_index` VALUES (1888, '');
INSERT INTO `sys_index` VALUES (1889, '');
INSERT INTO `sys_index` VALUES (1890, '');
INSERT INTO `sys_index` VALUES (1891, '');
INSERT INTO `sys_index` VALUES (1892, '');
INSERT INTO `sys_index` VALUES (1893, '');
INSERT INTO `sys_index` VALUES (1894, '');
INSERT INTO `sys_index` VALUES (1895, '');
INSERT INTO `sys_index` VALUES (1896, '');
INSERT INTO `sys_index` VALUES (1897, '');
INSERT INTO `sys_index` VALUES (1898, '');
INSERT INTO `sys_index` VALUES (1899, '');
INSERT INTO `sys_index` VALUES (1900, '');
INSERT INTO `sys_index` VALUES (1901, '');
INSERT INTO `sys_index` VALUES (1902, '');
INSERT INTO `sys_index` VALUES (1903, '');
INSERT INTO `sys_index` VALUES (1904, '');
INSERT INTO `sys_index` VALUES (1905, '');
INSERT INTO `sys_index` VALUES (1906, '');
INSERT INTO `sys_index` VALUES (1907, '');
INSERT INTO `sys_index` VALUES (1908, '');
INSERT INTO `sys_index` VALUES (1909, '');
INSERT INTO `sys_index` VALUES (1910, '');
INSERT INTO `sys_index` VALUES (1911, '');
INSERT INTO `sys_index` VALUES (1912, '');
INSERT INTO `sys_index` VALUES (1913, '');
INSERT INTO `sys_index` VALUES (1914, '');
INSERT INTO `sys_index` VALUES (1915, '');
INSERT INTO `sys_index` VALUES (1916, '');
INSERT INTO `sys_index` VALUES (1917, '');
INSERT INTO `sys_index` VALUES (1918, '');
INSERT INTO `sys_index` VALUES (1919, '');
INSERT INTO `sys_index` VALUES (1920, '');
INSERT INTO `sys_index` VALUES (1921, '');
INSERT INTO `sys_index` VALUES (1922, '');
INSERT INTO `sys_index` VALUES (1923, '');
INSERT INTO `sys_index` VALUES (1924, '');
INSERT INTO `sys_index` VALUES (1925, '');
INSERT INTO `sys_index` VALUES (1926, '');
INSERT INTO `sys_index` VALUES (1927, '');
INSERT INTO `sys_index` VALUES (1928, '');
INSERT INTO `sys_index` VALUES (1929, '');
INSERT INTO `sys_index` VALUES (1930, '');
INSERT INTO `sys_index` VALUES (1931, '');
INSERT INTO `sys_index` VALUES (1932, '');
INSERT INTO `sys_index` VALUES (1933, '');
INSERT INTO `sys_index` VALUES (1934, '');
INSERT INTO `sys_index` VALUES (1935, '');
INSERT INTO `sys_index` VALUES (1936, '');
INSERT INTO `sys_index` VALUES (1937, '');
INSERT INTO `sys_index` VALUES (1938, '');
INSERT INTO `sys_index` VALUES (1939, '');
INSERT INTO `sys_index` VALUES (1940, '');
INSERT INTO `sys_index` VALUES (1941, '');
INSERT INTO `sys_index` VALUES (1942, '');
INSERT INTO `sys_index` VALUES (1943, '');
INSERT INTO `sys_index` VALUES (1944, '');
INSERT INTO `sys_index` VALUES (1945, '');
INSERT INTO `sys_index` VALUES (1946, '');
INSERT INTO `sys_index` VALUES (1947, '');
INSERT INTO `sys_index` VALUES (1948, '');
INSERT INTO `sys_index` VALUES (1949, '');
INSERT INTO `sys_index` VALUES (1950, '');
INSERT INTO `sys_index` VALUES (1951, '');
INSERT INTO `sys_index` VALUES (1952, '');
INSERT INTO `sys_index` VALUES (1953, '');
INSERT INTO `sys_index` VALUES (1954, '');
INSERT INTO `sys_index` VALUES (1955, '');
INSERT INTO `sys_index` VALUES (1956, '');
INSERT INTO `sys_index` VALUES (1957, '');
INSERT INTO `sys_index` VALUES (1958, '');
INSERT INTO `sys_index` VALUES (1959, '');
INSERT INTO `sys_index` VALUES (1960, '');
INSERT INTO `sys_index` VALUES (1961, '');
INSERT INTO `sys_index` VALUES (1962, '');
INSERT INTO `sys_index` VALUES (1963, '');
INSERT INTO `sys_index` VALUES (1964, '');
INSERT INTO `sys_index` VALUES (1965, '');
INSERT INTO `sys_index` VALUES (1966, '');
INSERT INTO `sys_index` VALUES (1967, '');
INSERT INTO `sys_index` VALUES (1968, '');
INSERT INTO `sys_index` VALUES (1969, '');
INSERT INTO `sys_index` VALUES (1970, '');
INSERT INTO `sys_index` VALUES (1971, '');
INSERT INTO `sys_index` VALUES (1972, '');
INSERT INTO `sys_index` VALUES (1973, '');
INSERT INTO `sys_index` VALUES (1974, '');
INSERT INTO `sys_index` VALUES (1975, '');
INSERT INTO `sys_index` VALUES (1976, '');
INSERT INTO `sys_index` VALUES (1977, '');
INSERT INTO `sys_index` VALUES (1978, '');
INSERT INTO `sys_index` VALUES (1979, '');
INSERT INTO `sys_index` VALUES (1980, '');
INSERT INTO `sys_index` VALUES (1981, '');
INSERT INTO `sys_index` VALUES (1982, '');
INSERT INTO `sys_index` VALUES (1983, '');
INSERT INTO `sys_index` VALUES (1984, '');
INSERT INTO `sys_index` VALUES (1985, '');
INSERT INTO `sys_index` VALUES (1986, '');
INSERT INTO `sys_index` VALUES (1987, '');
INSERT INTO `sys_index` VALUES (1988, '');
INSERT INTO `sys_index` VALUES (1989, '');
INSERT INTO `sys_index` VALUES (1990, '');
INSERT INTO `sys_index` VALUES (1991, '');
INSERT INTO `sys_index` VALUES (1992, '');
INSERT INTO `sys_index` VALUES (1993, '');
INSERT INTO `sys_index` VALUES (1994, '');
INSERT INTO `sys_index` VALUES (1995, '');
INSERT INTO `sys_index` VALUES (1996, '');
INSERT INTO `sys_index` VALUES (1997, '');
INSERT INTO `sys_index` VALUES (1998, '');
INSERT INTO `sys_index` VALUES (1999, '');
INSERT INTO `sys_index` VALUES (2000, '');
INSERT INTO `sys_index` VALUES (2001, '');
INSERT INTO `sys_index` VALUES (2002, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `id` bigint(20) NOT NULL COMMENT '任务id',
  `job_name` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Cron表达式',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `misfire_policy` char(1) COLLATE utf8mb4_bin DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) COLLATE utf8mb4_bin DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='定时任务';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
BEGIN;
INSERT INTO `sys_job` VALUES (1239107312446103553, '测试任务', 'DEFAULT', 'jobTaskTest.fastParams(\'123\')', '0 0/10 * * * ? *', '0', '3', '1', '1', 'fastParams有参数', '2020-03-15 16:32:59', 'admin', 'admin', '2020-05-29 22:08:05');
INSERT INTO `sys_job` VALUES (1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0 0/5 * * * ? *', '0', '3', '1', '1', '公告通知时效性排查', '2020-03-28 00:52:16', 'admin', 'admin', '2020-06-18 22:12:01');
COMMIT;

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `id` bigint(20) NOT NULL COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `job_name` varchar(64) CHARACTER SET utf8 DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 DEFAULT NULL COMMENT '调用目标字符串',
  `status` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='定时任务日志';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_job_log` VALUES (1273615196295823362, 1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0', '执行成功!', 14, '2020-06-18 21:55:00');
INSERT INTO `sys_job_log` VALUES (1273616454377308162, 1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0', '执行成功!', 7, '2020-06-18 22:00:00');
INSERT INTO `sys_job_log` VALUES (1273616824688214018, 1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0', '执行成功!', 3, '2020-06-18 22:01:28');
INSERT INTO `sys_job_log` VALUES (1273617712651730945, 1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0', '执行成功!', 6, '2020-06-18 22:05:00');
INSERT INTO `sys_job_log` VALUES (1273618970913570817, 1243581612249190401, '公告通知时效性', 'DEFAULT', 'jobNoticeTask.fastNotice', '0', '执行成功!', 6, '2020-06-18 22:10:00');
COMMIT;

-- ----------------------------
-- Table structure for sys_login_infor
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_infor`;
CREATE TABLE `sys_login_infor` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '系统类型',
  `mobile` char(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '移动平台(0) 电脑设备(1)',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '50005' COMMENT '登录状态（00000成功 其他失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  `comp_id` bigint(20) DEFAULT '-1' COMMENT '公司ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_login_infor
-- ----------------------------
BEGIN;
INSERT INTO `sys_login_infor` VALUES (1273505689989283842, 'admin', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 14:39:52', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273506154990796801, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 14:41:43', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273508280743841793, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 14:50:09', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273531118292828161, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 16:20:54', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273558654435491842, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '50004', '账号或密码不正确,输入错误1 次!', '2020-06-18 18:10:19', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273558661448368129, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '50004', '账号或密码不正确,输入错误2 次!', '2020-06-18 18:10:21', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273558667584634882, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '50004', '账号或密码不正确,输入错误3 次!', '2020-06-18 18:10:23', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273558691764797441, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 18:10:28', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273605282873769986, 'admin', '192.168.0.105', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 21:15:37', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273606374684655618, 'admin', '192.168.0.104', '内网IP', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '00000', '登陆成功!', '2020-06-18 21:19:57', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273624190682955778, 'admin', '192.168.0.105', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 22:30:44', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273624445537255425, '00214', '192.168.0.105', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 22:31:45', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273632881785012225, 'admin', '192.168.0.105', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 23:05:17', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273632983534632962, '00214', '192.168.0.105', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-18 23:05:41', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273784873442443265, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 09:09:14', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273817095297953793, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 11:17:17', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273852012013895681, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 13:36:01', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273886737243914241, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 15:54:00', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273900859180310529, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 16:50:07', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273907820940500993, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '50004', '账号或密码不正确,输入错误1 次!', '2020-06-19 17:17:47', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273907834970447874, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 17:17:51', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273913343719010305, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 17:39:44', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273969357878063105, 'admin', '192.168.0.100', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 21:22:19', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273978488340922370, 'admin', '192.168.0.100', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 21:58:36', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273978569630728194, '00214', '192.168.0.100', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 21:58:55', 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_login_infor` VALUES (1273988521548103681, 'admin', '192.168.1.5', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 22:38:28', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1273989971275726850, 'admin', '192.168.1.5', '内网IP', 'Firefox', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 22:44:13', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1274002563075457025, 'admin', '192.168.1.5', '内网IP', 'Firefox', 'OSX', '1', '00000', '登陆成功!', '2020-06-19 23:34:16', 1, 1);
INSERT INTO `sys_login_infor` VALUES (1274198985708191746, '00214', '192.168.1.179', '内网IP', 'Chrome', 'OSX', '1', '00000', '登陆成功!', '2020-06-20 12:34:46', 1241024147242586113, 1271320285504720897);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单名称',
  `url` varchar(200) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单URL',
  `module_codes` varchar(500) COLLATE utf8mb4_bin DEFAULT 'core' COMMENT '归属模块（多个用逗号隔开）',
  `target` varchar(20) COLLATE utf8mb4_bin DEFAULT '' COMMENT '目标(打开方式)',
  `perms` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `hide` tinyint(4) DEFAULT '0' COMMENT '是否删除  1：隐藏  0：正常',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, 0, '系统设置', NULL, 'core,bcs', '', '', 0, 'fa fa-desktop', 0, 0, '', NULL, 'admin', '2020-01-30 21:53:30', '');
INSERT INTO `sys_menu` VALUES (2, 1, '用户管理', 'sys/user', 'core', '', 'sys:user:view', 1, 'fa fa-user', 2, 0, '', NULL, 'admin', '2019-12-11 22:07:21', '');
INSERT INTO `sys_menu` VALUES (3, 1, '角色管理', 'sys/role', 'core', '', 'sys:role:view', 1, 'fa fa-user-secret', 3, 0, '', NULL, 'admin', '2019-12-11 22:08:30', '');
INSERT INTO `sys_menu` VALUES (15, 2, '查看', NULL, 'core', '', 'sys:user:list,sys:user:info', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (16, 2, '新增', NULL, 'core', '', 'sys:user:add,sys:dept:select', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-01 21:18:34', '');
INSERT INTO `sys_menu` VALUES (17, 2, '修改', NULL, 'core', '', 'sys:user:edit', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (18, 2, '删除', NULL, 'core', '', 'sys:user:del', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (19, 3, '查看', NULL, 'core', '', 'sys:role:list,sys:role:info', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (20, 3, '新增', '#', 'core', '', 'sys:role:add', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-05 02:02:27', '');
INSERT INTO `sys_menu` VALUES (21, 3, '修改', '#', 'core', '', 'sys:role:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-05 02:02:45', '');
INSERT INTO `sys_menu` VALUES (22, 3, '删除', '#', 'core', '', 'sys:role:del', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-05 02:03:07', '');
INSERT INTO `sys_menu` VALUES (41, 1, '公司管理', 'sys/comp', 'core', '', 'sys:comp:view', 1, 'fa fa-bars', 0, 0, '', NULL, 'admin', '2019-12-02 02:12:51', '');
INSERT INTO `sys_menu` VALUES (42, 41, '新增', '#', 'core', '', 'sys:comp:add', 2, NULL, 1, 0, '', NULL, 'admin', '2019-12-03 08:25:44', '');
INSERT INTO `sys_menu` VALUES (43, 41, '查看', NULL, 'core', '', 'sys:comp:list', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (44, 41, '修改', '#', 'core', '', 'sys:comp:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-03 08:24:53', '');
INSERT INTO `sys_menu` VALUES (45, 41, '删除', '#', 'core', '', 'sys:comp:del', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-03 08:25:05', '');
INSERT INTO `sys_menu` VALUES (46, 0, '设备管理', NULL, 'bcs', '', '', 0, 'fa fa-cogs', 4, 0, '', NULL, 'admin', '2020-01-18 06:33:56', '');
INSERT INTO `sys_menu` VALUES (47, 46, '终端管理', 'bcs/mach', 'bcs', '_tab', 'bcs:mach:view', 1, 'fa fa-bus', 0, 0, '', NULL, 'admin', '2020-02-04 21:12:35', '');
INSERT INTO `sys_menu` VALUES (48, 47, '新增', NULL, 'bcs', '', 'bcs:mach:add', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-04 21:37:54', '');
INSERT INTO `sys_menu` VALUES (49, 47, '修改', NULL, 'bcs', '', 'bcs:mach:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-04 21:38:30', '');
INSERT INTO `sys_menu` VALUES (50, 47, '查看', NULL, 'bcs', '', 'tbc:mach:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-20 06:56:37', '');
INSERT INTO `sys_menu` VALUES (59, 0, '交易管理', NULL, 'bcs', '', '', 0, 'fa fa-bar-chart', 5, 0, '', NULL, 'admin', '2020-01-26 15:04:44', '');
INSERT INTO `sys_menu` VALUES (60, 59, '所有交易', 'tbc/trad', 'bcs', '_tab', 'tbc:trad:view', 1, 'fa fa-bar-chart', 1, 0, '', NULL, 'admin', '2020-01-26 15:05:02', '');
INSERT INTO `sys_menu` VALUES (61, 59, '实时交易', 'tbc/redltime', 'bcs', '_tab', 'tbc:reltime:view', 1, 'fa fa-building', 0, 0, '', NULL, 'admin', '2020-01-26 15:04:54', '');
INSERT INTO `sys_menu` VALUES (62, 59, '历史交易', 'tbc/odltrad', 'bcs', '_tab', 'tbc:oldtrad:view', 1, 'fa fa-area-chart', 2, 0, '', NULL, 'admin', '2020-01-26 15:05:09', '');
INSERT INTO `sys_menu` VALUES (63, 62, '查询', '#', 'bcs', '', 'tbc:oldtrad:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:06:00', '');
INSERT INTO `sys_menu` VALUES (64, 62, '查询明细', '#', 'bcs', '', 'tbc:oldtrad:detail', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:06:17', '');
INSERT INTO `sys_menu` VALUES (65, 61, '查询', '#', 'bcs', '', 'tbc:redltime:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:05:28', '');
INSERT INTO `sys_menu` VALUES (66, 61, '明细查看', '#', 'bcs', '', 'tbc:reltime:detail,tbc:redltime:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:05:37', '');
INSERT INTO `sys_menu` VALUES (67, 60, '查询', NULL, 'bcs', '', 'tbc:trad:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:05:49', '');
INSERT INTO `sys_menu` VALUES (68, 0, '监控管理', NULL, 'core,bcs', '', '', 0, 'fa fa-eye', 3, 0, '', NULL, 'admin', '2020-01-26 15:07:39', '');
INSERT INTO `sys_menu` VALUES (70, 0, '系统工具', NULL, 'core,bcs', '', '', 0, 'fa fa-windows', 1, 0, '', NULL, 'admin', '2020-01-20 06:58:58', '');
INSERT INTO `sys_menu` VALUES (72, 70, '定时任务', 'sys/schedule', 'core', '_tab', 'sys:job:view', 1, 'fa fa-tasks', 8, 0, '', NULL, 'admin', '2020-02-08 17:26:42', '');
INSERT INTO `sys_menu` VALUES (73, 70, '参数管理', 'sys/config', 'core', '', 'sys:config:view', 1, 'fa fa-sun-o', 6, 0, '', NULL, 'admin', '2019-12-05 18:44:58', '');
INSERT INTO `sys_menu` VALUES (76, 70, '文件上传', 'modules/oss/tss.html', 'core', '_tab', 'sys:tss:list', 1, 'fa fa-cloud-upload', 5, 1, '', NULL, 'admin', '2020-02-13 09:08:06', '');
INSERT INTO `sys_menu` VALUES (77, 70, '字典管理', 'sys/dict', 'core', '', 'sys:dict:view', 1, 'fa fa-bookmark-o', 7, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (78, 72, '查看', '#', 'core', '', 'sys:job:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:26:54', '');
INSERT INTO `sys_menu` VALUES (79, 72, '新增', '#', 'core', '', 'sys:job:add', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:27:09', '');
INSERT INTO `sys_menu` VALUES (80, 72, '修改', '#', 'core', '', 'sys:job:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:27:33', '');
INSERT INTO `sys_menu` VALUES (81, 72, '删除', '#', 'core', '', 'sys:job:del', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:27:43', '');
INSERT INTO `sys_menu` VALUES (82, 72, '状态', '#', 'core', '', 'sys:job:changeStatus', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:29:55', '');
INSERT INTO `sys_menu` VALUES (83, 72, '恢复', NULL, 'core', '', 'sys:job:resume', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:30:08', '');
INSERT INTO `sys_menu` VALUES (84, 72, '执行', NULL, 'core', '', 'sys:job:run', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 17:30:26', '');
INSERT INTO `sys_menu` VALUES (85, 72, '日志', '#', 'core', '', 'sys:job:loglist', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-08 20:34:02', '');
INSERT INTO `sys_menu` VALUES (86, 77, '查看', NULL, 'core', '', 'sys:dict:list,sys:dict:info', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (87, 77, '新增', NULL, 'core', '', 'sys:dict:add', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (88, 77, '修改', NULL, 'core', '', 'sys:dict:edit', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (89, 77, '删除', NULL, 'core', '', 'sys:dict:del', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (94, 70, '菜单管理', 'sys/menu', 'core', '', 'sys:menu:view', 1, 'fa fa-th-list', 1, 0, '', NULL, 'admin', '2019-12-04 05:24:44', '');
INSERT INTO `sys_menu` VALUES (96, 94, '新增', NULL, 'core', '', 'sys:menu:add', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (97, 94, '修改', NULL, 'core', '', 'sys:menu:edit', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (98, 94, '删除', '#', 'core', '', 'sys:menu:del', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-03 06:21:51', '');
INSERT INTO `sys_menu` VALUES (99, 68, '用户监控', 'sys/online', 'core', '', 'sys:online:view', 1, 'fa fa-user-circle', 1, 0, '', NULL, 'admin', '2019-12-05 02:41:18', '');
INSERT INTO `sys_menu` VALUES (101, 99, '强退', '#', 'core', '', 'sys:online:forceLogout', 2, NULL, 0, 0, '', NULL, 'admin', '2019-12-05 02:42:00', '');
INSERT INTO `sys_menu` VALUES (102, 0, '库房管理', '#', 'bcs', '', '', 0, 'fa fa-university', 6, 0, '', NULL, 'admin', '2020-01-26 15:01:02', '');
INSERT INTO `sys_menu` VALUES (103, 68, '设备监控', 'modules/tbc/monitor.html', 'bcs', '_tab', '', 1, 'fa fa-heartbeat', 0, 0, '', NULL, 'admin', '2020-01-26 15:07:52', '');
INSERT INTO `sys_menu` VALUES (104, 46, '故障处理', 'modules/tbc/breakdown.html', 'bcs', '_tab', 'tbc:breakdown:list', 1, 'fa fa-wrench', 2, 0, '', NULL, 'admin', '2020-01-18 06:34:38', '');
INSERT INTO `sys_menu` VALUES (106, 102, '入库情况', 'tbc/put', 'bcs', '_tab', 'tbc:put:view', 1, 'fa fa-truck', 1, 0, '', NULL, 'admin', '2020-01-26 15:01:46', '');
INSERT INTO `sys_menu` VALUES (107, 102, '处理情况', 'modules/warehouse/dispose.html', 'bcs', '_tab', '', 1, 'fa fa-pencil', 2, 0, '', NULL, 'admin', '2020-01-26 15:01:54', '');
INSERT INTO `sys_menu` VALUES (108, 0, '报表管理', NULL, 'core', '', '', 0, 'fa fa-file-excel-o', 7, 1, '', NULL, 'admin', '2020-05-16 06:44:27', '');
INSERT INTO `sys_menu` VALUES (109, 108, '报表', 'sys/poi', 'core', '', 'sys:poi:view', 1, 'fa fa-file', 0, 0, '', NULL, 'admin', '2019-12-20 17:56:48', '');
INSERT INTO `sys_menu` VALUES (110, 108, '月报表', '#', 'core', '', '', 1, 'fa fa-file', 1, 1, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (111, 108, '年报表', '#', 'core', '', '', 1, 'fa fa-file', 2, 1, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (114, 0, '数据分析', NULL, 'core', '', '', 0, 'fa fa-database', 8, 1, '', NULL, 'admin', '2020-05-16 06:49:24', '');
INSERT INTO `sys_menu` VALUES (115, 114, '司机上班情况', '#', 'core', '_tab', '', 1, 'fa fa-calendar', 0, 0, '', NULL, 'admin', '2020-04-23 06:03:55', '');
INSERT INTO `sys_menu` VALUES (118, 70, '设备升级', 'modules/update/update.html', 'core', '_tab', '', 1, 'fa fa-rocket', 4, 1, '', NULL, 'admin', '2020-02-13 09:08:23', '');
INSERT INTO `sys_menu` VALUES (119, 70, '设备日志', 'tbc/log', 'bcs', '_tab', 'tbc:log:view', 1, 'fa fa-file-text', 3, 0, '', NULL, 'admin', '2020-01-29 23:19:00', '');
INSERT INTO `sys_menu` VALUES (120, 104, '故障修复', NULL, 'bcs', '', 'tbc:breakdown:save', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-18 06:35:09', '');
INSERT INTO `sys_menu` VALUES (121, 106, '查看', '#', 'bcs', '', 'tbc:put:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:03:02', '');
INSERT INTO `sys_menu` VALUES (122, 106, '入库处理权限', '#', 'bcs', '', 'tbc:put:dispose', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:03:13', '');
INSERT INTO `sys_menu` VALUES (123, 107, '查询权限', NULL, 'bcs', '', 'tbc:waredispose:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:03:32', '');
INSERT INTO `sys_menu` VALUES (124, 107, '查询用户', NULL, 'bcs', '', 'tbc:warehouse:user', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:03:47', '');
INSERT INTO `sys_menu` VALUES (125, 76, '云参数配置', NULL, 'core', '', 'sys:tss:all', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (126, 76, '文件上传按钮', NULL, 'core', '', 'sys:tss:upload', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (127, 76, '文件删除', NULL, 'core', '', 'sys:tss:delete', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (128, 118, '软件升级', NULL, 'core', '', 'sys:tbc:mach:update', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (129, 68, '服务监控', 'sys/server', 'core', '_tab', 'sys:server:view', 1, 'fa fa-server', 3, 0, '', NULL, 'admin', '2020-03-15 16:39:00', '');
INSERT INTO `sys_menu` VALUES (130, 0, '日志管理', '#', 'core', '', '', 0, 'fa fa-pencil-square-o', 2, 0, '', '2020-01-12 22:13:35', 'admin', '2020-04-23 06:03:37', '');
INSERT INTO `sys_menu` VALUES (131, 130, '操作日志', 'sys/operlog', 'core', '_tab', 'sys:log:view', 1, 'fa fa-file-image-o', 0, 0, '', NULL, 'admin', '2020-06-03 01:37:29', '');
INSERT INTO `sys_menu` VALUES (132, 130, '登陆日志', 'sys/logininfo', 'core,bcs', '_tab', 'sys:logininfo:view', 1, 'fa fa-address-book', 0, 0, '', NULL, 'admin', '2020-01-20 06:59:14', '');
INSERT INTO `sys_menu` VALUES (133, 47, '设备查询管理人员', NULL, 'bcs', '', 'tbc:mach:mgaelist', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-20 06:57:52', '');
INSERT INTO `sys_menu` VALUES (134, 47, '删除权限', NULL, 'bcs', '', 'bcs:mach:del', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-04 21:39:23', '');
INSERT INTO `sys_menu` VALUES (135, 70, '支付设置', 'modules/pay/pay.html', 'core', '_tab', 'sys:pay:info', 1, 'fa fa-paypal', 8, 1, '', NULL, 'admin', '2020-02-13 09:09:21', '');
INSERT INTO `sys_menu` VALUES (136, 135, '微信参数修改权限', NULL, 'core', '', 'sys:pay:wecahtUpdate', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (137, 135, '支付宝参数修改权限', NULL, 'core', '', 'sys:pay:alipayUpdate', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (138, 102, '钞袋管理', 'tbc/bag', 'bcs', '_tab', 'tbc:bag:view', 1, 'fa fa-shopping-bag', 0, 0, '', NULL, 'admin', '2020-01-26 15:01:37', '');
INSERT INTO `sys_menu` VALUES (139, 138, '数据显示', NULL, 'bcs', '', 'tbc:bag:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:02:08', '');
INSERT INTO `sys_menu` VALUES (140, 1, '机构管理', 'sys/dept', 'core', '_tab', 'sys:dept:view', 1, 'fa fa-outdent', 1, 0, '', NULL, 'admin', '2020-06-11 18:25:12', '');
INSERT INTO `sys_menu` VALUES (141, 140, '新增', '#', 'core,bcs', '', 'sys:dept:add', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-30 22:53:35', '');
INSERT INTO `sys_menu` VALUES (142, 140, '查看', '#', 'core,bcs', '', 'sys:dept:list', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-30 22:53:47', '');
INSERT INTO `sys_menu` VALUES (143, 140, '修改', '#', 'core,bcs', '', 'sys:dept:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-30 22:53:54', '');
INSERT INTO `sys_menu` VALUES (144, 140, '删除', '#', 'core,bcs', '', 'sys:dept:del', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-30 22:54:02', '');
INSERT INTO `sys_menu` VALUES (145, 109, '下载权限', NULL, 'core', '', 'sys:poi:download', 2, NULL, 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (146, 62, '导出报表', NULL, 'bcs', '', 'tbc:poi:excel', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:06:30', '');
INSERT INTO `sys_menu` VALUES (147, 138, '新增', '#', 'bcs', '', 'tbc:bag:add', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:02:33', '');
INSERT INTO `sys_menu` VALUES (148, 138, '修改', '#', 'bcs', '', 'tbc:bag:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:02:42', '');
INSERT INTO `sys_menu` VALUES (149, 138, '删除', '#', 'bcs', '', 'tbc:bag:del', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-26 15:02:51', '');
INSERT INTO `sys_menu` VALUES (150, 59, '交易统计', 'modules/tbc/graph.html', 'bcs', '_tab', 'tbc:graph:list', 1, 'fa fa-file-excel-o', 4, 1, '', NULL, 'admin', '2020-01-26 15:05:18', '');
INSERT INTO `sys_menu` VALUES (151, 47, '开箱', NULL, 'bcs', '', 'tbc:mach:lockopen', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-20 06:58:26', '');
INSERT INTO `sys_menu` VALUES (152, 46, '胆箱管理', 'bcs/box', 'bcs', '_tab', 'bcs:box:view', 1, 'fa fa-archive', 1, 0, '', NULL, 'admin', '2020-02-06 16:14:05', '');
INSERT INTO `sys_menu` VALUES (153, 152, '新增', NULL, 'bcs', '', 'bcs:box:add', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-06 16:11:30', '');
INSERT INTO `sys_menu` VALUES (154, 152, '修改', NULL, 'bcs', '', 'bcs:box:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-02-06 16:11:48', '');
INSERT INTO `sys_menu` VALUES (155, 152, '获取心跳', NULL, 'bcs', '', 'tbc:box:info', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-20 06:56:26', '');
INSERT INTO `sys_menu` VALUES (156, 47, '开锁日志', NULL, 'bcs', '', 'tbc:mach:lockinfo', 2, NULL, 0, 0, '', NULL, 'admin', '2020-01-20 06:58:36', '');
INSERT INTO `sys_menu` VALUES (158, 1, '项目测试', 'gtv/dev', 'core', '_alert', 'gtv:dev:view', 1, 'glyphicon glyphicon-copyright-mark', 0, 1, '', NULL, 'admin', '2020-05-27 02:19:46', '');
INSERT INTO `sys_menu` VALUES (159, 158, '查看', '#', 'core', '', 'gtv:dev:list,gtv:dev:add,gtv:dev:edit', 2, NULL, 0, 0, '', NULL, 'admin', '2020-05-27 02:19:24', '');
INSERT INTO `sys_menu` VALUES (160, 77, '字典查询', '', 'core', '', 'system:dict:list', 2, '', 0, 0, '', NULL, '', NULL, '');
INSERT INTO `sys_menu` VALUES (161, 94, '查看', '', 'core', '', 'sys:menu:list', 2, '', 0, 0, 'admin', '2019-12-22 19:55:13', 'admin', '2019-12-04 05:24:34', '');
INSERT INTO `sys_menu` VALUES (162, 131, '查看', '', 'core,bcs', '', 'sys:log:list', 2, '', 0, 0, 'admin', '2019-12-22 20:44:22', 'admin', '2020-02-03 23:31:03', '');
INSERT INTO `sys_menu` VALUES (163, 131, '详细信息', '', 'core,bcs', '', 'sys:log:detail', 2, '', 0, 0, 'admin', '2019-12-22 21:12:06', 'admin', '2020-02-03 23:31:11', '');
INSERT INTO `sys_menu` VALUES (164, 132, '查看', '', 'core,bcs', '', 'sys:logininfo:list', 2, '', 0, 0, 'admin', '2019-12-23 17:05:09', 'admin', '2020-02-03 23:31:19', '');
INSERT INTO `sys_menu` VALUES (165, 132, '删除', '', 'core,bcs', '', 'sys:logininfo:del', 2, '', 0, 0, 'admin', '2019-12-23 17:06:29', 'admin', '2020-02-03 23:31:26', '');
INSERT INTO `sys_menu` VALUES (166, 132, '清空', '', 'core,bcs', '', 'sys:logininfo:clean', 2, '', 0, 0, 'admin', '2019-12-23 17:06:56', 'admin', '2020-02-03 23:31:33', '');
INSERT INTO `sys_menu` VALUES (167, 99, '查看', '', 'core', '', 'sys:online:list', 2, '', 0, 0, 'admin', '2019-12-23 18:17:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (168, 73, '查看', '', 'core', '', 'sys:config:list', 2, '', 0, 0, 'admin', '2019-12-24 10:20:33', '', NULL, '');
INSERT INTO `sys_menu` VALUES (169, 73, '新增', '', 'core', '', 'sys:config:add', 2, '', 0, 0, 'admin', '2019-12-24 10:30:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (170, 73, '修改', '', 'core', '', 'sys:config:edit', 2, '', 0, 0, 'admin', '2019-12-24 10:30:48', 'admin', '2019-12-05 20:08:35', '');
INSERT INTO `sys_menu` VALUES (171, 73, '删除', '', 'core', '', 'sys:config:del', 2, '', 0, 0, 'admin', '2019-12-24 10:32:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (172, 106, '详情查看', '', 'bcs', '', 'tbc:put:detail', 2, '', 0, 0, 'admin', '2019-12-27 15:47:37', 'admin', '2020-01-26 15:03:22', '');
INSERT INTO `sys_menu` VALUES (173, 2, '密码重置', '', 'core', '', 'sys:user:resetPwd', 2, '', 0, 0, 'admin', '2019-12-29 15:03:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (174, 0, '研发工具', '', 'core', '', '', 0, 'fa fa-code', 9, 0, 'admin', '2020-01-19 21:28:55', 'admin', '2019-12-18 23:28:58', '');
INSERT INTO `sys_menu` VALUES (175, 174, '代码生成', 'tool/gen', 'core', '_tab', 'tool:gen:view', 1, 'fa fa-terminal', 0, 0, 'admin', '2020-01-06 16:47:02', '00214', '2020-06-18 23:33:08', '');
INSERT INTO `sys_menu` VALUES (176, 175, '查看', '', 'core', '', 'tool:gen:list', 2, '', 0, 0, 'admin', '2020-01-06 16:47:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (177, 175, '代码生成', '', 'core', '', 'tool:gen:code', 2, '', 1, 0, 'admin', '2020-01-07 13:35:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (178, 175, '预览', '', 'core', '', 'tool:gen:preview', 2, '', 2, 0, 'admin', '2020-01-07 14:47:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (179, 175, '修改', '', 'core', '', 'tool:gen:edit', 2, '', 3, 0, 'admin', '2020-01-07 16:21:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (180, 109, '查看', '', 'core', '', 'sys:poi:list', 2, '', 0, 0, 'admin', '2020-01-08 11:11:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (181, 175, '删除', '', 'core', '', 'tool:gen:del', 2, '', 4, 0, 'admin', '2020-01-09 09:21:09', '', NULL, '');
INSERT INTO `sys_menu` VALUES (182, 72, '详情', '', 'core', '', 'sys:job:detail', 2, '', 0, 0, 'admin', '2020-01-19 12:09:40', 'admin', '2020-02-08 20:34:46', '');
INSERT INTO `sys_menu` VALUES (183, 72, '日志删除', '', 'core', '', 'sys:joblog:del', 2, '', 0, 0, 'admin', '2020-01-19 16:38:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (184, 72, '日志清空', '', 'core', '', 'sys:joblog:clean', 2, '', 0, 0, 'admin', '2020-01-19 16:38:57', '', NULL, '');
INSERT INTO `sys_menu` VALUES (186, 174, '图标样式', 'tool/icon', 'core', '_alert', 'tool:icon:view', 1, 'fa fa-hashtag', 6, 0, 'admin', '2020-02-13 19:48:15', '00214', '2020-06-18 23:32:07', '');
INSERT INTO `sys_menu` VALUES (187, 119, '查看', '', 'bcs', '', 'tbc:log:list', 2, '', 0, 0, 'admin', '2020-02-10 17:25:16', 'admin', '2020-01-29 23:19:13', '');
INSERT INTO `sys_menu` VALUES (188, 119, '删除', '', 'bcs', '', 'tbc:log:del', 2, '', 1, 0, 'admin', '2020-02-12 17:39:36', 'admin', '2020-01-29 23:19:23', '');
INSERT INTO `sys_menu` VALUES (189, 70, '模块管理', 'sys/module', 'core', '_tab', 'sys:module:view', 1, 'fa fa-cogs', 2, 0, 'admin', '2020-02-14 14:20:35', 'admin', '2020-01-30 21:39:09', '');
INSERT INTO `sys_menu` VALUES (190, 189, '查看', '', 'core', '', 'sys:module:list', 2, '', 0, 0, 'admin', '2020-02-14 14:21:13', 'admin', '2020-01-30 21:39:54', '');
INSERT INTO `sys_menu` VALUES (191, 189, '新增', '', 'core', '', 'sys:module:add', 2, '', 1, 0, 'admin', '2020-02-14 14:21:48', 'admin', '2020-01-30 21:40:10', '');
INSERT INTO `sys_menu` VALUES (192, 189, '修改', '', 'core', '', 'sys:module:edit', 2, '', 2, 0, 'admin', '2020-02-14 14:22:16', 'admin', '2020-01-30 21:40:24', '');
INSERT INTO `sys_menu` VALUES (193, 189, '删除', '', 'core', '', 'sys:module:del', 2, '', 3, 0, 'admin', '2020-02-14 14:23:03', 'admin', '2020-01-30 21:40:37', '');
INSERT INTO `sys_menu` VALUES (194, 94, '授权', '', 'core', '', 'sys:role:authorization', 2, '', 5, 0, 'admin', '2020-02-24 17:46:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (195, 3, '分配用户', '', 'core', '', 'sys:role:authUserList', 2, '', 5, 0, 'admin', '2020-02-25 11:01:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (196, 2, '授权角色', '', 'core', '', 'sys:user:authRoleList', 2, '', 6, 0, 'admin', '2020-02-26 10:00:58', '', NULL, '');
INSERT INTO `sys_menu` VALUES (197, 1, '岗位管理', 'sys/post', 'core,bcs', '_tab', 'sys:post:view', 1, 'fa fa-address-card-o', 5, 0, 'admin', '2020-02-28 00:00:00', 'admin', '2020-02-28 00:00:00', '岗位信息菜单');
INSERT INTO `sys_menu` VALUES (198, 197, '查询', '#', 'core,bcs', '', 'sys:post:list', 2, '', 0, 0, 'admin', '2020-02-28 00:00:00', 'admin', '2020-02-28 00:00:00', '');
INSERT INTO `sys_menu` VALUES (199, 197, '新增', '#', 'core,bcs', '', 'sys:post:add', 2, '', 1, 0, 'admin', '2020-02-28 00:00:00', 'admin', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (200, 197, '修改', '#', 'core,bcs', '', 'sys:post:edit', 2, '', 2, 0, 'admin', '2020-02-28 00:00:00', 'admin', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (201, 197, '删除', '#', 'core,bcs', '', 'sys:post:del', 2, '', 3, 0, 'admin', '2020-02-28 00:00:00', 'admin', '2020-01-30 21:55:13', '');
INSERT INTO `sys_menu` VALUES (202, 1, '员工管理', 'bcs/user', 'bcs', '_tab', 'bcs:user:view', 1, 'fa fa-user-o', 5, 0, 'admin', '2020-02-28 17:53:16', 'admin', '2020-01-31 00:08:13', '');
INSERT INTO `sys_menu` VALUES (203, 202, '查看', '', 'bcs', '', 'bcs:user:list,sys:dept:select', 2, '', 0, 0, 'admin', '2020-02-28 18:04:00', 'admin', '2020-02-02 15:02:31', '');
INSERT INTO `sys_menu` VALUES (204, 202, '新增', '', 'bcs', '', 'bcs:user:add', 2, '', 1, 0, 'admin', '2020-03-01 15:23:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (205, 202, '修改', '', 'bcs', '', 'bcs:user:edit', 2, '', 2, 0, 'admin', '2020-03-01 15:23:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (206, 202, '删除', '', 'bcs', '', 'bcs:user:del', 2, '', 3, 0, 'admin', '2020-03-01 15:24:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (207, 152, '删除', '', 'bcs', '', 'bcs:box:del', 2, '', 3, 0, 'admin', '2020-03-06 10:32:42', '', NULL, '');
INSERT INTO `sys_menu` VALUES (208, 152, '查看', '', 'bcs', '', 'bcs:box:list', 2, '', 4, 0, 'admin', '2020-03-06 10:35:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241023067553239042, 70, '产品许可', 'sys/license', 'core', '_tab', 'sys:license:view', 1, 'fa fa-send-o', 13, 0, 'admin', '2020-03-20 10:25:31', 'admin', '2020-03-20 23:26:47', '');
INSERT INTO `sys_menu` VALUES (1241023310755762177, 1241023067553239042, '上传许可', '', 'core', '', 'sys:license:upload', 2, '', 0, 0, 'admin', '2020-03-20 10:26:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241023877494312961, 1241023067553239042, '生成许可', '', 'core', '', 'sys:license:creatLicense', 2, '', 1, 0, 'admin', '2020-03-20 10:28:44', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241544436850233346, 0, '项目帮助', '', 'core', '', NULL, 0, 'fa icon-link', 11, 0, 'admin', '2020-03-21 17:57:15', 'admin', '2020-02-21 04:01:22', '');
INSERT INTO `sys_menu` VALUES (1241551431233835010, 1241544436850233346, '在线提问', 'https://gitee.com/zhouhuanOGP/J2EEFAST/issues', 'core', '_tab', '', 1, 'fa fa-question-circle', 0, 0, 'admin', '2020-03-21 18:25:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1241552388105572354, 1241544436850233346, '在线文档', 'https://gitee.com/zhouhuanOGP/J2EEFAST/wikis/pages', 'core', '_alert', '', 1, 'fa fa-wordpress', 1, 0, 'admin', '2020-03-21 18:28:51', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1243014163867074562, 70, '公告管理', 'sys/notice', 'core', '_tab', 'sys:notice:view', 1, 'fa fa-bullhorn', 15, 0, 'admin', '2020-03-25 19:17:25', 'admin', '2020-02-25 04:26:40', '');
INSERT INTO `sys_menu` VALUES (1243014380247023618, 1243014163867074562, '新增', '', 'core', '', 'sys:notice:add', 2, '', 0, 0, 'admin', '2020-03-25 19:18:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1243014490183925762, 1243014163867074562, '修改', '', 'core', '', 'sys:notice:edit', 2, '', 1, 0, 'admin', '2020-03-25 19:18:43', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1243014687924387842, 1243014163867074562, '删除', '', 'core', '', 'sys:notice:del', 2, '', 3, 0, 'admin', '2020-03-25 19:19:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1250359587451895810, 68, 'SQL监控', 'druid/index.html', 'core,core', '_tab', '', 1, 'fa fa-bug', 2, 0, 'admin', '2019-09-20 01:45:31', 'admin', NULL, '');
INSERT INTO `sys_menu` VALUES (1250364490287108097, 70, '多源数据', 'sys/database', 'core', '_tab', 'sys:database:view', 1, 'fa fa-database', 16, 0, 'admin', '2019-09-20 01:45:31', 'admin', NULL, '');
INSERT INTO `sys_menu` VALUES (1250951041614217217, 0, '流程管理', '', 'bpm', '_tab', '', 0, 'fa fa-puzzle-piece', 50, 0, 'admin', '2019-09-20 01:45:31', 'admin', NULL, '');
INSERT INTO `sys_menu` VALUES (1250956551021264898, 1250951041614217217, '模型设计', 'bpm/model', 'bpm', '_tab', 'bpm:model:view', 1, 'glyphicon glyphicon-leaf', 0, 0, 'admin', '2019-09-20 01:45:31', 'admin', NULL, '');
INSERT INTO `sys_menu` VALUES (1251546760767324162, 1250951041614217217, '定义管理', 'bpm/procdef', 'bpm', '_tab', 'bpm:procdef:view', 1, 'fa fa-cubes', 1, 0, 'admin', '2019-09-20 01:45:31', 'admin', NULL, '');
INSERT INTO `sys_menu` VALUES (1251700255260614658, 174, '接口文档', 'doc.html', 'core', '_alert', '', 1, 'fa fa-gg', 8, 0, 'admin', '2019-09-20 01:45:31', '00214', '2020-06-18 23:32:34', '');
INSERT INTO `sys_menu` VALUES (1253348267653218305, 0, '我的办公', '', 'bpm', '', NULL, 0, 'fa fa-laptop', 18, 0, 'admin', '2020-04-08 07:41:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253349238940778498, 1253348267653218305, '发起流程', 'bpm/process', 'bpm', '_tab', 'bpm:process:view', 1, 'fa fa-adn', 0, 0, 'admin', '2020-04-02 07:45:19', 'admin', '2020-04-27 06:41:05', '');
INSERT INTO `sys_menu` VALUES (1253349975972265985, 1253348267653218305, '已办任务', 'bpm/task/applyed', 'bpm', '_tab', 'bpm:task:view', 1, 'fa fa-newspaper-o', 10, 0, 'admin', '2020-04-02 07:48:15', 'admin', '2020-04-27 07:59:29', '');
INSERT INTO `sys_menu` VALUES (1253350357083504642, 1253348267653218305, '待办任务', 'bpm/task/applaying', 'bpm', '_tab', 'bpm:task:view', 1, 'fa fa-bookmark-o', 30, 0, 'admin', '2020-04-02 07:49:46', 'admin', '2020-04-27 07:59:42', '');
INSERT INTO `sys_menu` VALUES (1253521391095074817, 1250951041614217217, '实例管理', 'bpm/processInstance', 'bpm', '_tab', 'bpm:processInstance:view', 1, 'fa fa-object-ungroup', 4, 0, 'admin', '2020-04-23 19:09:24', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253521499077431298, 1253521391095074817, '查看', '', 'bpm', '', 'bpm:processInstance:list', 2, '', 0, 0, 'admin', '2020-04-23 19:09:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1253974386131783681, 1253350357083504642, '查询', '', 'bpm', '', 'bpm:task:list', 2, '', 0, 0, 'admin', '2020-04-25 01:09:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254065382001725442, 1253350357083504642, '办理', '', 'bpm', '', 'bpm:form:edit', 2, '', 1, 0, 'admin', '2020-04-25 07:11:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254249304429821953, 1253350357083504642, '审批', '', 'bpm', '', 'bpm:task:approval', 2, '', 2, 0, 'admin', '2020-04-25 19:21:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254607853257482242, 1253349975972265985, '查询', '', 'bpm', '', 'bpm:task:list', 2, '', 0, 0, 'admin', '2020-04-26 19:06:36', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254616704945958914, 1253349238940778498, '查看', '', 'bpm', '', 'bpm:process:list', 2, '', 0, 0, 'admin', '2020-04-26 19:41:47', 'admin', '2020-04-27 06:41:23', '');
INSERT INTO `sys_menu` VALUES (1254802944899129345, 1253348267653218305, '我的流程', 'bpm/process/myProcess', 'bpm', '_tab', 'bpm:process:view', 1, 'fa icon-people', 3, 0, 'admin', '2020-04-27 08:01:50', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1254803046447423490, 1254802944899129345, '查询', '', 'bpm', '', 'bpm:process:list', 2, '', 0, 0, 'admin', '2020-04-27 08:02:14', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1255326656635211777, 1253349238940778498, '流程查看', '', 'bpm', '', 'bpm:task:comment', 2, '', 4, 0, 'admin', '2020-04-28 18:42:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1261471575930253313, 174, '多级菜单', '#', 'core', '_tab', '', 0, 'fa fa-sort-amount-desc', 20, 0, 'admin', '2019-09-20 01:45:31', 'admin', '2020-05-20 02:46:12', '');
INSERT INTO `sys_menu` VALUES (1261668051524452354, 1261471575930253313, '三级目录', '', 'core', '', NULL, 0, 'fa fa-sort-amount-desc', 0, 0, 'admin', '2019-09-20 01:45:31', 'admin', '2020-05-20 02:46:58', '');
INSERT INTO `sys_menu` VALUES (1261669708115148802, 1261668051524452354, '四级目录', '', 'core', '', NULL, 0, 'fa fa-sort-amount-desc', 0, 0, 'admin', '2019-09-20 01:45:31', 'admin', '2020-05-20 02:47:39', '');
INSERT INTO `sys_menu` VALUES (1261669932602687490, 1261669708115148802, '五级菜单', '#', 'core', '_tab', '', 1, 'fa fa-smile-o', 0, 0, 'admin', '2019-09-20 01:45:31', '00214', '2020-06-19 09:16:36', '');
INSERT INTO `sys_menu` VALUES (1263003536030502913, 174, '单表范例', 'gen/test', 'core', '_tab', 'gen:test:view', 1, 'fa fa-cube', 20, 0, 'admin', '2020-05-20 15:08:00', '00214', '2020-06-18 23:31:23', '单表范例菜单');
INSERT INTO `sys_menu` VALUES (1263003536030502914, 1263003536030502913, '查询', '#', 'core', '', 'gen:test:list', 2, '', 0, 0, 'admin', '2020-05-20 15:08:00', 'admin', '2020-05-20 15:08:00', '');
INSERT INTO `sys_menu` VALUES (1263003536030502915, 1263003536030502913, '新增', '#', 'core', '', 'gen:test:add', 2, '', 1, 0, 'admin', '2020-05-20 15:08:00', 'admin', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1263003536030502916, 1263003536030502913, '修改', '#', 'core', '', 'gen:test:edit', 2, '', 2, 0, 'admin', '2020-05-20 15:08:00', 'admin', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1263003536030502917, 1263003536030502913, '删除', '#', 'core', '', 'gen:test:del', 2, '', 3, 0, 'admin', '2020-05-20 15:08:00', 'admin', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (1268573631316885505, 70, '行政区域', 'sys/area', 'core', '_tab', 'sys:area:view', 1, 'fa fa-map-marker', 20, 0, 'admin', '2020-06-05 00:01:00', 'admin', '2020-06-11 18:26:06', '行政区域菜单');
INSERT INTO `sys_menu` VALUES (1268573631316885506, 1268573631316885505, '查询', '#', 'core', '', 'sys:area:list', 2, '', 0, 0, 'admin', '2020-06-05 00:01:00', 'admin', '2020-06-05 00:01:00', '');
INSERT INTO `sys_menu` VALUES (1273633583739535362, 174, '前端范例', '', 'core', '', NULL, 0, 'fa fa-wrench', 1, 0, '00214', '2020-06-18 23:08:04', '00214', '2020-06-19 11:23:33', '');
INSERT INTO `sys_menu` VALUES (1273640354499624961, 1273633583739535362, '模板使用', 'sys/demo/mode', 'core', '_tab', '', 1, 'fa fa-code', 0, 0, '00214', '2020-06-18 23:34:58', 'admin', '2020-06-19 21:47:24', '');
INSERT INTO `sys_menu` VALUES (1273971587838504961, 1273633583739535362, '组件使用', 'sys/demo/component', 'core', '_tab', '', 1, 'fa fa-code', 2, 0, 'admin', '2020-06-19 21:31:10', 'admin', '2020-06-19 21:55:21', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `module_code` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '模块编码',
  `module_name` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '模块名称',
  `description` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '模块描述',
  `main_class_name` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '主类全名',
  `icon` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '图标',
  `current_version` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '当前版本',
  `upgrade_info` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '升级信息',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`id`,`module_code`),
  UNIQUE KEY `module_code` (`module_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='模块表';

-- ----------------------------
-- Records of sys_module
-- ----------------------------
BEGIN;
INSERT INTO `sys_module` VALUES (1, 'core', '核心模块', '用户、角色、组织、模块、菜单、字典、参数、系统相关功能', 'com.j2eefast.modules.sys.controller.SysLoginController', 'fa  icon-settings', '2.0.2', NULL, '0', '0', 'admin', '2020-02-14 17:31:35', 'admin', '2020-02-14 17:31:35', '初始版本');
INSERT INTO `sys_module` VALUES (2, 'bcs', '公交系统', '公交项目系统功能 终端、交易、库房等功能', 'com.lixinos.bcs.common.config.InitializeConfig', 'fa fa-lastfm', '2.0.2', NULL, '0', '2', 'admin', '2020-02-14 20:36:37', 'admin', '2020-04-10 02:31:52', '初始版本');
INSERT INTO `sys_module` VALUES (1250950663929724930, 'bpm', '业务流程', '流程设计器、流程监管控制、流程办理、流程追踪', 'com.j2eefast.flowable.bpm.controller.DeModelController', 'fa fa-codepen', '1.0.0', NULL, '0', '2', 'admin', '2020-04-16 16:54:14', 'admin', '2020-04-28 07:56:39', '业务流程');
COMMIT;

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `id` bigint(20) NOT NULL COMMENT '主键ID',
  `notice_title` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公告标题',
  `notice_tip_title` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公告提示栏',
  `start_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态 0 正常 1关闭 2失效',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT '' COMMENT '备注',
  `html_no` varchar(32) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '静态页编号',
  `notice_type` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公告类型 0通知 1公告',
  `notice_level` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '通过公告等级级别 0 普通 1紧急 2严重',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
BEGIN;
INSERT INTO `sys_notice` VALUES (1243892090661965826, '系统升级通知', '升级通知: 系统将于本周六(2020-03-28)晚11点升级,演示系统将暂停访问，带来不便敬请谅解！', '2020-03-28 21:24:11', '2020-04-01 00:00:00', '2', 'admin', '2020-03-28 21:25:59', 'admin', '2020-04-01 16:55:00', '', 'ee4e629972834ed2802d27049e773887', '1', '2');
INSERT INTO `sys_notice` VALUES (1246409885140369409, '举国哀悼', '全国哀悼:2020年4月4日举行全国性哀悼活动 ！每个逝去的生命都应该被铭记!', '2020-04-03 08:00:00', '2020-04-05 07:59:59', '2', 'admin', '2020-04-04 04:10:48', 'admin', '2020-04-05 17:05:00', '', '42bf1494a062487484b432b2adcd34ea', '1', '2');
INSERT INTO `sys_notice` VALUES (1247138153632047105, '系统升级通知', '升级通知: 系统将于本周五(2020-04-11)晚9点升级,演示系统将暂停访问，带来不便敬请谅解！', '2020-04-06 04:21:00', '2020-06-03 01:56:43', '2', 'admin', '2020-04-06 04:24:41', 'admin', '2020-06-18 21:55:00', '', 'ec555701efaf43c9aced2ab2e227895a', '1', '2');
INSERT INTO `sys_notice` VALUES (1255786639357317121, '工作流模块集成', '工作流模块集成:FASTOS工作流采用Flowable 6.4.2 版本，完全融合FastOS系统！！！', '2020-04-30 00:56:44', '2020-05-19 08:00:00', '2', 'admin', '2020-04-30 01:10:41', 'admin', '2020-05-19 18:25:00', '', 'b54a602b97c9426e86f3564379ebc2d2', '1', '2');
COMMIT;

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `title` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) COLLATE utf8mb4_bin DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '操作人员',
  `comp_name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '公司名称',
  `oper_url` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `time` bigint(20) DEFAULT '0' COMMENT '操作时长',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '机构ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
BEGIN;
INSERT INTO `sys_oper_log` VALUES (1270240085165522946, '个人信息', 2, 'com.j2eefast.modules.sys.controller.SysProfileController.updateAvatar()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/profile/updateAvatar', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"java.io.FileNotFoundException: /private/var/folders/tb/lsrkv14x2t32m8wz5qllz7980000gn/T/tomcat.150844800719989956.8080/work/Tomcat/localhost/fast/D:\\\\lixinfile\\\\uploadPath/avatar/2020/06/09/629bfd68e00618c5ba8642a2be0ad831.png (No such file or directory)\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-09 14:23:31', 7, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270244462584446977, '参数管理', 2, 'com.j2eefast.modules.sys.controller.SysConfigController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/config/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"11\" ],\n  \"paramName\" : [ \"上传路径\" ],\n  \"paramKey\" : [ \"SYS_CONFIG_PROFILE\" ],\n  \"paramValue\" : [ \"/Users/huanzhou/j2eefastFile/uploadPath\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"项目静态文件\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-09 14:40:55', 3, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270244594742771713, '参数管理', 2, 'com.j2eefast.modules.sys.controller.SysConfigController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/config/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"17\" ],\n  \"paramName\" : [ \"项目文件库\" ],\n  \"paramKey\" : [ \"SYS_CONFIG_FILE\" ],\n  \"paramValue\" : [ \"/Users/huanzhou/j2eefastFile/file/temp\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"系统默认文件库\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-09 14:41:26', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270244966056083457, '个人信息', 2, 'com.j2eefast.modules.sys.controller.SysProfileController.updateAvatar()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/profile/updateAvatar', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-09 14:42:55', 9, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270529786434904065, '字典类型', 1, 'com.j2eefast.modules.sys.controller.SysDictTypeController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/add', '192.168.1.179', '内网IP', '{\n  \"dictName\" : [ \"公司组织类型\" ],\n  \"dictType\" : [ \"sys_comp_type\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"公司组织类型\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 09:34:41', 13, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270529903757975554, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"公司\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_comp_type\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 09:35:09', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270529977917464578, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"部门\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_comp_type\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"success\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 09:35:27', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270586748983926786, '参数管理', 2, 'com.j2eefast.modules.sys.controller.SysConfigController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/config/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"7\" ],\n  \"paramName\" : [ \"JS版本\" ],\n  \"paramKey\" : [ \"SYS_CONFIG_DV_VERSION\" ],\n  \"paramValue\" : [ \"213213\" ],\n  \"configType\" : [ \"Y\" ],\n  \"remark\" : [ \"JS\\\\CSS版本-日期表示\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 13:21:02', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270643743750197249, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"areaIds\" : [ \"16171,16172,16173\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 17:07:31', 15, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270655643057754114, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"name\" : [ \"测试公司1\" ],\n  \"fullName\" : [ \"上海测试公司1\" ],\n  \"areaIds\" : [ \"16172,16173\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 17:54:48', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270656117647446017, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"测试公司2\" ],\n  \"fullName\" : [ \"上海测试公司2\" ],\n  \"areaIds\" : [ \"9463,9480,9481,9482,9483,9484,9485,9486,9487\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 17:56:41', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270657131733684226, '公司管理', 3, 'com.j2eefast.modules.sys.controller.SysCompController.delete()', 'GET', 1, '超级管理员', '总公司', '/fast/sys/comp/del/1270656117571948546', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 18:00:43', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270657152097030145, '公司管理', 3, 'com.j2eefast.modules.sys.controller.SysCompController.delete()', 'GET', 1, '超级管理员', '总公司', '/fast/sys/comp/del/1270655642973868033', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 18:00:47', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270663595360792578, '公司管理', 2, 'com.j2eefast.modules.sys.controller.SysCompController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"deptIdList\" : [ \"\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"areaIds\" : [ \"57\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 18:26:24', 17, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270663808284635138, '公司管理', 2, 'com.j2eefast.modules.sys.controller.SysCompController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"deptIdList\" : [ \"\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"areaIds\" : [ \"57,58,59\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 18:27:14', 2, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270717357736439809, '公司管理', 2, 'com.j2eefast.modules.sys.controller.SysCompController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"areaIds\" : [ \"36,133,134,135,136,137\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 22:00:02', 10, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270719967428157442, '公司管理', 2, 'com.j2eefast.modules.sys.controller.SysCompController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"1241024147242586113\" ],\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"上海法斯特有限公司\" ],\n  \"fullName\" : [ \"法斯特有限公司\" ],\n  \"areaIds\" : [ \"16171,16172,16173\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 22:10:24', 11, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270721196820602882, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"140\" ],\n  \"parentId\" : [ \"1\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"组织管理\" ],\n  \"url\" : [ \"sys/dept\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"sys:dept:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-outdent\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-10 22:15:17', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270952853988540417, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270529903648923649\" ],\n  \"dictLabel\" : [ \"公司\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_comp_type\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 13:35:48', 11, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270952871856275458, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270529977808412673\" ],\n  \"dictLabel\" : [ \"部门\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_comp_type\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"success\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 13:35:52', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270953090757001217, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"1236303334564106350,1\" ],\n  \"name\" : [ \"行政部门\" ],\n  \"fullName\" : [ \"北京有限公司行政部门\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 13:36:45', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270985450848260098, '地区管理', 3, 'com.j2eefast.modules.sys.controller.SysDeptController.delete()', 'GET', 1, '超级管理员', '总公司', '/fast/sys/dept/del/1270953090664726529', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 15:45:20', 11, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270986234319081474, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"1236303334564106350,1\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"北京人事部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 15:48:27', 6, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270991016761090050, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1236303334564106350\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"北京有限公司\" ],\n  \"fullName\" : [ \"北京测试有限公司\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-11 16:07:27', 17, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270991416444706818, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1236303334564106350\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"北京有限公司\" ],\n  \"fullName\" : [ \"北京测试有限公司\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-11 16:09:02', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270991842443386882, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1236303334564106350\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"北京有限公司\" ],\n  \"fullName\" : [ \"北京测试有限公司\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-11 16:10:44', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270992427334889473, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1236303334564106350\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"北京有限公司\" ],\n  \"fullName\" : [ \"北京测试有限公司\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 16:13:03', 15, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1270994218239782913, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司0\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 16:20:10', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271024467858026498, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239875326212898817\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"南京有限公司\" ],\n  \"fullName\" : [ \"南京测试有限公司\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 18:20:22', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271025681156927489, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"140\" ],\n  \"parentId\" : [ \"1\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"机构管理\" ],\n  \"url\" : [ \"sys/dept\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"sys:dept:view\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-outdent\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 18:25:12', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271025910065262593, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268573631316885505\" ],\n  \"parentId\" : [ \"70\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"行政区域\" ],\n  \"url\" : [ \"sys/area\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"sys:area:view\" ],\n  \"orderNum\" : [ \"20\" ],\n  \"icon\" : [ \"fa fa-map-marker\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 18:26:06', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271030135381946369, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1239875326212898817\" ],\n  \"parentIds\" : [ \"1239875326212898817,1\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"南京公司科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 18:42:54', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271030309080657921, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1239875326212898817\" ],\n  \"parentIds\" : [ \"1239875326212898817,1\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"南京公司人事部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-11 18:43:35', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271250518324326401, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"天津子公司\" ],\n  \"fullName\" : [ \"天津子公司测试全称\" ],\n  \"areaIds\" : [ \"44887,44888\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 09:18:37', 12, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271250684259381250, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1271250518156554241\" ],\n  \"parentIds\" : [ \"1271250518156554241,1236303334564106350,1\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"天津子公司科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 09:19:16', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271250799518855169, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1271250518156554241\" ],\n  \"parentIds\" : [ \"1271250518156554241,1236303334564106350,1\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"天津子公司人事部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 09:19:44', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271250800164777985, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1271250518156554241\" ],\n  \"parentIds\" : [ \"1271250518156554241,1236303334564106350,1\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"天津子公司人事部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"新增地区\'人事部\'失败,名称已存在\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 09:19:44', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271255657466605570, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/add', '192.168.1.179', '内网IP', '{\n  \"username\" : [ \"0998\" ],\n  \"compId\" : [ \"1271250518156554241\" ],\n  \"name\" : [ \"测试23\" ],\n  \"deptId\" : [ \"1271250684183883778\" ],\n  \"password\" : [ \"123456\" ],\n  \"mobile\" : [ \"18723123123\" ],\n  \"cardId\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"2\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 09:39:02', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271315804499070977, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"email\" : [ \"\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 13:38:02', 13, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316045667356673, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"email\" : [ \"\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 13:39:00', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316394021081089, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"email\" : [ \"\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 13:40:23', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316490213249026, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"email\" : [ \"\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 13:40:46', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316649315782658, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"email\" : [ \"\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:41:24', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316708526772225, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255152992669270017\" ],\n  \"username\" : [ \"00223\" ],\n  \"compId\" : [ \"1236303334564106350\" ],\n  \"name\" : [ \"大乔\" ],\n  \"deptId\" : [ \"1270986234210029570\" ],\n  \"mobile\" : [ \"18771231232\" ],\n  \"email\" : [ \"18771231232@163.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:41:38', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271316770094960641, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255152805615894529\" ],\n  \"username\" : [ \"00222\" ],\n  \"compId\" : [ \"1236303334564106350\" ],\n  \"name\" : [ \"小乔\" ],\n  \"deptId\" : [ \"1270986234210029570\" ],\n  \"mobile\" : [ \"18721231232\" ],\n  \"email\" : [ \"18721231232@163.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:41:53', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271318337728663554, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1241024147242586113\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:48:06', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271319830120747009, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"会计部\" ],\n  \"fullName\" : [ \"测试公司会计部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:54:02', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271320074451537921, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:55:00', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271320285567635457, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1241024147242586113\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"上海法斯特研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:55:51', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271320402198646786, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1241024147242586113\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"运维部\" ],\n  \"fullName\" : [ \"上海法斯特运维部\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:56:19', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271320537037131777, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1241024147242586113\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"财务部\" ],\n  \"fullName\" : [ \"上海法斯特财务部\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:56:51', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271320650832793601, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1241024147242586113\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"上海法斯特人事部\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 13:57:18', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271339571505909762, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271318337648971778\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:12:29', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271340161862586370, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271318337648971778\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:14:50', 2, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342478125027330, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239914383204892673\" ],\n  \"username\" : [ \"00213\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"张三\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"18774994072\" ],\n  \"email\" : [ \"18774994072@163.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"1\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:24:02', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342529828212738, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239915009632583681\" ],\n  \"username\" : [ \"00214\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"李四\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"18772321312\" ],\n  \"email\" : [ \"18772321312@163.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:24:14', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342577995599874, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241025732404285442\" ],\n  \"username\" : [ \"00215\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"张飞\" ],\n  \"deptId\" : [ \"1271320650761490433\" ],\n  \"mobile\" : [ \"18774994013\" ],\n  \"email\" : [ \"751312449@qq.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:24:26', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342638888505346, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241025930912305153\" ],\n  \"username\" : [ \"00216\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"刘备\" ],\n  \"deptId\" : [ \"1271320650761490433\" ],\n  \"mobile\" : [ \"13234234234\" ],\n  \"email\" : [ \"123456@qq.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:24:40', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342685654994946, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241026155169157122\" ],\n  \"username\" : [ \"00217\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"关羽\" ],\n  \"deptId\" : [ \"1271320402131537921\" ],\n  \"mobile\" : [ \"18742342223\" ],\n  \"email\" : [ \"123213@QQ.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"1\" ],\n  \"roleIdList\" : [ \"2\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:24:51', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342741162414082, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241026312006766594\" ],\n  \"username\" : [ \"00219\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"曹操\" ],\n  \"deptId\" : [ \"1271320536974217217\" ],\n  \"mobile\" : [ \"15645645645\" ],\n  \"email\" : [ \"zhouhuan@lixinfintech.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"6,7\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:25:05', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342814428516354, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1253346480368009217\" ],\n  \"username\" : [ \"00220\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"赵云\" ],\n  \"deptId\" : [ \"1271318337648971778\" ],\n  \"mobile\" : [ \"17771231243\" ],\n  \"email\" : [ \"123213@QQ.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"8,1255020745534443521\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:25:22', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271342893285625857, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255151411211141121\" ],\n  \"username\" : [ \"00221\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"诸葛亮\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"14562132342\" ],\n  \"email\" : [ \"14562132342@163.com\" ],\n  \"cardId\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"4,6\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:25:41', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271344862532325377, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271318337648971778\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:33:30', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271345616391360514, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271318337648971778\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:36:30', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271346665965604866, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271318337648971778\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1241024147242586113,1\" ],\n  \"name\" : [ \"科技部\" ],\n  \"fullName\" : [ \"上海法斯特科技部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:40:40', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350160294793218, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320285504720897\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1241024147242586113,1\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"上海法斯特研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:54:33', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350253555142658, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320402131537921\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1241024147242586113,1\" ],\n  \"name\" : [ \"运维部\" ],\n  \"fullName\" : [ \"上海法斯特运维部\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:54:56', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350311465897985, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320536974217217\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1241024147242586113,1\" ],\n  \"name\" : [ \"财务部\" ],\n  \"fullName\" : [ \"上海法斯特财务部\" ],\n  \"orderNum\" : [ \"10\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:55:09', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350358588903425, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320650761490433\" ],\n  \"parentId\" : [ \"1241024147242586113\", \"1241024147242586113\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1241024147242586113,1\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"上海法斯特人事部\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:55:21', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350464121786370, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271319830053638145\" ],\n  \"parentId\" : [ \"1270643743532093441\", \"1270643743532093441\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"会计部\" ],\n  \"fullName\" : [ \"测试公司会计部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:55:46', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350511794245633, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320074380234754\" ],\n  \"parentId\" : [ \"1270643743532093441\", \"1270643743532093441\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:55:57', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350562436272129, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320074380234754\" ],\n  \"parentId\" : [ \"1270643743532093441\", \"1270643743532093441\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:56:09', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350633726857217, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271319830053638145\" ],\n  \"parentId\" : [ \"1270643743532093441\", \"1270643743532093441\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"会计部\" ],\n  \"fullName\" : [ \"测试公司会计部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:56:26', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350749544173569, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271250518156554241\" ],\n  \"parentId\" : [ \"1236303334564106350\", \"1236303334564106350\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"1236303334564106350,1\" ],\n  \"name\" : [ \"天津子公司\" ],\n  \"fullName\" : [ \"天津子公司测试全称\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:56:54', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350879974445057, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司0\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:57:25', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350924039802882, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239875326212898817\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"南京有限公司\" ],\n  \"fullName\" : [ \"南京测试有限公司\" ],\n  \"orderNum\" : [ \"3\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:57:35', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271350961847259138, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1236303334564106350\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"北京有限公司\" ],\n  \"fullName\" : [ \"北京测试有限公司\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:57:45', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271351007850385410, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241024147242586113\" ],\n  \"parentId\" : [ \"1\", \"1\" ],\n  \"type\" : [ \"0\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"上海法斯特有限公司\" ],\n  \"fullName\" : [ \"法斯特有限公司\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 15:57:55', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271354390351040513, '公司管理', 2, 'com.j2eefast.modules.sys.controller.SysCompController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/comp/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司0\" ],\n  \"areaIds\" : [ \"36,133,134,135,136,137\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 16:11:22', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271457863746736130, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/add', '192.168.1.5', '内网IP', '{\n  \"username\" : [ \"23234\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"213123\" ],\n  \"deptId\" : [ \"1271320402131537921\" ],\n  \"password\" : [ \"123456\" ],\n  \"mobile\" : [ \"18774992423\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"roleIdList\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 23:02:32', 11, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271457972588924929, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysUserController.delete()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/del', '192.168.1.5', '内网IP', '{\n  \"ids\" : [ \"1271457863448940546\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-12 23:02:58', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1271458024006897666, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysUserController.delete()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/del', '192.168.1.5', '内网IP', '{\n  \"ids\" : [ \"1271457863448940546\" ]\n}', '{\n  \"msg\" : \"删除失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-12 23:03:10', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272340203470438401, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239915009632583681\" ],\n  \"username\" : [ \"00214\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"李四\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"18772321312\" ],\n  \"roleIdList\" : [ \"\" ],\n  \"email\" : [ \"18772321312@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:28:38', 15, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272340438540206082, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"roleIdList\" : [ \"\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"CEO\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:29:34', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272341161243951105, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"CEO\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:32:26', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272341194764828674, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:32:34', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272341414798016513, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"1\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:33:27', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272341440207110146, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1268368631936487426\" ],\n  \"username\" : [ \"0909\" ],\n  \"compId\" : [ \"1239875326212898817\" ],\n  \"name\" : [ \"测试\" ],\n  \"deptId\" : [ \"1271030309013549058\" ],\n  \"mobile\" : [ \"17872324234\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:33:33', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342231944904705, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271255657122672641\" ],\n  \"username\" : [ \"0998\" ],\n  \"compId\" : [ \"1271250518156554241\" ],\n  \"name\" : [ \"测试23\" ],\n  \"deptId\" : [ \"1271250684183883778\" ],\n  \"mobile\" : [ \"18723123123\" ],\n  \"roleIdList\" : [ \"2\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:36:42', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342269106438146, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysUserController.delete()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/del', '192.168.1.179', '内网IP', '{\n  \"ids\" : [ \"1271255657122672641\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:36:51', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342471540326401, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255152992669270017\" ],\n  \"username\" : [ \"00223\" ],\n  \"compId\" : [ \"1236303334564106350\" ],\n  \"name\" : [ \"大乔\" ],\n  \"deptId\" : [ \"1270986234210029570\" ],\n  \"mobile\" : [ \"18771231232\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ],\n  \"email\" : [ \"18771231232@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:37:39', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342512531259393, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255152805615894529\" ],\n  \"username\" : [ \"00222\" ],\n  \"compId\" : [ \"1236303334564106350\" ],\n  \"name\" : [ \"小乔\" ],\n  \"deptId\" : [ \"1270986234210029570\" ],\n  \"mobile\" : [ \"18721231232\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ],\n  \"email\" : [ \"18721231232@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:37:49', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342542998683650, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255151411211141121\" ],\n  \"username\" : [ \"00221\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"诸葛亮\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"14562132342\" ],\n  \"roleIdList\" : [ \"4,6\" ],\n  \"email\" : [ \"14562132342@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:37:56', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342575437430786, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1253346480368009217\" ],\n  \"username\" : [ \"00220\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"赵云\" ],\n  \"deptId\" : [ \"1271318337648971778\" ],\n  \"mobile\" : [ \"17771231243\" ],\n  \"roleIdList\" : [ \"1255020745534443521,8\" ],\n  \"email\" : [ \"123213@QQ.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:04', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342606026489858, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241026312006766594\" ],\n  \"username\" : [ \"00219\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"曹操\" ],\n  \"deptId\" : [ \"1271320536974217217\" ],\n  \"mobile\" : [ \"15645645645\" ],\n  \"roleIdList\" : [ \"6,7\" ],\n  \"email\" : [ \"zhouhuan@lixinfintech.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:11', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342634535174146, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241026155169157122\" ],\n  \"username\" : [ \"00217\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"关羽\" ],\n  \"deptId\" : [ \"1271320402131537921\" ],\n  \"mobile\" : [ \"18742342223\" ],\n  \"roleIdList\" : [ \"2\" ],\n  \"email\" : [ \"123213@QQ.com\" ],\n  \"status\" : [ \"1\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:18', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342661273862145, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241025930912305153\" ],\n  \"username\" : [ \"00216\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"刘备\" ],\n  \"deptId\" : [ \"1271320650761490433\" ],\n  \"mobile\" : [ \"13234234234\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ],\n  \"email\" : [ \"123456@qq.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:24', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342698598973442, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1241025732404285442\" ],\n  \"username\" : [ \"00215\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"张飞\" ],\n  \"deptId\" : [ \"1271320650761490433\" ],\n  \"mobile\" : [ \"18774994013\" ],\n  \"roleIdList\" : [ \"1255022318142590978\" ],\n  \"email\" : [ \"751312449@qq.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:33', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342751870828546, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239914383204892673\" ],\n  \"username\" : [ \"00213\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"张三\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"18774994072\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ],\n  \"email\" : [ \"18774994072@163.com\" ],\n  \"status\" : [ \"1\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:46', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272342782300504065, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1\" ],\n  \"username\" : [ \"admin\" ],\n  \"compId\" : [ \"1\" ],\n  \"name\" : [ \"超级管理员\" ],\n  \"deptId\" : [ \"1\" ],\n  \"mobile\" : [ \"18774995071\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"18774995071@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"CEO\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:38:53', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272348054997811202, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/add', '192.168.1.179', '内网IP', '{\n  \"username\" : [ \"0982\" ],\n  \"compId\" : [ \"1271250518156554241\" ],\n  \"name\" : [ \"测试123\" ],\n  \"deptId\" : [ \"1271250684183883778\" ],\n  \"password\" : [ \"123456\" ],\n  \"roleIdList\" : [ \"7\" ],\n  \"mobile\" : [ \"18721312312\" ],\n  \"postCodes\" : [ \"USER\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 09:59:50', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272354435691823105, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/add', '192.168.1.179', '内网IP', '{\n  \"username\" : [ \"0021\" ],\n  \"compId\" : [ \"1270643743532093441\" ],\n  \"name\" : [ \"测试234\" ],\n  \"deptId\" : [ \"1271320074380234754\" ],\n  \"password\" : [ \"123456\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ],\n  \"mobile\" : [ \"17612321312\" ],\n  \"postCodes\" : [ \"SE\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:25:11', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272354648221401089, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"\" ],\n  \"roleIds\" : [ \"1255020745534443521,1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:26:02', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272354703326167042, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"\" ],\n  \"roleIds\" : [ \"1255020745534443521,1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:26:15', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272356056781930497, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"\" ],\n  \"roleIds\" : [ \"1255020745534443521,1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:31:38', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272356731972599810, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"\" ],\n  \"roleIds\" : [ \"1255020745534443521,1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:34:19', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272357212107161601, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1272354435549216769\" ],\n  \"roleIds\" : [ \"1255020745534443521,1255022318142590978\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:36:13', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272362648327798785, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1253346480368009217\" ],\n  \"roleIds\" : [ \"1255020745534443521\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:57:49', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272362696084144129, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysRoleController.delete()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/del', '192.168.1.179', '内网IP', '{\n  \"ids\" : [ \"8\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:58:01', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272363117301317634, '角色管理', 1, 'com.j2eefast.modules.sys.controller.SysRoleController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/add', '192.168.1.179', '内网IP', '{\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"status\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 10:59:41', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272405703495118850, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320074380234754\" ],\n  \"parentId\" : [ \"1270643743532093441\", \"1270643743532093441\" ],\n  \"type\" : [ \"1\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"研发部0\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 13:48:54', 6, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272406053392347137, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"测试公司0\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 13:50:18', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272406177950593025, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1270643743532093441\" ],\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1\" ],\n  \"parentIds\" : [ \"1\" ],\n  \"name\" : [ \"测试公司\" ],\n  \"fullName\" : [ \"上海测试公司\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 13:50:48', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272406208225079297, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320074380234754\" ],\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 13:50:55', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272411177602904066, '地区管理', 2, 'com.j2eefast.modules.sys.controller.SysDeptController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1271320074380234754\" ],\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1270643743532093441\" ],\n  \"parentIds\" : [ \"1270643743532093441,1\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"测试公司研发部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 14:10:40', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272419457842671618, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\", \"bpm\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 14:43:34', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272419511609454593, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"1\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 14:43:47', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272420455717920770, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 14:47:32', 2, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272528735358169090, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 21:57:48', 5, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272530964207120386, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-15 22:06:39', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272761961888649217, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"40\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:24:33', 5, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272764605147418626, '角色授权', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.authorization()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authorization', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:35:03', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272764949784989698, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\", \"bcs\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:36:26', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272765274029854722, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:37:43', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272765481186529281, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\", \"bcs\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:38:32', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272765630054961154, '角色授权', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.authorization()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authorization', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,175,176,177,178,179,181,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 13:39:08', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272823160013623298, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/insertAuthUsers', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1255022318142590978\" ],\n  \"userIds\" : [ \"1268368631936487426\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 17:27:44', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272826510109085698, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/insertAuthUsers', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1255022318142590978\" ],\n  \"userIds\" : [ \"1255151411211141121,1272348054892953602\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 17:41:03', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272826670604128257, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.cancelAuthUser()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/cancel', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1255022318142590978\" ],\n  \"userIds\" : [ \"1272348054892953602,1272354435549216769,1255151411211141121\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 17:41:41', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272827612779024386, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/insertAuthUsers', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"userIds\" : [ \"1272348054892953602\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 17:45:26', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272827870200238081, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.cancelAuthUser()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/cancel', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"userIds\" : [ \"1272348054892953602\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 17:46:27', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272879755011592194, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.selectAuthUserAll()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/insertAuthUsers', '192.168.1.5', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"userIds\" : [ \"1241025732404285442,1241025930912305153\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 21:12:37', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272879804340801537, '角色管理', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.cancelAuthUser()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authUser/cancel', '192.168.1.5', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"userIds\" : [ \"1241025732404285442,1241025930912305153\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 21:12:49', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272906310156849153, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,175,176,177,178,179,181,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 22:58:08', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272912787210801154, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,45,44,43,42,158,159,140,144,143,142,141,2,15,173,18,17,16,196,3,21,20,19,22,195,197,198,199,200,201,70,94,97,96,161,98,194,189,190,191,192,193,118,128,76,127,125,126,73,171,170,169,168,77,86,89,160,88,87,135,136,137,72,78,85,84,83,184,82,183,81,79,182,80,1241023067553239042,1241023310755762177,1241023877494312961,1243014163867074562,1243014380247023618,1243014490183925762,1243014687924387842,1250364490287108097,1268573631316885505,1268573631316885506,130,132,166,165,164,131,163,162,68,99,167,101,1250359587451895810,129,108,109,145,180,110,111,114,115,174,175,176,177,178,179,181,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 23:23:53', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1272913054631235585, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.5', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,43,140,142,2,15,3,19,197,198,174,175,176,177,178,179,181,1263003536030502913,1263003536030502914,1263003536030502915,1263003536030502916,1263003536030502917,186,1251700255260614658,1261471575930253313,1261668051524452354,1261669708115148802,1261669932602687490,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-16 23:24:56', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060212533628929, '字典类型', 1, 'com.j2eefast.modules.sys.controller.SysDictTypeController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/add', '192.168.1.179', '内网IP', '{\n  \"dictName\" : [ \"角色数据权限范围\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:09:42', 10, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060441278386178, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"未设置\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:10:36', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060648804159490, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"1\" ],\n  \"dictValue\" : [ \"所有数据权限\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:11:26', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060712997982210, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060648707690497\" ],\n  \"dictLabel\" : [ \"所有数据权限\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:11:41', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060877590859778, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060648707690497\" ],\n  \"dictLabel\" : [ \"所有数据权限\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:12:20', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273060969509031938, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"自定义数据权限\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:12:42', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273061086190374914, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"本部门数据权限\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:13:10', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273061265522036738, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"本部门及以下数据权限\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:13:53', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273065080581263362, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.1.179', '内网IP', '{\n  \"dictLabel\" : [ \"仅本人数据权限\" ],\n  \"dictValue\" : [ \"5\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"5\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 09:29:02', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273130223215071234, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"0\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:47:53', 5, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273130367230693377, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:48:28', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273130495832248322, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"1,1239875326212898817,1271030135314837505,1271030309013549058\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:48:58', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273130578845913089, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"1,1239875326212898817,1271030135314837505,1271030309013549058\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:49:18', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273132357889314817, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1\" ],\n  \"roleName\" : [ \"最大管理员\" ],\n  \"roleKey\" : [ \"ADMIN\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:56:22', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273132420283781121, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1\" ],\n  \"roleName\" : [ \"最大管理员\" ],\n  \"roleKey\" : [ \"ADMIN\" ],\n  \"dataScope\" : [ \"0\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 13:56:37', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273136201100709890, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060441177722881\" ],\n  \"dictLabel\" : [ \"未设置\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#aaa;\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 14:11:39', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273166913522651137, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060648707690497\" ],\n  \"dictLabel\" : [ \"所有数据权限\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#c243d6;\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:13:41', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273167289042882562, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060969412562946\" ],\n  \"dictLabel\" : [ \"自定义数据权限\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#e5f3ff\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:15:11', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273167392365367298, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273060969412562946\" ],\n  \"dictLabel\" : [ \"自定义数据权限\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#1e5edb\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:15:35', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168114024730625, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273065080493182977\" ],\n  \"dictLabel\" : [ \"仅本人数据权限\" ],\n  \"dictValue\" : [ \"5\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#00a65a\" ],\n  \"dictSort\" : [ \"5\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:18:27', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168226159448065, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273061265429762049\" ],\n  \"dictLabel\" : [ \"本部门及以下数据权限\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color: #f39c12\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:18:54', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168433991405569, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"91\" ],\n  \"dictLabel\" : [ \"正常\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_status\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#1ab394\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"正常\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:19:44', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168522201812993, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"92\" ],\n  \"dictLabel\" : [ \"停用\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_status\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#ed5565\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"danger\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:20:05', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168598613643266, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"91\" ],\n  \"dictLabel\" : [ \"正常\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_status\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#1ab394\" ],\n  \"dictSort\" : [ \"0\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"正常\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:20:23', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273168627977965570, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"92\" ],\n  \"dictLabel\" : [ \"停用\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_status\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#ed5565\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:20:30', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273170039680028674, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"7\" ],\n  \"dictLabel\" : [ \"停用\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_normal_disable\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#ed5565\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"danger\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"停用状态\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:26:06', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273170117400481794, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"6\" ],\n  \"dictLabel\" : [ \"正常\" ],\n  \"dictValue\" : [ \"0\" ],\n  \"dictType\" : [ \"sys_normal_disable\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#1ab394\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"正常状态\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:26:25', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273170352474443778, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.changeStatus()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/changeStatus', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"status\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"角色状态修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-17 16:27:21', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273170542279282690, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.changeStatus()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/changeStatus', '192.168.1.179', '内网IP', '{\n  \"roleId\" : [ \"1272363117062242305\" ],\n  \"status\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"角色状态修改失败!\",\n  \"code\" : \"50001\"\n}', 0, '', '2020-06-17 16:28:06', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273171569078456322, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"12\" ],\n  \"dictLabel\" : [ \"是\" ],\n  \"dictValue\" : [ \"Y\" ],\n  \"dictType\" : [ \"sys_yes_no\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#aaa;\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"primary\" ],\n  \"isDefault\" : [ \"Y\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"系统默认是\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:32:11', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273171642642354178, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"13\" ],\n  \"dictLabel\" : [ \"否\" ],\n  \"dictValue\" : [ \"N\" ],\n  \"dictType\" : [ \"sys_yes_no\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#ed5565\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"danger\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"系统默认否\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:32:29', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273177198157385729, '重置密码', 2, 'com.j2eefast.modules.sys.controller.SysUserController.resetPwdSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/resetPwd', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239915009632583681\" ],\n  \"username\" : [ \"00214\" ],\n  \"password\" : [ \"123456\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:54:33', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273177319997722626, '角色授权', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.authorization()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authorization', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"menuIds\" : [ \"1,41,45,44,43,42,158,159,140,144,143,142,141,2,17,16,15,173,18,196,3,22,21,20,19,195,197,198,199,200,201,70,94,96,161,98,97,194,189,190,191,192,193,118,128,76,125,127,126,73,171,170,169,168,77,89,160,88,87,86,72,85,184,84,79,183,83,78,182,82,81,80,135,136,137,1241023067553239042,1241023310755762177,1241023877494312961,1243014163867074562,1243014380247023618,1243014490183925762,1243014687924387842,1250364490287108097,1268573631316885505,1268573631316885506,130,132,165,166,164,131,163,162,68,99,101,167,1250359587451895810,129\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:55:02', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273177356051959810, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"4\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 16:55:11', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273248740454457346, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273065080493182977\" ],\n  \"dictLabel\" : [ \"仅本人数据权限\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#00a65a\" ],\n  \"dictSort\" : [ \"5\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:38:50', 10, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249422712528897, '字典数据', 1, 'com.j2eefast.modules.sys.controller.SysDictDataController.addSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/add', '192.168.0.104', '内网IP', '{\n  \"dictLabel\" : [ \"本公司及以下数据\" ],\n  \"dictValue\" : [ \"2\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#d9534f\" ],\n  \"dictSort\" : [ \"2\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:41:33', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249525271650306, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273061265429762049\" ],\n  \"dictLabel\" : [ \"本部门及以下数据权限\" ],\n  \"dictValue\" : [ \"3\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color: #f39c12\" ],\n  \"dictSort\" : [ \"3\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:41:57', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249622818578434, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273061086102294530\" ],\n  \"dictLabel\" : [ \"本部门数据权限\" ],\n  \"dictValue\" : [ \"4\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"\" ],\n  \"dictSort\" : [ \"4\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:42:21', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249729567809537, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273060969412562946\" ],\n  \"dictLabel\" : [ \"自定义数据权限\" ],\n  \"dictValue\" : [ \"5\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#1e5edb\" ],\n  \"dictSort\" : [ \"5\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:42:46', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249828020707329, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273060648707690497\" ],\n  \"dictLabel\" : [ \"所有数据权限\" ],\n  \"dictValue\" : [ \"6\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#c243d6;\" ],\n  \"dictSort\" : [ \"6\" ],\n  \"listClass\" : [ \"default\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:43:09', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273249863739400193, '字典数据', 2, 'com.j2eefast.modules.sys.controller.SysDictDataController.editSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dict/data/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1273065080493182977\" ],\n  \"dictLabel\" : [ \"仅本人数据权限\" ],\n  \"dictValue\" : [ \"1\" ],\n  \"dictType\" : [ \"sys_role_data_scope\" ],\n  \"isSys\" : [ \"Y\" ],\n  \"cssClass\" : [ \"\" ],\n  \"cssStyle\" : [ \"color:#00a65a\" ],\n  \"dictSort\" : [ \"1\" ],\n  \"listClass\" : [ \"\" ],\n  \"isDefault\" : [ \"N\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:43:18', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273250541807362050, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:46:00', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273250603954364418, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"1,1239875326212898817,1271030135314837505,1271030309013549058\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 21:46:14', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273265442140237826, '重置密码', 2, 'com.j2eefast.modules.sys.controller.SysUserController.resetPwdSave()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/resetPwd', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1255152805615894529\" ],\n  \"username\" : [ \"00222\" ],\n  \"password\" : [ \"123456\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 22:45:12', 3, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273265534276513794, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1255022318142590978\" ],\n  \"roleName\" : [ \"人事经理\" ],\n  \"roleKey\" : [ \"PER\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 22:45:34', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273265677683961858, '角色授权', 4, 'com.j2eefast.modules.sys.controller.SysRoleController.authorization()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authorization', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1255022318142590978\" ],\n  \"roleName\" : [ \"人事经理\" ],\n  \"roleKey\" : [ \"PER\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"menuIds\" : [ \"1,41,44,43,45,42,140,143,142,141,144,2,18,17,16,173,15,196,3,19,22,21,20,195,197,198,199,200,201\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-17 22:46:08', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273285594349056002, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.0.104', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"3\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 00:05:17', 9, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273413873327792129, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,44,43,45,42,158,159,140,144,143,142,141,2,18,17,16,173,15,196,3,20,19,22,21,195,197,198,199,200,201,70,94,96,161,98,97,194,189,190,191,192,193,118,128,76,127,125,126,73,170,169,168,171,77,89,160,88,87,86,135,137,136,72,84,183,182,83,82,81,79,80,78,85,184,1241023067553239042,1241023310755762177,1241023877494312961,1243014163867074562,1243014380247023618,1243014490183925762,1243014687924387842,1250364490287108097,1268573631316885505,1268573631316885506,130,132,165,166,164,131,162,163,68,99,101,167,1250359587451895810,129\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:35:01', 4, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273414381606133762, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ],\n  \"menuIds\" : [ \"1,41,45,44,43,42,158,159,140,144,143,142,141,2,173,16,15,18,17,196,3,22,21,20,19,195,197,198,199,200,201\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:37:02', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273415444182720513, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1271320285504720897\" ],\n  \"parentIds\" : [ \"1271320285504720897,1241024147242586113,1\" ],\n  \"name\" : [ \"研发一部\" ],\n  \"fullName\" : [ \"上海法斯特研发一部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:41:15', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273415577737748481, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1271320285504720897\" ],\n  \"parentIds\" : [ \"1271320285504720897,1241024147242586113,1\" ],\n  \"name\" : [ \"研发二部\" ],\n  \"fullName\" : [ \"上海法斯特研发二部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:41:47', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273415802623746049, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239914383204892673\" ],\n  \"username\" : [ \"00213\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"张三\" ],\n  \"deptId\" : [ \"1273415444107223041\" ],\n  \"mobile\" : [ \"18774994072\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ],\n  \"email\" : [ \"18774994072@163.com\" ],\n  \"status\" : [ \"1\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:42:41', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273415855832686594, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255151411211141121\" ],\n  \"username\" : [ \"00221\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"诸葛亮\" ],\n  \"deptId\" : [ \"1273415577674833921\" ],\n  \"mobile\" : [ \"14562132342\" ],\n  \"roleIdList\" : [ \"4,6\" ],\n  \"email\" : [ \"14562132342@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:42:54', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273418463452454914, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"4\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:53:15', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273420079115132929, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/add', '192.168.1.179', '内网IP', '{\n  \"username\" : [ \"00228\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"测试28 \" ],\n  \"deptId\" : [ \"1273415444107223041\" ],\n  \"password\" : [ \"123456\" ],\n  \"roleIdList\" : [ \"1272363117062242305\" ],\n  \"mobile\" : [ \"17621312321\" ],\n  \"postCodes\" : [ \"USER\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 08:59:41', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273423324139085825, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"5\" ],\n  \"deptIds\" : [ \"1241024147242586113,1271318337648971778,1271320285504720897,1273415444107223041,1273415577674833921,1271320402131537921,1271320536974217217,1271320650761490433\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 09:12:34', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273426133160943617, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"5\" ],\n  \"deptIds\" : [ \"1271318337648971778,1271320285504720897,1273415444107223041,1273415577674833921\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 09:23:44', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273426647906902018, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"6\" ],\n  \"deptIds\" : [ \"1271318337648971778,1271320285504720897,1273415444107223041,1273415577674833921\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 09:25:47', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273426947434733570, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1239915009632583681\" ],\n  \"username\" : [ \"00214\" ],\n  \"compId\" : [ \"1241024147242586113\" ],\n  \"name\" : [ \"李四\" ],\n  \"deptId\" : [ \"1271320285504720897\" ],\n  \"mobile\" : [ \"18772321312\" ],\n  \"roleIdList\" : [ \"1\" ],\n  \"email\" : [ \"18772321312@163.com\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 09:26:58', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273446574118158338, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"北京分公司\" ],\n  \"fullName\" : [ \"北京有限公司分公司\" ],\n  \"areaIds\" : [ \"44537,44538,44539\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 10:44:57', 10, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273446705831886850, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1273446573954580482\" ],\n  \"parentIds\" : [ \"\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"北京分公司研发部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 10:45:29', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273447354925596673, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"1236303334564106350,1\" ],\n  \"name\" : [ \"北京分公司2\" ],\n  \"fullName\" : [ \"北京有限公司分公司2\" ],\n  \"areaIds\" : [ \"44537,44551,44552\" ],\n  \"orderNum\" : [ \"4\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 10:48:04', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273453236519301122, '公司管理', 3, 'com.j2eefast.modules.sys.controller.SysCompController.delete()', 'GET', 1, '李四', '上海法斯特有限公司', '/fast/sys/comp/del/1273447354850099201', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:11:26', 10, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273453418342379522, '公司管理', 1, 'com.j2eefast.modules.sys.controller.SysCompController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/comp/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"0\" ],\n  \"parentId\" : [ \"1236303334564106350\" ],\n  \"parentIds\" : [ \"1236303334564106350\" ],\n  \"name\" : [ \"北京分公司\" ],\n  \"fullName\" : [ \"北京有限公司分公司\" ],\n  \"areaIds\" : [ \"44551,44552\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:12:09', 4, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273455560042082306, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1273453418250104834\" ],\n  \"parentIds\" : [ \"1273453418250104834,1236303334564106350,1\" ],\n  \"name\" : [ \"研发部\" ],\n  \"fullName\" : [ \"北京分公司研发部\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:20:40', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273455694960259074, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1273453418250104834\" ],\n  \"parentIds\" : [ \"1273453418250104834,1236303334564106350\" ],\n  \"name\" : [ \"销售部\" ],\n  \"fullName\" : [ \"北京分公司销售部\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:21:12', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273455789730557954, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysUserController.delete()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/del', '192.168.1.179', '内网IP', '{\n  \"ids\" : [ \"1273420079006081025\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:21:35', 0, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273456009113628673, '用户管理', 1, 'com.j2eefast.modules.sys.controller.SysUserController.add()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/add', '192.168.1.179', '内网IP', '{\n  \"username\" : [ \"0224\" ],\n  \"compId\" : [ \"1273453418250104834\" ],\n  \"name\" : [ \"测试0224\" ],\n  \"deptId\" : [ \"1273455559962390529\" ],\n  \"password\" : [ \"123456\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ],\n  \"mobile\" : [ \"16721312312\" ],\n  \"postCodes\" : [ \"SE\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:22:27', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273456146418364418, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255020745534443521\" ],\n  \"roleName\" : [ \"部门经理\" ],\n  \"roleKey\" : [ \"DEPT\" ],\n  \"dataScope\" : [ \"2\" ],\n  \"deptIds\" : [ \"1271318337648971778,1271320285504720897,1273415444107223041,1273415577674833921\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 11:23:00', 1, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273482974909730818, '机构管理', 1, 'com.j2eefast.modules.sys.controller.SysDeptController.save()', 'POST', 1, '测试0224', '北京分公司', '/fast/sys/dept/add', '192.168.1.179', '内网IP', '{\n  \"type\" : [ \"1\" ],\n  \"parentId\" : [ \"1273453418250104834\" ],\n  \"parentIds\" : [ \"1273453418250104834\" ],\n  \"name\" : [ \"人事部\" ],\n  \"fullName\" : [ \"北京分公司人事部\" ],\n  \"orderNum\" : [ \"5\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 13:09:36', 14, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273504959538659330, '登陆日志', 9, 'com.j2eefast.system.log.controller.SysLoginInfoController.clean()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/logininfo/clean', '192.168.1.179', '内网IP', '{ }', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 14:36:58', 6, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273515815945195522, '代码生成', 6, 'com.j2eefast.generator.gen.controller.GenController.importTableSave()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/tool/gen/importTable', '192.168.1.179', '内网IP', '{\n  \"tables\" : [ \"sys_oper_log\" ],\n  \"dbName\" : [ \"MASTER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 15:20:06', 16, NULL, NULL);
INSERT INTO `sys_oper_log` VALUES (1273546917468438529, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1255022318142590978\" ],\n  \"roleName\" : [ \"人事经理\" ],\n  \"roleKey\" : [ \"PER\" ],\n  \"dataScope\" : [ \"1\" ],\n  \"deptIds\" : [ \"\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 17:23:41', 11, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273553960262696961, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.update()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/role/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1\" ],\n  \"roleName\" : [ \"开发人员\" ],\n  \"roleKey\" : [ \"ADMIN\" ],\n  \"moduleCodes\" : [ \"core\" ],\n  \"roleSort\" : [ \"0\" ],\n  \"status\" : [ \"0\" ],\n  \"remark\" : [ \"最高级别管理员\" ],\n  \"menuIds\" : [ \"1,41,43,45,44,42,158,159,140,142,141,144,143,2,18,17,16,173,15,196,3,19,22,21,20,195,197,198,199,200,201,70,94,161,98,97,96,194,189,190,191,192,193,118,128,76,126,127,125,73,168,171,170,169,77,89,160,88,87,86,72,182,83,82,81,79,80,78,184,85,183,84,135,137,136,1241023067553239042,1241023310755762177,1241023877494312961,1243014163867074562,1243014380247023618,1243014490183925762,1243014687924387842,130,132,165,166,164,131,163,162,68,99,101,167,129,108,109,180,145,110,111,114,115,174,175,176,177,178,179,181,186,1241544436850233346,1241551431233835010,1241552388105572354\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 17:51:40', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273561821499916289, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1241026155169157122\" ],\n  \"roleIds\" : [ \"1272363117062242305\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:22:55', 5, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273561857088585730, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1241026312006766594\" ],\n  \"roleIds\" : [ \"1272363117062242305\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:23:03', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273561940941111297, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1255151411211141121\" ],\n  \"roleIds\" : [ \"1255020745534443521\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:23:23', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273561988387078145, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1268368631936487426\" ],\n  \"roleIds\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:23:34', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273562497751744513, '用户管理', 4, 'com.j2eefast.modules.sys.controller.SysUserController.selectAuthUserAll()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/authRole/insertAuthRoles', '192.168.1.179', '内网IP', '{\n  \"userId\" : [ \"1272348054892953602\" ],\n  \"roleIds\" : [ \"1272363117062242305\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:25:36', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273564276845477890, '角色管理', 3, 'com.j2eefast.modules.sys.controller.SysRoleController.delete()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/role/del', '192.168.1.179', '内网IP', '{\n  \"ids\" : [ \"7,6,4,3,2\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:32:40', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273564594756943874, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272348054892953602\" ],\n  \"username\" : [ \"0982\" ],\n  \"compId\" : [ \"1271250518156554241\" ],\n  \"name\" : [ \"测试1\" ],\n  \"deptId\" : [ \"1271250684183883778\" ],\n  \"mobile\" : [ \"18721312312\" ],\n  \"roleIdList\" : [ \"1272363117062242305\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"USER\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:33:56', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273564635659796482, '用户管理', 2, 'com.j2eefast.modules.sys.controller.SysUserController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/user/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272354435549216769\" ],\n  \"username\" : [ \"0021\" ],\n  \"compId\" : [ \"1270643743532093441\" ],\n  \"name\" : [ \"测试2\" ],\n  \"deptId\" : [ \"1271320074380234754\" ],\n  \"mobile\" : [ \"17612321312\" ],\n  \"roleIdList\" : [ \"1255020745534443521\" ],\n  \"email\" : [ \"\" ],\n  \"status\" : [ \"0\" ],\n  \"postCodes\" : [ \"SE\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 18:34:05', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273614135627644929, '定时任务', 2, 'com.j2eefast.system.job.controller.SysJobController.changeStatus()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/schedule/status', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"1243581612249190401\" ],\n  \"jobGroup\" : [ \"DEFAULT\" ],\n  \"status\" : [ \"0\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 21:50:47', 0, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273616749438205953, '定时任务', 2, 'com.j2eefast.system.job.controller.SysJobController.run()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/schedule/run', '192.168.0.105', '内网IP', '{\n  \"ids\" : [ \"1243581612249190401\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 22:01:10', 1, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273619476830519297, '定时任务', 2, 'com.j2eefast.system.job.controller.SysJobController.changeStatus()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/schedule/status', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"1243581612249190401\" ],\n  \"jobGroup\" : [ \"DEFAULT\" ],\n  \"status\" : [ \"1\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 22:12:01', 0, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273633583911501825, '菜单管理', 1, 'com.j2eefast.modules.sys.controller.SysMenuController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/add', '192.168.0.105', '内网IP', '{\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"0\" ],\n  \"name\" : [ \"组件范例\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-wrench\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:08:04', 10, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639451012988930, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"1263003536030502913\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"单表范例\" ],\n  \"url\" : [ \"gen/test\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"gen:test:view\" ],\n  \"orderNum\" : [ \"20\" ],\n  \"icon\" : [ \"fa fa-cube\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:31:23', 1, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639587030073346, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"175\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"代码生成\" ],\n  \"url\" : [ \"tool/gen\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"tool:gen:view\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"fa fa-terminal\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:31:55', 1, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639637273640962, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"186\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"图标样式\" ],\n  \"url\" : [ \"tool/icon\" ],\n  \"target\" : [ \"_alert\" ],\n  \"perms\" : [ \"tool:icon:view\" ],\n  \"orderNum\" : [ \"6\" ],\n  \"icon\" : [ \"fa fa-hashtag\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:32:07', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639747483172865, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"1251700255260614658\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"接口文档\" ],\n  \"url\" : [ \"doc.html\" ],\n  \"target\" : [ \"_alert\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"8\" ],\n  \"icon\" : [ \"fa fa-gg\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:32:34', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639891691732994, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"175\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"代码生成\" ],\n  \"url\" : [ \"tool/gen\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"tool:gen:view\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-terminal\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:33:08', 1, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273639928039571457, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.0.105', '内网IP', '{\n  \"id\" : [ \"1273633583739535362\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"0\" ],\n  \"name\" : [ \"组件范例\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-wrench\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:33:17', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273640354566733826, '菜单管理', 1, 'com.j2eefast.modules.sys.controller.SysMenuController.save()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/add', '192.168.0.105', '内网IP', '{\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"组件使用\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-code\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-18 23:34:58', 1, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273785118536597506, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1261669932602687490\" ],\n  \"parentId\" : [ \"1261669708115148802\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"五级菜单\" ],\n  \"url\" : [ \"javascript:;\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-smile-o\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 09:10:13', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273786728260141057, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1261669932602687490\" ],\n  \"parentId\" : [ \"1261669708115148802\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"五级菜单\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-smile-o\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 09:16:36', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273818675216773121, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273633583739535362\" ],\n  \"parentId\" : [ \"174\" ],\n  \"type\" : [ \"0\" ],\n  \"name\" : [ \"前端范例\" ],\n  \"orderNum\" : [ \"1\" ],\n  \"icon\" : [ \"fa fa-wrench\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 11:23:33', 10, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273818856024829953, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/menu/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1273640354499624961\" ],\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"模板使用\" ],\n  \"url\" : [ \"sys/demo\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-code\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 11:24:16', 0, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273920742525792258, '角色管理', 2, 'com.j2eefast.modules.sys.controller.SysRoleController.authDataScopeEdit()', 'POST', 1, '李四', '上海法斯特有限公司', '/fast/sys/role/authData/edit', '192.168.1.179', '内网IP', '{\n  \"id\" : [ \"1272363117062242305\" ],\n  \"roleName\" : [ \"普通员工\" ],\n  \"roleKey\" : [ \"USER\" ],\n  \"dataScope\" : [ \"3\" ],\n  \"deptIds\" : [ \"1,1239875326212898817,1271030135314837505,1271030309013549058\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 18:09:08', 12, 1241024147242586113, 1271320285504720897);
INSERT INTO `sys_oper_log` VALUES (1273971588048220161, '菜单管理', 1, 'com.j2eefast.modules.sys.controller.SysMenuController.save()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/add', '192.168.0.100', '内网IP', '{\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"组件使用\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"fa fa-cogs\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 21:31:10', 18, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273971799508250626, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.0.100', '内网IP', '{\n  \"id\" : [ \"1273971587838504961\" ],\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"组件使用\" ],\n  \"url\" : [ \"#\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"fa fa-code\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 21:32:01', 1, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273975672490815490, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.0.100', '内网IP', '{\n  \"id\" : [ \"1273640354499624961\" ],\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"模板使用\" ],\n  \"url\" : [ \"sys/demo/mode\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"0\" ],\n  \"icon\" : [ \"fa fa-code\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 21:47:24', 0, 1, 1);
INSERT INTO `sys_oper_log` VALUES (1273977671517073409, '菜单管理', 2, 'com.j2eefast.modules.sys.controller.SysMenuController.edit()', 'POST', 1, '超级管理员', '总公司', '/fast/sys/menu/edit', '192.168.0.100', '内网IP', '{\n  \"id\" : [ \"1273971587838504961\" ],\n  \"parentId\" : [ \"1273633583739535362\" ],\n  \"type\" : [ \"1\" ],\n  \"name\" : [ \"组件使用\" ],\n  \"url\" : [ \"sys/demo/component\" ],\n  \"target\" : [ \"_tab\" ],\n  \"perms\" : [ \"\" ],\n  \"orderNum\" : [ \"2\" ],\n  \"icon\" : [ \"fa fa-code\" ],\n  \"hide\" : [ \"0\" ],\n  \"moduleCodes\" : [ \"core\" ]\n}', '{\n  \"msg\" : \"SUCCESS\",\n  \"code\" : \"00000\"\n}', 0, '', '2020-06-19 21:55:21', 1, 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `post_code` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `post_type` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '岗位分类',
  `status` char(1) COLLATE utf8mb4_bin NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`,`post_code`),
  UNIQUE KEY `post_code` (`post_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_post` VALUES (1, 'CEO', '董事长', 1, '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-13 09:10:01', '');
INSERT INTO `sys_post` VALUES (2, 'SE', '项目经理', 2, '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-02-13 09:10:07', '');
INSERT INTO `sys_post` VALUES (3, 'HR', '人力资源', 3, '1', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-06-02 17:14:47', '');
INSERT INTO `sys_post` VALUES (4, 'USER', '普通员工', 4, '3', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-04-09 17:44:11', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_name` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '角色名称',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID[暂停使用]',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `role_key` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '角色权限字符串',
  `data_scope` char(1) COLLATE utf8mb4_bin DEFAULT '1' COMMENT '权限范围 1=所有数据权限,2=自定义数据权限,3=本部门数据权限,4=本部门及以下数据权限',
  `role_sort` int(4) DEFAULT NULL COMMENT '显示顺序',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES (1, '开发人员', 1, '2018-06-02 21:35:28', 'ADMIN', '0', 0, '0', '0', '', '00214', '2020-06-18 17:51:40', '最高级别管理员');
INSERT INTO `sys_role` VALUES (2, '公司管理角色', 3, '2018-11-17 21:02:35', 'COMP', '0', 0, '1', '0', '', 'admin', '2020-04-28 18:43:31', '公司权限管理');
INSERT INTO `sys_role` VALUES (3, '地区管理用户', NULL, '2018-12-05 17:27:37', 'DEPT', '0', 0, '1', '0', '', 'admin', '2020-06-02 21:31:12', '管理地区终端');
INSERT INTO `sys_role` VALUES (4, '终端管理角色', NULL, '2018-12-07 18:51:34', 'MACH', '0', 0, '1', '0', '', 'admin', '2020-04-28 18:43:57', '终端限角色');
INSERT INTO `sys_role` VALUES (6, '公交司机', NULL, '2018-12-26 15:29:13', 'SIJI', '0', 0, '1', '0', '', 'admin', '2020-04-28 18:44:06', '公交司机');
INSERT INTO `sys_role` VALUES (7, '库房管理', NULL, '2019-04-25 09:29:15', 'KUFANG', '0', 0, '1', '0', '', 'admin', '2020-04-28 18:44:29', '库房管理');
INSERT INTO `sys_role` VALUES (8, '测试角色', NULL, '2020-02-17 14:46:42', 'TEST', '0', 0, '1', '0', 'admin', 'admin', '2020-04-28 22:49:38', '测试角色');
INSERT INTO `sys_role` VALUES (1255020745534443521, '部门经理', NULL, '2020-04-27 22:27:18', 'DEPT', '2', 0, '0', '0', 'admin', '00214', '2020-06-18 11:23:00', '');
INSERT INTO `sys_role` VALUES (1255022318142590978, '人事经理', NULL, '2020-04-27 22:33:32', 'PER', '1', 0, '0', '0', 'admin', '00214', '2020-06-18 17:23:41', '');
INSERT INTO `sys_role` VALUES (1272363117062242305, '普通员工', NULL, '2020-06-15 10:59:41', 'USER', '3', 0, '0', '0', 'admin', '00214', '2020-06-19 18:09:08', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色与部门对应关系';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_dept` VALUES (1273456146238009345, 1255020745534443521, 1271318337648971778);
INSERT INTO `sys_role_dept` VALUES (1273456146250592258, 1255020745534443521, 1271320285504720897);
INSERT INTO `sys_role_dept` VALUES (1273456146254786561, 1255020745534443521, 1273415444107223041);
INSERT INTO `sys_role_dept` VALUES (1273456146263175170, 1255020745534443521, 1273415577674833921);
INSERT INTO `sys_role_dept` VALUES (1273920742139916289, 1272363117062242305, 1);
INSERT INTO `sys_role_dept` VALUES (1273920742160887809, 1272363117062242305, 1239875326212898817);
INSERT INTO `sys_role_dept` VALUES (1273920742165082113, 1272363117062242305, 1271030135314837505);
INSERT INTO `sys_role_dept` VALUES (1273920742177665026, 1272363117062242305, 1271030309013549058);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES (1272913054392160257, 1272363117062242305, 1);
INSERT INTO `sys_role_menu` VALUES (1272913054400548865, 1272363117062242305, 41);
INSERT INTO `sys_role_menu` VALUES (1272913054404743169, 1272363117062242305, 43);
INSERT INTO `sys_role_menu` VALUES (1272913054408937474, 1272363117062242305, 140);
INSERT INTO `sys_role_menu` VALUES (1272913054413131778, 1272363117062242305, 142);
INSERT INTO `sys_role_menu` VALUES (1272913054413131779, 1272363117062242305, 2);
INSERT INTO `sys_role_menu` VALUES (1272913054417326081, 1272363117062242305, 15);
INSERT INTO `sys_role_menu` VALUES (1272913054421520386, 1272363117062242305, 3);
INSERT INTO `sys_role_menu` VALUES (1272913054425714689, 1272363117062242305, 19);
INSERT INTO `sys_role_menu` VALUES (1272913054429908994, 1272363117062242305, 197);
INSERT INTO `sys_role_menu` VALUES (1272913054434103297, 1272363117062242305, 198);
INSERT INTO `sys_role_menu` VALUES (1272913054438297601, 1272363117062242305, 174);
INSERT INTO `sys_role_menu` VALUES (1272913054450880513, 1272363117062242305, 175);
INSERT INTO `sys_role_menu` VALUES (1272913054455074818, 1272363117062242305, 176);
INSERT INTO `sys_role_menu` VALUES (1272913054459269122, 1272363117062242305, 177);
INSERT INTO `sys_role_menu` VALUES (1272913054467657729, 1272363117062242305, 178);
INSERT INTO `sys_role_menu` VALUES (1272913054471852034, 1272363117062242305, 179);
INSERT INTO `sys_role_menu` VALUES (1272913054476046338, 1272363117062242305, 181);
INSERT INTO `sys_role_menu` VALUES (1272913054480240641, 1272363117062242305, 1263003536030502913);
INSERT INTO `sys_role_menu` VALUES (1272913054484434945, 1272363117062242305, 1263003536030502914);
INSERT INTO `sys_role_menu` VALUES (1272913054488629250, 1272363117062242305, 1263003536030502915);
INSERT INTO `sys_role_menu` VALUES (1272913054488629251, 1272363117062242305, 1263003536030502916);
INSERT INTO `sys_role_menu` VALUES (1272913054492823554, 1272363117062242305, 1263003536030502917);
INSERT INTO `sys_role_menu` VALUES (1272913054497017857, 1272363117062242305, 186);
INSERT INTO `sys_role_menu` VALUES (1272913054501212161, 1272363117062242305, 1251700255260614658);
INSERT INTO `sys_role_menu` VALUES (1272913054509600769, 1272363117062242305, 1261471575930253313);
INSERT INTO `sys_role_menu` VALUES (1272913054517989378, 1272363117062242305, 1261668051524452354);
INSERT INTO `sys_role_menu` VALUES (1272913054522183681, 1272363117062242305, 1261669708115148802);
INSERT INTO `sys_role_menu` VALUES (1272913054526377986, 1272363117062242305, 1261669932602687490);
INSERT INTO `sys_role_menu` VALUES (1272913054530572290, 1272363117062242305, 1241544436850233346);
INSERT INTO `sys_role_menu` VALUES (1272913054534766593, 1272363117062242305, 1241551431233835010);
INSERT INTO `sys_role_menu` VALUES (1272913054538960898, 1272363117062242305, 1241552388105572354);
INSERT INTO `sys_role_menu` VALUES (1273265677386166274, 1255022318142590978, 1);
INSERT INTO `sys_role_menu` VALUES (1273265677394554881, 1255022318142590978, 41);
INSERT INTO `sys_role_menu` VALUES (1273265677407137794, 1255022318142590978, 44);
INSERT INTO `sys_role_menu` VALUES (1273265677411332098, 1255022318142590978, 43);
INSERT INTO `sys_role_menu` VALUES (1273265677419720705, 1255022318142590978, 45);
INSERT INTO `sys_role_menu` VALUES (1273265677432303618, 1255022318142590978, 42);
INSERT INTO `sys_role_menu` VALUES (1273265677436497921, 1255022318142590978, 140);
INSERT INTO `sys_role_menu` VALUES (1273265677440692226, 1255022318142590978, 143);
INSERT INTO `sys_role_menu` VALUES (1273265677449080833, 1255022318142590978, 142);
INSERT INTO `sys_role_menu` VALUES (1273265677453275137, 1255022318142590978, 141);
INSERT INTO `sys_role_menu` VALUES (1273265677461663745, 1255022318142590978, 144);
INSERT INTO `sys_role_menu` VALUES (1273265677465858050, 1255022318142590978, 2);
INSERT INTO `sys_role_menu` VALUES (1273265677474246658, 1255022318142590978, 18);
INSERT INTO `sys_role_menu` VALUES (1273265677482635265, 1255022318142590978, 17);
INSERT INTO `sys_role_menu` VALUES (1273265677486829569, 1255022318142590978, 16);
INSERT INTO `sys_role_menu` VALUES (1273265677491023873, 1255022318142590978, 173);
INSERT INTO `sys_role_menu` VALUES (1273265677499412482, 1255022318142590978, 15);
INSERT INTO `sys_role_menu` VALUES (1273265677507801089, 1255022318142590978, 196);
INSERT INTO `sys_role_menu` VALUES (1273265677511995393, 1255022318142590978, 3);
INSERT INTO `sys_role_menu` VALUES (1273265677516189697, 1255022318142590978, 19);
INSERT INTO `sys_role_menu` VALUES (1273265677520384002, 1255022318142590978, 22);
INSERT INTO `sys_role_menu` VALUES (1273265677524578305, 1255022318142590978, 21);
INSERT INTO `sys_role_menu` VALUES (1273265677528772609, 1255022318142590978, 20);
INSERT INTO `sys_role_menu` VALUES (1273265677532966913, 1255022318142590978, 195);
INSERT INTO `sys_role_menu` VALUES (1273265677541355522, 1255022318142590978, 197);
INSERT INTO `sys_role_menu` VALUES (1273265677549744129, 1255022318142590978, 198);
INSERT INTO `sys_role_menu` VALUES (1273265677558132737, 1255022318142590978, 199);
INSERT INTO `sys_role_menu` VALUES (1273265677562327042, 1255022318142590978, 200);
INSERT INTO `sys_role_menu` VALUES (1273265677566521345, 1255022318142590978, 201);
INSERT INTO `sys_role_menu` VALUES (1273414381312532482, 1255020745534443521, 1);
INSERT INTO `sys_role_menu` VALUES (1273414381329309698, 1255020745534443521, 41);
INSERT INTO `sys_role_menu` VALUES (1273414381329309699, 1255020745534443521, 45);
INSERT INTO `sys_role_menu` VALUES (1273414381337698305, 1255020745534443521, 44);
INSERT INTO `sys_role_menu` VALUES (1273414381341892609, 1255020745534443521, 43);
INSERT INTO `sys_role_menu` VALUES (1273414381350281218, 1255020745534443521, 42);
INSERT INTO `sys_role_menu` VALUES (1273414381358669825, 1255020745534443521, 158);
INSERT INTO `sys_role_menu` VALUES (1273414381362864129, 1255020745534443521, 159);
INSERT INTO `sys_role_menu` VALUES (1273414381367058434, 1255020745534443521, 140);
INSERT INTO `sys_role_menu` VALUES (1273414381367058435, 1255020745534443521, 144);
INSERT INTO `sys_role_menu` VALUES (1273414381375447042, 1255020745534443521, 143);
INSERT INTO `sys_role_menu` VALUES (1273414381383835649, 1255020745534443521, 142);
INSERT INTO `sys_role_menu` VALUES (1273414381392224257, 1255020745534443521, 141);
INSERT INTO `sys_role_menu` VALUES (1273414381396418562, 1255020745534443521, 2);
INSERT INTO `sys_role_menu` VALUES (1273414381404807169, 1255020745534443521, 173);
INSERT INTO `sys_role_menu` VALUES (1273414381404807170, 1255020745534443521, 16);
INSERT INTO `sys_role_menu` VALUES (1273414381413195778, 1255020745534443521, 15);
INSERT INTO `sys_role_menu` VALUES (1273414381417390081, 1255020745534443521, 18);
INSERT INTO `sys_role_menu` VALUES (1273414381421584385, 1255020745534443521, 17);
INSERT INTO `sys_role_menu` VALUES (1273414381425778690, 1255020745534443521, 196);
INSERT INTO `sys_role_menu` VALUES (1273414381434167298, 1255020745534443521, 3);
INSERT INTO `sys_role_menu` VALUES (1273414381438361601, 1255020745534443521, 22);
INSERT INTO `sys_role_menu` VALUES (1273414381442555905, 1255020745534443521, 21);
INSERT INTO `sys_role_menu` VALUES (1273414381446750209, 1255020745534443521, 20);
INSERT INTO `sys_role_menu` VALUES (1273414381450944514, 1255020745534443521, 19);
INSERT INTO `sys_role_menu` VALUES (1273414381463527426, 1255020745534443521, 195);
INSERT INTO `sys_role_menu` VALUES (1273414381471916034, 1255020745534443521, 197);
INSERT INTO `sys_role_menu` VALUES (1273414381471916035, 1255020745534443521, 198);
INSERT INTO `sys_role_menu` VALUES (1273414381476110337, 1255020745534443521, 199);
INSERT INTO `sys_role_menu` VALUES (1273414381484498945, 1255020745534443521, 200);
INSERT INTO `sys_role_menu` VALUES (1273414381488693249, 1255020745534443521, 201);
INSERT INTO `sys_role_menu` VALUES (1273553959398670337, 1, 1);
INSERT INTO `sys_role_menu` VALUES (1273553959415447553, 1, 41);
INSERT INTO `sys_role_menu` VALUES (1273553959423836161, 1, 43);
INSERT INTO `sys_role_menu` VALUES (1273553959432224769, 1, 45);
INSERT INTO `sys_role_menu` VALUES (1273553959440613378, 1, 44);
INSERT INTO `sys_role_menu` VALUES (1273553959449001985, 1, 42);
INSERT INTO `sys_role_menu` VALUES (1273553959453196290, 1, 158);
INSERT INTO `sys_role_menu` VALUES (1273553959461584897, 1, 159);
INSERT INTO `sys_role_menu` VALUES (1273553959469973505, 1, 140);
INSERT INTO `sys_role_menu` VALUES (1273553959478362113, 1, 142);
INSERT INTO `sys_role_menu` VALUES (1273553959490945025, 1, 141);
INSERT INTO `sys_role_menu` VALUES (1273553959499333634, 1, 144);
INSERT INTO `sys_role_menu` VALUES (1273553959507722241, 1, 143);
INSERT INTO `sys_role_menu` VALUES (1273553959511916546, 1, 2);
INSERT INTO `sys_role_menu` VALUES (1273553959516110850, 1, 18);
INSERT INTO `sys_role_menu` VALUES (1273553959520305154, 1, 17);
INSERT INTO `sys_role_menu` VALUES (1273553959528693761, 1, 16);
INSERT INTO `sys_role_menu` VALUES (1273553959537082369, 1, 173);
INSERT INTO `sys_role_menu` VALUES (1273553959541276674, 1, 15);
INSERT INTO `sys_role_menu` VALUES (1273553959545470977, 1, 196);
INSERT INTO `sys_role_menu` VALUES (1273553959549665282, 1, 3);
INSERT INTO `sys_role_menu` VALUES (1273553959558053889, 1, 19);
INSERT INTO `sys_role_menu` VALUES (1273553959570636801, 1, 22);
INSERT INTO `sys_role_menu` VALUES (1273553959583219714, 1, 21);
INSERT INTO `sys_role_menu` VALUES (1273553959591608321, 1, 20);
INSERT INTO `sys_role_menu` VALUES (1273553959612579842, 1, 195);
INSERT INTO `sys_role_menu` VALUES (1273553959633551362, 1, 197);
INSERT INTO `sys_role_menu` VALUES (1273553959646134273, 1, 198);
INSERT INTO `sys_role_menu` VALUES (1273553959654522881, 1, 199);
INSERT INTO `sys_role_menu` VALUES (1273553959662911490, 1, 200);
INSERT INTO `sys_role_menu` VALUES (1273553959671300098, 1, 201);
INSERT INTO `sys_role_menu` VALUES (1273553959679688705, 1, 70);
INSERT INTO `sys_role_menu` VALUES (1273553959688077314, 1, 94);
INSERT INTO `sys_role_menu` VALUES (1273553959692271618, 1, 161);
INSERT INTO `sys_role_menu` VALUES (1273553959700660226, 1, 98);
INSERT INTO `sys_role_menu` VALUES (1273553959704854529, 1, 97);
INSERT INTO `sys_role_menu` VALUES (1273553959713243138, 1, 96);
INSERT INTO `sys_role_menu` VALUES (1273553959717437441, 1, 194);
INSERT INTO `sys_role_menu` VALUES (1273553959725826049, 1, 189);
INSERT INTO `sys_role_menu` VALUES (1273553959734214658, 1, 190);
INSERT INTO `sys_role_menu` VALUES (1273553959738408962, 1, 191);
INSERT INTO `sys_role_menu` VALUES (1273553959746797570, 1, 192);
INSERT INTO `sys_role_menu` VALUES (1273553959750991874, 1, 193);
INSERT INTO `sys_role_menu` VALUES (1273553959759380482, 1, 118);
INSERT INTO `sys_role_menu` VALUES (1273553959763574785, 1, 128);
INSERT INTO `sys_role_menu` VALUES (1273553959771963393, 1, 76);
INSERT INTO `sys_role_menu` VALUES (1273553959776157698, 1, 126);
INSERT INTO `sys_role_menu` VALUES (1273553959780352001, 1, 127);
INSERT INTO `sys_role_menu` VALUES (1273553959784546306, 1, 125);
INSERT INTO `sys_role_menu` VALUES (1273553959788740609, 1, 73);
INSERT INTO `sys_role_menu` VALUES (1273553959792934913, 1, 168);
INSERT INTO `sys_role_menu` VALUES (1273553959797129218, 1, 171);
INSERT INTO `sys_role_menu` VALUES (1273553959801323522, 1, 170);
INSERT INTO `sys_role_menu` VALUES (1273553959805517826, 1, 169);
INSERT INTO `sys_role_menu` VALUES (1273553959809712130, 1, 77);
INSERT INTO `sys_role_menu` VALUES (1273553959818100738, 1, 89);
INSERT INTO `sys_role_menu` VALUES (1273553959826489345, 1, 160);
INSERT INTO `sys_role_menu` VALUES (1273553959830683650, 1, 88);
INSERT INTO `sys_role_menu` VALUES (1273553959834877953, 1, 87);
INSERT INTO `sys_role_menu` VALUES (1273553959839072257, 1, 86);
INSERT INTO `sys_role_menu` VALUES (1273553959843266561, 1, 72);
INSERT INTO `sys_role_menu` VALUES (1273553959847460865, 1, 182);
INSERT INTO `sys_role_menu` VALUES (1273553959851655169, 1, 83);
INSERT INTO `sys_role_menu` VALUES (1273553959855849474, 1, 82);
INSERT INTO `sys_role_menu` VALUES (1273553959860043777, 1, 81);
INSERT INTO `sys_role_menu` VALUES (1273553959864238081, 1, 79);
INSERT INTO `sys_role_menu` VALUES (1273553959868432386, 1, 80);
INSERT INTO `sys_role_menu` VALUES (1273553959872626689, 1, 78);
INSERT INTO `sys_role_menu` VALUES (1273553959876820994, 1, 184);
INSERT INTO `sys_role_menu` VALUES (1273553959885209601, 1, 85);
INSERT INTO `sys_role_menu` VALUES (1273553959889403906, 1, 183);
INSERT INTO `sys_role_menu` VALUES (1273553959893598209, 1, 84);
INSERT INTO `sys_role_menu` VALUES (1273553959901986817, 1, 135);
INSERT INTO `sys_role_menu` VALUES (1273553959901986818, 1, 137);
INSERT INTO `sys_role_menu` VALUES (1273553959906181122, 1, 136);
INSERT INTO `sys_role_menu` VALUES (1273553959914569729, 1, 1241023067553239042);
INSERT INTO `sys_role_menu` VALUES (1273553959914569730, 1, 1241023310755762177);
INSERT INTO `sys_role_menu` VALUES (1273553959918764034, 1, 1241023877494312961);
INSERT INTO `sys_role_menu` VALUES (1273553959922958338, 1, 1243014163867074562);
INSERT INTO `sys_role_menu` VALUES (1273553959927152641, 1, 1243014380247023618);
INSERT INTO `sys_role_menu` VALUES (1273553959935541250, 1, 1243014490183925762);
INSERT INTO `sys_role_menu` VALUES (1273553959935541251, 1, 1243014687924387842);
INSERT INTO `sys_role_menu` VALUES (1273553959939735553, 1, 130);
INSERT INTO `sys_role_menu` VALUES (1273553959943929857, 1, 132);
INSERT INTO `sys_role_menu` VALUES (1273553959943929858, 1, 165);
INSERT INTO `sys_role_menu` VALUES (1273553959952318465, 1, 166);
INSERT INTO `sys_role_menu` VALUES (1273553959956512769, 1, 164);
INSERT INTO `sys_role_menu` VALUES (1273553959960707073, 1, 131);
INSERT INTO `sys_role_menu` VALUES (1273553959964901378, 1, 163);
INSERT INTO `sys_role_menu` VALUES (1273553959969095681, 1, 162);
INSERT INTO `sys_role_menu` VALUES (1273553959973289985, 1, 68);
INSERT INTO `sys_role_menu` VALUES (1273553959977484290, 1, 99);
INSERT INTO `sys_role_menu` VALUES (1273553959985872897, 1, 101);
INSERT INTO `sys_role_menu` VALUES (1273553959985872898, 1, 167);
INSERT INTO `sys_role_menu` VALUES (1273553959990067202, 1, 129);
INSERT INTO `sys_role_menu` VALUES (1273553959994261506, 1, 108);
INSERT INTO `sys_role_menu` VALUES (1273553959998455809, 1, 109);
INSERT INTO `sys_role_menu` VALUES (1273553960002650113, 1, 180);
INSERT INTO `sys_role_menu` VALUES (1273553960006844417, 1, 145);
INSERT INTO `sys_role_menu` VALUES (1273553960011038721, 1, 110);
INSERT INTO `sys_role_menu` VALUES (1273553960015233025, 1, 111);
INSERT INTO `sys_role_menu` VALUES (1273553960019427329, 1, 114);
INSERT INTO `sys_role_menu` VALUES (1273553960023621634, 1, 115);
INSERT INTO `sys_role_menu` VALUES (1273553960027815938, 1, 174);
INSERT INTO `sys_role_menu` VALUES (1273553960032010241, 1, 175);
INSERT INTO `sys_role_menu` VALUES (1273553960036204545, 1, 176);
INSERT INTO `sys_role_menu` VALUES (1273553960040398850, 1, 177);
INSERT INTO `sys_role_menu` VALUES (1273553960044593153, 1, 178);
INSERT INTO `sys_role_menu` VALUES (1273553960048787458, 1, 179);
INSERT INTO `sys_role_menu` VALUES (1273553960052981762, 1, 181);
INSERT INTO `sys_role_menu` VALUES (1273553960057176065, 1, 186);
INSERT INTO `sys_role_menu` VALUES (1273553960061370370, 1, 1241544436850233346);
INSERT INTO `sys_role_menu` VALUES (1273553960065564674, 1, 1241551431233835010);
INSERT INTO `sys_role_menu` VALUES (1273553960069758977, 1, 1241552388105572354);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_module`;
CREATE TABLE `sys_role_module` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '权限ID',
  `module_code` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '模块编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色对应模块表';

-- ----------------------------
-- Records of sys_role_module
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_module` VALUES (1, 0, 'core');
INSERT INTO `sys_role_module` VALUES (2, 0, 'bcs');
INSERT INTO `sys_role_module` VALUES (1248613427259342849, 1248613019166146562, 'core');
INSERT INTO `sys_role_module` VALUES (1248614868602560514, 1248614843285741570, 'core');
INSERT INTO `sys_role_module` VALUES (1253241716917596162, 1253241705483923457, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253272504656662529, 1253272504346284033, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253273692424835074, 1253273692361920514, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253275442384965633, 1253275442024255489, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253278193789652993, 1253278193458302977, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253278968548921346, 1253278968200794113, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253279760643170306, 1253279760320208897, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253282631019352066, 1253282630738333698, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253284235252527105, 1253284234870845441, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253285120099667969, 1253285119793483777, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253286385043103745, 1253286384715948033, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253287931927584769, 1253287931847892993, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253307882520395777, 1253307882121936898, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253308564052852738, 1253308563956383746, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253311262487691265, 1253311242518609921, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253312562994561026, 1253312543344246786, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253314722092179457, 1253314721664360450, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253320520159617025, 1253320520096702466, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253320650694746114, 1253320650627637249, 'bpm');
INSERT INTO `sys_role_module` VALUES (1253497138178035713, 1253333281983893506, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255326816870207490, 2, 'core');
INSERT INTO `sys_role_module` VALUES (1255326816886984705, 2, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255326927209762817, 4, 'core');
INSERT INTO `sys_role_module` VALUES (1255326927218151425, 4, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255326965591838721, 6, 'core');
INSERT INTO `sys_role_module` VALUES (1255326965600227329, 6, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255327060798345218, 7, 'core');
INSERT INTO `sys_role_module` VALUES (1255327060810928129, 7, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255388757466767361, 8, 'bpm');
INSERT INTO `sys_role_module` VALUES (1255406907579138050, 1255406907281342466, 'bpm');
INSERT INTO `sys_role_module` VALUES (1268052591851474946, 3, 'core');
INSERT INTO `sys_role_module` VALUES (1272913054551543809, 1272363117062242305, 'core');
INSERT INTO `sys_role_module` VALUES (1273265677587492865, 1255022318142590978, 'core');
INSERT INTO `sys_role_module` VALUES (1273414381501276161, 1255020745534443521, 'core');
INSERT INTO `sys_role_module` VALUES (1273553960090730498, 1, 'core');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '登陆账号',
  `name` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '盐',
  `email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态  1：禁用   0：正常',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '是否删除',
  `pwd_security_level` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '密码安全级别（0初始 1很弱 2弱 3安全 4很安全）',
  `pwd_update_date` datetime DEFAULT NULL COMMENT '密码最后更新时间',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '公司ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `card_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户对应卡号',
  `avatar` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '用户头像',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `remark` varchar(1000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`,`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统用户';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES (1, 'admin', '超级管理员', '77191ae6693e6db3e9ac44d57059bc046a5e93633b6700e95829b71c3b70dbfc', '9rAjzhlpiE4cKEzJyy85', '18774995071@163.com', '18774995071', '0', '0', '2', '2019-12-11 19:45:08', 1, 1, '2018-05-11 11:11:11', '', '/profile/avatar/2020/06/09/08ec7d35e64ee5aec46892791d8646e5.png/', '2020-06-15 09:38:53', 'admin', '', '');
INSERT INTO `sys_user` VALUES (1239914383204892673, '00213', '张三', '5cdfc4a3e661948a6f93f385fab4699e9ace521c4e0805420d172e5740d34341', 'HXdhsZrJjnok8iHrIB4r', '18774994072@163.com', '18774994072', '1', '0', '2', '2020-03-08 15:16:25', 1241024147242586113, 1273415444107223041, '2020-03-17 22:00:00', '', '', '2020-06-18 08:42:41', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1239915009632583681, '00214', '李四', 'd47b27fa78965fee404820ede5da11648833903e972d5ad6c0ed5edd314750c3', 'u8vgUXzQ0A6yhUPArMGz', '18772321312@163.com', '18772321312', '0', '0', '2', '2020-06-17 16:54:33', 1241024147242586113, 1271320285504720897, '2020-03-17 22:02:29', '', '', '2020-06-18 09:26:58', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1241025732404285442, '00215', '张飞', '2c0af1edf6a2a9178fb4569a8242170b5f00c8b6a080d78061eca80f4f10e554', 'Dbmqk7XCryFvujJxOgcy', '751312449@qq.com', '18774994013', '0', '0', '2', '2020-03-26 15:22:47', 1241024147242586113, 1271320650761490433, '2020-03-20 10:36:06', '', '', '2020-06-15 09:38:33', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1241025930912305153, '00216', '刘备', '07c0c2aa6cac98a16bda5b8b99aea4ddc8a1c303c834207ebe8b23a843739ae5', 'yCUogGZH3bqhszGbPNp0', '123456@qq.com', '13234234234', '0', '0', '2', '2020-03-25 16:47:56', 1241024147242586113, 1271320650761490433, '2020-03-20 10:36:54', '', '', '2020-06-15 09:38:24', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1241026155169157122, '00217', '关羽', '9222af358bf70643870652d1a2c9b2db95c198aae6287cf42970b375c1b2ddf0', '5vSTXoPBqTQZA4hJhUEQ', '123213@QQ.com', '18742342223', '1', '0', '2', '2020-03-08 15:22:26', 1241024147242586113, 1271320402131537921, '2020-03-20 10:37:47', '', '', '2020-06-15 09:38:18', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1241026312006766594, '00219', '曹操', '94f04f2fb68f262e9879a0b4dbe04c29567b4f5932b48d6862e7cc413de68ec0', 'kXpq77QShWyQyEKpLqkY', 'zhouhuan@lixinfintech.com', '15645645645', '0', '0', '2', '2020-03-10 21:21:27', 1241024147242586113, 1271320536974217217, '2020-03-20 10:38:25', '', '', '2020-06-15 09:38:11', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1253346480368009217, '00220', '赵云', 'ba6dbd6acb28771d677066dea2aa7fd19e842819200c7dea4c135e7b1ec28bf0', '5bxWbC3HvKzVKEIakjGG', '123213@QQ.com', '17771231243', '0', '0', '2', NULL, 1241024147242586113, 1271318337648971778, '2020-04-23 07:34:22', '', '', '2020-06-15 09:38:04', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1255151411211141121, '00221', '诸葛亮', '2b7ed7674167ec0394ca898506ab23f25e5d5d2f4769b8a7ec51ef86e30fe4a3', 'T4zvwo0YsflbdacFtXDg', '14562132342@163.com', '14562132342', '0', '0', '2', NULL, 1241024147242586113, 1273415577674833921, '2020-04-28 07:06:31', '', '', '2020-06-18 08:42:54', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1255152805615894529, '00222', '小乔', 'f94b07e78cc92003e5a4b931515fa39b8855831d9dd18a9a0c0b3597bad6fa84', 'eIeFJC42bnC0ym9OdheV', '18721231232@163.com', '18721231232', '0', '0', '2', '2020-06-17 22:45:12', 1236303334564106350, 1270986234210029570, '2020-04-28 07:12:03', '', '', '2020-06-15 09:37:49', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1255152992669270017, '00223', '大乔', '7000256e83de2099062b1a9f1bc21295f9d1db9bcfa33d7d43f3f2b5cf4704b6', '2pEjNQFKyhF4PiupXN6t', '18771231232@163.com', '18771231232', '0', '0', '2', NULL, 1236303334564106350, 1270986234210029570, '2020-04-28 07:12:48', '', '', '2020-06-15 09:37:39', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1263847219968339970, '123123', '测试表格', '1be2b18c64446a298c7de6b85c50fbd5f0912637d786be5781f58848586b935a', '2kr7mSbhSBT9giNgtqZS', '', '18742342323', '0', '1', '2', NULL, 1239875326212898817, NULL, '2020-05-22 07:00:33', '', '', NULL, '', 'admin', '');
INSERT INTO `sys_user` VALUES (1265517553050132482, 'jsite', '测试', '2139869313f88fb60cfae006568a61e6299afbcffdea32d3357aa657eb90c995', 'MCeX0eApK7pNHbe0Y0i0', '', '14632442343', '0', '1', '2', NULL, 1239875326212898817, NULL, '2020-05-26 21:37:51', '', '', NULL, '', 'admin', '');
INSERT INTO `sys_user` VALUES (1268368631936487426, '0909', '测试', 'd6e06ace62d99ed9900535fe2ad96bf87b6cf53d5bbd8759d3eb83b7cda5947c', 'cIy8sF5FQ4dz4TQtjt81', '', '17872324234', '0', '0', '2', NULL, 1239875326212898817, 1271030309013549058, '2020-06-03 18:27:02', '', '', '2020-06-15 09:33:33', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1271255657122672641, '0998', '测试23', '7f4d7a2b92e67b03c62092d618b38b979bc96df68fa8b2e641392904f49b246c', 'hpp6vEOZlMFnOt9sNn1b', '', '18723123123', '0', '1', '2', NULL, 1271250518156554241, 1271250684183883778, '2020-06-12 09:39:02', '', '', '2020-06-15 09:36:42', 'admin', 'admin', '');
INSERT INTO `sys_user` VALUES (1271457863448940546, '23234', '213123', 'f0568f05481eca8a9c28e1ad329e5d4314d48b7adf651fc44c3e95d23aaa1088', 'iPT7j0lNyNdJ6daUbOVA', '', '18774992423', '0', '1', '2', NULL, 1241024147242586113, 1271320402131537921, '2020-06-12 23:02:32', NULL, '', NULL, '', 'admin', '');
INSERT INTO `sys_user` VALUES (1272348054892953602, '0982', '测试1', 'eef448458007d2b778922e3874595c3960cdcdfcb867501f6b08eb2bf129716a', 'WzRoOcLazBThi42fYB8B', '', '18721312312', '0', '0', '2', NULL, 1271250518156554241, 1271250684183883778, '2020-06-15 09:59:50', NULL, '', '2020-06-18 18:33:56', '00214', 'admin', '');
INSERT INTO `sys_user` VALUES (1272354435549216769, '0021', '测试2', '435963ee16327425f71fbcbe3abd0ba803becd02403dbf91ec854ed282348ee9', 'jq8ilrsz6KedqKEaxy8h', '', '17612321312', '0', '0', '2', NULL, 1270643743532093441, 1271320074380234754, '2020-06-15 10:25:11', NULL, '', '2020-06-18 18:34:05', '00214', 'admin', '');
INSERT INTO `sys_user` VALUES (1273420079006081025, '00228', '测试28 ', '1ec423bb134f2d319385d17794b55c7dbfa49ee7b73769245995fd877d4e264d', 'Fc0MgaXK3XloWGupaCUB', '', '17621312321', '0', '1', '2', NULL, 1241024147242586113, 1273415444107223041, '2020-06-18 08:59:40', NULL, '', NULL, '', 'admin', '');
INSERT INTO `sys_user` VALUES (1273456008861970434, '0224', '测试0224', 'ca293abca79eb37add6f90e19b40036e1c5e0ece80e90921922bf40e72bae929', 'Be9MdlNN8p3x3beNVsMq', '', '16721312312', '0', '0', '2', NULL, 1273453418250104834, 1273455559962390529, '2020-06-18 11:22:27', NULL, '', NULL, '', '00214', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_comp
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_comp`;
CREATE TABLE `sys_user_comp` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '公司ID',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `sys_user_comp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `sys_user_comp_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `sys_comp` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户关联公司表';

-- ----------------------------
-- Records of sys_user_comp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_dept`;
CREATE TABLE `sys_user_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '地区ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与公司地区对应关系';

-- ----------------------------
-- Records of sys_user_dept
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_code` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_post` VALUES (1272341440114835457, 1268368631936487426, 'SE');
INSERT INTO `sys_user_post` VALUES (1272342471460634626, 1255152992669270017, 'USER');
INSERT INTO `sys_user_post` VALUES (1272342512438984705, 1255152805615894529, 'USER');
INSERT INTO `sys_user_post` VALUES (1272342575353544705, 1253346480368009217, 'USER');
INSERT INTO `sys_user_post` VALUES (1272342605955186689, 1241026312006766594, 'USER');
INSERT INTO `sys_user_post` VALUES (1272342634459676674, 1241026155169157122, 'USER');
INSERT INTO `sys_user_post` VALUES (1272342661202558978, 1241025930912305153, 'SE');
INSERT INTO `sys_user_post` VALUES (1272342698531864577, 1241025732404285442, 'SE');
INSERT INTO `sys_user_post` VALUES (1272342782225006594, 1, 'CEO');
INSERT INTO `sys_user_post` VALUES (1273415802531471361, 1239914383204892673, 'SE');
INSERT INTO `sys_user_post` VALUES (1273415855748800514, 1255151411211141121, 'USER');
INSERT INTO `sys_user_post` VALUES (1273426947359236098, 1239915009632583681, 'SE');
INSERT INTO `sys_user_post` VALUES (1273456008941662209, 1273456008861970434, 'SE');
INSERT INTO `sys_user_post` VALUES (1273564594589171713, 1272348054892953602, 'USER');
INSERT INTO `sys_user_post` VALUES (1273564635571716098, 1272354435549216769, 'SE');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES (1268091494008565762, 1265517553050132482, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1268091637852221441, 1263847219968339970, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1272342471435468802, 1255152992669270017, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1272342512413818881, 1255152805615894529, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1272342661185781762, 1241025930912305153, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1272342698506698753, 1241025732404285442, 1255022318142590978);
INSERT INTO `sys_user_role` VALUES (1272342782204035074, 1, 1);
INSERT INTO `sys_user_role` VALUES (1272362648214552578, 1253346480368009217, 1255020745534443521);
INSERT INTO `sys_user_role` VALUES (1273415802481139714, 1239914383204892673, 1255020745534443521);
INSERT INTO `sys_user_role` VALUES (1273426947342458881, 1239915009632583681, 1);
INSERT INTO `sys_user_role` VALUES (1273456008903913474, 1273456008861970434, 1255020745534443521);
INSERT INTO `sys_user_role` VALUES (1273561821168566274, 1241026155169157122, 1272363117062242305);
INSERT INTO `sys_user_role` VALUES (1273561856899842049, 1241026312006766594, 1272363117062242305);
INSERT INTO `sys_user_role` VALUES (1273561940781727745, 1255151411211141121, 1255020745534443521);
INSERT INTO `sys_user_role` VALUES (1273561988202528769, 1268368631936487426, 1);
INSERT INTO `sys_user_role` VALUES (1273564594509479937, 1272348054892953602, 1272363117062242305);
INSERT INTO `sys_user_role` VALUES (1273564635550744577, 1272354435549216769, 1255020745534443521);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
