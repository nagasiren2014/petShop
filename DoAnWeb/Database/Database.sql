CREATE DATABASE  IF NOT EXISTS `bossstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `bossstore`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: bossstore
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boss`
--

DROP TABLE IF EXISTS `boss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `boss` (
  `idboss` int(11) NOT NULL AUTO_INCREMENT,
  `bosskind` int(11) DEFAULT NULL,
  `bossname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `bosscharacter` varchar(450) DEFAULT NULL,
  `vaccine` varchar(45) DEFAULT NULL,
  `registered` varchar(45) DEFAULT NULL,
  `bossage` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `idprovider` int(11) DEFAULT NULL,
  PRIMARY KEY (`idboss`),
  KEY `kind_idx` (`bosskind`),
  KEY `boss_providers_idx` (`idprovider`),
  CONSTRAINT `boss_kind` FOREIGN KEY (`bosskind`) REFERENCES `kind` (`idkind`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `boss_providers` FOREIGN KEY (`idprovider`) REFERENCES `providers` (`idprovider`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boss`
--

LOCK TABLES `boss` WRITE;
/*!40000 ALTER TABLE `boss` DISABLE KEYS */;
INSERT INTO `boss` VALUES (4,1,'A.J','Female','She is a playful little girl who is always up for an adventure!','No','No','3','20',1),(5,1,'Adonis','Female','She is a playful little girl who is always up for an adventure!','Yes','Yes','1','25',1),(6,2,'Colbert','Female','She is a playful little girl who is always up for an adventure!','Yes','Yes','1','45',1),(9,2,'Huskar','Male','She is a playful little girl who is always up for an adventure!','Yes','Yes','2','44',1),(1125,1,'Rolling','Male','Funny guy','Yes','Yes','1','32',5),(1126,2,'Shiba','Female','Funny','Yes','Yes','2','400',6),(1127,2,'Shibob','Male','','Yes','Yes','1','500',5),(1128,2,'Husky','Female','','Yes','Yes','2','100',6),(1129,2,'Huka','Male','một con chó nhây','Yes','Yes','1','250',5),(1130,2,'Shibi','Female','','Yes','Yes','2','33',1),(1131,2,'Snow','Female','','Yes','Yes','1','221',6),(1132,1,'Cute Cat','Female','một con chó nhây','Yes','Yes','1','111',1),(1133,1,'Rolex','Female','So cute','Yes','Yes','1','431',6),(1135,1,'Snowy','Male','','Yes','Yes','1','123',5),(1136,1,'Furry','Female','','Yes','Yes','3','156',1),(1137,1,'Bi','Female','','Yes','Yes','1','66',5),(1139,2,'','Female','','No','No','','',6);
/*!40000 ALTER TABLE `boss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `idbranch` int(11) NOT NULL AUTO_INCREMENT,
  `branchname` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbranch`),
  KEY `branch_city_idx` (`city`),
  CONSTRAINT `branch_city` FOREIGN KEY (`city`) REFERENCES `city` (`idcity`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Thu Duc','32 Hoang Dieu Street',1),(2,'Quan 9','33 Le Van Viet Street',1),(13,'Quan 1','12 Tran Hung Dao Street',1),(14,'Quan 2','54/3 Dinh Bo Linh Street',1),(15,'Binh Thanh','34 Hiep Binh Street',1),(16,'Pho Vong','34 Pho Vong',7);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `city` (
  `idcity` int(11) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcity`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'HCM'),(6,'Vung Tau'),(7,'Ha Noi'),(8,'Da Nang'),(9,'Vinh');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customers` (
  `idcustomer` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(45) DEFAULT NULL,
  `customeraddress` varchar(45) DEFAULT NULL,
  `customerphone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alexa','31 Tam Binh - Thu Duc','0123456789');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `employee` (
  `idemployee` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `dayin` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `employeeage` varchar(45) DEFAULT NULL,
  `idbranch` int(11) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `idstatus` int(11) DEFAULT NULL,
  `idjob` int(11) DEFAULT NULL,
  PRIMARY KEY (`idemployee`),
  KEY `employee_branch_idx` (`idbranch`),
  KEY `employee_job_idx` (`idjob`),
  KEY `employee_status_idx` (`idstatus`),
  CONSTRAINT `employee_branch` FOREIGN KEY (`idbranch`) REFERENCES `branch` (`idbranch`),
  CONSTRAINT `employee_job` FOREIGN KEY (`idjob`) REFERENCES `job` (`idjob`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `employee_status` FOREIGN KEY (`idstatus`) REFERENCES `status` (`idstatus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (27,'Romeo','Smith','Male','01-01-2014','32 Hoang Dieu Streets','13-08-1980','32',1,'0355836622',1,3),(28,'Smith','John','Male','05-05-2010','234 Great Ave, Suite 600','30-01-1980','33',13,'0355836622',1,3),(29,'Cena','John','Male','15-05-2013','234 Great Ave, Suite 600','17-05-1983','88',14,'09342346234',1,2),(30,'Angry','Guy','Male','05-05-2010','32 Hoang Dieu Streets','22-05-1996','21',13,'09342346234',2,1),(31,'Timerlake','Justin','Male','16-05-2013','234 Great Ave, Suite 600','01-01-1997','24',13,'09342346234',1,2),(32,'Holan','Tom','Male','13-02-2019','234 Great Ave, Suite 600','10-02-1999','22',15,'09342346234',1,1),(33,'Tai','Ngo','Male','16-05-2013','Australiaaaa','13-05-1993','23',15,'1234567890',1,2),(34,'Tran','Lam','Male','15-08-2013','234 Great Ave, Suite 600','12-05-1993','41',16,'09342346234',2,3);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoice_detail` (
  `idinvoice` int(11) NOT NULL,
  `idboss` int(11) NOT NULL,
  `invoice_detailcol` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `boss_idx` (`idboss`),
  CONSTRAINT `invoice_invoicedetail` FOREIGN KEY (`idinvoice`) REFERENCES `invoices` (`idinvoice`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoicedetail_boss` FOREIGN KEY (`idboss`) REFERENCES `boss` (`idboss`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_detail`
--

LOCK TABLES `invoice_detail` WRITE;
/*!40000 ALTER TABLE `invoice_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `invoices` (
  `idinvoice` int(11) NOT NULL AUTO_INCREMENT,
  `idcustomer` int(11) DEFAULT NULL,
  `idemployee` int(11) DEFAULT NULL,
  `day` varchar(45) DEFAULT NULL,
  `idprovider` int(11) DEFAULT NULL,
  PRIMARY KEY (`idinvoice`),
  KEY `invoice_customer_idx` (`idcustomer`),
  KEY `invoice_employee_idx` (`idemployee`),
  KEY `invoice_provider_idx` (`idprovider`),
  CONSTRAINT `invoice_customer` FOREIGN KEY (`idcustomer`) REFERENCES `customers` (`idcustomer`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_employee` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_provider` FOREIGN KEY (`idprovider`) REFERENCES `providers` (`idprovider`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job` (
  `idjob` int(11) NOT NULL AUTO_INCREMENT,
  `jobname` varchar(45) DEFAULT NULL,
  `salaryperhour` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idjob`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job`
--

LOCK TABLES `job` WRITE;
/*!40000 ALTER TABLE `job` DISABLE KEYS */;
INSERT INTO `job` VALUES (1,'Employee','20000'),(2,'Manager','30000'),(3,'Support','15000');
/*!40000 ALTER TABLE `job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kind`
--

DROP TABLE IF EXISTS `kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kind` (
  `idkind` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idkind`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kind`
--

LOCK TABLES `kind` WRITE;
/*!40000 ALTER TABLE `kind` DISABLE KEYS */;
INSERT INTO `kind` VALUES (1,'Cat'),(2,'Dog');
/*!40000 ALTER TABLE `kind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `login` (
  `id` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('16110201','taingo','Ngô Thanh Tài');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `providers` (
  `idprovider` int(11) NOT NULL AUTO_INCREMENT,
  `providername` varchar(45) DEFAULT NULL,
  `provideraddress` varchar(45) DEFAULT NULL,
  `providerphone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprovider`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'AustraliaPet','Australia','0123456789'),(5,'PetForSure','12 Ly Thuong Kiet Street - HCM City','098763459346'),(6,'PetNow','23 Brixton - America','01232524543');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status` (
  `idstatus` int(11) NOT NULL AUTO_INCREMENT,
  `statusname` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Full-Time'),(2,'Part-Time');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timekeeping`
--

DROP TABLE IF EXISTS `timekeeping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `timekeeping` (
  `idemployee` int(11) NOT NULL,
  `month` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  `workdays` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idemployee`,`month`,`year`),
  CONSTRAINT `timekeeping_employee` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timekeeping`
--

LOCK TABLES `timekeeping` WRITE;
/*!40000 ALTER TABLE `timekeeping` DISABLE KEYS */;
/*!40000 ALTER TABLE `timekeeping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bossstore'
--

--
-- Dumping routines for database 'bossstore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-24  9:17:50
