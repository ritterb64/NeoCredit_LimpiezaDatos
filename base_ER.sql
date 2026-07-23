CREATE DATABASE  IF NOT EXISTS `creditos1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `creditos1`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: creditos1
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `cat_canales`
--

DROP TABLE IF EXISTS `cat_canales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_canales` (
  `id_canal` int NOT NULL AUTO_INCREMENT,
  `canal` varchar(100) NOT NULL,
  PRIMARY KEY (`id_canal`),
  UNIQUE KEY `canal` (`canal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_canales`
--

LOCK TABLES `cat_canales` WRITE;
/*!40000 ALTER TABLE `cat_canales` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_canales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_ciudades`
--

DROP TABLE IF EXISTS `cat_ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_ciudades` (
  `id_ciudad` int NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(100) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  UNIQUE KEY `ciudad` (`ciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_ciudades`
--

LOCK TABLES `cat_ciudades` WRITE;
/*!40000 ALTER TABLE `cat_ciudades` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_dispositivos`
--

DROP TABLE IF EXISTS `cat_dispositivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_dispositivos` (
  `id_dispositivo` int NOT NULL AUTO_INCREMENT,
  `dispositivo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_dispositivo`),
  UNIQUE KEY `dispositivo` (`dispositivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_dispositivos`
--

LOCK TABLES `cat_dispositivos` WRITE;
/*!40000 ALTER TABLE `cat_dispositivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_dispositivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estados_cuenta`
--

DROP TABLE IF EXISTS `cat_estados_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estados_cuenta` (
  `id_estado_cuenta` int NOT NULL AUTO_INCREMENT,
  `estado_cuenta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estado_cuenta`),
  UNIQUE KEY `estado_cuenta` (`estado_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estados_cuenta`
--

LOCK TABLES `cat_estados_cuenta` WRITE;
/*!40000 ALTER TABLE `cat_estados_cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_estados_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_estados_transaccion`
--

DROP TABLE IF EXISTS `cat_estados_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_estados_transaccion` (
  `id_estado_transaccion` int NOT NULL AUTO_INCREMENT,
  `estado_transaccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_estado_transaccion`),
  UNIQUE KEY `estado_transaccion` (`estado_transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_estados_transaccion`
--

LOCK TABLES `cat_estados_transaccion` WRITE;
/*!40000 ALTER TABLE `cat_estados_transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_estados_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_generos`
--

DROP TABLE IF EXISTS `cat_generos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_generos` (
  `id_genero` int NOT NULL AUTO_INCREMENT,
  `genero` varchar(50) NOT NULL,
  PRIMARY KEY (`id_genero`),
  UNIQUE KEY `genero` (`genero`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_generos`
--

LOCK TABLES `cat_generos` WRITE;
/*!40000 ALTER TABLE `cat_generos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_generos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_paises`
--

DROP TABLE IF EXISTS `cat_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_paises` (
  `id_pais` int NOT NULL AUTO_INCREMENT,
  `pais` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE KEY `pais` (`pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_paises`
--

LOCK TABLES `cat_paises` WRITE;
/*!40000 ALTER TABLE `cat_paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_resultados_solicitud`
--

DROP TABLE IF EXISTS `cat_resultados_solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_resultados_solicitud` (
  `id_resultado_solicitud` int NOT NULL AUTO_INCREMENT,
  `resultado_solicitud` varchar(100) NOT NULL,
  PRIMARY KEY (`id_resultado_solicitud`),
  UNIQUE KEY `resultado_solicitud` (`resultado_solicitud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_resultados_solicitud`
--

LOCK TABLES `cat_resultados_solicitud` WRITE;
/*!40000 ALTER TABLE `cat_resultados_solicitud` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_resultados_solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipos_cuenta`
--

DROP TABLE IF EXISTS `cat_tipos_cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_tipos_cuenta` (
  `id_tipo_cuenta` int NOT NULL AUTO_INCREMENT,
  `tipo_cuenta` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_cuenta`),
  UNIQUE KEY `tipo_cuenta` (`tipo_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipos_cuenta`
--

LOCK TABLES `cat_tipos_cuenta` WRITE;
/*!40000 ALTER TABLE `cat_tipos_cuenta` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tipos_cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipos_empleo`
--

DROP TABLE IF EXISTS `cat_tipos_empleo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_tipos_empleo` (
  `id_tipo_empleo` int NOT NULL AUTO_INCREMENT,
  `tipo_empleo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_empleo`),
  UNIQUE KEY `tipo_empleo` (`tipo_empleo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipos_empleo`
--

LOCK TABLES `cat_tipos_empleo` WRITE;
/*!40000 ALTER TABLE `cat_tipos_empleo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tipos_empleo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_tipos_transaccion`
--

DROP TABLE IF EXISTS `cat_tipos_transaccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cat_tipos_transaccion` (
  `id_tipo_transaccion` int NOT NULL AUTO_INCREMENT,
  `tipo_transaccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tipo_transaccion`),
  UNIQUE KEY `tipo_transaccion` (`tipo_transaccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_tipos_transaccion`
--

LOCK TABLES `cat_tipos_transaccion` WRITE;
/*!40000 ALTER TABLE `cat_tipos_transaccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_tipos_transaccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` varchar(50) NOT NULL,
  `nombres_cliente` varchar(120) DEFAULT NULL,
  `apellidos_cliente` varchar(120) DEFAULT NULL,
  `id_genero` int DEFAULT NULL,
  `id_ciudad` int DEFAULT NULL,
  `nombre_cliente` varchar(200) DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `ingreso_mensual` decimal(12,2) DEFAULT NULL,
  `id_tipo_empleo` int DEFAULT NULL,
  `antiguedad_laboral_meses` int DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_clientes_generos` (`id_genero`),
  KEY `fk_clientes_ciudades` (`id_ciudad`),
  KEY `fk_clientes_tipos_empleo` (`id_tipo_empleo`),
  CONSTRAINT `fk_clientes_ciudades` FOREIGN KEY (`id_ciudad`) REFERENCES `cat_ciudades` (`id_ciudad`),
  CONSTRAINT `fk_clientes_generos` FOREIGN KEY (`id_genero`) REFERENCES `cat_generos` (`id_genero`),
  CONSTRAINT `fk_clientes_tipos_empleo` FOREIGN KEY (`id_tipo_empleo`) REFERENCES `cat_tipos_empleo` (`id_tipo_empleo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuentas`
--

DROP TABLE IF EXISTS `cuentas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuentas` (
  `id_cuenta` int NOT NULL AUTO_INCREMENT,
  `id_cliente` varchar(50) NOT NULL,
  `numero_cuenta` varchar(50) DEFAULT NULL,
  `id_tipo_cuenta` int DEFAULT NULL,
  `id_estado_cuenta` int DEFAULT NULL,
  `fecha_apertura` date DEFAULT NULL,
  `saldo_actual` decimal(12,2) DEFAULT '0.00',
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_cuenta`),
  UNIQUE KEY `numero_cuenta` (`numero_cuenta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_cuentas_tipos_cuenta` (`id_tipo_cuenta`),
  KEY `fk_cuentas_estados_cuenta` (`id_estado_cuenta`),
  CONSTRAINT `cuentas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `fk_cuentas_estados_cuenta` FOREIGN KEY (`id_estado_cuenta`) REFERENCES `cat_estados_cuenta` (`id_estado_cuenta`),
  CONSTRAINT `fk_cuentas_tipos_cuenta` FOREIGN KEY (`id_tipo_cuenta`) REFERENCES `cat_tipos_cuenta` (`id_tipo_cuenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuentas`
--

LOCK TABLES `cuentas` WRITE;
/*!40000 ALTER TABLE `cuentas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuentas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitudes_credito`
--

DROP TABLE IF EXISTS `solicitudes_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitudes_credito` (
  `id_solicitud` varchar(50) NOT NULL,
  `id_cliente` varchar(50) NOT NULL,
  `monto_solicitado` decimal(12,2) DEFAULT NULL,
  `plazo_meses` int DEFAULT NULL,
  `score_buro_externo` int DEFAULT NULL,
  `deuda_actual` decimal(12,2) DEFAULT NULL,
  `num_tarjetas_activas` int DEFAULT NULL,
  `historial_pagos_atrasados` int DEFAULT NULL,
  `fecha_solicitud` date DEFAULT NULL,
  `id_canal_solicitud` int DEFAULT NULL,
  `id_dispositivo` int DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  `id_resultado_solicitud` int DEFAULT NULL,
  `fraude_flag` tinyint DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_solicitud`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_solicitudes_canales` (`id_canal_solicitud`),
  KEY `fk_solicitudes_dispositivos` (`id_dispositivo`),
  KEY `fk_solicitudes_paises` (`id_pais`),
  KEY `fk_solicitudes_resultados` (`id_resultado_solicitud`),
  CONSTRAINT `fk_solicitudes_canales` FOREIGN KEY (`id_canal_solicitud`) REFERENCES `cat_canales` (`id_canal`),
  CONSTRAINT `fk_solicitudes_dispositivos` FOREIGN KEY (`id_dispositivo`) REFERENCES `cat_dispositivos` (`id_dispositivo`),
  CONSTRAINT `fk_solicitudes_paises` FOREIGN KEY (`id_pais`) REFERENCES `cat_paises` (`id_pais`),
  CONSTRAINT `fk_solicitudes_resultados` FOREIGN KEY (`id_resultado_solicitud`) REFERENCES `cat_resultados_solicitud` (`id_resultado_solicitud`),
  CONSTRAINT `solicitudes_credito_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitudes_credito`
--

LOCK TABLES `solicitudes_credito` WRITE;
/*!40000 ALTER TABLE `solicitudes_credito` DISABLE KEYS */;
/*!40000 ALTER TABLE `solicitudes_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transacciones` (
  `id_transaccion` int NOT NULL AUTO_INCREMENT,
  `id_cuenta` int NOT NULL,
  `id_cliente` varchar(50) NOT NULL,
  `fecha_transaccion` datetime DEFAULT NULL,
  `id_tipo_transaccion` int DEFAULT NULL,
  `id_canal` int DEFAULT NULL,
  `id_dispositivo` int DEFAULT NULL,
  `id_pais` int DEFAULT NULL,
  `id_estado_transaccion` int DEFAULT NULL,
  `monto` decimal(12,2) DEFAULT NULL,
  `fraude_flag` tinyint DEFAULT NULL,
  `fecha_creacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fecha_actualizacion` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_transaccion`),
  KEY `id_cuenta` (`id_cuenta`),
  KEY `id_cliente` (`id_cliente`),
  KEY `fk_transacciones_tipos_transaccion` (`id_tipo_transaccion`),
  KEY `fk_transacciones_canales` (`id_canal`),
  KEY `fk_transacciones_dispositivos` (`id_dispositivo`),
  KEY `fk_transacciones_paises` (`id_pais`),
  KEY `fk_transacciones_estados` (`id_estado_transaccion`),
  CONSTRAINT `fk_transacciones_canales` FOREIGN KEY (`id_canal`) REFERENCES `cat_canales` (`id_canal`),
  CONSTRAINT `fk_transacciones_dispositivos` FOREIGN KEY (`id_dispositivo`) REFERENCES `cat_dispositivos` (`id_dispositivo`),
  CONSTRAINT `fk_transacciones_estados` FOREIGN KEY (`id_estado_transaccion`) REFERENCES `cat_estados_transaccion` (`id_estado_transaccion`),
  CONSTRAINT `fk_transacciones_paises` FOREIGN KEY (`id_pais`) REFERENCES `cat_paises` (`id_pais`),
  CONSTRAINT `fk_transacciones_tipos_transaccion` FOREIGN KEY (`id_tipo_transaccion`) REFERENCES `cat_tipos_transaccion` (`id_tipo_transaccion`),
  CONSTRAINT `transacciones_ibfk_1` FOREIGN KEY (`id_cuenta`) REFERENCES `cuentas` (`id_cuenta`),
  CONSTRAINT `transacciones_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transacciones`
--

LOCK TABLES `transacciones` WRITE;
/*!40000 ALTER TABLE `transacciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `transacciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-18 10:02:58
