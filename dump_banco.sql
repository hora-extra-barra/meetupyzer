-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: meetupyzer
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.12.04.1-log

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
-- Table structure for table `announcers_announcer`
--

DROP TABLE IF EXISTS `announcers_announcer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcers_announcer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `bio` longtext,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcers_announcer`
--

LOCK TABLES `announcers_announcer` WRITE;
/*!40000 ALTER TABLE `announcers_announcer` DISABLE KEYS */;
INSERT INTO `announcers_announcer` VALUES (1,'Leidson','','./0.jpg','email@ad.com');
/*!40000 ALTER TABLE `announcers_announcer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `archives_archive`
--

DROP TABLE IF EXISTS `archives_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `archives_archive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `talk_file` varchar(100) DEFAULT NULL,
  `talk_type` varchar(1) NOT NULL,
  `talk_url` varchar(255) DEFAULT NULL,
  `talk_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `archives_archive_talk_id_770d3bfc12e9b012_fk_talks_talk_id` (`talk_id`),
  CONSTRAINT `archives_archive_talk_id_770d3bfc12e9b012_fk_talks_talk_id` FOREIGN KEY (`talk_id`) REFERENCES `talks_talk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `archives_archive`
--

LOCK TABLES `archives_archive` WRITE;
/*!40000 ALTER TABLE `archives_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `archives_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add log entry',6,'add_logentry'),(17,'Can change log entry',6,'change_logentry'),(18,'Can delete log entry',6,'delete_logentry'),(19,'Can add organization',7,'add_organization'),(20,'Can change organization',7,'change_organization'),(21,'Can delete organization',7,'delete_organization'),(22,'Can add Meetup',8,'add_meetup'),(23,'Can change Meetup',8,'change_meetup'),(24,'Can delete Meetup',8,'delete_meetup'),(25,'Can add Talk',9,'add_talk'),(26,'Can change Talk',9,'change_talk'),(27,'Can delete Talk',9,'delete_talk'),(28,'Can add Palestrante',10,'add_announcer'),(29,'Can change Palestrante',10,'change_announcer'),(30,'Can delete Palestrante',10,'delete_announcer'),(31,'Can add Usuário',11,'add_user'),(32,'Can change Usuário',11,'change_user'),(33,'Can delete Usuário',11,'delete_user'),(34,'Can add Arquivo',12,'add_archive'),(35,'Can change Arquivo',12,'change_archive'),(36,'Can delete Arquivo',12,'delete_archive');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$20000$j0IheysKdJgm$+nQIhJqqR5+fXeopg9Anuwhh6/wWzErLKqQAwGf1ua8=','2015-04-28 14:31:58',1,'admin','','','admin@admin.com',1,1,'2015-04-28 14:30:38');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `djang_content_type_id_697914295151027a_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-04-28 14:43:43','1','Organization object',1,'',7,1),(2,'2015-04-28 16:30:34','1','Leidson',1,'',10,1),(3,'2015-04-28 16:34:01','4','AngularJS Brasil #1 Edition',1,'',8,1),(4,'2015-04-28 16:35:04','2','Getting started Leidson',1,'',9,1),(5,'2015-04-28 16:40:51','1','Leidson',1,'',11,1),(6,'2015-04-28 19:10:11','1','AngularJS Brasil',2,'Modificado logo.',7,1),(7,'2015-04-29 17:37:08','2','admin',1,'',11,1),(8,'2015-04-29 17:37:18','1','Lele',2,'Modificado is_admin.',11,1),(10,'2015-04-29 19:22:42','5','AngularJS Brasil #2 Edition',1,'',8,1),(11,'2015-04-29 20:06:45','3','Getting started 2 : Leidson',1,'',9,1),(12,'2015-04-29 20:06:54','4','Getting started 1 : Leidson',1,'',9,1),(13,'2015-04-29 21:06:29','1','Leidson',2,'Modificado photo.',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(10,'announcers','announcer'),(12,'archives','archive'),(2,'auth','group'),(1,'auth','permission'),(4,'contenttypes','contenttype'),(8,'meetups','meetup'),(7,'organizations','organization'),(5,'sessions','session'),(9,'talks','talk'),(11,'users','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2015-04-28 14:30:17'),(2,'auth','0001_initial','2015-04-28 14:30:26'),(3,'admin','0001_initial','2015-04-28 14:30:27'),(4,'contenttypes','0002_remove_content_type_name','2015-04-28 14:30:28'),(5,'auth','0002_alter_permission_name_max_length','2015-04-28 14:30:28'),(6,'auth','0003_alter_user_email_max_length','2015-04-28 14:30:28'),(7,'auth','0004_alter_user_username_opts','2015-04-28 14:30:28'),(8,'auth','0005_alter_user_last_login_null','2015-04-28 14:30:29'),(9,'auth','0006_require_contenttypes_0002','2015-04-28 14:30:29'),(10,'sessions','0001_initial','2015-04-28 14:30:29'),(11,'organizations','0001_initial','2015-04-28 14:40:59'),(12,'organizations','0002_auto_20150428_1443','2015-04-28 14:43:31'),(13,'organizations','0003_auto_20150428_1457','2015-04-28 14:57:10'),(14,'meetups','0001_initial','2015-04-28 14:57:11'),(15,'meetups','0002_auto_20150428_1459','2015-04-28 14:59:05'),(16,'announcers','0001_initial','2015-04-28 16:30:08'),(17,'meetups','0003_auto_20150428_1630','2015-04-28 16:30:08'),(18,'talks','0001_initial','2015-04-28 16:30:09'),(19,'users','0001_initial','2015-04-28 16:40:30'),(20,'archives','0001_initial','2015-04-28 16:51:45'),(21,'archives','0002_auto_20150428_1652','2015-04-28 16:52:23'),(22,'archives','0003_auto_20150428_1655','2015-04-28 16:55:23'),(23,'users','0002_user_active','2015-04-29 14:01:25'),(24,'users','0003_auto_20150429_1412','2015-04-29 14:12:54'),(25,'users','0004_user_name','2015-04-29 14:22:32'),(26,'users','0005_auto_20150429_1446','2015-04-29 14:46:46'),(27,'users','0006_user_is_admin','2015-04-29 14:52:50'),(28,'users','0007_auto_20150429_1456','2015-04-29 14:57:04'),(29,'users','0008_auto_20150429_1458','2015-04-29 14:58:07'),(30,'announcers','0002_announcer_email','2015-04-29 16:50:22'),(31,'meetups','0004_auto_20150429_2110','2015-04-29 21:10:39'),(32,'talks','0002_auto_20150429_2110','2015-04-29 21:10:39'),(33,'users','0009_auto_20150429_2110','2015-04-29 21:10:41');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('8vltvpvu0ksnvcwlnhu9zboojoestubm','YzE5ZThjNWM0MDYxZWIyYzkyZjI3MTllNDNkNjg3NjM4OTM4NmE2Yjp7Il9hdXRoX3VzZXJfaGFzaCI6IjhkOWJlNDM2Yzk3MTk3OWU1MWRhMDY5MTlmZTk1ZGM3NmUzZGJhY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=','2015-05-13 17:41:00'),('zuwb02k7judx8aio7rtpb6e7alfe5b6n','NmRlZjUyYWUwZTE4ZTQ0MjgwOTExZGQ2ZjMzYjBmMTZjZDMxYjdlYzp7Il9hdXRoX3VzZXJfaGFzaCI6IjhkOWJlNDM2Yzk3MTk3OWU1MWRhMDY5MTlmZTk1ZGM3NmUzZGJhY2EiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=','2015-05-13 21:59:57');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetups_meetup`
--

DROP TABLE IF EXISTS `meetups_meetup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetups_meetup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `edition` varchar(255) NOT NULL,
  `description` longtext,
  `cover_image` varchar(100) DEFAULT NULL,
  `hashtag` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `day_of_meet` datetime NOT NULL,
  `vacancies` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `edition` (`edition`),
  KEY `efc60170a6cf2414c2563d8685c50df3` (`organization_id`),
  CONSTRAINT `efc60170a6cf2414c2563d8685c50df3` FOREIGN KEY (`organization_id`) REFERENCES `organizations_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetups_meetup`
--

LOCK TABLES `meetups_meetup` WRITE;
/*!40000 ALTER TABLE `meetups_meetup` DISABLE KEYS */;
INSERT INTO `meetups_meetup` VALUES (4,'#1 Edition','','','','Avenida Lucio Costa, 3400','2015-04-28 16:33:58',10,1),(5,'#2 Edition','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur a mattis ipsum. Phasellus euismod tellus vitae augue venenatis pellentesque. Morbi a tempus ipsum. Etiam eleifend ligula nec ligula mattis sagittis. Aliquam vel nulla nunc. Etiam venenatis ante tempor leo volutpat, ac tempor metus placerat. Phasellus sit amet ex consequat, posuere neque vel, molestie augue. Integer nisi eros, vehicula eget urna non, posuere dictum mauris. In hac habitasse platea dictumst. Cras molestie ultricies nisi vel varius. Phasellus ultricies erat vitae nunc tincidunt, at vestibulum dolor interdum.\r\n','./contrate-o-carater.jpg','#angularJs, #teste, #oi','Avenida Lucio Costa, 3400','2015-04-29 19:22:06',500,1);
/*!40000 ALTER TABLE `meetups_meetup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations_organization`
--

DROP TABLE IF EXISTS `organizations_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizations_organization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations_organization`
--

LOCK TABLES `organizations_organization` WRITE;
/*!40000 ALTER TABLE `organizations_organization` DISABLE KEYS */;
INSERT INTO `organizations_organization` VALUES (1,'AngularJS Brasil','','./angularjs2.png');
/*!40000 ALTER TABLE `organizations_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talks_talk`
--

DROP TABLE IF EXISTS `talks_talk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talks_talk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `announcer_id` int(11) NOT NULL,
  `meetup_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `talks_ta_announcer_id_aeba53124202e2e_fk_announcers_announcer_id` (`announcer_id`),
  KEY `talks_talk_meetup_id_3ff4ac46cbfd646_fk_meetups_meetup_id` (`meetup_id`),
  CONSTRAINT `talks_talk_meetup_id_3ff4ac46cbfd646_fk_meetups_meetup_id` FOREIGN KEY (`meetup_id`) REFERENCES `meetups_meetup` (`id`),
  CONSTRAINT `talks_ta_announcer_id_aeba53124202e2e_fk_announcers_announcer_id` FOREIGN KEY (`announcer_id`) REFERENCES `announcers_announcer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talks_talk`
--

LOCK TABLES `talks_talk` WRITE;
/*!40000 ALTER TABLE `talks_talk` DISABLE KEYS */;
INSERT INTO `talks_talk` VALUES (2,'Getting started','Iniciando no angularJS',1,4),(3,'Getting started 2','sdfasdasdasds',1,4),(4,'Getting started 1','sdasdasd',1,5);
/*!40000 ALTER TABLE `talks_talk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_user`
--

DROP TABLE IF EXISTS `users_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `last_login` datetime,
  `name` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `D8832a1d70914b2de66140774da08d76` (`organization_id`),
  CONSTRAINT `D8832a1d70914b2de66140774da08d76` FOREIGN KEY (`organization_id`) REFERENCES `organizations_organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_user`
--

LOCK TABLES `users_user` WRITE;
/*!40000 ALTER TABLE `users_user` DISABLE KEYS */;
INSERT INTO `users_user` VALUES (1,'leidsond@facebook.com','pbkdf2_sha256$20000$53s084SYzIBm$pqRKdL9KapVKmHrLIcIE6q4b2b+hT6LQ2KTDWly10yc=',1,1,'2015-04-29 21:59:57','Lele',1),(2,'admin@admin.com','pbkdf2_sha256$20000$53s084SYzIBm$pqRKdL9KapVKmHrLIcIE6q4b2b+hT6LQ2KTDWly10yc=',1,1,'2015-04-29 17:41:00','admin',1);
/*!40000 ALTER TABLE `users_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-29 19:07:39
