CREATE DATABASE  IF NOT EXISTS `Control_almacen` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Control_almacen`;
-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: Control_almacen
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `idArticulo` int(6) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `marca` varchar(45) NOT NULL,
  `no_Tamano` varchar(10) NOT NULL,
  `precioCompra` decimal(10,0) NOT NULL,
  `codigoTipoArticulo` int(4) NOT NULL,
  `codigoProovedor` int(5) NOT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `fk_articulo_tipo_articulo1_idx` (`codigoTipoArticulo`),
  KEY `fk_articulo_proovedor1_idx` (`codigoProovedor`),
  CONSTRAINT `fk_codProovedor` FOREIGN KEY (`codigoProovedor`) REFERENCES `proovedor` (`idProovedor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_codTipoArticulo` FOREIGN KEY (`codigoTipoArticulo`) REFERENCES `tipo_articulo` (`idTipoArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES (1,'Negro','Flexi','4',300,5,1),(2,'Plata','Capa de Ozono','5',400,4,1),(3,'Azul','Nike','7',500,3,2),(4,'Cafe','Nke','3.5',730,1,2),(5,'Verde','Pato','M',700,1,2),(6,'Gris','Atletica','XL',890,1,2),(7,'Verde','a','S',1,6,2),(8,'a','a','3',1,5,2),(9,'a','a','3',1,3,1);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idCiudad` int(4) NOT NULL AUTO_INCREMENT,
  `nombreCiudad` varchar(45) NOT NULL,
  PRIMARY KEY (`idCiudad`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Ajijic'),(2,'Chapala'),(3,'Cocula'),(4,'Guadalajara'),(5,'Jocotepec'),(6,'Lagos de Moreno'),(7,'Puerto Vallarta'),(8,'Tequila'),(9,'Tlajomulco de Zuñiga'),(10,'Tlaquepaque'),(11,'Tonalá'),(12,'Zapopan');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entradas_salidas`
--

DROP TABLE IF EXISTS `entradas_salidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entradas_salidas` (
  `idES` int(15) NOT NULL AUTO_INCREMENT,
  `codArticulo` int(6) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `mov_entrada_salida` int(1) NOT NULL,
  `cantidad` int(4) NOT NULL,
  `codUsuario` int(5) NOT NULL,
  PRIMARY KEY (`idES`,`codArticulo`,`codUsuario`),
  KEY `fk_idArticulo` (`codArticulo`),
  KEY `fk_entradas_salidas_usuario1_idx` (`codUsuario`),
  CONSTRAINT `fk_entradas_salidas_usuario1` FOREIGN KEY (`codUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_idArticulo` FOREIGN KEY (`codArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entradas_salidas`
--

LOCK TABLES `entradas_salidas` WRITE;
/*!40000 ALTER TABLE `entradas_salidas` DISABLE KEYS */;
INSERT INTO `entradas_salidas` VALUES (1,1,'2015-11-11','20:58:16',1,150,1),(2,2,'2015-11-14','13:50:22',0,2,1),(3,1,'2016-06-14','02:28:50',1,100,1),(4,1,'2016-06-14','02:29:52',1,100,1),(5,1,'2016-06-14','02:32:29',1,2,1),(6,2,'2016-06-14','11:22:19',1,4,1),(7,2,'2016-06-14','11:23:56',1,6,1),(8,3,'2016-06-14','11:25:17',0,5,1),(9,3,'2016-06-14','11:25:27',1,5,1),(10,3,'2016-06-14','11:26:16',0,5,1),(11,3,'2016-06-14','11:26:21',1,5,1),(12,3,'2016-06-14','11:26:57',1,5,1),(13,8,'2016-06-14','12:52:28',0,1,1),(14,8,'2016-06-14','12:52:41',0,500,1);
/*!40000 ALTER TABLE `entradas_salidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventario` (
  `codArticulo` int(6) NOT NULL AUTO_INCREMENT,
  `existencia` int(6) NOT NULL,
  `stockMinimo` int(4) NOT NULL,
  PRIMARY KEY (`codArticulo`),
  CONSTRAINT `fk_codArticuloInv` FOREIGN KEY (`codArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,48,50),(2,290,55),(3,395,10),(4,55,5),(5,15,5),(6,400,100),(7,1,1),(8,502,1),(9,1,1);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proovedor`
--

DROP TABLE IF EXISTS `proovedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proovedor` (
  `idProovedor` int(5) NOT NULL AUTO_INCREMENT,
  `nombreProovedor` varchar(45) NOT NULL,
  `apellidoProovedor` varchar(45) NOT NULL,
  `nombreComercial` varchar(45) NOT NULL,
  `direccionProovedor` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `codigoCiudad` int(4) NOT NULL,
  PRIMARY KEY (`idProovedor`),
  KEY `fk_proovedor_codCiudad` (`codigoCiudad`),
  CONSTRAINT `fk_proovedor_codCiudad` FOREIGN KEY (`codigoCiudad`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proovedor`
--

LOCK TABLES `proovedor` WRITE;
/*!40000 ALTER TABLE `proovedor` DISABLE KEYS */;
INSERT INTO `proovedor` VALUES (1,'Jose Luis','Vazquez Corona','Calzado Vazquez','Av. Tonala 1000','33342674',11),(2,'Luis','Ponce','Ropa Joven','Miguel Galindo 80','3333342674',4);
/*!40000 ALTER TABLE `proovedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_articulo`
--

DROP TABLE IF EXISTS `tipo_articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_articulo` (
  `idTipoArticulo` int(4) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoArticulo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_articulo`
--

LOCK TABLES `tipo_articulo` WRITE;
/*!40000 ALTER TABLE `tipo_articulo` DISABLE KEYS */;
INSERT INTO `tipo_articulo` VALUES (1,'Bota'),(2,'Sandalia'),(3,'Zapato'),(4,'Tenis'),(5,'Tacon'),(6,'Chamarra');
/*!40000 ALTER TABLE `tipo_articulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(5) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(45) NOT NULL,
  `apellidoUsuario` varchar(45) NOT NULL,
  `direccionUsuario` varchar(45) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `codigoCiudad` int(4) NOT NULL,
  `contrasena` varchar(45) NOT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_cliente_codCiudad` (`codigoCiudad`),
  CONSTRAINT `fk_cliente_codCiudad` FOREIGN KEY (`codigoCiudad`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Luis Felipe','Ponce Navarro','Queretaro 1071','2147483647',4,'Luis1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-16 23:07:29
