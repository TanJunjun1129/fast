/********************************************************************
 * 初始化数据库
 * @author zhouzhou
 * @date 2018-11-14 23:28
 ********************************************************************/
###############################创建Mysql数据库表#########################
/** 注意: Mysql版本必须在5.7 以上**/
/* 已ROOT 账户登陆你的Mysql 执行以下 创建fast库 */
create user 'fast'@'localhost' identified by 'fast@123$';
create user 'fast'@'%' identified by 'fast@123$';

create database fastdb DEFAULT CHARSET utf8mb4 COLLATE utf8mb4_bin;

grant all privileges on `fastdb`.* to 'fast'@'%' identified by 'fast@123$';
grant all privileges on `fastdb`.* to 'fast'@'localhost' identified by 'fast@123$';

/***************************导入SQL即可*********************************/

USE `fastdb`;

/***************************导入qrtz 相关表*****************************/
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

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

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

/*Data for the table `qrtz_cron_triggers` */

/*Table structure for table `qrtz_fired_triggers` */

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

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

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

/*Data for the table `qrtz_job_details` */

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_locks` */

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `qrtz_scheduler_state` */

/*Table structure for table `qrtz_simple_triggers` */

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

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

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

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

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


/**************************项目表************************************/
-- 定时任务表
DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Spring Bean名称',
  `method_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Cron表达式',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '任务状态  0：正常  1：暂停',
  `remark` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `job_group` varchar(64) COLLATE utf8mb4_bin DEFAULT 'DEFAULT' COMMENT '任务组名',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `job_name` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '任务名称',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='定时任务';

-- 定时任务日志
DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `log_id` bigint(20) NOT NULL COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Spring Bean名称',
  `method_name` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '参数',
  `status` char(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `job_name` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) COLLATE utf8mb4_bin DEFAULT 'DEFAULT' COMMENT '任务组名',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='定时任务日志';

-- 公司表
DROP TABLE IF EXISTS `sys_comp`;

