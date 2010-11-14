-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: prestashop
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.6

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
-- Table structure for table `ps_access`
--

DROP TABLE IF EXISTS `ps_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_access`
--

LOCK TABLES `ps_access` WRITE;
/*!40000 ALTER TABLE `ps_access` DISABLE KEYS */;
INSERT INTO `ps_access` VALUES (1,1,1,1,1,1),(1,2,1,1,1,1),(1,3,1,1,1,1),(1,4,1,1,1,1),(1,5,1,1,1,1),(1,6,1,1,1,1),(1,7,1,1,1,1),(1,8,1,1,1,1),(1,9,1,1,1,1),(1,10,1,1,1,1),(1,11,1,1,1,1),(1,12,1,1,1,1),(1,13,1,1,1,1),(1,14,1,1,1,1),(1,15,1,1,1,1),(1,16,1,1,1,1),(1,17,1,1,1,1),(1,18,1,1,1,1),(1,19,1,1,1,1),(1,20,1,1,1,1),(1,21,1,1,1,1),(1,22,1,1,1,1),(1,23,1,1,1,1),(1,24,1,1,1,1),(1,26,1,1,1,1),(1,27,1,1,1,1),(1,28,1,1,1,1),(1,29,1,1,1,1),(1,30,1,1,1,1),(1,31,1,1,1,1),(1,32,1,1,1,1),(1,33,1,1,1,1),(1,34,1,1,1,1),(1,35,1,1,1,1),(1,36,1,1,1,1),(1,37,1,1,1,1),(1,38,1,1,1,1),(1,39,1,1,1,1),(1,40,1,1,1,1),(1,41,1,1,1,1),(1,42,1,1,1,1),(1,43,1,1,1,1),(1,44,1,1,1,1),(1,46,1,1,1,1),(1,47,1,1,1,1),(1,48,1,1,1,1),(1,49,1,1,1,1),(1,50,1,1,1,1),(1,51,1,1,1,1),(1,52,1,1,1,1),(1,53,1,1,1,1),(1,54,1,1,1,1),(1,55,1,1,1,1),(1,56,1,1,1,1),(1,57,1,1,1,1),(1,58,1,1,1,1),(1,59,1,1,1,1),(1,60,1,1,1,1),(1,61,1,1,1,1),(1,62,1,1,1,1),(1,63,1,1,1,1),(1,64,1,1,1,1),(1,65,1,1,1,1),(1,66,1,1,1,1),(1,67,1,1,1,1),(1,68,1,1,1,1);
/*!40000 ALTER TABLE `ps_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_accessory`
--

DROP TABLE IF EXISTS `ps_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_accessory`
--

LOCK TABLES `ps_accessory` WRITE;
/*!40000 ALTER TABLE `ps_accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_address`
--

DROP TABLE IF EXISTS `ps_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_address`
--

LOCK TABLES `ps_address` WRITE;
/*!40000 ALTER TABLE `ps_address` DISABLE KEYS */;
INSERT INTO `ps_address` VALUES (1,21,5,0,1,0,'manufacturer',NULL,'JOBS','STEVE','1 Infinite Loop',NULL,'95014','Cupertino',NULL,'(800) 275-2273',NULL,'2010-11-06 11:57:24','2010-11-06 11:57:24',1,0),(2,8,0,1,0,0,'Mon adresse','My Company','DOE','John','16, Main street','2nd floor','75000','Paris ',NULL,'0102030405',NULL,'2010-11-06 11:57:24','2010-11-06 11:57:24',1,0);
/*!40000 ALTER TABLE `ps_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_alias`
--

DROP TABLE IF EXISTS `ps_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_alias`
--

LOCK TABLES `ps_alias` WRITE;
/*!40000 ALTER TABLE `ps_alias` DISABLE KEYS */;
INSERT INTO `ps_alias` VALUES (4,'piod','ipod',1),(3,'ipdo','ipod',1);
/*!40000 ALTER TABLE `ps_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment`
--

DROP TABLE IF EXISTS `ps_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `mime` varchar(32) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment`
--

LOCK TABLES `ps_attachment` WRITE;
/*!40000 ALTER TABLE `ps_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attachment_lang`
--

DROP TABLE IF EXISTS `ps_attachment_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attachment_lang`
--

LOCK TABLES `ps_attachment_lang` WRITE;
/*!40000 ALTER TABLE `ps_attachment_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_attachment_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute`
--

DROP TABLE IF EXISTS `ps_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute`
--

LOCK TABLES `ps_attribute` WRITE;
/*!40000 ALTER TABLE `ps_attribute` DISABLE KEYS */;
INSERT INTO `ps_attribute` VALUES (1,1,NULL),(2,1,NULL),(8,1,NULL),(9,1,NULL),(10,3,NULL),(11,3,NULL),(12,1,NULL),(13,1,NULL),(3,2,'#D2D6D5'),(4,2,'#008CB7'),(5,2,'#F3349E'),(6,2,'#93D52D'),(7,2,'#FD9812'),(15,1,''),(16,1,''),(17,1,''),(18,2,'#7800F0'),(19,2,'#F6EF04'),(20,2,'#F60409'),(14,2,'#000000');
/*!40000 ALTER TABLE `ps_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group`
--

DROP TABLE IF EXISTS `ps_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group`
--

LOCK TABLES `ps_attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group` DISABLE KEYS */;
INSERT INTO `ps_attribute_group` VALUES (1,0),(2,1),(3,0);
/*!40000 ALTER TABLE `ps_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_group_lang`
--

DROP TABLE IF EXISTS `ps_attribute_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_group_lang`
--

LOCK TABLES `ps_attribute_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_group_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_group_lang` VALUES (1,1,'Disk space','Disk space'),(1,2,'Capacité','Capacité'),(2,1,'Color','Color'),(2,2,'Couleur','Couleur'),(3,1,'ICU','Processor'),(3,2,'ICU','Processeur'),(1,3,'Capacidad','Capacidad'),(2,3,'Color','Color'),(3,3,'ICU','Procesador');
/*!40000 ALTER TABLE `ps_attribute_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_impact`
--

DROP TABLE IF EXISTS `ps_attribute_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` float NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_impact`
--

LOCK TABLES `ps_attribute_impact` WRITE;
/*!40000 ALTER TABLE `ps_attribute_impact` DISABLE KEYS */;
INSERT INTO `ps_attribute_impact` VALUES (1,1,2,0,'60.00'),(2,1,5,0,'0.00'),(3,1,16,0,'50.00'),(4,1,15,0,'0.00'),(5,1,4,0,'0.00'),(6,1,19,0,'0.00'),(7,1,3,0,'0.00'),(8,1,14,0,'0.00'),(9,1,7,0,'0.00'),(10,1,20,0,'0.00'),(11,1,6,0,'0.00'),(12,1,18,0,'0.00');
/*!40000 ALTER TABLE `ps_attribute_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_attribute_lang`
--

DROP TABLE IF EXISTS `ps_attribute_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_attribute_lang`
--

LOCK TABLES `ps_attribute_lang` WRITE;
/*!40000 ALTER TABLE `ps_attribute_lang` DISABLE KEYS */;
INSERT INTO `ps_attribute_lang` VALUES (1,1,'2GB'),(1,2,'2Go'),(1,3,'2Go'),(2,1,'4GB'),(2,2,'4Go'),(2,3,'4Go'),(3,1,'Metal'),(3,2,'Metal'),(3,3,'Metal'),(4,1,'Blue'),(4,2,'Bleu'),(4,3,'Azul'),(5,1,'Pink'),(5,2,'Rose'),(5,3,'Rosa'),(6,1,'Green'),(6,2,'Vert'),(6,3,'Verde'),(7,1,'Orange'),(7,2,'Orange'),(7,3,'Naranja'),(8,1,'Optional 64GB solid-state drive'),(8,2,'Disque dur SSD (solid-state drive) de 64 Go '),(8,3,'SSD (solid-state drive) 64 Go '),(9,1,'80GB Parallel ATA Drive @ 4200 rpm'),(9,2,'Disque dur PATA de 80 Go à 4 200 tr/min'),(9,3,'Disco duro PATA 80 Go 4 200 tr/min'),(10,1,'1.60GHz Intel Core 2 Duo'),(10,2,'Intel Core 2 Duo à 1,6 GHz'),(10,3,'Intel Core 2 Duo para 1,6 GHz'),(11,1,'1.80GHz Intel Core 2 Duo'),(11,2,'Intel Core 2 Duo à 1,8 GHz'),(11,3,'Intel Core 2 Duo para 1,8 GHz'),(12,1,'80GB: 20,000 Songs'),(12,2,'80 Go : 20 000 chansons'),(12,3,'80 Go : 20 000 canciones'),(13,1,'160GB: 40,000 Songs'),(13,2,'160 Go : 40 000 chansons'),(13,3,'160 Go : 40 000 canciones'),(14,2,'Noir'),(14,3,'Negro'),(14,1,'Black'),(15,1,'8Go'),(15,2,'8Go'),(15,3,'8Go'),(16,1,'16Go'),(16,2,'16Go'),(16,3,'16Go'),(17,1,'32Go'),(17,2,'32Go'),(17,3,'32Go'),(18,1,'Purple'),(18,2,'Violet'),(18,3,'Violeta'),(19,1,'Yellow'),(19,2,'Jaune'),(19,3,'Amarillo'),(20,1,'Red'),(20,2,'Rouge'),(20,3,'Rojo');
/*!40000 ALTER TABLE `ps_attribute_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_block_cms`
--

DROP TABLE IF EXISTS `ps_block_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_block_cms` (
  `id_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_block`,`id_cms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_block_cms`
--

LOCK TABLES `ps_block_cms` WRITE;
/*!40000 ALTER TABLE `ps_block_cms` DISABLE KEYS */;
INSERT INTO `ps_block_cms` VALUES (12,1),(12,2),(12,3),(12,4),(23,3),(23,4);
/*!40000 ALTER TABLE `ps_block_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier`
--

DROP TABLE IF EXISTS `ps_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tax` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax` (`id_tax`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier`
--

LOCK TABLES `ps_carrier` WRITE;
/*!40000 ALTER TABLE `ps_carrier` DISABLE KEYS */;
INSERT INTO `ps_carrier` VALUES (1,0,'0',NULL,1,0,0,0,0),(2,1,'My carrier',NULL,1,0,1,0,0);
/*!40000 ALTER TABLE `ps_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_group`
--

DROP TABLE IF EXISTS `ps_carrier_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  UNIQUE KEY `id_carrier` (`id_carrier`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_group`
--

LOCK TABLES `ps_carrier_group` WRITE;
/*!40000 ALTER TABLE `ps_carrier_group` DISABLE KEYS */;
INSERT INTO `ps_carrier_group` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_carrier_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_lang`
--

DROP TABLE IF EXISTS `ps_carrier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  UNIQUE KEY `shipper_lang_index` (`id_lang`,`id_carrier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_lang`
--

LOCK TABLES `ps_carrier_lang` WRITE;
/*!40000 ALTER TABLE `ps_carrier_lang` DISABLE KEYS */;
INSERT INTO `ps_carrier_lang` VALUES (1,1,'Pick up in-store'),(1,2,'Retrait au magasin'),(1,3,'Recogida en la tienda'),(2,1,'Delivery next day!'),(2,2,'Livraison le lendemain !'),(2,3,'¡Entrega día siguiente!');
/*!40000 ALTER TABLE `ps_carrier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_carrier_zone`
--

DROP TABLE IF EXISTS `ps_carrier_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_carrier_zone`
--

LOCK TABLES `ps_carrier_zone` WRITE;
/*!40000 ALTER TABLE `ps_carrier_zone` DISABLE KEYS */;
INSERT INTO `ps_carrier_zone` VALUES (1,1),(2,1),(2,2);
/*!40000 ALTER TABLE `ps_carrier_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart`
--

DROP TABLE IF EXISTS `ps_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart`
--

LOCK TABLES `ps_cart` WRITE;
/*!40000 ALTER TABLE `ps_cart` DISABLE KEYS */;
INSERT INTO `ps_cart` VALUES (1,2,2,6,6,1,1,1,1,0,NULL,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(2,0,2,0,0,1,0,2,1,0,'','2010-11-06 11:59:32','2010-11-06 11:59:32');
/*!40000 ALTER TABLE `ps_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_discount`
--

DROP TABLE IF EXISTS `ps_cart_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_discount` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  KEY `cart_discount_index` (`id_cart`,`id_discount`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_discount`
--

LOCK TABLES `ps_cart_discount` WRITE;
/*!40000 ALTER TABLE `ps_cart_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_cart_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cart_product`
--

DROP TABLE IF EXISTS `ps_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cart_product`
--

LOCK TABLES `ps_cart_product` WRITE;
/*!40000 ALTER TABLE `ps_cart_product` DISABLE KEYS */;
INSERT INTO `ps_cart_product` VALUES (1,7,23,1,'2010-11-06 11:57:24'),(1,9,0,1,'2010-11-06 11:57:24'),(2,1,31,1,'2010-11-06 11:59:32');
/*!40000 ALTER TABLE `ps_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category`
--

DROP TABLE IF EXISTS `ps_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category`
--

LOCK TABLES `ps_category` WRITE;
/*!40000 ALTER TABLE `ps_category` DISABLE KEYS */;
INSERT INTO `ps_category` VALUES (1,0,0,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(2,1,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(3,1,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(4,1,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_group`
--

DROP TABLE IF EXISTS `ps_category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  KEY `category_group_index` (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_group`
--

LOCK TABLES `ps_category_group` WRITE;
/*!40000 ALTER TABLE `ps_category_group` DISABLE KEYS */;
INSERT INTO `ps_category_group` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `ps_category_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_lang`
--

DROP TABLE IF EXISTS `ps_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `category_lang_index` (`id_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_lang`
--

LOCK TABLES `ps_category_lang` WRITE;
/*!40000 ALTER TABLE `ps_category_lang` DISABLE KEYS */;
INSERT INTO `ps_category_lang` VALUES (1,1,'Home','','home',NULL,NULL,NULL),(1,2,'Accueil','','home',NULL,NULL,NULL),(1,3,'Inicio','','home',NULL,NULL,NULL),(2,1,'iPods','Now that you can buy movies from the iTunes Store and sync them to your iPod, the whole world is your theater.','music-ipods','','',''),(2,2,'iPods','Il est temps, pour le meilleur lecteur de musique, de remonter sur scène pour un rappel. Avec le nouvel iPod, le monde est votre scène.','musique-ipods','','',''),(3,1,'Accessories','Wonderful accessories for your iPod','accessories-ipod','','',''),(3,2,'Accessoires','Tous les accessoires à la mode pour votre iPod','accessoires-ipod','','',''),(4,1,'Laptops','The latest Intel processor, a bigger hard drive, plenty of memory, and even more new features all fit inside just one liberating inch. The new Mac laptops have the performance, power, and connectivity of a desktop computer. Without the desk part.','laptops','Apple laptops','Apple laptops MacBook Air','Powerful and chic Apple laptops'),(4,2,'Portables','Le tout dernier processeur Intel, un disque dur plus spacieux, de la mémoire à profusion et d\'autres nouveautés. Le tout, dans à peine 2,59 cm qui vous libèrent de toute entrave. Les nouveaux portables Mac réunissent les performances, la puissance et la connectivité d\'un ordinateur de bureau. Sans la partie bureau.','portables-apple','Portables Apple','portables apple macbook air','portables apple puissants et design'),(4,3,'Portátiles','El último procesador Intel, un disco duro más grande, con profusión de memoria y otras novedades. Todo en sólo 2,59 cm libres de cualquier obstrucción. Las nuevas portátiles Mac cumplir rendimiento, potencia y conectividad de una computadora de escritorio. Sin la parte del escritorio.','portatiles-apple','Portátiles Apple','portátiles apple macbook air','portátiles apple poderoso y el diseño'),(3,3,'Accesorios','Todos los accesorios de moda para tu iPod','ipod-accesorios','','',''),(2,3,'iPods','Es hora de que el mejor jugador de la música, al escenario para hacer un bis. Con el nuevo iPod, el mundo es tu escenario.','musica-ipods','','','');
/*!40000 ALTER TABLE `ps_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_category_product`
--

DROP TABLE IF EXISTS `ps_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `category_product_index` (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_category_product`
--

LOCK TABLES `ps_category_product` WRITE;
/*!40000 ALTER TABLE `ps_category_product` DISABLE KEYS */;
INSERT INTO `ps_category_product` VALUES (1,1,0),(1,2,1),(1,6,2),(1,7,3),(2,1,0),(2,2,1),(2,7,2),(3,8,0),(3,9,1),(4,5,0),(4,6,1);
/*!40000 ALTER TABLE `ps_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms`
--

DROP TABLE IF EXISTS `ps_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cms`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms`
--

LOCK TABLES `ps_cms` WRITE;
/*!40000 ALTER TABLE `ps_cms` DISABLE KEYS */;
INSERT INTO `ps_cms` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `ps_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_cms_lang`
--

DROP TABLE IF EXISTS `ps_cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_cms_lang`
--

LOCK TABLES `ps_cms_lang` WRITE;
/*!40000 ALTER TABLE `ps_cms_lang` DISABLE KEYS */;
INSERT INTO `ps_cms_lang` VALUES (1,1,'Delivery','Our terms and conditions of delivery','conditions, delivery, delay, shipment, pack','<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via Colissimo with tracking and drop-off without signature. If you prefer delivery by Colissimo Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>','delivery'),(1,2,'Livraison','Nos conditions générales de livraison','conditions, livraison, délais, transport, colis','<h2>Livraisons et retours</h2><h3>Le transport de votre colis</h3><p>Les colis sont g&eacute;n&eacute;ralement exp&eacute;di&eacute;s en 48h apr&egrave;s r&eacute;ception de votre paiement. Le mode d\'expédidition standard est le Colissimo suivi, remis sans signature. Si vous souhaitez une remise avec signature, un co&ucirc;t suppl&eacute;mentaire s\'applique, merci de nous contacter. Quel que soit le mode d\'expédition choisi, nous vous fournirons d&egrave;s que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.</p><p>Les frais d\'exp&eacute;dition comprennent l\'emballage, la manutention et les frais postaux. Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande. Nous vous conseillons de regrouper vos achats en une unique commande. Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles. Votre colis est exp&eacute;di&eacute; &agrave; vos propres risques, un soin particulier est apport&eacute; au colis contenant des produits fragiles..<br /><br />Les colis sont surdimensionn&eacute;s et prot&eacute;g&eacute;s.</p>','livraison'),(2,1,'Legal Notice','Legal notice','notice, legal, credits','<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; open-source software.</p>','legal-notice'),(2,2,'Mentions légales','Mentions légales','mentions, légales, crédits','<h2>Mentions l&eacute;gales</h2><h3>Cr&eacute;dits</h3><p>Concept et production :</p><p>Ce site internet a &eacute;t&eacute; r&eacute;alis&eacute; en utilisant la solution open-source <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; .</p>','mentions-legales'),(3,1,'Terms and conditions of use','Our terms and conditions of use','conditions, terms, use, sell','<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>','terms-and-conditions-of-use'),(3,2,'Conditions d\'utilisation','Nos conditions générales de ventes','conditions, utilisation, générales, ventes','<h2>Vos conditions de ventes</h2><h3>Règle n°1</h3><p>Contenu de la règle numéro 1</p>\r\n<h3>Règle n°2</h3><p>Contenu de la règle numéro 2</p>\r\n<h3>Règle n°3</h3><p>Contenu de la règle numéro 3</p>','conditions-generales-de-ventes'),(4,1,'About us','Learn more about us','about us, informations','<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>','about-us'),(4,2,'A propos','Apprenez-en d\'avantage sur nous','à propos, informations','<h2>A propos</h2>\r\n<h3>Notre entreprise</h3><p>Notre entreprise</p>\r\n<h3>Notre équipe</h3><p>Notre équipe</p>\r\n<h3>Informations</h3><p>Informations</p>','a-propos'),(5,1,'Secure payment','Our secure payment mean','secure payment, ssl, visa, mastercard, paypal','<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>','secure-payment'),(5,2,'Paiement sécurisé','Notre offre de paiement sécurisé','paiement sécurisé, ssl, visa, mastercard, paypal','<h2>Paiement sécurisé</h2>\r\n<h3>Notre offre de paiement sécurisé</h3><p>Avec SSL</p>\r\n<h3>Utilisation de Visa/Mastercard/Paypal</h3><p>A propos de ces services</p>','paiement-securise'),(1,3,'Entrega','Nuestras condiciones de entrega','condiciones, plazos de entrega, transporte, paquetería','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Livraisons et retours\">shipping & Returns</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Le transport de votre colis\">El transporte de su paquete</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Les colis sont généralement expédiés en 48h après réception de votre paiement.\">Los paquetes son generalmente enviados en 48 horas después de la recepción de su pago. </span><span style=\"background-color: #ffffff;\" title=\"Le mode d\'expédidition standard est le Colissimo suivi, remis sans signature.\">La moda es el estándar expédidition Colissimo seguido, entrega sin firma. </span><span style=\"background-color: #ffffff;\" title=\"Si vous souhaitez une remise avec signature, un coût supplémentaire s\'applique, merci de nous contacter.\">Si desea una entrega con la firma, un cargo adicional, gracias al contacto con nosotros. </span><span style=\"background-color: #ffffff;\" title=\"Quel que soit le mode d\'expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.\">Sea cual sea el método de envío seleccionado, vamos a presentar lo antes posible, un vínculo que le permite rastrear el envío en línea de su paquete.<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les frais d\'expédition comprennent l\'emballage, la manutention et les frais postaux.\">Gastos de envío incluyen el embalaje, la manipulación y envío. </span><span style=\"background-color: #ffffff;\" title=\"Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande.\">Pueden contener un fijo y una parte variable basado en el precio o el peso de su solicitud. </span><span style=\"background-color: #ffffff;\" title=\"Nous vous conseillons de regrouper vos achats en une unique commande.\">Le recomendamos que para consolidar sus compras en un solo comando. </span><span style=\"background-color: #ffffff;\" title=\"Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles.\">No podemos grupo de dos órdenes distintos y hay que pagar gastos de envío para cada uno. </span><span style=\"background-color: #ffffff;\" title=\"Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..\">Su paquete es enviado a su propio riesgo, se presta especial atención a las parcelas que contienen objetos frágiles ..<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les colis sont surdimensionnés et protégés.\">Los paquetes son de gran tamaño y protegidas.</span></span></p>','entrega'),(2,3,'Aviso legal','Aviso legal','términos, condiciones y créditos fotográficos','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\">Pie de imprenta</span></span></h2>\r\n<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\"> </span></span><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\">Créditos</span></span></h2>\r\n<h3><span id=\"result_box\"></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\"><br /></span><span style=\"background-color: #ffffff;\" title=\"Concept et production :\">Concepto y producción:<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Ce site internet a été réalisé en utilisant la solution open-source PrestaShop™ .\">Este sitio web fue creado utilizando la solución de código abierto <a href=\"http://www.prestashop.com\" target=\"_blank\">PrestaShop</a>™.</span></span></p>','aviso-legal'),(3,3,'Condiciones de uso','Condiciones de uso','condiciones, el consumo, las ventas generales','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Vos conditions de ventes\">Sus condiciones de venta</span></span></h2>\r\n<h3>Regla N º 1</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 1\">Contenido de la Regla Número 1</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 2</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 2\">Contenido de la Regla N º 2</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 3</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 3\">Contenido de la Regla Número 3</span></span></p>','condiciones-de-uso'),(4,3,'Sobre','Conozca más sobre nosotros','sobre, información','<h2>Sobre</h2>','sobre'),(5,3,'Pago seguro','Ofrecemos pago seguro','pago seguro, ssl, visa, mastercard, paypal','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Paiement sécurisé\">Pago seguro</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Notre offre de paiement sécurisé\">Ofrecemos pago seguro</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Avec SSL\">SSL</span></span></p>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Utilisation de Visa/Mastercard/Paypal\">Utilice Visa / Mastercard / Paypal</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"A propos de ces services\">Acerca de estos servicios</span></span></p>','pago-seguro');
/*!40000 ALTER TABLE `ps_cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration`
--

DROP TABLE IF EXISTS `ps_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration`
--

LOCK TABLES `ps_configuration` WRITE;
/*!40000 ALTER TABLE `ps_configuration` DISABLE KEYS */;
INSERT INTO `ps_configuration` VALUES (1,'PS_LANG_DEFAULT','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(2,'PS_CURRENCY_DEFAULT','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(3,'PS_COUNTRY_DEFAULT','8','2010-11-06 11:57:24','2010-11-06 11:57:24'),(4,'PS_REWRITING_SETTINGS','0','2010-11-06 11:57:24','2010-11-08 00:29:08'),(5,'PS_ORDER_OUT_OF_STOCK','0','2010-11-06 11:57:24','2010-11-08 00:06:38'),(6,'PS_LAST_QTIES','2','2010-11-06 11:57:24','2010-11-08 00:06:38'),(7,'PS_CART_REDIRECT','1','2010-11-06 11:57:24','2010-11-08 00:06:38'),(8,'PS_HELPBOX','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(9,'PS_CONDITIONS','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(10,'PS_RECYCLABLE_PACK','0','2010-11-06 11:57:24','2010-11-08 00:29:08'),(11,'PS_GIFT_WRAPPING','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(12,'PS_GIFT_WRAPPING_PRICE','2','2010-11-06 11:57:24','2010-11-08 00:29:08'),(13,'PS_STOCK_MANAGEMENT','1','2010-11-06 11:57:24','2010-11-08 00:06:38'),(14,'PS_NAVIGATION_PIPE','>','2010-11-06 11:57:24','2010-11-06 11:57:24'),(15,'PS_PRODUCTS_PER_PAGE','10','2010-11-06 11:57:24','2010-11-08 00:06:38'),(16,'PS_PURCHASE_MINIMUM','0','2010-11-06 11:57:24','2010-11-08 00:06:38'),(17,'PS_PRODUCTS_ORDER_WAY','0','2010-11-06 11:57:24','2010-11-08 00:06:38'),(18,'PS_PRODUCTS_ORDER_BY','4','2010-11-06 11:57:24','2010-11-08 00:06:38'),(19,'PS_DISPLAY_QTIES','0','2010-11-06 11:57:24','2010-11-08 00:06:38'),(20,'PS_SHIPPING_HANDLING','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(21,'PS_SHIPPING_FREE_PRICE','300','2010-11-06 11:57:24','2010-11-06 11:57:24'),(22,'PS_SHIPPING_FREE_WEIGHT','20','2010-11-06 11:57:24','2010-11-06 11:57:24'),(23,'PS_SHIPPING_METHOD','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(24,'PS_TAX','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(25,'PS_SHOP_ENABLE','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(26,'PS_NB_DAYS_NEW_PRODUCT','30','2010-11-06 11:57:24','2010-11-08 00:06:38'),(27,'PS_SSL_ENABLED','0','2010-11-06 11:57:24','2010-11-08 00:29:08'),(28,'PS_WEIGHT_UNIT','kg','2010-11-06 11:57:24','2010-11-06 11:57:24'),(29,'PS_BLOCK_CART_AJAX','1','2010-11-06 11:57:24','2010-11-08 00:39:47'),(30,'PS_ORDER_RETURN','0','2010-11-06 11:57:24','2010-11-06 11:57:24'),(31,'PS_ORDER_RETURN_NB_DAYS','7','2010-11-06 11:57:24','2010-11-06 11:57:24'),(32,'PS_MAIL_TYPE','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(33,'PS_PRODUCT_PICTURE_MAX_SIZE','131072','2010-11-06 11:57:24','2010-11-08 00:06:38'),(34,'PS_PRODUCT_PICTURE_WIDTH','64','2010-11-06 11:57:24','2010-11-08 00:06:38'),(35,'PS_PRODUCT_PICTURE_HEIGHT','64','2010-11-06 11:57:24','2010-11-08 00:06:38'),(36,'PS_INVOICE_PREFIX','IN','2010-11-06 11:57:24','2010-11-06 11:57:24'),(37,'PS_INVOICE_NUMBER','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(38,'PS_DELIVERY_PREFIX','DE','2010-11-06 11:57:24','2010-11-06 11:57:24'),(39,'PS_DELIVERY_NUMBER','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(40,'PS_INVOICE','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(41,'PS_PASSWD_TIME_BACK','360','2010-11-06 11:57:24','2010-11-06 11:57:24'),(42,'PS_PASSWD_TIME_FRONT','360','2010-11-06 11:57:24','2010-11-06 11:57:24'),(43,'PS_DISP_UNAVAILABLE_ATTR','0','2010-11-06 11:57:24','2010-11-08 00:06:38'),(44,'PS_VOUCHERS','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(45,'PS_SEARCH_MINWORDLEN','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(46,'PS_SEARCH_BLACKLIST','','2010-11-06 11:57:24','2010-11-06 11:57:24'),(47,'PS_SEARCH_WEIGHT_PNAME','6','2010-11-06 11:57:24','2010-11-06 11:57:24'),(48,'PS_SEARCH_WEIGHT_REF','10','2010-11-06 11:57:24','2010-11-06 11:57:24'),(49,'PS_SEARCH_WEIGHT_SHORTDESC','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(50,'PS_SEARCH_WEIGHT_DESC','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(51,'PS_SEARCH_WEIGHT_CNAME','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(52,'PS_SEARCH_WEIGHT_MNAME','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(53,'PS_SEARCH_WEIGHT_TAG','4','2010-11-06 11:57:24','2010-11-06 11:57:24'),(54,'PS_SEARCH_WEIGHT_ATTRIBUTE','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(55,'PS_SEARCH_WEIGHT_FEATURE','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(56,'PS_SEARCH_AJAX','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(57,'PS_TIMEZONE','374','2010-11-06 11:57:24','2010-11-08 00:29:08'),(58,'PS_THEME_V11','0','2010-11-06 11:57:24','2010-11-08 00:29:08'),(59,'PRESTASTORE_LIVE','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(60,'PS_TIN_ACTIVE','0','2010-11-06 11:57:24','2010-11-06 11:57:24'),(61,'PS_SHOW_ALL_MODULES','0','2010-11-06 11:57:24','2010-11-06 11:57:24'),(62,'PS_BACKUP_ALL','0','2010-11-06 11:57:24','2010-11-06 11:57:24'),(63,'PS_1_3_UPDATE_DATE','2010-11-06 11:57:24','2010-11-06 11:57:24','2010-11-06 11:57:24'),(64,'PS_PRICE_ROUND_MODE','2','2010-11-06 11:57:24','2010-11-08 00:29:08'),(65,'PS_1_3_2_UPDATE_DATE','2010-11-06 11:57:24','2010-11-06 11:57:24','2010-11-06 11:57:24'),(66,'PS_PAYMENT_LOGO_CMS_ID','5','2010-11-06 11:57:24','2010-11-06 11:57:24'),(67,'PS_CARRIER_DEFAULT','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(68,'PAYPAL_BUSINESS','paypal@prestashop.com','2010-11-06 11:57:24','2010-11-06 11:57:24'),(69,'PAYPAL_SANDBOX','0','2010-11-06 11:57:24','2010-11-06 11:57:24'),(70,'PAYPAL_CURRENCY','customer','2010-11-06 11:57:24','2010-11-06 11:57:24'),(71,'BANK_WIRE_CURRENCIES','2,1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(72,'CHEQUE_CURRENCIES','2,1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(73,'PRODUCTS_VIEWED_NBR','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(74,'BLOCK_CATEG_DHTML','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(75,'BLOCK_CATEG_MAX_DEPTH','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(76,'MANUFACTURER_DISPLAY_FORM','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(77,'MANUFACTURER_DISPLAY_TEXT','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(78,'MANUFACTURER_DISPLAY_TEXT_NB','5','2010-11-06 11:57:24','2010-11-06 11:57:24'),(79,'NEW_PRODUCTS_NBR','5','2010-11-06 11:57:24','2010-11-08 00:40:02'),(80,'STATSHOME_YEAR_FROM','2010','2010-11-06 11:57:24','2010-11-06 11:57:24'),(81,'STATSHOME_MONTH_FROM','11','2010-11-06 11:57:24','2010-11-06 11:57:24'),(82,'STATSHOME_DAY_FROM','06','2010-11-06 11:57:24','2010-11-06 11:57:24'),(83,'STATSHOME_YEAR_TO','2010','2010-11-06 11:57:24','2010-11-06 11:57:24'),(84,'STATSHOME_MONTH_TO','11','2010-11-06 11:57:24','2010-11-06 11:57:24'),(85,'STATSHOME_DAY_TO','06','2010-11-06 11:57:24','2010-11-06 11:57:24'),(86,'PS_TOKEN_ENABLE','1','2010-11-06 11:57:24','2010-11-08 00:29:08'),(87,'PS_STATS_RENDER','graphxmlswfcharts','2010-11-06 11:57:24','2010-11-06 11:57:24'),(88,'PS_STATS_OLD_CONNECT_AUTO_CLEAN','never','2010-11-06 11:57:24','2010-11-06 11:57:24'),(89,'PS_STATS_GRID_RENDER','gridextjs','2010-11-06 11:57:24','2010-11-06 11:57:24'),(90,'BLOCKTAGS_NBR','10','2010-11-06 11:57:24','2010-11-06 11:57:24'),(91,'CHECKUP_DESCRIPTIONS_LT','100','2010-11-06 11:57:24','2010-11-06 11:57:24'),(92,'CHECKUP_DESCRIPTIONS_GT','400','2010-11-06 11:57:24','2010-11-06 11:57:24'),(93,'CHECKUP_IMAGES_LT','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(94,'CHECKUP_IMAGES_GT','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(95,'CHECKUP_SALES_LT','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(96,'CHECKUP_SALES_GT','2','2010-11-06 11:57:24','2010-11-06 11:57:24'),(97,'CHECKUP_STOCK_LT','1','2010-11-06 11:57:24','2010-11-06 11:57:24'),(98,'CHECKUP_STOCK_GT','3','2010-11-06 11:57:24','2010-11-06 11:57:24'),(99,'PS_SHOP_NAME','Boutik','2010-11-06 11:58:35','2010-11-06 11:58:35'),(100,'PS_SHOP_EMAIL','vincent.lark@gmail.com','2010-11-06 11:58:35','2010-11-06 11:58:35'),(101,'PS_MAIL_METHOD','1','2010-11-06 11:58:35','2010-11-06 11:58:35'),(112,'GCHECKOUT_MERCHANT_ID','822305931131113','2010-11-08 00:54:15','2010-11-08 00:54:15'),(103,'WATERMARK_TRANSPARENCY','60','2010-11-06 12:08:38','2010-11-06 12:08:38'),(104,'WATERMARK_Y_ALIGN','bottom','2010-11-06 12:08:38','2010-11-06 12:08:38'),(105,'WATERMARK_X_ALIGN','right','2010-11-06 12:08:38','2010-11-06 12:08:38'),(106,'PS_DISPLAY_JQZOOM','0','2010-11-08 00:06:38','2010-11-08 00:06:38'),(107,'PS_IMAGE_GENERATION_METHOD','0','2010-11-08 00:06:38','2010-11-08 00:06:38'),(108,'PS_BASE_URI','/','2010-11-08 00:14:41','2010-11-08 00:29:08'),(109,'PS_MAINTENANCE_IP','','2010-11-08 00:14:41','2010-11-08 00:29:08'),(110,'PS_GIFT_WRAPPING_TAX','0','2010-11-08 00:14:41','2010-11-08 00:29:08'),(111,'PS_CART_FOLLOWING','1','2010-11-08 00:14:41','2010-11-08 00:29:08'),(113,'GCHECKOUT_MERCHANT_KEY','2Lv_osMomVIocnLK0aif3A','2010-11-08 00:54:15','2010-11-08 00:54:15'),(114,'GCHECKOUT_LOGS','1','2010-11-08 00:54:15','2010-11-08 00:54:15'),(115,'GCHECKOUT_MODE','real','2010-11-08 00:54:15','2010-11-08 00:54:15'),(116,'RSS_FEED_TITLE','Flux RSS','2010-11-08 01:02:56','2010-11-08 01:02:56'),(117,'RSS_FEED_NBR','5','2010-11-08 01:02:56','2010-11-08 01:02:56');
/*!40000 ALTER TABLE `ps_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_configuration_lang`
--

DROP TABLE IF EXISTS `ps_configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_configuration_lang`
--

LOCK TABLES `ps_configuration_lang` WRITE;
/*!40000 ALTER TABLE `ps_configuration_lang` DISABLE KEYS */;
INSERT INTO `ps_configuration_lang` VALUES (36,1,'IN','2010-11-06 11:57:24'),(36,2,'FA','2010-11-06 11:57:24'),(36,3,'CU','2010-11-06 11:57:24'),(38,1,'DE','2010-11-06 11:57:24'),(38,2,'LI','2010-11-06 11:57:24'),(38,3,'EN','2010-11-06 11:57:24'),(46,1,'a|the|of|on|in|and|to','2010-11-06 11:57:24'),(46,2,'le|les|de|et|en|des|les|une','2010-11-06 11:57:24'),(46,3,'de|los|las|lo|la|en|de|y|el|a','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections`
--

DROP TABLE IF EXISTS `ps_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections`
--

LOCK TABLES `ps_connections` WRITE;
/*!40000 ALTER TABLE `ps_connections` DISABLE KEYS */;
INSERT INTO `ps_connections` VALUES (1,1,1,2130706433,'2010-11-06 11:57:24','http://www.prestashop.com'),(2,2,1,2130706433,'2010-11-06 11:58:52',''),(3,3,1,2130706433,'2010-11-07 23:45:07',''),(4,4,1,2130706689,'2010-11-12 17:41:26',''),(5,5,1,2130706689,'2010-11-12 17:43:20',''),(6,4,1,2130706689,'2010-11-14 22:48:59','');
/*!40000 ALTER TABLE `ps_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_page`
--

DROP TABLE IF EXISTS `ps_connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_page`
--

LOCK TABLES `ps_connections_page` WRITE;
/*!40000 ALTER TABLE `ps_connections_page` DISABLE KEYS */;
INSERT INTO `ps_connections_page` VALUES (2,1,'2010-11-06 11:58:52','2010-11-06 11:59:07'),(2,2,'2010-11-06 11:59:09','2010-11-06 11:59:10'),(2,3,'2010-11-06 11:59:11','2010-11-06 11:59:24'),(2,1,'2010-11-06 11:59:25','2010-11-06 11:59:35'),(2,4,'2010-11-06 11:59:36','2010-11-06 12:04:36'),(2,4,'2010-11-06 12:10:40','2010-11-06 12:14:29'),(2,1,'2010-11-06 12:11:49','2010-11-06 12:11:50'),(2,4,'2010-11-06 12:14:30','2010-11-06 12:14:41'),(2,1,'2010-11-06 12:14:42','2010-11-06 12:15:06'),(2,1,'2010-11-06 12:15:06','2010-11-06 12:15:38'),(2,1,'2010-11-06 12:15:39',NULL),(3,1,'2010-11-07 23:45:07',NULL),(3,5,'2010-11-07 23:47:22',NULL),(3,6,'2010-11-07 23:50:40',NULL),(3,7,'2010-11-07 23:50:56',NULL),(3,7,'2010-11-07 23:51:01',NULL),(3,8,'2010-11-07 23:51:05',NULL),(3,9,'2010-11-07 23:51:21',NULL),(3,7,'2010-11-07 23:51:49',NULL),(3,7,'2010-11-07 23:51:55',NULL),(3,7,'2010-11-07 23:51:57',NULL),(3,7,'2010-11-07 23:51:59',NULL),(3,7,'2010-11-07 23:52:00',NULL),(3,7,'2010-11-07 23:52:01',NULL),(3,1,'2010-11-07 23:57:01',NULL),(3,1,'2010-11-07 23:58:09',NULL),(3,1,'2010-11-07 23:58:33',NULL),(3,1,'2010-11-08 00:03:13',NULL),(3,1,'2010-11-08 00:03:21',NULL),(3,1,'2010-11-08 00:05:28',NULL),(3,1,'2010-11-08 00:06:46',NULL),(3,1,'2010-11-08 00:07:19',NULL),(3,1,'2010-11-08 00:09:37',NULL),(3,1,'2010-11-08 00:20:19',NULL),(3,1,'2010-11-08 00:21:53',NULL),(3,1,'2010-11-08 00:23:17',NULL),(3,1,'2010-11-08 00:24:48',NULL),(3,1,'2010-11-08 00:26:55',NULL),(3,1,'2010-11-08 00:29:10',NULL),(3,1,'2010-11-08 00:30:06',NULL),(3,1,'2010-11-08 00:30:27',NULL),(3,1,'2010-11-08 00:32:26',NULL),(3,1,'2010-11-08 00:34:26',NULL),(3,1,'2010-11-08 00:34:48',NULL),(3,1,'2010-11-08 00:37:49',NULL),(3,1,'2010-11-08 00:40:05',NULL),(3,1,'2010-11-08 00:40:37',NULL),(3,1,'2010-11-08 00:40:39',NULL),(3,1,'2010-11-08 00:42:23',NULL),(3,1,'2010-11-08 00:43:02',NULL),(3,1,'2010-11-08 00:43:30',NULL),(3,1,'2010-11-08 00:44:30',NULL),(3,1,'2010-11-08 00:44:58',NULL),(3,1,'2010-11-08 00:45:37',NULL),(3,1,'2010-11-08 00:45:57',NULL),(3,1,'2010-11-08 00:46:09',NULL),(3,1,'2010-11-08 00:46:16',NULL),(3,1,'2010-11-08 00:46:34',NULL),(3,1,'2010-11-08 00:46:52',NULL),(3,1,'2010-11-08 00:47:13',NULL),(3,1,'2010-11-08 00:47:24',NULL),(3,1,'2010-11-08 00:47:34',NULL),(3,1,'2010-11-08 00:50:26',NULL),(3,1,'2010-11-08 00:50:47',NULL),(3,10,'2010-11-08 00:53:00',NULL),(3,1,'2010-11-08 00:53:22',NULL),(3,1,'2010-11-08 00:54:45',NULL),(3,10,'2010-11-08 00:55:13',NULL),(3,10,'2010-11-08 00:55:50',NULL),(3,11,'2010-11-08 01:02:11',NULL),(3,11,'2010-11-08 01:03:01',NULL),(3,1,'2010-11-08 01:03:05',NULL),(3,1,'2010-11-08 01:05:29',NULL),(3,1,'2010-11-08 01:08:14',NULL),(3,1,'2010-11-08 01:11:33',NULL),(3,1,'2010-11-08 01:13:29',NULL),(3,1,'2010-11-08 01:15:45',NULL),(3,1,'2010-11-08 01:16:52',NULL),(3,1,'2010-11-08 01:17:16',NULL),(3,1,'2010-11-08 01:17:41',NULL),(3,1,'2010-11-08 01:17:48',NULL),(3,1,'2010-11-08 01:18:06',NULL),(3,1,'2010-11-08 01:18:28',NULL),(3,1,'2010-11-08 01:18:49',NULL),(3,1,'2010-11-08 01:19:11',NULL),(3,1,'2010-11-08 01:19:18',NULL),(3,1,'2010-11-08 01:19:23',NULL),(3,1,'2010-11-08 01:19:29',NULL),(3,1,'2010-11-08 01:20:27',NULL),(3,9,'2010-11-08 09:35:23','2010-11-08 09:35:31'),(3,12,'2010-11-08 09:35:32',NULL),(4,1,'2010-11-12 17:41:26',NULL),(4,1,'2010-11-12 17:42:30',NULL),(5,1,'2010-11-12 17:43:20','2010-11-12 17:48:20'),(5,1,'2010-11-12 17:52:16','2010-11-12 17:52:34'),(5,1,'2010-11-12 17:52:36','2010-11-12 17:54:21'),(5,1,'2010-11-12 17:54:22','2010-11-12 17:55:58'),(5,1,'2010-11-12 17:55:59','2010-11-12 17:57:02'),(5,7,'2010-11-12 17:57:03','2010-11-12 17:57:08'),(5,7,'2010-11-12 17:57:09','2010-11-12 17:57:12'),(5,7,'2010-11-12 17:57:13','2010-11-12 17:57:14'),(5,7,'2010-11-12 17:57:15','2010-11-12 17:57:23'),(5,6,'2010-11-12 17:57:24','2010-11-12 18:00:56'),(5,6,'2010-11-12 18:00:56','2010-11-12 18:01:07'),(5,13,'2010-11-12 18:01:09','2010-11-12 18:02:52'),(5,13,'2010-11-12 18:02:53','2010-11-12 18:05:02'),(5,13,'2010-11-12 18:05:04','2010-11-12 18:07:32'),(5,13,'2010-11-12 18:07:34','2010-11-12 18:08:40'),(5,13,'2010-11-12 18:08:41','2010-11-12 18:09:19'),(5,13,'2010-11-12 18:09:21','2010-11-12 18:13:35'),(5,13,'2010-11-12 18:13:36','2010-11-12 18:14:07'),(5,13,'2010-11-12 18:14:08','2010-11-12 18:16:16'),(5,13,'2010-11-12 18:16:18','2010-11-12 18:16:44'),(5,13,'2010-11-12 18:16:46','2010-11-12 18:17:31'),(5,13,'2010-11-12 18:17:32','2010-11-12 18:17:54'),(5,13,'2010-11-12 18:17:56','2010-11-12 18:22:56'),(5,13,'2010-11-12 18:30:59','2010-11-12 18:33:16'),(5,13,'2010-11-12 18:33:17','2010-11-12 18:34:14'),(5,13,'2010-11-12 18:34:16','2010-11-12 18:35:17'),(5,13,'2010-11-12 18:35:18','2010-11-12 18:40:18'),(5,13,'2010-11-12 18:42:28','2010-11-12 18:43:07'),(5,13,'2010-11-12 18:43:09','2010-11-12 18:44:12'),(5,13,'2010-11-12 18:44:13','2010-11-12 18:45:38'),(5,13,'2010-11-12 18:45:39','2010-11-12 18:46:19'),(5,13,'2010-11-12 18:46:21','2010-11-12 18:46:39'),(5,13,'2010-11-12 18:46:40','2010-11-12 18:51:40'),(5,12,'2010-11-12 18:47:26','2010-11-12 18:47:29'),(5,13,'2010-11-12 19:09:05',NULL),(6,1,'2010-11-14 22:48:59',NULL);
/*!40000 ALTER TABLE `ps_connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_connections_source`
--

DROP TABLE IF EXISTS `ps_connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_connections_source`
--

LOCK TABLES `ps_connections_source` WRITE;
/*!40000 ALTER TABLE `ps_connections_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact`
--

DROP TABLE IF EXISTS `ps_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact`
--

LOCK TABLES `ps_contact` WRITE;
/*!40000 ALTER TABLE `ps_contact` DISABLE KEYS */;
INSERT INTO `ps_contact` VALUES (1,'vincent.lark@gmail.com',0),(2,'vincent.lark@gmail.com',0);
/*!40000 ALTER TABLE `ps_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_contact_lang`
--

DROP TABLE IF EXISTS `ps_contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  UNIQUE KEY `contact_lang_index` (`id_contact`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_contact_lang`
--

LOCK TABLES `ps_contact_lang` WRITE;
/*!40000 ALTER TABLE `ps_contact_lang` DISABLE KEYS */;
INSERT INTO `ps_contact_lang` VALUES (1,1,'Webmaster','If a technical problem occurs on this website'),(1,2,'Webmaster','Si un problème technique survient sur le site'),(1,3,'Webmaster','Si se produce un problema técnico en el sitio'),(2,1,'Customer service','For any question about a product, an order'),(2,2,'Service client','Pour toute question ou réclamation sur une commande'),(2,3,'Service client','Para cualquier pregunta o queja acerca de un pedido');
/*!40000 ALTER TABLE `ps_contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country`
--

DROP TABLE IF EXISTS `ps_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `iso_code` varchar(3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country`
--

LOCK TABLES `ps_country` WRITE;
/*!40000 ALTER TABLE `ps_country` DISABLE KEYS */;
INSERT INTO `ps_country` VALUES (1,1,'DE',1,0,0),(2,1,'AT',1,0,0),(3,1,'BE',1,0,0),(4,2,'CA',1,1,0),(5,3,'CN',1,0,0),(6,1,'ES',1,0,1),(7,1,'FI',1,0,0),(8,1,'FR',1,0,0),(9,1,'GR',1,0,0),(10,1,'IT',1,0,0),(11,3,'JP',1,0,0),(12,1,'LU',1,0,0),(13,1,'NL',1,0,0),(14,1,'PL',1,0,0),(15,1,'PT',1,0,0),(16,1,'CZ',1,0,0),(17,1,'GB',1,0,0),(18,1,'SE',1,0,0),(19,1,'CH',1,0,0),(20,1,'DK',1,0,0),(21,2,'US',1,1,0),(22,3,'HK',1,0,0),(23,1,'NO',1,0,0),(24,5,'AU',1,0,0),(25,3,'SG',1,0,0),(26,1,'IE',1,0,0),(27,5,'NZ',1,0,0),(28,3,'KR',1,0,0),(29,3,'IL',1,0,0),(30,4,'ZA',1,0,0),(31,4,'NG',1,0,0),(32,4,'CI',1,0,0),(33,4,'TG',1,0,0),(34,2,'BO',1,0,0),(35,4,'MU',1,0,0),(36,1,'RO',1,0,0),(37,1,'SK',1,0,0),(38,4,'DZ',1,0,0),(39,2,'AS',1,0,0),(40,1,'AD',1,0,0),(41,4,'AO',1,0,0),(42,2,'AI',1,0,0),(43,2,'AG',1,0,0),(44,2,'AR',1,0,0),(45,3,'AM',1,0,0),(46,2,'AW',1,0,0),(47,3,'AZ',1,0,0),(48,2,'BS',1,0,0),(49,3,'BH',1,0,0),(50,3,'BD',1,0,0),(51,2,'BB',1,0,0),(52,1,'BY',1,0,0),(53,2,'BZ',1,0,0),(54,4,'BJ',1,0,0),(55,2,'BM',1,0,0),(56,3,'BT',1,0,0),(57,4,'BW',1,0,0),(58,2,'BR',1,1,0),(59,3,'BN',1,0,0),(60,4,'BF',1,0,0),(61,3,'MM',1,0,0),(62,4,'BI',1,0,0),(63,3,'KH',1,0,0),(64,4,'CM',1,0,0),(65,4,'CV',1,0,0),(66,4,'CF',1,0,0),(67,4,'TD',1,0,0),(68,2,'CL',1,0,0),(69,2,'CO',1,0,0),(70,4,'KM',1,0,0),(71,4,'CD',1,0,0),(72,4,'CG',1,0,0),(73,2,'CR',1,0,0),(74,1,'HR',1,0,0),(75,2,'CU',1,0,0),(76,1,'CY',1,0,0),(77,4,'DJ',1,0,0),(78,2,'DM',1,0,0),(79,2,'DO',1,0,0),(80,3,'TL',1,0,0),(81,2,'EC',1,0,0),(82,4,'EG',1,0,0),(83,2,'SV',1,0,0),(84,4,'GQ',1,0,0),(85,4,'ER',1,0,0),(86,1,'EE',1,0,0),(87,4,'ET',1,0,0),(88,2,'FK',1,0,0),(89,1,'FO',1,0,0),(90,5,'FJ',1,0,0),(91,4,'GA',1,0,0),(92,4,'GM',1,0,0),(93,3,'GE',1,0,0),(94,4,'GH',1,0,0),(95,2,'GD',1,0,0),(96,1,'GL',1,0,0),(97,1,'GI',1,0,0),(98,2,'GP',1,0,0),(99,2,'GU',1,0,0),(100,2,'GT',1,0,0),(101,1,'GG',1,0,0),(102,4,'GN',1,0,0),(103,4,'GW',1,0,0),(104,2,'GY',1,0,0),(105,2,'HT',1,0,0),(106,5,'HM',1,0,0),(107,1,'VA',1,0,0),(108,2,'HN',1,0,0),(109,1,'IS',1,0,0),(110,3,'IN',1,0,0),(111,3,'ID',1,0,0),(112,3,'IR',1,0,0),(113,3,'IQ',1,0,0),(114,1,'IM',1,0,0),(115,2,'JM',1,0,0),(116,1,'JE',1,0,0),(117,3,'JO',1,0,0),(118,3,'KZ',1,0,0),(119,4,'KE',1,0,0),(120,1,'KI',1,0,0),(121,3,'KP',1,0,0),(122,3,'KW',1,0,0),(123,3,'KG',1,0,0),(124,3,'LA',1,0,0),(125,1,'LV',1,0,0),(126,3,'LB',1,0,0),(127,4,'LS',1,0,0),(128,4,'LR',1,0,0),(129,4,'LY',1,0,0),(130,1,'LI',1,0,0),(131,1,'LT',1,0,0),(132,3,'MO',1,0,0),(133,1,'MK',1,0,0),(134,4,'MG',1,0,0),(135,4,'MW',1,0,0),(136,3,'MY',1,0,0),(137,3,'MV',1,0,0),(138,4,'ML',1,0,0),(139,1,'MT',1,0,0),(140,5,'MH',1,0,0),(141,2,'MQ',1,0,0),(142,4,'MR',1,0,0),(143,1,'HU',1,0,0),(144,4,'YT',1,0,0),(145,2,'MX',1,1,0),(146,5,'FM',1,0,0),(147,1,'MD',1,0,0),(148,1,'MC',1,0,0),(149,3,'MN',1,0,0),(150,1,'ME',1,0,0),(151,2,'MS',1,0,0),(152,4,'MA',1,0,0),(153,4,'MZ',1,0,0),(154,4,'NA',1,0,0),(155,5,'NR',1,0,0),(156,3,'NP',1,0,0),(157,2,'AN',1,0,0),(158,5,'NC',1,0,0),(159,2,'NI',1,0,0),(160,4,'NE',1,0,0),(161,5,'NU',1,0,0),(162,5,'NF',1,0,0),(163,5,'MP',1,0,0),(164,3,'OM',1,0,0),(165,3,'PK',1,0,0),(166,5,'PW',1,0,0),(167,3,'PS',1,0,0),(168,2,'PA',1,0,0),(169,5,'PG',1,0,0),(170,2,'PY',1,0,0),(171,2,'PE',1,0,0),(172,3,'PH',1,0,0),(173,5,'PN',1,0,0),(174,2,'PR',1,0,0),(175,3,'QA',1,0,0),(176,4,'RE',1,0,0),(177,1,'RU',1,0,0),(178,4,'RW',1,0,0),(179,2,'BL',1,0,0),(180,2,'KN',1,0,0),(181,2,'LC',1,0,0),(182,2,'MF',1,0,0),(183,2,'PM',1,0,0),(184,2,'VC',1,0,0),(185,5,'WS',1,0,0),(186,1,'SM',1,0,0),(187,4,'ST',1,0,0),(188,3,'SA',1,0,0),(189,4,'SN',1,0,0),(190,1,'RS',1,0,0),(191,4,'SC',1,0,0),(192,4,'SL',1,0,0),(193,1,'SI',1,0,0),(194,5,'SB',1,0,0),(195,4,'SO',1,0,0),(196,2,'GS',1,0,0),(197,3,'LK',1,0,0),(198,4,'SD',1,0,0),(199,2,'SR',1,0,0),(200,1,'SJ',1,0,0),(201,4,'SZ',1,0,0),(202,3,'SY',1,0,0),(203,3,'TW',1,0,0),(204,3,'TJ',1,0,0),(205,4,'TZ',1,0,0),(206,3,'TH',1,0,0),(207,5,'TK',1,0,0),(208,5,'TO',1,0,0),(209,2,'TT',1,0,0),(210,4,'TN',1,0,0),(211,1,'TR',1,0,0),(212,3,'TM',1,0,0),(213,2,'TC',1,0,0),(214,5,'TV',1,0,0),(215,4,'UG',1,0,0),(216,1,'UA',1,0,0),(217,3,'AE',1,0,0),(218,2,'UY',1,0,0),(219,3,'UZ',1,0,0),(220,5,'VU',1,0,0),(221,2,'VE',1,0,0),(222,3,'VN',1,0,0),(223,2,'VG',1,0,0),(224,2,'VI',1,0,0),(225,5,'WF',1,0,0),(226,4,'EH',1,0,0),(227,3,'YE',1,0,0),(228,4,'ZM',1,0,0),(229,4,'ZW',1,0,0),(230,1,'AL',1,0,0),(231,3,'AF',1,0,0),(232,5,'AQ',1,0,0),(233,1,'BA',1,0,0),(234,5,'BV',1,0,0),(235,5,'IO',1,0,0),(236,1,'BG',1,0,0),(237,2,'KY',1,0,0),(238,3,'CX',1,0,0),(239,3,'CC',1,0,0),(240,5,'CK',1,0,0),(241,2,'GF',1,0,0),(242,5,'PF',1,0,0),(243,5,'TF',1,0,0),(244,1,'AX',1,0,0);
/*!40000 ALTER TABLE `ps_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_country_lang`
--

DROP TABLE IF EXISTS `ps_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `country_lang_index` (`id_country`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_country_lang`
--

LOCK TABLES `ps_country_lang` WRITE;
/*!40000 ALTER TABLE `ps_country_lang` DISABLE KEYS */;
INSERT INTO `ps_country_lang` VALUES (1,1,'Germany'),(1,2,'Allemagne'),(2,1,'Austria'),(2,2,'Autriche'),(3,1,'Belgium'),(3,2,'Belgique'),(4,1,'Canada'),(4,2,'Canada'),(5,1,'China'),(5,2,'Chine'),(6,1,'Spain'),(6,2,'Espagne'),(7,1,'Finland'),(7,2,'Finlande'),(8,1,'France'),(8,2,'France'),(9,1,'Greece'),(9,2,'Grèce'),(10,1,'Italy'),(10,2,'Italie'),(11,1,'Japan'),(11,2,'Japon'),(12,1,'Luxemburg'),(12,2,'Luxembourg'),(13,1,'Netherlands'),(13,2,'Pays-bas'),(14,1,'Poland'),(14,2,'Pologne'),(15,1,'Portugal'),(15,2,'Portugal'),(16,1,'Czech Republic'),(16,2,'République Tchèque'),(17,1,'United Kingdom'),(17,2,'Royaume-Uni'),(18,1,'Sweden'),(18,2,'Suède'),(19,1,'Switzerland'),(19,2,'Suisse'),(20,1,'Denmark'),(20,2,'Danemark'),(21,1,'USA'),(21,2,'USA'),(22,1,'HongKong'),(22,2,'Hong-Kong'),(23,1,'Norway'),(23,2,'Norvège'),(24,1,'Australia'),(24,2,'Australie'),(25,1,'Singapore'),(25,2,'Singapour'),(26,1,'Ireland'),(26,2,'Eire'),(27,1,'New Zealand'),(27,2,'Nouvelle-Zélande'),(28,1,'South Korea'),(28,2,'Corée du Sud'),(29,1,'Israel'),(29,2,'Israël'),(30,1,'South Africa'),(30,2,'Afrique du Sud'),(31,1,'Nigeria'),(31,2,'Nigeria'),(32,1,'Ivory Coast'),(32,2,'Côte d\'Ivoire'),(33,1,'Togo'),(33,2,'Togo'),(34,1,'Bolivia'),(34,2,'Bolivie'),(35,1,'Mauritius'),(35,2,'Ile Maurice'),(143,1,'Hungary'),(143,2,'Hongrie'),(36,1,'Romania'),(36,2,'Roumanie'),(37,1,'Slovakia'),(37,2,'Slovaquie'),(38,1,'Algeria'),(38,2,'Algérie'),(39,1,'American Samoa'),(39,2,'Samoa Américaines'),(40,1,'Andorra'),(40,2,'Andorre'),(41,1,'Angola'),(41,2,'Angola'),(42,1,'Anguilla'),(42,2,'Anguilla'),(43,1,'Antigua and Barbuda'),(43,2,'Antigua et Barbuda'),(44,1,'Argentina'),(44,2,'Argentine'),(45,1,'Armenia'),(45,2,'Arménie'),(46,1,'Aruba'),(46,2,'Aruba'),(47,1,'Azerbaijan'),(47,2,'Azerbaïdjan'),(48,1,'Bahamas'),(48,2,'Bahamas'),(49,1,'Bahrain'),(49,2,'Bahreïn'),(50,1,'Bangladesh'),(50,2,'Bangladesh'),(51,1,'Barbados'),(51,2,'Barbade'),(52,1,'Belarus'),(52,2,'Bélarus'),(53,1,'Belize'),(53,2,'Belize'),(54,1,'Benin'),(54,2,'Bénin'),(55,1,'Bermuda'),(55,2,'Bermudes'),(56,1,'Bhutan'),(56,2,'Bhoutan'),(57,1,'Botswana'),(57,2,'Botswana'),(58,1,'Brazil'),(58,2,'Brésil'),(59,1,'Brunei'),(59,2,'Brunéi Darussalam'),(60,1,'Burkina Faso'),(60,2,'Burkina Faso'),(61,1,'Burma (Myanmar)'),(61,2,'Burma (Myanmar)'),(62,1,'Burundi'),(62,2,'Burundi'),(63,1,'Cambodia'),(63,2,'Cambodge'),(64,1,'Cameroon'),(64,2,'Cameroun'),(65,1,'Cape Verde'),(65,2,'Cap-Vert'),(66,1,'Central African Republic'),(66,2,'Centrafricaine, République'),(67,1,'Chad'),(67,2,'Tchad'),(68,1,'Chile'),(68,2,'Chili'),(69,1,'Colombia'),(69,2,'Colombie'),(70,1,'Comoros'),(70,2,'Comores'),(71,1,'Congo, Dem. Republic'),(71,2,'Congo, Rép. Dém.'),(72,1,'Congo, Republic'),(72,2,'Congo, Rép.'),(73,1,'Costa Rica'),(73,2,'Costa Rica'),(74,1,'Croatia'),(74,2,'Croatie'),(75,1,'Cuba'),(75,2,'Cuba'),(76,1,'Cyprus'),(76,2,'Chypre'),(77,1,'Djibouti'),(77,2,'Djibouti'),(78,1,'Dominica'),(78,2,'Dominica'),(79,1,'Dominican Republic'),(79,2,'République Dominicaine'),(80,1,'East Timor'),(80,2,'Timor oriental'),(81,1,'Ecuador'),(81,2,'Équateur'),(82,1,'Egypt'),(82,2,'Égypte'),(83,1,'El Salvador'),(83,2,'El Salvador'),(84,1,'Equatorial Guinea'),(84,2,'Guinée Équatoriale'),(85,1,'Eritrea'),(85,2,'Érythrée'),(86,1,'Estonia'),(86,2,'Estonie'),(87,1,'Ethiopia'),(87,2,'Éthiopie'),(88,1,'Falkland Islands'),(88,2,'Falkland, Îles'),(89,1,'Faroe Islands'),(89,2,'Féroé, Îles'),(90,1,'Fiji'),(90,2,'Fidji'),(91,1,'Gabon'),(91,2,'Gabon'),(92,1,'Gambia'),(92,2,'Gambie'),(93,1,'Georgia'),(93,2,'Géorgie'),(94,1,'Ghana'),(94,2,'Ghana'),(95,1,'Grenada'),(95,2,'Grenade'),(96,1,'Greenland'),(96,2,'Groenland'),(97,1,'Gibraltar'),(97,2,'Gibraltar'),(98,1,'Guadeloupe'),(98,2,'Guadeloupe'),(99,1,'Guam'),(99,2,'Guam'),(100,1,'Guatemala'),(100,2,'Guatemala'),(101,1,'Guernsey'),(101,2,'Guernesey'),(102,1,'Guinea'),(102,2,'Guinée'),(103,1,'Guinea-Bissau'),(103,2,'Guinée-Bissau'),(104,1,'Guyana'),(104,2,'Guyana'),(105,1,'Haiti'),(105,2,'Haîti'),(106,1,'Heard Island and McDonald Islands'),(106,2,'Heard, Île et Mcdonald, Îles'),(107,1,'Vatican City State'),(107,2,'Saint-Siege (État de la Cité du Vatican)'),(108,1,'Honduras'),(108,2,'Honduras'),(109,1,'Iceland'),(109,2,'Islande'),(110,1,'India'),(110,2,'Indie'),(111,1,'Indonesia'),(111,2,'Indonésie'),(112,1,'Iran'),(112,2,'Iran'),(113,1,'Iraq'),(113,2,'Iraq'),(114,1,'Isle of Man'),(114,2,'Île de Man'),(115,1,'Jamaica'),(115,2,'Jamaique'),(116,1,'Jersey'),(116,2,'Jersey'),(117,1,'Jordan'),(117,2,'Jordanie'),(118,1,'Kazakhstan'),(118,2,'Kazakhstan'),(119,1,'Kenya'),(119,2,'Kenya'),(120,1,'Kiribati'),(120,2,'Kiribati'),(121,1,'Korea, Dem. Republic of'),(121,2,'Corée, Rép. Populaire Dém. de'),(122,1,'Kuwait'),(122,2,'Koweït'),(123,1,'Kyrgyzstan'),(123,2,'Kirghizistan'),(124,1,'Laos'),(124,2,'Laos'),(125,1,'Latvia'),(125,2,'Lettonie'),(126,1,'Lebanon'),(126,2,'Liban'),(127,1,'Lesotho'),(127,2,'Lesotho'),(128,1,'Liberia'),(128,2,'Libéria'),(129,1,'Libya'),(129,2,'Libyenne, Jamahiriya Arabe'),(130,1,'Liechtenstein'),(130,2,'Liechtenstein'),(131,1,'Lithuania'),(131,2,'Lituanie'),(132,1,'Macau'),(132,2,'Macao'),(133,1,'Macedonia'),(133,2,'Macédoine'),(134,1,'Madagascar'),(134,2,'Madagascar'),(135,1,'Malawi'),(135,2,'Malawi'),(136,1,'Malaysia'),(136,2,'Malaisie'),(137,1,'Maldives'),(137,2,'Maldives'),(138,1,'Mali'),(138,2,'Mali'),(139,1,'Malta'),(139,2,'Malte'),(140,1,'Marshall Islands'),(140,2,'Marshall, Îles'),(141,1,'Martinique'),(141,2,'Martinique'),(142,1,'Mauritania'),(142,2,'Mauritanie'),(144,1,'Mayotte'),(144,2,'Mayotte'),(145,1,'Mexico'),(145,2,'Mexique'),(146,1,'Micronesia'),(146,2,'Micronésie'),(147,1,'Moldova'),(147,2,'Moldova'),(148,1,'Monaco'),(148,2,'Monaco'),(149,1,'Mongolia'),(149,2,'Mongolie'),(150,1,'Montenegro'),(150,2,'Monténégro'),(151,1,'Montserrat'),(151,2,'Montserrat'),(152,1,'Morocco'),(152,2,'Maroc'),(153,1,'Mozambique'),(153,2,'Mozambique'),(154,1,'Namibia'),(154,2,'Namibie'),(155,1,'Nauru'),(155,2,'Nauru'),(156,1,'Nepal'),(156,2,'Népal'),(157,1,'Netherlands Antilles'),(157,2,'Antilles Néerlandaises'),(158,1,'New Caledonia'),(158,2,'Nouvelle-Calédonie'),(159,1,'Nicaragua'),(159,2,'Nicaragua'),(160,1,'Niger'),(160,2,'Niger'),(161,1,'Niue'),(161,2,'Niué'),(162,1,'Norfolk Island'),(162,2,'Norfolk, Île'),(163,1,'Northern Mariana Islands'),(163,2,'Mariannes du Nord, Îles'),(164,1,'Oman'),(164,2,'Oman'),(165,1,'Pakistan'),(165,2,'Pakistan'),(166,1,'Palau'),(166,2,'Palaos'),(167,1,'Palestinian Territories'),(167,2,'Palestinien Occupé, Territoire'),(168,1,'Panama'),(168,2,'Panama'),(169,1,'Papua New Guinea'),(169,2,'Papouasie-Nouvelle-Guinée'),(170,1,'Paraguay'),(170,2,'Paraguay'),(171,1,'Peru'),(171,2,'Pérou'),(172,1,'Philippines'),(172,2,'Philippines'),(173,1,'Pitcairn'),(173,2,'Pitcairn'),(174,1,'Puerto Rico'),(174,2,'Porto Rico'),(175,1,'Qatar'),(175,2,'Qatar'),(176,1,'Réunion'),(176,2,'Réunion'),(177,1,'Russian Federation'),(177,2,'Russie, Fédération de'),(178,1,'Rwanda'),(178,2,'Rwanda'),(179,1,'Saint Barthélemy'),(179,2,'Saint-Barthélemy'),(180,1,'Saint Kitts and Nevis'),(180,2,'Saint-Kitts-et-Nevis'),(181,1,'Saint Lucia'),(181,2,'Sainte-Lucie'),(182,1,'Saint Martin'),(182,2,'Saint-Martin'),(183,1,'Saint Pierre and Miquelon'),(183,2,'Saint-Pierre-et-Miquelon'),(184,1,'Saint Vincent and the Grenadines'),(184,2,'Saint-Vincent-et-Les Grenadines'),(185,1,'Samoa'),(185,2,'Samoa'),(186,1,'San Marino'),(186,2,'Saint-Marin'),(187,1,'São Tomé and Príncipe'),(187,2,'Sao Tomé-et-Principe'),(188,1,'Saudi Arabia'),(188,2,'Arabie Saoudite'),(189,1,'Senegal'),(189,2,'Sénégal'),(190,1,'Serbia'),(190,2,'Serbie'),(191,1,'Seychelles'),(191,2,'Seychelles'),(192,1,'Sierra Leone'),(192,2,'Sierra Leone'),(193,1,'Slovenia'),(193,2,'Slovénie'),(194,1,'Solomon Islands'),(194,2,'Salomon, Îles'),(195,1,'Somalia'),(195,2,'Somalie'),(196,1,'South Georgia and the South Sandwich Islands'),(196,2,'Géorgie du Sud et les Îles Sandwich du Sud'),(197,1,'Sri Lanka'),(197,2,'Sri Lanka'),(198,1,'Sudan'),(198,2,'Soudan'),(199,1,'Suriname'),(199,2,'Suriname'),(200,1,'Svalbard and Jan Mayen'),(200,2,'Svalbard et Île Jan Mayen'),(201,1,'Swaziland'),(201,2,'Swaziland'),(202,1,'Syria'),(202,2,'Syrienne'),(203,1,'Taiwan'),(203,2,'Taïwan'),(204,1,'Tajikistan'),(204,2,'Tadjikistan'),(205,1,'Tanzania'),(205,2,'Tanzanie'),(206,1,'Thailand'),(206,2,'Thaïlande'),(207,1,'Tokelau'),(207,2,'Tokelau'),(208,1,'Tonga'),(208,2,'Tonga'),(209,1,'Trinidad and Tobago'),(209,2,'Trinité-et-Tobago'),(210,1,'Tunisia'),(210,2,'Tunisie'),(211,1,'Turkey'),(211,2,'Turquie'),(212,1,'Turkmenistan'),(212,2,'Turkménistan'),(213,1,'Turks and Caicos Islands'),(213,2,'Turks et Caiques, Îles'),(214,1,'Tuvalu'),(214,2,'Tuvalu'),(215,1,'Uganda'),(215,2,'Ouganda'),(216,1,'Ukraine'),(216,2,'Ukraine'),(217,1,'United Arab Emirates'),(217,2,'Émirats Arabes Unis'),(218,1,'Uruguay'),(218,2,'Uruguay'),(219,1,'Uzbekistan'),(219,2,'Ouzbékistan'),(220,1,'Vanuatu'),(220,2,'Vanuatu'),(221,1,'Venezuela'),(221,2,'Venezuela'),(222,1,'Vietnam'),(222,2,'Vietnam'),(223,1,'Virgin Islands (British)'),(223,2,'Îles Vierges Britanniques'),(224,1,'Virgin Islands (U.S.)'),(224,2,'Îles Vierges des États-Unis'),(225,1,'Wallis and Futuna'),(225,2,'Wallis et Futuna'),(226,1,'Western Sahara'),(226,2,'Sahara Occidental'),(227,1,'Yemen'),(227,2,'Yémen'),(228,1,'Zambia'),(228,2,'Zambie'),(229,1,'Zimbabwe'),(229,2,'Zimbabwe'),(230,1,'Albania'),(230,2,'Albanie'),(231,1,'Afghanistan'),(231,2,'Afghanistan'),(232,1,'Antarctica'),(232,2,'Antarctique'),(233,1,'Bosnia and Herzegovina'),(233,2,'Bosnie-Herzégovine'),(234,1,'Bouvet Island'),(234,2,'Bouvet, Île'),(235,1,'British Indian Ocean Territory'),(235,2,'Océan Indien, Territoire Britannique de L\''),(236,1,'Bulgaria'),(236,2,'Bulgarie'),(237,1,'Cayman Islands'),(237,2,'Caïmans, Îles'),(238,1,'Christmas Island'),(238,2,'Christmas, Île'),(239,1,'Cocos (Keeling) Islands'),(239,2,'Cocos (Keeling), Îles'),(240,1,'Cook Islands'),(240,2,'Cook, Îles'),(241,1,'French Guiana'),(241,2,'Guyane Française'),(242,1,'French Polynesia'),(242,2,'Polynésie Française'),(243,1,'French Southern Territories'),(243,2,'Terres Australes Françaises'),(244,1,'Åland Islands'),(244,2,'Åland, Îles'),(1,3,'Alemania'),(2,3,'Austria'),(3,3,'Bélgica'),(4,3,'Canadá'),(5,3,'Porcelana'),(6,3,'España'),(7,3,'Finlandia'),(8,3,'Francia'),(9,3,'Grecia'),(10,3,'Italia'),(11,3,'Japón'),(12,3,'Luxemburgo'),(13,3,'Países Bajos'),(14,3,'Polonia'),(15,3,'Portugal'),(16,3,'República Checa'),(17,3,'Reino Unido'),(18,3,'Suecia'),(19,3,'Suiza'),(20,3,'Dinamarca'),(21,3,'EE.UU.'),(22,3,'Hong Kong'),(23,3,'Noruega'),(24,3,'Australia'),(25,3,'Singapur'),(26,3,'Irlanda'),(27,3,'Nueva Zelanda'),(28,3,'Corea del Sur'),(29,3,'Israel'),(30,3,'Sudáfrica'),(31,3,'Nigeria'),(32,3,'Costa de Marfil'),(33,3,'Togo'),(34,3,'Bolivia'),(35,3,'Mauricio'),(143,3,'Hungría'),(36,3,'Rumania'),(37,3,'Eslovaquia'),(38,3,'Argelia'),(39,3,'Samoa Americana'),(40,3,'Andorra'),(41,3,'Angola'),(42,3,'Anguila'),(43,3,'Antigua y Barbuda'),(44,3,'Argentina'),(45,3,'Armenia'),(46,3,'Aruba'),(47,3,'Azerbaiyán'),(48,3,'Bahamas'),(49,3,'Bahrein'),(50,3,'Bangladesh'),(51,3,'Barbados'),(52,3,'Belarús'),(53,3,'Belice'),(54,3,'Benin'),(55,3,'Bermudas'),(56,3,'Bhután'),(57,3,'Botswana'),(58,3,'Brasil'),(59,3,'Brunei'),(60,3,'Burkina Faso'),(61,3,'Birmania (Myanmar)'),(62,3,'Burundi'),(63,3,'Camboya'),(64,3,'Camerún'),(65,3,'Cabo Verde'),(66,3,'República Centroafricana'),(67,3,'Chad'),(68,3,'Chile'),(69,3,'Colombia'),(70,3,'Comoras'),(71,3,'Congo, Rep. Dem.. República'),(72,3,'Congo, República'),(73,3,'Costa Rica'),(74,3,'Croacia'),(75,3,'Cuba'),(76,3,'Chipre'),(77,3,'Djibouti'),(78,3,'Dominica'),(79,3,'República Dominicana'),(80,3,'Timor Oriental'),(81,3,'Ecuador'),(82,3,'Egipto'),(83,3,'El Salvador'),(84,3,'Guinea Ecuatorial'),(85,3,'Eritrea'),(86,3,'Estonia'),(87,3,'Etiopía'),(88,3,'Islas Malvinas'),(89,3,'Islas Feroe'),(90,3,'Fiji'),(91,3,'Gabón'),(92,3,'Gambia'),(93,3,'Georgia'),(94,3,'Ghana'),(95,3,'Granada'),(96,3,'Groenlandia'),(97,3,'Gibraltar'),(98,3,'Guadalupe'),(99,3,'Guam'),(100,3,'Guatemala'),(101,3,'Guernsey'),(102,3,'Guinea'),(103,3,'Guinea-Bissau'),(104,3,'Guyana'),(105,3,'Haití'),(106,3,'Islas Heard y McDonald Islas'),(107,3,'Ciudad del Vaticano'),(108,3,'Honduras'),(109,3,'Islandia'),(110,3,'India'),(111,3,'Indonesia'),(112,3,'Irán'),(113,3,'Iraq'),(114,3,'Isla de Man'),(115,3,'Jamaica'),(116,3,'Jersey'),(117,3,'Jordania'),(118,3,'Kazajstán'),(119,3,'Kenya'),(120,3,'Kiribati'),(121,3,'KOREA, DEM. República de'),(122,3,'Kuwait'),(123,3,'Kirguistán'),(124,3,'Laos'),(125,3,'Letonia'),(126,3,'Líbano'),(127,3,'Lesotho'),(128,3,'Liberia'),(129,3,'Libia'),(130,3,'Liechtenstein'),(131,3,'Lituania'),(132,3,'Macao'),(133,3,'Macedonia'),(134,3,'Madagascar'),(135,3,'Malawi'),(136,3,'Malasia'),(137,3,'Maldivas'),(138,3,'Malí'),(139,3,'Malta'),(140,3,'Islas Marshall'),(141,3,'Martinica'),(142,3,'Mauritania'),(144,3,'Mayotte'),(145,3,'México'),(146,3,'Micronesia'),(147,3,'Moldavia'),(148,3,'Mónaco'),(149,3,'Mongolia'),(150,3,'Montenegro'),(151,3,'Montserrat'),(152,3,'Marruecos'),(153,3,'Mozambique'),(154,3,'Namibia'),(155,3,'Nauru'),(156,3,'Nepal'),(157,3,'Antillas Neerlandesas'),(158,3,'Nueva Caledonia'),(159,3,'Nicaragua'),(160,3,'Níger'),(161,3,'Niue'),(162,3,'Norfolk Island'),(163,3,'Islas Marianas del Norte'),(164,3,'Omán'),(165,3,'Pakistán'),(166,3,'Palau'),(167,3,'Territorios Palestinos'),(168,3,'Panamá'),(169,3,'Papua Nueva Guinea'),(170,3,'Paraguay'),(171,3,'Perú'),(172,3,'Filipinas'),(173,3,'Pitcairn'),(174,3,'Puerto Rico'),(175,3,'Qatar'),(176,3,'Reunión'),(177,3,'Federación de Rusia'),(178,3,'Rwanda'),(179,3,'San Bartolomé'),(180,3,'Saint Kitts y Nevis'),(181,3,'Santa Lucía'),(182,3,'Saint Martin'),(183,3,'San Pedro y Miquelón'),(184,3,'San Vicente y las Granadinas'),(185,3,'Samoa'),(186,3,'San Marino'),(187,3,'Santo Tomé y Príncipe'),(188,3,'Arabia Saudita'),(189,3,'Senegal'),(190,3,'Serbia'),(191,3,'Seychelles'),(192,3,'Sierra Leona'),(193,3,'Eslovenia'),(194,3,'Islas Salomón'),(195,3,'Somalia'),(196,3,'Georgia del Sur e Islas Sandwich del Sur'),(197,3,'Sri Lanka'),(198,3,'Sudán'),(199,3,'Suriname'),(200,3,'Svalbard y Jan Mayen'),(201,3,'Swazilandia'),(202,3,'Siria'),(203,3,'Taiwán'),(204,3,'Tayikistán'),(205,3,'Tanzania'),(206,3,'Tailandia'),(207,3,'Tokelau'),(208,3,'Tonga'),(209,3,'Trinidad y Tobago'),(210,3,'Túnez'),(211,3,'Turquía'),(212,3,'Turkmenistán'),(213,3,'Islas Turcas y Caicos'),(214,3,'Tuvalu'),(215,3,'Uganda'),(216,3,'Ucrania'),(217,3,'Emiratos Árabes Unidos'),(218,3,'Uruguay'),(219,3,'Uzbekistán'),(220,3,'Vanuatu'),(221,3,'Venezuela'),(222,3,'Vietnam'),(223,3,'Islas Vírgenes (Británicas)'),(224,3,'Islas Vírgenes (EE.UU.)'),(225,3,'Wallis y Futuna'),(226,3,'Sáhara Occidental'),(227,3,'Yemen'),(228,3,'Zambia'),(229,3,'Zimbabwe'),(230,3,'Albania'),(231,3,'Afganistán'),(232,3,'Antártida'),(233,3,'Bosnia y Herzegovina'),(234,3,'Isla Bouvet'),(235,3,'British Indian Ocean Territory'),(236,3,'Bulgaria'),(237,3,'Islas Caimán'),(238,3,'Isla de Navidad'),(239,3,'Islas Cocos (Keeling) Islands'),(240,3,'Islas Cook'),(241,3,'Francés Guayana'),(242,3,'Polinesia francés'),(243,3,'Territorios del sur francés'),(244,3,'Islas Åland');
/*!40000 ALTER TABLE `ps_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_currency`
--

DROP TABLE IF EXISTS `ps_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_currency`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_currency`
--

LOCK TABLES `ps_currency` WRITE;
/*!40000 ALTER TABLE `ps_currency` DISABLE KEYS */;
INSERT INTO `ps_currency` VALUES (1,'Euro','EUR','€',1,2,1,'1.000000',0),(2,'Dollar','USD','$',0,1,1,'1.200000',0),(3,'Pound','GBP','£',0,1,1,'0.800000',0);
/*!40000 ALTER TABLE `ps_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer`
--

DROP TABLE IF EXISTS `ps_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  UNIQUE KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer`
--

LOCK TABLES `ps_customer` WRITE;
/*!40000 ALTER TABLE `ps_customer` DISABLE KEYS */;
INSERT INTO `ps_customer` VALUES (1,1,1,'47ce86627c1f3c792a80773c5d2deaf8','pub@prestashop.com','ad807bdf0426766c05c64041124d30ce','2010-11-06 10:57:24','1970-01-15','DOE',1,NULL,NULL,1,'John',NULL,1,0,'2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customer_group`
--

DROP TABLE IF EXISTS `ps_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customer_group`
--

LOCK TABLES `ps_customer_group` WRITE;
/*!40000 ALTER TABLE `ps_customer_group` DISABLE KEYS */;
INSERT INTO `ps_customer_group` VALUES (1,1);
/*!40000 ALTER TABLE `ps_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization`
--

DROP TABLE IF EXISTS `ps_customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization`
--

LOCK TABLES `ps_customization` WRITE;
/*!40000 ALTER TABLE `ps_customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field`
--

DROP TABLE IF EXISTS `ps_customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field`
--

LOCK TABLES `ps_customization_field` WRITE;
/*!40000 ALTER TABLE `ps_customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customization_field_lang`
--

DROP TABLE IF EXISTS `ps_customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customization_field_lang`
--

LOCK TABLES `ps_customization_field_lang` WRITE;
/*!40000 ALTER TABLE `ps_customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_customized_data`
--

DROP TABLE IF EXISTS `ps_customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_customized_data`
--

LOCK TABLES `ps_customized_data` WRITE;
/*!40000 ALTER TABLE `ps_customized_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_date_range`
--

DROP TABLE IF EXISTS `ps_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_date_range`
--

LOCK TABLES `ps_date_range` WRITE;
/*!40000 ALTER TABLE `ps_date_range` DISABLE KEYS */;
INSERT INTO `ps_date_range` VALUES (1,'2010-11-06 00:00:00','2010-11-06 23:59:59'),(2,'2010-11-07 00:00:00','2010-11-07 23:59:59'),(3,'2010-11-08 00:00:00','2010-11-08 23:59:59'),(4,'2010-11-12 00:00:00','2010-11-12 23:59:59'),(5,'2010-11-14 00:00:00','2010-11-14 23:59:59');
/*!40000 ALTER TABLE `ps_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_delivery`
--

DROP TABLE IF EXISTS `ps_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_delivery`
--

LOCK TABLES `ps_delivery` WRITE;
/*!40000 ALTER TABLE `ps_delivery` DISABLE KEYS */;
INSERT INTO `ps_delivery` VALUES (1,2,NULL,1,1,'5.00'),(2,2,NULL,1,2,'5.00'),(4,2,1,NULL,1,'5.00'),(5,2,1,NULL,2,'5.00');
/*!40000 ALTER TABLE `ps_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount`
--

DROP TABLE IF EXISTS `ps_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount` (
  `id_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '1',
  `cumulable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cumulable_reduction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `minimal` decimal(17,2) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_discount`),
  KEY `discount_name` (`name`),
  KEY `discount_customer` (`id_customer`),
  KEY `id_discount_type` (`id_discount_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount`
--

LOCK TABLES `ps_discount` WRITE;
/*!40000 ALTER TABLE `ps_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_category`
--

DROP TABLE IF EXISTS `ps_discount_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_category` (
  `id_category` int(11) unsigned NOT NULL,
  `id_discount` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_discount`),
  KEY `discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_category`
--

LOCK TABLES `ps_discount_category` WRITE;
/*!40000 ALTER TABLE `ps_discount_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_discount_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_lang`
--

DROP TABLE IF EXISTS `ps_discount_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_lang` (
  `id_discount` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`id_discount`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_lang`
--

LOCK TABLES `ps_discount_lang` WRITE;
/*!40000 ALTER TABLE `ps_discount_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_discount_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_quantity`
--

DROP TABLE IF EXISTS `ps_discount_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_quantity` (
  `id_discount_quantity` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `value` decimal(17,2) unsigned NOT NULL,
  PRIMARY KEY (`id_discount_quantity`),
  KEY `id_discount_type` (`id_discount_type`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_quantity`
--

LOCK TABLES `ps_discount_quantity` WRITE;
/*!40000 ALTER TABLE `ps_discount_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_discount_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_type`
--

DROP TABLE IF EXISTS `ps_discount_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_type` (
  `id_discount_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_discount_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_type`
--

LOCK TABLES `ps_discount_type` WRITE;
/*!40000 ALTER TABLE `ps_discount_type` DISABLE KEYS */;
INSERT INTO `ps_discount_type` VALUES (1),(2),(3);
/*!40000 ALTER TABLE `ps_discount_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_discount_type_lang`
--

DROP TABLE IF EXISTS `ps_discount_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_discount_type_lang` (
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_discount_type`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_discount_type_lang`
--

LOCK TABLES `ps_discount_type_lang` WRITE;
/*!40000 ALTER TABLE `ps_discount_type_lang` DISABLE KEYS */;
INSERT INTO `ps_discount_type_lang` VALUES (1,1,'Discount on order (%)'),(2,1,'Discount on order (amount)'),(3,1,'Free shipping'),(1,2,'Réduction sur la commande (%)'),(2,2,'Réduction sur la commande (montant)'),(3,2,'Frais de port gratuits'),(1,3,'Descuento orden (%)'),(2,3,'Descuento (el orden de cantidad)'),(3,3,'Gastos de envío gratis');
/*!40000 ALTER TABLE `ps_discount_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_employee`
--

DROP TABLE IF EXISTS `ps_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_employee`
--

LOCK TABLES `ps_employee` WRITE;
/*!40000 ALTER TABLE `ps_employee` DISABLE KEYS */;
INSERT INTO `ps_employee` VALUES (1,1,'PLIP','Plop','vincent.lark@gmail.com','07bec3b8a0acee5e9a88f8f850e38c31','2010-11-06 04:58:35','2010-01-01','2010-12-31',1);
/*!40000 ALTER TABLE `ps_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature`
--

DROP TABLE IF EXISTS `ps_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_feature`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature`
--

LOCK TABLES `ps_feature` WRITE;
/*!40000 ALTER TABLE `ps_feature` DISABLE KEYS */;
INSERT INTO `ps_feature` VALUES (1),(2),(3),(4);
/*!40000 ALTER TABLE `ps_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_lang`
--

DROP TABLE IF EXISTS `ps_feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_lang`
--

LOCK TABLES `ps_feature_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_lang` VALUES (1,1,'Height'),(1,2,'Hauteur'),(2,1,'Width'),(2,2,'Largeur'),(3,1,'Depth'),(3,2,'Profondeur'),(4,1,'Weight'),(4,2,'Poids'),(1,3,'Alto'),(2,3,'Ancho'),(3,3,'Profundo'),(4,3,'Peso');
/*!40000 ALTER TABLE `ps_feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_product`
--

DROP TABLE IF EXISTS `ps_feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_product`
--

LOCK TABLES `ps_feature_product` WRITE;
/*!40000 ALTER TABLE `ps_feature_product` DISABLE KEYS */;
INSERT INTO `ps_feature_product` VALUES (1,1,11),(1,2,15),(2,1,12),(2,2,16),(3,1,14),(3,2,18),(4,1,13),(4,2,17),(3,7,26),(4,7,25),(2,7,24),(1,7,23);
/*!40000 ALTER TABLE `ps_feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value`
--

DROP TABLE IF EXISTS `ps_feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value`
--

LOCK TABLES `ps_feature_value` WRITE;
/*!40000 ALTER TABLE `ps_feature_value` DISABLE KEYS */;
INSERT INTO `ps_feature_value` VALUES (11,1,1),(15,1,1),(12,2,1),(16,2,1),(14,3,1),(18,3,1),(13,4,1),(17,4,1),(26,3,1),(25,4,1),(24,2,1),(23,1,1);
/*!40000 ALTER TABLE `ps_feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_feature_value_lang`
--

DROP TABLE IF EXISTS `ps_feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_feature_value_lang`
--

LOCK TABLES `ps_feature_value_lang` WRITE;
/*!40000 ALTER TABLE `ps_feature_value_lang` DISABLE KEYS */;
INSERT INTO `ps_feature_value_lang` VALUES (13,1,'49.2 grams'),(13,2,'49,2 grammes'),(13,3,'49,2 g'),(12,2,'52,3 mm'),(12,1,'52.3 mm'),(12,3,'52.3 mm'),(11,2,'69,8 mm'),(11,1,'69.8 mm'),(11,3,'69.8 mm'),(17,2,'15,5 g'),(17,1,'15.5 g'),(17,3,'15.5 g'),(16,2,'41,2 mm'),(16,1,'41.2 mm'),(16,3,'41.2 mm'),(15,2,'27,3 mm'),(15,1,'27.3 mm'),(15,3,'27.3 mm'),(14,1,'6,5 mm'),(14,2,'6,5 mm'),(14,3,'6,5 mm'),(18,1,'10,5 mm (clip compris)'),(18,2,'10,5 mm (clip compris)'),(18,3,'10,5 mm (clip incluyendo)'),(26,2,'8mm'),(26,1,'8mm'),(26,3,'8mm'),(25,2,'120g'),(25,3,'120g'),(25,1,'120g'),(24,2,'70mm'),(24,1,'70mm'),(24,3,'70mm'),(23,2,'110mm'),(23,3,'110mm'),(23,1,'110mm');
/*!40000 ALTER TABLE `ps_feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group`
--

DROP TABLE IF EXISTS `ps_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group`
--

LOCK TABLES `ps_group` WRITE;
/*!40000 ALTER TABLE `ps_group` DISABLE KEYS */;
INSERT INTO `ps_group` VALUES (1,'0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_group_lang`
--

DROP TABLE IF EXISTS `ps_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `attribute_lang_index` (`id_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_group_lang`
--

LOCK TABLES `ps_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_group_lang` DISABLE KEYS */;
INSERT INTO `ps_group_lang` VALUES (1,1,'Default'),(1,2,'Défaut'),(1,3,'Predeterminado');
/*!40000 ALTER TABLE `ps_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_guest`
--

DROP TABLE IF EXISTS `ps_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_guest`
--

LOCK TABLES `ps_guest` WRITE;
/*!40000 ALTER TABLE `ps_guest` DISABLE KEYS */;
INSERT INTO `ps_guest` VALUES (1,1,3,1,1,1680,1050,32,1,1,0,1,1,0,'en-us'),(2,4,3,0,1,3120,900,24,0,1,0,0,0,0,'fr'),(3,4,8,0,1,1440,900,24,0,1,0,0,0,0,'fr'),(4,4,8,0,1,3120,1050,24,0,1,0,0,0,0,'fr'),(5,4,3,0,1,1440,900,24,0,1,0,0,0,0,'fr');
/*!40000 ALTER TABLE `ps_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook`
--

DROP TABLE IF EXISTS `ps_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook`
--

LOCK TABLES `ps_hook` WRITE;
/*!40000 ALTER TABLE `ps_hook` DISABLE KEYS */;
INSERT INTO `ps_hook` VALUES (1,'payment','Payment',NULL,1),(2,'newOrder','New orders',NULL,0),(3,'paymentConfirm','Payment confirmation',NULL,0),(4,'paymentReturn','Payment return',NULL,0),(5,'updateQuantity','Quantity update','Quantity is updated only when the customer effectively <b>place</b> his order.',0),(6,'rightColumn','Right column blocks',NULL,1),(7,'leftColumn','Left column blocks',NULL,1),(8,'home','Homepage content',NULL,1),(9,'header','Header of pages','A hook which allow you to do things in the header of each pages',1),(10,'cart','Cart creation and update',NULL,0),(11,'authentication','Successful customer authentication',NULL,0),(12,'addproduct','Product creation',NULL,0),(13,'updateproduct','Product Update',NULL,0),(14,'top','Top of pages','A hook which allow you to do things a the top of each pages.',1),(15,'extraRight','Extra actions on the product page (right column).',NULL,0),(16,'deleteproduct','Product deletion','This hook is called when a product is deleted',0),(17,'productfooter','Product footer','Add new blocks under the product description',1),(18,'invoice','Invoice','Add blocks to invoice (order)',1),(19,'updateOrderStatus','Order\'s status update event','Launch modules when the order\'s status of an order change.',0),(20,'adminOrder','Display in Back-Office, tab AdminOrder','Launch modules when the tab AdminOrder is displayed on back-office.',0),(21,'footer','Footer','Add block in footer',1),(22,'PDFInvoice','PDF Invoice','Allow the display of extra informations into the PDF invoice',0),(23,'adminCustomers','Display in Back-Office, tab AdminCustomers','Launch modules when the tab AdminCustomers is displayed on back-office.',0),(24,'orderConfirmation','Order confirmation page','Called on order confirmation page',0),(25,'createAccount','Successful customer create account','Called when new customer create account successfuled',0),(26,'customerAccount','Customer account page display in front office','Display on page account of the customer',1),(27,'orderSlip','Called when a order slip is created','Called when a quantity of one product change in an order.',0),(28,'productTab','Tabs on product page','Called on order product page tabs',0),(29,'productTabContent','Content of tabs on product page','Called on order product page tabs',0),(30,'shoppingCart','Shopping cart footer','Display some specific informations on the shopping cart page',0),(31,'createAccountForm','Customer account creation form','Display some information on the form to create a customer account',1),(32,'AdminStatsModules','Stats - Modules',NULL,1),(33,'GraphEngine','Graph Engines',NULL,0),(34,'orderReturn','Product returned',NULL,0),(35,'productActions','Product actions','Put new action buttons on product page',1),(36,'backOfficeHome','Administration panel homepage',NULL,1),(37,'GridEngine','Grid Engines',NULL,0),(38,'watermark','Watermark',NULL,0),(39,'cancelProduct','Product cancelled','This hook is called when you cancel a product in an order',0),(40,'extraLeft','Extra actions on the product page (left column).',NULL,0),(41,'productOutOfStock','Product out of stock','Make action while product is out of stock',1),(42,'updateProductAttribute','Product attribute update',NULL,0),(43,'extraCarrier','Extra carrier (module mode)',NULL,0),(44,'shoppingCartExtra','Shopping cart extra button','Display some specific informations',1),(45,'search','Search',NULL,0),(46,'backBeforePayment','Redirect in order process','Redirect user to the module instead of displaying payment modules',0),(47,'updateCarrier','Carrier Update','This hook is called when a carrier is updated',0),(48,'postUpdateOrderStatus','Post update of order status',NULL,0),(49,'createAccountTop','Block above the form for create an account',NULL,1),(50,'backOfficeHeader','Administration panel header',NULL,0),(51,'backOfficeTop','Administration panel hover the tabs',NULL,1),(52,'backOfficeFooter','Administration panel footer',NULL,1),(53,'myAccountBlock','My account block','Display extra informations inside the \"my account\" block',1);
/*!40000 ALTER TABLE `ps_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module`
--

DROP TABLE IF EXISTS `ps_hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module`
--

LOCK TABLES `ps_hook_module` WRITE;
/*!40000 ALTER TABLE `ps_hook_module` DISABLE KEYS */;
INSERT INTO `ps_hook_module` VALUES (3,1,1),(6,1,2),(4,1,3),(3,4,1),(6,4,2),(61,6,3),(60,6,2),(67,40,1),(63,17,1),(15,7,1),(59,6,1),(10,7,2),(24,7,3),(65,1,4),(12,7,4),(17,7,5),(5,8,1),(1,8,2),(19,9,1),(62,9,2),(13,14,1),(18,14,2),(19,14,3),(22,14,4),(65,4,3),(23,21,1),(25,11,1),(25,21,2),(26,32,1),(27,32,2),(28,32,3),(30,32,4),(31,32,5),(32,32,6),(33,32,7),(34,33,1),(35,33,2),(36,33,3),(37,33,4),(38,36,1),(39,37,1),(40,32,8),(41,32,9),(42,32,10),(43,32,11),(42,14,5),(43,14,6),(44,32,12),(45,32,13),(46,32,14),(64,17,2),(48,32,15),(49,32,16),(50,32,17),(51,32,18),(51,45,1),(25,25,1),(41,20,2),(52,32,19),(57,32,20),(54,38,1);
/*!40000 ALTER TABLE `ps_hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_hook_module_exceptions`
--

LOCK TABLES `ps_hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image`
--

DROP TABLE IF EXISTS `ps_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `product_position` (`id_product`,`position`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image`
--

LOCK TABLES `ps_image` WRITE;
/*!40000 ALTER TABLE `ps_image` DISABLE KEYS */;
INSERT INTO `ps_image` VALUES (40,1,4,0),(39,1,3,0),(38,1,2,0),(37,1,1,1),(48,2,3,0),(47,2,2,0),(49,2,4,0),(46,2,1,1),(15,5,1,1),(16,5,2,0),(17,5,3,0),(18,6,4,0),(19,6,5,0),(20,6,1,1),(24,7,1,1),(33,8,1,1),(27,7,3,0),(26,7,2,0),(29,7,4,0),(30,7,5,0),(32,7,6,0),(36,9,1,1),(41,1,5,0),(42,1,6,0),(44,1,7,0),(45,1,8,0);
/*!40000 ALTER TABLE `ps_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_lang`
--

DROP TABLE IF EXISTS `ps_image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  UNIQUE KEY `image_lang_index` (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_lang`
--

LOCK TABLES `ps_image_lang` WRITE;
/*!40000 ALTER TABLE `ps_image_lang` DISABLE KEYS */;
INSERT INTO `ps_image_lang` VALUES (40,2,'iPod Nano'),(40,3,'iPod Nano'),(40,1,'iPod Nano'),(39,2,'iPod Nano'),(39,3,'iPod Nano'),(39,1,'iPod Nano'),(38,2,'iPod Nano'),(38,3,'iPod Nano'),(38,1,'iPod Nano'),(37,2,'iPod Nano'),(37,3,'iPod Nano'),(37,1,'iPod Nano'),(48,2,'iPod shuffle'),(48,3,'iPod shuffle'),(48,1,'iPod shuffle'),(47,2,'iPod shuffle'),(47,3,'iPod shuffle'),(47,1,'iPod shuffle'),(49,2,'iPod shuffle'),(49,3,'iPod shuffle'),(49,1,'iPod shuffle'),(46,2,'iPod shuffle'),(46,3,'iPod shuffle'),(46,1,'iPod shuffle'),(10,1,'luxury-cover-for-ipod-video'),(10,3,'luxury-cover-for-ipod-video'),(10,2,'housse-luxe-pour-ipod-video'),(11,1,'cover'),(11,2,'housse'),(11,3,'cubrir'),(12,1,'myglove-ipod-nano'),(12,2,'myglove-ipod-nano'),(12,3,'myglove-ipod-nano'),(13,1,'myglove-ipod-nano'),(13,2,'myglove-ipod-nano'),(13,3,'myglove-ipod-nano'),(14,1,'myglove-ipod-nano'),(14,2,'myglove-ipod-nano'),(14,3,'myglove-ipod-nano'),(15,1,'MacBook Air'),(15,2,'macbook-air-1'),(15,3,'macbook-air-1'),(16,1,'MacBook Air'),(16,2,'macbook-air-2'),(16,3,'macbook-air-2'),(17,1,'MacBook Air'),(17,2,'macbook-air-3'),(17,3,'macbook-air-3'),(18,1,'MacBook Air'),(18,2,'macbook-air-4'),(18,3,'macbook-air-4'),(19,1,'MacBook Air'),(19,2,'macbook-air-5'),(19,3,'macbook-air-5'),(20,1,' MacBook Air SuperDrive'),(20,2,'superdrive-pour-macbook-air-1'),(20,3,'superdrive-pour-macbook-air-1'),(24,2,'iPod touch'),(24,1,'iPod touch'),(24,3,'iPod touch'),(33,1,'housse-portefeuille-en-cuir'),(33,3,'housse-portefeuille-en-cuir'),(26,1,'iPod touch'),(26,2,'iPod touch'),(26,3,'iPod touch'),(27,1,'iPod touch'),(27,2,'iPod touch'),(27,3,'iPod touch'),(29,1,'iPod touch'),(29,2,'iPod touch'),(29,3,'iPod touch'),(30,1,'iPod touch'),(30,2,'iPod touch'),(30,3,'iPod touch'),(32,1,'iPod touch'),(32,2,'iPod touch'),(32,3,'iPod touch'),(33,2,'housse-portefeuille-en-cuir-ipod-nano'),(36,2,'Écouteurs à isolation sonore Shure SE210'),(36,3,'Auriculares aislantes del sonido Shure SE210'),(36,1,'Shure SE210 Sound-Isolating Earphones for iPod and iPhone'),(41,1,'iPod Nano'),(41,2,'iPod Nano'),(41,3,'iPod Nano'),(42,1,'iPod Nano'),(42,2,'iPod Nano'),(42,3,'iPod Nano'),(44,1,'iPod Nano'),(44,2,'iPod Nano'),(44,3,'iPod Nano'),(45,1,'iPod Nano'),(45,2,'iPod Nano'),(45,3,'iPod Nano');
/*!40000 ALTER TABLE `ps_image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_image_type`
--

DROP TABLE IF EXISTS `ps_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_image_type`
--

LOCK TABLES `ps_image_type` WRITE;
/*!40000 ALTER TABLE `ps_image_type` DISABLE KEYS */;
INSERT INTO `ps_image_type` VALUES (1,'small',45,45,1,1,1,1,0),(2,'medium',80,80,1,1,1,1,0),(3,'large',300,300,1,1,1,1,0),(4,'thickbox',600,600,1,0,0,0,0),(5,'category',500,150,0,1,0,0,0),(6,'home',129,129,1,0,0,0,0),(7,'large_scene',556,200,0,0,0,0,1),(8,'thumb_scene',161,58,0,0,0,0,1);
/*!40000 ALTER TABLE `ps_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_lang`
--

DROP TABLE IF EXISTS `ps_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_lang`
--

LOCK TABLES `ps_lang` WRITE;
/*!40000 ALTER TABLE `ps_lang` DISABLE KEYS */;
INSERT INTO `ps_lang` VALUES (1,'English (English)',1,'en'),(2,'Français (French)',1,'fr'),(3,'Español (Spanish)',1,'es');
/*!40000 ALTER TABLE `ps_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_location_coords`
--

DROP TABLE IF EXISTS `ps_location_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_location_coords` (
  `id_location_coords` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` int(4) NOT NULL,
  `y` int(4) NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_location_coords`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_location_coords`
--

LOCK TABLES `ps_location_coords` WRITE;
/*!40000 ALTER TABLE `ps_location_coords` DISABLE KEYS */;
INSERT INTO `ps_location_coords` VALUES (1,285,61,1),(2,294,68,2),(3,276,62,3),(4,84,45,4),(5,470,99,5),(6,260,85,6),(7,310,35,7),(8,271,69,8),(9,308,87,9),(10,292,80,10),(11,531,92,11),(12,277,63,12),(13,278,58,13),(14,300,59,14),(15,251,86,15),(16,293,63,16),(17,265,55,17),(18,294,40,18),(19,281,69,19),(20,284,51,20),(21,71,87,21),(22,491,123,22),(23,283,41,23),(24,534,228,24),(25,475,169,25),(26,253,58,26),(27,590,264,27),(28,509,93,28),(29,334,106,29),(30,311,239,30),(31,282,153,31),(32,253,156,32),(33,267,154,33),(34,135,210,34);
/*!40000 ALTER TABLE `ps_location_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer`
--

DROP TABLE IF EXISTS `ps_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer`
--

LOCK TABLES `ps_manufacturer` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer` DISABLE KEYS */;
INSERT INTO `ps_manufacturer` VALUES (1,'Apple Computer, Inc','2010-11-06 11:57:24','2010-11-06 11:57:24'),(2,'Shure Incorporated','2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` varchar(254) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_manufacturer_lang`
--

LOCK TABLES `ps_manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `ps_manufacturer_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message`
--

DROP TABLE IF EXISTS `ps_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message`
--

LOCK TABLES `ps_message` WRITE;
/*!40000 ALTER TABLE `ps_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_message_readed`
--

DROP TABLE IF EXISTS `ps_message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_message_readed`
--

LOCK TABLES `ps_message_readed` WRITE;
/*!40000 ALTER TABLE `ps_message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta`
--

DROP TABLE IF EXISTS `ps_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta`
--

LOCK TABLES `ps_meta` WRITE;
/*!40000 ALTER TABLE `ps_meta` DISABLE KEYS */;
INSERT INTO `ps_meta` VALUES (1,'404'),(2,'best-sales'),(3,'contact-form'),(4,'index'),(5,'manufacturer'),(6,'new-products'),(7,'password'),(8,'prices-drop'),(9,'sitemap'),(10,'supplier');
/*!40000 ALTER TABLE `ps_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_meta_lang`
--

DROP TABLE IF EXISTS `ps_meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_meta`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_meta_lang`
--

LOCK TABLES `ps_meta_lang` WRITE;
/*!40000 ALTER TABLE `ps_meta_lang` DISABLE KEYS */;
INSERT INTO `ps_meta_lang` VALUES (1,1,'404 error','This page cannot be found','error, 404, not found'),(1,2,'Erreur 404','Cette page est introuvable','erreur, 404, introuvable'),(1,3,'Error 404','Esta página no se encuentra','error, 404, No se ha encontrado'),(2,1,'Best sales','Our best sales','best sales'),(2,2,'Meilleures ventes','Liste de nos produits les mieux vendus','meilleures ventes'),(2,3,'Los más vendidos','Lista de los de mayor venta de productos','los más vendidos'),(3,1,'Contact us','Use our form to contact us','contact, form, e-mail'),(3,2,'Contactez-nous','Utilisez notre formulaire pour nous contacter','contact, formulaire, e-mail'),(3,3,'Contáctenos','Use nuestro formulario de contacto con nosotros','formulario de contacto, e-mail'),(4,1,'','Shop powered by PrestaShop','shop, prestashop'),(4,2,'','Boutique propulsée par PrestaShop','boutique, prestashop'),(4,3,'','Shop powered by PrestaShop','tienda, prestashop'),(5,1,'Manufacturers','Manufacturers list','manufacturer'),(5,2,'Fabricants','Liste de nos fabricants','fabricants'),(5,3,'Fabricantes','Lista de Fabricantes','fabricantes'),(6,1,'New products','Our new products','new, products'),(6,2,'Nouveaux produits','Liste de nos nouveaux produits','nouveau, produit'),(6,3,'Nuevos Productos','Lista de nuestros nuevos productos','nuevo, productos'),(7,1,'Forgot your password','Enter your e-mail address used to register in goal to get e-mail with your new password','forgot, password, e-mail, new, reset'),(7,2,'Mot de passe oublié','Renseignez votre adresse e-mail afin de recevoir votre nouveau mot de passe.','mot de passe, oublié, e-mail, nouveau, regénération'),(7,3,'Olvidaste tu contraseña','Ingrese su dirección de correo electrónico para recibir su nueva contraseña.','contraseña, has olvidado, e-mail, nuevo, regeneración'),(8,1,'Specials','Our special products','special, prices drop'),(8,2,'Promotions','Nos produits en promotion','promotion, réduction'),(8,3,'Promociones','Nuestros productos promocionales','promoción, reducción'),(9,1,'Sitemap','Lost ? Find what your are looking for','sitemap'),(9,2,'Plan du site','Perdu ? Trouvez ce que vous cherchez','plan, site'),(9,3,'Mapa del sitio','¿Perdido? Encuentra lo que buscas','plan, sitio'),(10,1,'Suppliers','Suppliers list','supplier'),(10,2,'Fournisseurs','Liste de nos fournisseurs','fournisseurs'),(10,3,'Proveedores','Lista de Proveedores','proveedores');
/*!40000 ALTER TABLE `ps_meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module`
--

DROP TABLE IF EXISTS `ps_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module`
--

LOCK TABLES `ps_module` WRITE;
/*!40000 ALTER TABLE `ps_module` DISABLE KEYS */;
INSERT INTO `ps_module` VALUES (1,'homefeatured',1),(2,'gsitemap',1),(3,'cheque',1),(4,'paypal',1),(5,'editorial',1),(6,'bankwire',1),(63,'crossselling',1),(62,'feeder',1),(61,'blocknewproducts',1),(10,'blockcategories',1),(12,'blockinfos',1),(13,'blocklanguages',1),(15,'blockmyaccount',1),(60,'blockcart',1),(17,'blockpaymentlogo',1),(18,'blockpermanentlinks',1),(19,'blocksearch',1),(22,'blockuserinfo',1),(23,'blockvariouslinks',1),(24,'blockviewed',1),(25,'statsdata',1),(26,'statsvisits',1),(27,'statssales',1),(28,'statsregistrations',1),(30,'statspersonalinfos',1),(31,'statslive',1),(32,'statsequipment',1),(33,'statscatalog',1),(34,'graphvisifire',1),(35,'graphxmlswfcharts',1),(36,'graphgooglechart',1),(37,'graphartichow',1),(38,'statshome',1),(39,'gridextjs',1),(40,'statsbestcustomers',1),(41,'statsorigin',1),(42,'pagesnotfound',1),(43,'sekeywords',1),(44,'statsproduct',1),(45,'statsbestproducts',1),(46,'statsbestcategories',1),(59,'blockcurrenciesincolumn',1),(48,'statsbestsuppliers',1),(49,'statscarrier',1),(50,'statsnewsletter',1),(51,'statssearch',1),(52,'statscheckup',1),(57,'statsgeolocation',1),(54,'watermark',1),(64,'productscategory',1),(65,'gcheckout',1),(67,'sendtoafriend',1);
/*!40000 ALTER TABLE `ps_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_country`
--

DROP TABLE IF EXISTS `ps_module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_country`
--

LOCK TABLES `ps_module_country` WRITE;
/*!40000 ALTER TABLE `ps_module_country` DISABLE KEYS */;
INSERT INTO `ps_module_country` VALUES (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(3,13),(3,14),(3,15),(3,16),(3,17),(3,18),(3,19),(3,20),(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(4,13),(4,14),(4,15),(4,16),(4,17),(4,18),(4,19),(4,20),(4,21),(4,22),(4,23),(4,24),(4,25),(4,26),(4,27),(4,28),(4,29),(4,30),(4,31),(4,32),(4,33),(4,34),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(6,13),(6,14),(6,15),(6,16),(6,17),(6,18),(6,19),(6,20),(6,21),(6,22),(6,23),(6,24),(6,25),(6,26),(6,27),(6,28),(6,29),(6,30),(6,31),(6,32),(6,33),(6,34),(65,1),(65,2),(65,3),(65,4),(65,5),(65,6),(65,7),(65,8),(65,9),(65,10),(65,11),(65,12),(65,13),(65,14),(65,15),(65,16),(65,17),(65,18),(65,19),(65,20),(65,21),(65,22),(65,23),(65,24),(65,25),(65,26),(65,27),(65,28),(65,29),(65,30),(65,31),(65,32),(65,33),(65,34),(65,35),(65,36),(65,37),(65,38),(65,39),(65,40),(65,41),(65,42),(65,43),(65,44),(65,45),(65,46),(65,47),(65,48),(65,49),(65,50),(65,51),(65,52),(65,53),(65,54),(65,55),(65,56),(65,57),(65,58),(65,59),(65,60),(65,61),(65,62),(65,63),(65,64),(65,65),(65,66),(65,67),(65,68),(65,69),(65,70),(65,71),(65,72),(65,73),(65,74),(65,75),(65,76),(65,77),(65,78),(65,79),(65,80),(65,81),(65,82),(65,83),(65,84),(65,85),(65,86),(65,87),(65,88),(65,89),(65,90),(65,91),(65,92),(65,93),(65,94),(65,95),(65,96),(65,97),(65,98),(65,99),(65,100),(65,101),(65,102),(65,103),(65,104),(65,105),(65,106),(65,107),(65,108),(65,109),(65,110),(65,111),(65,112),(65,113),(65,114),(65,115),(65,116),(65,117),(65,118),(65,119),(65,120),(65,121),(65,122),(65,123),(65,124),(65,125),(65,126),(65,127),(65,128),(65,129),(65,130),(65,131),(65,132),(65,133),(65,134),(65,135),(65,136),(65,137),(65,138),(65,139),(65,140),(65,141),(65,142),(65,143),(65,144),(65,145),(65,146),(65,147),(65,148),(65,149),(65,150),(65,151),(65,152),(65,153),(65,154),(65,155),(65,156),(65,157),(65,158),(65,159),(65,160),(65,161),(65,162),(65,163),(65,164),(65,165),(65,166),(65,167),(65,168),(65,169),(65,170),(65,171),(65,172),(65,173),(65,174),(65,175),(65,176),(65,177),(65,178),(65,179),(65,180),(65,181),(65,182),(65,183),(65,184),(65,185),(65,186),(65,187),(65,188),(65,189),(65,190),(65,191),(65,192),(65,193),(65,194),(65,195),(65,196),(65,197),(65,198),(65,199),(65,200),(65,201),(65,202),(65,203),(65,204),(65,205),(65,206),(65,207),(65,208),(65,209),(65,210),(65,211),(65,212),(65,213),(65,214),(65,215),(65,216),(65,217),(65,218),(65,219),(65,220),(65,221),(65,222),(65,223),(65,224),(65,225),(65,226),(65,227),(65,228),(65,229),(65,230),(65,231),(65,232),(65,233),(65,234),(65,235),(65,236),(65,237),(65,238),(65,239),(65,240),(65,241),(65,242),(65,243),(65,244);
/*!40000 ALTER TABLE `ps_module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_currency`
--

DROP TABLE IF EXISTS `ps_module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_currency`
--

LOCK TABLES `ps_module_currency` WRITE;
/*!40000 ALTER TABLE `ps_module_currency` DISABLE KEYS */;
INSERT INTO `ps_module_currency` VALUES (3,1),(3,2),(3,3),(4,-2),(6,1),(6,2),(6,3),(65,-2);
/*!40000 ALTER TABLE `ps_module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_module_group`
--

DROP TABLE IF EXISTS `ps_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_module_group`
--

LOCK TABLES `ps_module_group` WRITE;
/*!40000 ALTER TABLE `ps_module_group` DISABLE KEYS */;
INSERT INTO `ps_module_group` VALUES (3,1),(4,1),(6,1),(65,1);
/*!40000 ALTER TABLE `ps_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_operating_system`
--

DROP TABLE IF EXISTS `ps_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_operating_system`
--

LOCK TABLES `ps_operating_system` WRITE;
/*!40000 ALTER TABLE `ps_operating_system` DISABLE KEYS */;
INSERT INTO `ps_operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'MacOsX'),(4,'Linux');
/*!40000 ALTER TABLE `ps_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_detail`
--

DROP TABLE IF EXISTS `ps_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` float NOT NULL,
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_detail`
--

LOCK TABLES `ps_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_detail` DISABLE KEYS */;
INSERT INTO `ps_order_detail` VALUES (1,1,7,23,'iPod touch - Capacité: 32Go',1,0,0,0,0,'392.140500','0.00','0.000000','0.000000',NULL,NULL,NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00'),(2,1,9,0,'Écouteurs à isolation sonore Shure SE210',1,0,0,0,0,'124.581900','0.00','0.000000','0.000000',NULL,NULL,NULL,0,'TVA 19.6%','19.600','0.00',0,'',0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_discount`
--

DROP TABLE IF EXISTS `ps_order_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_discount` (
  `id_order_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_order_discount`),
  KEY `order_discount_order` (`id_order`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_discount`
--

LOCK TABLES `ps_order_discount` WRITE;
/*!40000 ALTER TABLE `ps_order_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_history`
--

DROP TABLE IF EXISTS `ps_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_history`
--

LOCK TABLES `ps_order_history` WRITE;
/*!40000 ALTER TABLE `ps_order_history` DISABLE KEYS */;
INSERT INTO `ps_order_history` VALUES (1,0,1,1,'2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message`
--

DROP TABLE IF EXISTS `ps_order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message`
--

LOCK TABLES `ps_order_message` WRITE;
/*!40000 ALTER TABLE `ps_order_message` DISABLE KEYS */;
INSERT INTO `ps_order_message` VALUES (1,'2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_message_lang`
--

DROP TABLE IF EXISTS `ps_order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_message_lang`
--

LOCK TABLES `ps_order_message_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_message_lang` DISABLE KEYS */;
INSERT INTO `ps_order_message_lang` VALUES (1,1,'Delay','Hi,\n\nUnfortunately, an item on your order is currently out of stock. This may cause a slight delay in delivery.\nPlease accept our apologies and rest assured that we are working hard to rectify this.\n\nBest regards,'),(1,2,'Délai','Bonjour,\n\nUn des éléments de votre commande est actuellement en réapprovisionnement, ce qui peut légèrement retarder son envoi.\n\nMerci de votre compréhension.\n\nCordialement,'),(1,3,'Plazo','Hola,\n\nUno de los elementos de su solicitud se encuentra actualmente la reposición, el cual poco puede retrasar el envío.\n\nGracias por su comprensión.\n\nSaludos cordiales,');
/*!40000 ALTER TABLE `ps_order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return`
--

DROP TABLE IF EXISTS `ps_order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return`
--

LOCK TABLES `ps_order_return` WRITE;
/*!40000 ALTER TABLE `ps_order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_detail`
--

DROP TABLE IF EXISTS `ps_order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_detail`
--

LOCK TABLES `ps_order_return_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state`
--

DROP TABLE IF EXISTS `ps_order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state`
--

LOCK TABLES `ps_order_return_state` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state` DISABLE KEYS */;
INSERT INTO `ps_order_return_state` VALUES (1,'#ADD8E6'),(2,'#EEDDFF'),(3,'#DDFFAA'),(4,'#FFD3D3'),(5,'#FFFFBB');
/*!40000 ALTER TABLE `ps_order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_return_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_return_state_lang`
--

LOCK TABLES `ps_order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_return_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_return_state_lang` VALUES (1,1,'Waiting for confirmation'),(2,1,'Waiting for package'),(3,1,'Package received'),(4,1,'Return denied'),(5,1,'Return completed'),(1,2,'En attente de confirmation'),(2,2,'En attente du colis'),(3,2,'Colis reçu'),(4,2,'Retour refusé'),(5,2,'Retour terminé'),(1,3,'Pendiente de confirmación'),(2,3,'En espera de paquetes'),(3,3,'Paquetes recibidos'),(4,3,'Volver negó'),(5,3,'Diligenciados');
/*!40000 ALTER TABLE `ps_order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip`
--

DROP TABLE IF EXISTS `ps_order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip`
--

LOCK TABLES `ps_order_slip` WRITE;
/*!40000 ALTER TABLE `ps_order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_slip_detail`
--

DROP TABLE IF EXISTS `ps_order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_slip_detail`
--

LOCK TABLES `ps_order_slip_detail` WRITE;
/*!40000 ALTER TABLE `ps_order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state`
--

DROP TABLE IF EXISTS `ps_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state`
--

LOCK TABLES `ps_order_state` WRITE;
/*!40000 ALTER TABLE `ps_order_state` DISABLE KEYS */;
INSERT INTO `ps_order_state` VALUES (1,0,1,'lightblue',1,0,0,0),(2,1,1,'#DDEEFF',1,0,1,0),(3,1,1,'#FFDD99',1,0,1,1),(4,1,1,'#EEDDFF',1,0,1,1),(5,1,0,'#DDFFAA',1,0,1,1),(6,0,1,'#DADADA',1,0,0,0),(7,1,1,'#FFFFBB',1,0,0,0),(8,0,1,'#FFDFDF',1,0,0,0),(9,1,1,'#FFD3D3',1,0,0,0),(10,0,1,'lightblue',1,0,0,0),(11,0,0,'lightblue',1,0,0,0);
/*!40000 ALTER TABLE `ps_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_order_state_lang`
--

DROP TABLE IF EXISTS `ps_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_order_state_lang`
--

LOCK TABLES `ps_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_order_state_lang` VALUES (1,1,'Awaiting cheque payment','cheque'),(2,1,'Payment accepted','payment'),(3,1,'Preparation in progress','preparation'),(4,1,'Shipped','shipped'),(5,1,'Delivered',''),(6,1,'Canceled','order_canceled'),(7,1,'Refund','refund'),(8,1,'Payment error','payment_error'),(9,1,'On backorder','outofstock'),(10,1,'Awaiting bank wire payment','bankwire'),(11,1,'Awaiting PayPal payment',''),(1,2,'En attente du paiement par chèque','cheque'),(2,2,'Paiement accepté','payment'),(3,2,'Préparation en cours','preparation'),(4,2,'En cours de livraison','shipped'),(5,2,'Livré',''),(6,2,'Annulé','order_canceled'),(7,2,'Remboursé','refund'),(8,2,'Erreur de paiement','payment_error'),(9,2,'En attente de réapprovisionnement','outofstock'),(10,2,'En attente du paiement par virement bancaire','bankwire'),(11,2,'En attente du paiement par PayPal',''),(1,3,'En espera de pago por cheque','cheque'),(2,3,'Pago aceptamos','payment'),(3,3,'Preparación en curso','preparation'),(4,3,'Enviado','shipped'),(5,3,'Entregado',''),(6,3,'Cancelada','order_canceled'),(7,3,'Reembolsado','refund'),(8,3,'Error de pago','payment_error'),(9,3,'Productos fuera de línea','outofstock'),(10,3,'En espera de pago por transferencia bancaria','bankwire'),(11,3,'En espera de pago por PayPal','');
/*!40000 ALTER TABLE `ps_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_orders`
--

DROP TABLE IF EXISTS `ps_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_orders`
--

LOCK TABLES `ps_orders` WRITE;
/*!40000 ALTER TABLE `ps_orders` DISABLE KEYS */;
INSERT INTO `ps_orders` VALUES (1,2,2,1,1,1,2,2,'47ce86627c1f3c792a80773c5d2deaf8','Chèque','cheque',1,0,'','','0.00','625.98','625.98','516.72','618.00','7.98','0.00',1,0,'2008-09-10 15:30:44','0000-00-00 00:00:00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pack`
--

DROP TABLE IF EXISTS `ps_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pack`
--

LOCK TABLES `ps_pack` WRITE;
/*!40000 ALTER TABLE `ps_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page`
--

DROP TABLE IF EXISTS `ps_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page`
--

LOCK TABLES `ps_page` WRITE;
/*!40000 ALTER TABLE `ps_page` DISABLE KEYS */;
INSERT INTO `ps_page` VALUES (1,5,NULL),(2,6,NULL),(3,7,NULL),(4,8,NULL),(5,3,0),(6,2,3),(7,9,NULL),(8,2,4),(9,1,5),(10,10,NULL),(11,1,2),(12,11,NULL),(13,1,9);
/*!40000 ALTER TABLE `ps_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_type`
--

DROP TABLE IF EXISTS `ps_page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_type`
--

LOCK TABLES `ps_page_type` WRITE;
/*!40000 ALTER TABLE `ps_page_type` DISABLE KEYS */;
INSERT INTO `ps_page_type` VALUES (1,'product.php'),(2,'category.php'),(3,'order.php'),(4,'manufacturer.php'),(5,'index.php'),(6,'sitemap.php'),(7,'contact-form.php'),(8,'authentication.php'),(9,'cms.php'),(10,'new-products.php'),(11,'modules/sendtoafriend/sendtoafriend-form.php');
/*!40000 ALTER TABLE `ps_page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_page_viewed`
--

DROP TABLE IF EXISTS `ps_page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_page_viewed`
--

LOCK TABLES `ps_page_viewed` WRITE;
/*!40000 ALTER TABLE `ps_page_viewed` DISABLE KEYS */;
INSERT INTO `ps_page_viewed` VALUES (1,1,6),(2,1,1),(3,1,1),(4,1,3),(1,2,4),(5,2,1),(6,2,1),(7,2,8),(8,2,1),(9,2,1),(1,3,57),(10,3,3),(11,3,2),(9,3,1),(12,3,1),(1,4,7),(7,4,4),(6,4,2),(13,4,23),(12,4,1),(1,5,1);
/*!40000 ALTER TABLE `ps_page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_pagenotfound`
--

DROP TABLE IF EXISTS `ps_pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_pagenotfound`
--

LOCK TABLES `ps_pagenotfound` WRITE;
/*!40000 ALTER TABLE `ps_pagenotfound` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product`
--

DROP TABLE IF EXISTS `ps_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_tax` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_color_default` int(10) unsigned DEFAULT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `ecotax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_price` decimal(17,2) DEFAULT NULL,
  `reduction_percent` float DEFAULT NULL,
  `reduction_from` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reduction_to` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_tax` (`id_tax`),
  KEY `id_category_default` (`id_category_default`),
  KEY `id_color_default` (`id_color_default`),
  KEY `date_add` (`date_add`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product`
--

LOCK TABLES `ps_product` WRITE;
/*!40000 ALTER TABLE `ps_product` DISABLE KEYS */;
INSERT INTO `ps_product` VALUES (1,1,1,1,2,2,0,'0','0.00',800,'124.581940','70.000000','0.00',5,'2010-11-06 11:57:24','2010-11-06 11:57:24','','',NULL,0.5,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(2,1,1,1,2,0,0,'0','0.00',100,'66.053500','33.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','','',NULL,0,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(5,1,1,1,4,0,0,'0','0.00',274,'1504.180602','1000.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','',NULL,NULL,1.36,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(6,1,1,1,4,0,0,'0','0.00',250,'1170.568561','0.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','',NULL,NULL,0.75,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(7,0,0,1,2,0,0,'','0.00',180,'241.638796','200.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','',NULL,NULL,0,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(8,0,0,1,3,0,0,'','0.00',1,'25.041806','0.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','',NULL,NULL,0,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24'),(9,2,2,1,3,0,0,'','0.00',1,'124.581940','0.000000','0.00',0,'2010-11-06 11:57:24','2010-11-06 11:57:24','',NULL,NULL,0,2,0,0,0,0,1,1,'2010-11-06 11:57:24','2010-11-06 11:57:24');
/*!40000 ALTER TABLE `ps_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attachment`
--

DROP TABLE IF EXISTS `ps_product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attachment`
--

LOCK TABLES `ps_product_attachment` WRITE;
/*!40000 ALTER TABLE `ps_product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute`
--

DROP TABLE IF EXISTS `ps_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `ecotax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute`
--

LOCK TABLES `ps_product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute` DISABLE KEYS */;
INSERT INTO `ps_product_attribute` VALUES (30,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(29,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(28,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(27,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(26,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(25,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(7,2,'','',NULL,'','0.000000','0.00','0.00',10,0,0),(8,2,'','',NULL,'','0.000000','0.00','0.00',20,0,1),(9,2,'','',NULL,'','0.000000','0.00','0.00',30,0,0),(10,2,'','',NULL,'','0.000000','0.00','0.00',40,0,0),(12,5,'',NULL,NULL,'','0.000000','899.00','0.00',100,0,0),(13,5,'',NULL,NULL,'','0.000000','0.00','0.00',99,0,1),(14,5,'',NULL,NULL,'','0.000000','270.00','0.00',50,0,0),(15,5,'',NULL,NULL,'','0.000000','1169.00','0.00',25,0,0),(23,7,'',NULL,NULL,'','0.000000','180.00','0.00',70,0,0),(22,7,'',NULL,NULL,'','0.000000','90.00','0.00',60,0,0),(19,7,'',NULL,NULL,'','0.000000','0.00','0.00',50,0,1),(31,1,'','',NULL,'','0.000000','50.00','0.00',50,0,1),(32,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(33,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(34,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(35,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(36,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(39,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(40,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0),(41,1,'','',NULL,'','0.000000','50.00','0.00',50,0,0),(42,1,'','',NULL,'','0.000000','0.00','0.00',50,0,0);
/*!40000 ALTER TABLE `ps_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_combination`
--

LOCK TABLES `ps_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_combination` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_combination` VALUES (3,9),(3,12),(3,13),(3,14),(3,15),(3,29),(3,30),(4,7),(4,25),(4,26),(5,10),(5,35),(5,36),(6,8),(6,39),(6,40),(7,33),(7,34),(8,13),(8,15),(9,12),(9,14),(10,12),(10,13),(11,14),(11,15),(14,31),(14,32),(15,19),(15,26),(15,28),(15,30),(15,32),(15,34),(15,36),(15,40),(15,42),(16,22),(16,25),(16,27),(16,29),(16,31),(16,33),(16,35),(16,39),(16,41),(17,23),(18,41),(18,42),(19,27),(19,28);
/*!40000 ALTER TABLE `ps_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_attribute_image`
--

DROP TABLE IF EXISTS `ps_product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_attribute_image`
--

LOCK TABLES `ps_product_attribute_image` WRITE;
/*!40000 ALTER TABLE `ps_product_attribute_image` DISABLE KEYS */;
INSERT INTO `ps_product_attribute_image` VALUES (7,46),(8,47),(9,49),(10,48),(12,0),(13,0),(14,0),(15,0),(19,0),(22,0),(23,0),(25,38),(26,38),(27,45),(28,45),(29,44),(30,44),(31,37),(32,37),(33,40),(34,40),(35,41),(36,41),(39,39),(40,39),(41,42),(42,42);
/*!40000 ALTER TABLE `ps_product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_download`
--

DROP TABLE IF EXISTS `ps_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `physically_filename` varchar(255) DEFAULT NULL,
  `date_deposit` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_download`
--

LOCK TABLES `ps_product_download` WRITE;
/*!40000 ALTER TABLE `ps_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_lang`
--

DROP TABLE IF EXISTS `ps_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  UNIQUE KEY `product_lang_index` (`id_product`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_lang`
--

LOCK TABLES `ps_product_lang` WRITE;
/*!40000 ALTER TABLE `ps_product_lang` DISABLE KEYS */;
INSERT INTO `ps_product_lang` VALUES (1,1,'<p><strong><span style=\"font-size: small;\">Curved ahead of the curve.</span></strong></p>\r\n<p>For those about to rock, we give you nine amazing colors. But that\'s only part of the story. Feel the curved, all-aluminum and glass design and you won\'t want to put iPod nano down.</p>\r\n<p><strong><span style=\"font-size: small;\">Great looks. And brains, too.</span></strong></p>\r\n<p>The new Genius feature turns iPod nano into your own highly intelligent, personal DJ. It creates playlists by finding songs in your library that go great together.</p>\r\n<p><strong><span style=\"font-size: small;\">Made to move with your moves.</span></strong></p>\r\n<p>The accelerometer comes to iPod nano. Give it a shake to shuffle your music. Turn it sideways to view Cover Flow. And play games designed with your moves in mind.</p>','<p>New design. New features. Now in 8GB and 16GB. iPod nano rocks like never before.</p>','ipod-nano','','','','iPod Nano','In stock',''),(1,2,'<p><span style=\"font-size: small;\"><strong>Des courbes avantageuses.</strong></span></p>\r\n<p>Pour les amateurs de sensations, voici neuf nouveaux coloris. Et ce n\'est pas tout ! Faites l\'expérience du design elliptique en aluminum et verre. Vous ne voudrez plus le lâcher.</p>\r\n<p><strong><span style=\"font-size: small;\">Beau et intelligent.</span></strong></p>\r\n<p>La nouvelle fonctionnalité Genius fait d\'iPod nano votre DJ personnel. Genius crée des listes de lecture en recherchant dans votre bibliothèque les chansons qui vont bien ensemble.</p>\r\n<p><strong><span style=\"font-size: small;\">Fait pour bouger avec vous.</span></strong></p>\r\n<p>iPod nano est équipé de l\'accéléromètre. Secouez-le pour mélanger votre musique. Basculez-le pour afficher Cover Flow. Et découvrez des jeux adaptés à vos mouvements.</p>','<p>Nouveau design. Nouvelles fonctionnalités. Désormais en 8 et 16 Go. iPod nano, plus rock que jamais.</p>','ipod-nano','','','','iPod Nano','En stock',''),(2,1,'<p><span style=\"font-size: small;\"><strong>Instant attachment.</strong></span></p>\r\n<p>Wear up to 500 songs on your sleeve. Or your belt. Or your gym shorts. iPod shuffle is a badge of musical devotion. Now in new, more brilliant colors.</p>\r\n<p><span style=\"font-size: small;\"><strong>Feed your iPod shuffle.</strong></span></p>\r\n<p>iTunes is your entertainment superstore. It’s your ultra-organized music collection and jukebox. And it’s how you load up your iPod shuffle in one click.</p>\r\n<p><span style=\"font-size: small;\"><strong>Beauty and the beat.</strong></span></p>\r\n<p>Intensely colorful anodized aluminum complements the simple design of iPod shuffle. Now in blue, green, pink, red, and original silver.</p>','<p>iPod shuffle, the world’s most wearable music player, now clips on in more vibrant blue, green, pink, and red.</p>','ipod-shuffle','','','','iPod shuffle','In stock',''),(2,2,'<p><span style=\"font-size: small;\"><strong>Un lien immédiat.</strong></span></p>\r\n<p>Portez jusqu\'à 500 chansons accrochées à votre manche, à votre ceinture ou à votre short. Arborez votre iPod shuffle comme signe extérieur de votre passion pour la musique. Existe désormais en quatre nouveaux coloris encore plus éclatants.</p>\r\n<p><span style=\"font-size: small;\"><strong>Emplissez votre iPod shuffle.</strong></span></p>\r\n<p>iTunes est un immense magasin dédié au divertissement, une collection musicale parfaitement organisée et un jukebox. Vous pouvez en un seul clic remplir votre iPod shuffle de chansons.</p>\r\n<p><strong><span style=\"font-size: small;\">La musique en technicolor.</span></strong></p>\r\n<p>iPod shuffle s\'affiche désormais dans de nouveaux coloris intenses qui rehaussent le design épuré du boîtier en aluminium anodisé. Choisissez parmi le bleu, le vert, le rose, le rouge et l\'argenté d\'origine.</p>','<p>iPod shuffle, le baladeur le plus portable du monde, se clippe maintenant en bleu, vert, rose et rouge.</p>','ipod-shuffle','','','','iPod shuffle','En stock',''),(5,1,'<p>MacBook Air is nearly as thin as your index finger. Practically every detail that could be streamlined has been. Yet it still has a 13.3-inch widescreen LED display, full-size keyboard, and large multi-touch trackpad. It’s incomparably portable without the usual ultraportable screen and keyboard compromises.</p><p>The incredible thinness of MacBook Air is the result of numerous size- and weight-shaving innovations. From a slimmer hard drive to strategically hidden I/O ports to a lower-profile battery, everything has been considered and reconsidered with thinness in mind.</p><p>MacBook Air is designed and engineered to take full advantage of the wireless world. A world in which 802.11n Wi-Fi is now so fast and so available, people are truly living untethered — buying and renting movies online, downloading software, and sharing and storing files on the web. </p>','MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don’t lose inches and pounds overnight. It’s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.','macbook-air','','','','MacBook Air','',NULL),(5,2,'<p>MacBook Air est presque aussi fin que votre index. Pratiquement tout ce qui pouvait être simplifié l\'a été. Il n\'en dispose pas moins d\'un écran panoramique de 13,3 pouces, d\'un clavier complet et d\'un vaste trackpad multi-touch. Incomparablement portable il vous évite les compromis habituels en matière d\'écran et de clavier ultra-portables.</p><p>L\'incroyable finesse de MacBook Air est le résultat d\'un grand nombre d\'innovations en termes de réduction de la taille et du poids. D\'un disque dur plus fin à des ports d\'E/S habilement dissimulés en passant par une batterie plus plate, chaque détail a été considéré et reconsidéré avec la finesse à l\'esprit.</p><p>MacBook Air a été conçu et élaboré pour profiter pleinement du monde sans fil. Un monde dans lequel la norme Wi-Fi 802.11n est désormais si rapide et si accessible qu\'elle permet véritablement de se libérer de toute attache pour acheter des vidéos en ligne, télécharger des logicééééiels, stocker et partager des fichiers sur le Web. </p>','MacBook Air est ultra fin, ultra portable et ultra différent de tout le reste. Mais on ne perd pas des kilos et des centimètres en une nuit. C\'est le résultat d\'une réinvention des normes. D\'une multitude d\'innovations sans fil. Et d\'une révolution dans le design. Avec MacBook Air, l\'informatique mobile prend soudain une nouvelle dimension.','macbook-air','','','','MacBook Air','',NULL),(6,1,'Every MacBook has a larger hard drive, up to 250GB, to store growing media collections and valuable data.<br /><br />The 2.4GHz MacBook models now include 2GB of memory standard — perfect for running more of your favorite applications smoothly.','MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.','macbook','','','','MacBook','',NULL),(6,2,'Chaque MacBook est équipé d\'un disque dur plus spacieux, d\'une capacité atteignant 250 Go, pour stocker vos collections multimédia en expansion et vos données précieuses.<br /><br />Le modèle MacBook à 2,4 GHz intègre désormais 2 Go de mémoire en standard. L\'idéal pour exécuter en souplesse vos applications préférées.','MacBook vous offre la liberté de mouvement grâce à son boîtier résistant en polycarbonate, à ses technologies sans fil intégrées et à son adaptateur secteur MagSafe novateur qui se déconnecte automatiquement si quelqu\'un se prend les pieds dans le fil.','macbook','','','','MacBook','',NULL),(7,1,'<h3>Five new hands-on applications</h3>\r\n<p>View rich HTML email with photos as well as PDF, Word, and Excel attachments. Get maps, directions, and real-time traffic information. Take notes and read stock and weather reports.</p>\r\n<h3>Touch your music, movies, and more</h3>\r\n<p>The revolutionary Multi-Touch technology built into the gorgeous 3.5-inch display lets you pinch, zoom, scroll, and flick with your fingers.</p>\r\n<h3>Internet in your pocket</h3>\r\n<p>With the Safari web browser, see websites the way they were designed to be seen and zoom in and out with a tap.<sup>2</sup> And add Web Clips to your Home screen for quick access to favorite sites.</p>\r\n<h3>What\'s in the box</h3>\r\n<ul>\r\n<li><span></span>iPod touch</li>\r\n<li><span></span>Earphones</li>\r\n<li><span></span>USB 2.0 cable</li>\r\n<li><span></span>Dock adapter</li>\r\n<li><span></span>Polishing cloth</li>\r\n<li><span></span>Stand</li>\r\n<li><span></span>Quick Start guide</li>\r\n</ul>','<ul>\r\n<li>Revolutionary Multi-Touch interface</li>\r\n<li>3.5-inch widescreen color display</li>\r\n<li>Wi-Fi (802.11b/g)</li>\r\n<li>8 mm thin</li>\r\n<li>Safari, YouTube, Mail, Stocks, Weather, Notes, iTunes Wi-Fi Music Store, Maps</li>\r\n</ul>','ipod-touch','','','','iPod touch','',NULL),(7,2,'<h1>Titre 1</h1>\r\n<h2>Titre 2</h2>\r\n<h3>Titre 3</h3>\r\n<h4>Titre 4</h4>\r\n<h5>Titre 5</h5>\r\n<h6>Titre 6</h6>\r\n<ul>\r\n<li>UL</li>\r\n<li>UL</li>\r\n<li>UL</li>\r\n<li>UL</li>\r\n</ul>\r\n<ol>\r\n<li>OL</li>\r\n<li>OL</li>\r\n<li>OL</li>\r\n<li>OL</li>\r\n</ol>\r\n<p>paragraphe...</p>\r\n<p>paragraphe...</p>\r\n<p>paragraphe...</p>\r\n<table border=\"0\">\r\n<thead> \r\n<tr>\r\n<th>th</th> <th>th</th> <th>th</th>\r\n</tr>\r\n</thead> \r\n<tbody>\r\n<tr>\r\n<td>td</td>\r\n<td>td</td>\r\n<td>td</td>\r\n</tr>\r\n<tr>\r\n<td>td</td>\r\n<td>td</td>\r\n<td>td</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Cinq nouvelles applications sous la main</h3>\r\n<p>Consultez vos e-mails au format HTML enrichi, avec photos et pieces jointes au format PDF, Word et Excel. Obtenez des cartes, des itinéraires et des informations sur l\'état de la circulation en temps réel. Rédigez des notes et consultez les cours de la Bourse et les bulletins météo.</p>\r\n<h3>Touchez du doigt votre musique et vos vidéos. Entre autres.</h3>\r\n<p>La technologie multi-touch révolutionnaire intégrée au superbe écran de 3,5 pouces vous permet d\'effectuer des zooms avant et arrière, de faire défiler et de feuilleter des pages à l\'aide de vos seuls doigts.</p>\r\n<h3>Internet dans votre poche</h3>\r\n<p>Avec le navigateur Safari, vous pouvez consulter des sites web dans leur mise en page d\'origine et effectuer un zoom avant et arrière d\'une simple pression sur l\'écran.</p>\r\n<h3>Contenu du coffret</h3>\r\n<ul>\r\n<li><span></span>iPod touch</li>\r\n<li><span></span>Écouteurs</li>\r\n<li><span></span>Câble USB 2.0</li>\r\n<li><span></span>Adaptateur Dock</li>\r\n<li><span></span>Chiffon de nettoyage</li>\r\n<li><span></span>Support</li>\r\n<li><span></span>Guide de démarrage rapide</li>\r\n</ul>\r\n<p> </p>','<p>Interface multi-touch révolutionnaire<br />Écran panoramique couleur de 3,5 pouces<br />Wi-Fi (802.11b/g)<br />8 mm d\'épaisseur<br />Safari, YouTube, iTunes Wi-Fi Music Store, Courrier, Cartes, Bourse, Météo, Notes</p>','ipod-touch','','','','iPod touch','En stock',NULL),(8,1,'<p>Lorem ipsum</p>','<p>Lorem ipsum</p>','housse-portefeuille-en-cuir-belkin-pour-ipod-nano-noir-chocolat','','','','Housse portefeuille en cuir Belkin pour iPod nano - Noir/Chocolat','',NULL),(8,2,'<p><strong>Caractéristiques</strong></p>\r\n<li>Cuir doux résistant<br /> </li>\r\n<li>Accès au bouton Hold<br /> </li>\r\n<li>Fermeture magnétique<br /> </li>\r\n<li>Accès au Dock Connector<br /> </li>\r\n<li>Protège-écran</li>','<p>Cet étui en cuir tendance assure une protection complète contre les éraflures et les petits aléas de la vie quotidienne. Sa conception élégante et compacte vous permet de glisser votre iPod directement dans votre poche ou votre sac à main.</p>','housse-portefeuille-en-cuir-ipod-nano-noir-chocolat','','','','Housse portefeuille en cuir (iPod nano) - Noir/Chocolat','',NULL),(9,1,'<div class=\"product-overview-full\">Using Hi-Definition MicroSpeakers to deliver full-range audio, the ergonomic and lightweight design of the SE210 earphones is ideal for premium on-the-go listening on your iPod or iPhone. They offer the most accurate audio reproduction from both portable and home stereo audio sources--for the ultimate in precision highs and rich low end. In addition, the flexible design allows you to choose the most comfortable fit from a variety of wearing positions. <br /> <br /> <strong>Features </strong> <br /> \r\n<ul>\r\n<li>Sound-isolating design </li>\r\n<li> Hi-Definition MicroSpeaker with a single balanced armature driver </li>\r\n<li> Detachable, modular cable so you can make the cable longer or shorter depending on your activity </li>\r\n<li> Connector compatible with earphone ports on both iPod and iPhone </li>\r\n</ul>\r\n<strong>Specifications </strong><br /> \r\n<ul>\r\n<li>Speaker type: Hi-Definition MicroSpeaker </li>\r\n<li> Frequency range: 25Hz-18.5kHz </li>\r\n<li> Impedance (1kHz): 26 Ohms </li>\r\n<li> Sensitivity (1mW): 114 dB SPL/mW </li>\r\n<li> Cable length (with extension): 18.0 in./45.0 cm (54.0 in./137.1 cm) </li>\r\n</ul>\r\n<strong>In the box</strong><br /> \r\n<ul>\r\n<li>Shure SE210 earphones </li>\r\n<li> Extension cable (36.0 in./91.4 cm) </li>\r\n<li> Three pairs foam earpiece sleeves (small, medium, large) </li>\r\n<li> Three pairs soft flex earpiece sleeves (small, medium, large) </li>\r\n<li> One pair triple-flange earpiece sleeves </li>\r\n<li> Carrying case </li>\r\n</ul>\r\nWarranty<br /> Two-year limited <br />(For details, please visit <br />www.shure.com/PersonalAudio/CustomerSupport/ProductReturnsAndWarranty/index.htm.) <br /><br /> Mfr. Part No.: SE210-A-EFS <br /><br />Note: Products sold through this website that do not bear the Apple Brand name are serviced and supported exclusively by their manufacturers in accordance with terms and conditions packaged with the products. Apple\'s Limited Warranty does not apply to products that are not Apple-branded, even if packaged or sold with Apple products. Please contact the manufacturer directly for technical support and customer service.</div>','<p>Evolved from personal monitor technology road-tested by pro musicians and perfected by Shure engineers, the lightweight and stylish SE210 delivers full-range audio that\'s free from outside noise.</p>','ecouteurs-a-isolation-sonore-shure-se210-blanc','','','','Shure SE210 Sound-Isolating Earphones for iPod and iPhone','',NULL),(9,2,'<p>Basés sur la technologie des moniteurs personnels testée sur la route par des musiciens professionnels et perfectionnée par les ingénieurs Shure, les écouteurs SE210, légers et élégants, fournissent une sortie audio à gamme étendue exempte de tout bruit externe.</p>\r\n<p><img src=\"http://store.apple.com/Catalog/fr/Images/TM255_screen1.jpg\" border=\"0\" /></p>\r\n<p><strong>Conception à isolation sonore <br /></strong>Les embouts à isolation sonore fournis bloquent plus de 90 % du bruit ambiant. Combinés à un design ergonomique séduisant et un câble modulaire, ils minimisent les intrusions du monde extérieur, vous permettant de vous concentrer sur votre musique. Conçus pour les amoureux de la musique qui souhaitent faire évoluer leur appareil audio portable, les écouteurs SE210 vous permettent d\'emmener la performance avec vous. <br /> <br /><strong>Micro-transducteur haute définition <br /></strong>Développés pour une écoute de qualité supérieure en déplacement, les écouteurs SE210 utilisent un seul transducteur à armature équilibrée pour bénéficier d\'une gamme audio étendue. Le résultat ? Un confort d\'écoute époustouflant qui restitue tous les détails d\'un spectacle live.</p>\r\n<p><strong>Le kit universel Deluxe comprend les éléments suivants : <br /></strong>- <strong><em>Embouts à isolation sonore</em></strong> <br />Les embouts à isolation sonore inclus ont un double rôle : bloquer les bruits ambiants et garantir un maintien et un confort personnalisés. Comme chaque oreille est différente, le kit universel Deluxe comprend trois tailles (S, M, L) d\'embouts mousse et flexibles. Choisissez la taille et le style d\'embout qui vous conviennent le mieux : une bonne étanchéité est un facteur clé pour optimiser l\'isolation sonore et la réponse des basses, ainsi que pour accroître le confort en écoute prolongée.<br /><br />- <em><strong>Câble modulaire</strong></em> <br />En se basant sur les commentaires de nombreux utilisateurs, les ingénieurs de Shure ont développé une solution de câble détachable pour permettre un degré de personnalisation sans précédent. Le câble de 1 mètre fourni vous permet d\'adapter votre confort en fonction de l\'activité et de l\'application.<br /> <br />- <em><strong>Étui de transport</strong></em> <br />Outre les embouts à isolation sonore et le câble modulaire, un étui de transport compact et résistant est fourni avec les écouteurs SE210 pour vous permettre de ranger vos écouteurs de manière pratique et sans encombres.<br /> <br />- <strong><em>Garantie limitée de deux ans <br /></em></strong>Chaque solution SE210 achetée est couverte par une garantie pièces et main-d\'œuvre de deux ans.<br /><br /><strong>Caractéristiques techniques</strong></p>\r\n<ul>\r\n<li> Type de transducteur : micro-transducteur haute définition<br /></li>\r\n<li> Sensibilité (1 mW) : pression acoustique de 114 dB/mW<br /></li>\r\n<li> Impédance (à 1 kHz) : 26 W<br /></li>\r\n<li> Gamme de fréquences : 25 Hz – 18,5 kHz<br /></li>\r\n<li> Longueur de câble / avec rallonge : 45 cm / 136 cm<br /></li>\r\n</ul>\r\n<p><strong>Contenu du coffret<br /></strong></p>\r\n<ul>\r\n<li> Écouteurs Shure SE210<br /></li>\r\n<li> Kit universel Deluxe (embouts à isolation sonore, câble modulaire, étui de transport)</li>\r\n</ul>','<p>Les écouteurs à isolation sonore ergonomiques et légers offrent la reproduction audio la plus fidèle en provenance de sources audio stéréo portables ou de salon.</p>','ecouteurs-a-isolation-sonore-shure-se210','','','','Écouteurs à isolation sonore Shure SE210','',NULL),(7,3,'<p>Cinco nuevas aplicaciones a mano</p>\r\n<p><br /> Consulta tu correo en formato HTML enriquecido, con fotos y ficheros adjuntos en formato PDF, Word y Excel. Consigue mapas, itinerarios e información sobre el estado de la carreteras en tiempo real. Escribe notas y consulta la bolsa y el tiempo. <br /> Alcanza con un dedo tu música y tus videos, entre otras cosas. <br /> La tecnología multi-touch revolucionaria integrada a la magnífica pantalla de 3,5 pulgadas te permitirá efectuar zoom hacia adelante y hacia atrás, y pasar y ojear las páginas solo con la ayuda de tus dedos.</p>\r\n<p>Internet en tu bolsillo</p>\r\n<p>Con el navegador Safari, podrás consultar sitios web en su compaginación de origen y efectuar un zoom hacia adelante y hacia atrás con la simple presión de un dedo en la pantalla.</p>\r\n<p>Contenido del estuche<br />    * iPod touch<br />    * Auriculares<br />    * Cable USB 2.0<br />    * Adaptador Dock<br />    * Paño de limpieza<br />    * Base<br />    * Guía de inicio rápido<br /> Título<br /> Párrafo</p>','<p>Interfaz multi-touch revolucionaria<br /> Pantalla panorámica color de 3,5 pulgadas<br /> Wi-Fi (802.11b/g)<br /> 8 mm de espesor<br /> Safari, YouTube, iTunes Wi-Fi Music Store, Correo, Mapas, Bolsa, El tiempo, Notas</p>','ipod-touch','','','','iPod touch','Disponible',''),(1,3,'<p><strong>Curvas aerodinámicas.</strong></p>\r\n<p>Para los aficionados a las sensaciones fuertes, os presentamos nueve nuevos colores. ¡ Y eso no es todo ! Experimenta el diseño elíptico de aluminio y vidrio. ¡ No querrás separarte de él nunca más !</p>\r\n<p><strong><br /> Estético e inteligente.</strong></p>\r\n<p>La nueva aplicación Genius hace de iPod nano tu discjockey personal. Genuis crea listas de lectura buscando en tu biblioteca las canciones que combinan entre si.</p>\r\n<p><strong><br /> Hecho para moverse contigo.</strong><br /> iPod nano está equipado de un acelerómetro. Muévelo para mezclar tu música. Voltéalo para mostrar Cover Flow. Y descubre juegos adaptados a tus movimientos.</p>','<p>Nuevo diseño. Nuevas aplicaciones. Ahora disponible en 8 y 16 Go. iPod nano, más rock que nunca.</p>','ipod-nano','','','','iPod Nano','Disponible',''),(2,3,'<p><strong>Un enlace inmediato.</strong><br /> <br /> Lleva hasta 500 canciones colgadas de tu manga, de tu cinturón o de tu pantalón. Presume con tu iPod shuffle como signo exterior de tu pasión por la música. Ahora ya existen cuatro nuevos colores más llamativos. <br /> <br /> <strong>Llena tu iPod shuffle.</strong><br /> <br /> iTunes es una enorme tienda dedicada a la diversión, una colección de música organizada perfectamente y un jukebox. Con tan solo un clic puedes llenar tu iPod shuffle con canciones. <br /> <br /> <strong>La música en tecnicolor. </strong><br /> <br /> iPod shuffle presenta nuevos colores vivos que realzan su diseño estilizado en aluminio anodizado. Elige entre azul, verde, rosa, rojo y el plateado de origen.</p>','<p>iPod shuffle, el walkman más portátil del mundo, ahora en azul, verde, rosa y rojo.</p>','ipod-shuffle','','','','iPod shuffle','Disponible',''),(6,3,'<p>Cada MacBook está equipado de un disco duro más espacioso, de una capacidad de hasta  250 Go, para almacenar tus colecciones multimedia en expansión y tus datos más preciados. <br /> El modelo  MacBook de 2,4 GHz integra 2 Go de memoria en estándar. Lo ideal para realizar sin dificultad tus aplicaciones preferidas.</p>','<p>MacBook te ofrece una gran libertad de movimientos gracias a su exterior resistente en policarbonato, a su tecnología sin cable y a su adaptador cargador sector innovador que se desconecta automáticamente si alguien se engancha en el cable.</p>','macbook','','','','MacBook','Disponible',''),(5,3,'<p>MacBook Air es casi tan fino como tu dedo. Se ha simplificado al máximo y a pesar de ello dispone de una pantalla panorámica de 13,3 pulgadas, de un teclado completo y de un amplio trackpad multi-touch. Portátil al 100%, te evitará tener que hacer un compromiso en lo que concierne a la pantalla y al teclado.  <br /> <br /> La increíble sutileza de MacBook Air es el resultado de un gran número de innovaciones en materia de reducción de tamaño y peso. Desde un disco duro más fino hasta puertos E/S disimulados hábilmente pasando por una batería más plana, cada detalle se consideró para que el resultado fuera lo más fino posible.<br /> <br /> MacBook Air fue creado y elaborado para disfrutar plenamente del mundo inalámbrico. Un mundo en el que la norma Wi-Fi 802.11n es tan rápida y accesible que permite liberarse completamente de cualquier atadura para comprar videos en línea, descargar programas, almacenar y compartir archivos en la Red.</p>','<p>MacBook Air es ultra fino, ultra portátil y ultra diferente de todo el resto. Pero no se pierden kilos y centímetros en tan solo una noche. Todo esto es el resultado de un nuevo invento de normas. De un sinfín de novedades sin cable. Y de una revolución en el diseño. Con MacBook Air, la informática móvil adquiere una nueva dimensión.</p>','macbook-air','','','','MacBook Air','Disponible',''),(8,3,'<p><strong>Características</strong></p>\r\n<ul>\r\n<li> Cuero suave resistente</li>\r\n<li>Acceso a la tecla Hold</li>\r\n<li>Cierre magnético</li>\r\n<li>Acceso al Dock Conector</li>\r\n<li>Salva pantallas</li>\r\n</ul>','<p>Este estuche de cuero de última moda garantiza una completa protección contra los arañazos y los pequeños contratiempos de la vida diaria. Su diseño elegante y compacto te permite meter tu Ipod directamente en tu bolsillo o en tu bolso.</p>','funda-cuero-ipod-nano-negro-chocolate','','','','Leather Case (iPod nano) - Negro / Chocolate','Disponible',''),(9,3,'<p>Los auriculares SE210, ligeros y elegantes, están basados en la tecnología de los monitores personales que los músicos profesionales utilizan en carretera y que los ingenieros de Shure han perfeccionado. También están provistos de una salida audio de gama extendida exenta de todo ruido exterior. <br /> <br /> <strong>Creado para un aislamiento sonoro</strong></p>\r\n<p>Las almohadillas provistas de un aislamiento sonoro bloquean más del 90% del ruido ambiente. Combinadas con un diseño ergonómico atractivo y un cable modular, minimizan las intrusiones del mundo exterior y te permiten concentrarte en tu música. Creados para los apasionados por la música que quieren que su aparato audio móvil evolucione, los auriculares  SE210 te permitirán llevar la tecnología allí donde tú vayas. <br /> <br /> <strong>Micro-transductor alta definición </strong><br /> Desarrollados para poder tener una audición de calidad durante los desplazamientos, los auriculares SE210 utilizan un único transductor con un armazón equilibrado para poder disfrutar de una gama audio extendida. ¿El resultado ? Un confort audio increíble que restituye cada detalle de un espectáculo en directo. <br /> <br /> <strong>El kit universal Deluxe incluye los siguientes elementos :</strong><br /> - Almohadillas para aislamiento sonoro<br /> Las almohadillas para el aislamiento sonoro tienen una doble función : bloquear el ruido ambiente y garantizar una estabilidad y un confort personalizados. Como cada oreja es diferente el kit universal Deluxe incluye tres tallas (S, M, L) de almohadillas de espuma y flexibles. Elige la talla y el estilo de almohadilla que mejor te convenga : un buen aislamiento es un factor clave tanto para optimizar el aislamiento sonoro y la respuesta de los bajos como para aumentar el confort durante una audición prolongada. <br /> <br /> - Cable modular</p>\r\n<p>Basándose en los comentarios de los numerosos usuarios, los ingenieros de Shure han creado una solución de cable separable para permitir un grado de personalización sin precedentes. El cable de 1 metro te permite adaptar el confort en función de la actividad del momento y de la aplicación. <br /> <br /> - Estuche para el transporte</p>\r\n<p>Además de las almohadillas de aislamiento sonoro y del cable modular, los auriculares SE210 están provistos de un estuche de transporte compacto y resistente para guardar los auriculares de manera práctica y sin dificultad. <br /> - Garantía límite de dos años <br /> Cada solución SE210 tiene una garantía piezas y mano de obra de dos años.</p>\r\n<p><br /> <em><strong>Características técnicas</strong></em></p>\r\n<ul>\r\n<li>Tipo de transductor : micro-transductor alta definición</li>\r\n<li>Sensibilidad (1 mW) : presión acústica de 114 dB/mW</li>\r\n<li>Impedancia : (à 1 kHz) : 26 W</li>\r\n<li>Gama de frecuencias : 25 Hz ˆ 18,5 kHz</li>\r\n<li>Longitud del cable / con alargador : 45 cm / 136 cm</li>\r\n</ul>\r\n<p><br /> <strong><em>Contenido de la caja</em></strong></p>\r\n<ul>\r\n<li>Altavoces Shure SE210</li>\r\n<li>Kit universal Deluxe (almohadillas de aislamiento sonoro, cable modular, estuche de transporte)</li>\r\n</ul>','<p>Los auriculares con aislamiento ergonómicos y ligeros ofrecen la reproducción más fiel proveniente de fuentes audio estéreo móviles o de salón.</p>','auriculares-aislantes-del-sonido-shure-se210','','','','Auriculares aislantes del sonido Shure SE210','Disponible','');
/*!40000 ALTER TABLE `ps_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_sale`
--

DROP TABLE IF EXISTS `ps_product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_sale`
--

LOCK TABLES `ps_product_sale` WRITE;
/*!40000 ALTER TABLE `ps_product_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_product_tag`
--

DROP TABLE IF EXISTS `ps_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_product_tag`
--

LOCK TABLES `ps_product_tag` WRITE;
/*!40000 ALTER TABLE `ps_product_tag` DISABLE KEYS */;
INSERT INTO `ps_product_tag` VALUES (1,5),(1,6),(1,7),(1,8),(1,28),(1,29),(1,30),(1,31),(1,32),(2,6),(2,18),(2,28),(2,30),(2,33),(2,34),(5,8),(5,19),(5,20),(5,21),(6,5),(6,8),(6,22),(6,32),(6,35),(6,36),(7,23),(7,24),(7,37),(9,25),(9,26),(9,27);
/*!40000 ALTER TABLE `ps_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile`
--

DROP TABLE IF EXISTS `ps_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile`
--

LOCK TABLES `ps_profile` WRITE;
/*!40000 ALTER TABLE `ps_profile` DISABLE KEYS */;
INSERT INTO `ps_profile` VALUES (1);
/*!40000 ALTER TABLE `ps_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_profile_lang`
--

DROP TABLE IF EXISTS `ps_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_profile_lang`
--

LOCK TABLES `ps_profile_lang` WRITE;
/*!40000 ALTER TABLE `ps_profile_lang` DISABLE KEYS */;
INSERT INTO `ps_profile_lang` VALUES (1,1,'Administrator'),(2,1,'Administrateur'),(3,1,'Administrador');
/*!40000 ALTER TABLE `ps_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access`
--

DROP TABLE IF EXISTS `ps_quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access`
--

LOCK TABLES `ps_quick_access` WRITE;
/*!40000 ALTER TABLE `ps_quick_access` DISABLE KEYS */;
INSERT INTO `ps_quick_access` VALUES (1,0,'index.php'),(2,1,'../'),(3,0,'index.php?tab=AdminCatalog&addcategory'),(4,0,'index.php?tab=AdminCatalog&addproduct'),(5,0,'index.php?tab=AdminDiscounts&adddiscount');
/*!40000 ALTER TABLE `ps_quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_quick_access_lang`
--

DROP TABLE IF EXISTS `ps_quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_quick_access_lang`
--

LOCK TABLES `ps_quick_access_lang` WRITE;
/*!40000 ALTER TABLE `ps_quick_access_lang` DISABLE KEYS */;
INSERT INTO `ps_quick_access_lang` VALUES (1,1,'Home'),(1,2,'Accueil'),(1,3,'Inicio'),(2,1,'My Shop'),(2,2,'Ma boutique'),(2,3,'Mi tienda'),(3,1,'New category'),(3,2,'Nouvelle catégorie'),(3,3,'Nueva categoría'),(4,1,'New product'),(4,2,'Nouveau produit'),(4,3,'Nuevo producto'),(5,1,'New voucher'),(5,2,'Nouveau bon de réduction'),(5,3,'Nuevo cupón');
/*!40000 ALTER TABLE `ps_quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_price`
--

DROP TABLE IF EXISTS `ps_range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_price`
--

LOCK TABLES `ps_range_price` WRITE;
/*!40000 ALTER TABLE `ps_range_price` DISABLE KEYS */;
INSERT INTO `ps_range_price` VALUES (1,2,'0.000000','10000.000000');
/*!40000 ALTER TABLE `ps_range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_range_weight`
--

DROP TABLE IF EXISTS `ps_range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_range_weight`
--

LOCK TABLES `ps_range_weight` WRITE;
/*!40000 ALTER TABLE `ps_range_weight` DISABLE KEYS */;
INSERT INTO `ps_range_weight` VALUES (1,2,'0.000000','10000.000000');
/*!40000 ALTER TABLE `ps_range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer`
--

DROP TABLE IF EXISTS `ps_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer`
--

LOCK TABLES `ps_referrer` WRITE;
/*!40000 ALTER TABLE `ps_referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_referrer_cache`
--

DROP TABLE IF EXISTS `ps_referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_referrer_cache`
--

LOCK TABLES `ps_referrer_cache` WRITE;
/*!40000 ALTER TABLE `ps_referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene`
--

DROP TABLE IF EXISTS `ps_scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene`
--

LOCK TABLES `ps_scene` WRITE;
/*!40000 ALTER TABLE `ps_scene` DISABLE KEYS */;
INSERT INTO `ps_scene` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `ps_scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_category`
--

DROP TABLE IF EXISTS `ps_scene_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_category`
--

LOCK TABLES `ps_scene_category` WRITE;
/*!40000 ALTER TABLE `ps_scene_category` DISABLE KEYS */;
INSERT INTO `ps_scene_category` VALUES (1,2),(2,2),(3,4);
/*!40000 ALTER TABLE `ps_scene_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_lang`
--

DROP TABLE IF EXISTS `ps_scene_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_lang`
--

LOCK TABLES `ps_scene_lang` WRITE;
/*!40000 ALTER TABLE `ps_scene_lang` DISABLE KEYS */;
INSERT INTO `ps_scene_lang` VALUES (1,1,'The iPods Nano'),(1,2,'Les iPods Nano'),(1,3,'El iPod Nano'),(2,1,'The iPods'),(2,2,'Les iPods'),(2,3,'El iPod'),(3,1,'The MacBooks'),(3,2,'Les MacBooks'),(3,3,'El MacBook');
/*!40000 ALTER TABLE `ps_scene_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_scene_products`
--

DROP TABLE IF EXISTS `ps_scene_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_scene_products`
--

LOCK TABLES `ps_scene_products` WRITE;
/*!40000 ALTER TABLE `ps_scene_products` DISABLE KEYS */;
INSERT INTO `ps_scene_products` VALUES (1,1,474,15,72,166),(2,2,389,137,51,46),(2,7,111,83,161,108),(2,1,340,31,46,151),(3,6,355,37,151,103),(3,6,50,47,128,84),(3,5,198,47,137,92),(1,1,394,14,73,168),(1,1,318,14,69,168),(1,1,244,14,66,169),(1,1,180,13,59,168),(1,1,6,12,30,175),(1,1,38,12,30,170),(1,1,76,14,41,169),(1,1,123,13,49,169);
/*!40000 ALTER TABLE `ps_scene_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_engine`
--

DROP TABLE IF EXISTS `ps_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_engine`
--

LOCK TABLES `ps_search_engine` WRITE;
/*!40000 ALTER TABLE `ps_search_engine` DISABLE KEYS */;
INSERT INTO `ps_search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `ps_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_index`
--

DROP TABLE IF EXISTS `ps_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_index`
--

LOCK TABLES `ps_search_index` WRITE;
/*!40000 ALTER TABLE `ps_search_index` DISABLE KEYS */;
INSERT INTO `ps_search_index` VALUES (1,1,10),(1,2,10),(1,3,2),(1,4,1),(1,5,1),(1,6,1),(1,7,1),(1,8,1),(1,9,1),(1,10,1),(1,11,1),(1,12,1),(1,13,1),(1,14,1),(1,15,1),(1,16,2),(1,17,1),(1,18,1),(1,19,1),(1,20,1),(1,21,1),(1,22,1),(1,23,1),(1,24,1),(1,25,1),(1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,30,1),(1,31,2),(1,32,1),(1,33,1),(1,34,1),(1,35,1),(1,36,1),(1,37,1),(1,38,5),(1,39,1),(1,40,1),(1,41,1),(1,42,1),(1,43,1),(1,44,1),(1,45,1),(1,46,1),(1,47,1),(1,48,1),(1,49,1),(1,50,1),(1,51,2),(1,52,2),(1,53,1),(1,54,1),(1,55,1),(1,56,1),(1,57,1),(1,58,1),(1,59,1),(1,60,1),(1,61,1),(1,62,1),(1,63,1),(1,64,1),(1,65,1),(1,66,1),(1,67,3),(1,68,3),(1,69,3),(1,70,4),(1,71,16),(1,72,4),(1,73,4),(1,74,4),(1,75,4),(1,76,4),(1,77,4),(1,78,4),(1,79,2),(1,80,2),(1,81,2),(1,82,12),(1,83,12),(1,84,1),(1,85,2),(1,86,1),(1,87,2),(1,88,1),(1,89,1),(1,90,2),(1,91,1),(1,92,1),(1,93,1),(1,94,1),(1,95,4),(1,96,1),(1,97,1),(1,98,1),(1,99,1),(1,100,1),(1,101,1),(1,102,1),(1,103,1),(1,104,1),(1,105,1),(1,106,1),(1,107,1),(1,108,1),(1,109,2),(1,110,1),(1,111,1),(1,112,1),(1,113,1),(1,114,1),(1,115,2),(1,116,2),(1,117,1),(1,118,3),(1,119,1),(1,120,1),(1,121,1),(1,122,1),(1,123,1),(1,124,1),(1,125,1),(1,126,1),(1,127,1),(1,128,1),(1,129,1),(1,130,1),(1,131,1),(1,132,1),(1,133,1),(1,134,1),(1,135,1),(1,136,1),(1,137,1),(1,138,1),(1,139,1),(1,140,1),(1,141,1),(1,142,1),(1,143,1),(1,144,1),(1,145,3),(1,146,7),(1,147,3),(1,148,4),(1,149,16),(1,150,4),(1,151,4),(1,152,4),(1,153,4),(1,154,4),(1,155,4),(1,156,4),(1,157,2),(1,158,2),(1,159,2),(1,160,9),(1,161,8),(1,162,1),(1,163,2),(1,164,1),(1,165,1),(1,166,1),(1,167,1),(1,168,1),(1,169,1),(1,170,2),(1,171,1),(1,172,1),(1,173,4),(1,174,1),(1,175,1),(1,176,1),(1,177,1),(1,178,1),(1,179,1),(1,180,1),(1,181,1),(1,182,1),(1,183,1),(1,184,1),(1,185,1),(1,186,1),(1,187,1),(1,188,1),(1,189,1),(1,190,1),(1,191,1),(1,192,1),(1,193,1),(1,194,1),(1,195,1),(1,196,1),(1,197,1),(1,198,1),(1,199,1),(1,200,1),(1,201,1),(1,202,1),(1,203,1),(1,204,1),(1,205,1),(1,206,1),(1,207,1),(1,208,1),(1,209,1),(1,210,1),(1,211,1),(1,212,1),(1,213,1),(1,214,1),(1,215,1),(1,216,1),(1,217,1),(1,218,1),(1,219,1),(1,220,1),(1,221,1),(1,222,3),(1,223,3),(1,224,3),(1,225,4),(1,226,16),(1,227,4),(1,228,4),(1,229,4),(1,230,4),(1,231,4),(1,232,4),(1,233,4),(1,234,2),(1,235,2),(2,1,11),(2,56,10),(2,236,1),(2,237,1),(2,238,1),(2,239,1),(2,57,2),(2,240,1),(2,241,1),(2,242,2),(2,243,1),(2,244,2),(2,245,2),(2,246,2),(2,247,1),(2,248,1),(2,249,1),(2,45,1),(2,38,7),(2,250,1),(2,251,1),(2,252,1),(2,253,1),(2,254,1),(2,255,1),(2,256,1),(2,257,1),(2,19,1),(2,258,1),(2,259,1),(2,260,1),(2,261,1),(2,262,1),(2,263,1),(2,264,1),(2,265,1),(2,266,1),(2,267,1),(2,268,1),(2,269,1),(2,270,1),(2,271,1),(2,272,1),(2,273,1),(2,274,1),(2,3,1),(2,275,1),(2,276,1),(2,277,1),(2,67,3),(2,68,3),(2,69,3),(2,73,2),(2,77,2),(2,70,2),(2,76,2),(2,278,2),(2,279,2),(2,80,2),(2,81,2),(2,82,15),(2,280,14),(2,281,1),(2,282,1),(2,90,2),(2,283,1),(2,284,1),(2,285,1),(2,286,1),(2,287,2),(2,288,2),(2,154,3),(2,289,2),(2,290,1),(2,291,1),(2,292,1),(2,0,1),(2,126,2),(2,294,1),(2,118,7),(2,295,1),(2,296,1),(2,297,1),(2,298,1),(2,299,1),(2,300,1),(2,301,1),(2,302,1),(2,95,1),(2,136,2),(2,303,1),(2,88,2),(2,304,1),(2,100,2),(2,101,2),(2,305,1),(2,306,1),(2,307,1),(2,308,1),(2,309,1),(2,310,1),(2,311,1),(2,312,1),(2,313,1),(2,314,1),(2,315,1),(2,316,1),(2,317,1),(2,109,1),(2,318,1),(2,319,1),(2,320,1),(2,321,1),(2,322,1),(2,323,1),(2,124,1),(2,324,1),(2,325,1),(2,85,1),(2,326,1),(2,327,1),(2,328,1),(2,329,1),(2,330,1),(2,331,1),(2,332,1),(2,333,1),(2,334,1),(2,145,3),(2,146,3),(2,147,3),(2,151,2),(2,155,2),(2,148,2),(2,335,2),(2,336,2),(2,158,2),(2,159,2),(2,160,11),(2,337,10),(2,338,1),(2,339,1),(2,340,1),(2,341,1),(2,166,2),(2,342,2),(2,343,2),(2,231,3),(2,344,2),(2,345,1),(2,346,1),(2,347,1),(2,348,1),(2,202,2),(2,349,1),(2,350,1),(2,351,1),(2,352,1),(2,353,1),(2,354,1),(2,355,1),(2,356,1),(2,357,1),(2,213,3),(2,358,1),(2,359,1),(2,179,2),(2,180,2),(2,360,1),(2,361,1),(2,362,1),(2,363,1),(2,364,1),(2,365,1),(2,366,1),(2,367,1),(2,368,1),(2,369,1),(2,370,1),(2,371,1),(2,372,1),(2,373,1),(2,374,1),(2,375,1),(2,376,1),(2,377,1),(2,378,1),(2,163,1),(2,379,1),(2,184,1),(2,380,1),(2,381,1),(2,204,1),(2,382,1),(2,383,1),(2,384,1),(2,222,3),(2,223,3),(2,224,3),(2,228,2),(2,232,2),(2,225,2),(2,385,2),(2,386,2),(2,234,2),(2,235,2),(5,387,10),(5,388,1),(5,389,1),(5,390,1),(5,391,1),(5,392,1),(5,393,1),(5,394,1),(5,395,1),(5,396,1),(5,397,1),(5,398,2),(5,399,1),(5,400,1),(5,401,1),(5,402,2),(5,403,2),(5,404,1),(5,3,1),(5,51,2),(5,405,1),(5,406,1),(5,407,1),(5,408,1),(5,409,1),(5,410,1),(5,411,1),(5,38,1),(5,412,1),(5,413,1),(5,414,1),(5,415,1),(5,416,1),(5,47,1),(5,417,1),(5,418,1),(5,419,2),(5,420,1),(5,421,1),(5,422,1),(5,423,1),(5,424,1),(5,425,1),(5,426,1),(5,427,1),(5,428,1),(5,429,1),(5,430,1),(5,431,1),(5,432,1),(5,433,1),(5,434,1),(5,435,1),(5,436,1),(5,437,1),(5,438,2),(5,439,1),(5,440,1),(5,441,1),(5,442,1),(5,443,1),(5,444,1),(5,445,9),(5,446,1),(5,447,1),(5,448,1),(5,449,1),(5,450,1),(5,451,1),(5,452,1),(5,453,1),(5,454,1),(5,65,1),(5,455,1),(5,456,1),(5,457,1),(5,458,1),(5,237,2),(5,459,1),(5,460,1),(5,461,1),(5,462,1),(5,463,1),(5,464,1),(5,465,1),(5,466,1),(5,467,1),(5,468,1),(5,469,1),(5,470,1),(5,471,1),(5,472,1),(5,473,1),(5,474,1),(5,475,1),(5,476,1),(5,477,3),(5,68,3),(5,69,3),(5,70,8),(5,478,4),(5,479,4),(5,480,4),(5,481,4),(5,482,8),(5,483,8),(5,484,4),(5,485,4),(5,486,4),(5,487,4),(5,488,14),(5,489,3),(5,490,1),(5,283,2),(5,491,1),(5,103,2),(5,492,1),(5,493,1),(5,494,1),(5,495,1),(5,496,1),(5,497,1),(5,498,1),(5,499,2),(5,500,3),(5,501,1),(5,502,1),(5,503,1),(5,504,2),(5,505,2),(5,506,1),(5,124,2),(5,85,1),(5,131,2),(5,507,1),(5,508,1),(5,509,1),(5,510,1),(5,511,1),(5,114,1),(5,512,1),(5,513,1),(5,514,1),(5,118,1),(5,515,1),(5,516,1),(5,517,1),(5,518,1),(5,519,1),(5,520,1),(5,521,1),(5,522,1),(5,523,5),(5,524,1),(5,525,1),(5,526,1),(5,527,2),(5,528,1),(5,529,1),(5,530,1),(5,531,1),(5,532,1),(5,109,1),(5,533,1),(5,534,1),(5,535,1),(5,536,1),(5,537,1),(5,538,1),(5,539,2),(5,540,1),(5,541,1),(5,542,1),(5,543,1),(5,544,1),(5,545,1),(5,546,9),(5,90,2),(5,547,1),(5,548,1),(5,549,1),(5,550,1),(5,551,1),(5,552,1),(5,553,1),(5,554,1),(5,555,1),(5,556,1),(5,557,1),(5,558,1),(5,559,1),(5,95,2),(5,560,1),(5,561,1),(5,562,2),(5,563,1),(5,564,1),(5,565,1),(5,566,1),(5,88,1),(5,567,1),(5,568,1),(5,569,1),(5,570,1),(5,571,1),(5,572,1),(5,573,1),(5,574,1),(5,575,1),(5,576,1),(5,577,1),(5,578,1),(5,579,1),(5,580,1),(5,581,1),(5,582,1),(5,583,3),(5,146,7),(5,147,3),(5,584,4),(5,148,8),(5,585,4),(5,586,8),(5,587,8),(5,588,4),(5,589,4),(5,590,11),(5,591,3),(5,592,1),(5,340,2),(5,593,1),(5,181,2),(5,594,1),(5,595,1),(5,596,1),(5,597,1),(5,598,1),(5,371,1),(5,599,1),(5,600,1),(5,601,3),(5,162,1),(5,602,1),(5,603,1),(5,604,1),(5,605,1),(5,606,1),(5,607,1),(5,163,1),(5,608,1),(5,609,1),(5,610,1),(5,611,1),(5,190,1),(5,612,1),(5,613,1),(5,614,3),(5,354,1),(5,615,1),(5,616,1),(5,617,1),(5,618,1),(5,619,1),(5,620,1),(5,621,2),(5,622,1),(5,623,1),(5,624,2),(5,625,1),(5,626,1),(5,627,1),(5,628,1),(5,629,1),(5,630,1),(5,631,1),(5,632,1),(5,633,1),(5,634,1),(5,635,1),(5,636,1),(5,637,1),(5,638,1),(5,639,1),(5,640,1),(5,641,1),(5,642,1),(5,643,1),(5,644,1),(5,645,5),(5,646,5),(5,348,1),(5,647,1),(5,648,1),(5,649,1),(5,650,1),(5,651,1),(5,652,1),(5,653,1),(5,654,1),(5,655,1),(5,173,11),(5,656,1),(5,657,1),(5,658,1),(5,659,1),(5,660,1),(5,661,1),(5,662,2),(5,663,1),(5,664,1),(5,665,1),(5,666,1),(5,667,1),(5,668,1),(5,669,1),(5,670,1),(5,671,1),(5,672,1),(5,673,1),(5,674,1),(5,675,1),(5,676,1),(5,677,1),(5,678,1),(5,679,1),(5,680,1),(5,681,1),(5,682,3),(5,223,3),(5,224,3),(5,225,8),(5,683,4),(5,684,8),(5,685,8),(5,686,4),(5,687,4),(6,387,9),(6,688,1),(6,689,1),(6,690,1),(6,691,1),(6,692,1),(6,693,1),(6,694,1),(6,695,1),(6,402,1),(6,696,1),(6,697,1),(6,698,1),(6,699,1),(6,700,1),(6,47,1),(6,701,1),(6,702,1),(6,703,1),(6,704,1),(6,705,1),(6,706,1),(6,415,1),(6,707,1),(6,444,1),(6,708,1),(6,709,1),(6,710,1),(6,711,1),(6,712,1),(6,713,1),(6,714,1),(6,715,1),(6,716,1),(6,717,1),(6,718,1),(6,719,1),(6,409,1),(6,720,1),(6,721,1),(6,242,1),(6,38,1),(6,722,1),(6,723,1),(6,724,1),(6,477,3),(6,68,7),(6,69,3),(6,725,4),(6,488,9),(6,109,1),(6,726,1),(6,727,1),(6,728,1),(6,729,1),(6,327,1),(6,730,1),(6,731,1),(6,732,1),(6,505,1),(6,733,1),(6,734,1),(6,735,1),(6,736,1),(6,737,1),(6,738,1),(6,739,1),(6,740,1),(6,510,1),(6,741,1),(6,124,1),(6,553,1),(6,132,1),(6,523,1),(6,546,1),(6,90,1),(6,742,1),(6,500,1),(6,743,1),(6,744,1),(6,95,2),(6,580,1),(6,745,1),(6,746,1),(6,747,1),(6,748,1),(6,749,1),(6,750,1),(6,751,1),(6,88,1),(6,752,1),(6,753,1),(6,754,1),(6,755,1),(6,756,1),(6,757,1),(6,758,1),(6,583,3),(6,146,3),(6,147,3),(6,590,9),(6,759,1),(6,637,1),(6,760,1),(6,221,1),(6,761,1),(6,356,1),(6,762,1),(6,763,1),(6,764,1),(6,606,2),(6,765,1),(6,766,1),(6,767,1),(6,768,1),(6,769,1),(6,770,1),(6,771,1),(6,772,1),(6,653,1),(6,208,1),(6,209,1),(6,645,1),(6,646,1),(6,773,1),(6,774,1),(6,348,1),(6,173,2),(6,679,1),(6,775,1),(6,776,1),(6,777,1),(6,778,1),(6,779,1),(6,780,1),(6,781,1),(6,782,1),(6,783,1),(6,784,1),(6,785,1),(6,786,1),(6,165,1),(6,787,1),(6,682,3),(6,223,3),(6,224,3),(7,1,11),(7,788,12),(7,789,2),(7,427,2),(7,790,1),(7,791,2),(7,422,1),(7,792,1),(7,793,2),(7,461,2),(7,794,1),(7,411,1),(7,795,1),(7,796,1),(7,797,1),(7,798,1),(7,799,1),(7,800,1),(7,259,1),(7,57,1),(7,801,1),(7,802,1),(7,803,1),(7,804,1),(7,723,1),(7,60,1),(7,805,1),(7,806,1),(7,807,1),(7,51,4),(7,808,1),(7,809,1),(7,810,1),(7,811,1),(7,812,1),(7,813,1),(7,814,1),(7,815,1),(7,816,1),(7,817,1),(7,818,1),(7,456,1),(7,819,1),(7,820,1),(7,821,1),(7,822,1),(7,823,1),(7,38,4),(7,824,1),(7,825,1),(7,242,1),(7,826,1),(7,827,1),(7,37,1),(7,828,1),(7,829,1),(7,830,1),(7,831,1),(7,832,1),(7,833,1),(7,834,1),(7,835,1),(7,836,1),(7,837,1),(7,838,1),(7,839,1),(7,840,1),(7,841,1),(7,65,1),(7,842,1),(7,843,1),(7,844,1),(7,241,1),(7,845,1),(7,434,1),(7,846,2),(7,847,1),(7,722,1),(7,848,1),(7,849,1),(7,850,1),(7,851,1),(7,852,1),(7,700,1),(7,853,1),(7,854,1),(7,855,1),(7,856,1),(7,857,1),(7,67,3),(7,858,2),(7,71,2),(7,859,2),(7,81,2),(7,860,2),(7,861,2),(7,862,2),(7,82,11),(7,863,11),(7,864,1),(7,531,2),(7,865,2),(7,525,1),(7,866,1),(7,867,1),(7,868,1),(7,869,1),(7,870,1),(7,308,1),(7,565,1),(7,871,1),(7,872,1),(7,873,1),(7,874,2),(7,875,1),(7,876,1),(7,877,2),(7,878,6),(7,879,3),(7,880,1),(7,86,1),(7,757,1),(7,881,1),(7,882,1),(7,883,2),(7,884,1),(7,885,2),(7,886,1),(7,887,1),(7,131,2),(7,888,1),(7,889,1),(7,890,1),(7,891,1),(7,892,1),(7,893,1),(7,894,1),(7,895,1),(7,896,1),(7,897,1),(7,898,1),(7,899,1),(7,900,1),(7,901,1),(7,902,1),(7,903,1),(7,904,1),(7,905,1),(7,906,1),(7,907,1),(7,118,2),(7,136,1),(7,576,1),(7,908,1),(7,909,1),(7,910,1),(7,911,1),(7,912,1),(7,524,1),(7,913,1),(7,109,2),(7,570,1),(7,914,1),(7,915,1),(7,916,2),(7,917,1),(7,918,1),(7,919,1),(7,920,1),(7,921,1),(7,922,1),(7,923,1),(7,924,1),(7,925,1),(7,124,2),(7,926,1),(7,927,1),(7,928,1),(7,318,1),(7,929,1),(7,930,1),(7,931,1),(7,932,1),(7,933,1),(7,334,1),(7,934,1),(7,935,1),(7,936,1),(7,500,1),(7,937,1),(7,938,1),(7,939,1),(7,940,1),(7,941,1),(7,942,1),(7,943,1),(7,734,1),(7,944,1),(7,945,1),(7,946,1),(7,947,1),(7,948,1),(7,949,1),(7,567,1),(7,145,3),(7,950,4),(7,951,2),(7,149,2),(7,952,2),(7,159,2),(7,953,2),(7,954,2),(7,955,2),(7,160,7),(7,956,7),(7,957,1),(7,628,2),(7,958,2),(7,621,3),(7,622,1),(7,959,1),(7,960,2),(7,665,2),(7,961,1),(7,962,1),(7,963,2),(7,964,1),(7,362,1),(7,965,1),(7,966,1),(7,967,1),(7,968,2),(7,969,1),(7,970,1),(7,971,2),(7,972,1),(7,164,1),(7,165,1),(7,973,1),(7,974,2),(7,975,1),(7,976,2),(7,977,1),(7,978,1),(7,979,1),(7,980,1),(7,981,1),(7,982,1),(7,983,1),(7,984,1),(7,985,1),(7,986,1),(7,987,1),(7,988,1),(7,989,1),(7,990,1),(7,991,2),(7,992,1),(7,993,1),(7,994,1),(7,995,1),(7,615,2),(7,213,1),(7,996,1),(7,204,1),(7,997,1),(7,998,1),(7,764,1),(7,999,1),(7,1000,1),(7,1001,1),(7,1002,2),(7,1003,2),(7,1004,4),(7,1005,2),(7,1006,1),(7,1007,1),(7,1008,1),(7,1009,1),(7,371,1),(7,1010,1),(7,1011,1),(7,1012,1),(7,1013,1),(7,1014,1),(7,1015,1),(7,1016,1),(7,1017,1),(7,1018,1),(7,384,1),(7,1019,1),(7,1020,1),(7,1021,1),(7,1022,1),(7,1023,1),(7,1024,1),(7,606,1),(7,765,1),(7,1025,1),(7,1026,1),(7,1027,1),(7,1028,1),(7,1029,1),(7,1030,1),(7,1031,1),(7,1032,1),(7,1033,1),(7,222,3),(7,1034,2),(7,226,2),(7,1035,2),(7,235,2),(7,1036,2),(7,1037,2),(7,1038,2),(8,1039,6),(8,1040,6),(8,1041,6),(8,1042,6),(8,1043,6),(8,1,6),(8,2,6),(8,1044,6),(8,1045,6),(8,1046,2),(8,1047,2),(8,1048,3),(8,1049,6),(8,1050,6),(8,1051,8),(8,1052,6),(8,1053,6),(8,152,6),(8,1054,6),(8,1055,1),(8,1056,1),(8,1057,1),(8,1058,1),(8,1059,1),(8,1060,1),(8,1061,1),(8,1062,1),(8,1063,1),(8,1064,1),(8,1065,1),(8,1066,1),(8,1067,1),(8,109,1),(8,570,1),(8,1068,1),(8,118,3),(8,82,1),(8,1069,1),(8,124,1),(8,926,1),(8,882,1),(8,1070,1),(8,1071,1),(8,730,1),(8,1072,2),(8,1073,1),(8,1074,1),(8,1075,1),(8,1076,1),(8,944,1),(8,1077,1),(8,1078,1),(8,1079,3),(8,1080,6),(8,1081,6),(8,1082,6),(8,1083,6),(8,229,6),(8,1084,6),(8,1085,1),(8,1023,1),(8,1086,2),(8,1087,1),(8,1088,1),(8,1089,1),(8,1090,1),(8,1091,1),(8,1092,1),(8,1093,1),(8,1094,1),(8,1095,1),(8,1096,1),(8,1097,1),(8,163,1),(8,1098,1),(8,1099,1),(8,669,1),(8,1100,1),(8,160,1),(8,1101,1),(8,1013,1),(8,1102,1),(8,1103,1),(8,1104,1),(8,762,1),(8,1105,2),(8,1106,1),(8,1107,1),(8,1108,1),(8,1109,1),(8,1025,1),(8,1110,1),(8,1111,1),(8,1112,1),(8,1113,3),(9,1114,11),(9,1115,9),(9,1116,7),(9,850,8),(9,1,8),(9,1117,8),(9,1118,1),(9,442,4),(9,41,1),(9,1119,1),(9,826,1),(9,1120,1),(9,1121,1),(9,1122,1),(9,1123,1),(9,1124,2),(9,1125,1),(9,1126,1),(9,1127,2),(9,1128,3),(9,20,1),(9,1129,1),(9,1130,1),(9,1131,1),(9,1132,1),(9,1133,3),(9,1134,1),(9,1135,1),(9,1136,1),(9,1137,1),(9,3,3),(9,1138,1),(9,1139,1),(9,1140,1),(9,1141,1),(9,38,2),(9,840,1),(9,1142,1),(9,238,2),(9,1143,1),(9,1144,1),(9,1145,2),(9,430,1),(9,845,1),(9,81,1),(9,1146,1),(9,1147,1),(9,1148,1),(9,1149,1),(9,805,1),(9,1150,1),(9,1151,1),(9,1152,1),(9,1153,1),(9,1154,1),(9,1155,1),(9,1156,1),(9,1157,1),(9,4,1),(9,1158,2),(9,51,5),(9,1159,1),(9,1160,1),(9,1161,1),(9,1162,1),(9,1163,1),(9,1164,1),(9,851,4),(9,1165,1),(9,1166,1),(9,1167,1),(9,1168,1),(9,1169,1),(9,1170,1),(9,1171,1),(9,1172,1),(9,448,1),(9,1173,1),(9,1174,1),(9,1175,1),(9,1176,1),(9,1177,1),(9,1178,1),(9,1179,1),(9,1180,1),(9,1181,1),(9,1182,1),(9,1183,1),(9,1184,1),(9,1185,1),(9,1186,1),(9,1187,1),(9,1188,1),(9,1189,1),(9,1190,1),(9,1191,2),(9,1192,2),(9,1193,1),(9,1194,3),(9,1195,3),(9,1196,2),(9,1197,2),(9,1198,2),(9,1199,1),(9,1200,1),(9,1201,1),(9,1202,1),(9,1203,1),(9,1204,1),(9,1205,2),(9,1206,1),(9,1207,2),(9,1208,1),(9,1209,1),(9,1210,2),(9,1211,1),(9,1212,1),(9,1213,1),(9,1214,1),(9,1215,1),(9,1216,1),(9,22,1),(9,1217,1),(9,1218,1),(9,1219,4),(9,1220,2),(9,1221,1),(9,1222,1),(9,1223,1),(9,47,2),(9,1224,1),(9,68,2),(9,1225,1),(9,1226,1),(9,1227,1),(9,1228,1),(9,1229,1),(9,1230,1),(9,1231,1),(9,1232,1),(9,1233,1),(9,1234,1),(9,1235,2),(9,1236,1),(9,1237,1),(9,1238,1),(9,1239,1),(9,1240,1),(9,1241,1),(9,1242,1),(9,1243,1),(9,1244,1),(9,1245,1),(9,1246,1),(9,1247,1),(9,1048,3),(9,1248,3),(9,942,17),(9,1249,13),(9,1250,13),(9,1251,11),(9,1252,11),(9,1253,1),(9,1254,2),(9,1255,1),(9,1256,1),(9,1257,5),(9,90,2),(9,1258,1),(9,1259,1),(9,1260,1),(9,159,1),(9,583,1),(9,1261,1),(9,1262,1),(9,910,1),(9,1263,1),(9,1264,1),(9,1265,1),(9,1266,1),(9,1267,1),(9,1268,1),(9,1269,1),(9,1270,2),(9,1271,1),(9,1272,1),(9,1273,1),(9,1274,1),(9,1275,1),(9,1276,3),(9,1277,2),(9,1278,1),(9,103,1),(9,1279,2),(9,1280,1),(9,1065,1),(9,1281,4),(9,1282,1),(9,1283,1),(9,1284,1),(9,1285,1),(9,85,1),(9,1286,1),(9,1287,1),(9,943,7),(9,1288,3),(9,1289,1),(9,1290,1),(9,562,1),(9,1291,1),(9,109,7),(9,1292,1),(9,1293,1),(9,118,2),(9,136,2),(9,1294,1),(9,95,7),(9,1295,1),(9,1296,1),(9,918,1),(9,1297,1),(9,931,1),(9,1298,1),(9,1299,1),(9,1300,1),(9,1301,1),(9,1302,1),(9,131,3),(9,1303,2),(9,1304,2),(9,1305,2),(9,1306,1),(9,1307,2),(9,1308,1),(9,1309,1),(9,1310,1),(9,1311,1),(9,319,1),(9,1312,2),(9,1313,1),(9,1314,1),(9,1315,1),(9,500,1),(9,499,1),(9,1316,4),(9,1317,1),(9,1318,1),(9,1319,1),(9,1320,1),(9,1321,1),(9,523,1),(9,1322,1),(9,1323,1),(9,1324,3),(9,1325,3),(9,1326,2),(9,1327,1),(9,1328,1),(9,1329,1),(9,1330,1),(9,1331,1),(9,1332,1),(9,1333,1),(9,1334,1),(9,1335,1),(9,1336,1),(9,1337,1),(9,299,1),(9,553,2),(9,1338,1),(9,1339,1),(9,1340,1),(9,1341,1),(9,1342,1),(9,1343,1),(9,1344,1),(9,330,1),(9,544,1),(9,1345,1),(9,1346,1),(9,1347,1),(9,1348,1),(9,1349,1),(9,1350,1),(9,1351,1),(9,1352,1),(9,1353,1),(9,1354,1),(9,1355,1),(9,1356,1),(9,1357,1),(9,1358,1),(9,1359,1),(9,1360,1),(9,1361,1),(9,1362,1),(9,1363,1),(9,1364,1),(9,1365,2),(9,1366,1),(9,1367,2),(9,1368,1),(9,1369,1),(9,505,2),(9,1370,1),(9,1371,1),(9,1372,2),(9,570,1),(9,1373,1),(9,1374,1),(9,1375,1),(9,1376,1),(9,1055,3),(9,1377,2),(9,1378,1),(9,1379,1),(9,730,1),(9,1380,1),(9,1381,1),(9,1382,1),(9,1383,1),(9,1384,2),(9,1385,1),(9,1386,2),(9,1387,1),(9,1388,1),(9,889,1),(9,1389,1),(9,1390,1),(9,1391,1),(9,1392,1),(9,1393,1),(9,938,1),(9,1394,1),(9,1395,1),(9,1396,1),(9,1397,1),(9,1398,1),(9,1399,1),(9,940,1),(9,941,1),(9,1400,1),(9,1401,1),(9,1402,1),(9,1079,3),(9,1403,3),(9,1404,4),(9,1405,4),(9,1024,12),(9,1406,6),(9,1407,6),(9,1408,12),(9,1409,11),(9,1410,9),(9,1411,1),(9,1412,2),(9,1413,1),(9,1414,1),(9,1415,1),(9,1416,1),(9,1417,1),(9,1418,5),(9,1419,1),(9,1420,1),(9,1421,1),(9,1422,1),(9,1423,1),(9,1424,3),(9,1425,1),(9,764,2),(9,1426,1),(9,1427,1),(9,1428,1),(9,1429,1),(9,1430,2),(9,1431,1),(9,1432,2),(9,1433,1),(9,1434,1),(9,1435,2),(9,1436,1),(9,1437,3),(9,1438,2),(9,1439,1),(9,181,1),(9,1440,3),(9,356,2),(9,658,2),(9,173,11),(9,1441,6),(9,1442,5),(9,1443,1),(9,1444,1),(9,1445,2),(9,1446,1),(9,163,1),(9,1447,1),(9,1448,1),(9,606,7),(9,1449,3),(9,1450,1),(9,1451,1),(9,662,1),(9,1452,1),(9,1453,1),(9,213,2),(9,1454,1),(9,1455,1),(9,1456,1),(9,1457,1),(9,610,1),(9,1458,1),(9,1459,1),(9,1460,1),(9,1461,1),(9,1462,1),(9,1463,1),(9,1464,2),(9,1465,2),(9,1466,2),(9,1467,1),(9,1468,2),(9,631,1),(9,1469,2),(9,1470,1),(9,1471,2),(9,1472,1),(9,1473,1),(9,1474,2),(9,1475,1),(9,1476,1),(9,660,1),(9,601,1),(9,1477,4),(9,635,1),(9,1478,1),(9,653,3),(9,654,1),(9,1479,1),(9,1480,1),(9,1481,3),(9,1482,3),(9,1483,2),(9,1484,1),(9,1485,1),(9,1486,1),(9,1487,1),(9,1488,2),(9,1489,1),(9,1490,1),(9,1491,1),(9,1492,1),(9,354,2),(9,1493,1),(9,593,1),(9,1494,1),(9,1495,1),(9,1496,1),(9,1497,1),(9,381,1),(9,1498,1),(9,1499,1),(9,1500,1),(9,1501,1),(9,1502,1),(9,1503,1),(9,1504,1),(9,1505,1),(9,1506,1),(9,1507,1),(9,1508,1),(9,1509,1),(9,1510,1),(9,1511,1),(9,1512,1),(9,1513,1),(9,1514,1),(9,1515,1),(9,1516,1),(9,1517,2),(9,1518,1),(9,1519,1),(9,1520,1),(9,1521,1),(9,1522,1),(9,1523,1),(9,669,1),(9,1524,1),(9,1525,1),(9,1526,1),(9,191,1),(9,1023,3),(9,1527,2),(9,1528,1),(9,1099,1),(9,762,1),(9,1529,1),(9,1530,1),(9,1531,1),(9,786,1),(9,1532,2),(9,1533,1),(9,1534,2),(9,1535,1),(9,1536,1),(9,973,1),(9,1537,1),(9,1103,1),(9,1538,1),(9,1539,1),(9,1540,1),(9,1021,1),(9,1541,1),(9,1542,1),(9,1543,1),(9,1544,1),(9,1545,1),(9,1546,1),(9,1022,1),(9,1547,1),(9,1548,1),(9,1549,1),(9,1550,1),(9,1551,1),(9,1113,3),(9,1552,3);
/*!40000 ALTER TABLE `ps_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_search_word`
--

DROP TABLE IF EXISTS `ps_search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`word`)
) ENGINE=MyISAM AUTO_INCREMENT=1553 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_search_word`
--

LOCK TABLES `ps_search_word` WRITE;
/*!40000 ALTER TABLE `ps_search_word` DISABLE KEYS */;
INSERT INTO `ps_search_word` VALUES (1,1,'ipod'),(2,1,'nano'),(3,1,'design'),(4,1,'features'),(5,1,'16gb'),(6,1,'rocks'),(7,1,'like'),(8,1,'never'),(9,1,'before'),(10,1,'curved'),(11,1,'ahead'),(12,1,'curve'),(13,1,'those'),(14,1,'about'),(15,1,'rock,'),(16,1,'give'),(17,1,'nine'),(18,1,'amazing'),(19,1,'colors'),(20,1,'that\'s'),(21,1,'only'),(22,1,'part'),(23,1,'story'),(24,1,'feel'),(25,1,'curved,'),(26,1,'allaluminum'),(27,1,'glass'),(28,1,'won\'t'),(29,1,'want'),(30,1,'down'),(31,1,'great'),(32,1,'looks'),(33,1,'brains,'),(34,1,'genius'),(35,1,'feature'),(36,1,'turns'),(37,1,'into'),(38,1,'your'),(39,1,'highly'),(40,1,'intelligent,'),(41,1,'personal'),(42,1,'creates'),(43,1,'playlists'),(44,1,'finding'),(45,1,'songs'),(46,1,'library'),(47,1,'that'),(48,1,'together'),(49,1,'made'),(50,1,'move'),(51,1,'with'),(52,1,'moves'),(53,1,'accelerometer'),(54,1,'comes'),(55,1,'shake'),(56,1,'shuffle'),(57,1,'music'),(58,1,'turn'),(59,1,'sideways'),(60,1,'view'),(61,1,'cover'),(62,1,'flow'),(63,1,'play'),(64,1,'games'),(65,1,'designed'),(66,1,'mind'),(67,1,'ipods'),(68,1,'apple'),(69,1,'computer,'),(70,1,'metal'),(71,1,'16go'),(72,1,'yellow'),(73,1,'blue'),(74,1,'black'),(75,1,'orange'),(76,1,'pink'),(77,1,'green'),(78,1,'purple'),(79,1,'grams'),(80,1,'minijack'),(81,1,'stereo'),(82,2,'ipod'),(83,2,'nano'),(84,2,'nouveau'),(85,2,'design'),(86,2,'nouvelles'),(87,2,'fonctionnalité'),(88,2,'désormais'),(89,2,'nano,'),(90,2,'plus'),(91,2,'rock'),(92,2,'jamais'),(93,2,'courbes'),(94,2,'avantageuses'),(95,2,'pour'),(96,2,'amateurs'),(97,2,'sensations,'),(98,2,'voici'),(99,2,'neuf'),(100,2,'nouveaux'),(101,2,'coloris'),(102,2,'n\'est'),(103,2,'tout'),(104,2,'faites'),(105,2,'l\'expérience'),(106,2,'elliptique'),(107,2,'aluminum'),(108,2,'verre'),(109,2,'vous'),(110,2,'voudrez'),(111,2,'lâcher'),(112,2,'beau'),(113,2,'intelligent'),(114,2,'nouvelle'),(115,2,'genius'),(116,2,'fait'),(117,2,'d\'ipod'),(118,2,'votre'),(119,2,'personnel'),(120,2,'crée'),(121,2,'listes'),(122,2,'lecture'),(123,2,'recherchant'),(124,2,'dans'),(125,2,'bibliothèque'),(126,2,'chansons'),(127,2,'vont'),(128,2,'bien'),(129,2,'ensemble'),(130,2,'bouger'),(131,2,'avec'),(132,2,'équipé'),(133,2,'l\'accéléromè'),(134,2,'secouezle'),(135,2,'mélanger'),(136,2,'musique'),(137,2,'basculezle'),(138,2,'afficher'),(139,2,'cover'),(140,2,'flow'),(141,2,'découvrez'),(142,2,'jeux'),(143,2,'adaptés'),(144,2,'mouvements'),(145,2,'ipods'),(146,2,'apple'),(147,2,'computer,'),(148,2,'metal'),(149,2,'16go'),(150,2,'jaune'),(151,2,'bleu'),(152,2,'noir'),(153,2,'orange'),(154,2,'rose'),(155,2,'vert'),(156,2,'violet'),(157,2,'grammes'),(158,2,'minijack'),(159,2,'stéréo'),(160,3,'ipod'),(161,3,'nano'),(162,3,'nuevo'),(163,3,'diseño'),(164,3,'nuevas'),(165,3,'aplicaciones'),(166,3,'ahora'),(167,3,'disponible'),(168,3,'nano,'),(169,3,'rock'),(170,3,'nunca'),(171,3,'curvas'),(172,3,'aerodinámicas'),(173,3,'para'),(174,3,'aficionados'),(175,3,'sensaciones'),(176,3,'fuertes,'),(177,3,'presentamos'),(178,3,'nueve'),(179,3,'nuevos'),(180,3,'colores'),(181,3,'todo'),(182,3,'experimenta'),(183,3,'elíptico'),(184,3,'aluminio'),(185,3,'vidrio'),(186,3,'querrás'),(187,3,'separarte'),(188,3,'estético'),(189,3,'inteligente'),(190,3,'nueva'),(191,3,'aplicación'),(192,3,'genius'),(193,3,'hace'),(194,3,'discjockey'),(195,3,'personal'),(196,3,'genuis'),(197,3,'crea'),(198,3,'listas'),(199,3,'lectura'),(200,3,'buscando'),(201,3,'biblioteca'),(202,3,'canciones'),(203,3,'combinan'),(204,3,'entre'),(205,3,'hecho'),(206,3,'moverse'),(207,3,'contigo'),(208,3,'está'),(209,3,'equipado'),(210,3,'acelerómetro'),(211,3,'muévelo'),(212,3,'mezclar'),(213,3,'música'),(214,3,'voltéalo'),(215,3,'mostrar'),(216,3,'cover'),(217,3,'flow'),(218,3,'descubre'),(219,3,'juegos'),(220,3,'adaptados'),(221,3,'movimientos'),(222,3,'ipods'),(223,3,'apple'),(224,3,'computer,'),(225,3,'metal'),(226,3,'16go'),(227,3,'amarillo'),(228,3,'azul'),(229,3,'negro'),(230,3,'naranja'),(231,3,'rosa'),(232,3,'verde'),(233,3,'violeta'),(234,3,'minijack'),(235,3,'stéréo'),(236,1,'shuffle,'),(237,1,'world'),(238,1,'most'),(239,1,'wearable'),(240,1,'player,'),(241,1,'clips'),(242,1,'more'),(243,1,'vibrant'),(244,1,'blue,'),(245,1,'green,'),(246,1,'pink,'),(247,1,'instant'),(248,1,'attachment'),(249,1,'wear'),(250,1,'sleeve'),(251,1,'belt'),(252,1,'shorts'),(253,1,'badge'),(254,1,'musical'),(255,1,'devotion'),(256,1,'new,'),(257,1,'brilliant'),(258,1,'feed'),(259,1,'itunes'),(260,1,'entertainment'),(261,1,'superstore'),(262,1,'ultraorganized'),(263,1,'collection'),(264,1,'jukebox'),(265,1,'load'),(266,1,'click'),(267,1,'beauty'),(268,1,'beat'),(269,1,'intensely'),(270,1,'colorful'),(271,1,'anodized'),(272,1,'aluminum'),(273,1,'complements'),(274,1,'simple'),(275,1,'red,'),(276,1,'original'),(277,1,'silver'),(278,1,'(clip'),(279,1,'compris)'),(280,2,'shuffle'),(281,2,'shuffle,'),(282,2,'baladeur'),(283,2,'portable'),(284,2,'monde,'),(285,2,'clippe'),(286,2,'maintenant'),(287,2,'bleu,'),(288,2,'vert,'),(289,2,'rouge'),(290,2,'lien'),(291,2,'immédiat'),(292,2,'portez'),(294,2,'accrochées'),(295,2,'manche,'),(296,2,'ceinture'),(297,2,'short'),(298,2,'arborez'),(299,2,'comme'),(300,2,'signe'),(301,2,'extérieur'),(302,2,'passion'),(303,2,'existe'),(304,2,'quatre'),(305,2,'encore'),(306,2,'éclatants'),(307,2,'emplissez'),(308,2,'itunes'),(309,2,'immense'),(310,2,'magasin'),(311,2,'dédié'),(312,2,'divertissement,'),(313,2,'collection'),(314,2,'musicale'),(315,2,'parfaitement'),(316,2,'organisée'),(317,2,'jukebox'),(318,2,'pouvez'),(319,2,'seul'),(320,2,'clic'),(321,2,'remplir'),(322,2,'technicolor'),(323,2,'s\'affiche'),(324,2,'intenses'),(325,2,'rehaussent'),(326,2,'épuré'),(327,2,'boîtier'),(328,2,'aluminium'),(329,2,'anodisé'),(330,2,'choisissez'),(331,2,'parmi'),(332,2,'rose,'),(333,2,'l\'argenté'),(334,2,'d\'origine'),(335,2,'(clip'),(336,2,'compris)'),(337,3,'shuffle'),(338,3,'shuffle,'),(339,3,'walkman'),(340,3,'portátil'),(341,3,'mundo,'),(342,3,'azul,'),(343,3,'verde,'),(344,3,'rojo'),(345,3,'enlace'),(346,3,'inmediato'),(347,3,'lleva'),(348,3,'hasta'),(349,3,'colgadas'),(350,3,'manga,'),(351,3,'cinturón'),(352,3,'pantalón'),(353,3,'presume'),(354,3,'como'),(355,3,'signo'),(356,3,'exterior'),(357,3,'pasión'),(358,3,'existen'),(359,3,'cuatro'),(360,3,'llamativos'),(361,3,'llena'),(362,3,'itunes'),(363,3,'enorme'),(364,3,'tienda'),(365,3,'dedicada'),(366,3,'diversión,'),(367,3,'colección'),(368,3,'organizada'),(369,3,'perfectamente'),(370,3,'jukebox'),(371,3,'solo'),(372,3,'clic'),(373,3,'puedes'),(374,3,'llenar'),(375,3,'tecnicolor'),(376,3,'presenta'),(377,3,'vivos'),(378,3,'realzan'),(379,3,'estilizado'),(380,3,'anodizado'),(381,3,'elige'),(382,3,'rosa,'),(383,3,'plateado'),(384,3,'origen'),(385,3,'(clip'),(386,3,'incluyendo)'),(387,1,'macbook'),(388,1,'ultrathin,'),(389,1,'ultraportable,'),(390,1,'ultra'),(391,1,'unlike'),(392,1,'anything'),(393,1,'else'),(394,1,'lose'),(395,1,'inches'),(396,1,'pounds'),(397,1,'overnight'),(398,1,'result'),(399,1,'rethinking'),(400,1,'conventions'),(401,1,'multiple'),(402,1,'wireless'),(403,1,'innovations'),(404,1,'breakthrough'),(405,1,'air,'),(406,1,'mobile'),(407,1,'computing'),(408,1,'suddenly'),(409,1,'standard'),(410,1,'nearly'),(411,1,'thin'),(412,1,'index'),(413,1,'finger'),(414,1,'practically'),(415,1,'every'),(416,1,'detail'),(417,1,'could'),(418,1,'streamlined'),(419,1,'been'),(420,1,'still'),(421,1,'133inch'),(422,1,'widescreen'),(423,1,'display,'),(424,1,'fullsize'),(425,1,'keyboard,'),(426,1,'large'),(427,1,'multitouch'),(428,1,'trackpad'),(429,1,'incomparably'),(430,1,'portable'),(431,1,'without'),(432,1,'usual'),(433,1,'ultraportable'),(434,1,'screen'),(435,1,'keyboard'),(436,1,'compromisesthe'),(437,1,'incredible'),(438,1,'thinness'),(439,1,'numerous'),(440,1,'size'),(441,1,'weightshaving'),(442,1,'from'),(443,1,'slimmer'),(444,1,'hard'),(445,1,'drive'),(446,1,'strategically'),(447,1,'hidden'),(448,1,'ports'),(449,1,'lowerprofile'),(450,1,'battery,'),(451,1,'everything'),(452,1,'considered'),(453,1,'reconsidered'),(454,1,'mindmacbook'),(455,1,'engineered'),(456,1,'take'),(457,1,'full'),(458,1,'advantage'),(459,1,'which'),(460,1,'80211n'),(461,1,'wifi'),(462,1,'fast'),(463,1,'available,'),(464,1,'people'),(465,1,'truly'),(466,1,'living'),(467,1,'untethered'),(468,1,'buying'),(469,1,'renting'),(470,1,'movies'),(471,1,'online,'),(472,1,'downloading'),(473,1,'software,'),(474,1,'sharing'),(475,1,'storing'),(476,1,'files'),(477,1,'laptops'),(478,1,'80gb'),(479,1,'parallel'),(480,1,'4200'),(481,1,'160ghz'),(482,1,'intel'),(483,1,'core'),(484,1,'optional'),(485,1,'64gb'),(486,1,'solidstate'),(487,1,'180ghz'),(488,2,'macbook'),(489,2,'ultra'),(490,2,'fin,'),(491,2,'différent'),(492,2,'reste'),(493,2,'mais'),(494,2,'perd'),(495,2,'kilos'),(496,2,'centimètres'),(497,2,'nuit'),(498,2,'c\'est'),(499,2,'résultat'),(500,2,'d\'une'),(501,2,'réinvention'),(502,2,'normes'),(503,2,'multitude'),(504,2,'d\'innovations'),(505,2,'sans'),(506,2,'révolution'),(507,2,'air,'),(508,2,'l\'informatique'),(509,2,'mobile'),(510,2,'prend'),(511,2,'soudain'),(512,2,'dimension'),(513,2,'presque'),(514,2,'aussi'),(515,2,'index'),(516,2,'pratiquement'),(517,2,'pouvait'),(518,2,'être'),(519,2,'simplifié'),(520,2,'n\'en'),(521,2,'dispose'),(522,2,'moins'),(523,2,'d\'un'),(524,2,'écran'),(525,2,'panoramique'),(526,2,'pouces,'),(527,2,'clavier'),(528,2,'complet'),(529,2,'vaste'),(530,2,'trackpad'),(531,2,'multitouch'),(532,2,'incomparablemen'),(533,2,'évite'),(534,2,'compromis'),(535,2,'habituels'),(536,2,'matière'),(537,2,'d\'écran'),(538,2,'ultraportablesl'),(539,2,'finesse'),(540,2,'grand'),(541,2,'nombre'),(542,2,'termes'),(543,2,'réduction'),(544,2,'taille'),(545,2,'poids'),(546,2,'disque'),(547,2,'ports'),(548,2,'habilement'),(549,2,'dissimulés'),(550,2,'passant'),(551,2,'batterie'),(552,2,'plate,'),(553,2,'chaque'),(554,2,'détail'),(555,2,'considéré'),(556,2,'reconsidéré'),(557,2,'l\'espritmacbook'),(558,2,'conçu'),(559,2,'élaboré'),(560,2,'profiter'),(561,2,'pleinement'),(562,2,'monde'),(563,2,'lequel'),(564,2,'norme'),(565,2,'wifi'),(566,2,'80211n'),(567,2,'rapide'),(568,2,'accessible'),(569,2,'qu\'elle'),(570,2,'permet'),(571,2,'véritablement'),(572,2,'libérer'),(573,2,'toute'),(574,2,'attache'),(575,2,'acheter'),(576,2,'vidéos'),(577,2,'ligne,'),(578,2,'télécharger'),(579,2,'logicééééie'),(580,2,'stocker'),(581,2,'partager'),(582,2,'fichiers'),(583,2,'portables'),(584,2,'macbookair'),(585,2,'pata'),(586,2,'intel'),(587,2,'core'),(588,2,'(solidstate'),(589,2,'drive)'),(590,3,'macbook'),(591,3,'ultra'),(592,3,'fino,'),(593,3,'diferente'),(594,3,'resto'),(595,3,'pero'),(596,3,'pierden'),(597,3,'kilos'),(598,3,'centímetros'),(599,3,'noche'),(600,3,'esto'),(601,3,'resultado'),(602,3,'invento'),(603,3,'normas'),(604,3,'sinfín'),(605,3,'novedades'),(606,3,'cable'),(607,3,'revolución'),(608,3,'air,'),(609,3,'informática'),(610,3,'móvil'),(611,3,'adquiere'),(612,3,'dimensión'),(613,3,'casi'),(614,3,'fino'),(615,3,'dedo'),(616,3,'simplificado'),(617,3,'máximo'),(618,3,'pesar'),(619,3,'ello'),(620,3,'dispone'),(621,3,'pantalla'),(622,3,'panorámica'),(623,3,'pulgadas,'),(624,3,'teclado'),(625,3,'completo'),(626,3,'amplio'),(627,3,'trackpad'),(628,3,'multitouch'),(629,3,'100%,'),(630,3,'evitará'),(631,3,'tener'),(632,3,'hacer'),(633,3,'compromiso'),(634,3,'concierne'),(635,3,'increíble'),(636,3,'sutileza'),(637,3,'gran'),(638,3,'número'),(639,3,'innovaciones'),(640,3,'materia'),(641,3,'reducción'),(642,3,'tamaño'),(643,3,'peso'),(644,3,'desde'),(645,3,'disco'),(646,3,'duro'),(647,3,'puertos'),(648,3,'disimulados'),(649,3,'hábilmente'),(650,3,'pasando'),(651,3,'batería'),(652,3,'plana,'),(653,3,'cada'),(654,3,'detalle'),(655,3,'consideró'),(656,3,'fuera'),(657,3,'posible'),(658,3,'creado'),(659,3,'elaborado'),(660,3,'disfrutar'),(661,3,'plenamente'),(662,3,'mundo'),(663,3,'inalámbrico'),(664,3,'norma'),(665,3,'wifi'),(666,3,'80211n'),(667,3,'rápida'),(668,3,'accesible'),(669,3,'permite'),(670,3,'liberarse'),(671,3,'completamente'),(672,3,'cualquier'),(673,3,'atadura'),(674,3,'comprar'),(675,3,'videos'),(676,3,'línea,'),(677,3,'descargar'),(678,3,'programas,'),(679,3,'almacenar'),(680,3,'compartir'),(681,3,'archivos'),(682,3,'portátiles'),(683,3,'pata'),(684,3,'intel'),(685,3,'core'),(686,3,'(solidstate'),(687,3,'drive)'),(688,1,'makes'),(689,1,'easy'),(690,1,'road'),(691,1,'thanks'),(692,1,'tough'),(693,1,'polycarbonate'),(694,1,'case,'),(695,1,'builtin'),(696,1,'technologies,'),(697,1,'innovative'),(698,1,'magsafe'),(699,1,'power'),(700,1,'adapter'),(701,1,'releases'),(702,1,'automatically'),(703,1,'someone'),(704,1,'accidentally'),(705,1,'trips'),(706,1,'cord'),(707,1,'larger'),(708,1,'drive,'),(709,1,'250gb,'),(710,1,'store'),(711,1,'growing'),(712,1,'media'),(713,1,'collections'),(714,1,'valuable'),(715,1,'datathe'),(716,1,'24ghz'),(717,1,'models'),(718,1,'include'),(719,1,'memory'),(720,1,'perfect'),(721,1,'running'),(722,1,'favorite'),(723,1,'applications'),(724,1,'smoothly'),(725,1,'superdrive'),(726,2,'offre'),(727,2,'liberté'),(728,2,'mouvement'),(729,2,'grâce'),(730,2,'résistant'),(731,2,'polycarbonate,'),(732,2,'technologies'),(733,2,'intégrées'),(734,2,'adaptateur'),(735,2,'secteur'),(736,2,'magsafe'),(737,2,'novateur'),(738,2,'déconnecte'),(739,2,'automatiquement'),(740,2,'quelqu\'un'),(741,2,'pieds'),(742,2,'spacieux,'),(743,2,'capacité'),(744,2,'atteignant'),(745,2,'collections'),(746,2,'multimédia'),(747,2,'expansion'),(748,2,'données'),(749,2,'précieusesle'),(750,2,'modèle'),(751,2,'intègre'),(752,2,'mémoire'),(753,2,'standard'),(754,2,'l\'idéal'),(755,2,'exécuter'),(756,2,'souplesse'),(757,2,'applications'),(758,2,'préférées'),(759,3,'ofrece'),(760,3,'libertad'),(761,3,'gracias'),(762,3,'resistente'),(763,3,'policarbonato,'),(764,3,'tecnología'),(765,3,'adaptador'),(766,3,'cargador'),(767,3,'sector'),(768,3,'innovador'),(769,3,'desconecta'),(770,3,'automáticament'),(771,3,'alguien'),(772,3,'engancha'),(773,3,'espacioso,'),(774,3,'capacidad'),(775,3,'colecciones'),(776,3,'multimedia'),(777,3,'expansión'),(778,3,'datos'),(779,3,'preciados'),(780,3,'modelo'),(781,3,'integra'),(782,3,'memoria'),(783,3,'estándar'),(784,3,'ideal'),(785,3,'realizar'),(786,3,'dificultad'),(787,3,'preferidas'),(788,1,'touch'),(789,1,'revolutionary'),(790,1,'interface'),(791,1,'35inch'),(792,1,'color'),(793,1,'display'),(794,1,'(80211b'),(795,1,'safari,'),(796,1,'youtube,'),(797,1,'mail,'),(798,1,'stocks,'),(799,1,'weather,'),(800,1,'notes,'),(801,1,'store,'),(802,1,'maps'),(803,1,'five'),(804,1,'handson'),(805,1,'rich'),(806,1,'html'),(807,1,'email'),(808,1,'photos'),(809,1,'well'),(810,1,'pdf,'),(811,1,'word,'),(812,1,'excel'),(813,1,'attachments'),(814,1,'maps,'),(815,1,'directions,'),(816,1,'realtime'),(817,1,'traffic'),(818,1,'information'),(819,1,'notes'),(820,1,'read'),(821,1,'stock'),(822,1,'weather'),(823,1,'reports'),(824,1,'music,'),(825,1,'movies,'),(826,1,'technology'),(827,1,'built'),(828,1,'gorgeous'),(829,1,'lets'),(830,1,'pinch,'),(831,1,'zoom,'),(832,1,'scroll,'),(833,1,'flick'),(834,1,'fingers'),(835,1,'internet'),(836,1,'pocket'),(837,1,'safari'),(838,1,'browser,'),(839,1,'websites'),(840,1,'they'),(841,1,'were'),(842,1,'seen'),(843,1,'zoom'),(844,1,'tap2'),(845,1,'home'),(846,1,'quick'),(847,1,'access'),(848,1,'sites'),(849,1,'what\'s'),(850,1,'earphones'),(851,1,'cable'),(852,1,'dock'),(853,1,'polishing'),(854,1,'cloth'),(855,1,'stand'),(856,1,'start'),(857,1,'guide'),(858,1,'32go'),(859,1,'jack'),(860,1,'120g'),(861,1,'70mm'),(862,1,'110mm'),(863,2,'touch'),(864,2,'interface'),(865,2,'révolutionnair'),(866,2,'couleur'),(867,2,'pouceswifi'),(868,2,'(80211b'),(869,2,'d\'épaisseursaf'),(870,2,'youtube,'),(871,2,'music'),(872,2,'store,'),(873,2,'courrier,'),(874,2,'cartes,'),(875,2,'bourse,'),(876,2,'météo,'),(877,2,'notes'),(878,2,'titre'),(879,2,'paragraphe'),(880,2,'cinq'),(881,2,'sous'),(882,2,'main'),(883,2,'consultez'),(884,2,'emails'),(885,2,'format'),(886,2,'html'),(887,2,'enrichi,'),(888,2,'photos'),(889,2,'pieces'),(890,2,'jointes'),(891,2,'pdf,'),(892,2,'word'),(893,2,'excel'),(894,2,'obtenez'),(895,2,'itinéraires'),(896,2,'informations'),(897,2,'l\'état'),(898,2,'circulation'),(899,2,'temps'),(900,2,'réel'),(901,2,'rédigez'),(902,2,'cours'),(903,2,'bourse'),(904,2,'bulletins'),(905,2,'météo'),(906,2,'touchez'),(907,2,'doigt'),(908,2,'entre'),(909,2,'autres'),(910,2,'technologie'),(911,2,'intégrée'),(912,2,'superbe'),(913,2,'pouces'),(914,2,'d\'effectuer'),(915,2,'zooms'),(916,2,'avant'),(917,2,'arrière,'),(918,2,'faire'),(919,2,'défiler'),(920,2,'feuilleter'),(921,2,'pages'),(922,2,'l\'aide'),(923,2,'seuls'),(924,2,'doigts'),(925,2,'internet'),(926,2,'poche'),(927,2,'navigateur'),(928,2,'safari,'),(929,2,'consulter'),(930,2,'sites'),(931,2,'leur'),(932,2,'mise'),(933,2,'page'),(934,2,'effectuer'),(935,2,'zoom'),(936,2,'arrière'),(937,2,'simple'),(938,2,'pression'),(939,2,'l\'écran'),(940,2,'contenu'),(941,2,'coffret'),(942,2,'écouteurs'),(943,2,'câble'),(944,2,'dock'),(945,2,'chiffon'),(946,2,'nettoyage'),(947,2,'support'),(948,2,'guide'),(949,2,'démarrage'),(950,2,'tacticle'),(951,2,'32go'),(952,2,'jack'),(953,2,'120g'),(954,2,'70mm'),(955,2,'110mm'),(956,3,'touch'),(957,3,'interfaz'),(958,3,'revolucionaria'),(959,3,'color'),(960,3,'pulgadas'),(961,3,'(80211b'),(962,3,'espesor'),(963,3,'safari,'),(964,3,'youtube,'),(965,3,'music'),(966,3,'store,'),(967,3,'correo,'),(968,3,'mapas,'),(969,3,'bolsa,'),(970,3,'tiempo,'),(971,3,'notas'),(972,3,'cinco'),(973,3,'mano'),(974,3,'consulta'),(975,3,'correo'),(976,3,'formato'),(977,3,'html'),(978,3,'enriquecido,'),(979,3,'fotos'),(980,3,'ficheros'),(981,3,'adjuntos'),(982,3,'pdf,'),(983,3,'word'),(984,3,'excel'),(985,3,'consigue'),(986,3,'itinerarios'),(987,3,'información'),(988,3,'sobre'),(989,3,'estado'),(990,3,'carreteras'),(991,3,'tiempo'),(992,3,'real'),(993,3,'escribe'),(994,3,'bolsa'),(995,3,'alcanza'),(996,3,'videos,'),(997,3,'otras'),(998,3,'cosas'),(999,3,'integrada'),(1000,3,'magnífica'),(1001,3,'permitirá'),(1002,3,'efectuar'),(1003,3,'zoom'),(1004,3,'hacia'),(1005,3,'adelante'),(1006,3,'atrás,'),(1007,3,'pasar'),(1008,3,'ojear'),(1009,3,'páginas'),(1010,3,'ayuda'),(1011,3,'dedos'),(1012,3,'internet'),(1013,3,'bolsillo'),(1014,3,'navegador'),(1015,3,'podrás'),(1016,3,'consultar'),(1017,3,'sitios'),(1018,3,'compaginación'),(1019,3,'atrás'),(1020,3,'simple'),(1021,3,'presión'),(1022,3,'contenido'),(1023,3,'estuche'),(1024,3,'auriculares'),(1025,3,'dock'),(1026,3,'paño'),(1027,3,'limpieza'),(1028,3,'base'),(1029,3,'guía'),(1030,3,'inicio'),(1031,3,'rápido'),(1032,3,'título'),(1033,3,'párrafo'),(1034,3,'32go'),(1035,3,'jack'),(1036,3,'120g'),(1037,3,'70mm'),(1038,3,'110mm'),(1039,1,'housse'),(1040,1,'portefeuille'),(1041,1,'cuir'),(1042,1,'belkin'),(1043,1,'pour'),(1044,1,'noir'),(1045,1,'chocolat'),(1046,1,'lorem'),(1047,1,'ipsum'),(1048,1,'accessories'),(1049,2,'housse'),(1050,2,'portefeuille'),(1051,2,'cuir'),(1052,2,'(ipod'),(1053,2,'nano)'),(1054,2,'chocolat'),(1055,2,'étui'),(1056,2,'tendance'),(1057,2,'assure'),(1058,2,'protection'),(1059,2,'complète'),(1060,2,'contre'),(1061,2,'éraflures'),(1062,2,'petits'),(1063,2,'aléas'),(1064,2,'quotidienne'),(1065,2,'conception'),(1066,2,'élégante'),(1067,2,'compacte'),(1068,2,'glisser'),(1069,2,'directement'),(1070,2,'caractéristiqu'),(1071,2,'doux'),(1072,2,'accès'),(1073,2,'bouton'),(1074,2,'hold'),(1075,2,'fermeture'),(1076,2,'magnétique'),(1077,2,'connector'),(1078,2,'protègeécran'),(1079,2,'accessoires'),(1080,3,'leather'),(1081,3,'case'),(1082,3,'(ipod'),(1083,3,'nano)'),(1084,3,'chocolate'),(1085,3,'este'),(1086,3,'cuero'),(1087,3,'última'),(1088,3,'moda'),(1089,3,'garantiza'),(1090,3,'completa'),(1091,3,'protección'),(1092,3,'contra'),(1093,3,'arañazos'),(1094,3,'pequeños'),(1095,3,'contratiempos'),(1096,3,'vida'),(1097,3,'diaria'),(1098,3,'elegante'),(1099,3,'compacto'),(1100,3,'meter'),(1101,3,'directamente'),(1102,3,'bolso'),(1103,3,'característica'),(1104,3,'suave'),(1105,3,'acceso'),(1106,3,'tecla'),(1107,3,'hold'),(1108,3,'cierre'),(1109,3,'magnético'),(1110,3,'conector'),(1111,3,'salva'),(1112,3,'pantallas'),(1113,3,'accesorios'),(1114,1,'shure'),(1115,1,'se210'),(1116,1,'soundisolating'),(1117,1,'iphone'),(1118,1,'evolved'),(1119,1,'monitor'),(1120,1,'roadtested'),(1121,1,'musicians'),(1122,1,'perfected'),(1123,1,'engineers,'),(1124,1,'lightweight'),(1125,1,'stylish'),(1126,1,'delivers'),(1127,1,'fullrange'),(1128,1,'audio'),(1129,1,'free'),(1130,1,'outside'),(1131,1,'noise'),(1132,1,'using'),(1133,1,'hidefinition'),(1134,1,'microspeakers'),(1135,1,'deliver'),(1136,1,'audio,'),(1137,1,'ergonomic'),(1138,1,'ideal'),(1139,1,'premium'),(1140,1,'onthego'),(1141,1,'listening'),(1142,1,'offer'),(1143,1,'accurate'),(1144,1,'reproduction'),(1145,1,'both'),(1146,1,'sourcesfor'),(1147,1,'ultimate'),(1148,1,'precision'),(1149,1,'highs'),(1150,1,'addition,'),(1151,1,'flexible'),(1152,1,'allows'),(1153,1,'choose'),(1154,1,'comfortable'),(1155,1,'variety'),(1156,1,'wearing'),(1157,1,'positions'),(1158,1,'microspeaker'),(1159,1,'single'),(1160,1,'balanced'),(1161,1,'armature'),(1162,1,'driver'),(1163,1,'detachable,'),(1164,1,'modular'),(1165,1,'make'),(1166,1,'longer'),(1167,1,'shorter'),(1168,1,'depending'),(1169,1,'activity'),(1170,1,'connector'),(1171,1,'compatible'),(1172,1,'earphone'),(1173,1,'specifications'),(1174,1,'speaker'),(1175,1,'type'),(1176,1,'frequency'),(1177,1,'range'),(1178,1,'25hz185khz'),(1179,1,'impedance'),(1180,1,'(1khz)'),(1181,1,'ohms'),(1182,1,'sensitivity'),(1183,1,'(1mw)'),(1184,1,'length'),(1185,1,'(with'),(1186,1,'extension)'),(1187,1,'(540'),(1188,1,'1371'),(1189,1,'extension'),(1190,1,'(360'),(1191,1,'three'),(1192,1,'pairs'),(1193,1,'foam'),(1194,1,'earpiece'),(1195,1,'sleeves'),(1196,1,'(small,'),(1197,1,'medium,'),(1198,1,'large)'),(1199,1,'soft'),(1200,1,'flex'),(1201,1,'pair'),(1202,1,'tripleflange'),(1203,1,'carrying'),(1204,1,'case'),(1205,1,'warranty'),(1206,1,'twoyear'),(1207,1,'limited'),(1208,1,'(for'),(1209,1,'details,'),(1210,1,'please'),(1211,1,'visit'),(1212,1,'wwwshurecom'),(1213,1,'personalaudio'),(1214,1,'customersupport'),(1215,1,'productreturnsa'),(1216,1,'indexhtm)'),(1217,1,'se210aefs'),(1218,1,'note'),(1219,1,'products'),(1220,1,'sold'),(1221,1,'through'),(1222,1,'this'),(1223,1,'website'),(1224,1,'bear'),(1225,1,'brand'),(1226,1,'name'),(1227,1,'serviced'),(1228,1,'supported'),(1229,1,'exclusively'),(1230,1,'their'),(1231,1,'manufacturers'),(1232,1,'accordance'),(1233,1,'terms'),(1234,1,'conditions'),(1235,1,'packaged'),(1236,1,'apple\'s'),(1237,1,'does'),(1238,1,'apply'),(1239,1,'applebranded,'),(1240,1,'even'),(1241,1,'contact'),(1242,1,'manufacturer'),(1243,1,'directly'),(1244,1,'technical'),(1245,1,'support'),(1246,1,'customer'),(1247,1,'service'),(1248,1,'incorporated'),(1249,2,'isolation'),(1250,2,'sonore'),(1251,2,'shure'),(1252,2,'se210'),(1253,2,'ergonomiques'),(1254,2,'légers'),(1255,2,'offrent'),(1256,2,'reproduction'),(1257,2,'audio'),(1258,2,'fidèle'),(1259,2,'provenance'),(1260,2,'sources'),(1261,2,'salon'),(1262,2,'basés'),(1263,2,'moniteurs'),(1264,2,'personnels'),(1265,2,'testée'),(1266,2,'route'),(1267,2,'musiciens'),(1268,2,'professionnels'),(1269,2,'perfectionnée'),(1270,2,'ingénieurs'),(1271,2,'shure,'),(1272,2,'se210,'),(1273,2,'élégants,'),(1274,2,'fournissent'),(1275,2,'sortie'),(1276,2,'gamme'),(1277,2,'étendue'),(1278,2,'exempte'),(1279,2,'bruit'),(1280,2,'externe'),(1281,2,'embouts'),(1282,2,'fournis'),(1283,2,'bloquent'),(1284,2,'ambiant'),(1285,2,'combinés'),(1286,2,'ergonomique'),(1287,2,'séduisant'),(1288,2,'modulaire,'),(1289,2,'minimisent'),(1290,2,'intrusions'),(1291,2,'extérieur,'),(1292,2,'permettant'),(1293,2,'concentrer'),(1294,2,'conçus'),(1295,2,'amoureux'),(1296,2,'souhaitent'),(1297,2,'évoluer'),(1298,2,'appareil'),(1299,2,'portable,'),(1300,2,'permettent'),(1301,2,'d\'emmener'),(1302,2,'performance'),(1303,2,'microtransducte'),(1304,2,'haute'),(1305,2,'définition'),(1306,2,'développés'),(1307,2,'écoute'),(1308,2,'qualité'),(1309,2,'supérieure'),(1310,2,'déplacement,'),(1311,2,'utilisent'),(1312,2,'transducteur'),(1313,2,'armature'),(1314,2,'équilibrée'),(1315,2,'bénéficier'),(1316,2,'confort'),(1317,2,'d\'écoute'),(1318,2,'époustouflant'),(1319,2,'restitue'),(1320,2,'tous'),(1321,2,'détails'),(1322,2,'spectacle'),(1323,2,'live'),(1324,2,'universel'),(1325,2,'deluxe'),(1326,2,'comprend'),(1327,2,'éléments'),(1328,2,'suivants'),(1329,2,'inclus'),(1330,2,'double'),(1331,2,'rôle'),(1332,2,'bloquer'),(1333,2,'bruits'),(1334,2,'ambiants'),(1335,2,'garantir'),(1336,2,'maintien'),(1337,2,'personnalisés'),(1338,2,'oreille'),(1339,2,'différente,'),(1340,2,'trois'),(1341,2,'tailles'),(1342,2,'d\'embouts'),(1343,2,'mousse'),(1344,2,'flexibles'),(1345,2,'style'),(1346,2,'d\'embout'),(1347,2,'conviennent'),(1348,2,'mieux'),(1349,2,'bonne'),(1350,2,'étanchéité'),(1351,2,'facteur'),(1352,2,'optimiser'),(1353,2,'l\'isolation'),(1354,2,'réponse'),(1355,2,'basses,'),(1356,2,'ainsi'),(1357,2,'accroître'),(1358,2,'prolongée'),(1359,2,'modulaire'),(1360,2,'basant'),(1361,2,'commentaires'),(1362,2,'nombreux'),(1363,2,'utilisateurs,'),(1364,2,'développé'),(1365,2,'solution'),(1366,2,'détachable'),(1367,2,'permettre'),(1368,2,'degré'),(1369,2,'personnalisatio'),(1370,2,'précédent'),(1371,2,'mètre'),(1372,2,'fourni'),(1373,2,'d\'adapter'),(1374,2,'fonction'),(1375,2,'l\'activité'),(1376,2,'l\'application'),(1377,2,'transport'),(1378,2,'outre'),(1379,2,'compact'),(1380,2,'ranger'),(1381,2,'manière'),(1382,2,'pratique'),(1383,2,'encombres'),(1384,2,'garantie'),(1385,2,'limitée'),(1386,2,'deux'),(1387,2,'achetée'),(1388,2,'couverte'),(1389,2,'maind\'œuvre'),(1390,2,'anscaractérist'),(1391,2,'techniques'),(1392,2,'type'),(1393,2,'sensibilité'),(1394,2,'acoustique'),(1395,2,'impédance'),(1396,2,'khz)'),(1397,2,'fréquences'),(1398,2,'longueur'),(1399,2,'rallonge'),(1400,2,'(embouts'),(1401,2,'sonore,'),(1402,2,'transport)'),(1403,2,'incorporated'),(1404,2,'casque'),(1405,2,'marche'),(1406,3,'aislantes'),(1407,3,'sonido'),(1408,3,'shure'),(1409,3,'se210'),(1410,3,'aislamiento'),(1411,3,'ergonómicos'),(1412,3,'ligeros'),(1413,3,'ofrecen'),(1414,3,'reproducción'),(1415,3,'fiel'),(1416,3,'proveniente'),(1417,3,'fuentes'),(1418,3,'audio'),(1419,3,'estéreo'),(1420,3,'móviles'),(1421,3,'salón'),(1422,3,'se210,'),(1423,3,'elegantes,'),(1424,3,'están'),(1425,3,'basados'),(1426,3,'monitores'),(1427,3,'personales'),(1428,3,'músicos'),(1429,3,'profesionales'),(1430,3,'utilizan'),(1431,3,'carretera'),(1432,3,'ingenieros'),(1433,3,'perfeccionado'),(1434,3,'también'),(1435,3,'provistos'),(1436,3,'salida'),(1437,3,'gama'),(1438,3,'extendida'),(1439,3,'exenta'),(1440,3,'ruido'),(1441,3,'sonoro'),(1442,3,'almohadillas'),(1443,3,'provistas'),(1444,3,'bloquean'),(1445,3,'ambiente'),(1446,3,'combinadas'),(1447,3,'ergonómico'),(1448,3,'atractivo'),(1449,3,'modular,'),(1450,3,'minimizan'),(1451,3,'intrusiones'),(1452,3,'permiten'),(1453,3,'concentrarte'),(1454,3,'creados'),(1455,3,'apasionados'),(1456,3,'quieren'),(1457,3,'aparato'),(1458,3,'evolucione,'),(1459,3,'permitirán'),(1460,3,'llevar'),(1461,3,'allí'),(1462,3,'donde'),(1463,3,'vayas'),(1464,3,'microtransducto'),(1465,3,'alta'),(1466,3,'definición'),(1467,3,'desarrollados'),(1468,3,'poder'),(1469,3,'audición'),(1470,3,'calidad'),(1471,3,'durante'),(1472,3,'desplazamientos'),(1473,3,'único'),(1474,3,'transductor'),(1475,3,'armazón'),(1476,3,'equilibrado'),(1477,3,'confort'),(1478,3,'restituye'),(1479,3,'espectáculo'),(1480,3,'directo'),(1481,3,'universal'),(1482,3,'deluxe'),(1483,3,'incluye'),(1484,3,'siguientes'),(1485,3,'elementos'),(1486,3,'tienen'),(1487,3,'doble'),(1488,3,'función'),(1489,3,'bloquear'),(1490,3,'garantizar'),(1491,3,'estabilidad'),(1492,3,'personalizados'),(1493,3,'oreja'),(1494,3,'tres'),(1495,3,'tallas'),(1496,3,'espuma'),(1497,3,'flexibles'),(1498,3,'talla'),(1499,3,'estilo'),(1500,3,'almohadilla'),(1501,3,'mejor'),(1502,3,'convenga'),(1503,3,'buen'),(1504,3,'factor'),(1505,3,'clave'),(1506,3,'tanto'),(1507,3,'optimizar'),(1508,3,'respuesta'),(1509,3,'bajos'),(1510,3,'aumentar'),(1511,3,'prolongada'),(1512,3,'modular'),(1513,3,'basándose'),(1514,3,'comentarios'),(1515,3,'numerosos'),(1516,3,'usuarios,'),(1517,3,'solución'),(1518,3,'separable'),(1519,3,'permitir'),(1520,3,'grado'),(1521,3,'personalizació'),(1522,3,'precedentes'),(1523,3,'metro'),(1524,3,'adaptar'),(1525,3,'actividad'),(1526,3,'momento'),(1527,3,'transporte'),(1528,3,'además'),(1529,3,'guardar'),(1530,3,'manera'),(1531,3,'práctica'),(1532,3,'garantía'),(1533,3,'límite'),(1534,3,'años'),(1535,3,'tiene'),(1536,3,'piezas'),(1537,3,'obra'),(1538,3,'técnicas'),(1539,3,'tipo'),(1540,3,'sensibilidad'),(1541,3,'acústica'),(1542,3,'impedancia'),(1543,3,'khz)'),(1544,3,'frecuencias'),(1545,3,'longitud'),(1546,3,'alargador'),(1547,3,'caja'),(1548,3,'altavoces'),(1549,3,'(almohadillas'),(1550,3,'sonoro,'),(1551,3,'transporte)'),(1552,3,'incorporated');
/*!40000 ALTER TABLE `ps_search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_sekeyword`
--

DROP TABLE IF EXISTS `ps_sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_sekeyword`
--

LOCK TABLES `ps_sekeyword` WRITE;
/*!40000 ALTER TABLE `ps_sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_state`
--

DROP TABLE IF EXISTS `ps_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` char(4) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `id_zone` (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_state`
--

LOCK TABLES `ps_state` WRITE;
/*!40000 ALTER TABLE `ps_state` DISABLE KEYS */;
INSERT INTO `ps_state` VALUES (1,21,2,'Alabama','AL',0,1),(2,21,2,'Alaska','AK',0,1),(3,21,2,'Arizona','AZ',0,1),(4,21,2,'Arkansas','AR',0,1),(5,21,2,'California','CA',0,1),(6,21,2,'Colorado','CO',0,1),(7,21,2,'Connecticut','CT',0,1),(8,21,2,'Delaware','DE',0,1),(9,21,2,'Florida','FL',0,1),(10,21,2,'Georgia','GA',0,1),(11,21,2,'Hawaii','HI',0,1),(12,21,2,'Idaho','ID',0,1),(13,21,2,'Illinois','IL',0,1),(14,21,2,'Indiana','IN',0,1),(15,21,2,'Iowa','IA',0,1),(16,21,2,'Kansas','KS',0,1),(17,21,2,'Kentucky','KY',0,1),(18,21,2,'Louisiana','LA',0,1),(19,21,2,'Maine','ME',0,1),(20,21,2,'Maryland','MD',0,1),(21,21,2,'Massachusetts','MA',0,1),(22,21,2,'Michigan','MI',0,1),(23,21,2,'Minnesota','MN',0,1),(24,21,2,'Mississippi','MS',0,1),(25,21,2,'Missouri','MO',0,1),(26,21,2,'Montana','MT',0,1),(27,21,2,'Nebraska','NE',0,1),(28,21,2,'Nevada','NV',0,1),(29,21,2,'New Hampshire','NH',0,1),(30,21,2,'New Jersey','NJ',0,1),(31,21,2,'New Mexico','NM',0,1),(32,21,2,'New York','NY',0,1),(33,21,2,'North Carolina','NC',0,1),(34,21,2,'North Dakota','ND',0,1),(35,21,2,'Ohio','OH',0,1),(36,21,2,'Oklahoma','OK',0,1),(37,21,2,'Oregon','OR',0,1),(38,21,2,'Pennsylvania','PA',0,1),(39,21,2,'Rhode Island','RI',0,1),(40,21,2,'South Carolina','SC',0,1),(41,21,2,'South Dakota','SD',0,1),(42,21,2,'Tennessee','TN',0,1),(43,21,2,'Texas','TX',0,1),(44,21,2,'Utah','UT',0,1),(45,21,2,'Vermont','VT',0,1),(46,21,2,'Virginia','VA',0,1),(47,21,2,'Washington','WA',0,1),(48,21,2,'West Virginia','WV',0,1),(49,21,2,'Wisconsin','WI',0,1),(50,21,2,'Wyoming','WY',0,1),(51,21,2,'Puerto Rico','PR',0,1),(52,21,2,'US Virgin Islands','VI',0,1),(53,21,2,'District of Columbia','DC',0,1),(54,145,2,'Aguascalientes','AGS',0,1),(55,145,2,'Baja California','BCN',0,1),(56,145,2,'Baja California Sur','BCS',0,1),(57,145,2,'Campeche','CAM',0,1),(58,145,2,'Chiapas','CHP',0,1),(59,145,2,'Chihuahua','CHH',0,1),(60,145,2,'Coahuila','COA',0,1),(61,145,2,'Colima','COL',0,1),(62,145,2,'Distrito Federal','DIF',0,1),(63,145,2,'Durango','DUR',0,1),(64,145,2,'Guanajuato','GUA',0,1),(65,145,2,'Guerrero','GRO',0,1),(66,145,2,'Hidalgo','HID',0,1),(67,145,2,'Jalisco','JAL',0,1),(68,145,2,'Estado de México','MEX',0,1),(69,145,2,'Michoacán','MIC',0,1),(70,145,2,'Morelos','MOR',0,1),(71,145,2,'Nayarit','NAY',0,1),(72,145,2,'Nuevo León','NLE',0,1),(73,145,2,'Oaxaca','OAX',0,1),(74,145,2,'Puebla','PUE',0,1),(75,145,2,'Querétaro','QUE',0,1),(76,145,2,'Quintana Roo','ROO',0,1),(77,145,2,'San Luis Potosí','SLP',0,1),(78,145,2,'Sinaloa','SIN',0,1),(79,145,2,'Sonora','SON',0,1),(80,145,2,'Tabasco','TAB',0,1),(81,145,2,'Tamaulipas','TAM',0,1),(82,145,2,'Tlaxcala','TLA',0,1),(83,145,2,'Veracruz','VER',0,1),(84,145,2,'Yucatán','YUC',0,1),(85,145,2,'Zacatecas','ZAC',0,1),(86,4,2,'Ontario','ON',0,1),(87,4,2,'Quebec','QC',0,1),(88,4,2,'British Columbia','BC',0,1),(89,4,2,'Alberta','AB',0,1),(90,4,2,'Manitoba','MB',0,1),(91,4,2,'Saskatchewan','SK',0,1),(92,4,2,'Nova Scotia','NS',0,1),(93,4,2,'New Brunswick','NB',0,1),(94,4,2,'Newfoundland and Labrador','NL',0,1),(95,4,2,'Prince Edward Island','PE',0,1),(96,4,2,'Northwest Territories','NT',0,1),(97,4,2,'Yukon','YT',0,1),(98,4,2,'Nunavut','NU',0,1),(99,58,2,'Acre','AC',0,1),(100,58,2,'Alagoas','AL',0,1),(101,58,2,'Amapá','AP',0,1),(102,58,2,'Amazonas','AM',0,1),(103,58,2,'Bahia','BA',0,1),(104,58,2,'Ceará','CE',0,1),(105,58,2,'Distrito Federal','DF',0,1),(106,58,2,'Espírito Santo','ES',0,1),(107,58,2,'Goiás','GO',0,1),(108,58,2,'Maranhão','MA',0,1),(109,58,2,'Mato Grosso','MT',0,1),(110,58,2,'Mato Grosso do Sul','MS',0,1),(111,58,2,'Minas Gerais','MG',0,1),(112,58,2,'Pará','PA',0,1),(113,58,2,'Paraíba','PB',0,1),(114,58,2,'Paraná','PR',0,1),(115,58,2,'Pernambuco','PE',0,1),(116,58,2,'Piauí','PI',0,1),(117,58,2,'Rio de Janeiro','RJ',0,1),(118,58,2,'Rio Grande do Norte','RN',0,1),(119,58,2,'Rio Grande do Sul','RS',0,1),(120,58,2,'Rondônia','RO',0,1),(121,58,2,'Roraima','RR',0,1),(122,58,2,'Santa Catarina','SC',0,1),(123,58,2,'São Paulo','SP',0,1),(124,58,2,'Sergipe','SE',0,1),(125,58,2,'Tocantins','TO',0,1);
/*!40000 ALTER TABLE `ps_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_statssearch`
--

DROP TABLE IF EXISTS `ps_statssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_statssearch`
--

LOCK TABLES `ps_statssearch` WRITE;
/*!40000 ALTER TABLE `ps_statssearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_statssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_subdomain`
--

DROP TABLE IF EXISTS `ps_subdomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_subdomain` (
  `id_subdomain` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id_subdomain`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_subdomain`
--

LOCK TABLES `ps_subdomain` WRITE;
/*!40000 ALTER TABLE `ps_subdomain` DISABLE KEYS */;
INSERT INTO `ps_subdomain` VALUES (1,'www');
/*!40000 ALTER TABLE `ps_subdomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier`
--

DROP TABLE IF EXISTS `ps_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier`
--

LOCK TABLES `ps_supplier` WRITE;
/*!40000 ALTER TABLE `ps_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_supplier_lang`
--

DROP TABLE IF EXISTS `ps_supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_supplier_lang`
--

LOCK TABLES `ps_supplier_lang` WRITE;
/*!40000 ALTER TABLE `ps_supplier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab`
--

DROP TABLE IF EXISTS `ps_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab`
--

LOCK TABLES `ps_tab` WRITE;
/*!40000 ALTER TABLE `ps_tab` DISABLE KEYS */;
INSERT INTO `ps_tab` VALUES (1,0,'AdminCatalog',NULL,1),(2,0,'AdminCustomers',NULL,2),(3,0,'AdminOrders',NULL,3),(4,0,'AdminPayment',NULL,4),(5,0,'AdminShipping',NULL,5),(6,0,'AdminStats',NULL,6),(7,0,'AdminModules',NULL,7),(29,0,'AdminEmployees',NULL,8),(8,0,'AdminPreferences',NULL,9),(9,0,'AdminTools',NULL,10),(60,1,'AdminTracking',NULL,1),(10,1,'AdminManufacturers',NULL,2),(34,1,'AdminSuppliers',NULL,3),(11,1,'AdminAttributesGroups',NULL,4),(36,1,'AdminFeatures',NULL,5),(58,1,'AdminScenes',NULL,6),(66,1,'AdminTags',NULL,7),(68,1,'AdminAttachments',NULL,7),(12,2,'AdminAddresses',NULL,1),(63,2,'AdminGroups',NULL,2),(65,2,'AdminCarts',NULL,3),(42,3,'AdminInvoices',NULL,1),(55,3,'AdminDeliverySlip',NULL,2),(47,3,'AdminReturn',NULL,3),(49,3,'AdminSlip',NULL,4),(59,3,'AdminMessages',NULL,5),(13,3,'AdminStatuses',NULL,6),(54,3,'AdminOrderMessage',NULL,7),(14,4,'AdminDiscounts',NULL,3),(15,4,'AdminCurrencies',NULL,1),(16,4,'AdminTaxes',NULL,2),(17,5,'AdminCarriers',NULL,1),(46,5,'AdminStates',NULL,2),(18,5,'AdminCountries',NULL,3),(19,5,'AdminZones',NULL,4),(20,5,'AdminRangePrice',NULL,5),(21,5,'AdminRangeWeight',NULL,6),(50,6,'AdminStatsModules',NULL,1),(51,6,'AdminStatsConf',NULL,2),(61,6,'AdminSearchEngines',NULL,3),(62,6,'AdminReferrers',NULL,4),(22,7,'AdminModulesPositions',NULL,1),(30,29,'AdminProfiles',NULL,1),(31,29,'AdminAccess',NULL,2),(28,29,'AdminContacts',NULL,3),(39,8,'AdminContact',NULL,1),(38,8,'AdminAppearance',NULL,2),(56,8,'AdminMeta',NULL,3),(27,8,'AdminPPreferences',NULL,4),(24,8,'AdminEmails',NULL,5),(26,8,'AdminImages',NULL,6),(23,8,'AdminDb',NULL,7),(48,8,'AdminPDF',NULL,8),(44,8,'AdminLocalization',NULL,9),(67,8,'AdminSearchConf',NULL,10),(32,9,'AdminLanguages',NULL,1),(33,9,'AdminTranslations',NULL,2),(35,9,'AdminTabs',NULL,3),(37,9,'AdminQuickAccesses',NULL,4),(40,9,'AdminAliases',NULL,5),(41,9,'AdminImport',NULL,6),(52,9,'AdminSubDomains',NULL,7),(53,9,'AdminBackup',NULL,8),(57,9,'AdminCMS',NULL,9),(64,9,'AdminGenerator',NULL,10),(43,-1,'AdminSearch',NULL,0);
/*!40000 ALTER TABLE `ps_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tab_lang`
--

DROP TABLE IF EXISTS `ps_tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tab_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tab_lang`
--

LOCK TABLES `ps_tab_lang` WRITE;
/*!40000 ALTER TABLE `ps_tab_lang` DISABLE KEYS */;
INSERT INTO `ps_tab_lang` VALUES (1,1,'Catalog'),(1,2,'Customers'),(1,3,'Orders'),(1,4,'Payment'),(1,5,'Shipping'),(1,6,'Stats'),(1,7,'Modules'),(1,8,'Preferences'),(1,9,'Tools'),(1,10,'Manufacturers'),(1,11,'Attributes and groups'),(1,12,'Addresses'),(1,13,'Statuses'),(1,14,'Vouchers'),(1,15,'Currencies'),(1,16,'Taxes'),(1,17,'Carriers'),(1,18,'Countries'),(1,19,'Zones'),(1,20,'Price ranges'),(1,21,'Weight ranges'),(1,22,'Positions'),(1,23,'Database'),(1,24,'Email'),(1,26,'Image'),(1,27,'Products'),(1,28,'Contacts'),(1,29,'Employees'),(1,30,'Profiles'),(1,31,'Permissions'),(1,32,'Languages'),(1,33,'Translations'),(1,34,'Suppliers'),(1,35,'Tabs'),(1,36,'Features'),(1,37,'Quick Accesses'),(1,38,'Appearance'),(1,39,'Contact'),(1,40,'Aliases'),(1,41,'Import'),(1,42,'Invoices'),(1,43,'Search'),(1,44,'Localization'),(1,46,'States'),(1,47,'Merchandise return'),(1,48,'PDF'),(1,49,'Credit slips'),(1,50,'Modules'),(1,51,'Settings'),(1,52,'Subdomains'),(1,53,'DB backup'),(1,54,'Order Messages'),(1,55,'Delivery slips'),(1,56,'Meta-Tags'),(1,57,'CMS'),(1,58,'Image mapping'),(1,59,'Customer messages'),(1,60,'Tracking'),(1,61,'Search engines'),(1,62,'Referrers'),(1,63,'Groups'),(1,64,'Generators'),(1,65,'Carts'),(1,66,'Tags'),(1,67,'Search'),(1,68,'Attachments'),(2,1,'Catalogue'),(2,2,'Clients'),(2,3,'Commandes'),(2,4,'Paiement'),(2,5,'Transport'),(2,6,'Stats'),(2,7,'Modules'),(2,8,'Préférences'),(2,9,'Outils'),(2,10,'Fabricants'),(2,11,'Attributs et groupes'),(2,12,'Adresses'),(2,13,'Statuts'),(2,14,'Bons de réduction'),(2,15,'Devises'),(2,16,'Taxes'),(2,17,'Transporteurs'),(2,18,'Pays'),(2,19,'Zones'),(2,20,'Tranches de prix'),(2,21,'Tranches de poids'),(2,22,'Positions'),(2,23,'Base de données'),(2,24,'Emails'),(2,26,'Images'),(2,27,'Produits'),(2,28,'Contacts'),(2,29,'Employés'),(2,30,'Profils'),(2,31,'Permissions'),(2,32,'Langues'),(2,33,'Traductions'),(2,34,'Fournisseurs'),(2,35,'Onglets'),(2,36,'Caractéristiques'),(2,37,'Accès rapide'),(2,38,'Apparence'),(2,39,'Coordonnées'),(2,40,'Alias'),(2,41,'Import'),(2,42,'Factures'),(2,43,'Recherche'),(2,44,'Localisation'),(2,46,'Etats'),(2,47,'Retours produits'),(2,48,'PDF'),(2,49,'Avoirs'),(2,50,'Modules'),(2,51,'Configuration'),(2,52,'Sous domaines'),(2,53,'Sauvegarde BDD'),(2,54,'Messages prédéfinis'),(2,55,'Bons de livraison'),(2,56,'Méta-Tags'),(2,57,'CMS'),(2,58,'Scènes'),(2,59,'Messages clients'),(2,60,'Suivi'),(2,61,'Moteurs de recherche'),(2,62,'Sites affluents'),(2,63,'Groupes'),(2,64,'Générateurs'),(2,65,'Paniers'),(2,66,'Tags'),(2,67,'Recherche'),(2,68,'Documents joints'),(3,1,'Catálogo'),(3,2,'Clientes'),(3,3,'Pedidos'),(3,4,'Pago'),(3,5,'Transporte'),(3,6,'Estadísticas'),(3,7,'Módulos'),(3,8,'Preferencias'),(3,9,'Herramientas'),(3,10,'Fabricantes'),(3,11,'Atributos y grupos'),(3,12,'Direcciones'),(3,13,'Estados'),(3,14,'Vales de descuento'),(3,15,'Divisas'),(3,16,'Impuestos'),(3,17,'Transportistas'),(3,18,'Países'),(3,19,'Zonas'),(3,20,'Franja de precios'),(3,21,'Franja de pesos'),(3,22,'Posiciones'),(3,23,'Base de datos'),(3,24,'Emails'),(3,26,'Imágenes'),(3,27,'Productos'),(3,28,'Contactos'),(3,29,'Empleados'),(3,30,'Perfiles'),(3,31,'Permisos'),(3,32,'Idiomas'),(3,33,'Traducciones'),(3,34,'Proovedores'),(3,35,'Pestañas'),(3,36,'Características'),(3,37,'Acceso rápido'),(3,38,'Aspecto'),(3,39,'Datos'),(3,40,'Alias'),(3,41,'Importar'),(3,42,'Facturas'),(3,43,'Búsqueda'),(3,44,'Ubicación'),(3,46,'Estados'),(3,47,'Devolución productos'),(3,48,'PDF'),(3,49,'Vales'),(3,50,'Módulos'),(3,51,'Configuración'),(3,52,'Subcampos'),(3,53,'Copia de seguridad'),(3,54,'Mensajes de Orden'),(3,55,'Albaranes de entrega'),(3,56,'Meta-Tags'),(3,57,'CMS'),(3,58,'Mapeo de la imagen'),(3,59,'Mensajes del cliente'),(3,60,'Rastreo'),(3,61,'Motores de búsqueda'),(3,62,'Referido'),(3,63,'Grupos'),(3,64,'Generadores'),(3,65,'Carritos'),(3,66,'Etiquetas'),(3,67,'Búsqueda'),(3,68,'Adjuntos');
/*!40000 ALTER TABLE `ps_tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tag`
--

DROP TABLE IF EXISTS `ps_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tag`
--

LOCK TABLES `ps_tag` WRITE;
/*!40000 ALTER TABLE `ps_tag` DISABLE KEYS */;
INSERT INTO `ps_tag` VALUES (5,1,'apple'),(6,2,'ipod'),(7,2,'nano'),(8,2,'apple'),(18,2,'shuffle'),(19,2,'macbook'),(20,2,'macbookair'),(21,2,'air'),(22,1,'superdrive'),(27,2,'marche'),(26,2,'casque'),(25,2,'écouteurs'),(24,2,'ipod touch tacticle'),(23,1,'Ipod touch'),(28,1,'ipod'),(29,1,'nano'),(30,3,'ipod'),(31,3,'nano'),(32,3,'apple'),(33,1,'shuffle'),(34,3,'shuffle'),(35,2,'superdrive'),(36,3,'superdrive'),(37,3,'Ipod touch');
/*!40000 ALTER TABLE `ps_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax`
--

DROP TABLE IF EXISTS `ps_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id_tax`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax`
--

LOCK TABLES `ps_tax` WRITE;
/*!40000 ALTER TABLE `ps_tax` DISABLE KEYS */;
INSERT INTO `ps_tax` VALUES (1,'19.600'),(2,'5.500'),(3,'17.500');
/*!40000 ALTER TABLE `ps_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_lang`
--

DROP TABLE IF EXISTS `ps_tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `tax_lang_index` (`id_tax`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_lang`
--

LOCK TABLES `ps_tax_lang` WRITE;
/*!40000 ALTER TABLE `ps_tax_lang` DISABLE KEYS */;
INSERT INTO `ps_tax_lang` VALUES (1,1,'VAT 19.6%'),(1,2,'TVA 19.6%'),(1,3,'IVA 19.6%'),(2,1,'VAT 5.5%'),(2,2,'TVA 5.5%'),(2,3,'IVA 5.5%'),(3,1,'VAT 17.5%'),(3,2,'TVA UK 17.5%'),(3,3,'IVA UK 17.5%');
/*!40000 ALTER TABLE `ps_tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_state`
--

DROP TABLE IF EXISTS `ps_tax_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_state` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned NOT NULL,
  KEY `tax_state_index` (`id_tax`,`id_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_state`
--

LOCK TABLES `ps_tax_state` WRITE;
/*!40000 ALTER TABLE `ps_tax_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_tax_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_tax_zone`
--

DROP TABLE IF EXISTS `ps_tax_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_tax_zone` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  KEY `tax_zone_index` (`id_tax`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_tax_zone`
--

LOCK TABLES `ps_tax_zone` WRITE;
/*!40000 ALTER TABLE `ps_tax_zone` DISABLE KEYS */;
INSERT INTO `ps_tax_zone` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_tax_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_timezone`
--

DROP TABLE IF EXISTS `ps_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=MyISAM AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_timezone`
--

LOCK TABLES `ps_timezone` WRITE;
/*!40000 ALTER TABLE `ps_timezone` DISABLE KEYS */;
INSERT INTO `ps_timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `ps_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_web_browser`
--

DROP TABLE IF EXISTS `ps_web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_web_browser`
--

LOCK TABLES `ps_web_browser` WRITE;
/*!40000 ALTER TABLE `ps_web_browser` DISABLE KEYS */;
INSERT INTO `ps_web_browser` VALUES (1,'Safari'),(2,'Firefox 2.x'),(3,'Firefox 3.x'),(4,'Opera'),(5,'IE 6.x'),(6,'IE 7.x'),(7,'IE 8.x'),(8,'Google Chrome');
/*!40000 ALTER TABLE `ps_web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_zone`
--

DROP TABLE IF EXISTS `ps_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_zone`
--

LOCK TABLES `ps_zone` WRITE;
/*!40000 ALTER TABLE `ps_zone` DISABLE KEYS */;
INSERT INTO `ps_zone` VALUES (1,'Europe',1),(2,'US',1),(3,'Asia',1),(4,'Africa',1),(5,'Oceania',1);
/*!40000 ALTER TABLE `ps_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-11-14 22:54:13
