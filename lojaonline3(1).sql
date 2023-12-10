/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 8.0.33 : Database - lojaonline3
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lojaonline3` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `lojaonline3`;

/*Table structure for table `produtosloja` */

DROP TABLE IF EXISTS `produtosloja`;

CREATE TABLE `produtosloja` (
  `codigoprod` int NOT NULL,
  `nomeprod` varchar(255) NOT NULL,
  `precoprod` float DEFAULT NULL,
  PRIMARY KEY (`codigoprod`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `produtosloja` */

insert  into `produtosloja`(`codigoprod`,`nomeprod`,`precoprod`) values 
(1,'Dell Inspiron 15R',7500),
(2,'Dell Inspiron 17R',7900),
(3,'Dell Inspiron 14X',1650),
(4,'HP Pavilion 2021',7710),
(5,'Notebook LeNovo IdeaPad',4190),
(6,'HP Pavilion 99-n50br',8070),
(7,'Samsung Galaxy S21',9800),
(8,'Samsung Galaxy S22',6499),
(9,'Samsung Galaxy S8',4699),
(10,'Motorola Edge 30',6700),
(11,'Motorola Moto Fold',9349),
(12,'Motorola Moto G 9a Gen',3370),
(13,'Motorola Moto E 13a Gen',6535),
(14,'Geladeira Consul 265 litros Cra77',5000),
(15,'GeladeiraElectrolux RE31 214 litros',2895),
(18,'Notebook Vaio F14 14\"',5200),
(19,'Moto E 2020',550),
(20,'Samsung Galaxy S4',450),
(21,'Pendrive 64 GB Sandisk',120),
(22,'Mouse com fio Logitech 120x',50);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
