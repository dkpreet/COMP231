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
  `Course_Code` varchar(45) NOT NULL,
  `Course_Number` int(11) NOT NULL,
  `Course_Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Course_Code`,`Course_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('COMP',100,'Programming 1'),('COMP',122,'Database'),('COMP',123,'Programming 2'),('COMP',212,'Web Design'),('COMP',231,'Computer Project 1'),('COMP',301,'Unix/Linux'),('GNED',219,'The Canadian workplace'),('MATH',175,'Mathematics');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `Enrollment_ID` int(11) NOT NULL,
  `Section_Number` int(11) NOT NULL,
  `Course_Code` varchar(45) NOT NULL,
  `Course_Number` int(11) NOT NULL,
  `Slot_ID` int(11) NOT NULL,
  PRIMARY KEY (`Enrollment_ID`,`Section_Number`,`Course_Code`,`Course_Number`,`Slot_ID`),
  KEY `fk_enrollment_section1_idx` (`Section_Number`,`Course_Code`,`Course_Number`,`Slot_ID`),
  CONSTRAINT `fk_enrollment_section1` FOREIGN KEY (`Section_Number`, `Course_Code`, `Course_Number`, `Slot_ID`) REFERENCES `section` (`Section_Number`, `Course_Code`, `Course_Number`, `Slot_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (1,0,'',0,0),(2,0,'',0,0),(3,0,'',0,0),(4,0,'',0,0),(5,0,'',0,0),(6,0,'',0,0),(7,0,'',0,0),(8,0,'',0,0),(9,0,'',0,0),(10,0,'',0,0),(11,0,'',0,0),(12,0,'',0,0),(13,0,'',0,0),(14,0,'',0,0),(15,0,'',0,0),(16,0,'',0,0);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `Section_Number` int(11) NOT NULL,
  `Max_Seat` int(11) NOT NULL,
  `Section_ID` int(11) NOT NULL,
  `Course_Code` varchar(45) NOT NULL,
  `Course_Number` int(11) NOT NULL,
  `Slot_ID` int(11) NOT NULL,
  PRIMARY KEY (`Section_Number`,`Course_Code`,`Course_Number`,`Slot_ID`),
  KEY `fk_section_course_idx` (`Course_Code`,`Course_Number`),
  KEY `fk_section_timeslot1_idx` (`Slot_ID`),
  CONSTRAINT `fk_section_course` FOREIGN KEY (`Course_Code`, `Course_Number`) REFERENCES `course` (`Course_Code`, `Course_Number`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_timeslot1` FOREIGN KEY (`Slot_ID`) REFERENCES `timeslot` (`Slot_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,40,101,'COMP',100,1),(2,40,102,'COMP',100,2),(3,40,101,'COMP',231,3),(4,40,102,'COMP',231,4),(5,40,101,'COMP',301,5),(6,40,102,'COMP',122,5),(7,40,101,'COMP',122,5),(8,40,102,'MATH',175,6),(9,40,101,'MATH',175,7),(10,40,102,'COMP',212,8),(11,40,101,'COMP',212,9),(12,40,102,'COMP',123,9),(13,40,101,'COMP',123,7),(14,40,102,'GNED',219,6),(15,40,101,'GNED',219,7),(16,40,102,'COMP',301,6);
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
INSERT INTO `timeslot` VALUES (1,'08:30:00','09:20:00','MON'),(2,'09:30:00','10:20:00','MON'),(3,'10:30:00','11:20:00','MON'),(4,'08:30:00','09:20:00','TUE'),(5,'09:30:00','10:20:00','TUE'),(6,'10:30:00','11:20:00','TUE'),(7,'08:30:00','09:20:00','WED'),(8,'09:30:00','10:20:00','WED'),(9,'10:30:00','11:20:00','WED');
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

-- Dump completed on 2016-03-26  1:27:15