CREATE TABLE `sys_comp` (
  `comp_id` bigint(20) NOT NULL COMMENT '公司主键id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级公司ID，一级公司为0',
  `name` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '公司名称',
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT '' COMMENT '描述',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司表';

insert  into `sys_comp`(`comp_id`,`parent_id`,`name`,`remark`,`order_num`,`status`,`create_time`,`create_by`,`update_by`,`update_time`) values (1236303091328028674,0,'总公司','根部公司',0,'0','2019-12-21 23:54:41','','',NULL)

-- 部门管理/地区管理
DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL COMMENT '主键id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '部门名称',
  `type` int(11) DEFAULT NULL COMMENT '类型  0: 地区 1:线路',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_time` datetime DEFAULT NULL,
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '',
  `update_time` datetime DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='部门管理/地区管理';


INSERT  INTO `sys_dept`(`dept_id`,`parent_id`,`name`,`type`,`order_num`,`status`,`create_time`,`create_by`,`update_by`,`update_time`,`remark`) VALUES 
(1,0,'中国',0,0,'0','2019-12-22 13:14:30',NULL,NULL,NULL,''),
(2,1,'上海市',0,1,'0','2019-12-22 13:14:32',NULL,NULL,NULL,''),
(3,1,'湖南省',0,2,'0','2019-12-22 13:14:34',NULL,NULL,NULL,'')

-- 公司对应地区关联表
DROP TABLE IF EXISTS `sys_comp_dept`;

CREATE TABLE `sys_comp_dept` (
  `id` BIGINT(20) NOT NULL COMMENT '主键id',
  `comp_id` BIGINT(20) DEFAULT NULL COMMENT '公司ID',
  `dept_id` BIGINT(20) DEFAULT NULL COMMENT '地区ID',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='公司对应地区关系';

-- 系统配置信息表
DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `param_name` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '参数名称',
  `param_key` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '参数Key',
  `param_value` varchar(10000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '参数值 Value',
  `config_type` char(1) COLLATE utf8mb4_bin DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT '备注',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新者',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `param_key` (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统配置信息表';


insert  into `sys_config`(`id`,`param_name`,`param_key`,`param_value`,`config_type`,`remark`,`create_by`,`create_time`,`update_time`,`update_by`) values 
(1,'云存储','CLOUD_STORAGE_CONFIG_KEY','{\"type\":1,\"qiniuDomain\":\"http://7xqbwh.dl1.z0.glb.clouddn.com\",\"qiniuPrefix\":\"upload\",\"qiniuAccessKey\":\"NrgMfABZxWLo5B-YYSjoE8-AZ1EISdi1Z3ubLOeZ\",\"qiniuSecretKey\":\"uIwJHevMRWU0VLxFvgy0tAcOdGqasdtVlJkdy6vV\",\"qiniuBucketName\":\"ios-app\",\"aliyunDomain\":\"\",\"aliyunPrefix\":\"\",\"aliyunEndPoint\":\"\",\"aliyunAccessKeyId\":\"\",\"aliyunAccessKeySecret\":\"\",\"aliyunBucketName\":\"\",\"qcloudDomain\":\"\",\"qcloudPrefix\":\"\",\"qcloudSecretId\":\"\",\"qcloudSecretKey\":\"\",\"qcloudBucketName\":\"\"}','Y','云存储配置信息','','2019-12-24 10:12:02',NULL,''),
(2,'项目标题','SYS_CONFIG_TITLE','数字智能云系统OS','Y','系统名称','','2019-12-24 10:12:03','2020-01-21 15:30:04','admin'),
(4,'项目版本','SYS_CONFIG_VERSION','2.0.2','Y','系统版本','','2019-12-24 10:12:07','2020-01-01 19:10:31','admin'),
(5,'系统参数','SYS_CONFIG_KEY','{\"login_maxCount\":5,\"login_NumCount\":3,\"lock_time\":5,\"company\":\"j2eefast.com\",\"copyrightYear\":\"2019\",\"ipc\":\"沪ICP备19011039号\"}','Y','系统参数配置、登陆错误次数锁定账户时间、所属公司','','2019-12-24 10:12:08',NULL,''),
(7,'JS版本','SYS_CONFIG_DV_VERSION','20191224','Y','JS\\CSS版本-日期表示','','2019-12-24 10:12:11','2019-12-05 20:09:35','admin'),
(8,'项目小标题','SYS_CONFIG_TITLE_MINI','LOS','Y','系统简称','','2019-12-24 10:12:13',NULL,''),
(11,'上传路径','SYS_CONFIG_PROFILE','D:\\lixinfile\\uploadPath','Y','项目静态文件','','2019-12-24 10:12:18',NULL,''),
(12,' 用户管理-账号初始密码','SYS_USER_INITPASSWORD','123456','Y','用户初始密码','','2019-12-24 10:12:20','2020-01-02 09:26:18','admin'),
(13,'项目页面压缩','SYS_COMPRESS','false','Y','项目输出前端页面是否压缩 true 压缩 false 不压缩 注意:开启页面压缩页面JS不能使用// 做注解 可以使用 /**/','admin','2019-12-27 10:51:49','2020-01-10 15:39:48','admin'),
(14,'登陆排挤','SYS_IS_LOGIN','1','Y','同一账户只能一个人登陆 0 支持 1不支持','admin','2020-01-10 18:50:31','2019-12-23 01:40:16','admin'),
(15,'屏保时间','SYS_LOCK_SCEREEN','{\"time\":30,\"flag\":true}','Y','是否开启true  false 自动屏保及时间(分钟)','admin','2020-01-18 19:29:17','2019-12-31 00:28:26','admin'),
(16,'主框架页-默认皮肤样式名称','SYS_INDEX_SKINNAME','skin-blue-light','Y','skin-black-light、skin-black、skin-blue-light、skin-blue、skin-green-light、skin-green、skin-purple-light、skin-purple、skin-red-light、skin-red、skin-yellow-light、skin-yellow','admin','2020-02-03 11:31:11','2020-01-10 12:06:06','admin'),
(17,'项目文件库','SYS_CONFIG_FILE','D:\\lixinfile\\file','Y','系统默认文件库','admin','2020-02-13 14:56:22','2020-01-16 22:25:02','admin');

-- 字典数据表
DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT '样式属性（其他样式扩展）css类名（如：red）',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `is_sys` char(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '是否系统内置(Y 是 N否)',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `css_style` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT 'css样式（如：color:red)',
  `list_class` varchar(500) COLLATE utf8mb4_bin DEFAULT '' COMMENT '表格回显样式',
  `is_default` char(1) COLLATE utf8mb4_bin DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='字典数据表';


-- 字典类型表
DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字典类型',
  `is_sys` char(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '是否系统内置(Y 是 N否)',
  `del_flag` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志 0：正常 1：删除',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='字典类型表';

-- 系统查询中间表
DROP TABLE IF EXISTS `sys_index`;

CREATE TABLE `sys_index` (
  `help_topic_id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT '连续ID',
  `temp` VARCHAR(5) COLLATE utf8mb4_bin DEFAULT '',
  PRIMARY KEY (`help_topic_id`)
) ENGINE=INNODB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统数据库获取连续id';

-- 系统日志
DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '请求参数',
  `time` bigint(20) NOT NULL COMMENT '执行时长(毫秒)',
  `ip` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统日志';

-- 系统访问记录
DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '系统类型',
  `mobile` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '移动平台(0) 电脑设备(1)',
  `status` varchar(10) COLLATE utf8mb4_bin DEFAULT '50005' COMMENT '登录状态（00000成功 其他失败）',
  `msg` varchar(255) COLLATE utf8mb4_bin DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  `comp_id` bigint(20) DEFAULT '-1' COMMENT '公司ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统访问记录';

--系统菜单

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL COMMENT '主键',
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
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='菜单管理';

--系统模块表

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


-- 操作日志记录
DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL COMMENT '主键',
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
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='操作日志记录';

