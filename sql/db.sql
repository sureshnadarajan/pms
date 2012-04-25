/*
SQLyog Community v9.0 
MySQL - 5.1.59-community : Database - mydb
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mydb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `mydb`;

/*Table structure for table `t_atmessage` */

DROP TABLE IF EXISTS `t_atmessage`;

CREATE TABLE `t_atmessage` (
  `t_message_id` VARCHAR(36) NOT NULL,
  `t_employee_id` VARCHAR(36) NOT NULL,
  `t_project_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`t_message_id`,`t_employee_id`,`t_project_id`),
  KEY `fk_t_atmessage_t_message1` (`t_message_id`),
  KEY `fk_t_atmessage_t_employee1` (`t_employee_id`),
  KEY `fk_t_atmessage_t_project1` (`t_project_id`),
  CONSTRAINT `fk_t_atmessage_t_message1` FOREIGN KEY (`t_message_id`) REFERENCES `t_message` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_atmessage_t_employee1` FOREIGN KEY (`t_employee_id`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_atmessage_t_project1` FOREIGN KEY (`t_project_id`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_atmessage` */

/*Table structure for table `t_contact` */

DROP TABLE IF EXISTS `t_contact`;

CREATE TABLE `t_contact` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(45) DEFAULT NULL,
  `companyname` VARCHAR(100) DEFAULT NULL,
  `moblie` VARCHAR(100) DEFAULT NULL,
  `tel` VARCHAR(100) DEFAULT NULL,
  `email` VARCHAR(100) DEFAULT NULL,
  `address` VARCHAR(100) DEFAULT NULL,
  `website` VARCHAR(100) DEFAULT NULL,
  `weibo` VARCHAR(100) DEFAULT NULL,
  `content` TEXT,
  `projectid` VARCHAR(36) NOT NULL,
  `createtime` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_contact_t_project1` (`projectid`),
  CONSTRAINT `fk_t_contact_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_contact` */

/*Table structure for table `t_contactnote` */

DROP TABLE IF EXISTS `t_contactnote`;

CREATE TABLE `t_contactnote` (
  `id` VARCHAR(36) NOT NULL,
  `content` TEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `contactid` VARCHAR(36) NOT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_contactnote_t_contact1` (`contactid`),
  KEY `fk_t_contactnote_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_contactnote_t_contact1` FOREIGN KEY (`contactid`) REFERENCES `t_contact` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_contactnote_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_contactnote` */

/*Table structure for table `t_document` */

DROP TABLE IF EXISTS `t_document`;

CREATE TABLE `t_document` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(100) DEFAULT NULL,
  `content` LONGTEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  `projectid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_document_t_employee1` (`employeeid`),
  KEY `fk_t_document_t_project1` (`projectid`),
  CONSTRAINT `fk_t_document_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_document_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_document` */

/*Table structure for table `t_employee` */

DROP TABLE IF EXISTS `t_employee`;

CREATE TABLE `t_employee` (
  `id` VARCHAR(36) NOT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `password` VARCHAR(50) DEFAULT NULL,
  `pic` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_employee` */

INSERT  INTO `t_employee`(`id`,`username`,`password`,`pic`) VALUES ('e10001','tom','000000',NULL),('e10002','mary','000000',NULL);

/*Table structure for table `t_employee_project` */

DROP TABLE IF EXISTS `t_employee_project`;

CREATE TABLE `t_employee_project` (
  `employeeid` VARCHAR(36) NOT NULL,
  `projectid` VARCHAR(36) NOT NULL,
  `role` VARCHAR(45) DEFAULT NULL,
  PRIMARY KEY (`employeeid`,`projectid`),
  KEY `fk_t_employee_has_t_project_t_project1` (`projectid`),
  KEY `fk_t_employee_has_t_project_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_employee_has_t_project_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_employee_has_t_project_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_employee_project` */

INSERT  INTO `t_employee_project`(`employeeid`,`projectid`,`role`) VALUES ('e10001','p10001','manger'),('e10001','p10002','worker'),('e10002','p10001','worker');

/*Table structure for table `t_file` */

DROP TABLE IF EXISTS `t_file`;

CREATE TABLE `t_file` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `filename` VARCHAR(50) DEFAULT NULL,
  `filesize` MEDIUMTEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `fileTypeid` VARCHAR(36) NOT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_file_t_fileType1` (`fileTypeid`),
  KEY `fk_t_file_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_file_t_fileType1` FOREIGN KEY (`fileTypeid`) REFERENCES `t_filetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_file_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_file` */

/*Table structure for table `t_filetype` */

DROP TABLE IF EXISTS `t_filetype`;

CREATE TABLE `t_filetype` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `t_employee_id` VARCHAR(36) NOT NULL,
  `t_project_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_fileType_t_employee1` (`t_employee_id`),
  KEY `fk_t_fileType_t_project1` (`t_project_id`),
  CONSTRAINT `fk_t_fileType_t_employee1` FOREIGN KEY (`t_employee_id`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_fileType_t_project1` FOREIGN KEY (`t_project_id`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_filetype` */

/*Table structure for table `t_goal` */

DROP TABLE IF EXISTS `t_goal`;

CREATE TABLE `t_goal` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `desc` TEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `employeeid` VARCHAR(36) NOT NULL COMMENT '创建人',
  `projectid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_goal_t_employee1` (`employeeid`),
  KEY `fk_t_goal_t_project1` (`projectid`),
  CONSTRAINT `fk_t_goal_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_goal_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_goal` */

INSERT  INTO `t_goal`(`id`,`name`,`desc`,`createtime`,`employeeid`,`projectid`) VALUES ('g10001','look for somewhere for Google Party','look for ','2012-4-12','e10001','p10001'),('g10002','look for somewhere somewhere for Google Party','look for','2012-4-12','e10002','p10001');

/*Table structure for table `t_idea` */

DROP TABLE IF EXISTS `t_idea`;

CREATE TABLE `t_idea` (
  `id` VARCHAR(36) NOT NULL,
  `title` VARCHAR(100) DEFAULT NULL,
  `content` LONGTEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  `projectid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_idea_t_employee1` (`employeeid`),
  KEY `fk_t_idea_t_project1` (`projectid`),
  CONSTRAINT `fk_t_idea_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_idea_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_idea` */

/*Table structure for table `t_ideacomment` */

DROP TABLE IF EXISTS `t_ideacomment`;

CREATE TABLE `t_ideacomment` (
  `id` VARCHAR(36) NOT NULL,
  `content` TEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  `ideaid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_ideacomment_t_employee1` (`employeeid`),
  KEY `fk_t_ideacomment_t_idea1` (`ideaid`),
  CONSTRAINT `fk_t_ideacomment_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_ideacomment_t_idea1` FOREIGN KEY (`ideaid`) REFERENCES `t_idea` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_ideacomment` */

/*Table structure for table `t_message` */

DROP TABLE IF EXISTS `t_message`;

CREATE TABLE `t_message` (
  `id` VARCHAR(36) NOT NULL,
  `content` TEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  `projectid` VARCHAR(36) NOT NULL,
  `employeeid` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_t_message_t_project1` (`projectid`),
  KEY `fk_t_message_t_employee1` (`employeeid`),
  CONSTRAINT `fk_t_message_t_project1` FOREIGN KEY (`projectid`) REFERENCES `t_project` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_message_t_employee1` FOREIGN KEY (`employeeid`) REFERENCES `t_employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_message` */

/*Table structure for table `t_project` */

DROP TABLE IF EXISTS `t_project`;

CREATE TABLE `t_project` (
  `id` VARCHAR(36) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `desc` TEXT,
  `createtime` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;

/*Data for the table `t_project` */

INSERT  INTO `t_project`(`id`,`name`,`desc`,`createtime`) VALUES ('p10001','Googel Party','Google will hold a Party.','2012-4-12'),('p10002','TaoBao project','TaoBao project will begin . ','2012-4-15');

/*Table structure for table `task` */

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `id` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) DEFAULT NULL,
  `desc` TEXT,
  `state` VARCHAR(45) DEFAULT NULL,
  `plane` INT(11) DEFAULT NULL,
  `level` VARCHAR(45) DEFAULT NULL,
  `begintime` VARCHAR(45) DEFAULT NULL,
  `endtime` VARCHAR(45) DEFAULT NULL,
  `goal_id` VARCHAR(45) NOT NULL,
  `project_id` VARCHAR(45) NOT NULL,
  `employee_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`,`goal_id`,`project_id`,`employee_id`),
  KEY `fk_task_goal1` (`goal_id`,`project_id`),
  KEY `fk_task_employee1` (`employee_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `task` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
