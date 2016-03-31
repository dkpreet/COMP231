CREATE DATABASE  IF NOT EXISTS `courseregistartion` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `courseregistartion`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: courseregistartion
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Course_Code` varchar(45) DEFAULT NULL,
  `Course_Number` int(11) DEFAULT NULL,
  `Course_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Course_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'COMP',100,'Programming 1'),(2,'COMP',122,'Database'),(3,'COMP',123,'Programming 2'),(4,'MATH',175,'Mathematics'),(5,'COMP',213,'Web Design'),(6,'GNED',219,'The Canadian workplace'),(7,'COMP',231,'Computer Project 1'),(8,'COMP',301,'Unix/Linux'),(9,'COMP',214,'Java');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `Enrollment_ID` int(32) NOT NULL,
  `Section_ID` int(32) NOT NULL,
  `Course_ID` int(32) NOT NULL,
  `Slot_ID` int(32) NOT NULL,
  `Student_ID` int(32) NOT NULL,
  PRIMARY KEY (`Enrollment_ID`,`Section_ID`,`Course_ID`,`Slot_ID`,`Student_ID`),
  KEY `fk_enrollment_section1_idx` (`Section_ID`,`Course_ID`,`Slot_ID`),
  KEY `fk_enrollment_student1_idx` (`Student_ID`),
  CONSTRAINT `fk_enrollment_section1` FOREIGN KEY (`Section_ID`, `Course_ID`, `Slot_ID`) REFERENCES `section` (`Section_ID`, `Course_ID`, `Slot_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_enrollment_student1` FOREIGN KEY (`Student_ID`) REFERENCES `student` (`Student_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (4,1,1,1,822882411);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `Section_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Section_Number` int(11) DEFAULT NULL,
  `Max_Seat` int(11) DEFAULT NULL,
  `Course_ID` int(11) NOT NULL,
  `Slot_ID` int(11) NOT NULL,
  PRIMARY KEY (`Section_ID`,`Course_ID`,`Slot_ID`),
  KEY `fk_section_course_idx` (`Course_ID`),
  KEY `fk_section_timeslot1_idx` (`Slot_ID`),
  CONSTRAINT `fk_section_course` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_timeslot1` FOREIGN KEY (`Slot_ID`) REFERENCES `timeslot` (`Slot_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,801,40,1,1),(2,802,40,1,2),(3,801,40,2,2),(4,802,40,2,3),(5,801,40,3,4),(6,802,40,3,5),(7,801,40,4,4),(8,802,40,4,5),(9,801,40,5,3),(10,802,40,5,5),(11,801,40,6,6),(12,802,40,6,8),(13,801,40,7,2),(14,802,40,7,3),(15,801,40,8,7),(16,802,40,8,6),(17,801,40,8,4),(18,802,40,9,5);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (822882411,'SRITHARAN','THAVARAJAH');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timeslot`
--

DROP TABLE IF EXISTS `timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timeslot` (
  `Slot_ID` int(11) NOT NULL,
  `S_Time` time NOT NULL,
  `E_Time` time NOT NULL,
  `Day` varchar(45) NOT NULL,
  PRIMARY KEY (`Slot_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timeslot`
--

LOCK TABLES `timeslot` WRITE;
/*!40000 ALTER TABLE `timeslot` DISABLE KEYS */;
INSERT INTO `timeslot` VALUES (1,'08:30:00','09:20:00','Mon'),(2,'09:30:00','10:20:00','Mon'),(3,'10:30:00','11:20:00','Mon'),(4,'08:30:00','09:20:00','Tue'),(5,'09:30:00','10:20:00','Tue'),(6,'10:30:00','11:20:00','Tue'),(7,'08:30:00','09:20:00','Wed'),(8,'09:30:00','10:20:00','Wed'),(9,'10:30:00','11:20:00','Wed');
/*!40000 ALTER TABLE `timeslot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'courseregistartion'
--

--
-- Dumping routines for database 'courseregistartion'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-30 20:32:57
