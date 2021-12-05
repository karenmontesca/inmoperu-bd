CREATE DATABASE  IF NOT EXISTS `inmoperu` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `inmoperu`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: inmoperu
-- ------------------------------------------------------
-- Server version	5.6.51

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
-- Table structure for table `inmuebles`
--

DROP TABLE IF EXISTS `inmuebles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inmuebles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `img` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cuota` decimal(10,2) DEFAULT NULL,
  `plazo_minimo` int(11) DEFAULT NULL,
  `nro_habitaciones` int(11) DEFAULT NULL,
  `distrito` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `direccion` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8_unicode_ci,
  `celular` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titular` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maps` text COLLATE utf8_unicode_ci,
  `status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_inmueble` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmuebles`
--

LOCK TABLES `inmuebles` WRITE;
/*!40000 ALTER TABLE `inmuebles` DISABLE KEYS */;
INSERT INTO `inmuebles` VALUES (1,'Departamento Los Aires',15100.00,'https://tuvivienda.pe/u/properties/2021/07/LynhPdJvhhTr0ti51091-480x346.jpg','Duplex',1300.00,12,2,'Miraflores','Calle Madrid 184','Ubicado en el centro de miraflores, zona turística y segura, cerca al mar, malecón, Larcomar, restaurante, supermercados, transporte público al centro histórico de Lima, a 5 cuadras del parque Kennedy, cuenta con ascensor, 2 camas de 2plz, baño de uso privado fuera de la habitación, closet, sala/comedor, cocina equipada y lavandería.','924810571','Mario Alzamora Benavides','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15607.212704746644!2d-77.05820813022463!3d-12.057059299999993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8dbc0559f57%3A0x57127c357f3c6195!2sCondominio%20Garden%20City!5e0!3m2!1ses-419!2spe!4v1635642723207!5m2!1ses-419!2spe',NULL,'A'),(2,'Departamento El Parque',224000.00,'https://tuvivienda.pe/u/properties/2021/07/LynhPdJvhhTr0ti51091-480x346.jpg','Triplex',2200.00,12,2,'Miraflores','Calle Madrid 184','Ubicado en el centro de miraflores, zona turística y segura, cerca al mar, malecón, Larcomar, restaurante, supermercados, transporte público al centro histórico de Lima, a 5 cuadras del parque Kennedy, cuenta con ascensor, 2 camas de 2plz, baño de uso privado fuera de la habitación, closet, sala/comedor, cocina equipada y lavandería.','924810571','Mario Alzamora Benavides','https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15607.212704746644!2d-77.05820813022463!3d-12.057059299999993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c8dbc0559f57%3A0x57127c357f3c6195!2sCondominio%20Garden%20City!5e0!3m2!1ses-419!2spe!4v1635642723207!5m2!1ses-419!2spe',NULL,'V');
/*!40000 ALTER TABLE `inmuebles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inmueble_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ingreso` date DEFAULT NULL,
  `salida` date DEFAULT NULL,
  `registro` datetime DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_inmueble` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagado` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (1,1,1,'2021-11-02','2021-11-18','2021-11-28 09:24:04','A','Alquiler','Y'),(2,2,1,'0000-00-00','0000-00-00','2021-11-28 09:37:35','P','Venta',NULL),(3,1,8,'2021-11-02','2021-11-30','2021-11-29 01:03:38','A','Alquiler','Y'),(4,2,8,'0000-00-00','0000-00-00','2021-11-29 01:11:04','P','Venta',NULL);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `dni` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usuario` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contrasenia` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `register` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `celular` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'nombre usuario','apellido usuario','1998-02-10','77285892','user@gmail.com','user','123','2021-11-20 17:00:00','2021-11-28 09:02:48','234s'),(2,'MARIO JUNIOR','ALZAMORA BENAVIDES','2021-11-10','77285892','marioalzamorabenavides@gmail.com','ALUMNO1','123456','2021-11-21 21:54:46',NULL,NULL),(3,'MARIO JUNIOR','ALZAMORA BENAVIDES','2021-11-10','77285892','marioalzamorabenavides@gmail.co','ALUMNO','123456','2021-11-21 21:58:42',NULL,NULL),(4,'MARIO JUNIOR','ALZAMORA BENAVIDES','2021-11-21','77285892','marioalzamoabenavides@gmail.com','ALUMN','a','2021-11-21 22:00:55',NULL,NULL),(5,'null','null','0000-00-00','null','null','null','null','2021-11-21 22:02:46',NULL,NULL),(6,'MARIO JUNIOR','ALZAMORA BENAVIDES','0000-00-00','77285892','marioalzamorabenavides@gmail.om','asd','s','2021-11-21 22:07:09',NULL,NULL),(7,'MARIO JUNIOR','ALZAMORA BENAVIDES','2021-11-22','77285892','marioalmorabenavides@gmail.com','asda','234','2021-11-21 22:08:31',NULL,NULL),(8,'MARIO JUNIOR','ALZAMORA BENAVIDES','1998-02-10','77285892','mario@gmail.com','malzamora','123','2021-11-29 00:57:24',NULL,NULL);
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

-- Dump completed on 2021-12-04 23:12:37
