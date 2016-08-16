-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: webtechproject
-- ------------------------------------------------------
-- Server version	5.7.13

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
-- Table structure for table `Attachment`
--

DROP TABLE IF EXISTS `Attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `messageId` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `attachment` blob NOT NULL,
  PRIMARY KEY (`id`),
  KEY `messageId` (`messageId`),
  CONSTRAINT `fk_attachment_message` FOREIGN KEY (`messageId`) REFERENCES `Messages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attachment`
--

LOCK TABLES `Attachment` WRITE;
/*!40000 ALTER TABLE `Attachment` DISABLE KEYS */;
INSERT INTO `Attachment` VALUES (1,1,'2016-01-01 00:00:00','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0€\0\0\0€\0\0\0ô\à‘ù\0\0\0rPLTE\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0š\âóž\0\0\0%tRNS\0\r\Z#%&8;<?TXƒ¢¦§¬Á\Ã\Ä\Æ\È\Õ\Ö\é\ë\ìö÷üýþˆ\×/\0\0\0\ØIDATx\Ú\í\ÔY‚0E\á_QœpBÁýo\Ñz‹Cr\Î{s¿4iÍˆˆˆˆ\Ú\Ö?–/;ô¾»ÿ	Áûý\îuû]\ê÷}\n¦I¥sÙ Sõ\Ü\Ä	°(½5\0\0\0€ÿýH‰˜P_ \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@\Úþ]\\4@.ö\Z •k\r°”ã‡²_„2À¶\n \Ö÷m˜»\ïg€E7\×ý\ëÌ¼9\ÞA\æi\ßl°qøŽŠ80V»¼âž§\ËÐˆˆˆˆ\Zõ05¦\ÞVœC\0\0\0\0IEND®B`‚'),(2,1,'2016-08-09 18:45:01','iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAMAAAD04JH5AAAAclBMVEUAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACa4vOeAAAAJXRSTlMADQ8XGRojJSY4Ozw/VFh/gYOipqeswcPExsjV1unr7Pb3/P3+iNcYLwAAANhJREFUeNrt1FkOgjAYReFfUZxwQsERHJD9b9EFEAV6i0NyzntzvzRpzYiIiIja1j+WLzv0vrv/CcH7/e4FdftdC+r3fQqmSaVz2aBT9dzECbAovTUHAAAAgP8EEP1IiZgMUF8gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAGFNr+XQZcNEAuA/YaIJUBaw2wlAHjh7JfhDLAtgog1vdtmLvvZ4EHgEU31/3rzLwUOd5B5mnfbLBx+I6KODB/jVa7vAXinqfL0IiIiIga9QQVMDWm3lacQwAAAABJRU5ErkJggg==');
/*!40000 ALTER TABLE `Attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Avatars`
--

DROP TABLE IF EXISTS `Avatars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Avatars` (
  `userId` int(11) NOT NULL,
  `eyeColor` varchar(10) NOT NULL,
  `skinColor` varchar(10) NOT NULL,
  `hatType` varchar(20) NOT NULL,
  `hairColor` varchar(10) NOT NULL,
  KEY `userId` (`userId`),
  CONSTRAINT `fk_avatar_user` FOREIGN KEY (`userId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Avatars`
--

LOCK TABLES `Avatars` WRITE;
/*!40000 ALTER TABLE `Avatars` DISABLE KEYS */;
INSERT INTO `Avatars` VALUES (1,'BLUE','WHITE','NORMAL','BLACK');
/*!40000 ALTER TABLE `Avatars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Friends`
--

DROP TABLE IF EXISTS `Friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Friends` (
  `friendId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `userId2` int(11) NOT NULL,
  `waitingForId` int(11) DEFAULT NULL,
  `isApproved` tinyint(1) DEFAULT NULL,
  `isApproved2` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`friendId`),
  KEY `userId` (`userId`,`userId2`,`waitingForId`),
  KEY `fk_friends_user2` (`userId2`),
  KEY `fk_friends_waitingUser` (`waitingForId`),
  CONSTRAINT `fk_friends_user1` FOREIGN KEY (`userId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_friends_user2` FOREIGN KEY (`userId2`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_friends_waitingUser` FOREIGN KEY (`waitingForId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Friends`
--

LOCK TABLES `Friends` WRITE;
/*!40000 ALTER TABLE `Friends` DISABLE KEYS */;
INSERT INTO `Friends` VALUES (8,1,6,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gifts`
--

DROP TABLE IF EXISTS `Gifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `point` int(11) NOT NULL,
  `gifImage` blob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gifts`
--

LOCK TABLES `Gifts` WRITE;
/*!40000 ALTER TABLE `Gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Gifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupMembers`
--

DROP TABLE IF EXISTS `GroupMembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupMembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupId` (`groupId`),
  KEY `userId` (`userId`),
  CONSTRAINT `fk_groupMember_group` FOREIGN KEY (`groupId`) REFERENCES `Groups` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_groupMember_user` FOREIGN KEY (`userId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupMembers`
--

LOCK TABLES `GroupMembers` WRITE;
/*!40000 ALTER TABLE `GroupMembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `GroupMembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups`
--

DROP TABLE IF EXISTS `Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupName` varchar(50) NOT NULL,
  `teacherMasterId` int(11) NOT NULL,
  `languange` varchar(20) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherMasterId` (`teacherMasterId`),
  CONSTRAINT `fk_group_user` FOREIGN KEY (`teacherMasterId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups`
--

LOCK TABLES `Groups` WRITE;
/*!40000 ALTER TABLE `Groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Messages`
--

DROP TABLE IF EXISTS `Messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) NOT NULL,
  `date` datetime NOT NULL,
  `userFromId` int(11) NOT NULL,
  `userToId` int(11) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  `isApproved` tinyint(1) DEFAULT NULL,
  `isReported` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userFromId` (`userFromId`,`userToId`),
  KEY `fk_message_userTo` (`userToId`),
  CONSTRAINT `fk_message_userFrom` FOREIGN KEY (`userFromId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_message_userTo` FOREIGN KEY (`userToId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Messages`
--

LOCK TABLES `Messages` WRITE;
/*!40000 ALTER TABLE `Messages` DISABLE KEYS */;
INSERT INTO `Messages` VALUES (1,'TEST NSG 01','2016-08-09 17:55:20',1,6,NULL,NULL,NULL),(2,'TEST NSG 02','2016-08-09 17:55:29',1,6,NULL,NULL,NULL),(3,'TEST NSG 03','2016-08-09 17:55:34',1,6,NULL,NULL,NULL),(5,'TEST NSG 05','2016-08-09 17:55:59',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `Messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SignupCodes`
--

DROP TABLE IF EXISTS `SignupCodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SignupCodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `signupCode` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `fk_signupCode_User` FOREIGN KEY (`userId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SignupCodes`
--

LOCK TABLES `SignupCodes` WRITE;
/*!40000 ALTER TABLE `SignupCodes` DISABLE KEYS */;
INSERT INTO `SignupCodes` VALUES (3,1,'9d0744a4-5e77-11e6-b4ef-637c45e5afbc');
/*!40000 ALTER TABLE `SignupCodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `typeID` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `school` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `matchRequested` tinyint(1) DEFAULT NULL,
  `isVerified` tinyint(1) DEFAULT NULL,
  `reportedByID` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `email` (`email`),
  KEY `fk_user_type` (`typeID`),
  KEY `reportedByID` (`reportedByID`),
  CONSTRAINT `fk_user_type` FOREIGN KEY (`typeID`) REFERENCES `UsersType` (`typeID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_userReported` FOREIGN KEY (`reportedByID`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES (1,1,'MIKE','SAJ','MIKE@SD',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'728ce028a9953f22ea75cf6a9f093f7a',NULL,NULL,NULL,NULL),(6,1,'MIKE','SAJ','mioe.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'728ce028a9953f22ea75cf6a9f093f7a',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGifts`
--

DROP TABLE IF EXISTS `UserGifts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `giftId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`,`giftId`),
  KEY `fk_userGift_gift` (`giftId`),
  CONSTRAINT `fk_userGift_gift` FOREIGN KEY (`giftId`) REFERENCES `Gifts` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_userGift_user` FOREIGN KEY (`userId`) REFERENCES `User` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGifts`
--

LOCK TABLES `UserGifts` WRITE;
/*!40000 ALTER TABLE `UserGifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGifts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersType`
--

DROP TABLE IF EXISTS `UsersType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsersType` (
  `typeID` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(30) NOT NULL,
  `viewStudents` tinyint(1) NOT NULL,
  `addStudents` tinyint(1) NOT NULL,
  `matchStudents` tinyint(1) NOT NULL,
  `approveLetters` tinyint(1) NOT NULL,
  `viewStudentDashboards` tinyint(1) NOT NULL,
  `addTeachers` tinyint(1) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersType`
--

LOCK TABLES `UsersType` WRITE;
/*!40000 ALTER TABLE `UsersType` DISABLE KEYS */;
INSERT INTO `UsersType` VALUES (1,'Student',1,0,0,0,0,0),(2,'Teacher',1,1,1,1,1,0),(3,'Admin',1,1,1,1,1,1);
/*!40000 ALTER TABLE `UsersType` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-08-16 15:05:22
