-- MySQL dump 10.13  Distrib 5.5.23, for Win32 (x86)
--
-- Host: localhost    Database: now
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,0,'Электроника',NULL,NULL),(2,0,'Компьютеры',NULL,NULL),(3,0,'Смартфоны',NULL,NULL),(4,1,'Статьи',NULL,NULL),(5,1,'ТВ',NULL,NULL),(6,1,'Мобильники',NULL,NULL),(9,2,'Delli',NULL,NULL),(10,2,'Hp',NULL,NULL),(11,2,'Apple',NULL,NULL),(12,2,'Sony',NULL,NULL),(19,3,'Sony',NULL,NULL),(20,3,'Apple',NULL,NULL),(21,3,'Samsung',NULL,NULL),(22,3,'Nokia',NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_author` varchar(255) NOT NULL,
  `comment_text` text NOT NULL,
  `parent` int(10) unsigned NOT NULL DEFAULT '0',
  `approved` enum('0','1') NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Андрей','Привет, мир!',0,'1','2013-12-01 08:24:31',0),(2,'Валерия','Товар подошел',0,'1','2013-12-03 12:25:05',0),(3,'Менеджер','Отлично!\r\nОбращайтесь еще :)',2,'1','2013-12-04 12:26:02',1),(82,'конст','<p>Привет<br />\r\n&nbsp;</p>\r\n',0,'0','2018-07-30 10:55:51',0),(83,'наташа','<p>Привет всем</p>\r\n',0,'0','2018-07-30 10:55:51',0),(84,'wer','<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>круто</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n',0,'0','2018-07-30 10:55:51',0),(5,'Валерия','Спасибо)',3,'1','2013-12-31 12:27:15',0),(6,'Конкурент','Тестовый коммент',0,'1','2013-12-31 12:28:17',0),(40,'Андрей','5',6,'0','2014-01-10 20:18:50',0),(41,'Андрей','Привет',0,'0','2014-01-10 20:20:29',0),(42,'Андрей','1',0,'0','2014-01-10 20:29:26',0),(43,'Андрей','2',0,'0','2014-01-10 20:30:08',0),(44,'Андрей','4',0,'0','2014-01-10 20:31:41',0),(45,'Андрей','2',0,'0','2014-01-10 20:33:47',0),(46,'Андрей','Тестируем эффект появления',45,'0','2014-01-10 20:36:13',0),(39,'Андрей','4',37,'0','2014-01-10 20:18:44',0),(38,'Андрей','12',0,'0','2014-01-10 20:18:14',0),(37,'Андрей','123',6,'0','2014-01-10 20:18:07',0),(47,'Андрей','12345',38,'0','2014-01-10 20:36:32',0),(48,'Андрей','31231231',0,'0','2014-01-10 20:42:30',0),(49,'Андрей','1',0,'0','2014-01-10 20:56:24',0),(50,'Андрей','2',48,'0','2014-01-10 20:56:32',0),(51,'Валерия','Привет!',0,'0','2014-01-10 21:03:59',0),(52,'Андрей','3',50,'0','2014-01-31 19:57:42',0),(53,'Андрей','123',0,'0','2014-01-31 20:13:04',0),(54,'Андрей','1',0,'0','2014-01-31 20:13:36',0),(55,'Андрей','1',51,'0','2014-01-31 20:26:47',0),(56,'Андрей','2',0,'0','2014-01-31 20:26:52',0),(57,'Андрей','12',0,'0','2014-01-31 20:32:38',0),(58,'Андрей','123123',57,'0','2014-01-31 20:32:47',0),(59,'Менеджер','Тест',0,'0','2014-02-09 11:44:32',0),(60,'Менеджер','1',59,'0','2014-02-09 11:45:16',0),(61,'Менеджер','12',0,'0','2014-02-09 11:57:15',0),(62,'Менеджер','1',0,'0','2014-02-09 12:01:50',1),(63,'Андрей','21',0,'0','2014-02-09 12:02:08',0),(64,'Менеджер','1',61,'0','2014-02-09 12:02:25',1),(65,'Менеджер','1',0,'0','2014-02-09 12:04:19',1),(66,'Андрей','1',65,'0','2014-02-09 12:04:47',0),(67,'Просто юзер','Тест',0,'0','2014-02-09 12:05:07',0),(68,'1','2',0,'0','2014-03-17 20:38:22',0),(69,'1','2',0,'0','2014-03-17 20:39:37',0),(70,'12','2',0,'0','2014-04-12 08:32:45',0),(71,'1','2',0,'0','2014-04-12 08:33:12',0),(72,'1','2',49,'0','2014-04-12 08:33:36',0),(73,'Менеджер','123',0,'0','2014-04-12 08:55:09',1),(74,'Менеджер','123',0,'0','2014-04-12 08:56:28',1),(75,'Андрей','2',0,'0','2014-04-12 08:56:38',0),(78,'конст','<p>Привет<br />\r\n&nbsp;</p>\r\n',0,'0','2018-07-27 07:06:33',0),(79,'наташа','<p>Привет всем</p>\r\n',0,'0','2018-07-27 07:06:33',0),(80,'конст','<p>Привет<br />\r\n&nbsp;</p>\r\n',0,'0','2018-07-27 07:26:26',0),(81,'наташа','<p>Привет всем</p>\r\n',0,'0','2018-07-27 07:26:26',0),(85,'конст','<p>Всем привет</p>\r\n',0,'0','2018-10-29 13:01:02',0),(86,'наташа','<p>ВВ</p>\r\n',0,'0','2018-10-29 13:01:02',0),(87,'алекс','<p>оаапр</p>\r\n',0,'0','2018-10-29 13:01:02',0),(88,'алекс','<p>Привет</p>\r\n',0,'0','2018-10-29 13:01:02',0),(89,'алекс','<p>Привет</p>\r\n',0,'0','2018-10-29 13:01:02',0),(90,'алекс','<p>П</p>\r\n',0,'0','2018-10-29 13:01:02',0),(91,'алекс','<p>П</p>\r\n',0,'0','2018-10-29 13:01:02',0),(92,'алекс','<p>ПА</p>\r\n',0,'0','2018-10-29 13:01:02',0),(93,'алекс','<p>п</p>\r\n',0,'0','2018-10-29 13:01:02',0),(94,'алекс','<p>аап</p>\r\n',0,'0','2018-10-29 13:01:02',0),(95,'алекс','<p>Привет всем<br />\r\n&nbsp;</p>\r\n',0,'0','2018-10-29 13:01:02',0),(96,'алекс','<p>Привет</p>\r\n',0,'0','2018-10-29 13:01:02',0),(97,'алекс','<p>Привет</p>\r\n',0,'0','2018-10-29 13:01:02',0),(98,'алекс','<p>Всё отлично<br />\r\n&nbsp;</p>\r\n',0,'0','2018-10-29 13:01:02',0),(99,'алекс','<p>Всё нормально.</p>\r\n',0,'0','2018-10-29 13:01:02',0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgot`
--

DROP TABLE IF EXISTS `forgot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `expire` int(10) unsigned NOT NULL,
  `email` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgot`
--

LOCK TABLES `forgot` WRITE;
/*!40000 ALTER TABLE `forgot` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Products/Product1/11fa01.jpg',1,0,'Product','a5f94a8e3b-3',''),(2,'Products/Product1/1b67db.jpg',1,0,'Product','814eb35d58-4',''),(3,'Products/Product1/ec17c1.jpg',1,0,'Product','e4bbaf6f06-5',''),(4,'Products/Product1/34ea12.jpg',1,0,'Product','7219fd6b74-6',''),(5,'Products/Product1/dcce9b.jpg',1,0,'Product','5efa3ff6ef-7',''),(6,'Products/Product1/14572d.jpg',1,0,'Product','2fdfb8ddbc-8',''),(7,'Products/Product1/1dd2a4.jpg',1,0,'Product','94c38d27ed-9',''),(8,'Products/Product1/02cbc8.jpg',1,0,'Product','2d24c9ccbe-10',''),(9,'Products/Product1/0a345c.jpg',1,0,'Product','ed47edc552-11',''),(10,'Products/Product1/7879f3.jpg',1,0,'Product','bbd1b334a4-12',''),(11,'Products/Product1/77762c.jpg',1,0,'Product','860d9199c0-13',''),(12,'Products/Product1/b60a8b.jpg',1,0,'Product','512d1d4e79-14',''),(13,'Products/Product1/e3b5e4.jpg',1,0,'Product','5848c8bdfa-15',''),(14,'Products/Product1/a56812.jpg',1,0,'Product','8afcff4e8c-16',''),(15,'Products/Product1/81a7f1.jpg',1,0,'Product','195a4ec2c0-17',''),(16,'Products/Product1/152bdf.jpg',1,0,'Product','390c9ba1c8-18',''),(17,'Products/Product1/807c48.jpg',1,0,'Product','143c2c6742-19',''),(18,'Products/Product1/25099f.jpg',1,0,'Product','7736881a4f-20',''),(19,'Products/Product2/1a9e0f.jpg',2,0,'Product','7055ae64ad-3',''),(20,'Products/Product2/c86bb2.jpg',2,0,'Product','04764259a1-4',''),(21,'Products/Product2/dcb4d7.jpg',2,0,'Product','8152a0e253-5',''),(22,'Products/Product2/3d62a1.jpg',2,0,'Product','1ab0a343f5-6',''),(23,'Products/Product2/7917a1.jpg',2,0,'Product','5e4201055a-7',''),(24,'Products/Product1/6ae81e.jpg',1,0,'Product','9d40e0db7e-21',''),(25,'Products/Product1/d57a98.jpg',1,0,'Product','c7ffae67c8-22',''),(26,'Products/Product1/e7b319.jpg',1,0,'Product','e630bc234d-23',''),(27,'Products/Product1/a9f71e.jpg',1,0,'Product','0e28e58904-24',''),(28,'Products/Product1/4ee355.jpg',1,0,'Product','afc590d6c8-25',''),(29,'Products/Product6/802cc3.jpg',6,0,'Product','f33adf97d7-3',''),(30,'Products/Product6/a7ccce.jpg',6,0,'Product','2468f45344-2',''),(31,'Products/Product7/ae1131.jpg',7,0,'Product','ff0140465d-3',''),(32,'Products/Product1/f8e457.jpg',1,0,'Product','2aa3ffee15-26',''),(33,'Products/Product1/2e0f55.jpg',1,0,'Product','945a4a003f-27',''),(34,'Products/Product2/cb69f7.jpg',2,0,'Product','a4de5afe64-8',''),(35,'Products/Product8/deb2f9.jpg',8,0,'Product','26be0a3d67-3',''),(36,'Products/Product3/2b26d1.jpg',3,0,'Product','0000458ae2-2',''),(37,'Products/Product4/115a09.png',4,0,'Product','cd6ae798d4-3',''),(38,'Products/Product5/b9e2f9.jpg',5,0,'Product','c3221927b6-3',''),(39,'Products/Product2/08ba07.jpg',2,0,'Product','a3778512bb-9',''),(40,'Products/Product1/8f8223.jpg',1,0,'Product','dceeaed178-28',''),(41,'Products/Product2/72834b.jpg',2,0,'Product','8b15225285-2',''),(42,'Products/Product1/75f56a.jpg',1,0,'Product','7c76e00730-2',''),(43,'Products/Product7/fd4b0b.jpg',7,0,'Product','f577f213f8-2',''),(44,'Products/Product3/0b24b1.png',3,1,'Product','e432728b1b-1',''),(45,'Products/Product4/d894c9.jpg',4,0,'Product','56e1d0b7ae-2',''),(46,'Products/Product5/e53de5.jpg',5,0,'Product','11b277c378-2',''),(47,'Products/Product5/be281c.jpg',5,1,'Product','7706685800-1',''),(48,'Products/Product4/374a3b.jpg',4,1,'Product','203364fd1b-1',''),(49,'Products/Product8/826d3e.png',8,0,'Product','1e6cd8b903-4',''),(50,'Logos/Logo19/4e9d89.png',19,0,'Logo','d6830cd185-2',''),(51,'Logos/Logo19/ad1e42.jpg',19,1,'Logo','83e44a957b-1',''),(52,'Logos/Logo9/95388d.png',9,1,'Logo','9627773a2b-1',''),(53,'Products/Product8/03fa31.jpg',8,0,'Product','fc9f5535b4-5',''),(54,'Products/Product8/a240db.jpg',8,0,'Product','3580b549c4-6',''),(55,'Products/Product8/b30aca.jpg',8,0,'Product','9f2618a2cc-2',''),(56,'Logos/Logo3/cec69c.jpg',3,0,'Logo','b303b900f9-2',''),(57,'Logos/Logo3/8e1316.jpg',3,1,'Logo','51fb9bca56-1',''),(58,'Products/Product7/497e82.jpg',7,1,'Product','48f357235f-1',''),(59,'Products/Product1/367c85.jpg',1,1,'Product','355d2da6e5-1',''),(60,'Products/Product2/9682ee.jpg',2,1,'Product','92f5ae1c6e-1',''),(61,'Products/Product8/4fc22f.jpg',8,1,'Product','dc9863a99e-1',''),(62,'Products/Product9/35efc9.jpg',9,1,'Product','5b08195eed-1',''),(63,'Products/Product6/a69633.jpg',6,1,'Product','49cc765b26-1','');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logo`
--

DROP TABLE IF EXISTS `logo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logo`
--

LOCK TABLES `logo` WRITE;
/*!40000 ALTER TABLE `logo` DISABLE KEYS */;
INSERT INTO `logo` VALUES (3,'apple',NULL),(9,'dell',NULL),(19,'sony','sony.jpg');
/*!40000 ALTER TABLE `logo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration`
--

DROP TABLE IF EXISTS `migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration`
--

LOCK TABLES `migration` WRITE;
/*!40000 ALTER TABLE `migration` DISABLE KEYS */;
INSERT INTO `migration` VALUES ('m000000_000000_base',1524224397),('m140622_111540_create_image_table',1524224402),('m140622_111545_add_name_to_image_table',1524224403);
/*!40000 ALTER TABLE `migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `options`
--

DROP TABLE IF EXISTS `options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `options` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `options`
--

LOCK TABLES `options` WRITE;
/*!40000 ALTER TABLE `options` DISABLE KEYS */;
INSERT INTO `options` VALUES (1,'course','Курс','23'),(2,'email','Контактный email','admin@catalog.loc'),(3,'pagination','Кол-во товаров на страницу','6'),(4,'site_title','Название сайта','Webformyself Каталог яблочной продукции');
/*!40000 ALTER TABLE `options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `qty` int(10) NOT NULL,
  `sum` float NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2018-03-16 10:45:34','2018-03-16 10:45:34',2,76,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(2,'2018-03-16 10:55:10','2018-03-16 10:55:10',1,0,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 13'),(3,'2018-03-16 11:16:04','2018-03-16 11:16:04',1,100,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(4,'2018-03-19 09:51:26','2018-03-19 09:51:26',3,168,'0','Андрей','iwanow@mail.ru','+375298675678','Огарёва 12'),(5,'2018-07-12 15:48:29','2018-07-12 15:48:29',7,161,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(6,'2018-07-20 15:55:31','2018-07-20 15:55:31',1,25,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(7,'2018-07-20 16:17:00','2018-07-20 16:17:00',1,25,'0','константин','spir@mail.ru','34567890','макаёнко 9'),(8,'2018-09-26 15:31:06','2018-09-26 15:31:06',1,10,'0','константин','konstanti.spirin@mail.ru','213231231','макаёнко 9'),(9,'2018-09-26 15:57:29','2018-09-26 15:57:29',1,10,'0','константин','spir@mail.ru','34567890','Макаёнко 9'),(10,'2018-09-26 15:57:42','2018-09-26 15:57:42',1,10,'0','константин','spir@mail.ru','34567890','Макаёнко 9'),(11,'2018-09-27 11:17:24','2018-09-27 11:17:24',2,20,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(12,'2018-09-27 11:31:32','2018-09-27 11:31:32',3,30,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(13,'2018-09-27 11:54:09','2018-09-27 11:54:09',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(14,'2018-09-27 11:55:14','2018-09-27 11:55:14',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(15,'2018-09-27 11:58:34','2018-09-27 11:58:34',4,40,'0','константин','konstanti.spirin@mail.ru','4567890','макаёнко 9'),(16,'2018-09-27 11:59:28','2018-09-27 11:59:28',1,56,'0','константин','konstanti.spirin@mail.ru','4567890','макаёнко 9'),(17,'2018-09-27 14:03:31','2018-09-27 14:03:31',2,66,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(18,'2018-10-10 11:55:31','2018-10-10 11:55:31',1,56,'0','константин','konstanti.spirin@mail.ru','4567890','Макаёнко 9'),(19,'2018-10-17 12:27:26','2018-10-17 12:27:26',2,140,'0','константин','spirin.costia@yande.ru','4567890','Макаёнко 9');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `qty_item` int(11) NOT NULL,
  `sum_item` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,1,56),(2,1,3,'Блуза Mango 53005681-05 M Бежевая',20,1,20),(3,2,5,'Блузка Kira Plastinina 17-16-17453-SM-29 S',0,1,0),(4,3,6,'Кардиган Levi\'s Icy Grey Heather M',100,1,100),(5,4,2,'Джинсы MR520 MR 227 20002 0115 29-34 р Синие',56,3,168),(6,5,8,'sven mk155',25,3,75),(7,5,2,'Established Fact',56,1,56),(8,5,1,'Various Versions',10,3,30),(9,6,8,'sven mk155',25,1,25),(10,7,8,'sven mk155',25,1,25),(11,8,1,'Various Versions',10,1,10),(12,9,1,'Various Versions',10,1,10),(13,10,1,'Various Versions',10,1,10),(14,11,1,'Various Versions',10,2,20),(15,12,1,'Various Versions',10,3,30),(16,13,1,'Various Versions',10,4,40),(17,14,1,'Various Versions',10,4,40),(18,15,1,'Various Versions',10,4,40),(19,16,2,'Established Fact',56,1,56),(20,17,2,'Established Fact',56,1,56),(21,17,1,'Various Versions',10,1,10),(22,18,2,'Established Fact',56,1,56),(23,19,4,'Established Fact',70,2,140);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `page_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (76,'Главная','index','Описание главной','ключевики главной','Текст главной страницы',1),(77,'О компании','about','Описание о компании','ключевики о компании','<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, laudantium cum eos quia amet voluptates odit rem molestiae corporis architecto labore iure sed id? Officiis, esse, iure, consectetur tenetur labore magni quibusdam repudiandae beatae illum quidem optio repellendus deleniti adipisci mollitia nostrum ea earum voluptas ullam ex odio deserunt fugit dolore facilis qui sit! Fugit, ex, a, atque, deleniti repudiandae voluptatibus magni perspiciatis maxime dignissimos omnis iusto est doloribus doloremque repellat corporis expedita explicabo? Delectus, tempore, molestias ad officia quaerat velit vel veniam natus voluptatum autem quod veritatis harum ut consectetur tempora rem eveniet cum assumenda dolor ullam blanditiis dicta.</p>\r\n<p>Quia, dolores, culpa, incidunt nostrum nemo itaque error facere quod labore accusantium vel eos. Sint, odio, eligendi magni ut ullam aliquam qui iusto voluptatum a consequatur assumenda ea repudiandae maiores amet dignissimos nesciunt eveniet culpa cumque debitis in incidunt ipsum excepturi labore consectetur explicabo quis expedita perspiciatis fugit officiis distinctio? Numquam, blanditiis, ut, earum explicabo placeat repellat architecto provident a ex voluptas odit labore itaque ad! Voluptatibus, molestiae, eaque, sapiente, libero aspernatur non voluptate dolor cupiditate beatae ratione fugit eligendi magnam nesciunt quos reprehenderit nobis necessitatibus soluta ullam repellat possimus dicta consectetur porro quas maxime facere optio consequatur iusto placeat?</p>\r\n<p>Sint, magni, odit repudiandae ducimus velit inventore nihil veniam accusantium natus dolore non dolor totam quidem perspiciatis facere labore cupiditate vitae. Nisi, tempore, corporis, voluptatibus, delectus non architecto atque vel blanditiis sunt illum possimus eveniet veritatis dolorum dignissimos hic! Vero, dolorem eveniet quis blanditiis odit in numquam maxime unde voluptates non asperiores natus quasi. Fugiat, nobis quibusdam rem ullam reiciendis odio sint voluptate placeat impedit non quam odit est cupiditate omnis tempore reprehenderit cum inventore veniam commodi voluptates minima illum dolorum ex saepe quo deleniti quae a sunt ratione tenetur aliquid itaque corporis laborum facilis architecto voluptatem iusto. Officia, vero!</p>',2),(78,'Контакты','contacts','Описание Контакты','ключевики контакты','Текст страницы Контакты',3);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pozel`
--

DROP TABLE IF EXISTS `pozel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pozel` (
  `naim` text NOT NULL,
  `pow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozel`
--

LOCK TABLES `pozel` WRITE;
/*!40000 ALTER TABLE `pozel` DISABLE KEYS */;
INSERT INTO `pozel` VALUES ('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('aleks',NULL),('sven+mk390',NULL),('NINA',NULL),('Various Versions',NULL),('Various Versions',NULL),('Various Versions',NULL),('Various Versions',NULL),('sven mk155',NULL);
/*!40000 ALTER TABLE `pozel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('0','1') NOT NULL DEFAULT '0',
  `new` enum('0','1') NOT NULL DEFAULT '0',
  `sale` enum('0','1') NOT NULL DEFAULT '0',
  `now` longtext,
  `created` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,4,'Россия показала Дании   ','<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт. Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт. Россия показала Дании перспективы блокировки &laquo;Северного потока-2&raquo; ФБА &laquo;Экономика сегодня&raquo; 13 июня 2019 Фото: Bernd W&uuml;stneck/dpa 1 Комментарии9 Дания понесет серьезные затраты, если дойдет до ее &quot;наказания&quot; в европейских судах за задержку &quot;Северного потока-2&quot;. Об этом ФБА &quot;Экономика сегодня&quot; рассказал директор Центра изучения мировых энергетических рынков Института энергетических исследований РАН Вячеслав Кулагин. &quot;Заявления России о компенсациях, которые Дания может выплатить за задержку проекта &quot;Северный поток-2&quot;, неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно &mdash; есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. По сути, отказать Дания не может &mdash; разрешение на прокладку &quot;Северного потока&quot; в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы &mdash; множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные&quot;, &mdash; отмечает аналитик. СМИ Дании тиражируют заявление представителей компании Bech-Bruun, которая выступает в стране адвокатом проекта &quot;Северный поток-2&quot;. Юристы уведомили Копенгаген: если в кратчайшие сроки не будут выданы необходимые разрешения на прокладку газопровода, датские власти столкнутся с неприятными последствиями. Это отсрочит реализацию российско-германского проекта, и Москва намерена подать в суд иск с требованием компенсации. Блокировка выдачи разрешения на строительство грозит вылиться в значимые неприятные финансовые последствия. &quot;Если сейчас Копенгаген упрямо молчит в ответ на заявки России, то в суде ему в любом случае придется отвечать. А аргументов на запрет прокладывать трубы у Дании просто нет, то есть вероятность проигрыша в суде ЕС у датчан очень велика. Страна загоняет себя в тупик, ведь по логике и европейскому праву разрешение должно было быть выдано еще много месяцев назад. Копенгаген играет с огнем: если будет пройдена точка невозврата и Россия подаст в суд, последствия будут очень неприятными. И здесь нужно принять во внимание, что в Дании неделю назад прошли парламентские выборы, которые запустили целый ряд политических процессов. В государстве меняется власть, которая будет формировать парламентские коалиции, правительство и его структуру. Представители России заявлением о возможных судах дают четкий сигнал новым властям: у них нет времени на &quot;раскачку&quot; и раздумья, вопрос &quot;Северного потока-2&quot; стоит поставить в приоритет&quot;, &mdash; подчеркивает эксперт.</p>\r\n',10,'','','12.jpg','1','0','0','    \"Заявления России о компенсациях, которые Дания может выплатить за задержку проекта \"Северный поток-2\", неизбежно должны были прозвучать в сложившейся ситуации. В какой-то мере это способ подтолкнуть Копенгаген к принятию решения. Нельзя рассматривать заявки бесконечно — есть определенные сроки, которые Дания уже сорвала. Ответ должен быть дан. И если он будет отрицательным, то обосновать позицию государства, что, в свою очередь, тоже может стать причиной судебных разбирательств. \r\n\r\n    По сути, отказать Дания не может — разрешение на прокладку \"Северного потока\" в свое время было дано, а значит, аргумента запретить проложить рядом вторую такую же просто нет. И Россия обрисовывает перед датскими властями перспективы — множество компаний РФ и Европы вложили деньги в крупный проект, который уже реализуется. Задержки приведут к финансовым потерям, которые виновная сторона будет вынуждена компенсировать. Причем деньги с Копенгагена потребуют довольно серьезные\", — отмечает аналитик.  Об этом сообщает Рамблер. Далее: https://news.rambler.ru/world/42333551/?utm_content=rnews&utm_medium=read_more&utm_source=copylink',NULL),(2,4,'Что будет, если США ударят по Ирану ','<p>Что будет, если США ударят по Ирану News.ru 3 часа назад Фото: US Army/Global Look Press 1 Комментарии1 В США оценивают нанесение военного удара по Ирану как реальный способ оказать давление на Исламскую Республику. Эксперты также не исключают, что Соединённые Штаты могут попытаться решить иранский вопрос силой. О том, каким образом могут развиваться события в случае реализации Вашингтоном подобного сценария, &mdash; в материале News.ru. Сенатор-республиканец от штата Арканзас Том Коттон, член Комитета по вооружённым силам, заявил, что поддерживает идею военного удара по Ирану после инцидента с двумя танкерами в Оманском заливе. Эти неспровоцированные атаки на коммерческое судоходство требуют ответного военного удара, &mdash; цитирует Коттона Newsweek. Коттон привёл прямую параллель с ситуацией &laquo;танкерной войны&raquo; начала 1980-х годов, когда для защиты судоходства в районе Персидского и Оманского заливов действовала крупная группировка ВМС США и их союзников. По мнению сенатора, американцы могли бы поступить сейчас аналогичным образом для того, чтобы защитить коммерческое судоходство. Воинственное заявление сенатора подкреплено словами госсекретаря Майкла Помпео о том, что хотя президент Дональд Трамп и выступает против войны с Ираном, в Белом доме рассматривают все варианты действий, в том числе и военный. На этом фоне произведённый 16 июня совместный полёт самолётов F-15 ВВС США и Саудовской Аравии в небе над Персидским заливом был расценён наблюдателями как демонстрация силы и готовности Вашингтона и его союзников на Ближнем Востоке к силовому давлению на Иран. По логике американцев, иранцы атакуют танкеры для того, чтобы взвинтить градус противостояния, который отвлёк бы население от экономических проблем, вызванных возвращением санкций против Тегерана.</p>\r\n',56,'','','12bg.jpg','1','0','0','\r\nЧто будет, если США ударят по Ирану \r\nNews.ru 3 часа назад\r\nФото: US Army/Global Look Press\r\n1\r\nКомментарии1\r\nВ США оценивают нанесение военного удара по Ирану как реальный способ оказать давление на Исламскую Республику. Эксперты также не исключают, что Соединённые Штаты могут попытаться решить иранский вопрос силой. О том, каким образом могут развиваться события в случае реализации Вашингтоном подобного сценария, — в материале News.ru.\r\nСенатор-республиканец от штата Арканзас Том Коттон, член Комитета по вооружённым силам, заявил, что поддерживает идею военного удара по Ирану после инцидента с двумя танкерами в Оманском заливе.\r\n\r\n    Эти неспровоцированные атаки на коммерческое судоходство требуют ответного военного удара, — цитирует Коттона Newsweek. \r\n\r\nКоттон привёл прямую параллель с ситуацией «танкерной войны» начала 1980-х годов, когда для защиты судоходства в районе Персидского и Оманского заливов действовала крупная группировка ВМС США и их союзников. По мнению сенатора, американцы могли бы поступить сейчас аналогичным образом для того, чтобы защитить коммерческое судоходство.\r\nВоинственное заявление сенатора подкреплено словами госсекретаря Майкла Помпео о том, что хотя президент Дональд Трамп и выступает против войны с Ираном, в Белом доме рассматривают все варианты действий, в том числе и военный. На этом фоне произведённый 16 июня совместный полёт самолётов F-15 ВВС США и Саудовской Аравии в небе над Персидским заливом был расценён наблюдателями как демонстрация силы и готовности Вашингтона и его союзников на Ближнем Востоке к силовому давлению на Иран. По логике американцев, иранцы атакуют танкеры для того, чтобы взвинтить градус противостояния, который отвлёк бы население от экономических проблем, вызванных возвращением санкций против Тегерана.',NULL),(6,4,'Будущее началось - Plantbook','<p>Разработка уже заинтересовала многих инвесторов, так как это первая многообещающая функциональная технология, которая, в первую очередь, не только модная и актуальная, но и максимально рассчитана на заботу о природе и ее экологии.</p>\r\n',23,'','','sven mk150.jpg','0','0','0','Пожалуй, на сегодняшний день Plantbook можно назвать самым необыкновенным концептом ноутбука.\r\n\r\nЕго авторами являются – корейцы Hyerim Kim и Seunggi Baek. Своим воображением они буквально поразили весь мир технологий!\r\n\r\nУ ноутбука Plantbook гибкий дисплей, сенсорная клавиатура, и… он сворачивается в трубочку! Также для его зарядки можно не просто использовать обыкновенную солнечную энергию, но и воду! Невероятно то, что при этом гаджет вдобавок вырабатывает кислород! Чтобы все понять владельцу ноутбука, была создана специальная петелька в виде листика, которая отображает уровень заряда батареи.\r\n\r\nРазработка уже заинтересовала многих инвесторов, так как это первая многообещающая функциональная технология, которая, в первую очередь, не только модная и актуальная, но и максимально рассчитана на заботу о природе и ее экологии. ',NULL),(7,4,'Светящиеся камни Core Glow','<p>А мы продолжаем вас знакомить с разными интересными новинками. Сегодня вы узнаете о Core Glow. Core Glow это необыкновенно красивые светящиеся камни, которые часто сравнивают с Млечным путем. Сейчас это один из самых популярных способов оформления земельного участка. Сделаны они из природной гальки, из смолы с добавлением фотолюминесцентного пигмента. Достаточно всего пару часов на солнце? и любая дорожка с рядом расставленными растениями станет настоящими тропиками из киношедевра &laquo;Аватар&raquo;. Выглядит очень красиво и оригинально.</p>\r\n',24,'','','sven mk390.jpg','0','0','0','А мы продолжаем вас знакомить с разными интересными новинками.\r\nСегодня вы узнаете о Core Glow.\r\n\r\nCore Glow это необыкновенно красивые светящиеся камни, которые часто сравнивают с Млечным путем. Сейчас это один из самых популярных способов оформления земельного участка.\r\n\r\nСделаны они из природной гальки, из смолы с добавлением фотолюминесцентного пигмента. Достаточно всего пару часов на солнце? и любая дорожка с рядом расставленными растениями станет настоящими тропиками из киношедевра «Аватар».\r\nВыглядит очень красиво и оригинально. ',NULL),(8,4,'Невероятно красивый солончак Боливии','<p>Это явление ежегодно привлекает к себе внимание фотографов и туристов со всего мира. Создается впечатление, как будто здесь соединяется небо и земля.</p>\r\n',25,'','','sven mk155.jpg','0','0','0','На юго-западе интересной Боливии располагается самый крупный солончак на Земле. Его площадь аж 10 582 квадратных километров. Но прелесть этого места не в его размерах. Во время сезона дождей солончак покрывается небольшим слоем воды, который и создает то самое неповторимое зеркальное отражение.\r\n\r\nЭто явление ежегодно привлекает к себе внимание фотографов и туристов со всего мира. Создается впечатление, как будто здесь соединяется небо и земля. ',NULL),(9,4,'Как алкоголь влияет на ДНК человека','<p>Английскими учеными из Совета медицинских исследований было установлено, что уксусный альдегид, который является побочным продуктом расщепления в организме этилового спирта, может вызвать необратимые повреждения ДНК.</p>\r\n\r\n<p>Также было продемонстрировано, что клетки имеют 2 механизма, которые защищают их от разрушительного действия ацетальдегида.<br />\r\nБлагодаря специальным ферментам токсин расщепляется, но если этого недостаточно и ацетальдегид, накапливаясь, начинает повреждение ДНК, тогда наступает стадия второго механизма, который восстанавливает повреждение ДНК благодаря белкам Фанкони.</p>\r\n\r\n<p>Но когда белков Фелкони в организме недостаточно, организму, в том числе и ДНК, наносится непоправимый вред. Тоже самое происходило, когда алкоголь испытывали на беременных мышах.<br />\r\nЭто доказывает тот факт, что пьянство способно приводить в организме к накоплению количества ацетальдегида, которого достаточно для нарушения работы механизмов защиты.</p>\r\n\r\n<p>Полученные данные заставляют взглянуть нас по-новому на механизмы, благодаря которым оказывает алкоголь губительное действие на организм. Вот почему у людей при употреблении спиртных напитков часто происходит появление красных пятен на теле или покраснение лица или повышение температуры.<br />\r\nВ очередной раз данное исследование лишь подтверждает тот факт, насколько беззащитен, может быть наш организм перед алкоголем.</p>\r\n',12,'','','no-image.png','0','0','0',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raspis`
--

DROP TABLE IF EXISTS `raspis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `raspis` (
  `email` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raspis`
--

LOCK TABLES `raspis` WRITE;
/*!40000 ALTER TABLE `raspis` DISABLE KEYS */;
INSERT INTO `raspis` VALUES ('spirin.costia@yandex.ru');
/*!40000 ALTER TABLE `raspis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sert`
--

DROP TABLE IF EXISTS `sert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) DEFAULT NULL,
  `img` char(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sert`
--

LOCK TABLES `sert` WRITE;
/*!40000 ALTER TABLE `sert` DISABLE KEYS */;
INSERT INTO `sert` VALUES (1,'sert1','sertifikat-1',20,NULL);
/*!40000 ALTER TABLE `sert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','$2y$13$5ZiGLH2I28GZOeZgSwGz6uM9kOwgBgl.w6A4uo9LZpIPzAdJSZrMK','eJrnNY7c3GEY8f4l05Iz_n0HGYwg40CA');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-24 15:28:59
