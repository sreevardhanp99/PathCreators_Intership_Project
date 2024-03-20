/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - e_health
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`e_health` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `e_health`;

/*Table structure for table `dreg` */

DROP TABLE IF EXISTS `dreg`;

CREATE TABLE `dreg` (
  `id` int(11) NOT NULL auto_increment,
  `hospital` varchar(1000) default NULL,
  `fname` varchar(1000) default NULL,
  `lname` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `gender` varchar(1000) default NULL,
  `aadhar` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `pincode` varchar(1000) default NULL,
  `qualification` varchar(1000) default NULL,
  `specialization` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `dreg` */

insert  into `dreg`(`id`,`hospital`,`fname`,`lname`,`email`,`mobile`,`gender`,`aadhar`,`address`,`pincode`,`qualification`,`specialization`,`username`,`password`,`status`) values (2,'Gandi','kishan','gadicharla','kishangadicherla508@gmail.com','9640257292','Male','123456789012','mansanpally\r\nbachannapet','506223','mbbs','Cardiologists','kishan','kishan','activated');

/*Table structure for table `healthcard` */

DROP TABLE IF EXISTS `healthcard`;

CREATE TABLE `healthcard` (
  `rid` int(11) NOT NULL auto_increment,
  `pid` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `hospital` varchar(1000) default NULL,
  `desc` varchar(1000) default NULL,
  `rdate` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  `adate` varchar(1000) default NULL,
  `edate` varchar(1000) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `healthcard` */

insert  into `healthcard`(`rid`,`pid`,`email`,`hospital`,`desc`,`rdate`,`status`,`adate`,`edate`) values (3,'6','venkatjavaprojects@gmail.com','Gandi','this is an application for the issue of the health card','2019-03-20 12:42:09','accepted','2019-03-20 12:42:51','20-March-2021');

/*Table structure for table `hospital` */

DROP TABLE IF EXISTS `hospital`;

CREATE TABLE `hospital` (
  `hospital` varchar(1000) default NULL,
  `date` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `hospital` */

insert  into `hospital`(`hospital`,`date`) values ('Gandi','2019-03-20 12:39:32'),('Appolo','2019-03-20 12:39:38');

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `hospital` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `ureg` */

insert  into `ureg`(`id`,`name`,`email`,`mobile`,`address`,`username`,`password`,`hospital`,`status`) values (6,'venkat','venkatjavaprojects@gmail.com','123467890','hyd','venkat','123','Gandi','activated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
