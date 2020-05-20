-- 菜单 SQL
insert into sys_menu (menu_id, name, parent_id, order_num, url,type,  perms, icon,module_codes,target, create_by, create_time, update_by, update_time, remark)
values(1263003536030502913,'', '0', '0', 'gen/test', '1', 'gen:test:view', '','core','', 'admin', '2020-05-20 15:08', 'admin', '2020-05-20 15:08', '单表范例菜单');

-- 按钮 SQL
insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263003536030502914,'查询', 1263003536030502913, '0',  '#',  '2',  'gen:test:list','admin', '2020-05-20 15:08', 'admin', '2020-05-20 15:08', 'core','');

insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263003536030502915,'新增', 1263003536030502913, '1',  '#',  '2','gen:test:add',  'admin', '2020-05-20 15:08', 'admin', '2018-03-01', 'core','');

insert into sys_menu   (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263003536030502916,'修改', 1263003536030502913, '2',  '#',  '2', 'gen:test:edit', 'admin', '2020-05-20 15:08', 'admin', '2018-03-01', 'core','');

insert into sys_menu  (menu_id, name, parent_id, order_num, url,type, perms, create_by, create_time, update_by, update_time,module_codes, remark)
values(1263003536030502917,'删除', 1263003536030502913, '3',  '#',  '2', 'gen:test:del', 'admin', '2020-05-20 15:08', 'admin', '2018-03-01', 'core','');