/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 10.1.16-MariaDB : Database - rajiv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `event_management` */

DROP TABLE IF EXISTS `event_management`;

CREATE TABLE `event_management` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `event_title` varchar(64) COLLATE utf8_bin NOT NULL,
  `event_description` varchar(4096) COLLATE utf8_bin DEFAULT NULL,
  `event_start` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `start_time` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `event_end` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `end_time` varchar(16) COLLATE utf8_bin DEFAULT NULL,
  `location_street` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `location_city` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `location_state` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `location_country` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `map_longitude` float DEFAULT NULL,
  `map_latitude` float DEFAULT NULL,
  `sponsor` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `sponsor_name` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `group_name` varchar(8) COLLATE utf8_bin DEFAULT NULL,
  `creator` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `event_management` */

insert  into `event_management`(`id`,`image`,`event_title`,`event_description`,`event_start`,`start_time`,`event_end`,`end_time`,`location_street`,`location_city`,`location_state`,`location_country`,`map_longitude`,`map_latitude`,`sponsor`,`sponsor_name`,`group_name`,`creator`) values (1,NULL,'word','fdjsilfhueiwlhflsnfjdlnckjlsnjsdlncjnldslcuildshnuflsdflnhdsjflnsdjlcnjsdklcndsjlcdslahvuivlsfvlnfjsav;lnsdc;lmasdo;jfcdisojfiowejfoejfiohsfhdvbnsvknsjkvlnsdjakljdshfiojhfoewjfio;jasdkl;cfmdns','0000-00-00','00:00:00','0000-00-00','00:00:00','word','word','word','word',NULL,NULL,NULL,'word','A','Donbelar Goh'),(2,NULL,'word','wordjfdksfjdsklfnjdsklncjknjkdlscnkdslncjklnsdjcklndsjklcnsdjklcnklbndsajklbvhlbhfvbfhbhjfdkvbhfdjlvbjfdklvjkfdlvnjkfdlvjkfdlvbhfdlvbhilhfuirwehfuiesahfio;jfioewjfio;sadjoc;ndsj;cnsdjclhbuihwuifheujieowajfio;jasfd;sncjk;dsnjcksdbjlcbhiwhfuewip;','2017-1-21','10:00:00','2017-2-4','9:00:00','word','word','word','word',NULL,NULL,NULL,'word','B','Donbelar Goh'),(3,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017-1-21','10:10:10','2017-2-4','11:20:30','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','A','Donbelar Goh'),(4,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017/1/23','11:09:08','2017-2-4','11:20:30','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','B','Donbelar Goh'),(5,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017/1/23','11:20:30','2017-2-4','11:20:30','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','A','Donbelar Goh'),(6,NULL,'Hello World','Hello World','2017-1-25','13:21:10','2017-2-4','11:20:30','Hello World','Hello World','Hello World','Hello World',NULL,NULL,NULL,'Hello World','A','Donbelar Goh'),(13,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017-1-23','20:00:00','2017-1-23','21:00:00','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','A','Donbelar Goh'),(14,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017-1-23','20:00:00','2017-1-23','21:00:00','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','A','Donbelar Goh'),(17,NULL,'donwaary','kldf;flkdsjf;lksdf;sdmcl;msd','2017-1-23','20:00:00','2017-1-23','21:00:00','yuanching','Singapore','Singapore','Singapore',NULL,NULL,NULL,'sponsor','A','Donbelar Goh'),(20,NULL,'aaaa','aaaaaaaaaa','2017-01-01','00:00:00','2017-01-01','00:00:00','aaaaaaaaa','aaaaaaa','aaaaaa','aaaaaaaaaa',NULL,NULL,NULL,'aaaaaaaaa','A','Donbelar'),(21,NULL,'qqqq','dddddd','2017-01-01','00:00:00','2017-01-01','00:00:00','ddddddddd','ddddddd','dddddddd','dddddddd',NULL,NULL,NULL,'ddddddd','A','Donbelar');

/*Table structure for table `group_management` */

DROP TABLE IF EXISTS `group_management`;

CREATE TABLE `group_management` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `group_management` */

insert  into `group_management`(`id`,`group_name`) values (1,'sports'),(2,'science'),(3,'music'),(4,'fact');

/*Table structure for table `user_management` */

DROP TABLE IF EXISTS `user_management`;

CREATE TABLE `user_management` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `regalname` varchar(20) COLLATE utf8_bin DEFAULT NULL COMMENT 'user regal name',
  `username` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'user name',
  `email` varchar(30) COLLATE utf8_bin DEFAULT NULL COMMENT 'user email',
  `password` varchar(50) COLLATE utf8_bin NOT NULL COMMENT 'user password',
  `usertype` varchar(4) COLLATE utf8_bin NOT NULL COMMENT 'user type',
  `group` varchar(4) COLLATE utf8_bin DEFAULT NULL COMMENT 'user belong group(abcd)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user_management` */

insert  into `user_management`(`id`,`regalname`,`username`,`email`,`password`,`usertype`,`group`) values (1,'Rajiv Varma','rrr','rajiv@gmail.com','44f437ced647ec3f40fa0841041871cd','A','0'),(2,'Donbelar Goh','ddd','donbelar@mail.com','77963b7a931377ad4ab5ad6a9cd718aa','G','A'),(3,'Emma Papper','eee','eee@ee.ee','d2f2297d6e829cd3493aa7de4416a18f','M','A');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
