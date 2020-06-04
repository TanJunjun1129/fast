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