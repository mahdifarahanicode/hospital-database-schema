CREATE DATABASE  IF NOT EXISTS `hospitaldatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospitaldatabase`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitaldatabase
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `departmentdoctors`
--

DROP TABLE IF EXISTS `departmentdoctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departmentdoctors` (
  `DepartmentID` int NOT NULL DEFAULT '0',
  `DoctorID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`DepartmentID`,`DoctorID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `DepartmentDoctors_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  CONSTRAINT `DepartmentDoctors_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentdoctors`
--

LOCK TABLES `departmentdoctors` WRITE;
/*!40000 ALTER TABLE `departmentdoctors` DISABLE KEYS */;
INSERT INTO `departmentdoctors` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(2,6),(2,7),(2,8),(2,9),(2,10),(3,11),(3,12),(3,13),(3,14),(3,15),(4,16),(4,17),(4,18),(4,19),(4,20);
/*!40000 ALTER TABLE `departmentdoctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `DepartmentID` int NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Inpatient'),(2,'Operating Room'),(3,'Emergency'),(4,'Intensive Care');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `DoctorID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `PersonnelCode` varchar(50) DEFAULT NULL,
  `Expertise` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Ali Rezaei','12345','Cardiology'),(2,'Dr. Mohammad Hosseini','12346','Neurology'),(3,'Dr. Fatemeh Mousavi','12347','Pediatrics'),(4,'Dr. Reza Naseri','12348','Orthopedics'),(5,'Dr. Zahra Farahani','12349','Dermatology'),(6,'Dr. Hassan Zare','12350','Gastroenterology'),(7,'Dr. Mahsa Ahmadi','12351','Radiology'),(8,'Dr. Amir Ghaffari','12352','Urology'),(9,'Dr. Sara Rahimi','12353','Endocrinology'),(10,'Dr. Behnam Keshavarz','12354','Oncology'),(11,'Dr. Maryam Sharifi','12355','Psychiatry'),(12,'Dr. Javad Taghizadeh','12356','Pulmonology'),(13,'Dr. Parisa Khosravi','12357','Nephrology'),(14,'Dr. Kamran Mohammadi','12358','Ophthalmology'),(15,'Dr. Nasrin Gholami','12359','Rheumatology'),(16,'Dr. Iman Mehrabi','12360','Allergy and immunology'),(17,'Dr. Shiva Vahidi','12361','Anesthesiology'),(18,'Dr. Farhad Jafari','12362','Critical care medicine'),(19,'Dr. Leila Samadi','12363','Infectious disease'),(20,'Dr. Majid Shafiei','12364','Hematology');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `doctorservices`
--

DROP TABLE IF EXISTS `doctorservices`;
/*!50001 DROP VIEW IF EXISTS `doctorservices`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctorservices` AS SELECT 
 1 AS `DoctorID`,
 1 AS `Name`,
 1 AS `PersonnelCode`,
 1 AS `Expertise`,
 1 AS `DepartmentName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `doctorsvisitedadmittedpatients`
--

DROP TABLE IF EXISTS `doctorsvisitedadmittedpatients`;
/*!50001 DROP VIEW IF EXISTS `doctorsvisitedadmittedpatients`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctorsvisitedadmittedpatients` AS SELECT 
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patientdepartments`
--

DROP TABLE IF EXISTS `patientdepartments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdepartments` (
  `PatientID` int NOT NULL DEFAULT '0',
  `DepartmentID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`PatientID`,`DepartmentID`),
  KEY `DepartmentID` (`DepartmentID`),
  CONSTRAINT `PatientDepartments_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `PatientDepartments_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdepartments`
--

LOCK TABLES `patientdepartments` WRITE;
/*!40000 ALTER TABLE `patientdepartments` DISABLE KEYS */;
INSERT INTO `patientdepartments` VALUES (2,1),(5,1),(9,1),(11,1),(13,1),(17,1),(21,1),(25,1),(28,1),(1,2),(10,2),(12,2),(14,2),(18,2),(22,2),(26,2),(33,2),(35,2),(38,2),(40,2),(3,3),(4,3),(7,3),(15,3),(19,3),(23,3),(27,3),(32,3),(34,3),(39,3),(6,4),(8,4),(16,4),(20,4),(24,4),(29,4),(30,4),(31,4),(36,4),(37,4);
/*!40000 ALTER TABLE `patientdepartments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patientdoctors`
--

DROP TABLE IF EXISTS `patientdoctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdoctors` (
  `PatientID` int NOT NULL DEFAULT '0',
  `DoctorID` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`PatientID`,`DoctorID`),
  KEY `DoctorID` (`DoctorID`),
  CONSTRAINT `PatientDoctors_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `patients` (`PatientID`),
  CONSTRAINT `PatientDoctors_ibfk_2` FOREIGN KEY (`DoctorID`) REFERENCES `doctors` (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdoctors`
--

LOCK TABLES `patientdoctors` WRITE;
/*!40000 ALTER TABLE `patientdoctors` DISABLE KEYS */;
INSERT INTO `patientdoctors` VALUES (9,1),(5,2),(13,2),(25,2),(2,3),(11,3),(21,4),(28,4),(17,5),(1,6),(26,6),(33,6),(38,6),(10,7),(22,7),(12,8),(14,9),(18,10),(40,10),(3,11),(15,11),(39,11),(34,12),(19,13),(23,13),(4,14),(27,14),(32,14),(7,15),(35,15),(6,16),(20,17),(24,17),(31,17),(8,18),(30,18),(16,19),(29,20),(36,20),(37,20);
/*!40000 ALTER TABLE `patientdoctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patientinpatientcost`
--

DROP TABLE IF EXISTS `patientinpatientcost`;
/*!50001 DROP VIEW IF EXISTS `patientinpatientcost`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patientinpatientcost` AS SELECT 
 1 AS `PatientID`,
 1 AS `Name`,
 1 AS `AdmissionDate`,
 1 AS `DischargeDate`,
 1 AS `Season`,
 1 AS `TotalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `PatientID` int NOT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `AdmissionDate` date DEFAULT NULL,
  `DischargeDate` date DEFAULT NULL,
  `Season` varchar(50) DEFAULT NULL,
  `TotalCost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Javad Mohammadi','2023-12-04','2023-12-14','Winter',4464.40),(2,'Reza Karimi','2024-04-01','2024-04-11','Winter',9575.97),(3,'Ali Ahmadi','2024-01-15','2024-01-25','Winter',3200.55),(4,'Sara Hosseini','2024-02-05','2024-02-15','Winter',5500.75),(5,'Mahsa Gholami','2024-03-10','2024-03-20','Spring',6700.30),(6,'Amir Hosseini','2023-04-15','2023-04-25','Spring',4400.20),(7,'Neda Rezai','2023-05-20','2023-05-30','Spring',5300.10),(8,'Farhad Salehi','2023-06-10','2023-06-20','Summer',3200.40),(9,'Maryam Mohammadi','2023-07-15','2023-07-25','Summer',7500.60),(10,'Mehdi Fathi','2023-08-05','2023-08-15','Summer',4300.80),(11,'Fatemeh Ghasemi','2023-09-10','2023-09-20','Summer',6200.90),(12,'Ali Nazari','2023-10-01','2023-10-11','Fall',5100.30),(13,'Narges Azimi','2023-11-05','2023-11-15','Fall',4800.70),(14,'Hamid Ahmadi','2023-12-20','2023-12-30','Winter',3600.90),(15,'Zahra Ramezani','2024-01-10','2024-01-20','Winter',4200.20),(16,'Ali Akbari','2024-02-05','2024-02-15','Winter',6200.50),(17,'Fatemeh Safaei','2024-03-15','2024-03-25','Spring',7100.40),(18,'Mohammad Mohammadi','2023-04-20','2023-04-30','Spring',4900.80),(19,'Leila Sadeghi','2023-05-05','2023-05-15','Spring',5800.70),(20,'Sajad Ahmadi','2023-06-10','2023-06-20','Summer',3300.60),(21,'Sara Mohammadi','2023-07-15','2023-07-25','Summer',7200.50),(22,'Amir Aliabadi','2023-08-01','2023-08-11','Summer',5200.30),(23,'Negin Hoseini','2023-09-25','2023-10-05','Summer',6700.90),(24,'Nima Ahmadi','2023-10-10','2023-10-20','Fall',4900.20),(25,'Fatemeh Bahrami','2023-11-15','2023-11-25','Fall',4400.40),(26,'Mohammad Sadeghi','2023-12-10','2023-12-20','Winter',6100.70),(27,'Maryam Karimi','2024-01-20','2024-01-30','Winter',7200.80),(28,'Ali Rezaei','2024-02-15','2024-02-25','Winter',5300.90),(29,'Sahar Mirzaei','2024-03-05','2024-03-15','Spring',6500.20),(30,'Pouya Ghasemi','2023-04-10','2023-04-20','Spring',3700.30),(31,'Shima Mohammadi','2023-05-15','2023-05-25','Spring',5700.40),(32,'Mohammad Ahmadi','2023-06-20','2023-06-30','Summer',4200.50),(33,'Sara Rezaei','2023-07-25','2023-08-04','Summer',7100.60),(34,'Ali Akbari','2023-08-15','2023-08-25','Summer',5300.70),(35,'Narges Hosseini','2023-09-20','2023-09-30','Summer',6800.80),(36,'Hossein Gholami','2023-10-05','2023-10-15','Fall',4700.90),(37,'Sara Mirzaei','2023-11-10','2023-11-20','Fall',4300.20),(38,'Mehdi Sadeghi','2023-12-15','2023-12-25','Winter',6000.30),(39,'Parisa Karimi','2024-01-10','2024-01-20','Winter',7100.40),(40,'Neda Hosseini','2024-02-20','2024-02-28','Winter',5400.50);
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patientsdischargedwithin10days`
--

DROP TABLE IF EXISTS `patientsdischargedwithin10days`;
/*!50001 DROP VIEW IF EXISTS `patientsdischargedwithin10days`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patientsdischargedwithin10days` AS SELECT 
 1 AS `PatientID`,
 1 AS `Name`,
 1 AS `AdmissionDate`,
 1 AS `DischargeDate`,
 1 AS `Season`,
 1 AS `TotalCost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `patientsininpatient`
--

DROP TABLE IF EXISTS `patientsininpatient`;
/*!50001 DROP VIEW IF EXISTS `patientsininpatient`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patientsininpatient` AS SELECT 
 1 AS `PatientID`,
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `seasonsurgeriesbydoctor`
--

DROP TABLE IF EXISTS `seasonsurgeriesbydoctor`;
/*!50001 DROP VIEW IF EXISTS `seasonsurgeriesbydoctor`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `seasonsurgeriesbydoctor` AS SELECT 
 1 AS `Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `doctorservices`
--

/*!50001 DROP VIEW IF EXISTS `doctorservices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctorservices` AS select `doctors`.`DoctorID` AS `DoctorID`,`doctors`.`Name` AS `Name`,`doctors`.`PersonnelCode` AS `PersonnelCode`,`doctors`.`Expertise` AS `Expertise`,`departments`.`Name` AS `DepartmentName` from ((`doctors` join `departmentdoctors` on((`doctors`.`DoctorID` = `departmentdoctors`.`DoctorID`))) join `departments` on((`departmentdoctors`.`DepartmentID` = `departments`.`DepartmentID`))) where ((`doctors`.`DoctorID` = '18') or (`doctors`.`PersonnelCode` = '12362')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `doctorsvisitedadmittedpatients`
--

/*!50001 DROP VIEW IF EXISTS `doctorsvisitedadmittedpatients`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctorsvisitedadmittedpatients` AS select distinct `doctors`.`Name` AS `Name` from ((`patientdoctors` join `doctors` on((`patientdoctors`.`DoctorID` = `doctors`.`DoctorID`))) join `patientdepartments` on((`patientdoctors`.`PatientID` = `patientdepartments`.`PatientID`))) where (`patientdoctors`.`PatientID` in (10,20,30,40)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patientinpatientcost`
--

/*!50001 DROP VIEW IF EXISTS `patientinpatientcost`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patientinpatientcost` AS select `patients`.`PatientID` AS `PatientID`,`patients`.`Name` AS `Name`,`patients`.`AdmissionDate` AS `AdmissionDate`,`patients`.`DischargeDate` AS `DischargeDate`,`patients`.`Season` AS `Season`,`patients`.`TotalCost` AS `TotalCost` from (`patients` join `patientdepartments` on((`patients`.`PatientID` = `patientdepartments`.`PatientID`))) where ((`patients`.`Name` = 'Mahsa Gholami') and (`patientdepartments`.`DepartmentID` = 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patientsdischargedwithin10days`
--

/*!50001 DROP VIEW IF EXISTS `patientsdischargedwithin10days`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patientsdischargedwithin10days` AS select `report_number1`.`PatientID` AS `PatientID`,`report_number1`.`Name` AS `Name`,`report_number1`.`AdmissionDate` AS `AdmissionDate`,`report_number1`.`DischargeDate` AS `DischargeDate`,`report_number1`.`Season` AS `Season`,`report_number1`.`TotalCost` AS `TotalCost` from `patients` `report_number1` where ((`report_number1`.`AdmissionDate` = '2023-4-10') and (`report_number1`.`DischargeDate` between `report_number1`.`AdmissionDate` and (`report_number1`.`AdmissionDate` + interval 10 day))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patientsininpatient`
--

/*!50001 DROP VIEW IF EXISTS `patientsininpatient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patientsininpatient` AS select `patients`.`PatientID` AS `PatientID`,`patients`.`Name` AS `Name` from (`patients` join `patientdepartments` on((`patients`.`PatientID` = `patientdepartments`.`PatientID`))) where (`patientdepartments`.`DepartmentID` = 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `seasonsurgeriesbydoctor`
--

/*!50001 DROP VIEW IF EXISTS `seasonsurgeriesbydoctor`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `seasonsurgeriesbydoctor` AS select `patients`.`Name` AS `Name` from ((`patientdoctors` join `patientdepartments` on((`patientdoctors`.`PatientID` = `patientdepartments`.`PatientID`))) join `patients` on((`patientdoctors`.`PatientID` = `patients`.`PatientID`))) where ((`patientdoctors`.`DoctorID` = 10) and (`patientdepartments`.`DepartmentID` = 2) and (`patients`.`Season` = 'Spring')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-12  1:50:39
