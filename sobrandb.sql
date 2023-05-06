-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: sobrandb2
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add so employee',7,'add_soemployee'),(26,'Can change so employee',7,'change_soemployee'),(27,'Can delete so employee',7,'delete_soemployee'),(28,'Can view so employee',7,'view_soemployee'),(29,'Can add so type',8,'add_sotype'),(30,'Can change so type',8,'change_sotype'),(31,'Can delete so type',8,'delete_sotype'),(32,'Can view so type',8,'view_sotype'),(33,'Can add so out',9,'add_soout'),(34,'Can change so out',9,'change_soout'),(35,'Can delete so out',9,'delete_soout'),(36,'Can view so out',9,'view_soout'),(37,'Can add shift',10,'add_shift'),(38,'Can change shift',10,'change_shift'),(39,'Can delete shift',10,'delete_shift'),(40,'Can view shift',10,'view_shift'),(41,'Can add shift',11,'add_shift'),(42,'Can change shift',11,'change_shift'),(43,'Can delete shift',11,'delete_shift'),(44,'Can view shift',11,'view_shift'),(45,'Can add so employee',13,'add_soemployee'),(46,'Can change so employee',13,'change_soemployee'),(47,'Can delete so employee',13,'delete_soemployee'),(48,'Can view so employee',13,'view_soemployee'),(49,'Can add so type',14,'add_sotype'),(50,'Can change so type',14,'change_sotype'),(51,'Can delete so type',14,'delete_sotype'),(52,'Can view so type',14,'view_sotype'),(53,'Can add SO Out',12,'add_soout'),(54,'Can change SO Out',12,'change_soout'),(55,'Can delete SO Out',12,'delete_soout'),(56,'Can view SO Out',12,'view_soout');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$9eylexKGOUF2TUuw56g593$3hKUbw4guy3uSDDqWhwOT4oNi1gitP3AXnNRBA8BR70=','2023-05-05 19:51:03.688018',1,'marco','','','',1,1,'2023-04-30 23:05:33.970247'),(2,'pbkdf2_sha256$600000$K5rjT4IIBY3KQQOFIlXEcG$u+zkcxs1l3PDA+qEOLb66zzOqWniZl3DcxakY2UnSVo=','2023-05-01 19:15:33.290669',0,'test','','','',1,1,'2023-05-01 19:14:39.000000'),(3,'pbkdf2_sha256$600000$ZYXunCnWw3KDhQCNCXdFib$TB+88W8Emw/Rpj1f+uYUzvzBEey7i7OX+yhMECa09RY=','2023-05-06 00:22:56.998286',1,'admin','','','',1,1,'2023-05-04 08:02:23.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (2,2,13),(1,2,16);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-01 00:58:06.807849','1','Tardy',1,'[{\"added\": {}}]',8,1),(2,'2023-05-01 00:58:13.889002','2','Call-out',1,'[{\"added\": {}}]',8,1),(3,'2023-05-01 00:58:26.359893','3','Vacation',1,'[{\"added\": {}}]',8,1),(4,'2023-05-01 00:58:31.152024','4','Left earlu',1,'[{\"added\": {}}]',8,1),(5,'2023-05-01 00:58:37.559371','4','Left early',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',8,1),(6,'2023-05-01 02:45:43.422764','8','Barr Aaliyah',3,'',9,1),(7,'2023-05-01 02:45:43.424764','22','Campbell Madison',3,'',9,1),(8,'2023-05-01 02:46:00.884158','11','Buie Shyann',3,'',9,1),(9,'2023-05-01 04:03:07.514640','54','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(10,'2023-05-01 04:04:00.514160','54','Barr Aaliyah',2,'[{\"changed\": {\"fields\": [\"Co time arrived\"]}}]',9,1),(11,'2023-05-01 04:04:16.958625','54','Barr Aaliyah',3,'',9,1),(12,'2023-05-01 04:17:11.081305','53','Barr Aaliyah',3,'',9,1),(13,'2023-05-01 04:17:11.082805','59','Buie Shyann',3,'',9,1),(14,'2023-05-01 06:13:35.033624','72','Archila German',1,'[{\"added\": {}}]',9,1),(15,'2023-05-01 14:43:15.026151','91','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(16,'2023-05-01 15:56:03.944765','104','Barr Aaliyah',2,'[{\"changed\": {\"fields\": [\"Co time arrived\"]}}]',9,1),(17,'2023-05-01 15:56:29.602787','102','Barr Aaliyah',3,'',9,1),(18,'2023-05-01 15:56:29.604787','104','Barr Aaliyah',3,'',9,1),(19,'2023-05-01 15:56:29.606287','103','Buie Shyann',3,'',9,1),(20,'2023-05-01 15:56:29.607287','105','Campbell Madison',3,'',9,1),(21,'2023-05-01 15:56:29.608800','92','Doan Johnny',3,'',9,1),(22,'2023-05-01 15:56:39.814685','106','Archila German',1,'[{\"added\": {}}]',9,1),(23,'2023-05-01 15:56:47.206388','106','Archila German',2,'[{\"changed\": {\"fields\": [\"Co time arrived\"]}}]',9,1),(24,'2023-05-01 19:11:47.161623','107','Barr Aaliyah',3,'',9,1),(25,'2023-05-01 19:11:47.163623','110','Archila German',3,'',9,1),(26,'2023-05-01 19:11:47.164623','111','Barr Aaliyah',3,'',9,1),(27,'2023-05-01 19:11:47.166123','112','Barr Aaliyah',3,'',9,1),(28,'2023-05-01 19:14:39.586514','2','test',1,'[{\"added\": {}}]',4,1),(29,'2023-05-01 19:15:20.125657','2','test',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"User permissions\"]}}]',4,1),(30,'2023-05-01 21:47:11.187812','115','Archila German',1,'[{\"added\": {}}]',9,1),(31,'2023-05-01 21:58:35.310713','115','Archila German',3,'',9,1),(32,'2023-05-01 21:58:35.312714','121','Archila German',3,'',9,1),(33,'2023-05-01 21:58:35.314214','119','Buie Shyann',3,'',9,1),(34,'2023-05-01 21:58:35.315216','122','Buie Shyann',3,'',9,1),(35,'2023-05-01 21:58:35.316715','116','Campbell Madison',3,'',9,1),(36,'2023-05-01 21:58:35.317215','117','Datcher Jeffrey',3,'',9,1),(37,'2023-05-01 21:58:35.318733','118','Doan Johnny',3,'',9,1),(38,'2023-05-01 21:58:35.320224','120','Green Sharneda',3,'',9,1),(39,'2023-05-02 01:32:22.267911','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(40,'2023-05-02 01:33:19.421103','129','Archila German',2,'[]',9,1),(41,'2023-05-02 01:33:38.398082','129','Archila German',2,'[]',9,1),(42,'2023-05-02 01:33:46.050951','129','Archila German',2,'[]',9,1),(43,'2023-05-02 01:34:38.733591','129','Archila German',2,'[]',9,1),(44,'2023-05-02 01:36:41.590604','129','Archila German',2,'[]',9,1),(45,'2023-05-02 01:36:58.699690','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(46,'2023-05-02 01:37:07.602676','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(47,'2023-05-02 01:37:36.168144','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(48,'2023-05-02 01:37:43.490245','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Date\"]}}]',9,1),(49,'2023-05-02 01:37:53.566365','129','Archila German',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(50,'2023-05-02 01:38:20.305698','130','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(51,'2023-05-02 01:38:44.124400','130','Barr Aaliyah',2,'[]',9,1),(52,'2023-05-02 01:39:00.857246','131','Buie Shyann',1,'[{\"added\": {}}]',9,1),(53,'2023-05-02 01:39:22.301745','129','Archila German',3,'',9,1),(54,'2023-05-02 01:39:22.303246','130','Barr Aaliyah',3,'',9,1),(55,'2023-05-02 01:39:22.304745','131','Buie Shyann',3,'',9,1),(56,'2023-05-02 02:25:57.358416','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(57,'2023-05-02 02:27:32.378400','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(58,'2023-05-02 02:28:12.452638','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\", \"Time Arrived\"]}}]',9,1),(59,'2023-05-02 03:01:54.897480','132','Campbell Madison',2,'[]',9,1),(60,'2023-05-02 03:02:02.998213','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(61,'2023-05-02 03:02:44.752146','132','Campbell Madison',2,'[]',9,1),(62,'2023-05-02 03:02:56.038515','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(63,'2023-05-02 03:03:17.032050','132','Campbell Madison',2,'[]',9,1),(64,'2023-05-02 03:05:03.291586','132','Campbell Madison',2,'[]',9,1),(65,'2023-05-02 03:05:07.451947','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(66,'2023-05-02 03:06:59.242198','132','Campbell Madison',2,'[]',9,1),(67,'2023-05-02 03:12:40.437470','133','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(68,'2023-05-02 03:14:24.486652','None','Buie Shyann',1,'[{\"added\": {}}]',9,1),(69,'2023-05-02 03:14:38.398025','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(70,'2023-05-02 03:14:54.237648','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(71,'2023-05-02 03:21:26.175280','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(72,'2023-05-02 03:22:12.421224','133','Barr Aaliyah',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(73,'2023-05-02 03:22:21.525235','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(74,'2023-05-02 03:22:48.638306','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(75,'2023-05-02 03:23:03.173534','132','Campbell Madison',2,'[{\"changed\": {\"fields\": [\"Type\", \"Time Arrived\"]}}]',9,1),(76,'2023-05-02 03:23:41.949201','135','Archila German',1,'[{\"added\": {}}]',9,1),(77,'2023-05-02 03:23:50.660501','133','Barr Aaliyah',2,'[{\"changed\": {\"fields\": [\"Type\", \"Date\", \"Time Arrived\"]}}]',9,1),(78,'2023-05-02 03:23:58.240315','135','Archila German',2,'[{\"changed\": {\"fields\": [\"Type\", \"Date\", \"Time Arrived\"]}}]',9,1),(79,'2023-05-02 03:29:04.954252','136','Green Sharneda',1,'[{\"added\": {}}]',9,1),(80,'2023-05-02 03:36:28.459103','136','Green Sharneda',2,'[]',9,1),(81,'2023-05-02 03:37:13.329830','137','Corbin Gregory',1,'[{\"added\": {}}]',9,1),(82,'2023-05-02 03:45:16.496533','138','Buie Shyann',1,'[{\"added\": {}}]',9,1),(83,'2023-05-02 03:45:41.214602','135','Archila German',3,'',9,1),(84,'2023-05-02 03:45:41.216541','133','Barr Aaliyah',3,'',9,1),(85,'2023-05-02 03:45:41.217541','138','Buie Shyann',3,'',9,1),(86,'2023-05-02 03:45:41.218541','132','Campbell Madison',3,'',9,1),(87,'2023-05-02 03:45:41.220581','137','Corbin Gregory',3,'',9,1),(88,'2023-05-02 03:45:41.221583','136','Green Sharneda',3,'',9,1),(89,'2023-05-02 03:45:49.797985','139','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(90,'2023-05-02 03:53:22.828817','139','Barr Aaliyah',3,'',9,1),(91,'2023-05-02 03:53:31.232408','140','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(92,'2023-05-02 03:54:55.803853','141','Campbell Madison',1,'[{\"added\": {}}]',9,1),(93,'2023-05-02 03:58:23.016442','142','Franks Jaden',1,'[{\"added\": {}}]',9,1),(94,'2023-05-02 04:00:00.841206','145','Durant Devin',1,'[{\"added\": {}}]',9,1),(95,'2023-05-02 04:00:12.083056','140','Barr Aaliyah',3,'',9,1),(96,'2023-05-02 04:00:12.084057','141','Campbell Madison',3,'',9,1),(97,'2023-05-02 04:00:12.086077','143','Datcher Jeffrey',3,'',9,1),(98,'2023-05-02 04:00:12.087077','144','Doan Johnny',3,'',9,1),(99,'2023-05-02 04:00:12.088577','145','Durant Devin',3,'',9,1),(100,'2023-05-02 04:00:12.089577','142','Franks Jaden',3,'',9,1),(101,'2023-05-02 04:00:24.327048','146','Cofield Haywood',1,'[{\"added\": {}}]',9,1),(102,'2023-05-02 04:00:43.958132','147','Buie Shyann',1,'[{\"added\": {}}]',9,1),(103,'2023-05-02 04:02:45.998210','147','Buie Shyann',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(104,'2023-05-02 04:04:15.940711','146','Cofield Haywood',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(105,'2023-05-02 04:04:27.142025','146','Cofield Haywood',2,'[{\"changed\": {\"fields\": [\"Type\", \"Time Arrived\"]}}]',9,1),(106,'2023-05-02 04:08:43.881899','149','Barr Aaliyah',2,'[]',9,1),(107,'2023-05-02 04:08:52.824419','146','Cofield Haywood',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(108,'2023-05-02 04:09:18.704470','149','Barr Aaliyah',3,'',9,1),(109,'2023-05-02 04:09:18.706496','148','Barr Aaliyah',3,'',9,1),(110,'2023-05-02 04:09:18.707496','146','Cofield Haywood',3,'',9,1),(111,'2023-05-02 04:09:27.168770','150','Barr Aaliyah',1,'[{\"added\": {}}]',9,1),(112,'2023-05-02 04:10:11.915248','151','Buie Shyann',1,'[{\"added\": {}}]',9,1),(113,'2023-05-02 04:11:34.748690','152','Corbin Gregory',1,'[{\"added\": {}}]',9,1),(114,'2023-05-02 04:11:51.883650','151','Buie Shyann',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(115,'2023-05-02 04:12:07.402995','150','Barr Aaliyah',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(116,'2023-05-02 04:13:01.658539','151','Buie Shyann',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(117,'2023-05-02 04:20:09.887098','153','Eliott Stefon',1,'[{\"added\": {}}]',9,1),(118,'2023-05-02 05:37:47.245809','32','test_user',1,'[{\"added\": {}}]',7,1),(119,'2023-05-02 05:38:41.153953','154','Holly',1,'[{\"added\": {}}]',9,1),(120,'2023-05-02 05:39:00.608943','154','Holly',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(121,'2023-05-02 05:39:16.226830','154','Holly',3,'',9,1),(122,'2023-05-02 05:39:31.592611','31','Holly',3,'',7,1),(123,'2023-05-02 17:37:34.190385','156','test_user',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(124,'2023-05-02 17:37:43.605626','156','test_user',2,'[{\"changed\": {\"fields\": [\"Type\"]}}]',9,1),(125,'2023-05-02 17:37:49.620353','156','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(126,'2023-05-02 17:46:33.777580','156','test_user',2,'[]',9,1),(127,'2023-05-02 17:52:43.178529','156','test_user',2,'[]',9,1),(128,'2023-05-02 18:17:39.332269','156','test_user',3,'',9,1),(129,'2023-05-02 18:18:08.243601','157','test_user',1,'[{\"added\": {}}]',9,1),(130,'2023-05-02 20:05:58.252303','158','test_user',1,'[{\"added\": {}}]',9,1),(131,'2023-05-02 20:06:24.060591','158','test_user',3,'',9,1),(132,'2023-05-02 20:06:24.062598','157','test_user',3,'',9,1),(133,'2023-05-02 20:07:22.784952','159','test_user',1,'[{\"added\": {}}]',9,1),(134,'2023-05-02 20:08:13.755597','159','test_user',2,'[]',9,1),(135,'2023-05-02 20:11:34.356488','160','test_user',1,'[{\"added\": {}}]',9,1),(136,'2023-05-02 20:22:40.167617','160','test_user',2,'[]',9,1),(137,'2023-05-02 20:23:14.471599','161','test_user',1,'[{\"added\": {}}]',9,1),(138,'2023-05-02 20:23:32.488192','159','test_user',3,'',9,1),(139,'2023-05-02 20:23:32.490121','160','test_user',3,'',9,1),(140,'2023-05-02 20:23:32.491622','161','test_user',3,'',9,1),(141,'2023-05-02 20:24:42.240222','162','test_user',1,'[{\"added\": {}}]',9,1),(142,'2023-05-02 20:26:11.984426','162','test_user',2,'[]',9,1),(143,'2023-05-02 20:26:35.944780','162','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(144,'2023-05-02 20:31:52.809967','162','test_user',3,'',9,1),(145,'2023-05-02 20:33:41.879288','163','test_user',1,'[{\"added\": {}}]',9,1),(146,'2023-05-02 22:01:58.707521','163','test_user',2,'[]',9,1),(147,'2023-05-02 22:08:18.995930','163','test_user',2,'[]',9,1),(148,'2023-05-02 22:08:39.219961','163','test_user',2,'[]',9,1),(149,'2023-05-02 22:09:50.891530','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(150,'2023-05-02 22:10:24.388811','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(151,'2023-05-02 22:10:37.090737','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(152,'2023-05-02 22:11:01.002860','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(153,'2023-05-02 22:11:25.459070','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(154,'2023-05-02 22:13:00.152097','163','test_user',2,'[]',9,1),(155,'2023-05-02 22:14:05.949767','163','test_user',2,'[]',9,1),(156,'2023-05-02 22:14:19.270533','163','test_user',2,'[]',9,1),(157,'2023-05-02 22:14:55.613937','163','test_user',2,'[]',9,1),(158,'2023-05-02 22:15:12.851820','163','test_user',2,'[]',9,1),(159,'2023-05-02 22:15:53.810834','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(160,'2023-05-02 22:16:42.048417','163','test_user',2,'[{\"changed\": {\"fields\": [\"Time Arrived\"]}}]',9,1),(161,'2023-05-04 00:14:13.134938','25','Shift object (25)',2,'[{\"changed\": {\"fields\": [\"Yellow Start\", \"Red Start\"]}}]',11,1),(162,'2023-05-04 00:34:46.278721','25','Shift object (25)',2,'[{\"changed\": {\"fields\": [\"Yellow Start\", \"Red Start\"]}}]',11,1),(163,'2023-05-04 08:02:23.815643','3','admin',1,'[{\"added\": {}}]',4,1),(164,'2023-05-04 08:02:35.471623','3','admin',2,'[{\"changed\": {\"fields\": [\"Staff status\", \"Superuser status\"]}}]',4,1),(165,'2023-05-04 14:22:21.662846','32','test_user',3,'',13,3),(166,'2023-05-04 19:49:15.094709','25','Zone start time',2,'[{\"changed\": {\"fields\": [\"Yellow Zone Start\", \"Red Zone Start\"]}}]',11,3),(167,'2023-05-04 22:33:33.742919','33','Carmichael Cynthia',1,'[{\"added\": {}}]',13,3),(168,'2023-05-04 22:34:00.763943','34','Palermo William',1,'[{\"added\": {}}]',13,3),(169,'2023-05-05 21:28:09.386637','33','Carmichael Cynthia',2,'[{\"changed\": {\"fields\": [\"Zone\"]}}]',13,3),(170,'2023-05-05 21:28:23.245064','34','Palermo William',2,'[{\"changed\": {\"fields\": [\"Zone\"]}}]',13,3);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(10,'dashboard','shift'),(7,'dashboard','soemployee'),(9,'dashboard','soout'),(8,'dashboard','sotype'),(11,'employees','shift'),(13,'employees','soemployee'),(12,'employees','soout'),(14,'employees','sotype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-04-30 18:25:06.117297'),(2,'auth','0001_initial','2023-04-30 18:25:06.362850'),(3,'admin','0001_initial','2023-04-30 18:25:06.422671'),(4,'admin','0002_logentry_remove_auto_add','2023-04-30 18:25:06.427692'),(5,'admin','0003_logentry_add_action_flag_choices','2023-04-30 18:25:06.432693'),(6,'contenttypes','0002_remove_content_type_name','2023-04-30 18:25:06.467778'),(7,'auth','0002_alter_permission_name_max_length','2023-04-30 18:25:06.490301'),(8,'auth','0003_alter_user_email_max_length','2023-04-30 18:25:06.505212'),(9,'auth','0004_alter_user_username_opts','2023-04-30 18:25:06.510713'),(10,'auth','0005_alter_user_last_login_null','2023-04-30 18:25:06.535702'),(11,'auth','0006_require_contenttypes_0002','2023-04-30 18:25:06.537865'),(12,'auth','0007_alter_validators_add_error_messages','2023-04-30 18:25:06.542867'),(13,'auth','0008_alter_user_username_max_length','2023-04-30 18:25:06.568901'),(14,'auth','0009_alter_user_last_name_max_length','2023-04-30 18:25:06.593002'),(15,'auth','0010_alter_group_name_max_length','2023-04-30 18:25:06.605941'),(16,'auth','0011_update_proxy_permissions','2023-04-30 18:25:06.611442'),(17,'auth','0012_alter_user_first_name_max_length','2023-04-30 18:25:06.636195'),(18,'dashboard','0001_initial','2023-04-30 18:25:06.695278'),(19,'sessions','0001_initial','2023-04-30 18:25:06.722319'),(20,'dashboard','0002_remove_soout_red_zone_time_and_more','2023-04-30 23:06:12.347427'),(21,'dashboard','0003_alter_soout_co_time_arrived','2023-05-01 02:15:41.942493'),(22,'dashboard','0004_alter_soout_co_time_arrived','2023-05-01 02:21:28.854155'),(23,'dashboard','0005_alter_soout_co_time_arrived','2023-05-01 02:59:16.206315'),(24,'dashboard','0006_alter_soout_co_date_alter_soout_co_time_arrived','2023-05-01 04:03:49.337261'),(25,'dashboard','0007_alter_soout_co_date','2023-05-01 06:32:07.731956'),(26,'dashboard','0008_alter_soout_co_date','2023-05-01 21:04:05.414281'),(27,'dashboard','0009_alter_soemployee_em_name_alter_soemployee_em_zone_and_more','2023-05-02 03:57:47.971579'),(28,'dashboard','0010_alter_soemployee_em_name_alter_soout_co_date_and_more','2023-05-02 04:16:33.434699'),(29,'dashboard','0005_shift_alter_soout_co_time_arrived','2023-05-02 09:53:59.939953'),(30,'dashboard','0006_alter_shift_red_start_alter_shift_yellow_start_and_more','2023-05-02 09:56:32.549651'),(31,'dashboard','0006_alter_soout_co_time_arrived','2023-05-02 12:04:43.344352'),(32,'dashboard','0007_alter_shift_options_alter_soout_co_time_arrived_and_more','2023-05-02 12:06:29.450705'),(33,'dashboard','0008_alter_soout_co_time_arrived','2023-05-02 12:16:14.048980'),(34,'dashboard','0009_alter_soout_co_time_arrived','2023-05-02 12:16:56.054517'),(35,'dashboard','0002_alter_soemployee_em_name_alter_soout_co_fk_em_id_key_and_more','2023-05-02 19:57:42.202599'),(36,'dashboard','0006_alter_soout_co_fk_type_id_key_and_more','2023-05-02 22:18:45.016612'),(37,'employees','0001_initial','2023-05-05 21:25:54.670997'),(38,'employees','0002_alter_soout_options_shift_green_zone_and_more','2023-05-05 21:25:54.688322'),(39,'employees','0003_alter_soout_co_time_arrived','2023-05-05 21:26:12.263367'),(40,'employees','0004_rename_green_zone_shift_green_start_and_more','2023-05-05 21:30:14.276662');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('2kf9ye7098rgcn028fqe0upiyu3qmhx0','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptnGL:bPkFUdnkqGecFAAtsejRGVXqd8V-4V7a-rLR7PDKXUg','2023-05-16 10:29:37.812163'),('2uuef1cyi3z1b2496eehj3v12xb5sj51','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1pugiE:i-ciZwkoFogzSuprMrsS6j-GsIdzRTj-H6aE-rN0ONs','2023-05-18 21:42:06.194824'),('3fgihkclw1rmcxx8c5mcz9us8yrdwjkd','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puzR8:k2MpLuu3__fHylac1Vgb-vwAgRIfx-ouI5cKXq0TftA','2023-05-19 17:41:42.243346'),('510xoqik97qpah4bvl9v34j35mguu6c8','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptfDQ:mLdqSZk8n1M1j1PmyHALGLggGp8TUrdhdf61pQnnCOc','2023-05-16 01:54:04.546247'),('8kwx73n5w1fg5ibzsqt44f7oo0p79uxm','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puxVP:w09PgAQ53Bfcn-C1y8l219W4E2CmTM3MHwHTkzZjc3c','2023-05-19 15:37:59.967513'),('9qjc5hvur642xivaqsvmth7cx498njb8','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puLt8:1iSBzKQpIcyhmdF9GKew9_xq5NqSs1XosgodGFhNNqk','2023-05-17 23:27:58.382811'),('amfemhgx5inov8w830if1j4jqzybonzv','.eJxVjEEOwiAQRe_C2hCYQqEu3fcMhJkBqRqalHZlvLtt0oVu_3vvv0WI21rC1tISJhZX0YnL74aRnqkegB-x3mdJc12XCeWhyJM2Oc6cXrfT_TsosZW9VspZ02NWQJrQsc_e9Hmw0cPAWaFn4kzOJ7AI3kRloQO9i5qArTPi8wXk9DfT:1puTvI:Pdb5VeGDm6VOfr7ScgyaOhpbAo0CGEQrTXEqdRHEZCw','2023-05-18 08:02:44.237998'),('bpehpd6af6l75kal0ds9u4yeg7c3q1rh','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puMvE:ZVI2hPPt2qGAJ2YSlDkTHA7pEUKmloy2Dj8QgGv_Czg','2023-05-18 00:34:12.586241'),('chlz8gg4cc9r9rq8vfqtqdk3znb6dj12','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptxPd:gWuNBCw7PTHAUl1R4kxaoGT5G484eawulqV3615H1zU','2023-05-16 21:19:53.505249'),('fq9clwcg5ikyxi2jdls7eysiu4rn45b1','.eJxVjEEOwiAQRe_C2hCYQqEu3fcMhJkBqRqalHZlvLtt0oVu_3vvv0WI21rC1tISJhZX0YnL74aRnqkegB-x3mdJc12XCeWhyJM2Oc6cXrfT_TsosZW9VspZ02NWQJrQsc_e9Hmw0cPAWaFn4kzOJ7AI3kRloQO9i5qArTPi8wXk9DfT:1pv5hR:LqkQ7eIjawDzYQn7D52QBL7qUvaLMWPZyrIq39nvQu0','2023-05-20 00:22:57.000286'),('ga9b2gjbe47x2miulr13jrbxcvdfs2se','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptZxt:U5csOcM6cg4NTH72vXR4qBDwLOsN2M7gYD6mgZl934o','2023-05-15 20:17:41.910271'),('i8xhinukpblicpfpqdno0utnthgut70n','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1pudCc:d0x3G7is8fXfjSswH4rZOG3s8nClk6Q5Ue5WnmotfjE','2023-05-18 17:57:14.055590'),('j1tcweruh8uo5j8h630whor1r5imuogo','.eJxVjEEOwiAQRe_C2hCYQqEu3fcMhJkBqRqalHZlvLtt0oVu_3vvv0WI21rC1tISJhZX0YnL74aRnqkegB-x3mdJc12XCeWhyJM2Oc6cXrfT_TsosZW9VspZ02NWQJrQsc_e9Hmw0cPAWaFn4kzOJ7AI3kRloQO9i5qArTPi8wXk9DfT:1pujZl:IhKiVo6pQd_VWu2TW670VnsVvT1lADA_KOdneO8GylQ','2023-05-19 00:45:33.797808'),('jqpqs1fuicmwbtc3mh56ia80ad7v3hus','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptf4J:4rnxhQgI3nZews7BZswDHvtaBhky-lYDjpOiHsKabWg','2023-05-16 01:44:39.623455'),('klutw5ryx0pluxp3jesrc4f0h7ygnb9j','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puIRn:U09nIv9ML01YREDHULntonVmNODnC3eX7srIOcPI_Jg','2023-05-17 19:47:31.985153'),('p15j5wyhv1hi3sty9p8pfrkfht2p3qse','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puLjc:rUtxYYV-kysRO-4oPV5Mwa5HpvQ095Lko1Gf0RtXC8Q','2023-05-17 23:18:08.578217'),('q3odnkhpc5xd9k1i1gt8zz0wdsobjq8q','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1puTEp:NkWT80kUv6v8zD4GUKF0_wgbEfY_IVNYNsKD-co9HR4','2023-05-18 07:18:51.603926'),('snqjye14b4hinbsace5h194330v0a8dt','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptsSK:VBxEOE7PdnPbhUnZZR0qFJeGM1jHSYvPpyES0-LHHVE','2023-05-16 16:02:20.763635'),('uuqth4565pazga6lh2j6xvh6spxebtag','.eJxVjM0OwiAQhN-FsyGy_Gzr0bvPQIBdpGogKe3J-O62SQ96nPm-mbfwYV2KXzvPfiJxEUqcfrsY0pPrDugR6r3J1OoyT1Huijxol7dG_Loe7t9BCb1s62EcB9AA1mUm1JGZc9JskBQAna11YBJYxTkzGnSkY8xo0ZgtmKjF5wvbZjeL:1pv1SJ:AQvWYTQbkm1lUscDMYpAUQJlWxtxv0kjwj_9oywUOUg','2023-05-19 19:51:03.690489'),('vklyjxf2aft1hshc26shyv7cc1ybmb9y','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptikT:ZIQ28Bjz35XGRPI7tV7q_nZlvBQ3Cv2jbn7-8gEnnws','2023-05-16 05:40:25.547555'),('zgdqrk35b6yb6c2pfe3ivqae8l5tc4lg','.eJxVjEEOwiAQRe_C2hAQKODSfc9AZoapVA0kpV0Z765NutDtf-_9l0iwrSVtnZc0Z3ERWpx-NwR6cN1BvkO9NUmtrsuMclfkQbscW-bn9XD_Dgr08q2N1Y4tqskHyto6o4MPXg0UIw7ggJkjKdKUvYHJni0DAWZWQD4yevH-AN-aOL8:1ptaUd:_l06fCsRjtVxcfkRXtG9ZA5T8OoWyuScGjOX8mWPjkI','2023-05-15 20:51:31.658558');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiftstart`
--

DROP TABLE IF EXISTS `shiftstart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shiftstart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `yellow_start` time(6) DEFAULT NULL,
  `red_start` time(6) DEFAULT NULL,
  `green_start` time(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiftstart`
--

LOCK TABLES `shiftstart` WRITE;
/*!40000 ALTER TABLE `shiftstart` DISABLE KEYS */;
INSERT INTO `shiftstart` VALUES (25,'06:15:00.000000','05:00:00.000000','04:45:00.000000');
/*!40000 ALTER TABLE `shiftstart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_employees`
--

DROP TABLE IF EXISTS `so_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_employees` (
  `em_id_key` int NOT NULL AUTO_INCREMENT,
  `em_name` varchar(50) DEFAULT NULL,
  `em_zone` int DEFAULT NULL,
  PRIMARY KEY (`em_id_key`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_employees`
--

LOCK TABLES `so_employees` WRITE;
/*!40000 ALTER TABLE `so_employees` DISABLE KEYS */;
INSERT INTO `so_employees` VALUES (2,'Archila German',2),(3,'Barr Aaliyah',1),(4,'Buie Shyann',2),(5,'Campbell Madison',2),(6,'Cofield Haywood',2),(7,'Corbin Gregory',1),(8,'Datcher Jeffrey',2),(9,'Doan Johnny',1),(10,'Durant Devin',2),(11,'Eliott Stefon',2),(12,'Franks Jaden',2),(13,'Green Sharneda',2),(14,'Hamlin Charlles',2),(15,'Handy Taylor',2),(16,'Inscoe Donovan',2),(17,'Jones Bria',2),(18,'Jones Travina',2),(19,'Maxfield Myesha',2),(20,'McDowell Devin',1),(21,'Millard Kapria',2),(22,'Mosby Destini',2),(23,'Nielsen Rebecca',2),(24,'Plesant Princes',2),(25,'Rush MyAja',2),(26,'Spikes Benjamin',2),(27,'Waring Rodney',2),(28,'West Randall',1),(29,'Williams Rosalie',2),(30,'Wolff Jorge',1),(33,'Carmichael Cynthia',3),(34,'Palermo William',3);
/*!40000 ALTER TABLE `so_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_outs`
--

DROP TABLE IF EXISTS `so_outs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_outs` (
  `co_id_key` int NOT NULL AUTO_INCREMENT,
  `co_date` date DEFAULT NULL,
  `co_time_arrived` time(6) DEFAULT NULL,
  `co_time_dif` varchar(45) DEFAULT NULL,
  `co_fk_em_id_key_id` int DEFAULT NULL,
  `co_fk_type_id_key_id` int DEFAULT NULL,
  PRIMARY KEY (`co_id_key`),
  KEY `so_outs_co_fk_em_id_key_id_4e65970a` (`co_fk_em_id_key_id`),
  KEY `so_outs_co_fk_type_id_key_id_a53935f1_fk_so_types_type_id_key` (`co_fk_type_id_key_id`),
  CONSTRAINT `so_outs_co_fk_em_id_key_id_4e65970a_fk_so_employees_em_id_key` FOREIGN KEY (`co_fk_em_id_key_id`) REFERENCES `so_employees` (`em_id_key`),
  CONSTRAINT `so_outs_co_fk_type_id_key_id_a53935f1_fk_so_types_type_id_key` FOREIGN KEY (`co_fk_type_id_key_id`) REFERENCES `so_types` (`type_id_key`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_outs`
--

LOCK TABLES `so_outs` WRITE;
/*!40000 ALTER TABLE `so_outs` DISABLE KEYS */;
INSERT INTO `so_outs` VALUES (266,'2023-04-24','06:22:00.000000','0:07',27,1),(267,'2023-04-24','06:23:00.000000','0:08',22,1),(268,'2023-04-24','06:34:00.000000','0:19',29,1),(269,'2023-04-24','11:38:00.000000','5:23',19,1),(273,'2023-04-25','06:22:00.000000','0:07',27,1),(274,'2023-04-25','06:22:00.000000','0:07',5,1),(275,'2023-04-25','06:22:00.000000','0:07',10,1),(276,'2023-04-25','06:23:00.000000','0:08',22,1),(277,'2023-04-25','06:24:00.000000','0:09',17,1),(278,'2023-04-25','06:24:00.000000','0:09',4,1),(279,'2023-04-25','06:32:00.000000','0:17',24,1),(280,'2023-04-26','06:18:00.000000','0:03',27,1),(281,'2023-04-26','06:18:00.000000','0:03',17,1),(282,'2023-04-26','06:18:00.000000','0:03',24,1),(283,'2023-04-26','06:18:00.000000','0:03',21,1),(284,'2023-04-26','06:19:00.000000','0:04',22,1),(285,'2023-04-26','06:19:00.000000','0:04',29,1),(286,'2023-04-27','06:17:00.000000','0:02',22,1),(287,'2023-04-27','06:17:00.000000','0:02',10,1),(288,'2023-04-27','06:18:00.000000','0:03',17,1),(289,'2023-04-27','06:18:00.000000','0:03',21,1),(290,'2023-04-27','08:40:00.000000','2:25',27,1),(291,'2023-04-28','06:19:00.000000','0:04',21,1),(292,'2023-04-28','06:22:00.000000','0:07',5,1),(293,'2023-04-28','06:23:00.000000','0:08',2,1),(294,'2023-04-28','06:47:00.000000','0:32',10,1),(295,'2023-05-01','06:35:00.000000','0:20',19,1),(296,'2023-04-26',NULL,'None',7,2),(297,'2023-04-28',NULL,'None',7,2),(298,'2023-05-01',NULL,'None',8,2),(300,'2023-05-02',NULL,'None',24,2),(301,'2023-04-24',NULL,'None',20,3),(302,'2023-04-25',NULL,'None',20,3),(303,'2023-04-26',NULL,'None',20,3),(304,'2023-04-26',NULL,'None',7,3),(305,'2023-04-27',NULL,'None',20,3),(306,'2023-04-28',NULL,'None',7,3),(307,'2023-04-27',NULL,'None',33,3),(308,'2023-04-28',NULL,'None',33,3),(309,'2023-05-01',NULL,'None',34,3),(310,'2023-05-02',NULL,'None',34,3),(320,'2023-05-05','05:45:00.000000','1:00',33,1),(321,'2023-05-05','05:50:00.000000','1:05',34,1),(322,'2023-05-05','06:15:00.000000','0:00',11,1);
/*!40000 ALTER TABLE `so_outs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_types`
--

DROP TABLE IF EXISTS `so_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_types` (
  `type_id_key` int NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`type_id_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_types`
--

LOCK TABLES `so_types` WRITE;
/*!40000 ALTER TABLE `so_types` DISABLE KEYS */;
INSERT INTO `so_types` VALUES (1,'Tardy'),(2,'Call-out'),(3,'Vacation'),(4,'Left early');
/*!40000 ALTER TABLE `so_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-05 20:31:16
