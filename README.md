# FASTOS

#### 介绍
FastOS 是一个 Java EE 企业级快速开发平台，基于经典技术组合（Spring Boot、Spring MVC、Apache Shiro、MyBatis-Plus、freemarker、Bootstrap、AdminLTE）采用经典开发模式，让初学者能够更快的入门并投入到团队开发中去,尤其适合新手朋友练手。 在线代码生成功能，包括核心模块如：组织机构、角色用户、菜单及按钮授权、数据权限、系统参数等。采用松耦合设计；界面无刷新，一键换肤；众多账号安全设置，密码策略；在线定时任务配置；支持多数据源；支持读写分离、分库分表.

#### 软件架构
 **软件架构说明** 

1.  _核心框架：Spring Boot 2.2.5.RELEASE_ 
2.   _安全框架：Apache Shiro_ 
3.   _模板引擎：Freemarker _ 
4.   _前端：AdminLTE 2.3.8, Bootstrap 3.3.7, Bootstrap-Table 1.11.0, JQuery 3.3.1_ 
5.   _持久层框架：MyBatis-Plus 3.3.1_ 
6.   _定时任务: Quartz _ 
7.   _数据库连接池：Druid 1.10.1 _ 
9.   数据库: Mysql5.7
10.  分布式缓存数据库: Redis 4.0.9
11.   _工具类：Hutool 4.5.8_ 

#### 内置功能

1.  用户管理：用户是系统操作者，该功能主要完成系统用户配置。
2.  部门管理：配置系统组织机构（公司、部门、小组），树结构展现支持数据权限。
3.  岗位管理：配置系统用户所属担任职务。
4.  菜单管理：配置系统菜单，操作权限，按钮权限标识等。
5.  角色管理：角色菜单权限分配、设置角色按机构进行数据范围权限划分。
6.  字典管理：对系统中经常使用的一些较为固定的数据进行维护。
7.  参数管理：对系统动态配置常用参数。
8.  操作日志：系统正常操作日志记录和查询；系统异常信息日志记录和查询。
9.  登录日志：系统登录日志记录查询包含登录异常。
10. 在线用户：当前系统中活跃用户状态监控。
11. 定时任务：在线（添加、修改、删除)任务调度包含执行结果日志。
12. 代码生成：前后端代码的生成（java、html、xml、sql）支持CRUD下载 。
13. 服务监控：监视当前系统CPU、内存、磁盘、堆栈等相关信息。
14. 在线构建器：拖动表单元素生成相应的HTML代码。
15. 连接池监视：监视当前系统数据库连接池状态，可进行分析SQL找出系统性能瓶颈。

**_16. 这周会更新 产品许可信息 对项目运行增加控制，防止项目拷贝运行 对这一块感兴趣的同学可以关注更新...._** 

#### 安装教程

1.  需要准备环境 Mysql5.7以上、 JDK 1.8、 Maven 3.3 、Redis4.X 以上 、开发工具 eclipse 或者 IEDA
2.  下载源码 git clone https://gitee.com/zhouhuanOGP/J2EEFAST.git
3.  编译代码
    找到根目录下 pom.xml，执行 mvn clean install 命令编译一键打包。
    一般来说不会有什么问题，如果还是编译不成功，可以按照优先级逐个编译试一试。
4.  导入数据库
    db目录里initDb.sql 有建库建表语句按步骤执行即可
5.  将代码导入开发工具fast-admin启动模块- 执行 FastApplication 类即可
注意:
    fast-admin模块 资源目录 application-Test.yml 中修改连接数据库 链接地址 如果你是按照initDb.sql 建库 则账号密码用户名都不需要修改

#### 参与贡献

1.  本项目设计思路借鉴了当前gitee中 开源项目中后台管理框架众多优秀项目的设计思路

#### 演示地址

1.  演示地址： http://123.56.123.130:8080/admin/login<br>账号 ：admin 密码：admin
2.  功能还在陆续更新中......

#### 演示图
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170120_65f3b718_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170633_0140a448_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170152_68ab5a8e_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170228_a0198e2a_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170254_b0b1994c_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170330_fd6f7796_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170417_b8324b3c_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170534_5b572da8_1816537.png "屏幕截图.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0313/170552_1f9bc7c4_1816537.png "屏幕截图.png")

