-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.40 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for computer-parts-inv
DROP DATABASE IF EXISTS `computer-parts-inv`;
CREATE DATABASE IF NOT EXISTS `computer-parts-inv` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `computer-parts-inv`;

-- Dumping structure for table computer-parts-inv.cache
DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.cache: ~0 rows (approximately)
DELETE FROM `cache`;

-- Dumping structure for table computer-parts-inv.cache_locks
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.cache_locks: ~0 rows (approximately)
DELETE FROM `cache_locks`;

-- Dumping structure for table computer-parts-inv.failed_jobs
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.failed_jobs: ~0 rows (approximately)
DELETE FROM `failed_jobs`;

-- Dumping structure for table computer-parts-inv.jobs
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.jobs: ~0 rows (approximately)
DELETE FROM `jobs`;

-- Dumping structure for table computer-parts-inv.job_batches
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.job_batches: ~0 rows (approximately)
DELETE FROM `job_batches`;

-- Dumping structure for table computer-parts-inv.manufacturer
DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partcategory_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturer_partcategory_id_foreign` (`partcategory_id`),
  CONSTRAINT `manufacturer_partcategory_id_foreign` FOREIGN KEY (`partcategory_id`) REFERENCES `partcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.manufacturer: ~61 rows (approximately)
DELETE FROM `manufacturer`;
INSERT INTO `manufacturer` (`id`, `name`, `partcategory_id`, `created_at`, `updated_at`) VALUES
	(1, 'Intel', 2, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(2, 'AMD', 1, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(3, 'Nvidia', 1, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(4, 'Gigabyte', 3, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(5, 'MSI', 3, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(6, 'Kingston', 4, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(7, 'Corsair', 4, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(8, 'Asus', 3, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(9, 'Samsung', 5, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(10, 'Western Digital', 6, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(11, 'Cooler Master', 7, '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(12, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(13, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(14, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(15, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(16, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(17, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(18, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(19, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(20, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(21, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(22, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(23, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(24, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(25, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(26, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(27, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(28, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(29, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(30, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(31, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(32, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(33, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(34, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(35, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(36, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(37, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(38, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(39, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(40, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(41, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(42, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(43, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(44, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(45, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(46, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(47, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(48, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(49, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(50, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(51, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(52, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(53, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(54, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(55, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(56, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(57, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(58, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(59, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(60, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(61, NULL, NULL, '2024-12-07 03:54:35', '2024-12-07 03:54:35');

-- Dumping structure for table computer-parts-inv.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.migrations: ~7 rows (approximately)
DELETE FROM `migrations`;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2024_11_28_031430_create_partcategory', 1),
	(5, '2024_11_28_031534_create_manufacturer', 1),
	(6, '2024_11_28_031534_create_pcpart', 1),
	(7, '2024_12_01_040344_remove_null_manufacturers', 1);

-- Dumping structure for table computer-parts-inv.partcategory
DROP TABLE IF EXISTS `partcategory`;
CREATE TABLE IF NOT EXISTS `partcategory` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.partcategory: ~7 rows (approximately)
DELETE FROM `partcategory`;
INSERT INTO `partcategory` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'GPU', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(2, 'CPU', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(3, 'MOBO', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(4, 'RAM', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(5, 'SSD', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(6, 'HDD', '2024-12-07 03:54:34', '2024-12-07 03:54:34'),
	(7, 'PSU', '2024-12-07 03:54:34', '2024-12-07 03:54:34');

-- Dumping structure for table computer-parts-inv.password_reset_tokens
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.password_reset_tokens: ~0 rows (approximately)
DELETE FROM `password_reset_tokens`;

-- Dumping structure for table computer-parts-inv.pcpart
DROP TABLE IF EXISTS `pcpart`;
CREATE TABLE IF NOT EXISTS `pcpart` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `partcategory_id` bigint unsigned NOT NULL,
  `manufacturer_id` bigint unsigned NOT NULL,
  `pcpart_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pcpart_price` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pcpart_partcategory_id_foreign` (`partcategory_id`),
  KEY `pcpart_manufacturer_id_foreign` (`manufacturer_id`),
  CONSTRAINT `pcpart_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturer` (`id`),
  CONSTRAINT `pcpart_partcategory_id_foreign` FOREIGN KEY (`partcategory_id`) REFERENCES `partcategory` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.pcpart: ~53 rows (approximately)
DELETE FROM `pcpart`;
INSERT INTO `pcpart` (`id`, `partcategory_id`, `manufacturer_id`, `pcpart_name`, `pcpart_price`, `created_at`, `updated_at`) VALUES
	(1, 5, 8, 'EVO 860', 10217.43, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(2, 2, 1, 'Core i7-9700K', 15388.00, '2024-12-07 03:54:35', '2024-12-07 04:55:53'),
	(3, 7, 9, 'CX550M', 9980.54, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(4, 4, 9, 'Vengeance LPX', 9567.48, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(5, 5, 4, 'EVO 860', 10609.22, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(6, 2, 2, 'Core i7-9700K', 9519.94, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(7, 1, 11, 'GTX 1080', 10321.99, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(8, 6, 5, 'Barracuda', 9272.72, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(9, 2, 5, 'Ryzen 5 3600', 8681.94, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(10, 2, 11, 'Ryzen 5 3600', 10229.14, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(11, 4, 10, 'Vengeance LPX', 9745.71, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(12, 5, 5, 'EVO 860', 9058.36, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(13, 2, 1, 'Ryzen 5 3600', 9143.90, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(14, 5, 1, 'EVO 860', 8949.04, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(15, 2, 5, 'Core i7-9700K', 9651.17, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(16, 2, 5, 'Ryzen 5 3600', 9485.52, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(17, 3, 1, 'B450M', 9157.21, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(18, 3, 9, 'B450M', 8478.39, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(19, 4, 5, 'Vengeance LPX', 9619.23, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(20, 1, 11, 'GTX 1080', 8622.81, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(21, 2, 1, 'Ryzen 5 3600', 10989.46, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(22, 7, 1, 'CX550M', 8127.83, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(23, 6, 1, 'Barracuda', 10007.46, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(24, 2, 5, 'Core i7-9700K', 8318.90, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(25, 7, 10, 'CX550M', 10639.08, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(26, 3, 9, 'B450M', 10842.76, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(27, 6, 11, 'Barracuda', 8673.25, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(28, 1, 1, 'GTX 1080', 9280.98, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(29, 6, 4, 'Barracuda', 8829.43, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(30, 3, 4, 'B450M', 8486.68, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(31, 3, 5, 'B450M', 10461.00, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(32, 6, 1, 'Barracuda', 10182.29, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(33, 6, 9, 'Barracuda', 10092.11, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(34, 7, 3, 'CX550M', 10568.63, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(35, 5, 9, 'EVO 860', 9946.86, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(36, 2, 4, 'Core i7-9700K', 10286.47, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(37, 7, 4, 'CX550M', 9211.17, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(38, 7, 11, 'CX550M', 9411.19, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(39, 2, 8, 'Ryzen 5 3600', 10948.74, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(40, 2, 6, 'Core i7-9700K', 8146.61, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(41, 2, 4, 'Ryzen 5 3600', 9264.29, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(42, 4, 11, 'Vengeance LPX', 10663.45, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(43, 1, 6, 'GTX 1080', 9540.37, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(44, 6, 6, 'Barracuda', 10440.20, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(45, 4, 7, 'Vengeance LPX', 9939.20, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(46, 3, 8, 'B450M', 9162.03, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(47, 4, 7, 'Vengeance LPX', 10021.47, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(48, 7, 2, 'CX550M', 10065.22, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(49, 4, 2, 'Vengeance LPX', 10659.41, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(50, 5, 10, 'EVO 860', 10460.81, '2024-12-07 03:54:35', '2024-12-07 03:54:35'),
	(52, 1, 2, 'RX 6600', 19000.00, '2024-12-07 04:46:13', '2024-12-07 04:54:08'),
	(55, 3, 5, 'MSI B550M', 8750.00, '2024-12-07 05:08:49', '2024-12-07 05:08:56'),
	(56, 4, 6, 'Kingston FURY Beast', 5790.00, '2024-12-08 17:24:47', '2024-12-10 16:08:44'),
	(57, 3, 4, 'Z890 GAMING X WIFI7', 13500.00, '2024-12-10 16:08:28', '2024-12-10 16:08:28');

-- Dumping structure for table computer-parts-inv.sessions
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.sessions: ~3 rows (approximately)
DELETE FROM `sessions`;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('0s91vmdIcSNeaEuMZ72pXDIUCrF4l03zGTpRJjSS', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU2o3WWlVblN3SUE2SXQza2RvSGtUNGFHNEpSd3ltc0ZaUHZjTzZkcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMToiaHR0cHM6Ly9jb21wdXRlci1wYXJ0cy1pbnYudGVzdCI7fX0=', 1733875758),
	('DV02vaK60KyFoZteQiftE5SRmCAN64gL4etfin0r', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYjNncFlGWmwwSUpxSEZqZzNaaWh3SlV1WElDSkMwUFNGNWJhU0pzWiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozOToiaHR0cHM6Ly9jb21wdXRlci1wYXJ0cy1pbnYudGVzdC9wY3BhcnRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1733707582),
	('oRmc4Y5IBHzQ2m3pjI11dbpBGCzmaZEVyCXvnCgN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.13.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHRxZndBVDVobko0TnNHZG9HWXN0a2JyUVRtQ3h5T2FLTDRjcW1kOCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cHM6Ly9jb21wdXRlci1wYXJ0cy1pbnYudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1733706222),
	('xha9cpzzzfgafvXFoC6gLLPYpAOwveZ88aOw6Ulr', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.13.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSERLU2J3eXJVR01MZk54eWhsZkpsUWYyMko2bEFmbjU0SEpZRTdFeiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cHM6Ly9jb21wdXRlci1wYXJ0cy1pbnYudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1733875088),
	('ZdMQNUwDLfKSGg7gLHYWuoIfEcqynklqriZPCZqh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Herd/1.13.0 Chrome/120.0.6099.291 Electron/28.2.5 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieENuWTFEdGZLaTQ2SjE5VVgyZWhZY1ZVeFZ2MTVER3RmeWVrVTlwVyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0NToiaHR0cHM6Ly9jb21wdXRlci1wYXJ0cy1pbnYudGVzdC8/aGVyZD1wcmV2aWV3Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1733706222);

-- Dumping structure for table computer-parts-inv.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table computer-parts-inv.users: ~1 rows (approximately)
DELETE FROM `users`;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Chryssdale Heart Navarro Allasgo', 'chryssdaleheartallasgo@gmail.com', NULL, '$2y$12$nyrNns.99SaSsIubbrhpI.qBhHvwwXU2W9U9Eqd9Ginw9sdWm6L22', NULL, '2024-12-07 03:54:49', '2024-12-07 03:54:49');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
