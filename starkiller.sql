-- MySQL dump 10.16  Distrib 10.1.29-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: starkiller
-- ------------------------------------------------------
-- Server version	10.1.29-MariaDB

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
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL,
  `area` varchar(64) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,'Estacionamiento'),(2,'Time Keeper'),(3,'Club Concorde'),(4,'Restaurante Concorde'),(5,'Lobby'),(6,'Recepción'),(7,'Entrada Lobby'),(8,'Escaleras Lobby'),(9,'Restaurante Bahía'),(10,'Áreas Piscinas'),(11,'Administración'),(12,'Locales Comerciales'),(13,'Terraza Solarium'),(14,'Terraza Espejo'),(15,'Área de Playa'),(16,'Comedor'),(17,'Recursos Humanos'),(18,'Cavas Alimentos'),(19,'Piso Habitaciones'),(20,'Pasillo Mezzanina'),(21,'Salón Bahiá'),(22,'Salón Perla Negra'),(23,'Salón Perla Blanca'),(24,'Salón Perla Rosa'),(25,'Salón Perla Gris'),(26,'Salon Bahia'),(27,'Cocina'),(28,'Parque Infantil'),(29,'Espuma Bar'),(30,'Bar Las Rocas'),(31,'Vestidores Sotano');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_reception`
--

DROP TABLE IF EXISTS `data_reception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_reception` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(16) COLLATE utf8mb4_spanish_ci NOT NULL,
  `arrival` int(11) NOT NULL,
  `departure` int(11) NOT NULL,
  `pax` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `close` varchar(16) COLLATE utf8mb4_spanish_ci NOT NULL,
  `occupation` varchar(16) COLLATE utf8mb4_spanish_ci NOT NULL,
  `note` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_reception`
--