--岗位信息表
DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL COMMENT '主键',
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
  PRIMARY KEY (`post_id`,`post_code`),
  UNIQUE KEY `post_code` (`post_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='岗位信息表';

-- 角色
DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL COMMENT '主键',
  `role_name` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '角色名称',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID[暂停使用]',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `role_key` varchar(100) COLLATE utf8mb4_bin DEFAULT '' COMMENT '角色权限字符串',
  `role_sort` int(4) DEFAULT NULL COMMENT '显示顺序',
  `del_flag` char(1)  COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标志（0代表存在 1代表删除）',
  `create_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '创建者',
  `update_by` varchar(64) COLLATE utf8mb4_bin DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '角色状态（0正常 1停用）',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色';

--角色与部门对应关系
DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色与部门对应关系';

-- 角色与菜单对应关系
DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT  CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色与菜单对应关系';

-- 角色对应模块关系
DROP TABLE IF EXISTS `sys_role_module`;

CREATE TABLE `sys_role_module` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `role_id` bigint(20) DEFAULT NULL COMMENT '权限ID',
  `module_code` varchar(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '模块编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='角色对应模块表';

-- 用户表
DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL COMMENT '主键',
  `username` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `salt` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '盐',
  `email` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `status` char(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '状态  1：禁用   0：正常',
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
  PRIMARY KEY (`user_id`,`username`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='系统用户';


-- 用户关联公司表
DROP TABLE IF EXISTS `sys_user_comp`;
CREATE TABLE `sys_user_comp` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `comp_id` bigint(20) DEFAULT NULL COMMENT '公司ID',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `comp_id` (`comp_id`),
  CONSTRAINT `sys_user_comp_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sys_user` (`user_id`),
  CONSTRAINT `sys_user_comp_ibfk_2` FOREIGN KEY (`comp_id`) REFERENCES `sys_comp` (`comp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户关联公司表';


-- 用户与公司地区对应关系
DROP TABLE IF EXISTS `sys_user_dept`;

CREATE TABLE `sys_user_dept` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '地区ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与公司地区对应关系';

-- 用户与岗位关联表
DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_code` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与岗位关联表';

-- 用户与角色对应关系
DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='用户与角色对应关系';

-- 代码生成器表
DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` BIGINT(20) NOT NULL COMMENT '编号',
  `table_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表名称',
  `table_comment` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '表描述',
  `class_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '实体类名称',
  `tpl_category` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成包路径',
  `module_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成模块名',
  `business_name` VARCHAR(30) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成业务名',
  `function_name` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能名',
  `function_author` VARCHAR(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '生成功能作者',
  `actions_type` CHAR(50) COLLATE utf8mb4_bin DEFAULT 'default' COMMENT '操作按钮风格(default,icon)',
  `is_cover` CHAR(1) COLLATE utf8mb4_bin DEFAULT 'N' COMMENT '生成代码是否覆盖替换',
  `is_del` CHAR(1) COLLATE utf8mb4_bin DEFAULT 'Y' COMMENT '只有一个页面 是否需要删除功能',
  `run_path` VARCHAR(200) COLLATE utf8mb4_bin DEFAULT '/' COMMENT '生成路径(不填默认项目路径)',
  `options` VARCHAR(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '其它生成选项',
  `parent_id` BIGINT(20) DEFAULT '0' COMMENT '上级菜单ID',
  `parent_name` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '父菜单名称',
  `menu_name` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单名称',
  `module_codes` VARCHAR(100) COLLATE utf8mb4_bin DEFAULT 'core' COMMENT '归属模块（多个用逗号隔开）',
  `menu_order` INT(11) DEFAULT '0' COMMENT '菜单排序',
  `menu_icon` VARCHAR(50) COLLATE utf8mb4_bin DEFAULT '' COMMENT '菜单图标',
  `menu_target` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT '' COMMENT '目标(打开方式)',
  `db_type` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '数据库类型(0 主数据库 1从数据库)',
  `create_by` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_by` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  `remark` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='代码生成业务表';

-- 代码生成字段对应表
DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` BIGINT(20) NOT NULL COMMENT '编号',
  `table_id` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '归属表编号',
  `column_name` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列名称',
  `column_comment` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列描述',
  `column_type` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '列类型',
  `java_type` VARCHAR(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'JAVA字段名',
  `is_plus` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '是否未MapperPlus（1是）',
  `is_pk` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `edit_info` VARCHAR(2000) COLLATE utf8mb4_bin DEFAULT '' COMMENT '字段说明',
  `dict_type` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '字典类型',
  `circle_type` CHAR(1) COLLATE utf8mb4_bin DEFAULT 'T' COMMENT '字段说明样式T 普通形 Q 黄色问号弹出型 R红色明显提示',
  `is_table_sort` CHAR(1) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '0' COMMENT '字段是否为表sortable 1是',
  `sort` INT(11) DEFAULT NULL COMMENT '排序',
  `create_by` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '创建者',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `update_by` VARCHAR(64) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT '' COMMENT '更新者',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='代码生成业务表字段';

/****************************************************************************************/