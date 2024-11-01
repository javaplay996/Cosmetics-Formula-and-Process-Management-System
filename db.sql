/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - huazhuangpingongyi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`huazhuangpingongyi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `huazhuangpingongyi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-24 19:41:52'),(2,'sex_types','性别',2,'女',NULL,'2021-03-24 19:41:52'),(3,'pinpai_types','品牌名称',1,'品牌1',NULL,'2021-03-24 19:41:52'),(4,'pinpai_types','品牌名称',2,'品牌2',NULL,'2021-03-24 19:41:52'),(5,'pinpai_types','品牌名称',3,'品牌3',NULL,'2021-03-24 19:41:52'),(6,'leixing_types','类型名称',1,'类型1',NULL,'2021-03-24 19:41:52'),(7,'leixing_types','类型名称',2,'类型2',NULL,'2021-03-24 19:41:52'),(8,'leixing_types','类型名称',3,'类型3',NULL,'2021-03-24 19:41:52'),(9,'gongyi_types','工艺名称',1,'工艺1',NULL,'2021-03-24 19:41:52'),(10,'gongyi_types','工艺名称',2,'工艺2',NULL,'2021-03-24 19:41:52'),(11,'gongyi_types','工艺名称',3,'工艺3',NULL,'2021-03-24 19:41:52');

/*Table structure for table `dingdan` */

DROP TABLE IF EXISTS `dingdan`;

CREATE TABLE `dingdan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ordernumber` varchar(255) DEFAULT NULL COMMENT '订单号',
  `huazhuangpin_id` int(11) DEFAULT NULL COMMENT '购买化妆品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '购买人',
  `number` int(11) DEFAULT NULL COMMENT '购买数量',
  `expense` decimal(10,2) DEFAULT NULL COMMENT '单价',
  `maxexpense` decimal(10,2) DEFAULT NULL COMMENT '总价',
  `goumai_time` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `dingdan` */

insert  into `dingdan`(`id`,`ordernumber`,`huazhuangpin_id`,`yonghu_id`,`number`,`expense`,`maxexpense`,`goumai_time`,`create_time`) values (1,'1616638259280',1,1,1,'1000.00','1000.00','2021-03-25 10:10:59','2021-03-25 10:10:59'),(2,'1616638259280',2,1,1,'2000.00','2000.00','2021-03-25 10:10:59','2021-03-25 10:10:59'),(3,'1616638259280',3,1,1,'3000.00','3000.00','2021-03-25 10:10:59','2021-03-25 10:10:59'),(4,'1616638259280',4,1,1,'1000.00','1000.00','2021-03-25 10:10:59','2021-03-25 10:10:59'),(5,'1616643067306',5,1,12,'5000.00','60000.00','2021-03-25 11:31:07','2021-03-25 11:31:07'),(6,'1616643107841',1,2,42,'1000.00','42000.00','2021-03-25 11:31:48','2021-03-25 11:31:48'),(7,'1616643107841',2,2,13,'2000.00','26000.00','2021-03-25 11:31:48','2021-03-25 11:31:48'),(8,'1616643107841',3,2,12,'3000.00','36000.00','2021-03-25 11:31:48','2021-03-25 11:31:48'),(9,'1616643107841',4,2,321,'1000.00','321000.00','2021-03-25 11:31:48','2021-03-25 11:31:48'),(10,'1616643107841',5,2,123,'5000.00','615000.00','2021-03-25 11:31:48','2021-03-25 11:31:48');

/*Table structure for table `huazhuangpin` */

DROP TABLE IF EXISTS `huazhuangpin`;

CREATE TABLE `huazhuangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kzpname` varchar(200) DEFAULT NULL COMMENT '化妆品名称 Search111 ',
  `pinpai_types` int(11) DEFAULT NULL COMMENT '品牌  Search111 ',
  `leixing_types` int(11) DEFAULT NULL COMMENT '类型  Search111 ',
  `gongyi_types` int(11) DEFAULT NULL COMMENT '工艺  Search111 ',
  `expense` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `img_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='化妆品';

/*Data for the table `huazhuangpin` */

insert  into `huazhuangpin`(`id`,`kzpname`,`pinpai_types`,`leixing_types`,`gongyi_types`,`expense`,`img_photo`,`create_time`) values (1,'化妆品1',3,3,3,'1000.00','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590491410.jpg','2021-03-24 20:54:57'),(2,'化妆品2',2,2,2,'2000.00','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590534471.jpg','2021-03-24 20:55:35'),(3,'化妆品3',1,1,1,'3000.00','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590545695.webp','2021-03-24 20:55:49'),(4,'化妆品4',3,3,3,'1000.00','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590562583.webp','2021-03-24 20:56:03'),(5,'化妆品5',2,2,2,'5000.00','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616643006522.webp','2021-03-25 11:30:07');

/*Table structure for table `peifang` */

DROP TABLE IF EXISTS `peifang`;

CREATE TABLE `peifang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pfname` varchar(200) DEFAULT NULL COMMENT '化妆品配方名称 Search111 ',
  `gongyi_types` int(11) DEFAULT NULL COMMENT '工艺  Search111 ',
  `shifou_types` int(11) DEFAULT NULL COMMENT '是否验收',
  `peifang_content` varchar(200) DEFAULT NULL COMMENT '化妆品配方',
  `xiangqing_content` varchar(200) DEFAULT NULL COMMENT '化妆品详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='配方';

/*Data for the table `peifang` */

insert  into `peifang`(`id`,`pfname`,`gongyi_types`,`shifou_types`,`peifang_content`,`xiangqing_content`,`create_time`) values (1,'化妆品1',3,NULL,'化妆品配方1\r\n','化妆品详情1\r\n','2021-03-24 21:06:59'),(2,'化妆品3',2,NULL,'化妆品配方3\r\n','化妆品详情3\r\n','2021-03-25 11:30:32');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1,'admin','users','管理员','9oqt6tctez261s2hf4c8reggtqm7zbiq','2021-03-23 14:15:15','2021-03-25 12:28:19'),(6,1,'111','yonghu','用户','5qsifwn8qrktu7wllw2nsfjavv287xw7','2021-03-23 16:55:29','2021-03-25 12:30:44'),(7,2,'222','yonghu','用户','q1xnd2ewdltkkmjsf3npodj448yz8hkk','2021-03-23 16:58:43','2021-03-25 12:31:24'),(8,3,'333','yonghu','用户','fpw1k6281ezleb4blo1dg7nwxj3t77lc','2021-03-23 17:22:11','2021-03-23 18:23:03');

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

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '名称  Search111',
  `username` varchar(255) DEFAULT NULL COMMENT '账号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `img_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` tinyint(4) DEFAULT NULL COMMENT '性别  Search111',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(255) DEFAULT NULL COMMENT '身份证',
  `role` varchar(255) DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`name`,`username`,`password`,`img_photo`,`sex_types`,`phone`,`id_number`,`role`) values (1,'小金','111','111','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590184227.jpg',1,'17796312333','410882200011231234','用户'),(2,'小札','222','222','http://localhost:8080/huazhuangpingongyi/file/download?fileName=1616590176034.jpg',2,'17754548971','410882200011274855','用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