LOCK TABLES `data_reception` WRITE;
/*!40000 ALTER TABLE `data_reception` DISABLE KEYS */;
INSERT INTO `data_reception` VALUES (1,'lunes',0,1,28,12,'6.7','6.7','Sin Novedades','2020-03-02 19:35:12'),(2,'sábado',12,22,46,18,'21','33%','Sin novedades','2020-06-27 19:24:55'),(3,'martes',12,24,72,27,'27','25%','Sin novedades','2020-06-30 20:32:50');
/*!40000 ALTER TABLE `data_reception` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id_department` int(11) NOT NULL,
  `department` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id_department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Sistemas'),(2,'Ventas'),(3,'Gerencia General'),(4,'Recepcion'),(5,'Administracion'),(6,'Seguridad'),(7,'Mantenimiento'),(8,'House Keeper'),(9,'Almacen'),(10,'Cocina'),(11,'Banquetes y Eventos'),(12,'Compras');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departure`
--

DROP TABLE IF EXISTS `departure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_shift` int(11) NOT NULL,
  `id_rute` int(11) NOT NULL,
  `availability` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `arrival` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `departure` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `quantity` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_shift` (`id_shift`),
  KEY `id_rute` (`id_rute`),
  CONSTRAINT `departure_ibfk_1` FOREIGN KEY (`id_shift`) REFERENCES `shift` (`id`),
  CONSTRAINT `departure_ibfk_2` FOREIGN KEY (`id_rute`) REFERENCES `rute` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departure`
--

LOCK TABLES `departure` WRITE;
/*!40000 ALTER TABLE `departure` DISABLE KEYS */;
INSERT INTO `departure` VALUES (94,1,1,'Disponible','17:02:40','17:24:36','19','Sin Novedades','02-03-2020 05:33:32pm'),(95,1,2,'Disponible','17:02:41','17:24:56','30','Sin Novedades','02-03-2020 05:33:32pm'),(96,1,3,'Disponible','17:02:44','17:25:21','13','Sin Novedades','02-03-2020 05:33:32pm'),(97,1,4,'Disponible','17:02:45','17:25:43','25','Sin Novedades','02-03-2020 05:33:32pm'),(98,2,3,'Disponible','18:44:59','18:49:05','5','Sin Novedades','02-03-2020 06:54:15pm'),(99,1,1,'1','12:05:55','12:06:43','42','Sin Novedades','06-03-2020 12:06:50pm'),(100,1,2,'1','12:05:55','12:06:44','15','Sin Novedades','06-03-2020 12:06:50pm'),(101,1,3,'1','12:05:56','12:06:45','35','Sin Novedades','06-03-2020 12:06:50pm'),(102,1,4,'1','12:05:57','12:06:46','34','Sin Novedades','06-03-2020 12:06:50pm'),(103,1,1,'1','16:37:22','16:37:24','32','Sin Novedades','27-06-2020 04:37:38pm'),(104,1,2,'1','16:37:22','16:37:25','34','Sin Novedades','27-06-2020 04:37:38pm'),(105,1,3,'1','16:37:23','16:37:25','33','Sin Novedades','27-06-2020 04:37:38pm'),(106,1,4,'1','16:37:23','16:37:26','26','Sin Novedades','27-06-2020 04:37:38pm'),(107,2,3,'3','16:39:50','','28','Sin Novedades','27-06-2020 04:39:53pm'),(108,2,3,'3','16:40:31','16:40:32','27','Sin Novedades','27-06-2020 04:40:35pm'),(109,3,1,'1','17:11:36','','35','Sin Novedades','27-06-2020 05:11:41pm'),(110,3,2,'1','17:11:36','','29','Sin Novedades','27-06-2020 05:11:41pm'),(111,3,1,'1','17:12:18','17:12:20','33','Sin Novedades','27-06-2020 05:12:26pm'),(112,3,2,'1','17:12:19','17:12:21','39','Sin Novedades','27-06-2020 05:12:26pm'),(113,1,1,'1','17:14:27','17:14:32','43','Sin Novedades','27-06-2020 05:14:43pm'),(114,1,2,'1','17:14:29','17:14:33','31','Sin Novedades','27-06-2020 05:14:43pm'),(115,1,3,'1','17:14:31','17:14:34','29','Sin Novedades','27-06-2020 05:14:43pm'),(116,1,4,'1','17:14:32','17:14:35','30','Sin Novedades','27-06-2020 05:14:43pm'),(117,3,1,'1','17:14:57','17:14:59','34','Sin Novedades','27-06-2020 05:15:06pm'),(118,3,2,'1','17:14:58','17:15:00','30','Sin Novedades','27-06-2020 05:15:06pm'),(119,1,1,'1','18:26:58','18:27:10','42','Sin Novedades','27-06-2020 06:27:13pm'),(120,1,2,'1','18:26:59','18:27:10','36','Sin Novedades','27-06-2020 06:27:13pm'),(121,1,3,'1','18:27:00','18:27:11','29','Sin Novedades','27-06-2020 06:27:13pm'),(122,1,4,'1','18:27:01','18:27:12','35','Sin Novedades','27-06-2020 06:27:13pm'),(123,1,1,'1','18:26:58','18:27:10','42','Sin Novedades','27-06-2020 06:40:50pm'),(124,1,2,'1','18:26:59','18:27:10','36','Sin Novedades','27-06-2020 06:40:50pm'),(125,1,3,'1','18:27:00','18:27:11','29','Sin Novedades','27-06-2020 06:40:50pm'),(126,1,4,'1','18:27:01','18:27:12','35','Sin Novedades','27-06-2020 06:40:50pm'),(127,1,1,'1','18:42:33','18:42:39','45','Sin Novedades','27-06-2020 06:43:03pm'),(128,1,2,'1','18:42:34','18:42:40','37','Sin Novedades','27-06-2020 06:43:03pm'),(129,1,3,'1','18:42:35','18:42:35','33','Sin Novedades','27-06-2020 06:43:03pm'),(130,1,4,'1','18:42:36','18:42:41','45','Sin Novedades','27-06-2020 06:43:03pm'),(131,1,1,'1','09:00:06','09:00:09','29','Sin Novedades','29-06-2020 09:00:17am'),(132,1,2,'1','09:00:06','09:00:09','28','Sin Novedades','29-06-2020 09:00:17am'),(133,1,3,'1','09:00:07','09:00:10','30','Sin Novedades','29-06-2020 09:00:17am'),(134,1,4,'1','09:00:08','09:00:10','24','Sin Novedades','29-06-2020 09:00:17am'),(135,1,1,'1','11:36:05','11:36:06','41','Sin Novedades','30-06-2020 11:36:15am'),(136,1,2,'1','11:36:07','11:36:07','35','Sin Novedades','30-06-2020 11:36:15am'),(137,1,3,'1','11:36:07','11:36:08','38','Sin Novedades','30-06-2020 11:36:15am'),(138,1,4,'1','11:36:08','11:36:09','33','Sin Novedades','30-06-2020 11:36:15am'),(139,1,1,'1','11:36:05','11:36:06','41','Sin Novedades','30-06-2020 12:14:36pm'),(140,1,2,'1','11:36:07','11:36:07','35','Sin Novedades','30-06-2020 12:14:36pm'),(141,1,3,'1','11:36:07','11:36:08','38','Sin Novedades','30-06-2020 12:14:36pm'),(142,1,4,'1','11:36:08','11:36:09','33','Sin Novedades','30-06-2020 12:14:36pm'),(143,1,1,'1','11:36:05','11:36:06','41','Sin Novedades','30-06-2020 12:20:23pm'),(144,1,2,'1','11:36:07','11:36:07','35','Sin Novedades','30-06-2020 12:20:23pm'),(145,1,3,'1','11:36:07','11:36:08','38','Sin Novedades','30-06-2020 12:20:23pm'),(146,1,4,'1','11:36:08','11:36:09','33','Sin Novedades','30-06-2020 12:20:23pm'),(147,1,1,'1','11:36:05','11:36:06','41','Sin Novedades','30-06-2020 12:23:56pm'),(148,1,2,'1','11:36:07','11:36:07','35','Sin Novedades','30-06-2020 12:23:56pm'),(149,1,3,'1','11:36:07','11:36:08','38','Sin Novedades','30-06-2020 12:23:56pm'),(150,1,4,'1','11:36:08','11:36:09','33','Sin Novedades','30-06-2020 12:23:56pm'),(151,1,1,'1','11:36:05','11:36:06','41','Sin Novedades','30-06-2020 12:24:45pm'),(152,1,2,'1','11:36:07','11:36:07','35','Sin Novedades','30-06-2020 12:24:45pm'),(153,1,3,'1','11:36:07','11:36:08','38','Sin Novedades','30-06-2020 12:24:45pm'),(154,1,4,'1','11:36:08','11:36:09','33','Sin Novedades','30-06-2020 12:24:45pm'),(155,1,1,'1','20:19:30','20:19:54','41','Sin Novedades','30-06-2020 08:19:59pm'),(156,1,2,'1','20:19:31','20:19:55','34','Sin Novedades','30-06-2020 08:19:59pm'),(157,1,3,'1','20:19:32','20:19:56','35','Sin Novedades','30-06-2020 08:19:59pm'),(158,1,4,'1','20:19:33','20:19:57','30','Sin Novedades','30-06-2020 08:19:59pm');
/*!40000 ALTER TABLE `departure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `stat_phone` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_tune` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_office` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_lavandin` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_lightr` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_lightl` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_cooler` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_exit` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_exitl` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `stat_voice` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `note` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `date_floor_wc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (27,'18','No','No','Operativo','Sin lavandin','Funcional','Funcional','Funcional','Inhabilitado','Inhabilitado','No tiene','Falta Luz de Emergencia en escaleras intermedias, sin aviso de salida de emergencia con escaleras intermedias','2020-03-03 01:51:33'),(28,'17','Si','On','Operativo','Sin lavandin','Funcional','Funcional','Funcional','Inhabilitado','Inhabilitado','No tiene','Pintura e escaleras intermedias deterioradas, espejo de hold con manchas negras','2020-03-03 01:52:37'),(29,'16','Si','On','Operativo','Operativo','Inhabilitado','Inhabilitado','Funcional','Inhabilitado','Inhabilitado','No tiene','Pintura de Escaleras intermedias deterioradas, sin bombillo, aviso de salida de emergencia en escaleras intermedias, puerta de emergencia pasillo corto quemado, marca de lapiz en el techo del hold','2020-03-03 01:54:51'),(30,'15','Si','On','Inoperativo','Operativo','Funcional','Inhabilitado','Funcional','Inhabilitado','Inhabilitado','No tiene','pinturas de escaleras intermedias deterioradas, sin aviso de salida de emergencia en escaleras intermedias, humedad en el techo pasillo largo, 1516 central inactiva','2020-03-03 01:58:42'),(31,'14','Si','On','Operativo','Operativo','Funcional','Funcional','Funcional','Inhabilitado','Inhabilitado','No tiene','Sin cerradura lavandin, humedad entre hab 1414-1415 minima','2020-03-03 02:02:54'),(32,'13','Si','On','Operativo','Operativo','Funcional','Funcional','Funcional','Inhabilitado','Funcional','No tiene','Bombillo lavandin quemado, humedad entre hab 1314-1315 minima','2020-03-03 02:04:56'),(33,'12','Si','On','Operativo','Operativo','Inhabilitado','Funcional','Funcional','Inhabilitado','Inhabilitado','No tiene','Botón de bombillo lavandin fracturado y baño de oficce sucio','2020-03-03 02:10:32'),(34,'11','Si','On','Operativo','Operativo','Funcional','Funcional','Inhabilitado','Inhabilitado','Operativa','Si tiene','Bombillo quemado ofice, hab 1105 apertura en el manco de la puerta','2020-03-03 02:15:50'),(35,'10','Si','On','Operativo','Operativo','Funcional','Funcional','Funcional','Inhabilitado','Funcional','No tiene','Marco hab. 1008 flojo y con daños en las laminas de maderas','2020-03-03 02:19:10'),(36,'9','Si','On','Operativo','Operativo','Funcional','Funcional','Inoperativo','Inhabilitado','Operativo','Si tiene','Bombillo quemado lavandin','2020-03-03 02:21:48'),(37,'8','Si','On','Operativo','Operativo','Inhabilitado','Funcional','Inoperativo','Inhabilitado','Funcional','No tiene','Bombillo quemado lavandin','2020-03-03 02:26:02'),(38,'7','Si','Off','Operativo','Operativo','Inhabilitado','Inhabilitado','Funcional','Inhabilitado','Operativa','Si tiene','Bombillo quemado lavandin, baño office sucio, hab 705  apertura en el manco de la puerta','2020-03-03 02:28:38'),(39,'6','No','Off','Operativo','Operativo','Inhabilitado','Funcional','Funcional','Inhabilitado','Funcional','Si tiene','Lavandin sin bombillo','2020-03-03 02:31:36'),(40,'18','Si','Off','Limpio','Limpio','Funcional','Inhabilitado','Inhabilitado','Funcional','Inhabilitado','Limpio','Sin novedades','2020-06-28 22:01:19'),(41,'18','Si','On','Sin Limpiar','Limpio','Inhabilitado','Inhabilitado','Funcional','Funcional','Funcional','Limpio','Sin novedades','2020-06-29 01:08:00'),(42,'18','Si','On','Sin Limpiar','Limpio','Inhabilitado','Inhabilitado','Funcional','Inhabilitado','Inhabilitado','Sin Limpiar','Se encuentra humedad en los dos pasillos','2020-07-01 00:36:33');
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `freezer`
--

DROP TABLE IF EXISTS `freezer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `freezer` (
  `id_freezer` int(11) NOT NULL AUTO_INCREMENT,
  `num_fridge` int(11) NOT NULL,
  `avb_fridge` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `temp_fridge` double NOT NULL,
  `note_f_wc` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `date_f_wc` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_freezer`),
  KEY `num_fridge` (`num_fridge`),
  CONSTRAINT `freezer_ibfk_1` FOREIGN KEY (`num_fridge`) REFERENCES `fridge` (`id_fridge`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `freezer`
--

LOCK TABLES `freezer` WRITE;
/*!40000 ALTER TABLE `freezer` DISABLE KEYS */;
INSERT INTO `freezer` VALUES (106,1,'Habilitado',9.91,'Temperatura Alta','2020-03-06 14:19:25'),(107,2,'Habilitado',-0.74,'Temperatura Baja Critica','2020-03-06 14:19:25'),(108,3,'Habilitado',-21.3,'Temperatura Baja Critica, puerta entrada congelada','2020-03-06 14:19:25'),(109,4,'Habilitado',5.2,'Temperatura Baja Critica','2020-03-06 14:19:25'),(110,5,'Habilitado',13.7,'Temperatura Alta Critica','2020-03-06 14:19:25'),(111,6,'Habilitado',-21.3,'Temperatura Baja Critica','2020-03-06 14:19:25'),(112,7,'Habilitado',5.8,'Temperatura Baja','2020-03-06 14:19:25'),(113,8,'Habilitado',13,'Temperatura Alta Critica','2020-03-06 14:19:25'),(114,1,'Habilitado',-2.65,'Temperatura Baja Critica','2020-03-06 14:28:50'),(115,2,'Habilitado',18.21,'Temperatura Promedio','2020-03-06 14:28:51'),(116,1,'Habilitado',1.74,'Temperatura Baja Critica','2020-03-06 15:31:19'),(117,1,'Habilitado',1.74,'Temperatura Baja Critica','2020-03-06 15:32:03'),(118,1,'Habilitado',8.55,'Temperatura Alta','2020-03-06 15:44:20'),(119,1,'Habilitado',0,'Temperatura promedio','2020-03-06 15:48:20'),(120,1,'Habilitado',-7.79,'Temperatura Baja Critica, se congela la manilla','2020-03-06 16:19:51'),(121,1,'Habilitado',3.59,'Temperatura Baja Critica','2020-06-28 21:43:45'),(122,2,'Habilitado',19.03,'Temperatura Promedio','2020-06-28 21:43:45'),(123,3,'Habilitado',11.1,'Temperatura Alta','2020-06-28 21:43:45'),(124,4,'Habilitado',21.2,'Temperatura Promedio','2020-06-28 21:43:46'),(125,5,'Habilitado',3.2,'Temperatura Baja','2020-06-28 21:43:46'),(126,6,'Habilitado',9,'Temperatura Baja Critica','2020-06-28 21:43:46'),(127,7,'Habilitado',20.2,'Temperatura Alta Critica','2020-06-28 21:43:46'),(128,8,'Habilitado',10.1,'Temperatura Alta','2020-06-28 21:43:46'),(129,1,'Habilitado',3.16,'Temperatura Baja Critica','2020-06-28 22:18:37'),(130,2,'Habilitado',9.5,'Temperatura Baja Critica','2020-06-28 22:18:37'),(131,3,'Habilitado',12.8,'Temperatura Alta','2020-06-28 22:18:37'),(132,4,'Habilitado',22,'Temperatura Promedio','2020-06-28 22:18:37'),(133,5,'Habilitado',6.9,'Temperatura Promedio','2020-06-28 22:18:37'),(134,6,'Habilitado',9.5,'Temperatura Baja Critica','2020-06-28 22:18:37'),(135,7,'Habilitado',10.1,'Temperatura Promedio','2020-06-28 22:18:38'),(136,8,'Habilitado',4.7,'Temperatura Baja','2020-06-28 22:18:38'),(137,1,'Habilitado',-0.77,'Temperatura Baja Critica','2020-06-28 23:50:28'),(138,2,'Habilitado',16.67,'Temperatura Baja','2020-06-28 23:50:28'),(139,3,'Habilitado',6.7,'Temperatura Promedio','2020-06-28 23:50:29'),(140,4,'Habilitado',29.5,'Temperatura Alta Critica','2020-06-28 23:50:34'),(141,5,'Habilitado',8.1,'Temperatura Alta','2020-06-28 23:50:34'),(142,6,'Habilitado',13.6,'Temperatura Baja','2020-06-28 23:50:35'),(143,7,'Habilitado',8.8,'Temperatura Promedio','2020-06-28 23:50:35'),(144,8,'Habilitado',7.3,'Temperatura Promedio','2020-06-28 23:50:35'),(145,1,'Habilitado',0,'Nevera Inhabilitada','2020-06-30 16:38:34'),(146,2,'Habilitado',19.91,'Temperatura Promedio','2020-06-30 16:38:34'),(147,3,'Habilitado',0,'Sin observacion','2020-06-30 16:38:34'),(148,4,'Habilitado',15,'Sin observacion','2020-06-30 16:38:34'),(149,5,'Habilitado',0,'Sin observacion','2020-06-30 16:38:34'),(150,6,'Habilitado',0,'Sin observacion','2020-06-30 16:38:34'),(151,7,'Habilitado',0,'Sin observacion','2020-06-30 16:38:34'),(152,8,'Habilitado',0,'Sin observacion','2020-06-30 16:38:35'),(153,2,'Habilitado',0,'Sin observacion','2020-06-30 16:45:10'),(154,3,'Habilitado',0,'Sin observacion','2020-06-30 16:45:10'),(155,4,'Habilitado',0,'Sin observacion','2020-06-30 16:45:10'),(156,5,'Habilitado',15,'Sin observacion','2020-06-30 16:45:11'),(157,6,'Habilitado',0,'Sin observacion','2020-06-30 16:45:11'),(158,7,'Habilitado',0,'Sin observacion','2020-06-30 16:45:11'),(159,8,'Habilitado',0,'Sin observacion','2020-06-30 16:45:11'),(160,1,'Habilitado',7.32,'Temperatura Promedio','2020-06-30 17:17:50'),(161,2,'Inhabilitado',0,'Sin observacion','2020-06-30 17:17:50'),(162,3,'Habilitado',-3.3,'Temperatura Baja Critica','2020-06-30 17:17:52'),(163,4,'Inhabilitado',15,'Placa rota','2020-06-30 17:17:53'),(164,5,'Habilitado',12.1,'Temperatura Alta Critica','2020-06-30 17:17:59'),(165,6,'Habilitado',21.3,'Temperatura Promedio','2020-06-30 17:17:59'),(166,7,'Habilitado',14.6,'Temperatura Alta','2020-06-30 17:18:00'),(167,8,'Habilitado',6.8,'Temperatura Promedio','2020-06-30 17:18:00'),(168,1,'Inhabilitado',0,'Mantenimiento','2020-06-30 18:17:36'),(169,2,'Habilitado',19.68,'Temperatura Promedio','2020-06-30 18:17:36'),(170,3,'Habilitado',11.1,'Temperatura Alta','2020-06-30 18:17:36'),(171,4,'Habilitado',12.7,'Temperatura Baja Critica','2020-06-30 18:17:39'),(172,5,'Inhabilitado',0,'Sin observacion','2020-06-30 18:17:39'),(173,6,'Inhabilitado',0,'Sin observacion','2020-06-30 18:17:40'),(174,7,'Habilitado',7.3,'Temperatura Baja','2020-06-30 18:17:40'),(175,8,'Habilitado',7.5,'Temperatura Promedio','2020-06-30 18:17:40'),(176,1,'Habilitado',12.5,'Temperatura Alta Critica, falta de gas','2020-07-01 00:30:39'),(177,2,'Inhabilitado',0,'Se encuentra en mantenimiento','2020-07-01 00:30:39'),(178,3,'Habilitado',7.1,'Temperatura Promedio','2020-07-01 00:30:39'),(179,4,'Habilitado',26.9,'Temperatura Alta','2020-07-01 00:30:39'),(180,5,'Habilitado',7.2,'Temperatura Promedio','2020-07-01 00:30:40'),(181,6,'Inhabilitado',0,'En mantenimiento','2020-07-01 00:30:40'),(182,7,'Habilitado',10.6,'Temperatura Promedio','2020-07-01 00:30:40'),(183,8,'Habilitado',9.2,'Temperatura Alta','2020-07-01 00:30:40'),(184,1,'Habilitado',13.6,'Temperatura Alta Critica','2020-07-07 21:24:48'),(185,2,'Habilitado',20.57,'Temperatura Promedio','2020-07-07 21:24:48'),(186,3,'Habilitado',6,'Temperatura Promedio','2020-07-07 21:24:48'),(187,4,'Habilitado',14.5,'Temperatura Baja','2020-07-07 21:24:48'),(188,5,'Habilitado',-0.9,'Temperatura Baja Critica','2020-07-07 21:24:49'),(189,6,'Inhabilitado',0,'Sin observacion','2020-07-07 21:24:49'),(190,7,'Habilitado',9.8,'Temperatura Promedio','2020-07-07 21:24:49'),(191,8,'Inhabilitado',0,'Sin observacion','2020-07-07 21:24:50');
/*!40000 ALTER TABLE `freezer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fridge`
--

DROP TABLE IF EXISTS `fridge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fridge` (
  `id_fridge` int(11) NOT NULL,
  `name_fridge` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `temp_min` float NOT NULL,
  `temp_max` float NOT NULL,
  PRIMARY KEY (`id_fridge`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fridge`
--

LOCK TABLES `fridge` WRITE;
/*!40000 ALTER TABLE `fridge` DISABLE KEYS */;
INSERT INTO `fridge` VALUES (1,'Frutas y Verduras',5,8),(2,'Procesados Congelados',18,23),(3,'Productos Lacteos y Charcuteria',5,8),(4,'Carnes',18,23),(5,'Granja',5,8),(6,'Pescados y Mariscos',18,23),(7,'Cervezas',8,11),(8,'Champagne y Espumantes',5,8);
/*!40000 ALTER TABLE `fridge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gas`
--

DROP TABLE IF EXISTS `gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gas` (
  `id_gas` int(11) NOT NULL,
  `name_g_wc` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `perc_min` double NOT NULL,
  `perc_max` double NOT NULL,
  PRIMARY KEY (`id_gas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gas`
--

LOCK TABLES `gas` WRITE;
/*!40000 ALTER TABLE `gas` DISABLE KEYS */;
INSERT INTO `gas` VALUES (1,'Tanque 1',45,100),(2,'Tanque 2',45,100),(3,'Tanque 3',45,100),(4,'Tanque 4',45,100);
/*!40000 ALTER TABLE `gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_depart1`
--

DROP TABLE IF EXISTS `item_depart1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_depart1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shift` int(11) NOT NULL,
  `status` varchar(16) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_depart1`
--

LOCK TABLES `item_depart1` WRITE;
/*!40000 ALTER TABLE `item_depart1` DISABLE KEYS */;
INSERT INTO `item_depart1` VALUES (1,1,'excelente','Sin Novedades','2020-06-27 19:39:56'),(2,1,'irregular','Intento de robo','2020-06-27 19:42:46'),(3,2,'excelente','Sin Novedades','2020-06-27 21:56:17'),(4,3,'irregular','Explosion','2020-06-27 22:00:15'),(5,1,'excelente','Sin Novedades','2020-06-30 11:35:53'),(6,1,'irregular','Un mesero se intento robar una cuchara','2020-06-30 20:18:27');
/*!40000 ALTER TABLE `item_depart1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvl_floor`
--

DROP TABLE IF EXISTS `lvl_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvl_floor` (
  `id_lvl` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  PRIMARY KEY (`id_lvl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvl_floor`
--

LOCK TABLES `lvl_floor` WRITE;
/*!40000 ALTER TABLE `lvl_floor` DISABLE KEYS */;
INSERT INTO `lvl_floor` VALUES (1,18),(2,17),(3,16),(4,15),(5,14),(6,13),(7,12),(8,11),(9,10),(10,9),(11,8),(12,7),(13,6);
/*!40000 ALTER TABLE `lvl_floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvl_gas`
--

DROP TABLE IF EXISTS `lvl_gas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvl_gas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_gas` int(11) NOT NULL,
  `lvl_g_wc` int(11) NOT NULL,
  `note_g_wc` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `date_g_wc` varchar(32) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `num_gas` (`num_gas`),
  CONSTRAINT `lvl_gas_ibfk_1` FOREIGN KEY (`num_gas`) REFERENCES `gas` (`id_gas`)
) ENGINE=InnoDB AUTO_INCREMENT=619 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvl_gas`
--

LOCK TABLES `lvl_gas` WRITE;
/*!40000 ALTER TABLE `lvl_gas` DISABLE KEYS */;
INSERT INTO `lvl_gas` VALUES (599,1,10,'Niveles Bajos Criticos','2020-03-02 19:39:17'),(600,2,65,'Niveles Estables','2020-03-02 19:39:17'),(601,3,86,'Niveles Altos','2020-03-02 19:39:17'),(602,4,84,'Niveles Altos','2020-03-02 19:39:17'),(603,1,29,'Niveles Estables','2020-06-27 17:16:35'),(604,2,86,'Niveles Altos','2020-06-27 17:16:35'),(605,3,50,'Niveles Estables','2020-06-27 17:16:35'),(606,4,50,'Niveles Estables','2020-06-27 17:16:35'),(607,1,50,'Niveles Estables','2020-06-28 21:22:35'),(608,2,50,'Niveles Estables','2020-06-28 21:22:35'),(609,3,50,'Niveles Estables','2020-06-28 21:22:35'),(610,4,50,'Niveles Estables','2020-06-28 21:22:35'),(611,1,68,'Niveles Estables','2020-06-30 20:23:02'),(612,2,70,'Niveles Estables','2020-06-30 20:23:03'),(613,3,80,'Niveles Altos','2020-06-30 20:23:03'),(614,4,94,'Niveles Demasiados Altos','2020-06-30 20:23:04'),(615,1,54,'Niveles Estables','2020-07-07 18:46:28'),(616,2,47,'Niveles Estables','2020-07-07 18:46:29'),(617,3,56,'Niveles Estables','2020-07-07 18:46:29'),(618,4,45,'Niveles Estables','2020-07-07 18:46:29');
/*!40000 ALTER TABLE `lvl_gas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvl_gasoil`
--

DROP TABLE IF EXISTS `lvl_gasoil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvl_gasoil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meters` varchar(32) COLLATE utf8mb4_spanish_ci NOT NULL,
  `note` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvl_gasoil`
--

LOCK TABLES `lvl_gasoil` WRITE;
/*!40000 ALTER TABLE `lvl_gasoil` DISABLE KEYS */;
INSERT INTO `lvl_gasoil` VALUES (17,'1.88','Niveles Altos','2020-03-02 19:40:34'),(18,'1.67','Niveles Estables','2020-03-06 12:14:34'),(19,'1.33','Niveles Estables','2020-06-27 17:17:41'),(20,'0.18','Niveles Bajos','2020-06-28 19:35:49'),(21,'1.99','Niveles Altos Criticos','2020-06-28 19:37:29'),(22,'1.59','Niveles Estables','2020-06-30 20:25:00'),(23,'1.18','Niveles Estables','2020-07-07 19:12:13');
/*!40000 ALTER TABLE `lvl_gasoil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lvl_water`
--

DROP TABLE IF EXISTS `lvl_water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lvl_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_water` int(11) NOT NULL,
  `perc_tank` int(11) NOT NULL,
  `note_tank_wc` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `date_tank_wc` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `num_water` (`num_water`),
  CONSTRAINT `lvl_water_ibfk_1` FOREIGN KEY (`num_water`) REFERENCES `tank_water` (`id_water`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lvl_water`
--

LOCK TABLES `lvl_water` WRITE;
/*!40000 ALTER TABLE `lvl_water` DISABLE KEYS */;
INSERT INTO `lvl_water` VALUES (65,2,45,'Niveles estables','2020-03-02 19:26:12'),(66,1,95,'Niveles estables','2020-03-02 19:26:13'),(70,1,99,'Niveles Demasiados Altos','2020-03-06 10:37:18'),(71,2,50,'Niveles Estables','2020-03-06 10:37:18'),(72,1,18,'Niveles Demasiados Bajos','2020-03-06 12:17:33'),(73,2,92,'Niveles Demasiados Altos','2020-03-06 12:17:33'),(74,1,71,'Niveles Estables','2020-06-27 17:18:24'),(75,2,50,'Niveles Estables','2020-06-27 17:18:24'),(76,1,97,'Niveles Demasiados Altos','2020-06-27 17:22:18'),(77,2,11,'Niveles Demasiados Bajos','2020-06-27 17:22:18'),(78,1,33,'Niveles Estables','2020-06-28 19:36:25'),(79,2,92,'Niveles Demasiados Altos','2020-06-28 19:36:28'),(80,1,82,'Niveles Demasiados Altos','2020-06-30 20:25:25'),(81,2,82,'Niveles Demasiados Altos','2020-06-30 20:25:25'),(82,1,55,'Niveles Estables','2020-07-07 19:05:39'),(83,2,46,'Niveles Estables','2020-07-07 19:05:39');
/*!40000 ALTER TABLE `lvl_water` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mt_water`
--

DROP TABLE IF EXISTS `mt_water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mt_water` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tank_water` int(11) NOT NULL,
  `mts_water` double NOT NULL,
  `note_mt` text COLLATE utf8mb4_spanish_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tank_water` (`tank_water`),
  CONSTRAINT `mt_water_ibfk_1` FOREIGN KEY (`tank_water`) REFERENCES `tank_water` (`id_water`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mt_water`
--

LOCK TABLES `mt_water` WRITE;
/*!40000 ALTER TABLE `mt_water` DISABLE KEYS */;
INSERT INTO `mt_water` VALUES (1,3,0.94,'Niveles Estables','2020-03-03 09:26:17'),(2,4,0.92,'Niveles Estables','2020-03-03 09:26:17'),(3,3,0.06,'Niveles Demasiados Bajos','2020-03-06 10:27:12'),(4,4,1.5,'Niveles Estables','2020-03-06 10:27:12'),(5,3,2.1,'Niveles Estables','2020-03-06 12:18:43'),(6,4,1.49,'Niveles Estables','2020-03-06 12:18:43'),(7,3,0.06,'Niveles Demasiados Bajos','2020-06-28 19:37:02'),(8,4,1.99,'Niveles Estables','2020-06-28 19:37:02'),(9,3,2.97,'Niveles Demasiados Altos','2020-06-30 20:26:12'),(10,4,2.08,'Niveles Estables','2020-06-30 20:26:12'),(11,3,2.32,'Niveles Estables','2020-07-07 19:24:25'),(12,4,0.85,'Niveles Estables','2020-07-07 19:24:25');
/*!40000 ALTER TABLE `mt_water` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `image` varchar(200) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `area` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `status` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `content` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `manager` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
INSERT INTO `new` VALUES (1,'Estación de Bombeo','958726.jpg','Estacionamiento','Sin Revision','<p>Se encontraba botella de vidrio sobre unidad de estación de bombeo</p>','Juan','2020-02-19 08:52:26'),(2,'Luces quemadas','347021.jpg','Vestidores Sotano','Sin Revision','<p>2 luces quemadas en el pasillo del baño del vestidor de caballeros</p>','Juan','2020-02-19 09:20:36'),(3,'Puerta Manilla  Rota','238816.jpg','Club Concorde','Sin Revision','<p>Se encontró la puerta de la manilla rota de la puerta ubicada entre salida club concorde y deposito</p>','Juan','2020-02-19 09:24:00'),(4,'Orinario Fuga de Agua','513263.jpg','Restaurante Concorde','Sin Revision','<p>El orinario nro 1 del baño de caballeros se encuentra con un bote de agua al bajar la manilla</p>','Juan','2020-02-19 09:26:30'),(5,'Tubería lavaplatos improvisado','55763.jpg','Terraza Solarium','Sin Revision','<p>Se encuentra la tubería del lavaplato con un arreglo improvisado con bolsas de plastico</p>','Juan','2020-02-19 11:16:46'),(6,'Frutos secos y plantas sin limpiar','449893.jpg','Terraza Solarium','Sin Revision','<p>Plantas sin recibir el adecuado control.</p>','Ronald','2020-02-19 15:11:38'),(7,'Reparación de aire acondicionado ','862732.jpg','Time Keeper','Sin Revision','<p>No funciona el aire acondicionado y tenemos quejas del calor.</p>','Ronald','2020-02-19 15:55:51'),(8,'Reparación del televisor del ascensor 1','336979.jpg','Recepcion','Sin Revision','<p>El televisor del ascensor 1 está apagado sin recibir respuestas, necesita soporte técnico inmediato.</p>','Ronald','2020-02-19 16:04:34'),(9,'Falta de limpieza ','118630.jpg','Pasillo Mezzanina','Sin Revision','<p>El piso del pasillo no está limpio, &nbsp;urge limpieza inmediata.</p>','Ronald','2020-02-19 17:24:01'),(10,'Frutos secos sin limpiar','131800.jpg','Terraza Espejo','Sin Revision','<p>Se encontró la zona latrral6de terraza espejo con frutos secos sin recoger</p>','Ronald','2020-02-20 08:10:17'),(11,'Escombros y fuerte hedor','623465.jpg','Locales Comerciales','Sin Revision','<p>Se visualizó la puerta abierta de uno de los locales no alquilados el cual tenía muchos escombros y un fuerte hedor a heces</p>','Ronald','2020-02-20 08:13:15'),(12,'Escombros y puerta abierta','28797.jpg','Locales Comerciales','Sin Revision','<p>Se encontró la puerta del segundo local comercial no alquilado y dentro se visualizaba una gran cantidad de escombros</p>','Ronald','2020-02-20 08:23:59'),(13,'Pared manchada por humedad ','273861.jpg','Restaurante Bahia','Sin Revision','<p>Se ubicaron manchas de humedad en la pared de las escaleras que bajan del Restaurante a los locales</p>','Ronald','2020-02-20 08:58:08'),(14,'TV nro 1 inhabilitado ','410593.jpg','Recepcion','Sin Revision','<p>El TV nro 1 del ascensor de lobby se encuentra inhabilitado por falta del Jack de corriente</p>','Ronald','2020-02-20 09:01:59'),(15,'Bitroits dañados y titilando','839103.jpg','Salon Bahia','Sin Revision','<p>Los bitroitsmubicados en el techo del salón presentan desperfectos y algunos se encuentran dañados&nbsp;</p>','Ronald','2020-02-20 09:06:19'),(16,'Bitroits dañados ','734593.jpg','Escaleras Lobby','Sin Revision','<p>2 bitroits dañados en el pasillo de la escalera que conecta Lobby con Mezzanina</p>','Ronald','2020-02-20 09:09:29'),(21,'Instalacion de la lampara','971096.jpg','Vestidores Sotano','Sin Revision','<p>Se instaló una nueva lámpara y una sigue sin ser completamente reparada</p>','Juan','2020-03-02 17:42:52'),(22,'Se colocó bandas de protección ','886290.jpg','Estacionamiento','Sin Revision','<p>Se cerco la zona donde se encuentra el cableado de alta tension, para el cuidado del personal y visitante&nbsp;</p>','Juan','2020-03-02 17:48:54'),(24,'Piso lateral de muro ','822952.jpg','Club Concorde','Sin Revision','<p>Piso lateral que comunica pasillo del gimnasio con mantenimiento roto</p>','Juan','2020-03-02 22:34:35'),(25,'Piso lateral de muro ','55859.jpg','Club Concorde','Sin Revision','<p>Piso lateral que comunica pasillo del gimnasio con mantenimiento roto</p>','Juan','2020-03-02 22:35:08'),(26,'Boquilla de aire acondicionado ','339010.jpg','Salon Perla Negra','Sin Revision','<p>Boquilla de aire acondicionado rodeado de humedad</p>','Juan','2020-03-02 22:36:39'),(35,'Tuberia Rota','925893.png','Areas Piscinas','Sin Revision','<p>Tuberia rota por falta de mantenimiento</p>','Ronald','2020-06-30 20:16:00'),(36,'Caida del Wi-Fi','660485.jpg','Restaurante Bahia','Finalizado','<p>Se presento una falla en el acesso a internet, en el wi-fi del restaurante</p>','Ronald','2020-07-07 15:06:27');
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quantity_people`
--

DROP TABLE IF EXISTS `quantity_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quantity_people` (
  `id` int(11) NOT NULL,
  `nro_people` varchar(64) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quantity_people`
--

LOCK TABLES `quantity_people` WRITE;
/*!40000 ALTER TABLE `quantity_people` DISABLE KEYS */;
INSERT INTO `quantity_people` VALUES (1,'1'),(2,'2'),(3,'3'),(4,'4'),(5,'5'),(6,'6'),(7,'7'),(8,'8'),(9,'9'),(10,'10'),(11,'11'),(12,'12'),(13,'13'),(14,'14'),(15,'15'),(16,'16'),(17,'17'),(18,'18'),(19,'19'),(20,'20'),(21,'21'),(22,'22'),(23,'23'),(24,'24'),(25,'25'),(26,'26'),(27,'27'),(28,'28'),(29,'29'),(30,'30'),(31,'31'),(32,'32'),(33,'33'),(34,'34'),(35,'35'),(36,'36'),(37,'37'),(38,'38'),(39,'39'),(40,'40'),(41,'41'),(42,'42'),(43,'43'),(44,'44'),(45,'45');
/*!40000 ALTER TABLE `quantity_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rol` (
  `idrol` int(10) NOT NULL AUTO_INCREMENT,
  `rol` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`idrol`),
  KEY `rol_user` (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Manager'),(2,'Admin'),(3,'Executive');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id_room` int(11) NOT NULL,
  `nro_room` varchar(16) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_room`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'01'),(2,'02'),(3,'03'),(4,'04'),(5,'05'),(6,'06'),(7,'07'),(8,'08'),(9,'09'),(10,'10'),(11,'11'),(12,'12'),(13,'13'),(14,'14'),(15,'15'),(16,'16');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rute`
--

DROP TABLE IF EXISTS `rute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rutename` varchar(65) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rute`
--

LOCK TABLES `rute` WRITE;
/*!40000 ALTER TABLE `rute` DISABLE KEYS */;
INSERT INTO `rute` VALUES (1,'Juan Griego'),(2,'Punta de Piedras'),(3,'Centro'),(4,'Apostadero');
/*!40000 ALTER TABLE `rute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shift`
--

DROP TABLE IF EXISTS `shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shift` (
  `id` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_spanish_ci NOT NULL,
  `hour` varchar(16) COLLATE utf8mb4_spanish_ci NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_item` (`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift`
--

LOCK TABLES `shift` WRITE;
/*!40000 ALTER TABLE `shift` DISABLE KEYS */;
INSERT INTO `shift` VALUES (1,5,'Primera Salida','5:00 pm','2019-11-20 17:00:00'),(2,11,'Segunda Salida','7:00 pm','2019-11-28 19:00:00'),(3,9,'Tercera Salida','11:00 pm','2019-11-28 21:00:00');
/*!40000 ALTER TABLE `shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tank_water`
--

DROP TABLE IF EXISTS `tank_water`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tank_water` (
  `id_water` int(11) NOT NULL,
  `name_water` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `perc_min` float NOT NULL,
  `perc_max` float NOT NULL,
  PRIMARY KEY (`id_water`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tank_water`
--

LOCK TABLES `tank_water` WRITE;
/*!40000 ALTER TABLE `tank_water` DISABLE KEYS */;
INSERT INTO `tank_water` VALUES (1,'Caldera',65,100),(2,'Generador',75,100),(3,'Tanque Elevado',55,100),(4,'Tanque Subterraneo',45,100);
/*!40000 ALTER TABLE `tank_water` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user-wc`
--

DROP TABLE IF EXISTS `user-wc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user-wc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET latin1 NOT NULL,
  `last_name` varchar(64) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `email` varchar(64) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `deparment` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `user_role` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_rol` (`user_role`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user-wc`
--

LOCK TABLES `user-wc` WRITE;
/*!40000 ALTER TABLE `user-wc` DISABLE KEYS */;
INSERT INTO `user-wc` VALUES (15,'usuario','usuario','usuario@gmail.com','usuario','81dc9bdb52d04dc20036dbd8313ed055','Sistemas',1),(16,'Mariano','Garcia','magdschiffer1998@gmail.com','mariano','Nico.16.','Sistemas',2),(17,'Ronald','Bello','rbello@gmail.com','ronald','12.Ronald','Sistemas',1),(18,'Juan','Martinez','jmartinez@wyndhamconcorde.com','juan','Juan.78.','Sistemas',1),(19,'Alberto','Malave','amalave@wyndhamconcorde.com','alberto','Alberto.56.','Sistemas',3),(20,'Luis','Chang','luischang@wyndhamconcorde.com','luischang','luis.2010','Ventas',1),(21,'Luis','Chang','luis@wyndhamconcorde.com','luischang2','chang.2009','Ventas',1),(22,'Andrea','Uruburu','andra@wyndhamconcorde.com','andrea','Andrea.20.','Banquetes y Eventos',1);
/*!40000 ALTER TABLE `user-wc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vip_recep`
--

DROP TABLE IF EXISTS `vip_recep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vip_recep` (
  `id_vip` int(11) NOT NULL AUTO_INCREMENT,
  `day` varchar(32) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `arrival` int(11) NOT NULL,
  `departure` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `service` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `note` text COLLATE utf8mb4_spanish2_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_vip`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_recep`
--

LOCK TABLES `vip_recep` WRITE;
/*!40000 ALTER TABLE `vip_recep` DISABLE KEYS */;
INSERT INTO `vip_recep` VALUES (1,'sábado',1,2,0,'Sin servicios','Sin novedades','2020-06-28 02:38:54'),(2,'sábado',5,2,3,'Sin servicios','Sin novedades','2020-06-28 02:45:55'),(3,'domingo',5,2,3,'Sin servicios','Sin novedades','2020-06-28 21:22:06'),(4,'martes',3,0,6,'Toallas','Sin novedades','2020-07-01 00:34:05');
/*!40000 ALTER TABLE `vip_recep` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-07 20:35:00
