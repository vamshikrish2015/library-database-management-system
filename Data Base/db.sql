/*
SQLyog Community v11.52 (32 bit)
MySQL - 5.5.30 : Database - hy_library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `hy_library`;

/*Table structure for table `addbooks` */

DROP TABLE IF EXISTS `addbooks`;

CREATE TABLE `addbooks` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(1000) DEFAULT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `bookdesc` varchar(1000) DEFAULT NULL,
  `aname` varchar(1000) DEFAULT NULL,
  `volumeno` varchar(1000) DEFAULT NULL,
  `noofbook` varchar(1000) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `addbooks` */

insert  into `addbooks`(`id`,`bookid`,`bookname`,`bookdesc`,`aname`,`volumeno`,`noofbook`,`photo`,`status_`) values (8,'BOOK001','java','java book','Nageswara Rao','6','1','j2.jpg','Issue'),(9,'BOOK009','dotnet','Descrition about Dotnet Subject in Library','Gosling','4','4','e.jpg','free'),(10,'BOOK0010','u','iu','hu','hu','hu','use case user.uml','free');

/*Table structure for table `addcd` */

DROP TABLE IF EXISTS `addcd`;

CREATE TABLE `addcd` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `cdid` varchar(100) DEFAULT NULL,
  `cdname` varchar(100) DEFAULT NULL,
  `cddesc` varchar(100) DEFAULT NULL,
  `wrname` varchar(100) DEFAULT NULL,
  `noofcd` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `status_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `addcd` */

insert  into `addcd`(`id`,`cdid`,`cdname`,`cddesc`,`wrname`,`noofcd`,`photo`,`status_`) values (1,'CD001','Java','fdfdfvdsvds','Nageswara Rao','1','javacd1.jpg','free'),(2,'CD002','Core Java','CD about Core Java','Gosling','5','javacd2.jpg','free');

/*Table structure for table `addebooks` */

DROP TABLE IF EXISTS `addebooks`;

CREATE TABLE `addebooks` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `ebookid` varchar(1000) DEFAULT NULL,
  `ebookname` varchar(1000) DEFAULT NULL,
  `ebookdesc` varchar(1000) DEFAULT NULL,
  `aname` varchar(1000) DEFAULT NULL,
  `file` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `addebooks` */

insert  into `addebooks`(`id`,`ebookid`,`ebookname`,`ebookdesc`,`aname`,`file`) values (2,'eBOOK002','Oracle','This eBook Oracle Subject Orianted.','Rambabu','02-corejava.pdf'),(3,'eBOOK003','java','This eBook is Java Subject Orianted','KV Rao','02-corejava.pdf'),(4,'eBOOK004','Oracle','Oracle EBook','James1','02-corejava.pdf');

/*Table structure for table `addvideo` */

DROP TABLE IF EXISTS `addvideo`;

CREATE TABLE `addvideo` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `videoid` varchar(100) DEFAULT NULL,
  `videoname` varchar(100) DEFAULT NULL,
  `videodesc` varchar(500) DEFAULT NULL,
  `providername` varchar(100) DEFAULT NULL,
  `partno` varchar(100) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `addvideo` */

insert  into `addvideo`(`id`,`videoid`,`videoname`,`videodesc`,`providername`,`partno`,`video`) values (2,'VIDEO002','Oracle Video','Total Concepts of Oracle Video File','Oracle11','Part1','body.mp4'),(3,'VIDEO003','MySQL1','Concepts OF MySQL','MySQL','Part3','painting.mp4');

/*Table structure for table `issues` */

DROP TABLE IF EXISTS `issues`;

CREATE TABLE `issues` (
  `bookid` varchar(100) DEFAULT NULL,
  `mid` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `idate` varchar(100) DEFAULT NULL,
  `rdate` varchar(100) DEFAULT NULL,
  `status_` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `issues` */

insert  into `issues`(`bookid`,`mid`,`mname`,`idate`,`rdate`,`status_`) values ('BOOK001','LIBID101','krishna','4-1-2020','5-1-2020','Returned'),('CD001','LIBID102','virinchi','4-1-2020','5-1-2020','Returned'),('BOOK001','LIBID103','sasbit','4-1-2020','5-1-2016','Returned'),('CD002','LIBID104','koirala','4-1-2020','5-1-2020','In issue'),('CD001','LIBID103','sasbit','4-5-2016','5-5-2016','Returned'),('BOOK001','LIBID105','krish','4-7-2020','5-7-2020','Returned'),('BOOK001','LIBID101','vamshi','4-7-2020','5-7-2020','Returned'),('BOOK009','LIBID102','virinchi','4-7-2020','5-7-2020','Returned');

/*Table structure for table `librarian` */

DROP TABLE IF EXISTS `librarian`;

CREATE TABLE `librarian` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `lid` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phno` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `librarian` */

insert  into `librarian`(`id`,`lid`,`lname`,`address`,`email`,`phno`,`pwd`,`photo`) values (1,'Librarian001','vamshi','kendall manor,kzo,MI,USA','vkrish@gmail.com','2697911091','vkrish','u2.jpg'),(2,'Librarian002','virinchi','white hall,kzo,MI,USA','virinichi@gmail.com','2697784313','virinchi','u1.jpg');

/*Table structure for table `lmembers` */

DROP TABLE IF EXISTS `lmembers`;

CREATE TABLE `lmembers` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `uname` varchar(1000) DEFAULT NULL,
  `pwd` varchar(1000) DEFAULT NULL,
  `sque` varchar(1000) DEFAULT NULL,
  `ans` varchar(1000) DEFAULT NULL,
  `mno` varchar(1000) DEFAULT NULL,
  `adrs` varchar(100) DEFAULT NULL,
  `email1` varchar(500) DEFAULT NULL,
  `cpwd` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `lmembers` */

insert  into `lmembers`(`id`,`name`,`uname`,`pwd`,`sque`,`ans`,`mno`,`adrs`,`email1`,`cpwd`) values (1,'vamshi','vamshi','vamshi','Your Father Name','venky','269784168','null','vamshikrishna@gmail.com','vamshi'),(2,'virinchi','virinchi','virinchi','Your Father Name','father','265798456','null','virinchi@gmail.com','virinchi'),(3,'sasbit','sasbit','sasbit','Your Father Name','father','264861526','null','sasbit@gmail.com','sasbit');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
