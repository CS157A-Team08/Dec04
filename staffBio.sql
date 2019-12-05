-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: team8project
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'test','111111111'),(2,'yuiophjk','ghjkbnm,'),(3,'tsz ching','4033223323'),(4,'',''),(5,'',''),(6,'mavis','4083865707'),(7,'mavis ','4083865707'),(8,'mavis','456676878'),(9,'',''),(10,'mavis','4567899'),(11,'asjdlf','12349'),(12,'sdaf','1234'),(13,'Jon','123'),(14,'jon','123'),(15,'jon','123'),(16,'asdf2464','2353676543');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `empID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL DEFAULT '0',
  `position` varchar(255) DEFAULT NULL,
  `password` varchar(60) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Tom Bee',123,'Chef','p@$$w0rd'),(2,'Lenny Sawyer',2393843123,'chef','p@$$w0rd2'),(3,'Casey Tam',2239233123,'staff','p@$$w0rd3'),(4,'Lon Gorde',1233233123,'staff','p@$$w0rd4');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `imageURL` varchar(999) DEFAULT NULL,
  `inCart` tinyint(4) DEFAULT '0',
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'steak',10,'https://www.thespruceeats.com/thmb/hl4lkmdLO7tj1eDCsGbakfk97Co=/3088x2055/filters:fill(auto,1)/marinated-top-round-steak-3060302-hero-02-ed071d5d7e584bea82857112aa734a94.jpg',0,'recommendation'),(2,'sanwish',10,'https://image.made-in-china.com/2f0j00QwUTZlLaTfkE/New-Condition-and-Commercial-Sandwish-Machine-with-Snack-Application.jpg',0,'recommendation'),(3,'burger',10,'https://www.howsweeteats.com/wp-content/uploads/2018/06/veg-burgers-I-howsweeteats.com-15.jpg',0,'recommendation'),(4,'pizza',10,'https://img.buzzfeed.com/thumbnailer-prod-us-east-1/dc23cd051d2249a5903d25faf8eeee4c/BFV36537_CC2017_2IngredintDough4Ways-FB.jpg',0,'recommendation'),(5,'pasta',10,'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190903-pasta-pomodoro-0201-landscape-pf-1568667704.jpg?crop=0.668xw:1.00xh;0.158xw,0&resize=480:*',0,'recommendation'),(6,'fried chicken',10,'https://food.fnr.sndimg.com/content/dam/images/food/fullset/2011/6/3/1/FNM_070111-Fried-Chicken-026_s4x3.jpg.rend.hgtvcom.826.620.suffix/1382539796174.jpeg',0,'recommendation'),(7,'shrimp',20,'https://www.eatwell101.com/wp-content/uploads/2018/03/cajun-shrimp-skillet-recipe.jpg',0,'seafood'),(8,'crab',20,'https://www.foodgal.com/wp-content/uploads/2010/12/CrabOverheadFoodGal.jpg',0,'seafood'),(9,'potatos',2,'https://www.seriouseats.com/recipes/images/2016/12/20161201-crispy-roast-potatoes-29-625x469.jpg',0,'sides'),(10,'salad',2,'https://www.cookingclassy.com/wp-content/uploads/2019/11/best-salad-7.jpg',0,'sides'),(11,'fries',2,'http://simpleveganblog.com/wp-content/uploads/2020/04/Baked-Frech-Fries-4.jpg',0,'sides'),(12,'coffee',1,'https://static.independent.co.uk/s3fs-public/thumbnails/image/2018/04/09/20/istock-157528129.jpg?w968h681',0,'drinks'),(13,'juice',1,'https://s3.envato.com/files/270984747/Splash%20of%20orange%20juice%20and%20oranges%20with%20leaves.jpg',0,'drinks'),(14,'tea',1,'https://www.ohhowcivilized.com/wp-content/uploads/2018/09/0918-how-brew-tea-properly-10-735x899.jpg',0,'drinks'),(15,'water',1,'https://images-na.ssl-images-amazon.com/images/I/51oFeDDsFLL._SL1500_.jpg',0,'drinks'),(16,'soda',1,'https://img.freepik.com/free-vector/soda-can-aluminium-white_1308-32368.jpg?size=626&ext=jpg',0,'drinks');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `detailsID` int(11) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL,
  `customerID` int(11) NOT NULL,
  `orederstatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`detailsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `orederstatus` int(11) DEFAULT NULL,
  `time` timestamp NOT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `customerID` int(11) DEFAULT NULL,
  `orderID` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `cardNo` varchar(32) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `change` double DEFAULT NULL,
  `tips` double DEFAULT NULL,
  PRIMARY KEY (`paymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,13,3,'2019-06-15 00:00:00','visa','7375230152182141',28,0,2),(2,1,15,'2019-07-14 00:00:00','visa','6792719030241145',49,0,3),(3,7,9,'2019-07-30 00:00:00','visa','1896917612668815',38,0,7),(4,6,10,'2019-06-15 00:00:00','cash','5188923597879427',63,17,9),(5,8,8,'2019-07-19 00:00:00','cash','8126577671763184',24,26,2),(6,4,12,'2019-07-01 00:00:00','visa','8159273773818640',15,0,4),(7,11,5,'2019-11-15 00:00:00','visa','5047454848870253',26,0,7),(8,15,1,'2019-07-15 00:00:00','visa','9335635780605930',37,0,4),(9,14,2,'2019-07-28 00:00:00','visa','7225674076876579',26,0,3),(10,3,13,'2019-07-15 00:00:00','cash','0030216218114410',34,6,6),(11,5,11,'2019-07-11 00:00:00','visa','0743019564895039',37,0,3),(12,9,7,'2019-07-15 00:00:00','visa','0816475670875447',27,0,5),(13,12,4,'2019-07-18 00:00:00','visa','5248295171549015',38,0,7),(14,2,14,'2019-07-15 00:00:00','viisa','2540073479805038',26,0,3),(15,10,6,'2019-07-15 00:00:00','visa','7227001625845702',37,0,7),(16,16,16,'2019-07-24 00:00:00','visa','3971396182891103',26,0,3);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shiftrecord`
--

DROP TABLE IF EXISTS `shiftrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shiftrecord` (
  `shiftID` int(11) NOT NULL AUTO_INCREMENT,
  `empID` int(11) NOT NULL,
  `starttime` timestamp NULL DEFAULT NULL,
  `endtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`shiftID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shiftrecord`
--

LOCK TABLES `shiftrecord` WRITE;
/*!40000 ALTER TABLE `shiftrecord` DISABLE KEYS */;
INSERT INTO `shiftrecord` VALUES (1,1,'2019-11-10 06:17:37','2019-11-10 06:22:57'),(2,2,'2019-11-09 20:00:00','2019-11-10 04:00:00'),(3,3,'2019-11-09 16:00:00','2019-11-10 01:00:00'),(4,4,'2019-11-09 18:00:00','2019-11-10 03:00:00');
/*!40000 ALTER TABLE `shiftrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topten`
--

DROP TABLE IF EXISTS `topten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topten` (
  `itemID` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topten`
--

LOCK TABLES `topten` WRITE;
/*!40000 ALTER TABLE `topten` DISABLE KEYS */;
/*!40000 ALTER TABLE `topten` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-04 22:19:22
