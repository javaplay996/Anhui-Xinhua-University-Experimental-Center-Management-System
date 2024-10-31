/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - sys-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sys-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sys-ssmj`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gz-ssmj/upload/1613996294045.jpg'),(2,'picture2','http://localhost:8080/gz-ssmj/upload/1613996299955.jpg'),(3,'picture3','http://localhost:8080/gz-ssmj/upload/1613996305267.jpg'),(4,'picture4','http://localhost:8080/gz-ssmj/upload/1613996316492.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-01-25 11:41:54'),(2,'sex_types','性别',1,'女',NULL,'2021-01-25 11:41:54'),(3,'lx_types','仪器类型',1,'仪器类型1',NULL,'2021-01-25 11:41:54'),(4,'lx_types','仪器类型',2,'仪器类型2',NULL,'2021-01-25 11:41:54'),(5,'lx_types','仪器类型',3,'仪器类型3',NULL,'2021-01-25 11:41:54');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search',
  `attend_time` time DEFAULT NULL COMMENT '上课时间',
  `finish_time` time DEFAULT NULL COMMENT '下课时间',
  `course` varchar(200) DEFAULT NULL COMMENT '课程时间',
  `ls_types` tinyint(4) DEFAULT NULL COMMENT '负责老师 Search',
  `zy_types` tinyint(4) DEFAULT NULL COMMENT '专业 Search',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '具体内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='课程表';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`name`,`attend_time`,`finish_time`,`course`,`ls_types`,`zy_types`,`notice_content`) values (15,'课程名称1','11:17:00','11:17:00','55分钟',1,1,'课程内容1\r\n'),(16,'课程名称2','09:00:00','11:50:00','170分钟',2,2,'课程内容2\r\n'),(18,'课程名称3','11:00:00','11:55:00','55分钟',2,3,'课程内容3\r\n');

/*Table structure for table `laoshixinxi` */

DROP TABLE IF EXISTS `laoshixinxi`;

CREATE TABLE `laoshixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `laoshixinxi` */

insert  into `laoshixinxi`(`id`,`name`,`account`,`password`,`img_photo`,`sex_types`,`role`) values (1,'老师1','111','111','http://localhost:8080/sys-ssmj/file/download?fileName=1614310933953.jpg',1,'老师'),(2,'老师2','222','222','http://localhost:8080/sys-ssmj/file/download?fileName=1614310929194.jpg',2,'老师');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-26 11:46:20','管理员、老师都可以回复','老师1','2021-02-26 11:46:21'),(6,'123123','小札','2021-02-26 11:46:35','221312123','老师1','2021-02-26 11:46:36'),(7,'3123112123','小札','2021-02-26 11:54:12','123321312312','admin','2021-02-26 11:54:13');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','70ogs2ezhklsm7vcnl5cblygc6633kfl','2021-02-22 17:46:59','2021-02-26 12:48:56'),(5,1,'院长1','users','院长','02p6uuzy2q9k34722kougwel8t1y9k63','2021-02-25 20:29:32','2021-02-25 22:01:53'),(6,1,'小札','users','学生','cflj987cnjso8kopj9s6hv147np5c3fj','2021-02-25 20:39:31','2021-02-26 12:53:58'),(7,1,'老师1','users','老师','teqzjtaatnu2j8ejorr6v60ayf7630gt','2021-02-25 21:03:25','2021-02-26 12:54:27'),(8,2,'老师2','users','老师','07znuf9oc97c4xsdsejduczbmxpegahd','2021-02-26 11:55:09','2021-02-26 12:55:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-02-25 17:35:20','日常公告标题','日常公告','公告信息','2021-02-25 17:35:20'),(2,'2021-02-25 17:35:20','紧急公告标题','紧急公告','公告信息','2021-02-25 17:35:20'),(3,'2021-02-25 17:35:20','其他公告标题','其他公告','公告信息','2021-02-25 17:35:20');

/*Table structure for table `xueshengxinxi` */

DROP TABLE IF EXISTS `xueshengxinxi`;

CREATE TABLE `xueshengxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `xueshengxinxi` */

insert  into `xueshengxinxi`(`id`,`name`,`account`,`password`,`img_photo`,`sex_types`,`role`) values (1,'小札','111','111','http://localhost:8080/sys-ssmj/file/download?fileName=1614310920229.jpg',1,'学生'),(2,'小站','222','222','http://localhost:8080/sys-ssmj/file/download?fileName=1614310912969.jpg',2,'学生');

/*Table structure for table `yiqi` */

DROP TABLE IF EXISTS `yiqi`;

CREATE TABLE `yiqi` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '仪器名称 Search',
  `lx_types` tinyint(4) DEFAULT NULL COMMENT '仪器类型 Search',
  `zy_types` tinyint(4) DEFAULT NULL COMMENT '归属专业 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='仪器';

/*Data for the table `yiqi` */

insert  into `yiqi`(`id`,`serial`,`lx_types`,`zy_types`) values (1,'仪器名称1',1,1),(2,'仪器名称2',2,2),(3,'仪器名称3',3,3);

/*Table structure for table `zhuanye` */

DROP TABLE IF EXISTS `zhuanye`;

CREATE TABLE `zhuanye` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `serial` varchar(200) DEFAULT NULL COMMENT '专业名称 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='专业';

/*Data for the table `zhuanye` */

insert  into `zhuanye`(`id`,`serial`) values (1,'专业1'),(2,'专业2'),(3,'专业3'),(4,'专业4333');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
