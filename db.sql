/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liulangdongwujiuzhu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liulangdongwujiuzhu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liulangdongwujiuzhu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/liulangdongwujiuzhu/upload/1640244495498.jpg'),(2,'picture2','http://localhost:8080/liulangdongwujiuzhu/upload/1640244503023.jpg'),(3,'picture3','http://localhost:8080/liulangdongwujiuzhu/upload/1640244509932.jpg'),(6,'homepage',NULL);

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (65,'sex_types','性别类型',1,'男',NULL,NULL,'2021-12-23 09:48:32'),(66,'sex_types','性别类型',2,'女',NULL,NULL,'2021-12-23 09:48:32'),(67,'xinxifabu_types','类型',1,'主人寻宠',NULL,NULL,'2021-12-23 09:48:32'),(68,'xinxifabu_types','类型',2,'宠物寻主',NULL,NULL,'2021-12-23 09:48:32'),(69,'xinxifabu_types','类型',3,'宠物送养',NULL,NULL,'2021-12-23 09:48:32'),(70,'xinxifabu_types','类型',4,'宠物求助',NULL,NULL,'2021-12-23 09:48:32'),(71,'chongwu_types','宠物类型名称',1,'猫',NULL,NULL,'2021-12-23 09:48:32'),(72,'chongwu_types','宠物类型名称',2,'狗',NULL,NULL,'2021-12-23 09:48:32'),(73,'chongwu_types','宠物类型名称',3,'其他',NULL,NULL,'2021-12-23 09:48:32'),(74,'xinxi_types','信息状态',1,'未完成',NULL,NULL,'2021-12-23 09:48:32'),(75,'xinxi_types','信息状态',2,'已完成',NULL,NULL,'2021-12-23 09:48:32'),(76,'news_types','日报类型名称',1,'日报类型1',NULL,NULL,'2021-12-23 09:48:32'),(77,'news_types','日报类型名称',2,'日报类型2',NULL,NULL,'2021-12-23 09:48:32'),(78,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2021-12-23 09:48:32'),(79,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2021-12-23 09:48:32');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='动物小圈';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (47,'帖子标题1',1,'发布内容1',NULL,1,'2021-12-23 10:44:26','2021-12-24 10:40:23','2021-12-23 09:36:31'),(48,NULL,1,'22',47,2,'2021-12-24 09:13:31',NULL,'2021-12-24 09:13:31'),(49,'小猫吃什么好',1,'幼猫出生后要让它及时吃到初乳，而且越早越好。因为初乳营养丰富，且含有大量抗体，可增强小猫的免疫力，抵抗疾病。如果是没办法吃到初乳的幼猫也别担心，等到猫咪3周大的时候给它饲喂含有免疫球蛋白成分的幼猫粮即可。繁育了这么多只猫咪我一直选的是冠能初乳宠粮。含有的牛初乳里含有免疫球蛋白，可',NULL,1,'2021-12-24 11:13:40','2021-12-24 14:03:38','2021-12-23 09:36:31'),(50,NULL,1,'11',49,2,'2021-12-24 14:05:18',NULL,'2021-12-24 14:05:18'),(51,NULL,2,'22',49,2,'2021-12-24 14:50:40',NULL,'2021-12-24 14:50:40'),(52,'在哪里领养宠物？？',2,'楼主想养一只金毛，本来想从淘宝上买，但是感觉淘宝上购买过程很离谱，而且有点诈骗的味道，看贴吧也发现在领养要有什么针要打，要有检测不带冠状啊什么的。。麻烦各位大佬们教一下怎么辨别犬舍好不好，宠物健不健康，要有什么在买之前注意的点',NULL,1,'2021-12-24 16:29:16',NULL,'2021-12-24 16:29:16'),(53,NULL,2,'111111',52,2,'2021-12-24 16:30:25',NULL,'2021-12-24 16:30:25'),(54,NULL,1,'33333333333312312313123sadzxcsdas',52,2,'2021-12-24 16:59:14',NULL,'2021-12-24 16:59:14'),(55,NULL,3,'333333',52,2,'2021-12-26 10:23:53',NULL,'2021-12-26 10:23:53'),(56,'123',3,'123',NULL,1,'2021-12-26 10:25:14',NULL,'2021-12-26 10:25:14'),(57,NULL,3,'333333',56,2,'2021-12-26 10:25:21',NULL,'2021-12-26 10:25:21');

/*Table structure for table `lingyang` */

DROP TABLE IF EXISTS `lingyang`;

CREATE TABLE `lingyang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinxifabu_id` int(11) DEFAULT NULL COMMENT '信息发布',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='领养记录';

/*Data for the table `lingyang` */

