/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoquwuye
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoquwuye` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoquwuye`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `diantijiancha` */

DROP TABLE IF EXISTS `diantijiancha`;

CREATE TABLE `diantijiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '监测人',
  `diantijiancha_types` int(11) DEFAULT NULL COMMENT '是否正常 Search111 ',
  `diantijiancha_content` text COMMENT '监测备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '监测时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='电梯监测';

/*Data for the table `diantijiancha` */

insert  into `diantijiancha`(`id`,`yonghu_id`,`diantijiancha_types`,`diantijiancha_content`,`insert_time`,`create_time`) values (1,2,2,'检测备注1\r\n','2021-05-17 19:53:45','2021-05-17 19:53:45'),(2,3,2,'','2021-05-17 20:04:14','2021-05-17 20:04:14'),(3,2,2,'无\r\n','2021-05-17 20:13:50','2021-05-17 20:13:50');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-17 15:47:53'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-17 15:47:53'),(3,'yonghu_role_types','用户权限',1,'业主',NULL,'2021-05-17 15:47:53'),(4,'yonghu_role_types','用户权限',2,'租户',NULL,'2021-05-17 15:47:53'),(5,'yonghu_role_types','用户权限',3,'保安',NULL,'2021-05-17 15:47:53'),(6,'yonghu_role_types','用户权限',4,'员工',NULL,'2021-05-17 15:47:53'),(7,'xunluo_types','巡逻区域是否正常',1,'不正常',NULL,'2021-05-17 15:47:53'),(8,'xunluo_types','巡逻区域是否正常',2,'正常',NULL,'2021-05-17 15:47:53'),(9,'diantijiancha_types','电梯监测是否正常',1,'不正常',NULL,'2021-05-17 15:47:53'),(10,'diantijiancha_types','电梯监测是否正常',2,'正常',NULL,'2021-05-17 15:47:53'),(11,'xiaofangjiancha_types','消防检查是否正常',1,'不正常',NULL,'2021-05-17 15:47:53'),(12,'xiaofangjiancha_types','消防检查是否正常',2,'正常',NULL,'2021-05-17 15:47:53'),(13,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-17 15:47:53'),(14,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-17 15:47:53'),(15,'gonggao_types','公告类型名称',3,'公告类型3',NULL,'2021-05-17 20:05:16');

/*Table structure for table `fangwu` */

DROP TABLE IF EXISTS `fangwu`;

CREATE TABLE `fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房屋';

/*Data for the table `fangwu` */

insert  into `fangwu`(`id`,`building`,`unit`,`room`,`create_time`) values (1,'1','1','101','2021-05-17 17:42:09'),(2,'1','1','102','2021-05-17 17:43:29'),(3,'1','1','103','2021-05-17 20:00:25');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-05-17 19:56:43','公告1的详情\r\n','2021-05-17 19:56:43'),(4,'公告2',2,'2021-05-17 20:04:55','公告2的详情\r\n','2021-05-17 20:04:55');

/*Table structure for table `lvhuafuze` */

DROP TABLE IF EXISTS `lvhuafuze`;

CREATE TABLE `lvhuafuze` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '负责人',
  `lvhuafuze_name` varchar(200) DEFAULT NULL COMMENT '负责区域 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='绿化负责';

/*Data for the table `lvhuafuze` */

insert  into `lvhuafuze`(`id`,`yonghu_id`,`lvhuafuze_name`,`insert_time`,`create_time`) values (1,1,'区域1','2021-05-17 19:49:08','2021-05-17 19:49:08'),(2,6,'区域2','2021-05-17 20:01:12','2021-05-17 20:01:12');

/*Table structure for table `lvhuagenghuan` */

DROP TABLE IF EXISTS `lvhuagenghuan`;

CREATE TABLE `lvhuagenghuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '负责人',
  `lvhuagenghuan_name` varchar(200) DEFAULT NULL COMMENT '绿化区域 Search111 ',
  `lvhuagenghuan_jijie` varchar(200) DEFAULT NULL COMMENT '季节 Search111 ',
  `lvhuagenghuan_zhibei` varchar(200) DEFAULT NULL COMMENT '植被 Search111 ',
  `lvhuagenghuan_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='绿化更换';

/*Data for the table `lvhuagenghuan` */

insert  into `lvhuagenghuan`(`id`,`yonghu_id`,`lvhuagenghuan_name`,`lvhuagenghuan_jijie`,`lvhuagenghuan_zhibei`,`lvhuagenghuan_content`,`insert_time`,`create_time`) values (1,1,'区域1','春','牡丹花','','2021-05-17 19:50:17','2021-05-17 19:50:17'),(2,6,'区域3','夏季','玫瑰花','','2021-05-17 20:01:38','2021-05-17 20:01:38');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','mwm1bleunb1fv6xhw6idlh8yr8iovqtp','2021-05-17 17:17:36','2021-05-17 21:16:11'),(2,1,'a1','yonghu','员工','2thvmcv07wcpxyktv4tz2y0uatwfkygd','2021-05-17 20:07:32','2021-05-17 21:07:32'),(3,2,'a11','yonghu','保安','sdye8lxv7unn5zwple84jmyryey2ddft','2021-05-17 20:11:21','2021-05-17 21:12:20'),(4,4,'a111','yonghu','租户','vyt5vqm1bxrrbdu3yj3aqta3fhqln4ol','2021-05-17 20:14:46','2021-05-17 21:15:29'),(5,5,'a1111','yonghu','业主','zpvm2msulxl1sjfiz1d6mt08vdeg2qk3','2021-05-17 20:15:53','2021-05-17 21:16:34');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiaofangjiancha` */

