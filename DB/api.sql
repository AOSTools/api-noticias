-- MySQL dump 10.19  Distrib 10.3.28-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: api
-- ------------------------------------------------------
-- Server version	10.3.28-MariaDB

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
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id_noti` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `descripcion` text DEFAULT NULL,
  PRIMARY KEY (`id_noti`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Cierre de Clases definitivo','2022-04-24 04:05:31','Se avisa a los estudiantes que apartir de el viernes habra un cierre de la institucion de manera definitiva'),(2,'Nueva cede','2022-04-24 04:05:09','Se informa que que la institucion bare una nueva cede en el doral'),(3,'Semana de vacaciones','2022-04-24 04:09:21','Se informa que apartir de las proxima semana inicia el nodo vacacional'),(4,'Campeones','2022-04-24 05:19:16','Se le agradece a los campeones de surf, se les anima que vuelvan a ser los campeones para el proximo aÃ±o'),(6,'Logica Basica de programacion','2022-04-24 05:22:05','Se ha estudiado que saber de logica de programcion aumenta a un 90% la capacidad de resolver problemas');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) DEFAULT NULL,
  `user` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,'ba7186988aba5f2555f9e0a910cd44d080b56bf0','admin','2022-04-24 01:13:48','192.168.79.1'),(2,'4d4a2b70b73cef6f39317b25545712e3c0e3522a','admin','2022-04-24 01:13:57','192.168.79.1'),(3,'eca2b644683d0278601ec30df38cb6af9027f5b6','admin','2022-04-24 01:13:58','192.168.79.1'),(4,'fc546c9e9e08c468834a58b5390a085da840b80f','admin','2022-04-24 01:28:51','192.168.79.1'),(5,'d056a248f1fb7292399a264f96694e19eecc5c1f','admin','2022-04-24 01:29:39','192.168.79.1'),(6,'eeff356700bb46c53f899a78d8c1e0504fadfdb1','admin','2022-04-24 01:30:31','192.168.79.1'),(7,'7e83bdb191d8d720e249a71e041b2796b146782b','admin','2022-04-24 01:30:32','192.168.79.1'),(8,'4df77ae0cdd36aae197ef00122781b73a786ac64','admin','2022-04-24 01:30:33','192.168.79.1'),(9,'9a7352f2cc19728cdaa87e6e40b5daa8722996ac','admin','2022-04-24 01:30:35','192.168.79.1'),(10,'5d4a258e198b522ae51d3b93871b2ab83d6fe2f0','admin','2022-04-24 01:35:25','192.168.79.1'),(11,'42a5a55c4ce7b16743ff57573d30a94a48f4a30a','admin','2022-04-24 01:35:27','192.168.79.1'),(12,'fc985b45123d654a757d9fcba33a589449f0e459','admin','2022-04-24 01:35:28','192.168.79.1'),(13,'c1a8ff76f93c03dc08185c2681210ec63328d82d','admin','2022-04-24 01:35:30','192.168.79.1'),(14,'f1b61c6450ac89dc08916c6b252a3c0f80b711ed','admin','2022-04-24 01:37:33','192.168.79.1'),(15,'72a55ede2edb8f874ba8d6a787bb83e77f37aca9','admin','2022-04-24 02:14:22','192.168.79.1'),(16,'bcc9911b343a7400c606fe1fbc57223a4ddf95df','admin','2022-04-24 02:14:25','192.168.79.1'),(17,'99c0673af7e94e69a404b42a10fb5527ffce2e9c','admin','2022-04-24 02:14:27','192.168.79.1'),(18,'f774f7cde71f4616501c7f88a3500e5086e93d10','admin','2022-04-24 02:14:29','192.168.79.1'),(19,'95faac62f0d4ee44b99274d3fc77fa3240b43271','admin','2022-04-24 02:14:33','192.168.79.1'),(20,'63bc50486d29dc823750a34c41a21a6defa6036c','admin','2022-04-24 02:18:07','192.168.79.1'),(21,'2f544596998e1e9cbcc992a379722437c1cf594f','admin','2022-04-24 02:18:45','192.168.79.1'),(22,'05438153c72a5cd6bb2472f258f46de047fe0972','admin','2022-04-24 02:18:58','192.168.79.1'),(23,'698a5ad2c86aef9ddbc3b2a8158dab29a4f76e47','admin','2022-04-24 02:19:39','192.168.79.1'),(24,'997a85b601a4803682b477ce0b2dcc3bd0b4fa62','admin','2022-04-24 02:19:59','192.168.79.1'),(25,'f005bd3c48f5c9885eb208eb76ec50e094042aa7','admin','2022-04-24 02:51:54','192.168.79.1'),(26,'e778edbfd90b878d6376f38cfff7d780fbc942f2','admin','2022-04-24 03:26:04','192.168.79.1'),(27,'74a623fb9300f68ee339806670a55b61c509e761','admin','2022-04-24 03:29:43','192.168.79.1'),(28,'b7ccd7c3bf20b2e09ef3b9bf884ef599262b1f3c','admin','2022-04-24 03:29:45','192.168.79.1'),(29,'d7095a4fdaaf96626e6522624292e00aaf75a098','admin','2022-04-24 03:29:47','192.168.79.1'),(30,'5fbefc7f0a233895f3a2c3575095b78ae07705b2','admin','2022-04-24 03:32:52','192.168.79.1'),(31,'64ca2e892cf655d10e09cded90acc943d74d19db','admin','2022-04-24 03:33:54','192.168.79.1'),(32,'98c4f353067e3122dbe020472025ea5cc6046aae','admin','2022-04-24 04:17:53','192.168.79.1'),(33,'80fec67d3555c7c583e1a7c4b9184ddf0836dd5f','admin','2022-04-24 04:21:29','192.168.79.1'),(34,'b49e885ddebc24b756313a5218b4ec773a07d630','admin','2022-04-24 05:25:55','192.168.79.1');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id_user` bigint(20) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'admin','827ccb0eea8a706c4c34a16891f84e7b'),(2,'yeimar','6440b887e0585e7e22b8c8887fbfad26');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24  5:33:38