insert  into `lingyang`(`id`,`xinxifabu_id`,`yonghu_id`,`insert_time`,`create_time`) values (5,5,3,'2021-12-26 10:22:14','2021-12-26 10:22:14');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '求助日报名称  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '日报类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '求助日报图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '求助日报时间',
  `news_content` text COMMENT '求助日报详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='求助日报';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'求助日报1',1,'http://localhost:8080/liulangdongwujiuzhu/upload/1640244411368.jpg','2021-12-23 10:44:53','<p><span style=\"color: rgb(96, 98, 102);\">求助日报详情1</span></p>','2021-12-23 10:44:53');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','vrlr10w772yyuu4qx1u70j3hcw5kgp5z','2021-12-23 09:20:21','2021-12-26 11:16:04'),(2,1,'111','yonghu','用户','unu2z1jtrmuqv2wbcsbujd0fuen848h4','2021-12-23 14:37:51','2021-12-26 10:56:29'),(3,2,'222','yonghu','用户','e7tzu77m5l3b3y07m9i6x584rrhsr0bh','2021-12-24 14:50:28','2021-12-24 17:43:15'),(4,3,'123','yonghu','用户','uoov9lk6bxdogfsutvhntjemrn43xd08','2021-12-26 10:21:10','2021-12-26 11:21:10');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xinxifabu` */

DROP TABLE IF EXISTS `xinxifabu`;

CREATE TABLE `xinxifabu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinxifabu_name` varchar(255) DEFAULT NULL COMMENT '标题 Search111',
  `xinxifabu_types` int(4) DEFAULT NULL COMMENT '类型 Search111',
  `yonghu_id` int(4) DEFAULT NULL COMMENT '发布用户',
  `xinxifabu_photo` varchar(255) DEFAULT NULL COMMENT '图片',
  `xinxifabu_address` varchar(255) DEFAULT NULL COMMENT '地点',
  `chongwu_types` int(4) DEFAULT NULL COMMENT '宠物类型',
  `xinxifabu_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `xinxi_types` int(4) DEFAULT NULL COMMENT '信息状态',
  `xinxifabu_content` varchar(255) DEFAULT NULL COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='信息发布';

/*Data for the table `xinxifabu` */

insert  into `xinxifabu`(`id`,`xinxifabu_name`,`xinxifabu_types`,`yonghu_id`,`xinxifabu_photo`,`xinxifabu_address`,`chongwu_types`,`xinxifabu_time`,`xinxi_types`,`xinxifabu_content`,`create_time`) values (1,'流浪菜狗找主人',2,1,'http://localhost:8080/liulangdongwujiuzhu/upload/1640244386014.jpg','xx市xx小区xx栋',2,'2021-12-24 00:00:00',1,'<p><span style=\"color: rgb(96, 98, 102);\">详情11</span><img src=\"http://localhost:8080/liulangdongwujiuzhu/upload/1640244392057.jpg\"><img src=\"http://localhost:8080/liulangdongwujiuzhu/upload/1640244397618.webp\"></p>','2021-12-23 09:36:31'),(2,'猫送养',3,2,'http://localhost:8080/liulangdongwujiuzhu/upload/1640245381895.jpg','家',1,'2021-12-23 15:09:43',1,'<p><span style=\"color: rgb(96, 98, 102);\">详情1111111</span><img src=\"http://localhost:8080/liulangdongwujiuzhu/upload/1640245398058.jpg\"></p>','2021-12-23 11:08:08'),(3,'狗求助',4,1,'http://localhost:8080/liulangdongwujiuzhu/upload/1640245495202.jpg','xx地点',2,'2021-12-24 00:00:00',1,'1231231231231231详情','2021-12-23 09:36:31'),(4,'宠物在xx小区走丢',1,2,'http://localhost:8080/liulangdongwujiuzhu/upload/1640245591896.jpg','xx小区',3,'2021-12-24 00:00:00',1,'<p><span style=\"color: rgb(96, 98, 102);\">详情11</span><img src=\"http://localhost:8080/liulangdongwujiuzhu/upload/1640245622635.jpg\"></p>','2021-12-23 15:47:05'),(5,'小猫送人',3,1,'http://localhost:8080/liulangdongwujiuzhu/upload/1640250329248.jpg','xx街道xx小区',1,'2021-12-16 16:00:08',1,'123123123','2021-12-23 09:36:31'),(6,'xxxx',1,3,'http://localhost:8080/liulangdongwujiuzhu/upload/1640485371691.jpg','地点',2,'2003-11-01 23:51:00',1,'12231213231231312','2021-12-26 10:23:17');

/*Table structure for table `xinxifabu_liuyan` */

DROP TABLE IF EXISTS `xinxifabu_liuyan`;

CREATE TABLE `xinxifabu_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xinxifabu_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shouhou_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='评价';

/*Data for the table `xinxifabu_liuyan` */

insert  into `xinxifabu_liuyan`(`id`,`xinxifabu_id`,`yonghu_id`,`shouhou_commentback_text`,`insert_time`,`create_time`) values (10,2,1,'123','2021-12-24 10:14:02','2021-12-24 10:14:02'),(12,3,2,'33333','2021-12-24 15:36:05','2021-12-24 15:36:05');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'418211219911121111','17785599685','http://localhost:8080/liulangdongwujiuzhu/upload/1640244367879.webp','2021-12-23 09:36:31'),(2,'222','123456','用户2',1,'410881199911211111','17785596958','http://localhost:8080/liulangdongwujiuzhu/upload/1640241592164.jpg','2021-12-23 11:08:08'),(3,'123','123456','用户123',2,'410884199811214411','17785544964','http://localhost:8080/liulangdongwujiuzhu/upload/1640485440946.jpg','2021-12-26 10:20:56');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
