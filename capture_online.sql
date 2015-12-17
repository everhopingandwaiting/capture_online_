-- MySQL dump 10.13  Distrib 5.6.27, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: capture_online
-- ------------------------------------------------------
-- Server version	5.6.27-0ubuntu1

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
-- Table structure for table `cart_tab`
--

DROP TABLE IF EXISTS `cart_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `uuid` varchar(80) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_tab`
--

LOCK TABLES `cart_tab` WRITE;
/*!40000 ALTER TABLE `cart_tab` DISABLE KEYS */;
INSERT INTO `cart_tab` VALUES (1,1,'2015-12-13 15:16:56','270287662068242aa18',29,'YES'),(2,1,'2015-12-13 15:54:56','81a08695f82d346af0b',24,'YES'),(3,1,'2015-12-13 18:48:54','35adc8bcd174c38b9c0',30,'YES'),(4,1,'2015-12-13 19:35:58','6203ed8555a4386a6c4',29,'YES'),(5,1,'2015-12-13 22:36:52','a18195f52ea47a5aad5',16,'YES'),(6,1,'2015-12-13 22:41:37','4a44d30515347788e3a',26,'YES'),(7,1,'2015-12-14 10:03:26','d10d00b12c14087a830',31,'YES'),(8,1,'2015-12-14 10:39:05','bac36bb8e8e44d0b464',19,'YES'),(9,1,'2015-12-14 11:43:02','c183e5696f84b829671',31,'YES'),(10,1,'2015-12-14 14:08:15','b861144e1f4406986c4',17,'YES'),(12,1,'2015-12-14 21:17:59','81b35cb73dd42d09988',17,'YES'),(13,1,'2015-12-14 22:32:12','136e75656a3424080de',17,'YES'),(14,1,'2015-12-14 22:56:04','a08e96e625e47ecab2b',25,'YES'),(15,1,'2015-12-15 09:33:21','5a99e9cc5544309b7f8',21,'YES'),(17,1,'2015-12-15 18:06:17','f01541cc249471fab8c',31,'YES'),(18,1,'2015-12-16 20:02:36','59ca7af94794b8b9dac',21,'YES'),(20,1,'2015-12-16 22:07:22','5ceab43d3c144079292',16,'YES'),(22,1,'2015-12-16 22:16:24','c3f89f87d7f47e4bb7f',25,'YES'),(23,1,'2015-12-16 22:22:50','562400f52eb4d9fbf7c',21,'YES'),(24,1,'2015-12-17 11:05:56','61b24db73c84bed8ebb',25,'YES'),(25,1,'2015-12-17 11:06:46','970460dd1fb4928bab5',17,'YES'),(26,1,'2015-12-17 12:04:41','27f1ed0af83413195e2',17,'YES'),(27,1,'2015-12-17 16:35:43','8e67986e1d04d16aded',16,'YES');
/*!40000 ALTER TABLE `cart_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_tab`
--

DROP TABLE IF EXISTS `gallery_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gallery_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `pic` varchar(95) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `info` varchar(200) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_tab`
--

LOCK TABLES `gallery_tab` WRITE;
/*!40000 ALTER TABLE `gallery_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods_tab`
--

DROP TABLE IF EXISTS `goods_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `tag` varchar(45) DEFAULT NULL,
  `comment` varchar(245) DEFAULT NULL,
  `view` int(11) DEFAULT NULL,
  `information` varchar(245) DEFAULT NULL,
  `picture` varchar(85) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods_tab`
--

LOCK TABLES `goods_tab` WRITE;
/*!40000 ALTER TABLE `goods_tab` DISABLE KEYS */;
INSERT INTO `goods_tab` VALUES (8,'1','2015-12-04 22:04:22','lack','a','Aliquam nibh ante dertolinom sertowy munot desto',11,'Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_1.jpg',444,'gallery'),(9,'1','2015-12-04 22:08:04','boy','b','a  good  pic',11,'photo in  tianjin ','images/gall_1-1.jpg',123,'blog'),(10,'2','2015-12-04 22:13:24','lily','c','well  hhahah ',26,'last  year  ','images/gall_1-2.jpg',323,'gallery'),(11,'1','2015-12-04 22:17:17','john','c','Duis massa eliterto dertolo auctor non pellentesque vel, aliquet sit amet erat. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis,',3,'Duis massa eliterto dertolo auctor non pellentesque vel, aliquet sit amet erat. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis,','images/gall_2.jpg',233,'gallery'),(12,'1','2015-12-04 22:19:47','lulu','b','ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od',4,'ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od','images/gall_2-1.jpg',555,'gallery'),(13,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',27,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_2-2.jpg',324,'gallery'),(14,'2','2015-12-04 22:21:44','meizhi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',26,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_3-1.jpg',324,'gallery'),(15,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',23,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_3-2.jpg',324,'gallery'),(16,'1','2015-12-04 22:08:04','zhansan','b','a  good  pic',7,'photo in  tianjin ','images/gall_3.jpg',123,'blog'),(17,'1','2015-12-04 22:08:04','john','b','a  good  pic',8,'photo in  tianjin ','images/page1_img1.jpg',123,'blog'),(18,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',23,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_5-2.jpg',324,'gallery'),(19,'1','2015-12-04 22:19:47','lulu','b','ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od',4,'ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od','images/gall_2-1.jpg',555,'gallery'),(20,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',23,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_2-2.jpg',324,'gallery'),(21,'1','2015-12-04 22:08:04','john','b','a  good  pic',6,'photo in  tianjin ','images/gall_6.jpg',123,'blog'),(22,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',26,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_4-2.jpg',324,'gallery'),(23,'2','2015-12-04 22:21:44','xingzi','c','em ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutru',23,'. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit.','images/gall_6-1.jpg',324,'gallery'),(24,'1','2015-12-04 22:19:47','lulu','b','ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od',4,'ies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh od','images/gall_2-1.jpg',555,'gallery'),(25,'2','2015-12-08 22:46:46','j.yao','d',NULL,6,'well   hha   ,i  very like  it   ,lall  ','images/801869_fc_fc_fc.jpg',223,'blog'),(26,'4','2015-12-10 09:21:56','john','h',NULL,2,'kjhikshfhdrhgrth btrhbththtyh','images/gall_3-1.jpg',632,'gallery'),(27,'4','2015-12-10 09:29:57','john','h',NULL,3,'kjhikshfhdrhgrth btrhbththtyh','images/gall_3-1.jpg',632,'gallery'),(28,'4','2015-12-10 09:33:01','lucy','h',NULL,0,'kjhikshfhdrhgrth btrhbththtyh','images/gall_3-1.jpg',632,'gallery'),(29,'4','2015-12-10 09:36:21','john','h','',5,'856u ibdbtgvdrglkdhfhbftgjgjk','images/gall_3-1.jpg',632,'gallery'),(30,'4','2015-12-10 09:36:21','john','h','',3,'856u ibdbtgvdrglkdhfhbftgjgjk','images/gall_3-1.jpg',632,'gallery'),(31,'7','2015-12-13 15:06:49','kity','h','',6,'test test test test test test test test test test test test test test test ','images/323186_fc_fc_fc.jpg',23,'blog');
/*!40000 ALTER TABLE `goods_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_tab`
--

DROP TABLE IF EXISTS `guest_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guest_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_tab`
--

LOCK TABLES `guest_tab` WRITE;
/*!40000 ALTER TABLE `guest_tab` DISABLE KEYS */;
INSERT INTO `guest_tab` VALUES (1,'john','15620608592','15620608592@163.com','root','admin'),(2,'xing','170','170@qq.com',NULL,'admin'),(3,'j.yao','13132783872','13132783872@qq.com','j.yao','user'),(4,'jj','13132783872','13132783872@qq.com','j.yao','user');
/*!40000 ALTER TABLE `guest_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_tab`
--

DROP TABLE IF EXISTS `order_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_tab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guest_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `uuid` varchar(45) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_tab`
--

LOCK TABLES `order_tab` WRITE;
/*!40000 ALTER TABLE `order_tab` DISABLE KEYS */;
INSERT INTO `order_tab` VALUES (1,1,1187,'9c51312c0294f09b1ad','2015-12-13 17:46:32','PAY_NO'),(6,1,632,'64b6f7701854250b930','2015-12-13 19:36:11','PAY_NO'),(7,1,123,'b57d38d6f9e41a0aa87','2015-12-13 22:37:04','PAY_NO'),(8,1,632,'c22f3885d7146229f19','2015-12-13 22:41:41','PAY_NO'),(9,1,0,'3478c682de244bab5c0','2015-12-14 10:04:44','PAY_NO'),(10,1,0,'3478c682de244bab5c0','2015-12-14 10:05:02','PAY_NO'),(11,1,23,'396c7c68a604129807d','2015-12-14 10:24:39','PAY_NO'),(12,1,0,'a09f104caee438ebf05','2015-12-14 10:39:08','PAY_NO'),(13,1,555,'8b006dee99c457c84a3','2015-12-14 10:42:06','PAY_NO'),(14,1,146,'01c56a940b241fc9da5','2015-12-14 16:51:43','PAY_NO'),(15,1,123,'d0cb5121dcf4174b097','2015-12-14 22:14:21','PAY_NO'),(16,1,123,'d0cb5121dcf4174b097','2015-12-14 22:24:06','PAY_NO'),(17,1,123,'05c175e95144e1bbbe3','2015-12-14 22:33:12','PAY_NO'),(18,1,223,'187f2d5233f469d9c30','2015-12-14 23:31:14','PAY_NO'),(19,1,123,'600e4e5899e413a8f94','2015-12-15 09:34:03','PAY_NO'),(20,1,346,'9a36b8cf5464f9c98ec','2015-12-15 15:11:39','PAY_NO'),(21,1,146,'d8dd00953a846acb403','2015-12-16 18:57:18','PAY_NO'),(22,1,123,'ab1933a1da647f1a355','2015-12-16 20:02:42','PAY_NO'),(23,1,146,'43ab5fcdc7f4b718447','2015-12-16 20:19:29','PAY_NO'),(24,1,146,'43ab5fcdc7f4b718447','2015-12-16 20:19:36','PAY_NO'),(25,1,269,'c982add67234fb98075','2015-12-16 22:01:03','PAY_NO'),(26,1,269,'7681105604b4fc8aa76','2015-12-16 22:04:45','PAY_NO'),(27,1,269,'7681105604b4fc8aa76','2015-12-16 22:05:05','PAY_NO'),(28,1,123,'7681105604b4fc8aa76','2015-12-16 22:07:31','PAY_NO'),(29,1,632,'5c2c66e5bfb4bc3974c','2015-12-16 22:11:59','PAY_NO'),(30,1,223,'b9d4c02f28243169ff5','2015-12-16 22:16:33','PAY_NO'),(31,1,0,'7d2950154864d25a297','2015-12-16 22:19:15','PAY_NO'),(32,1,123,'f5438d30c6b4038b33e','2015-12-16 22:22:56','PAY_NO'),(33,1,123,'918792720ed45df878c','2015-12-16 22:26:03','PAY_NO'),(34,1,346,'7273eef3d8b442ca799','2015-12-16 22:31:50','PAY_NO'),(35,1,0,'1e37a5f923f4ed08439','2015-12-16 22:32:46','PAY_NO'),(36,1,978,'41206260b844accb3c8','2015-12-16 22:41:58','PAY_NO'),(37,1,978,'1344ffe431f47629ea6','2015-12-16 22:57:09','PAY_NO'),(38,1,978,'1344ffe431f47629ea6','2015-12-16 22:58:34','PAY_NO'),(39,1,346,'a19613d7d9242399468','2015-12-17 11:04:49','PAY_NO'),(40,1,223,'653451b87ce460581de','2015-12-17 11:06:50','PAY_NO'),(41,1,346,'27685ba5ea1465b9932','2015-12-17 11:18:48','PAY_NO'),(42,1,346,'27685ba5ea1465b9932','2015-12-17 11:19:33','PAY_NO'),(43,1,346,'27685ba5ea1465b9932','2015-12-17 11:22:00','PAY_NO'),(44,1,123,'0e3b720969f4087add2','2015-12-17 12:03:20','PAY_NO'),(45,1,0,'c7a242748d346c2a445','2015-12-17 12:04:11','PAY_NO'),(46,1,0,'fd27ad83cf4447a9ce3','2015-12-17 12:04:27','PAY_NO'),(47,1,0,'fd27ad83cf4447a9ce3','2015-12-17 12:04:46','PAY_NO'),(48,1,123,'cdb64f00aa7488fa69f','2015-12-17 15:06:31','PAY_NO'),(49,1,246,'8c8954e81e5496e9f89','2015-12-17 15:12:05','PAY_NO'),(50,1,123,'aff9bb6b5cc4c7c826f','2015-12-17 16:36:08','PAY_NO'),(51,1,123,'aff9bb6b5cc4c7c826f','2015-12-17 16:37:50','PAY_NO'),(52,1,123,'aff9bb6b5cc4c7c826f','2015-12-17 16:37:59','PAY_NO');
/*!40000 ALTER TABLE `order_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-17 22:33:07
