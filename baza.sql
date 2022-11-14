/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.22-MariaDB : Database - skije
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`skije` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `skije`;

/*Table structure for table `boja` */

DROP TABLE IF EXISTS `boja`;

CREATE TABLE `boja` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `boja` */

insert  into `boja`(`id`,`naziv`) values 
(1,'crvena'),
(2,'bela'),
(3,'plava'),
(4,'siva'),
(5,'crna');

/*Table structure for table `kategorija` */

DROP TABLE IF EXISTS `kategorija`;

CREATE TABLE `kategorija` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategorija` */

insert  into `kategorija`(`id`,`naziv`) values 
(1,'skije'),
(2,'pancerice'),
(3,'stapovi'),
(6,'rukavice');

/*Table structure for table `proizvod` */

DROP TABLE IF EXISTS `proizvod`;

CREATE TABLE `proizvod` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  `opis` varchar(90) NOT NULL,
  `kategorija` bigint(20) DEFAULT NULL,
  `boja` bigint(20) DEFAULT NULL,
  `slika` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `proizvod_ibfk_2` (`boja`),
  KEY `proizvod_ibfk_1` (`kategorija`),
  CONSTRAINT `proizvod_ibfk_1` FOREIGN KEY (`kategorija`) REFERENCES `kategorija` (`id`),
  CONSTRAINT `proizvod_ibfk_2` FOREIGN KEY (`boja`) REFERENCES `boja` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `proizvod` */

insert  into `proizvod`(`id`,`naziv`,`cena`,`opis`,`kategorija`,`boja`,`slika`) values 
(2,'druge skije',3000.00,'Dugacke ali dobre',1,1,'./img/f18.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
