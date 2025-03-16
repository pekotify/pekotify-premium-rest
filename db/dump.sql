-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: pekotify_rest
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.5-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `song` (
  `song_id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(64) NOT NULL,
  `penyanyi_id` int(11) NOT NULL,
  `audio_path` varchar(255) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `penyanyi_id` (`penyanyi_id`),
  CONSTRAINT `song_ibfk_1` FOREIGN KEY (`penyanyi_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `song`
--

LOCK TABLES `song` WRITE;
/*!40000 ALTER TABLE `song` DISABLE KEYS */;
INSERT INTO `song` VALUES (1,'Louis Theroux: Twilight of the Porn Stars',6,'Odio.doc'),(2,'Stay',17,'FeugiatNon.txt'),(3,'Ju Dou',7,'TristiqueTortor.xls'),(4,'Bit by Bit',16,'MetusSapienUt.jpeg'),(5,'Comedians of Comedy, The',8,'Vestibulum.png'),(6,'Harrison Bergeron',12,'PellentesqueAt.ppt'),(7,'Teahouse of the August Moon, The',17,'Lobortis.ppt'),(9,'How to Seduce Difficult Women',16,'AtNulla.avi'),(10,'Lethal Weapon 3',17,'LobortisVelDapibus.gif'),(11,'Ghost Story',14,'VestibulumQuam.pdf'),(12,'Players, The (Les infidèles)',13,'QuamSuspendissePotenti.ppt'),(13,'K-PAX',11,'Porttitor.mp3'),(14,'Griffin & Phoenix',3,'Turpis.ppt'),(15,'Graveyard of Honor (Shin jingi no hakaba)',3,'SedTinciduntEu.xls'),(16,'Divorce, Le',15,'Arcu.tiff'),(17,'Gothika',16,'Nulla.ppt'),(19,'Hearts and Minds',8,'Interdum.ppt'),(20,'After Last Season',16,'DuisBibendumFelis.xls'),(21,'Talent for the Game',12,'NecNisiVolutpat.mp3'),(22,'Blood Simple',18,'Pharetra.mp3'),(23,'Godzilla vs. Gigan (Chikyû kogeki meirei: Gojira tai Gaigan)',6,'Ut.gif'),(24,'Hero and the Terror',17,'SociisNatoquePenatibus.ppt'),(25,'Cotton Comes to Harlem',11,'AmetConsectetuerAdipiscing.avi'),(26,'Fierce Light: When Spirit Meets Action',11,'ConsequatVarius.avi'),(27,'Sacred Heart',13,'Posuere.ppt'),(28,'Last Laugh, The (Letzte Mann, Der)',3,'Semper.avi'),(29,'Road Home, The (Wo de fu qin mu qin)',5,'In.xls'),(30,'Last Godfather, The',14,'NibhIn.xls'),(31,'Clear and Present Danger',9,'InFaucibus.ppt'),(32,'Left Luggage',7,'Ultrices.avi'),(33,'A Matador\'s Mistress',13,'Pretium.gif'),(34,'Tournament, The',17,'TellusNulla.avi'),(35,'Griff the Invisible',2,'MassaId.jpeg'),(36,'36 fillette',8,'Vestibulum.gif'),(38,'Just Like a Woman',16,'AmetNuncViverra.ppt'),(39,'Just Like Heaven',9,'Magna.xls'),(40,'Sergeant York',2,'OrciPedeVenenatis.ppt'),(41,'Big Trouble in Little China',14,'Amet.xls'),(42,'Yesterday\'s Enemy',19,'Dolor.gif'),(44,'Anchors Aweigh',8,'Felis.avi'),(45,'Salaam Bombay!',3,'Consequat.tiff'),(46,'They Shoot Horses, Don\'t They?',10,'UtMaurisEget.mp3'),(47,'Sense & Sensibility',18,'AliquamQuisTurpis.xls'),(48,'Under the Age',6,'VitaeMattis.avi'),(49,'Mais qui a tué Pamela Rose?',20,'NecCondimentum.mov'),(50,'Our Fathers',4,'Fusce.jpeg'),(51,'Mega Shark vs. Giant Octopus',14,'ElementumEuInterdum.mpeg'),(52,'This Property is Condemned',19,'EuInterdum.pdf'),(53,'Wolf Creek 2',5,'DonecUt.avi'),(54,'Heaven and Earth (Ten to Chi to)',16,'LeoOdioPorttitor.xls'),(55,'Stefano Quantestorie',11,'At.xls'),(56,'Joan of Arc',8,'AcConsequat.xls'),(57,'Gardens of Stone',9,'Vulputate.mp3'),(58,'Coming Home',13,'MattisPulvinarNulla.jpeg'),(59,'Amour fou, L\'',20,'PorttitorLoremId.xls'),(60,'Forget Baghdad: Jews and Arabs - The Iraqi Connection',11,'UtMassaQuis.avi'),(61,'Vie en Rose, La (Môme, La)',11,'Semper.xls'),(62,'Miss Sadie Thompson',2,'ViverraDapibusNulla.jpeg'),(63,'My Wife, A Body to Love',13,'NislVenenatisLacinia.gif'),(64,'Little Lili (La petite Lili)',12,'Massa.ppt'),(66,'Joe\'s Apartment',6,'Diam.tiff'),(67,'Leap Year',9,'MattisOdioDonec.xls'),(68,'Adventures of Elmo in Grouchland, The',20,'SemFusceConsequat.png'),(69,'Brest Fortress (Brestskaya krepost)',17,'PotentiNullam.avi'),(70,'Thérèse',4,'VestibulumAnte.xls'),(71,'633 Squadron',18,'PellentesqueUltrices.avi'),(72,'Can I Do It \'Till I Need Glasses?',11,'Aenean.avi'),(73,'Extremely Loud and Incredibly Close',15,'Mauris.doc'),(74,'Chinese Zodiac (Armour of God III) (CZ12)',16,'QuisOdio.xls'),(75,'Voyage to the End of the Universe (Ikarie XB 1)',17,'Vulputate.mp3'),(76,'On Probation (Tiempo de Valientes)',12,'UltriciesEu.mp3'),(77,'Manon of the Spring (Manon des sources)',11,'UtVolutpat.avi'),(78,'1900 (Novecento)',7,'Nulla.ppt'),(79,'Out of the Ashes',17,'Vestibulum.xls'),(80,'Hijack That Went South, The (Kaappari)',10,'Porttitor.mp3'),(81,'Twin Sisters (De tweeling)',16,'AliquetAtFeugiat.avi'),(82,'Stray Dogs',8,'Nulla.avi'),(84,'Breathing Fire',6,'Felis.tiff'),(86,'Anita',3,'NullamOrciPede.mp3'),(88,'Lathe of Heaven, The',5,'VulputateLuctus.ppt'),(89,'Lore',18,'Elementum.xls'),(90,'Escape From Tomorrow',12,'AliquetPulvinar.jpeg'),(91,'Happy Campers',6,'Tincidunt.mp3'),(92,'Asylum',6,'NullaAc.mp3'),(93,'Edge, The',18,'Ipsum.avi'),(94,'Taxi 2',12,'NullaUltricesAliquet.avi'),(95,'Camila',3,'Nibh.pdf'),(96,'Puffy Chair, The',3,'Pede.ppt'),(97,'I Want to Live!',5,'Ligula.avi'),(98,'Philosophers, The (After The Dark)',13,'Vel.pdf'),(99,'Tomorrow at Dawn (Demain dès l\'aube)',5,'UltricesPosuere.avi'),(100,'TV Junkie',15,'NisiNam.avi'),(101,'Purgatory',15,'Nec.pdf'),(102,'All Quiet on the Western Front',18,'Ac.gif'),(103,'King of Thorn (King of Thorns) (Ibara no O)',16,'Leo.xls'),(104,'My House in Umbria',8,'UllamcorperAugueA.tiff'),(105,'Trail of the Pink Panther',12,'VelSemSed.avi'),(106,'Salvation Boulevard',3,'MiIn.xls'),(107,'I\'ll Be Home For Christmas',13,'EgetVulputate.gif'),(109,'What Women Want (a.k.a. I Know a Woman\'s Heart)',4,'Imperdiet.xls'),(110,'Ocean\'s Eleven',20,'Eget.avi'),(111,'Jennifer\'s Body',4,'ConsequatInConsequat.ppt'),(112,'Tourist, The',15,'LiberoRutrum.xls'),(113,'Arnold',10,'Vestibulum.ppt'),(114,'Boogie Woogie',11,'LoremIpsumDolor.ppt'),(115,'Vivacious Lady',9,'NonVelitDonec.jpeg'),(116,'Silent Sonata',20,'Lacinia.mov'),(117,'29 Palms',4,'LuctusEt.jpeg'),(118,'Fugly!',20,'Quisque.xls'),(119,'Stereo',18,'MaurisUllamcorperPurus.doc'),(120,'M. Butterfly',4,'DuiLuctus.jpeg'),(121,'Self-Made Hero, A (Un héros très discret)',15,'Lacinia.doc'),(122,'Village Barbershop, The',7,'SuscipitAFeugiat.gif'),(124,'Nude Bomb, The',6,'Luctus.png'),(125,'Ponette',7,'Convallis.mp3'),(126,'Arthur and the Invisibles',17,'NonVelitNec.ppt'),(127,'Mercy',3,'LectusPellentesqueEget.ppt'),(128,'Nadine',3,'Nulla.mp3'),(129,'Alive',3,'Id.ppt'),(130,'Evil Aliens',2,'Ligula.xls'),(131,'Angel Face',17,'SitAmet.pdf'),(132,'The Elephant Man',19,'MaecenasTristiqueEst.mp3'),(133,'Conspirator, The',11,'EuismodScelerisqueQuam.ppt'),(134,'Sons of Katie Elder',13,'Et.pdf'),(135,'Magic Hunter (Büvös vadász)',20,'CumSociis.jpeg'),(136,'Peacemaker, The',9,'SedVel.jpeg'),(137,'Under the Yum Yum Tree',14,'VestibulumVestibulum.pdf'),(138,'I, Madman',6,'MaecenasTristiqueEst.gif'),(139,'Kitchen Party',10,'ScelerisqueMaurisSit.avi'),(140,'Gorilla at Large',5,'SodalesSed.avi'),(141,'Manon of the Spring (Manon des sources)',9,'Eu.ppt'),(142,'Undertow',3,'DiamVitaeQuam.pdf'),(143,'Insider, The',12,'Metus.jpeg'),(144,'Nothing Left to Fear',6,'Mi.pdf'),(145,'Swarm, The',8,'SedInterdumVenenatis.avi'),(146,'Into the Middle of Nowhere',14,'Habitasse.xls'),(148,'Dial 1119',7,'VelitVivamus.xls'),(149,'Live!',11,'Vestibulum.mp3'),(150,'Spontaneous Combustion',9,'VelAccumsan.png'),(151,'Detective, The',2,'HacHabitassePlatea.gif'),(152,'Old Joy',18,'Turpis.png'),(153,'Love Story',10,'Tellus.ppt'),(154,'The Hallelujah Handshake',16,'AdipiscingMolestie.avi'),(155,'Captain Blood',19,'Ac.pdf'),(156,'Hong Kong Confidential (Amaya)',12,'TortorRisusDapibus.tiff'),(157,'Tillman Story, The',17,'Nulla.xls'),(158,'Hiding Place, The',6,'AliquamLacusMorbi.avi'),(159,'Laid To Rest',19,'MassaIdNisl.png'),(160,'Whale Rider',12,'Venenatis.txt'),(161,'Expecting Love (Mala wielka milosc)',10,'ProinEuMi.tiff'),(162,'Mademoiselle',4,'Nulla.mpeg'),(163,'Yogi Bear',17,'TinciduntIn.avi'),(164,'Little Women',16,'Varius.avi'),(165,'Loved One, The',6,'LeoMaecenasPulvinar.png'),(166,'Tales of Manhattan',20,'UltricesPosuereCubilia.mov'),(167,'Sherlock Holmes and the Masks of Death',15,'AmetDiam.ppt'),(168,'Mad Love',11,'FaucibusOrci.png'),(169,'Werewolf, The',12,'Amet.tiff'),(170,'Less is More (Menos es más)',10,'Nulla.mp3'),(171,'Konopielka',18,'QuamSuspendisse.jpeg'),(172,'Silent Night, Deadly Night 5: The Toy Maker',3,'Vel.mp3'),(173,'No Way Out',8,'TinciduntLacus.mp3'),(174,'Kongo',17,'LectusAliquam.pdf'),(175,'Fourth Angel, The',14,'Vestibulum.avi'),(176,'Warlords, The (Tau ming chong)',2,'Dictumst.txt'),(177,'Project Wild Thing',3,'AmetSapienDignissim.xls'),(178,'X-Men: The Last Stand',9,'MassaIdNisl.ppt'),(179,'My Dinner with André',19,'AliquetMassa.gif'),(180,'Eyes Wide Open (Einayim Petukhoth)',4,'ConsequatMetus.tiff'),(181,'[REC] 4: Apocalypse',6,'ProinInterdum.jpeg'),(182,'At Sea',5,'In.xls'),(183,'He Knows You\'re Alone (a.k.a. Blood Wedding)',6,'MetusAenean.jpeg'),(184,'WolfCop',19,'Vitae.xls'),(185,'Mudlark, The',8,'TortorRisus.mp3'),(187,'For Whom the Bell Tolls',14,'DiamNamTristique.ppt'),(188,'High Spirits',13,'Morbi.tiff'),(189,'The Expedition to the End of the World',15,'NibhQuisque.jpeg'),(190,'Shiny Smily Story',2,'shiny.mp3'),(191,'Evelyn',2,'VitaeConsectetuerEget.xls'),(192,'Forty-first, The (Sorok pervyy)',2,'MusVivamus.txt'),(194,'Curse of the Oily Man (Sumpah orang minyak) ',9,'NecNisiVolutpat.tiff'),(195,'Whistling in the Dark',18,'Sed.xls'),(197,'One Million Years B.C.',19,'EstQuamPharetra.avi'),(199,'Fern flowers (Fleur de fougère)',10,'NonPretiumQuis.mp3'),(200,'Story of Film: An Odyssey, The',18,'AcConsequat.jpe'),(201,'Iiwake Bunny',2,'iiwakecunny.mp3');
/*!40000 ALTER TABLE `song` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin@gmail.com','$2a$10$VT.yH.vyBWsC/rQmenRsbOMLAXO9cu1uXhBVQR8Cx2lnfqI5h9OPi','admin','Administrator',1),(2,'dholton1@4shared.com','B36g63Vnk4Py','dholton1','Dorie Holton',0),(3,'dsilk2@etsy.com','3KsCMl7J3SgV','dsilk2','Dorian Silk',0),(4,'srapo3@cnn.com','YkekazX','srapo3','Sapphira Rapo',0),(5,'gravens4@woothemes.com','bRc0vn6','gravens4','Germayne Ravens',0),(6,'obenzies5@vinaora.com','c1BzSwbY','obenzies5','Omero Benzies',0),(7,'hhawthorne6@java.com','FuKJP9iplObx','hhawthorne6','Holly Hawthorne',0),(8,'pwoolmington7@google.cn','fqjdTG42KN','pwoolmington7','Pryce Woolmington',0),(9,'uindgs8@gizmodo.com','CkR47kFVMc','uindgs8','Urbain Indgs',0),(10,'lmate9@posterous.com','YFIGcW199','lmate9','Liza Mate',0),(11,'wodcrofta@bloomberg.com','uIXc55gR','wodcrofta','Warren Odcroft',0),(12,'rcastletonb@globo.com','1HiHnS1pApQ','rcastletonb','Rori Castleton',0),(13,'cbonseyc@ucoz.ru','IcvteXkWJf','cbonseyc','Claudius Bonsey',0),(14,'rbentoted@1688.com','hAI96X29v','rbentoted','Rab Bentote',0),(15,'uixore@hp.com','sWcxlRf','uixore','Ula Ixor',0),(16,'rpinkettf@nytimes.com','qnGzOM','rpinkettf','Rhianon Pinkett',0),(17,'bbarleyg@altervista.org','UWrFZG6P','bbarleyg','Bobby Barley',0),(18,'gbasonh@yolasite.com','0or9xcGCYzH','gbasonh','Giulia Bason',0),(19,'zdecrusei@wunderground.com','0jNkhdgxs','zdecrusei','Zach Decruse',0),(20,'kmeirj@discuz.net','nQ0cbKGu6u','kmeirj','Krisha Meir',0);
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

-- Dump completed on 2022-11-19 13:19:58
