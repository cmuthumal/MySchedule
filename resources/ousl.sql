CREATE DATABASE  IF NOT EXISTS `ousl` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ousl`;
-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: ousl
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` varchar(8) NOT NULL,
  `subID` varchar(8) NOT NULL,
  `activity` varchar(50) DEFAULT NULL,
  `groups` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `fromTime` int(4) DEFAULT NULL,
  `toTime` int(4) DEFAULT NULL,
  `centre` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subID` (`subID`),
  CONSTRAINT `activity2_ibfk_1` FOREIGN KEY (`subID`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES ('ACT0002','ECX3230','Lab 1 - Session 1','CLE08','2013-11-21',900,1600,'CL'),('ACT0003','ECX3230','Lab 1 - Session 2','CLE08','2013-12-31',900,1600,'CL'),('ACT0004','ECX3230','Lab 1 - Session 3','CLE08','2014-02-07',900,1600,'CL'),('ACT0005','ECX3230','Lab 1 - Session 4','CLE08','2014-03-26',900,1600,'CL'),('ACT0006','ECX3230','Lab 1 - Session 5','CLE08','2014-06-13',900,1600,'CL'),('ACT0007','ECX3230','TMA 1 Due','','2013-12-20',900,1600,'CL'),('ACT0008','ECX3230','TMA 2 Due','','2014-04-04',900,1600,'CL'),('ACT0009','ECX3230','TMA 3 Due','','2014-05-23',900,1600,'CL'),('ACT0010','ECX3230','Day School 1','','2013-11-10',1200,1430,'CL'),('ACT0011','ECX3230','Day School 2','','2014-02-15',1500,1730,'CL'),('ACT0012','ECX3230','CAT 1','','2014-01-23',1300,1415,'RC'),('ACT0013','ECX3230','CAT 2','','2014-04-23',1300,1415,'RC'),('ACT0014','ECX3230','Final Exam','','2014-08-08',930,1230,'RC'),('ACT0015','ECX3231','Lab 1','MTE01','2013-12-21',900,1600,'MT'),('ACT0016','ECX3231','Lab 2','MTE01','2014-04-05',900,1600,'MT'),('ACT0017','ECX3231','Lab 3','MTE01','2014-06-12',900,1600,'MT'),('ACT0018','ECX3231','TMA 1 Due','','2013-12-27',900,1600,'CL'),('ACT0019','ECX3231','TMA 2 Due','','2014-04-04',900,1600,'CL'),('ACT0020','ECX3231','TMA 3 Due','','2014-06-20',900,1600,'CL'),('ACT0021','ECX3231','Day School 1','','2013-11-17',900,1130,'CL'),('ACT0022','ECX3231','Day School 2','','2014-03-08',900,1130,'CL'),('ACT0023','ECX3231','Day School 3','','2014-05-11',1300,1530,'CL'),('ACT0024','ECX3231','CAT 1','','2014-01-20',1300,1415,'RC'),('ACT0025','ECX3231','CAT 2','','2014-04-22',1545,1700,'RC'),('ACT0026','ECX3231','Final Exam','','2014-08-13',1330,1630,'RC'),('ACT0027','ECX4235','TMA 1 Due','','2013-12-19',900,1600,'CL'),('ACT0028','ECX4235','TMA 2 Due','','2014-02-21',900,1600,'CL'),('ACT0029','ECX4235','TMA 3 Due','','2014-05-07',900,1600,'CL'),('ACT0030','ECX4235','Day School 1','','2013-11-23',900,1130,'CL'),('ACT0031','ECX4235','Day School 2','','2013-12-14',1200,1430,'CL'),('ACT0032','ECX4235','Day School 3','','2014-02-01',1200,1430,'CL'),('ACT0033','ECX4235','Day School 4','CLE01','2014-05-10',1200,1430,'CL'),('ACT0034','ECX4235','CAT 1','','2014-01-19',1200,1315,'RC'),('ACT0035','ECX4235','CAT 2','','2014-04-20',1300,1415,'RC'),('ACT0036','ECX4235','Final Exam','','2014-08-30',1930,1230,'RC'),('ACT0037','ECX4235','Mini Project Due','','2014-06-16',900,1600,'CL'),('ACT0038','ECX3232','Lab 1','MTE01','2013-12-14',900,1600,'MT'),('ACT0039','ECX3232','Lab 2','MTE01','2014-04-02',900,1600,'MT'),('ACT0040','ECX3232','Lab 3','MTE01','2014-05-31',900,1600,'MT'),('ACT0041','ECX3232','TMA 1 Due','','2013-12-20',900,1600,'CL'),('ACT0042','ECX3232','TMA 2 Due','','2014-03-30',900,1600,'CL'),('ACT0043','ECX3232','TMA 3 Due','','2014-06-03',900,1600,'CL'),('ACT0044','ECX3232','Day School 1','','2013-11-24',1200,1430,'CL'),('ACT0045','ECX3232','Day School 2','','2014-03-15',900,1130,'CL'),('ACT0046','ECX3232','Day School 3','','2014-05-24',900,1130,'CL'),('ACT0047','ECX3232','CAT 1','','2014-01-18',1545,1700,'RC'),('ACT0048','ECX3232','CAT 2','','2014-04-21',1545,1700,'RC'),('ACT0049','ECX3232','Final Exam','','2014-08-05',930,1230,'RC'),('ACT0050','ECX4237','TMA 1 Due','','2014-01-02',900,1600,'CL'),('ACT0051','ECX4237','TMA 2 Due','','2014-03-31',900,1600,'CL'),('ACT0052','ECX4237','Day School 1','','2013-11-17',900,1130,'CL'),('ACT0053','ECX4237','Day School 2','','2014-03-08',900,1200,'CL'),('ACT0054','ECX4237','Day School 3','','2014-05-03',900,1130,'CL'),('ACT0055','ECX4237','CAT 1','','2014-01-18',1415,1530,'RC'),('ACT0056','ECX4237','CAT 2','','2014-04-27',900,1015,'RC'),('ACT0057','ECX4237','Final Exam','','2014-08-20',930,1230,'RC'),('ACT0058','ECX4237','Mini Project Due 1','','2014-06-10',900,1600,'CL'),('ACT0059','MEK3170','TMA 1 Due','','2014-01-17',900,1600,'CL'),('ACT0060','MEK3170','TMA 2 Due','','2014-04-04',900,1600,'CL'),('ACT0061','MEK3170','TMA 3 Due','','2014-06-02',900,1600,'CL'),('ACT0062','MEK3170','Day School 1','','2013-12-15',1000,1230,'CL'),('ACT0063','MEK3170','Day School 2','','2014-01-02',1300,1530,'CL'),('ACT0064','MEK3170','Day School 3','','2014-02-02',1300,1530,'CL'),('ACT0065','MEK3170','Day School 4','','2014-03-05',930,1200,'CL'),('ACT0066','MEK3170','Day School 5','','2014-04-03',1000,1230,'CL'),('ACT0067','MEK3170','Day School 6','','2014-06-18',1000,1230,'CL'),('ACT0068','MEK3170','CAT 1','','2014-01-24',1100,1215,'RC'),('ACT0069','MEK3170','CAT 2','','2014-04-28',1300,1415,'RC'),('ACT0070','MEK3170','Final Exam','','2014-09-01',930,1230,'CL'),('ACT0071','MPJ5231','TMA Due 1','','2013-12-18',800,1600,'CL'),('ACT0072','MPJ5231','TMA 2 Due','','2014-02-19',800,1600,'CL'),('ACT0073','MPJ5231','TMA 3 Due','','2014-05-13',800,1600,'CL'),('ACT0074','MPJ5231','Day School 1','','2013-11-23',900,1130,'CL'),('ACT0075','MPJ5231','Day School 2','','2014-02-08',900,1130,'CL'),('ACT0076','MPJ5231','Day School 3','','2014-06-22',900,1130,'CL'),('ACT0077','MPJ5231','CAT 1 (OBT)','','2014-04-23',1430,1630,'RC'),('ACT0078','MPJ5231','Final Exam','','2014-09-02',930,1330,'RC'),('ACT0079','MPZ3132','TMA Due 1','','2013-12-27',800,1600,'CL'),('ACT0080','MPZ3132','TMA Due 2','','2014-02-19',800,1600,'CL'),('ACT0081','MPZ3132','TMA Due 3','','2014-03-12',800,1200,'CL'),('ACT0082','MPZ3132','TMA Due 4','','2014-05-28',800,1600,'CL'),('ACT0083','MPZ3132','Day School 1','','2013-11-10',900,1200,'RS1'),('ACT0084','MPZ3132','Day School 2','','2013-12-01',900,1200,'RS1'),('ACT0085','MPZ3132','Day School 3','','2013-12-15',1300,1600,'RS1'),('ACT0086','MPZ3132','Day School 4','','2013-12-16',900,1200,'RS1'),('ACT0087','MPZ3132','Day School 5','','2013-12-29',1300,1600,'RS1'),('ACT0088','MPZ3132','Day School 6','','2014-01-05',1300,1600,'RS1'),('ACT0089','MPZ3132','Day School 7','','2014-02-02',1300,1600,'RS1'),('ACT0090','MPZ3132','Day School 8','','2014-02-09',1300,1600,'RS1'),('ACT0091','MPZ3132','Day School 9','','2014-02-14',1300,1600,'RS1'),('ACT0092','MPZ3132','Day School 10','','2014-02-27',900,1200,'RS1'),('ACT0093','MPZ3132','Day School 11','','2014-03-09',1300,1600,'RS1'),('ACT0094','MPZ3132','Day School 12','','2014-05-18',1300,1600,'RS1'),('ACT0095','MPZ3132','Day School 13','','2014-06-05',1300,1600,'RS1'),('ACT0096','MPZ3132','CAT 1','','2014-01-26',1545,1700,'RS8'),('ACT0097','MPZ3132','CAT 2','','2014-04-23',1045,1200,'RS8'),('ACT0098','MPZ3132','Final Exam','','2014-08-09',930,1230,'RS8'),('ACT0099','MPZ4140','Day School 1','','2013-12-07',1300,1530,'MT'),('ACT0100','MPZ4140','Day School 2','','2013-12-15',1300,1530,'MT'),('ACT0101','MPZ4140','Day School 3','','2013-12-28',1300,1530,'MT'),('ACT0102','MPZ4140','Day School 4','','2014-03-09',900,1130,'MT'),('ACT0103','MPZ4140','Day School 5','','2014-05-10',1300,1530,'MT'),('ACT0104','MPZ4140','Day School 6','','2014-05-17',900,1130,'MT'),('ACT0105','MPZ4140','Day School 7','','2014-06-14',1300,1530,'MT'),('ACT0106','MPZ4140','CAT 1','','2014-01-26',900,1015,'RC'),('ACT0107','MPZ4140','CAT 2','','2014-04-26',1200,1315,'RC'),('ACT0108','MPZ4140','Final Exam','','2014-08-24',930,1230,'RC'),('ACT0109','MPZ4140','TMA 1 Due','','2013-12-24',800,1600,'CL'),('ACT0110','MPZ4140','TMA 2 Due','','2014-02-11',800,1600,'CL'),('ACT0111','MPZ4140','TMA 3 Due','','2014-03-11',800,1600,'CL'),('ACT0112','MPZ4140','TMA 4 Due','','2014-05-27',800,1600,'CL'),('ACT0113','ECX4237','TMA 2 Viva','','2014-04-02',900,1600,'CL'),('ACT0114','ECX4237','Day School Sp','','2014-03-22',1230,1530,'CL'),('ACT0115','ECX3231','Viva','MTE01','2014-05-02',900,1600,'CL'),('ACT0116','ECX3230','Lab Viva','CLE08','2014-06-25',9000,1600,'CL'),('ACT0117','ECX4235','Mini Project Viva','MTE01','2014-06-26',9000,1600,'CL');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eligibility`
--

DROP TABLE IF EXISTS `eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eligibility` (
  `id` varchar(6) NOT NULL,
  `subID` varchar(8) NOT NULL,
  `criteria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subID` (`subID`),
  CONSTRAINT `eligibility_ibfk_1` FOREIGN KEY (`subID`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eligibility`
--

LOCK TABLES `eligibility` WRITE;
/*!40000 ALTER TABLE `eligibility` DISABLE KEYS */;
/*!40000 ALTER TABLE `eligibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` varchar(8) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `year` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('ECX3230','Electronics',2),('ECX3231','Electrical circuits and measurements',2),('ECX3232','Eletrical power',2),('ECX4235','Data structures and algorithms',2),('ECX4237','Software engineering I',2),('MEK3170','C Programming',2),('MPJ5231','Nature of science',2),('MPZ3132','Engineering mathematics I-B',2),('MPZ4140','Discreet mathematics',2);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-23 10:59:22
