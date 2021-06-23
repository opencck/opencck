-- MariaDB dump 10.19  Distrib 10.5.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: cck
-- ------------------------------------------------------
-- Server version	10.5.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apps` (
  `name` varchar(255) NOT NULL,
  `config` text DEFAULT NULL,
  `ordering` smallint(8) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apps`
--

LOCK TABLES `apps` WRITE;
/*!40000 ALTER TABLE `apps` DISABLE KEYS */;
INSERT INTO `apps` VALUES ('apps','{\"name\":\"apps\",\"label\":\"Applications\",\"icon\":\"mdi-cog-box\",\"description\":\"Control of CMS components\",\"version\":\"1.0.0\",\"views\":[{\"name\":\"install\",\"label\":\"Installation\",\"icon\":\"mdi-arrange-bring-to-front\",\"description\":\"Installation and updating of CMS applications\",\"view\":\"install\"},{\"name\":\"settings\",\"label\":\"Settings\",\"icon\":\"mdi-cog\",\"description\":\"Applications settings\",\"view\":\"settings\"}],\"settings\":[{\"type\":\"text\",\"name\":\"sitename\",\"default\":\"\"}],\"orm\":[{\"root\":true,\"name\":\"apps\",\"options\":{\"name\":{\"type\":\"varchar(255)\",\"null\":\"NOT NULL\",\"view\":{\"name\":\"name\",\"description\":\"Application name\",\"type\":\"text\"}},\"config\":{\"type\":\"text\",\"null\":\"NULL\",\"default\":\"NULL\",\"view\":{\"name\":\"name\",\"description\":\"Application config\",\"type\":\"json\"}},\"ordering\":{\"type\":\"smallint(8) unsigned\",\"null\":\"NOT NULL\",\"default\":\"0\",\"view\":{\"type\":\"hidden\"}}},\"keys\":{\"name\":{\"type\":\"PRIMARY\"}}}]}',0);
/*!40000 ALTER TABLE `apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(32) NOT NULL,
  `location` enum('SITE','API','ADMIN') NOT NULL DEFAULT 'SITE',
  `access` int(10) unsigned DEFAULT NULL,
  `users_id` int(11) unsigned DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_location` (`location`),
  KEY `idx_users_id` (`users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sold` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `date_create` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_username` (`username`),
  UNIQUE KEY `uni_email` (`email`),
  KEY `idx_state` (`state`),
  KEY `idx_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'admin','TaKST7YIQBBgDIU9ZnlOI+cixlRwBjT/KKVsYpsG+1k=','50u7jhoN9nFPNpRo','admin@example.com','admin',CURRENT_TIMESTAMP());
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 20:28:08
