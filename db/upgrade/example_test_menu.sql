-- 新增单表范例

DROP TABLE IF EXISTS `example_test`;

CREATE TABLE `example_test` (
  `id` BIGINT(20) NOT NULL,
  `pin` VARCHAR(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '员工编号',
  `name` VARCHAR(64) COLLATE utf8mb4_bin NOT NULL,
  `email` VARCHAR(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '电话',
  `sex` CHAR(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '性别',
  `age` INT(11) DEFAULT NULL,
  `birthday` DATE DEFAULT NULL COMMENT '出生日期',
  `education` VARCHAR(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `position` CHAR(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '职位',
  `hobby` VARCHAR(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '爱好',
  `join_date` DATE DEFAULT NULL COMMENT '入职日期',
  `leave_date` DATETIME DEFAULT NULL COMMENT '离职日期',
  `noational_id` VARCHAR(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身份证号',
  `create_by` VARCHAR(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '创建者',
  `del_flag` CHAR(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  `remark` VARCHAR(255) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注信息',
  `update_time` DATETIME DEFAULT NULL COMMENT '更新时间',
  `update_by` VARCHAR(64) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '更新者',
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='单表范例';

-- 菜单 SQL
insert into sys_menu (menu_id, name, parent_id, order_num, url,type,  perms, icon,module_codes,target, create_by, create_time, update_by, update_time, remark)
values(1263017708139143169,'单表范例', '174', '0', 'gen/test', '1', 'gen:test:view', 'fa fa-cube','core','_tab', 'admin', '2020-05-20 16:04', 'admin', '2020-05-20 16:04', '单表范例菜单');

-- 按钮 SQL
insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263017708139143170,'查询', 1263017708139143169, '0',  '#',  '2',  'gen:test:list','admin', '2020-05-20 16:04', 'admin', '2020-05-20 16:04', 'core','');

insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263017708139143171,'新增', 1263017708139143169, '1',  '#',  '2','gen:test:add',  'admin', '2020-05-20 16:04', 'admin', '2018-03-01', 'core','');

insert into sys_menu   (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263017708139143172,'修改', 1263017708139143169, '2',  '#',  '2', 'gen:test:edit', 'admin', '2020-05-20 16:04', 'admin', '2018-03-01', 'core','');

insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263017708139143173,'删除', 1263017708139143169, '3',  '#',  '2', 'gen:test:del', 'admin', '2020-05-20 16:04', 'admin', '2018-03-01', 'core','');