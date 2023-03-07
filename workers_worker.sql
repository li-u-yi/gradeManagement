-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: workers
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `uid` int NOT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `role` tinyint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `psw` varchar(20) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `manager_id` int DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1002,'郝佳','管理部','总经理','2022-01-07',1,29,'4321',NULL,NULL),(1003,'王鹏','技术部','经理','2022-02-02',1,21,'0011',NULL,NULL),(1007,'秦浩然','销售部','职员','2002-02-20',1,38,'45',NULL,NULL),(1009,'韩愈','销售部','经理','2002-02-20',1,32,'53',NULL,NULL),(1010,'赵四','技术部','职员','2019-09-07',1,31,'234',NULL,NULL),(1011,'张三','管理部','职员','2019-09-07',1,43,'123',NULL,NULL),(1012,'韩梅梅','技术部','经理','2019-09-07',1,56,'5657',NULL,NULL),(1013,'李鑫','管理部','经理','2008-08-24',1,35,'767',NULL,NULL),(1014,'张子枫','技术部','职员','2019-09-07',1,23,'565',NULL,NULL),(1020,'欧尼','技术部','主管','2019-09-06',1,50,'355',NULL,NULL),(1021,'李飞','管理部','主管','2019-06-07',1,52,'366','哎哟不错啊',1001),(1022,'jzj','人事部','主管','2019-06-07',1,41,'367',NULL,NULL),(1023,'jdj','技术部','主管','2019-06-07',1,42,'367',NULL,NULL),(1024,'徐萌','管理部','经理','2019-06-07',1,43,'321',NULL,NULL),(1025,'张昆','人事部','主管','2019-06-07',1,46,'267',NULL,NULL),(1028,'vhk','销售部','职员','2017-06-23',1,26,'4768','不错不错',1001),(1029,'syw','销售部','职员','2017-06-23',1,28,'3678',NULL,NULL),(1033,'丽萍','技术部','职员','2019-08-08',1,23,'123',NULL,NULL);
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-07 11:51:34
