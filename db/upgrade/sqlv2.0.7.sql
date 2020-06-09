-- 版本v2.0.7 数据库升级脚本
-- /*注意: 此脚本只适合您系统之前是2.0.7之前的数据库版本,若您从来没有使用过此系统，此文件忽略.您直接运行建库建表即可.*/
ALTER TABLE gen_table CHANGE table_id id BIGINT(20) COMMENT '主键';
ALTER TABLE gen_table CHANGE db_type db_name VARCHAR(50) DEFAULT 'MASTER' COMMENT '数据库类型(MASTER 主数据库 其他从数据库)';
ALTER TABLE gen_table_column CHANGE column_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_comp CHANGE comp_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_comp CHANGE comp_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_dept CHANGE dept_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_dict_data CHANGE dict_code id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_dict_type CHANGE dict_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_job CHANGE job_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_job_log CHANGE log_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_menu CHANGE menu_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_oper_log CHANGE oper_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_post CHANGE post_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_role CHANGE role_id id BIGINT(20) COMMENT '主键';
ALTER TABLE sys_user CHANGE user_id id BIGINT(20) COMMENT '主键';

-- 任务表修改,解决不能关闭问题，新增失败策略
alter table sys_job drop column bean_name;
alter table sys_job drop column method_name;
alter table sys_job drop column params;
alter table `sys_job` add `invoke_target` varchar(1000) DEFAULT '' COMMENT '调用目标字符串';
alter table `sys_job` add `misfire_policy` char(1) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）';
alter table `sys_job` add `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）';

alter table sys_job_log drop column bean_name;
alter table sys_job_log drop column method_name;
alter table sys_job_log drop column params;
alter table `sys_job_log` add `invoke_target` varchar(1000) DEFAULT '' COMMENT '调用目标字符串';

-- 修改定时任务基础数据
truncate table sys_job;
TRUNCATE TABLE qrtz_cron_triggers;
TRUNCATE TABLE qrtz_locks;
TRUNCATE TABLE qrtz_scheduler_state;
DELETE FROM qrtz_triggers;
DELETE FROM qrtz_job_details;

insert  into `sys_job`(`id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`del_flag`,`misfire_policy`,`concurrent`,`status`,`remark`,`create_time`,`create_by`,`update_by`,`update_time`) values
(1239107312446103553,'测试任务','DEFAULT','jobTaskTest.fastParams(\'123\')','0 0/10 * * * ? *','0','3','1','1','fastParams有参数','2020-03-15 16:32:59','admin','admin','2020-05-29 22:08:05'),
(1243581612249190401,'公告通知时效性','DEFAULT','jobNoticeTask.fastNotice','0 0/5 * * * ? *','0','3','1','1','公告通知时效性排查','2020-03-28 00:52:16','admin','admin','2020-03-28 15:30:18');

alter table `gen_table` add `tree_code` VARCHAR(50) DEFAULT NULL COMMENT '树表id column名称';
alter table `gen_table` add `tree_parent_code` VARCHAR(50) DEFAULT NULL COMMENT '树表父id column名称';
alter table `gen_table` add `tree_name` VARCHAR(100) DEFAULT NULL COMMENT '树表name column名称';
alter table `sys_comp` add `type` CHAR(1) DEFAULT '0' COMMENT '类型标志 0 公司 1部门';



