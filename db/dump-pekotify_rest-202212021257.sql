-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: pekotify_rest
-- ------------------------------------------------------
-- Server version	5.7.40

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `song`
--

DROP TABLE IF EXISTS `song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(64) NOT NULL,
  `penyanyi_id` int(11) NOT NULL,
  `audio_path` varchar(255) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `penyanyi_id` (`penyanyi_id`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`penyanyi_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Sabar Atuh',2,'1-1669957313488.mp3'),(2,'Nya Arigatou',2,'2-1669957323354.mp3'),(3,'Jangan dong',2,'3-1669957335138.mp3'),(4,'Gyutto (Bossa Nova)',2,'4-1669957300900.mp3'),(5,'wowowowow',3,'4-1669957708398.mp3'),(6,'Peko Smug',3,'5-1669957778077.mp3'),(7,'Oh No',3,'6-1669957824288.mp3'),(8,'ぎゅっと',4,'7-1669959404708.mp3'),(9,'115万キロのフィルム',4,'8-1669959426468.mp3'),(10,'Pretender',5,'9-1669959488594.mp3'),(11,'イエスタデイ',5,'10-1669959507138.mp3'),(12,'ミックスナッツ ',5,'11-1669959521776.mp3'),(13,'Aku Juga Mau',2,'12-1669959649725.mp3'),(14,'HINOTORI',6,'13-1669959931244.mp3'),(15,'Fever Night',6,'14-1669959958569.mp3'),(16,'Mantra Hujan',7,'15-1669960374686.mp3');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','$2a$10$VT.yH.vyBWsC/rQmenRsbOMLAXO9cu1uXhBVQR8Cx2lnfqI5h9OPi','admin','Administrator',1),(2,'zeta@zeta.com','$2b$10$/uqYm8CydvkKxDn5ma0V1umGwim44mQkZzVkDAqj8yuI1z25Q9/Jm','zeta','Zeta',0),(3,'peko@peko.com','$2b$10$PVLkFiC0lWYJoFhYINNnMew8elU3ybf4/508e5XET4AiecAY1XKKW','peko','Pekora Voicepack',0),(4,'haru@haru.com','$2b$10$YQmu1cx.s0axrZdvj9OrW.Fbg7h/WJHC04L9EFRSYNf8rEn16c5Y.','haru',' 春茶',0),(5,'hige@hige.com','$2b$10$Gr9VImNjjdukLH.Qpn.1wuvGasizzOnvJKeacxUSwGMhKElvpzg5i','hige','Official髭男dism',0),(6,'kfp@holo.com','$2b$10$7mx7aepqj4SPcWlBaVNjeOunZ6hSFtMBl8oBvgHfEHxsue9x90pjC','kiara','Takanashi Kiara',0),(7,'kobo@holo.com','$2b$10$gc1x29ZiRWZF/5VcbwhNqe.JnbiUJA0Cs6FzNWb0mkigNHTYjawZ2','kobo','Kobo Kanaeru',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pekotify_rest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-02 12:57:07
