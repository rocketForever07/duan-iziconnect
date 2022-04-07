-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.27 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for izi-connect
DROP DATABASE IF EXISTS `izi-connect`;
CREATE DATABASE IF NOT EXISTS `izi-connect` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `izi-connect`;

-- Dumping structure for table izi-connect.class
DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `class_code` varchar(255) DEFAULT NULL,
  `status` enum('processing','wait_tutor','success') DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `tutor_id` int DEFAULT NULL,
  `type` enum('online','offline') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_update_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `day_start` timestamp NULL DEFAULT NULL,
  `day_end` timestamp NULL DEFAULT NULL,
  `total_lesson` int DEFAULT NULL,
  `duration_each_lesson` decimal(10,1) DEFAULT NULL,
  `tuition` decimal(10,1) DEFAULT NULL,
  `rate` int DEFAULT NULL,
  `student_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_class_tutor` (`tutor_id`),
  KEY `FK_class_student` (`student_id`),
  KEY `FK_class_subject` (`subject_id`),
  CONSTRAINT `FK_class_student` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_class_subject` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`),
  CONSTRAINT `FK_class_tutor` FOREIGN KEY (`tutor_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table izi-connect.subject
DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

-- Dumping structure for table izi-connect.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `DoB` timestamp NULL DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `bpoint` double DEFAULT NULL,
  `isStudent` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