DROP TABLE IF EXISTS `xiaofangjiancha`;

CREATE TABLE `xiaofangjiancha` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '检查人',
  `xiaofangjiancha_types` int(11) DEFAULT NULL COMMENT '是否正常 Search111 ',
  `xiaofangjiancha_content` text COMMENT '检查备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '检查时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='消防检查';

/*Data for the table `xiaofangjiancha` */

insert  into `xiaofangjiancha`(`id`,`yonghu_id`,`xiaofangjiancha_types`,`xiaofangjiancha_content`,`insert_time`,`create_time`) values (1,1,2,'无\r\n','2021-05-17 19:56:32','2021-05-17 19:56:32'),(2,6,2,'','2021-05-17 20:04:44','2021-05-17 20:04:44'),(3,1,2,'正常\r\n','2021-05-17 20:10:16','2021-05-17 20:10:16');

/*Table structure for table `xunluo` */

DROP TABLE IF EXISTS `xunluo`;

CREATE TABLE `xunluo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '保安',
  `xunluo_name` varchar(200) DEFAULT NULL COMMENT '巡逻区域 Search111 ',
  `xunluo_time` varchar(200) DEFAULT NULL COMMENT '巡逻时间 Search111 ',
  `xunluo_types` int(11) DEFAULT NULL COMMENT '是否正常 Search111 ',
  `xunluo_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='巡逻';

/*Data for the table `xunluo` */

insert  into `xunluo`(`id`,`yonghu_id`,`xunluo_name`,`xunluo_time`,`xunluo_types`,`xunluo_content`,`insert_time`,`create_time`) values (1,2,'区域1','2021-05-20 00:00:02',2,'','2021-05-17 19:52:56','2021-05-17 19:52:56'),(2,3,'区域9','2021-05-20 00:00:00',1,'有人翻墙\r\n','2021-05-17 20:03:56','2021-05-17 20:03:56'),(3,2,'区域3','2021-05-21 00:00:00',2,'','2021-05-17 20:13:35','2021-05-17 20:13:35');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_role_types` int(11) DEFAULT NULL COMMENT '权限',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_role_types`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xiaoquwuye/file/download?fileName=1621243705551.jpg',2,4,'2021-05-17 17:28:28'),(2,'a11','123456','张1199','17703786911','410224199610232011','http://localhost:8080/xiaoquwuye/file/download?fileName=1621243802891.jpg',1,3,'2021-05-17 17:30:06'),(3,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/xiaoquwuye/file/download?fileName=1621243827805.jpg',1,3,'2021-05-17 17:30:32'),(4,'a111','123456','张111','17703786111','410224199610232111','http://localhost:8080/xiaoquwuye/file/download?fileName=1621244052975.jpg',1,2,'2021-05-17 17:34:15'),(5,'a1111','123456','张1111','17703781111','410224199610231111','http://localhost:8080/xiaoquwuye/file/download?fileName=1621244082800.jpg',2,1,'2021-05-17 17:34:44'),(6,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/xiaoquwuye/file/download?fileName=1621252720750.jpg',2,4,'2021-05-17 19:58:42'),(7,'a222','123456','张222','17703786222','410224199610232222','http://localhost:8080/xiaoquwuye/file/download?fileName=1621252748881.jpg',2,2,'2021-05-17 19:59:12'),(8,'a3333','123456','张4444','17703784444','410224199610234444','http://localhost:8080/xiaoquwuye/file/download?fileName=1621252790610.jpg',2,1,'2021-05-17 20:00:09');

/*Table structure for table `yonghu_fangwu` */

DROP TABLE IF EXISTS `yonghu_fangwu`;

CREATE TABLE `yonghu_fangwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangwu_id` int(11) DEFAULT NULL COMMENT '房屋',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '登记时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='房屋登记';

/*Data for the table `yonghu_fangwu` */

insert  into `yonghu_fangwu`(`id`,`yonghu_id`,`fangwu_id`,`insert_time`,`create_time`) values (1,4,1,'2021-05-17 19:47:17','2021-05-17 19:47:17'),(2,8,3,'2021-05-17 20:00:54','2021-05-17 20:00:54'),(3,5,3,'2021-05-17 20:16:23','2021-05-17 20:16:23');

/*Table structure for table `zhiri` */

DROP TABLE IF EXISTS `zhiri`;

CREATE TABLE `zhiri` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '保安',
  `zhiri_time` varchar(200) DEFAULT NULL COMMENT '值日日期 Search111 ',
  `zhiri_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='值日';

/*Data for the table `zhiri` */

insert  into `zhiri`(`id`,`yonghu_id`,`zhiri_time`,`zhiri_content`,`insert_time`,`create_time`) values (1,3,'2021-05-18 00:00:00','','2021-05-17 19:51:34','2021-05-17 19:51:34'),(2,2,'2021-05-15 00:00:00','无\r\n','2021-05-17 20:01:54','2021-05-17 20:01:54'),(3,2,'2021-05-22 00:00:00','','2021-05-17 20:03:16','2021-05-17 20:03:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
