-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 14, 2020 at 03:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_radiology`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 8, 'Master Data', 'fa-database', NULL, '*', '2020-01-07 16:25:39', '2020-01-07 16:29:36'),
(9, 8, 9, 'Jenis Pemeriksaan', 'fa-th-list', '/jenis-pemeriksaans', '*', '2020-01-07 16:27:23', '2020-01-09 22:21:18'),
(10, 8, 10, 'Modalitas', 'fa-briefcase', '/modalitas', '*', '2020-01-07 16:28:15', '2020-01-07 16:29:36'),
(11, 8, 11, 'risiko', 'fa-line-chart', '/risikos', '*', '2020-01-07 16:29:11', '2020-01-09 22:21:51'),
(12, 8, 0, 'Alat Perlindungan Diri', 'fa-shield', 'apds', '*', '2020-01-12 15:51:23', '2020-01-12 16:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:22:21', '2020-01-07 16:22:21'),
(2, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 16:25:02', '2020-01-07 16:25:02'),
(3, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Master Data\",\"icon\":\"fa-database\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1VN12B7nM3KbEUWiR1qxiNI4SPyB17TNSNEmlyQ4\"}', '2020-01-07 16:25:39', '2020-01-07 16:25:39'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:25:39', '2020-01-07 16:25:39'),
(5, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:25:41', '2020-01-07 16:25:41'),
(6, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 16:25:45', '2020-01-07 16:25:45'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 16:25:55', '2020-01-07 16:25:55'),
(8, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Jenis Pemeriksaan\",\"icon\":\"fa-th-list\",\"uri\":\"\\/jenis_pemeriksaan\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1VN12B7nM3KbEUWiR1qxiNI4SPyB17TNSNEmlyQ4\"}', '2020-01-07 16:27:23', '2020-01-07 16:27:23'),
(9, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:27:24', '2020-01-07 16:27:24'),
(10, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Modalitas\",\"icon\":\"fa-briefcase\",\"uri\":\"\\/modalitas\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1VN12B7nM3KbEUWiR1qxiNI4SPyB17TNSNEmlyQ4\"}', '2020-01-07 16:28:15', '2020-01-07 16:28:15'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:28:15', '2020-01-07 16:28:15'),
(12, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"risiko\",\"icon\":\"fa-line-chart\",\"uri\":\"\\/risiko\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"1VN12B7nM3KbEUWiR1qxiNI4SPyB17TNSNEmlyQ4\"}', '2020-01-07 16:29:11', '2020-01-07 16:29:11'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:29:11', '2020-01-07 16:29:11'),
(14, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"1VN12B7nM3KbEUWiR1qxiNI4SPyB17TNSNEmlyQ4\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2020-01-07 16:29:36', '2020-01-07 16:29:36'),
(15, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 16:29:36', '2020-01-07 16:29:36'),
(16, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:29:38', '2020-01-07 16:29:38'),
(17, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:29:46', '2020-01-07 16:29:46'),
(18, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:41:01', '2020-01-07 16:41:01'),
(19, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 16:46:51', '2020-01-07 16:46:51'),
(20, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 16:46:54', '2020-01-07 16:46:54'),
(21, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:48:06', '2020-01-07 16:48:06'),
(22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:50:24', '2020-01-07 16:50:24'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:51:53', '2020-01-07 16:51:53'),
(24, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:53:34', '2020-01-07 16:53:34'),
(25, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:53:55', '2020-01-07 16:53:55'),
(26, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-07 16:55:53', '2020-01-07 16:55:53'),
(27, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 16:57:34', '2020-01-07 16:57:34'),
(28, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 16:58:39', '2020-01-07 16:58:39'),
(29, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 16:58:51', '2020-01-07 16:58:51'),
(30, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:05:38', '2020-01-07 17:05:38'),
(31, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:05:40', '2020-01-07 17:05:40'),
(32, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:08:17', '2020-01-07 17:08:17'),
(33, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:08:28', '2020-01-07 17:08:28'),
(34, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Jenis Pemeriksaan\",\"icon\":\"fa-th-list\",\"uri\":\"\\/jenis-pemeriksaan\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"u3xYzMvRQ5HYGll9XHaA1FdwDdaAi4eCvOZQkEQQ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/auth\\/menu\"}', '2020-01-07 17:08:33', '2020-01-07 17:08:33'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 17:08:34', '2020-01-07 17:08:34'),
(36, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:08:44', '2020-01-07 17:08:44'),
(37, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 17:08:45', '2020-01-07 17:08:45'),
(38, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 19:56:27', '2020-01-07 19:56:27'),
(39, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-07 19:56:48', '2020-01-07 19:56:48'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 19:56:51', '2020-01-07 19:56:51'),
(41, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-07 19:56:55', '2020-01-07 19:56:55'),
(42, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 19:56:59', '2020-01-07 19:56:59'),
(43, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:38:01', '2020-01-07 21:38:01'),
(44, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:43:37', '2020-01-07 21:43:37'),
(45, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:43:39', '2020-01-07 21:43:39'),
(46, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:44:27', '2020-01-07 21:44:27'),
(47, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"0,4 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:45:02', '2020-01-07 21:45:02'),
(48, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:45:02', '2020-01-07 21:45:02'),
(49, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:45:08', '2020-01-07 21:45:08'),
(50, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:45:45', '2020-01-07 21:45:45'),
(51, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:45:45', '2020-01-07 21:45:45'),
(52, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:45:49', '2020-01-07 21:45:49'),
(53, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:46:25', '2020-01-07 21:46:25'),
(54, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:46:25', '2020-01-07 21:46:25'),
(55, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:46:29', '2020-01-07 21:46:29'),
(56, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"0,8 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:47:24', '2020-01-07 21:47:24'),
(57, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:47:25', '2020-01-07 21:47:25'),
(58, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:47:46', '2020-01-07 21:47:46'),
(59, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:48:04', '2020-01-07 21:48:04'),
(60, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:48:04', '2020-01-07 21:48:04'),
(61, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:48:12', '2020-01-07 21:48:12'),
(62, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"20 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:48:49', '2020-01-07 21:48:49'),
(63, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:48:49', '2020-01-07 21:48:49'),
(64, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:49:32', '2020-01-07 21:49:32'),
(65, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Gonad sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:49:53', '2020-01-07 21:49:53'),
(66, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:49:53', '2020-01-07 21:49:53'),
(67, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:50:37', '2020-01-07 21:50:37'),
(68, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:51:05', '2020-01-07 21:51:05'),
(69, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:51:05', '2020-01-07 21:51:05'),
(70, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:51:25', '2020-01-07 21:51:25'),
(71, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:51:47', '2020-01-07 21:51:47'),
(72, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:51:47', '2020-01-07 21:51:47'),
(73, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:52:14', '2020-01-07 21:52:14'),
(74, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"10 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:52:38', '2020-01-07 21:52:38'),
(75, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:52:38', '2020-01-07 21:52:38'),
(76, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:52:56', '2020-01-07 21:52:56'),
(77, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:53:24', '2020-01-07 21:53:24'),
(78, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:53:24', '2020-01-07 21:53:24'),
(79, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:54:38', '2020-01-07 21:54:38'),
(80, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"7 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:54:58', '2020-01-07 21:54:58'),
(81, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:54:58', '2020-01-07 21:54:58'),
(82, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:55:03', '2020-01-07 21:55:03'),
(83, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"60 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:55:51', '2020-01-07 21:55:51'),
(84, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:55:51', '2020-01-07 21:55:51'),
(85, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:56:03', '2020-01-07 21:56:03'),
(86, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:56:21', '2020-01-07 21:56:21'),
(87, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:56:21', '2020-01-07 21:56:21'),
(88, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:56:46', '2020-01-07 21:56:46'),
(89, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"30 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"-\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:57:29', '2020-01-07 21:57:29'),
(90, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:57:29', '2020-01-07 21:57:29'),
(91, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:57:52', '2020-01-07 21:57:52'),
(92, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"30 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:58:16', '2020-01-07 21:58:16'),
(93, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:58:16', '2020-01-07 21:58:16'),
(94, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:59:13', '2020-01-07 21:59:13'),
(95, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"50 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 21:59:34', '2020-01-07 21:59:34'),
(96, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 21:59:34', '2020-01-07 21:59:34'),
(97, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:59:37', '2020-01-07 21:59:37'),
(98, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:59:43', '2020-01-07 21:59:43'),
(99, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 21:59:52', '2020-01-07 21:59:52'),
(100, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 22:00:13', '2020-01-07 22:00:13'),
(101, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 22:00:13', '2020-01-07 22:00:13'),
(102, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 22:00:31', '2020-01-07 22:00:31'),
(103, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"50 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 22:01:05', '2020-01-07 22:01:05'),
(104, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 22:01:05', '2020-01-07 22:01:05'),
(105, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 22:01:44', '2020-01-07 22:01:44'),
(106, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"25 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:06:03', '2020-01-07 23:06:03'),
(107, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:06:03', '2020-01-07 23:06:03'),
(108, 1, 'admin/risiko/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:06:19', '2020-01-07 23:06:19'),
(109, 1, 'admin/risiko', 'POST', '127.0.0.1', '{\"dosis\":\"35 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:06:37', '2020-01-07 23:06:37'),
(110, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:06:37', '2020-01-07 23:06:37'),
(111, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:08:58', '2020-01-07 23:08:58'),
(112, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:09:02', '2020-01-07 23:09:02'),
(113, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:09:53', '2020-01-07 23:09:53'),
(114, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:10:22', '2020-01-07 23:10:22'),
(115, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:10:38', '2020-01-07 23:10:38'),
(116, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-07 23:11:50', '2020-01-07 23:11:50'),
(117, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-07 23:12:11', '2020-01-07 23:12:11'),
(118, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-07 23:13:11', '2020-01-07 23:13:11'),
(119, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-07 23:13:14', '2020-01-07 23:13:14'),
(120, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"10\",\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:13:18', '2020-01-07 23:13:18'),
(121, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-01-07 23:13:19', '2020-01-07 23:13:19'),
(122, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"10\"}', '2020-01-07 23:19:13', '2020-01-07 23:19:13'),
(123, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:19:38', '2020-01-07 23:19:38'),
(124, 1, 'admin/modalitas/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:21:06', '2020-01-07 23:21:06'),
(125, 1, 'admin/modalitas', 'POST', '127.0.0.1', '{\"modalitas\":\"Digital Radiology (DR)\",\"deskripsi\":\"Digital Radiologi adalah jenis alat yang digunakan untuk pemeriksaan radiografi umum seperti: kepala, leher, tulang belakang, thorax, ektemitas atas dan bawah, abdomen dan tulang ekor.\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/modalitas\"}', '2020-01-07 23:21:32', '2020-01-07 23:21:32'),
(126, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-07 23:21:32', '2020-01-07 23:21:32'),
(127, 1, 'admin/modalitas/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:22:48', '2020-01-07 23:22:48'),
(128, 1, 'admin/modalitas', 'POST', '127.0.0.1', '{\"modalitas\":\"Panoramik\",\"deskripsi\":\"Panoramik adalah jenis alat yang digunakan untuk pemeriksaan untuk melihat lebih jelas gambaran gigi dan jaringan lunak serta kelainan tulang di daerah mulut.\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/modalitas\"}', '2020-01-07 23:23:01', '2020-01-07 23:23:01'),
(129, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-07 23:23:01', '2020-01-07 23:23:01'),
(130, 1, 'admin/modalitas/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:23:03', '2020-01-07 23:23:03'),
(131, 1, 'admin/modalitas', 'POST', '127.0.0.1', '{\"modalitas\":\"CT-Scan\",\"deskripsi\":\"CT- Scan adalah pemeriksaan radiologi dengan teknologi canggih menggunakan sinar-X. CT scan telah menjadi uji pilihan dalam mendiagnosis beberapa kondisi mendesak dan muncul seperti pendarahan otak, emboli paru (penyumbatan dalam arteri paru-paru), diseksi aorta (robeknya dinding aorta), radang usus buntu, divertikulitis, dan batu ginjal.\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/modalitas\"}', '2020-01-07 23:23:25', '2020-01-07 23:23:25'),
(132, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-07 23:23:25', '2020-01-07 23:23:25'),
(133, 1, 'admin/modalitas/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:23:54', '2020-01-07 23:23:54'),
(134, 1, 'admin/modalitas/3', 'PUT', '127.0.0.1', '{\"modalitas\":\"Computerized Tomography Scanning (CT Scan)\",\"deskripsi\":\"Computerized Tomography Scanning (CT Scan) adalah pemeriksaan radiologi dengan teknologi canggih menggunakan sinar-X. CT scan telah menjadi uji pilihan dalam mendiagnosis beberapa kondisi mendesak dan muncul seperti pendarahan otak, emboli paru (penyumbatan dalam arteri paru-paru), diseksi aorta (robeknya dinding aorta), radang usus buntu, divertikulitis, dan batu ginjal.\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/modalitas\"}', '2020-01-07 23:24:04', '2020-01-07 23:24:04'),
(135, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-07 23:24:04', '2020-01-07 23:24:04'),
(136, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:26:25', '2020-01-07 23:26:25'),
(137, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-07 23:33:51', '2020-01-07 23:33:51'),
(138, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:33:53', '2020-01-07 23:33:53'),
(139, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:34:46', '2020-01-07 23:34:46'),
(140, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:35:07', '2020-01-07 23:35:07'),
(141, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:35:26', '2020-01-07 23:35:26'),
(142, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:35:47', '2020-01-07 23:35:47'),
(143, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:35:51', '2020-01-07 23:35:51'),
(144, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:38:40', '2020-01-07 23:38:40'),
(145, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:39:19', '2020-01-07 23:39:19'),
(146, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:39:25', '2020-01-07 23:39:25'),
(147, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:39:33', '2020-01-07 23:39:33'),
(148, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:40:17', '2020-01-07 23:40:17'),
(149, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:40:36', '2020-01-07 23:40:36'),
(150, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:40:57', '2020-01-07 23:40:57'),
(151, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:41:29', '2020-01-07 23:41:29'),
(152, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:41:46', '2020-01-07 23:41:46'),
(153, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:42:10', '2020-01-07 23:42:10'),
(154, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:42:51', '2020-01-07 23:42:51'),
(155, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:43:09', '2020-01-07 23:43:09'),
(156, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-07 23:43:22', '2020-01-07 23:43:22'),
(157, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:51:08', '2020-01-07 23:51:08'),
(158, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:51:09', '2020-01-07 23:51:09'),
(159, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-01-07 23:55:36', '2020-01-07 23:55:36'),
(160, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-01-07 23:55:39', '2020-01-07 23:55:39'),
(161, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-01-07 23:55:42', '2020-01-07 23:55:42'),
(162, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-01-07 23:55:45', '2020-01-07 23:55:45'),
(163, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2020-01-07 23:55:47', '2020-01-07 23:55:47'),
(164, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2020-01-07 23:55:50', '2020-01-07 23:55:50'),
(165, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:56:17', '2020-01-07 23:56:17'),
(166, 1, 'admin/modalitas/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:56:23', '2020-01-07 23:56:23'),
(167, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:56:26', '2020-01-07 23:56:26'),
(168, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:57:43', '2020-01-07 23:57:43'),
(169, 1, 'admin/risiko/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:57:47', '2020-01-07 23:57:47'),
(170, 1, 'admin/risiko/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:57:55', '2020-01-07 23:57:55'),
(171, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:57:55', '2020-01-07 23:57:55'),
(172, 1, 'admin/risiko/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:57:57', '2020-01-07 23:57:57'),
(173, 1, 'admin/risiko/2', 'PUT', '127.0.0.1', '{\"dosis\":\"1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:02', '2020-01-07 23:58:02'),
(174, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:02', '2020-01-07 23:58:02'),
(175, 1, 'admin/risiko/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:05', '2020-01-07 23:58:05'),
(176, 1, 'admin/risiko/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - v\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:13', '2020-01-07 23:58:13'),
(177, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:13', '2020-01-07 23:58:13'),
(178, 1, 'admin/risiko/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:18', '2020-01-07 23:58:18'),
(179, 1, 'admin/risiko/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:20', '2020-01-07 23:58:20'),
(180, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:20', '2020-01-07 23:58:20'),
(181, 1, 'admin/risiko/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:22', '2020-01-07 23:58:22'),
(182, 1, 'admin/risiko/4', 'PUT', '127.0.0.1', '{\"dosis\":\"0,8 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:26', '2020-01-07 23:58:26'),
(183, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:26', '2020-01-07 23:58:26'),
(184, 1, 'admin/risiko/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:31', '2020-01-07 23:58:31'),
(185, 1, 'admin/risiko/5', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:34', '2020-01-07 23:58:34'),
(186, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:34', '2020-01-07 23:58:34'),
(187, 1, 'admin/risiko/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:41', '2020-01-07 23:58:41'),
(188, 1, 'admin/risiko/6', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:43', '2020-01-07 23:58:43'),
(189, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:43', '2020-01-07 23:58:43'),
(190, 1, 'admin/risiko/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:48', '2020-01-07 23:58:48'),
(191, 1, 'admin/risiko/7', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Gonad sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:51', '2020-01-07 23:58:51'),
(192, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:51', '2020-01-07 23:58:51'),
(193, 1, 'admin/risiko/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:58:54', '2020-01-07 23:58:54'),
(194, 1, 'admin/risiko/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:58:57', '2020-01-07 23:58:57'),
(195, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:58:57', '2020-01-07 23:58:57'),
(196, 1, 'admin/risiko/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:02', '2020-01-07 23:59:02'),
(197, 1, 'admin/risiko/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:59:07', '2020-01-07 23:59:07'),
(198, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:59:07', '2020-01-07 23:59:07'),
(199, 1, 'admin/risiko/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:12', '2020-01-07 23:59:12'),
(200, 1, 'admin/risiko/9', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:59:15', '2020-01-07 23:59:15'),
(201, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:59:15', '2020-01-07 23:59:15'),
(202, 1, 'admin/risiko/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:18', '2020-01-07 23:59:18'),
(203, 1, 'admin/risiko/10', 'PUT', '127.0.0.1', '{\"dosis\":\"10 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko\"}', '2020-01-07 23:59:21', '2020-01-07 23:59:21'),
(204, 1, 'admin/risiko', 'GET', '127.0.0.1', '[]', '2020-01-07 23:59:21', '2020-01-07 23:59:21'),
(205, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:23', '2020-01-07 23:59:23'),
(206, 1, 'admin/risiko/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:31', '2020-01-07 23:59:31'),
(207, 1, 'admin/risiko/11', 'PUT', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-07 23:59:33', '2020-01-07 23:59:33'),
(208, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-07 23:59:33', '2020-01-07 23:59:33'),
(209, 1, 'admin/risiko/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:35', '2020-01-07 23:59:35'),
(210, 1, 'admin/risiko/12', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-07 23:59:37', '2020-01-07 23:59:37'),
(211, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-07 23:59:38', '2020-01-07 23:59:38'),
(212, 1, 'admin/risiko/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:41', '2020-01-07 23:59:41'),
(213, 1, 'admin/risiko/13', 'PUT', '127.0.0.1', '{\"dosis\":\"60 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-07 23:59:45', '2020-01-07 23:59:45'),
(214, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-07 23:59:45', '2020-01-07 23:59:45'),
(215, 1, 'admin/risiko/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-07 23:59:48', '2020-01-07 23:59:48'),
(216, 1, 'admin/risiko/14', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-07 23:59:54', '2020-01-07 23:59:54'),
(217, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-07 23:59:54', '2020-01-07 23:59:54'),
(218, 1, 'admin/risiko/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:03', '2020-01-08 00:00:03');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(219, 1, 'admin/risiko/16', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-08 00:00:08', '2020-01-08 00:00:08'),
(220, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-08 00:00:08', '2020-01-08 00:00:08'),
(221, 1, 'admin/risiko/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:13', '2020-01-08 00:00:13'),
(222, 1, 'admin/risiko/17', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-08 00:00:15', '2020-01-08 00:00:15'),
(223, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-08 00:00:16', '2020-01-08 00:00:16'),
(224, 1, 'admin/risiko/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:20', '2020-01-08 00:00:20'),
(225, 1, 'admin/risiko/19', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Baju Apron\\/baju anti radiasi\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-08 00:00:24', '2020-01-08 00:00:24'),
(226, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-08 00:00:25', '2020-01-08 00:00:25'),
(227, 1, 'admin/risiko/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:29', '2020-01-08 00:00:29'),
(228, 1, 'admin/risiko/18', 'PUT', '127.0.0.1', '{\"dosis\":\"40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-08 00:00:35', '2020-01-08 00:00:35'),
(229, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-08 00:00:35', '2020-01-08 00:00:35'),
(230, 1, 'admin/risiko/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:42', '2020-01-08 00:00:42'),
(231, 1, 'admin/risiko/20', 'PUT', '127.0.0.1', '{\"dosis\":\"25 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) -Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=2\"}', '2020-01-08 00:00:46', '2020-01-08 00:00:46'),
(232, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-08 00:00:46', '2020-01-08 00:00:46'),
(233, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:49', '2020-01-08 00:00:49'),
(234, 1, 'admin/risiko/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:00:51', '2020-01-08 00:00:51'),
(235, 1, 'admin/risiko/21', 'PUT', '127.0.0.1', '{\"dosis\":\"35 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun) - Tyroid sheilding\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"Eeitw0PChgOndozlxcoFtgd4IDskvhpxIhLOIHvh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8001\\/admin\\/risiko?page=3\"}', '2020-01-08 00:00:55', '2020-01-08 00:00:55'),
(236, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"page\":\"3\"}', '2020-01-08 00:00:55', '2020-01-08 00:00:55'),
(237, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-08 00:01:05', '2020-01-08 00:01:05'),
(238, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-09 06:55:44', '2020-01-09 06:55:44'),
(239, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 06:55:47', '2020-01-09 06:55:47'),
(240, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 06:55:50', '2020-01-09 06:55:50'),
(241, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 06:58:34', '2020-01-09 06:58:34'),
(242, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 15:58:13', '2020-01-09 15:58:13'),
(243, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 15:58:15', '2020-01-09 15:58:15'),
(244, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas. &nbsp;&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 15:58:42', '2020-01-09 15:58:42'),
(245, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 15:58:42', '2020-01-09 15:58:42'),
(246, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 15:59:19', '2020-01-09 15:59:19'),
(247, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Lateral kiri untuk memperlihatkan kelainan organ jantung dan paru-paru kiri. Lateral kanan untuk memperlihatkan paru-paru kanan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"2\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:00:27', '2020-01-09 16:00:27'),
(248, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:00:27', '2020-01-09 16:00:27'),
(249, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:02:46', '2020-01-09 16:02:46'),
(250, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax PA & Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"3\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:03:43', '2020-01-09 16:03:43'),
(251, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:03:43', '2020-01-09 16:03:43'),
(252, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:03:52', '2020-01-09 16:03:52'),
(253, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Shoulder AP\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan organ sendi bahu\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:04:47', '2020-01-09 16:04:47'),
(254, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:04:47', '2020-01-09 16:04:47'),
(255, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:04:56', '2020-01-09 16:04:56'),
(256, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Humerus AP\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang humerus\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:05:43', '2020-01-09 16:05:43'),
(257, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:05:43', '2020-01-09 16:05:43'),
(258, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:05:48', '2020-01-09 16:05:48'),
(259, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Humerus Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang humerus\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:06:38', '2020-01-09 16:06:38'),
(260, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:06:38', '2020-01-09 16:06:38'),
(261, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:06:41', '2020-01-09 16:06:41'),
(262, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cubiti AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang pada sendi siku\",\"modalitas\":\"1\",\"deskripsi\":null,\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:08:01', '2020-01-09 16:08:01'),
(263, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 16:08:01', '2020-01-09 16:08:01'),
(264, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:08:05', '2020-01-09 16:08:05'),
(265, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:08:07', '2020-01-09 16:08:07'),
(266, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:08:16', '2020-01-09 16:08:16'),
(267, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 16:08:21', '2020-01-09 16:08:21'),
(268, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:08:29', '2020-01-09 16:08:29'),
(269, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:08:33', '2020-01-09 16:08:33'),
(270, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cubiti AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang pada sendi siku\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:09:20', '2020-01-09 16:09:20'),
(271, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:09:20', '2020-01-09 16:09:20'),
(272, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:09:24', '2020-01-09 16:09:24'),
(273, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Wrist AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang pada pergelangan tangan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:10:17', '2020-01-09 16:10:17'),
(274, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:10:17', '2020-01-09 16:10:17'),
(275, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:10:28', '2020-01-09 16:10:28'),
(276, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Anthebrachii AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan tulang radius dan ulna  pada lengan bawah\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:11:08', '2020-01-09 16:11:08'),
(277, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:11:09', '2020-01-09 16:11:09'),
(278, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:11:21', '2020-01-09 16:11:21'),
(279, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Manus AP dan Oblique\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang telapak tangan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:12:14', '2020-01-09 16:12:14'),
(280, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:12:14', '2020-01-09 16:12:14'),
(281, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:12:28', '2020-01-09 16:12:28'),
(282, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Femur AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang paha\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:13:01', '2020-01-09 16:13:01'),
(283, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:13:01', '2020-01-09 16:13:01'),
(284, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:13:04', '2020-01-09 16:13:04'),
(285, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cruris AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang kering\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:14:09', '2020-01-09 16:14:09'),
(286, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:14:09', '2020-01-09 16:14:09'),
(287, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:14:12', '2020-01-09 16:14:12'),
(288, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Genu AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang sendi lutut\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 16:17:25', '2020-01-09 16:17:25'),
(289, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 16:17:25', '2020-01-09 16:17:25'),
(290, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 16:17:42', '2020-01-09 16:17:42'),
(291, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Ankle AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang pergelangan kaki\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:33:13', '2020-01-09 17:33:13'),
(292, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:33:13', '2020-01-09 17:33:13'),
(293, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:33:25', '2020-01-09 17:33:25'),
(294, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Calcaneus AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang tumit kaki\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:35:34', '2020-01-09 17:35:34'),
(295, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:35:35', '2020-01-09 17:35:35'),
(296, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:35:59', '2020-01-09 17:35:59'),
(297, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cervical AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang leher\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"5\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:37:04', '2020-01-09 17:37:04'),
(298, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:37:04', '2020-01-09 17:37:04'),
(299, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:37:07', '2020-01-09 17:37:07'),
(300, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cervical Oblique Kanan dan Kiri\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang leher\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"6\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:39:13', '2020-01-09 17:39:13'),
(301, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:39:14', '2020-01-09 17:39:14'),
(302, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:39:48', '2020-01-09 17:39:48'),
(303, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thoracal AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang punggung\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"7\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:42:05', '2020-01-09 17:42:05'),
(304, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:42:05', '2020-01-09 17:42:05'),
(305, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:42:16', '2020-01-09 17:42:16'),
(306, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Lumbosacral AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggang\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"8\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:45:37', '2020-01-09 17:45:37'),
(307, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:45:37', '2020-01-09 17:45:37'),
(308, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:45:45', '2020-01-09 17:45:45'),
(309, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:46:04', '2020-01-09 17:46:04'),
(310, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Lumbosacral Oblique Kanan dan Kiri\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggang\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"9\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan?per_page=30\"}', '2020-01-09 17:47:00', '2020-01-09 17:47:00'),
(311, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 17:47:01', '2020-01-09 17:47:01'),
(312, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:47:46', '2020-01-09 17:47:46'),
(313, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Pelvis AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggul\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"6\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan?per_page=30\"}', '2020-01-09 17:48:37', '2020-01-09 17:48:37'),
(314, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 17:48:37', '2020-01-09 17:48:37'),
(315, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:49:58', '2020-01-09 17:49:58'),
(316, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"BOF\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada dalam organ abdomen\\/perut\",\"modalitas\":\"1\",\"deskripsi\":null,\"risiko\":\"10\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan?per_page=30\"}', '2020-01-09 17:51:36', '2020-01-09 17:51:36'),
(317, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 17:51:36', '2020-01-09 17:51:36'),
(318, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:51:42', '2020-01-09 17:51:42'),
(319, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:51:43', '2020-01-09 17:51:43'),
(320, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:51:55', '2020-01-09 17:51:55'),
(321, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 17:51:57', '2020-01-09 17:51:57'),
(322, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"BOF\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada dalam organ abdomen\\/perut\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"10\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\"}', '2020-01-09 17:52:55', '2020-01-09 17:52:55'),
(323, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:52:55', '2020-01-09 17:52:55'),
(324, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:53:00', '2020-01-09 17:53:00'),
(325, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Kepala AP dan Lateral\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada organ kepala dan tulang pipi\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"11\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:53:51', '2020-01-09 17:53:51'),
(326, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:53:51', '2020-01-09 17:53:51'),
(327, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:54:07', '2020-01-09 17:54:07'),
(328, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Panoramik\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui posisi gigi dan kelainan tulang di daerah mulut\",\"modalitas\":\"2\",\"deskripsi\":\"-\",\"risiko\":\"12\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:55:06', '2020-01-09 17:55:06'),
(329, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:55:06', '2020-01-09 17:55:06'),
(330, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:55:17', '2020-01-09 17:55:17'),
(331, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"BNO dan IVP\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.<\\/li>\\r\\n\\t<li>Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;<\\/li>\\r\\n\\t<li>Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan \\/ faeces.&nbsp;<\\/li>\\r\\n\\t<li>Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada organ ginjal, ureter dan kandung kemih\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"13\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:57:08', '2020-01-09 17:57:08'),
(332, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:57:09', '2020-01-09 17:57:09'),
(333, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:57:12', '2020-01-09 17:57:12'),
(334, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Oesopagografi\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan pada organ oesophagus dan pharing\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"14\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:58:30', '2020-01-09 17:58:30'),
(335, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:58:30', '2020-01-09 17:58:30'),
(336, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:58:33', '2020-01-09 17:58:33'),
(337, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Fistulografi\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui lokasi, luas dan panjang fistula di dalam tubuh\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"15\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 17:59:38', '2020-01-09 17:59:38'),
(338, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 17:59:38', '2020-01-09 17:59:38'),
(339, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 17:59:54', '2020-01-09 17:59:54'),
(340, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"HSG\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Penderita sejak hari pertama menstruasi yang terakhir sampai hari kesepuluh tidak diperkenankan melakukan persetubuhan (koitus) terlebih dahulu.&nbsp;<\\/li>\\r\\n\\t<li>Sebelum pemeriksaan yang dilakukan penderita untuk buang air kecil terlebih dahulu untuk menghindari agar penderita tidak buang air selama jalannya pemeriksaan sehingga pemeriksaan tidak terganggu dan berjalan lancar.<\\/li>\\r\\n\\t<li>Berikan penjelasan pada pasien maksud dan tujuan pemeriksaan yang akan dilakukan, serta jalannya pemeriksaan agar pasien merasa aman dan tenang sehingga dapat diajak kerjasama demi kelancaran pemeriksaan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui bentuk, ukuran dan struktur rongga rahim sehingga bisa mendeteksi beberapa kelainan sebagai penyebab infertilitas\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"16\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:00:33', '2020-01-09 18:00:33'),
(341, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:00:33', '2020-01-09 18:00:33'),
(342, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:00:36', '2020-01-09 18:00:36'),
(343, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"RPG\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.<\\/li>\\r\\n\\t<li>Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;<\\/li>\\r\\n\\t<li>Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan \\/ faeces.<\\/li>\\r\\n\\t<li>Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan fungsi sistem urinaria\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"17\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:01:25', '2020-01-09 18:01:25'),
(344, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:01:25', '2020-01-09 18:01:25'),
(345, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:01:29', '2020-01-09 18:01:29'),
(346, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Uretrografi\",\"persiapan_pasien\":\"<p>Tidak perlu persiapan khusus, sebelum pemeriksaan pasien diminta untuk kencing. Tujuannya supaya kontras tidak bercampur dengan urine yang menyebabkan kelaian pada kandung kemih tidak terlihat jelas.<\\/p>\",\"manfaat\":\"Mengetahui  fungsi dan kelainan pada uretra\",\"modalitas\":\"1\",\"deskripsi\":null,\"risiko\":\"18\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:02:06', '2020-01-09 18:02:06'),
(347, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '[]', '2020-01-09 18:02:06', '2020-01-09 18:02:06'),
(348, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Uretrografi\",\"persiapan_pasien\":\"<p>Tidak perlu persiapan khusus, sebelum pemeriksaan pasien diminta untuk kencing. Tujuannya supaya kontras tidak bercampur dengan urine yang menyebabkan kelaian pada kandung kemih tidak terlihat jelas.<\\/p>\",\"manfaat\":\"Mengetahui  fungsi dan kelainan pada uretra\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"18\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\"}', '2020-01-09 18:02:15', '2020-01-09 18:02:15'),
(349, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:02:15', '2020-01-09 18:02:15'),
(350, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:02:26', '2020-01-09 18:02:26'),
(351, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Kepala\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui  kelainan tumor, infeksi, perdarahan dan keretakan tulang kepala\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"19\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:03:14', '2020-01-09 18:03:14'),
(352, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:03:15', '2020-01-09 18:03:15'),
(353, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:03:31', '2020-01-09 18:03:31'),
(354, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Thorax\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan infeksi, emboli paru, tumor paru, penyebaran kanker dari organ lain ke daerah dada serta maslah pada jantung\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"9\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:04:42', '2020-01-09 18:04:42'),
(355, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:04:42', '2020-01-09 18:04:42'),
(356, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:04:45', '2020-01-09 18:04:45'),
(357, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Abdomen\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Tidak makan dan minum 3-6 jam sebelum pemeriksaan.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Sehari sebelum pemeriksaan tidak mengkonsumsi makanan padat.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan infeksi, kista, abses, tumor, perdarahan pada organ abdomen\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"20\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:05:30', '2020-01-09 18:05:30'),
(358, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:05:30', '2020-01-09 18:05:30');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(359, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:05:36', '2020-01-09 18:05:36'),
(360, 1, 'admin/jenis-pemeriksaan', 'POST', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Ct Scan Spine\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan struktur dan celah sendi serta saraf tulang belang\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"21\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaan\"}', '2020-01-09 18:06:48', '2020-01-09 18:06:48'),
(361, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '[]', '2020-01-09 18:06:48', '2020-01-09 18:06:48'),
(362, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:06:56', '2020-01-09 18:06:56'),
(363, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:07:00', '2020-01-09 18:07:00'),
(364, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:07:42', '2020-01-09 18:07:42'),
(365, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"30\"}', '2020-01-09 18:07:53', '2020-01-09 18:07:53'),
(366, 1, 'admin/risiko/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:08:24', '2020-01-09 18:08:24'),
(367, 1, 'admin/risiko/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:08:29', '2020-01-09 18:08:29'),
(368, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:08:29', '2020-01-09 18:08:29'),
(369, 1, 'admin/risiko/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:08:32', '2020-01-09 18:08:32'),
(370, 1, 'admin/risiko/2', 'PUT', '127.0.0.1', '{\"dosis\":\"1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:08:37', '2020-01-09 18:08:37'),
(371, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:08:37', '2020-01-09 18:08:37'),
(372, 1, 'admin/risiko/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:08:39', '2020-01-09 18:08:39'),
(373, 1, 'admin/risiko/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:08:42', '2020-01-09 18:08:42'),
(374, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:08:42', '2020-01-09 18:08:42'),
(375, 1, 'admin/risiko/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:08:46', '2020-01-09 18:08:46'),
(376, 1, 'admin/risiko/4', 'PUT', '127.0.0.1', '{\"dosis\":\"0,8 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:08:50', '2020-01-09 18:08:50'),
(377, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:08:50', '2020-01-09 18:08:50'),
(378, 1, 'admin/risiko/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:08:56', '2020-01-09 18:08:56'),
(379, 1, 'admin/risiko/5', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:09:00', '2020-01-09 18:09:00'),
(380, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:09:00', '2020-01-09 18:09:00'),
(381, 1, 'admin/risiko/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:05', '2020-01-09 18:09:05'),
(382, 1, 'admin/risiko/6', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:09:10', '2020-01-09 18:09:10'),
(383, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:09:11', '2020-01-09 18:09:11'),
(384, 1, 'admin/risiko/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:15', '2020-01-09 18:09:15'),
(385, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:18', '2020-01-09 18:09:18'),
(386, 1, 'admin/risiko/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:22', '2020-01-09 18:09:22'),
(387, 1, 'admin/risiko/7', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Gonad sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:09:27', '2020-01-09 18:09:27'),
(388, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:09:27', '2020-01-09 18:09:27'),
(389, 1, 'admin/risiko/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:30', '2020-01-09 18:09:30'),
(390, 1, 'admin/risiko/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:09:34', '2020-01-09 18:09:34'),
(391, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:09:34', '2020-01-09 18:09:34'),
(392, 1, 'admin/risiko/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:37', '2020-01-09 18:09:37'),
(393, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:41', '2020-01-09 18:09:41'),
(394, 1, 'admin/risiko/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:09:44', '2020-01-09 18:09:44'),
(395, 1, 'admin/risiko/9', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:09:48', '2020-01-09 18:09:48'),
(396, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:09:48', '2020-01-09 18:09:48'),
(397, 1, 'admin/risiko/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:06', '2020-01-09 18:10:06'),
(398, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:08', '2020-01-09 18:10:08'),
(399, 1, 'admin/risiko/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:11', '2020-01-09 18:10:11'),
(400, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:13', '2020-01-09 18:10:13'),
(401, 1, 'admin/risiko/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:17', '2020-01-09 18:10:17'),
(402, 1, 'admin/risiko/10', 'PUT', '127.0.0.1', '{\"dosis\":\"10 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:10:21', '2020-01-09 18:10:21'),
(403, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:10:21', '2020-01-09 18:10:21'),
(404, 1, 'admin/risiko/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:24', '2020-01-09 18:10:24'),
(405, 1, 'admin/risiko/11', 'PUT', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:10:31', '2020-01-09 18:10:31'),
(406, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:10:31', '2020-01-09 18:10:31'),
(407, 1, 'admin/risiko/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:34', '2020-01-09 18:10:34'),
(408, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:37', '2020-01-09 18:10:37'),
(409, 1, 'admin/risiko/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:41', '2020-01-09 18:10:41'),
(410, 1, 'admin/risiko/12', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:10:45', '2020-01-09 18:10:45'),
(411, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:10:45', '2020-01-09 18:10:45'),
(412, 1, 'admin/risiko/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:50', '2020-01-09 18:10:50'),
(413, 1, 'admin/risiko/13', 'PUT', '127.0.0.1', '{\"dosis\":\"60 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:10:54', '2020-01-09 18:10:54'),
(414, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:10:54', '2020-01-09 18:10:54'),
(415, 1, 'admin/risiko/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:10:59', '2020-01-09 18:10:59'),
(416, 1, 'admin/risiko/14', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:02', '2020-01-09 18:11:02'),
(417, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:02', '2020-01-09 18:11:02'),
(418, 1, 'admin/risiko/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:07', '2020-01-09 18:11:07'),
(419, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:09', '2020-01-09 18:11:09'),
(420, 1, 'admin/risiko/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:21', '2020-01-09 18:11:21'),
(421, 1, 'admin/risiko/16', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:25', '2020-01-09 18:11:25'),
(422, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:25', '2020-01-09 18:11:25'),
(423, 1, 'admin/risiko/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:30', '2020-01-09 18:11:30'),
(424, 1, 'admin/risiko/17', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:34', '2020-01-09 18:11:34'),
(425, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:34', '2020-01-09 18:11:34'),
(426, 1, 'admin/risiko/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:41', '2020-01-09 18:11:41'),
(427, 1, 'admin/risiko/18', 'PUT', '127.0.0.1', '{\"dosis\":\"40 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:43', '2020-01-09 18:11:43'),
(428, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:43', '2020-01-09 18:11:43'),
(429, 1, 'admin/risiko/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:48', '2020-01-09 18:11:48'),
(430, 1, 'admin/risiko/19', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:50', '2020-01-09 18:11:50'),
(431, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:51', '2020-01-09 18:11:51'),
(432, 1, 'admin/risiko/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:11:55', '2020-01-09 18:11:55'),
(433, 1, 'admin/risiko/20', 'PUT', '127.0.0.1', '{\"dosis\":\"25 mGy (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:11:59', '2020-01-09 18:11:59'),
(434, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:11:59', '2020-01-09 18:11:59'),
(435, 1, 'admin/risiko/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:12:02', '2020-01-09 18:12:02'),
(436, 1, 'admin/risiko/21', 'PUT', '127.0.0.1', '{\"dosis\":\"35 mGy  (Nilai Batas Dosis\\/NBD max untuk pasien 5 mSv per tahun)\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"L3VqmQCeuy3RGUuAP9YoWHEzf1aTWFWAUqi0KVnm\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risiko?&per_page=30\"}', '2020-01-09 18:12:04', '2020-01-09 18:12:04'),
(437, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:12:04', '2020-01-09 18:12:04'),
(438, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 18:12:16', '2020-01-09 18:12:16'),
(439, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 18:16:22', '2020-01-09 18:16:22'),
(440, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 20:37:05', '2020-01-09 20:37:05'),
(441, 1, 'admin/risiko', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-09 20:37:32', '2020-01-09 20:37:32'),
(442, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 20:57:43', '2020-01-09 20:57:43'),
(443, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 20:57:44', '2020-01-09 20:57:44'),
(444, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 20:57:45', '2020-01-09 20:57:45'),
(445, 1, 'admin/jenis-pemeriksaan/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 20:57:48', '2020-01-09 20:57:48'),
(446, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 20:57:51', '2020-01-09 20:57:51'),
(447, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-09 21:38:22', '2020-01-09 21:38:22'),
(448, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-09 22:01:05', '2020-01-09 22:01:05'),
(449, 1, 'admin/jenis-pemeriksaan', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:01:07', '2020-01-09 22:01:07'),
(450, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-09 22:20:56', '2020-01-09 22:20:56'),
(451, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:09', '2020-01-09 22:21:09'),
(452, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:14', '2020-01-09 22:21:14'),
(453, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Jenis Pemeriksaan\",\"icon\":\"fa-th-list\",\"uri\":\"\\/jenis-pemeriksaans\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"vm4V9km1C00VAjql39uv0JZg6V3t1oMKBEY8BJke\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-01-09 22:21:18', '2020-01-09 22:21:18'),
(454, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-09 22:21:19', '2020-01-09 22:21:19'),
(455, 1, 'admin/auth/menu/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:21', '2020-01-09 22:21:21'),
(456, 1, 'admin/auth/menu/10', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Modalitas\",\"icon\":\"fa-briefcase\",\"uri\":\"\\/modalitas\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"vm4V9km1C00VAjql39uv0JZg6V3t1oMKBEY8BJke\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-01-09 22:21:26', '2020-01-09 22:21:26'),
(457, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-09 22:21:26', '2020-01-09 22:21:26'),
(458, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:29', '2020-01-09 22:21:29'),
(459, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-09 22:21:35', '2020-01-09 22:21:35'),
(460, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:38', '2020-01-09 22:21:38'),
(461, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:40', '2020-01-09 22:21:40'),
(462, 1, 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:46', '2020-01-09 22:21:46'),
(463, 1, 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"risiko\",\"icon\":\"fa-line-chart\",\"uri\":\"\\/risikos\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"vm4V9km1C00VAjql39uv0JZg6V3t1oMKBEY8BJke\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-01-09 22:21:51', '2020-01-09 22:21:51'),
(464, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-09 22:21:51', '2020-01-09 22:21:51'),
(465, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"vm4V9km1C00VAjql39uv0JZg6V3t1oMKBEY8BJke\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11}]}]\"}', '2020-01-09 22:21:53', '2020-01-09 22:21:53'),
(466, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:54', '2020-01-09 22:21:54'),
(467, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-09 22:21:55', '2020-01-09 22:21:55'),
(468, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:21:58', '2020-01-09 22:21:58'),
(469, 1, 'admin/jenis-pemeriksaans/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-09 22:22:03', '2020-01-09 22:22:03'),
(470, 1, 'admin/jenis-pemeriksaans/create', 'GET', '127.0.0.1', '[]', '2020-01-09 22:22:36', '2020-01-09 22:22:36'),
(471, 1, 'admin/jenis-pemeriksaans/create', 'GET', '127.0.0.1', '[]', '2020-01-09 22:24:09', '2020-01-09 22:24:09'),
(472, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-12 04:34:15', '2020-01-12 04:34:15'),
(473, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:34:17', '2020-01-12 04:34:17'),
(474, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-01-12 04:34:18', '2020-01-12 04:34:18'),
(475, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:34:18', '2020-01-12 04:34:18'),
(476, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:34:22', '2020-01-12 04:34:22'),
(477, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:34:22', '2020-01-12 04:34:22'),
(478, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:36:59', '2020-01-12 04:36:59'),
(479, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:37:16', '2020-01-12 04:37:16'),
(480, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:37:16', '2020-01-12 04:37:16'),
(481, 1, 'admin/risikos/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:20', '2020-01-12 04:38:20'),
(482, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:22', '2020-01-12 04:38:22'),
(483, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:24', '2020-01-12 04:38:24'),
(484, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:38:24', '2020-01-12 04:38:24'),
(485, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:26', '2020-01-12 04:38:26'),
(486, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:38:27', '2020-01-12 04:38:27'),
(487, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:38:34', '2020-01-12 04:38:34'),
(488, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:37', '2020-01-12 04:38:37'),
(489, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:38:37', '2020-01-12 04:38:37'),
(490, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 04:38:42', '2020-01-12 04:38:42'),
(491, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:38:49', '2020-01-12 04:38:49'),
(492, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:39:05', '2020-01-12 04:39:05'),
(493, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:39:32', '2020-01-12 04:39:32'),
(494, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:39:40', '2020-01-12 04:39:40'),
(495, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:40:18', '2020-01-12 04:40:18'),
(496, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:40:22', '2020-01-12 04:40:22'),
(497, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:50:00', '2020-01-12 04:50:00'),
(498, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:50:52', '2020-01-12 04:50:52'),
(499, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:51:09', '2020-01-12 04:51:09'),
(500, 1, 'admin/jenis-pemeriksaans/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:57:27', '2020-01-12 04:57:27'),
(501, 1, 'admin/jenis-pemeriksaans/1', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas. &nbsp;&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 04:58:14', '2020-01-12 04:58:14'),
(502, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:58:14', '2020-01-12 04:58:14'),
(503, 1, 'admin/jenis-pemeriksaans/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:58:38', '2020-01-12 04:58:38'),
(504, 1, 'admin/jenis-pemeriksaans/1', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 04:59:07', '2020-01-12 04:59:07'),
(505, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 04:59:07', '2020-01-12 04:59:07'),
(506, 1, 'admin/jenis-pemeriksaans/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 04:59:37', '2020-01-12 04:59:37'),
(507, 1, 'admin/jenis-pemeriksaans/1', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<ol>\\r\\n\\t<li>Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/li>\\r\\n\\t<li>Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/li>\\r\\n\\t<li>Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/li>\\r\\n\\t<li>Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/li>\\r\\n<\\/ol>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:01:18', '2020-01-12 05:01:18'),
(508, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:01:18', '2020-01-12 05:01:18'),
(509, 1, 'admin/jenis-pemeriksaans/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:03:23', '2020-01-12 05:03:23'),
(510, 1, 'admin/jenis-pemeriksaans/1', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:06:09', '2020-01-12 05:06:09'),
(511, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:06:09', '2020-01-12 05:06:09'),
(512, 1, 'admin/jenis-pemeriksaans/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:06:35', '2020-01-12 05:06:35'),
(513, 1, 'admin/jenis-pemeriksaans/2', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Lateral kiri untuk memperlihatkan kelainan organ jantung dan paru-paru kiri. Lateral kanan untuk memperlihatkan paru-paru kanan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"2\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:07:03', '2020-01-12 05:07:03'),
(514, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:07:03', '2020-01-12 05:07:03'),
(515, 1, 'admin/jenis-pemeriksaans/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:07:07', '2020-01-12 05:07:07'),
(516, 1, 'admin/jenis-pemeriksaans/3', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax PA & Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"3\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:07:22', '2020-01-12 05:07:22'),
(517, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:07:22', '2020-01-12 05:07:22'),
(518, 1, 'admin/jenis-pemeriksaans/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:07:28', '2020-01-12 05:07:28'),
(519, 1, 'admin/jenis-pemeriksaans/4', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Shoulder AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ sendi bahu\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:07:39', '2020-01-12 05:07:39'),
(520, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:07:39', '2020-01-12 05:07:39'),
(521, 1, 'admin/jenis-pemeriksaans/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:07:44', '2020-01-12 05:07:44'),
(522, 1, 'admin/jenis-pemeriksaans/5', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Humerus AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan tulang humerus\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:08:02', '2020-01-12 05:08:02'),
(523, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:08:02', '2020-01-12 05:08:02'),
(524, 1, 'admin/jenis-pemeriksaans/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:08:06', '2020-01-12 05:08:06'),
(525, 1, 'admin/jenis-pemeriksaans/6', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Humerus Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan tulang humerus\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:08:20', '2020-01-12 05:08:20'),
(526, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:08:20', '2020-01-12 05:08:20'),
(527, 1, 'admin/jenis-pemeriksaans/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:14:39', '2020-01-12 05:14:39'),
(528, 1, 'admin/jenis-pemeriksaans/7', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cubiti AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan tulang pada sendi siku\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:14:53', '2020-01-12 05:14:53'),
(529, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:14:53', '2020-01-12 05:14:53'),
(530, 1, 'admin/jenis-pemeriksaans/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:14:58', '2020-01-12 05:14:58'),
(531, 1, 'admin/jenis-pemeriksaans/8', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Wrist AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan tulang pada pergelangan tangan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:15:14', '2020-01-12 05:15:14'),
(532, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:15:15', '2020-01-12 05:15:15'),
(533, 1, 'admin/jenis-pemeriksaans/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:15:20', '2020-01-12 05:15:20'),
(534, 1, 'admin/jenis-pemeriksaans/9', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Anthebrachii AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan tulang radius dan ulna  pada lengan bawah\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:15:32', '2020-01-12 05:15:32'),
(535, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:15:33', '2020-01-12 05:15:33'),
(536, 1, 'admin/jenis-pemeriksaans/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:15:38', '2020-01-12 05:15:38'),
(537, 1, 'admin/jenis-pemeriksaans/10', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Manus AP dan Oblique\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang telapak tangan\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:15:49', '2020-01-12 05:15:49'),
(538, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:15:49', '2020-01-12 05:15:49'),
(539, 1, 'admin/jenis-pemeriksaans/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:15:54', '2020-01-12 05:15:54'),
(540, 1, 'admin/jenis-pemeriksaans/1', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thorax AP\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan organ jantung dan paru-paru\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"1\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:16:08', '2020-01-12 05:16:08'),
(541, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:16:08', '2020-01-12 05:16:08'),
(542, 1, 'admin/jenis-pemeriksaans/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:16:13', '2020-01-12 05:16:13'),
(543, 1, 'admin/jenis-pemeriksaans/11', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Femur AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang paha\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:16:22', '2020-01-12 05:16:22'),
(544, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:16:22', '2020-01-12 05:16:22'),
(545, 1, 'admin/jenis-pemeriksaans/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:16:45', '2020-01-12 05:16:45');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(546, 1, 'admin/jenis-pemeriksaans/12', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cruris AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang kering\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:16:53', '2020-01-12 05:16:53'),
(547, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:16:53', '2020-01-12 05:16:53'),
(548, 1, 'admin/jenis-pemeriksaans/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:17:00', '2020-01-12 05:17:00'),
(549, 1, 'admin/jenis-pemeriksaans/13', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Genu AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang sendi lutut\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:17:08', '2020-01-12 05:17:08'),
(550, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:17:08', '2020-01-12 05:17:08'),
(551, 1, 'admin/jenis-pemeriksaans/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:17:13', '2020-01-12 05:17:13'),
(552, 1, 'admin/jenis-pemeriksaans/14', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Ankle AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang pergelangan kaki\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:17:21', '2020-01-12 05:17:21'),
(553, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:17:21', '2020-01-12 05:17:21'),
(554, 1, 'admin/jenis-pemeriksaans/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:17:27', '2020-01-12 05:17:27'),
(555, 1, 'admin/jenis-pemeriksaans/15', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Calcaneus AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang tumit kaki\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"4\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:17:36', '2020-01-12 05:17:36'),
(556, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:17:36', '2020-01-12 05:17:36'),
(557, 1, 'admin/jenis-pemeriksaans/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:17:42', '2020-01-12 05:17:42'),
(558, 1, 'admin/jenis-pemeriksaans/16', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cervical AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang leher\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"5\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:17:48', '2020-01-12 05:17:48'),
(559, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:17:48', '2020-01-12 05:17:48'),
(560, 1, 'admin/jenis-pemeriksaans/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:17:54', '2020-01-12 05:17:54'),
(561, 1, 'admin/jenis-pemeriksaans/17', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Cervical Oblique Kanan dan Kiri\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang leher\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"6\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:18:02', '2020-01-12 05:18:02'),
(562, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:18:02', '2020-01-12 05:18:02'),
(563, 1, 'admin/jenis-pemeriksaans/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:18:08', '2020-01-12 05:18:08'),
(564, 1, 'admin/jenis-pemeriksaans/18', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Thoracal AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang punggung\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"7\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:18:11', '2020-01-12 05:18:11'),
(565, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:18:11', '2020-01-12 05:18:11'),
(566, 1, 'admin/jenis-pemeriksaans/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:18:19', '2020-01-12 05:18:19'),
(567, 1, 'admin/jenis-pemeriksaans/19', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Lumbosacral AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggang\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"8\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:18:26', '2020-01-12 05:18:26'),
(568, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:18:27', '2020-01-12 05:18:27'),
(569, 1, 'admin/jenis-pemeriksaans/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:18:32', '2020-01-12 05:18:32'),
(570, 1, 'admin/jenis-pemeriksaans/20', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Lumbosacral Oblique Kanan dan Kiri\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggang\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"9\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans\"}', '2020-01-12 05:18:36', '2020-01-12 05:18:36'),
(571, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '[]', '2020-01-12 05:18:36', '2020-01-12 05:18:36'),
(572, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:18:40', '2020-01-12 05:18:40'),
(573, 1, 'admin/jenis-pemeriksaans/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:18:46', '2020-01-12 05:18:46'),
(574, 1, 'admin/jenis-pemeriksaans/21', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Pelvis AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada tulang pinggul\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"6\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:18:54', '2020-01-12 05:18:54'),
(575, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:18:54', '2020-01-12 05:18:54'),
(576, 1, 'admin/jenis-pemeriksaans/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:19:01', '2020-01-12 05:19:01'),
(577, 1, 'admin/jenis-pemeriksaans/22', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"BOF\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada dalam organ abdomen\\/perut\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"10\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:19:05', '2020-01-12 05:19:05'),
(578, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:19:05', '2020-01-12 05:19:05'),
(579, 1, 'admin/jenis-pemeriksaans/23/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:19:11', '2020-01-12 05:19:11'),
(580, 1, 'admin/jenis-pemeriksaans/23', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Kepala AP dan Lateral\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada organ kepala dan tulang pipi\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"11\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:19:22', '2020-01-12 05:19:22'),
(581, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:19:22', '2020-01-12 05:19:22'),
(582, 1, 'admin/jenis-pemeriksaans/24/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:19:31', '2020-01-12 05:19:31'),
(583, 1, 'admin/jenis-pemeriksaans/24', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Panoramik\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui posisi gigi dan kelainan tulang di daerah mulut\",\"modalitas\":\"2\",\"deskripsi\":\"-\",\"risiko\":\"12\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:19:48', '2020-01-12 05:19:48'),
(584, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:19:48', '2020-01-12 05:19:48'),
(585, 1, 'admin/jenis-pemeriksaans/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:19:54', '2020-01-12 05:19:54'),
(586, 1, 'admin/jenis-pemeriksaans/25', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"BNO dan IVP\",\"persiapan_pasien\":\"<p>1. Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.<\\/p>\\r\\n\\r\\n<p>2. Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan \\/ faeces.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada organ ginjal, ureter dan kandung kemih\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"13\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:20:10', '2020-01-12 05:20:10'),
(587, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:20:11', '2020-01-12 05:20:11'),
(588, 1, 'admin/jenis-pemeriksaans/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:20:17', '2020-01-12 05:20:17'),
(589, 1, 'admin/jenis-pemeriksaans/26', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Oesopagografi\",\"persiapan_pasien\":\"<p>1. Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan pada organ oesophagus dan pharing\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"14\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:20:49', '2020-01-12 05:20:49'),
(590, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:20:49', '2020-01-12 05:20:49'),
(591, 1, 'admin/jenis-pemeriksaans/27/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:20:57', '2020-01-12 05:20:57'),
(592, 1, 'admin/jenis-pemeriksaans/27', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Fistulografi\",\"persiapan_pasien\":\"<p>1. Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui lokasi, luas dan panjang fistula di dalam tubuh\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"15\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:21:08', '2020-01-12 05:21:08'),
(593, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:21:08', '2020-01-12 05:21:08'),
(594, 1, 'admin/jenis-pemeriksaans/28/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:21:14', '2020-01-12 05:21:14'),
(595, 1, 'admin/jenis-pemeriksaans/28', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"HSG\",\"persiapan_pasien\":\"<p>1. Penderita sejak hari pertama menstruasi yang terakhir sampai hari kesepuluh tidak diperkenankan melakukan persetubuhan (koitus) terlebih dahulu.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Sebelum pemeriksaan yang dilakukan penderita untuk buang air kecil terlebih dahulu untuk menghindari agar penderita tidak buang air selama jalannya pemeriksaan sehingga pemeriksaan tidak terganggu dan berjalan lancar.<\\/p>\\r\\n\\r\\n<p>3. Berikan penjelasan pada pasien maksud dan tujuan pemeriksaan yang akan dilakukan, serta jalannya pemeriksaan agar pasien merasa aman dan tenang sehingga dapat diajak kerjasama demi kelancaran pemeriksaan.<\\/p>\",\"manfaat\":\"Mengetahui bentuk, ukuran dan struktur rongga rahim sehingga bisa mendeteksi beberapa kelainan sebagai penyebab infertilitas\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"16\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:21:25', '2020-01-12 05:21:25'),
(596, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:21:25', '2020-01-12 05:21:25'),
(597, 1, 'admin/jenis-pemeriksaans/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:21:32', '2020-01-12 05:21:32'),
(598, 1, 'admin/jenis-pemeriksaans/29', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"RPG\",\"persiapan_pasien\":\"<p>1. Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.<\\/p>\\r\\n\\r\\n<p>2. Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan \\/ faeces.<\\/p>\\r\\n\\r\\n<p>4. Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)<\\/p>\",\"manfaat\":\"Mengetahui kelainan fungsi sistem urinaria\",\"modalitas\":\"1\",\"deskripsi\":\"-\",\"risiko\":\"17\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=30\"}', '2020-01-12 05:21:55', '2020-01-12 05:21:55'),
(599, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"30\"}', '2020-01-12 05:21:56', '2020-01-12 05:21:56'),
(600, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:22:17', '2020-01-12 05:22:17'),
(601, 1, 'admin/jenis-pemeriksaans/31/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:22:24', '2020-01-12 05:22:24'),
(602, 1, 'admin/jenis-pemeriksaans/31', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Kepala\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.<\\/p>\\r\\n\\r\\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui  kelainan tumor, infeksi, perdarahan dan keretakan tulang kepala\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"19\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=50\"}', '2020-01-12 05:22:35', '2020-01-12 05:22:35'),
(603, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:22:35', '2020-01-12 05:22:35'),
(604, 1, 'admin/jenis-pemeriksaans/32/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:22:41', '2020-01-12 05:22:41'),
(605, 1, 'admin/jenis-pemeriksaans/32', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Thorax\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan infeksi, emboli paru, tumor paru, penyebaran kanker dari organ lain ke daerah dada serta maslah pada jantung\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"9\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=50\"}', '2020-01-12 05:22:46', '2020-01-12 05:22:46'),
(606, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:22:46', '2020-01-12 05:22:46'),
(607, 1, 'admin/jenis-pemeriksaans/33/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:22:53', '2020-01-12 05:22:53'),
(608, 1, 'admin/jenis-pemeriksaans/33', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"CT Scan Abdomen\",\"persiapan_pasien\":\"<p>1. Tidak makan dan minum 3-6 jam sebelum pemeriksaan.&nbsp;<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Sehari sebelum pemeriksaan tidak mengkonsumsi makanan padat.<\\/p>\",\"manfaat\":\"Mengetahui kelainan infeksi, kista, abses, tumor, perdarahan pada organ abdomen\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"20\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=50\"}', '2020-01-12 05:23:07', '2020-01-12 05:23:07'),
(609, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:23:07', '2020-01-12 05:23:07'),
(610, 1, 'admin/jenis-pemeriksaans/34/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:23:12', '2020-01-12 05:23:12'),
(611, 1, 'admin/jenis-pemeriksaans/34', 'PUT', '127.0.0.1', '{\"jenis_pemeriksaan\":\"Ct Scan Spine\",\"persiapan_pasien\":\"<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.<\\/p>\\r\\n\\r\\n<p>2. Mohon melepaskan perhiasan\\/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;<\\/p>\\r\\n\\r\\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.<\\/p>\\r\\n\\r\\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.<\\/p>\",\"manfaat\":\"Mengetahui kelainan struktur dan celah sendi serta saraf tulang belang\",\"modalitas\":\"3\",\"deskripsi\":\"-\",\"risiko\":\"21\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/jenis-pemeriksaans?per_page=50\"}', '2020-01-12 05:23:19', '2020-01-12 05:23:19'),
(612, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:23:19', '2020-01-12 05:23:19'),
(613, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:12', '2020-01-12 05:24:12'),
(614, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"per_page\":\"50\"}', '2020-01-12 05:24:16', '2020-01-12 05:24:16'),
(615, 1, 'admin/risikos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:20', '2020-01-12 05:24:20'),
(616, 1, 'admin/risikos/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:24:26', '2020-01-12 05:24:26'),
(617, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:24:26', '2020-01-12 05:24:26'),
(618, 1, 'admin/risikos/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:29', '2020-01-12 05:24:29'),
(619, 1, 'admin/risikos/2', 'PUT', '127.0.0.1', '{\"dosis\":\"1,5  mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:24:33', '2020-01-12 05:24:33'),
(620, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:24:34', '2020-01-12 05:24:34'),
(621, 1, 'admin/risikos/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:36', '2020-01-12 05:24:36'),
(622, 1, 'admin/risikos/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:24:41', '2020-01-12 05:24:41'),
(623, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:24:41', '2020-01-12 05:24:41'),
(624, 1, 'admin/risikos/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:47', '2020-01-12 05:24:47'),
(625, 1, 'admin/risikos/4', 'PUT', '127.0.0.1', '{\"dosis\":\"0,8 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:24:53', '2020-01-12 05:24:53'),
(626, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:24:53', '2020-01-12 05:24:53'),
(627, 1, 'admin/risikos/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:24:58', '2020-01-12 05:24:58'),
(628, 1, 'admin/risikos/5', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:03', '2020-01-12 05:25:03'),
(629, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:03', '2020-01-12 05:25:03'),
(630, 1, 'admin/risikos/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:07', '2020-01-12 05:25:07'),
(631, 1, 'admin/risikos/6', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:11', '2020-01-12 05:25:11'),
(632, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:11', '2020-01-12 05:25:11'),
(633, 1, 'admin/risikos/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:15', '2020-01-12 05:25:15'),
(634, 1, 'admin/risikos/7', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Gonad sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:19', '2020-01-12 05:25:19'),
(635, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:20', '2020-01-12 05:25:20'),
(636, 1, 'admin/risikos/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:23', '2020-01-12 05:25:23'),
(637, 1, 'admin/risikos/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:35', '2020-01-12 05:25:35'),
(638, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:35', '2020-01-12 05:25:35'),
(639, 1, 'admin/risikos/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:39', '2020-01-12 05:25:39'),
(640, 1, 'admin/risikos/9', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:44', '2020-01-12 05:25:44'),
(641, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:44', '2020-01-12 05:25:44'),
(642, 1, 'admin/risikos/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:50', '2020-01-12 05:25:50'),
(643, 1, 'admin/risikos/10', 'PUT', '127.0.0.1', '{\"dosis\":\"10 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:25:55', '2020-01-12 05:25:55'),
(644, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:25:55', '2020-01-12 05:25:55'),
(645, 1, 'admin/risikos/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:25:59', '2020-01-12 05:25:59'),
(646, 1, 'admin/risikos/11', 'PUT', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:26:02', '2020-01-12 05:26:02'),
(647, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:26:03', '2020-01-12 05:26:03'),
(648, 1, 'admin/risikos/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:26:07', '2020-01-12 05:26:07'),
(649, 1, 'admin/risikos/12', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:26:11', '2020-01-12 05:26:11'),
(650, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:26:11', '2020-01-12 05:26:11'),
(651, 1, 'admin/risikos/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:26:16', '2020-01-12 05:26:16'),
(652, 1, 'admin/risikos/13', 'PUT', '127.0.0.1', '{\"dosis\":\"60 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:26:20', '2020-01-12 05:26:20'),
(653, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:26:20', '2020-01-12 05:26:20'),
(654, 1, 'admin/risikos/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:26:24', '2020-01-12 05:26:24'),
(655, 1, 'admin/risikos/14', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:26:29', '2020-01-12 05:26:29'),
(656, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:26:29', '2020-01-12 05:26:29'),
(657, 1, 'admin/risikos/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:26:35', '2020-01-12 05:26:35'),
(658, 1, 'admin/risikos/15', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"-\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:26:41', '2020-01-12 05:26:41'),
(659, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:26:41', '2020-01-12 05:26:41'),
(660, 1, 'admin/risikos/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:01', '2020-01-12 05:27:01'),
(661, 1, 'admin/risikos/16', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:05', '2020-01-12 05:27:05'),
(662, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:05', '2020-01-12 05:27:05'),
(663, 1, 'admin/risikos/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:13', '2020-01-12 05:27:13'),
(664, 1, 'admin/risikos/17', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:18', '2020-01-12 05:27:18'),
(665, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:18', '2020-01-12 05:27:18'),
(666, 1, 'admin/risikos/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:25', '2020-01-12 05:27:25'),
(667, 1, 'admin/risikos/18', 'PUT', '127.0.0.1', '{\"dosis\":\"40 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:29', '2020-01-12 05:27:29'),
(668, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:29', '2020-01-12 05:27:29'),
(669, 1, 'admin/risikos/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:33', '2020-01-12 05:27:33'),
(670, 1, 'admin/risikos/19', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:37', '2020-01-12 05:27:37'),
(671, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:37', '2020-01-12 05:27:37'),
(672, 1, 'admin/risikos/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:40', '2020-01-12 05:27:40'),
(673, 1, 'admin/risikos/20', 'PUT', '127.0.0.1', '{\"dosis\":\"25 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:44', '2020-01-12 05:27:44'),
(674, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:44', '2020-01-12 05:27:44'),
(675, 1, 'admin/risikos/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 05:27:47', '2020-01-12 05:27:47'),
(676, 1, 'admin/risikos/21', 'PUT', '127.0.0.1', '{\"dosis\":\"35 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?&per_page=50\"}', '2020-01-12 05:27:51', '2020-01-12 05:27:51'),
(677, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"per_page\":\"50\"}', '2020-01-12 05:27:52', '2020-01-12 05:27:52'),
(678, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 06:28:38', '2020-01-12 06:28:38'),
(679, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 06:28:49', '2020-01-12 06:28:49'),
(680, 1, 'admin/jenis-pemeriksaans', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-01-12 06:29:46', '2020-01-12 06:29:46'),
(681, 1, 'admin/modalitas', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 06:30:17', '2020-01-12 06:30:17'),
(682, 1, 'admin/modalitas/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 06:30:23', '2020-01-12 06:30:23'),
(683, 1, 'admin/modalitas/1', 'PUT', '127.0.0.1', '{\"modalitas\":\"Digital Radiology\",\"deskripsi\":\"Digital Radiologi adalah jenis alat yang digunakan untuk pemeriksaan radiografi umum seperti: kepala, leher, tulang belakang, thorax, ektemitas atas dan bawah, abdomen dan tulang ekor.\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/modalitas\"}', '2020-01-12 06:30:27', '2020-01-12 06:30:27'),
(684, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-12 06:30:27', '2020-01-12 06:30:27'),
(685, 1, 'admin/modalitas/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 06:30:30', '2020-01-12 06:30:30'),
(686, 1, 'admin/modalitas/3', 'PUT', '127.0.0.1', '{\"modalitas\":\"Computerized Tomography Scanning\",\"deskripsi\":\"Computerized Tomography Scanning (CT Scan) adalah pemeriksaan radiologi dengan teknologi canggih menggunakan sinar-X. CT scan telah menjadi uji pilihan dalam mendiagnosis beberapa kondisi mendesak dan muncul seperti pendarahan otak, emboli paru (penyumbatan dalam arteri paru-paru), diseksi aorta (robeknya dinding aorta), radang usus buntu, divertikulitis, dan batu ginjal.\",\"_token\":\"ihDOBGjz0uHKeDRNe4Y33a1C3W2ZLOpev0tFETMK\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/modalitas\"}', '2020-01-12 06:30:35', '2020-01-12 06:30:35'),
(687, 1, 'admin/modalitas', 'GET', '127.0.0.1', '[]', '2020-01-12 06:30:35', '2020-01-12 06:30:35'),
(688, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 15:50:52', '2020-01-12 15:50:52'),
(689, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Alat Perlindungan Diri\",\"icon\":\"fa-shield\",\"uri\":\"apd\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\"}', '2020-01-12 15:51:23', '2020-01-12 15:51:23'),
(690, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-12 15:51:24', '2020-01-12 15:51:24'),
(691, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-12 16:00:24', '2020-01-12 16:00:24'),
(692, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:00:30', '2020-01-12 16:00:30'),
(693, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Alat Perlindungan Diri\",\"icon\":\"fa-shield\",\"uri\":\"apd\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-01-12 16:00:37', '2020-01-12 16:00:37');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(694, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-12 16:00:37', '2020-01-12 16:00:37'),
(695, 1, 'admin/auth/menu/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:00:42', '2020-01-12 16:00:42'),
(696, 1, 'admin/auth/menu/12', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Alat Perlindungan Diri\",\"icon\":\"fa-shield\",\"uri\":\"apds\",\"roles\":[\"1\",null],\"permission\":\"*\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/auth\\/menu\"}', '2020-01-12 16:00:45', '2020-01-12 16:00:45'),
(697, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-12 16:00:45', '2020-01-12 16:00:45'),
(698, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2020-01-12 16:00:53', '2020-01-12 16:00:53'),
(699, 1, 'admin/apds', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:00:56', '2020-01-12 16:00:56'),
(700, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:00:58', '2020-01-12 16:00:58'),
(701, 1, 'admin/apds', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:05:56', '2020-01-12 16:05:56'),
(702, 1, 'admin/apds/create', 'GET', '127.0.0.1', '[]', '2020-01-12 16:06:54', '2020-01-12 16:06:54'),
(703, 1, 'admin/apds', 'POST', '127.0.0.1', '{\"apd\":\"Baju Apron\\/Baju Anti Radiasi\",\"deskripsi\":\"<p>Setiap pemeriksaan menggunaka APD yang berbeda sesuai dengan jenis pemeriksaan. Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).<\\/p>\\r\\n\\r\\n<p>Baju Apron\\/ baju anti radiasi merupakan salah satu alat bantu proteksi tubuh yang digunakan untuk pemeriksaan radiografi.<\\/p>\\r\\n\\r\\n<p>Secara fisik bila dipakai terasa berat memiliki ketebalan 0,5 mm Pb dan terbuat dari timah hitam.<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:07:46', '2020-01-12 16:07:46'),
(704, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:07:46', '2020-01-12 16:07:46'),
(705, 1, 'admin/apds/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:10:03', '2020-01-12 16:10:03'),
(706, 1, 'admin/apds/1', 'PUT', '127.0.0.1', '{\"apd\":\"Baju Apron\\/Baju Anti Radiasi\",\"deskripsi\":\"<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.<\\/p>\\r\\n\\r\\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).<\\/p>\\r\\n\\r\\n<p>Baju Apron\\/ baju anti radiasi merupakan salah satu alat bantu proteksi tubuh yang digunakan untuk pemeriksaan radiografi.<\\/p>\\r\\n\\r\\n<p>Secara fisik bila dipakai terasa berat memiliki ketebalan 0,5 mm Pb dan terbuat dari timah hitam.<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:11:18', '2020-01-12 16:11:18'),
(707, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:11:18', '2020-01-12 16:11:18'),
(708, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:11:23', '2020-01-12 16:11:23'),
(709, 1, 'admin/apds', 'POST', '127.0.0.1', '{\"apd\":\"Gonad Sheilding\",\"deskripsi\":\"<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.<\\/p>\\r\\n\\r\\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).<\\/p>\\r\\n\\r\\n<p>Penahan radiasi gonad yang digunakan untuk radiologi diagnostik rutin.<\\/p>\\r\\n\\r\\n<p>Proteksi ini harus dengan ukuran dan bentuk yang sesuai untuk mencegah gonad secara keseluruhan dari paparan berkas utama<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:12:29', '2020-01-12 16:12:29'),
(710, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:12:30', '2020-01-12 16:12:30'),
(711, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:12:32', '2020-01-12 16:12:32'),
(712, 1, 'admin/apds', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:12:48', '2020-01-12 16:12:48'),
(713, 1, 'admin/apds/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:12:52', '2020-01-12 16:12:52'),
(714, 1, 'admin/apds/2', 'PUT', '127.0.0.1', '{\"apd\":\"Gonad Sheilding\",\"deskripsi\":\"<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.<\\/p>\\r\\n\\r\\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).<\\/p>\\r\\n\\r\\n<p>Penahan radiasi gonad yang digunakan untuk radiologi diagnostik rutin.<\\/p>\\r\\n\\r\\n<p>Proteksi ini harus dengan ukuran dan bentuk yang sesuai untuk mencegah gonad secara keseluruhan dari paparan berkas utama<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:12:58', '2020-01-12 16:12:58'),
(715, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:12:59', '2020-01-12 16:12:59'),
(716, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:13:00', '2020-01-12 16:13:00'),
(717, 1, 'admin/apds', 'POST', '127.0.0.1', '{\"apd\":\"Tyroid Sheilding\",\"deskripsi\":\"<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.<\\/p>\\r\\n\\r\\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).<\\/p>\\r\\n\\r\\n<p>Tyroid Sheilding\\/Pelindung tiroid yang digunakan untuk melindungi kelenjar tyroid dari sinar X.<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:14:07', '2020-01-12 16:14:07'),
(718, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:14:07', '2020-01-12 16:14:07'),
(719, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:14:30', '2020-01-12 16:14:30'),
(720, 1, 'admin/apds', 'POST', '127.0.0.1', '{\"apd\":\"Sarung Tangan Proteksi\",\"deskripsi\":\"<p>Sarung tangan proteksi yang digunakan untuk fluoroskopi.<\\/p>\\r\\n\\r\\n<p>Proteksi ini harus dapat melindungi secara ke seluruhan, mencakup jari dan pergelangan tangan.<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:15:11', '2020-01-12 16:15:11'),
(721, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:15:11', '2020-01-12 16:15:11'),
(722, 1, 'admin/apds/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:15:13', '2020-01-12 16:15:13'),
(723, 1, 'admin/apds', 'POST', '127.0.0.1', '{\"apd\":\"Kacamata PB\",\"deskripsi\":\"<p>Kacamata yang digunakan untuk melindungi lensa mata dari sinar X.<\\/p>\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/apds\"}', '2020-01-12 16:15:29', '2020-01-12 16:15:29'),
(724, 1, 'admin/apds', 'GET', '127.0.0.1', '[]', '2020-01-12 16:15:29', '2020-01-12 16:15:29'),
(725, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:15:35', '2020-01-12 16:15:35'),
(726, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2020-01-12 16:16:18', '2020-01-12 16:16:18'),
(727, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-12 16:22:23', '2020-01-12 16:22:23'),
(728, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:22:25', '2020-01-12 16:22:25'),
(729, 1, 'admin/risikos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:22:32', '2020-01-12 16:22:32'),
(730, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:22:33', '2020-01-12 16:22:33'),
(731, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:22:51', '2020-01-12 16:22:51'),
(732, 1, 'admin/risikos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:22:54', '2020-01-12 16:22:54'),
(733, 1, 'admin/risikos/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:22:58', '2020-01-12 16:22:58'),
(734, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:22:58', '2020-01-12 16:22:58'),
(735, 1, 'admin/risikos/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:01', '2020-01-12 16:23:01'),
(736, 1, 'admin/risikos/2', 'PUT', '127.0.0.1', '{\"dosis\":\"1,5  mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:23:04', '2020-01-12 16:23:04'),
(737, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:23:04', '2020-01-12 16:23:04'),
(738, 1, 'admin/risikos/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:06', '2020-01-12 16:23:06'),
(739, 1, 'admin/risikos/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:23:16', '2020-01-12 16:23:16'),
(740, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:23:16', '2020-01-12 16:23:16'),
(741, 1, 'admin/risikos/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:19', '2020-01-12 16:23:19'),
(742, 1, 'admin/risikos/4', 'PUT', '127.0.0.1', '{\"dosis\":\"0,8 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:23:22', '2020-01-12 16:23:22'),
(743, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:23:22', '2020-01-12 16:23:22'),
(744, 1, 'admin/risikos/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:25', '2020-01-12 16:23:25'),
(745, 1, 'admin/risikos/5', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:23:29', '2020-01-12 16:23:29'),
(746, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:23:29', '2020-01-12 16:23:29'),
(747, 1, 'admin/risikos/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:32', '2020-01-12 16:23:32'),
(748, 1, 'admin/risikos/6', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:23:35', '2020-01-12 16:23:35'),
(749, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:23:35', '2020-01-12 16:23:35'),
(750, 1, 'admin/risikos/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:23:38', '2020-01-12 16:23:38'),
(751, 1, 'admin/risikos/7', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Gonad sheilding\",\"apd_id\":\"2\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:24:19', '2020-01-12 16:24:19'),
(752, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:24:19', '2020-01-12 16:24:19'),
(753, 1, 'admin/risikos/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:24:22', '2020-01-12 16:24:22'),
(754, 1, 'admin/risikos/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:24:26', '2020-01-12 16:24:26'),
(755, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:24:26', '2020-01-12 16:24:26'),
(756, 1, 'admin/risikos/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:24:53', '2020-01-12 16:24:53'),
(757, 1, 'admin/risikos/9', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:24:56', '2020-01-12 16:24:56'),
(758, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:24:56', '2020-01-12 16:24:56'),
(759, 1, 'admin/risikos/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:02', '2020-01-12 16:25:02'),
(760, 1, 'admin/risikos/10', 'PUT', '127.0.0.1', '{\"dosis\":\"10 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik). Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:06', '2020-01-12 16:25:06'),
(761, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:06', '2020-01-12 16:25:06'),
(762, 1, 'admin/risikos/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:15', '2020-01-12 16:25:15'),
(763, 1, 'admin/risikos/11', 'PUT', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:17', '2020-01-12 16:25:17'),
(764, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:17', '2020-01-12 16:25:17'),
(765, 1, 'admin/risikos/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:24', '2020-01-12 16:25:24'),
(766, 1, 'admin/risikos/12', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:27', '2020-01-12 16:25:27'),
(767, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:27', '2020-01-12 16:25:27'),
(768, 1, 'admin/risikos/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:31', '2020-01-12 16:25:31'),
(769, 1, 'admin/risikos/13', 'PUT', '127.0.0.1', '{\"dosis\":\"60 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:34', '2020-01-12 16:25:34'),
(770, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:34', '2020-01-12 16:25:34'),
(771, 1, 'admin/risikos/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:38', '2020-01-12 16:25:38'),
(772, 1, 'admin/risikos/14', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:42', '2020-01-12 16:25:42'),
(773, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:42', '2020-01-12 16:25:42'),
(774, 1, 'admin/risikos/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:47', '2020-01-12 16:25:47'),
(775, 1, 'admin/risikos/16', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:25:51', '2020-01-12 16:25:51'),
(776, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:25:51', '2020-01-12 16:25:51'),
(777, 1, 'admin/risikos/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:25:57', '2020-01-12 16:25:57'),
(778, 1, 'admin/risikos/17', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).   Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:26:01', '2020-01-12 16:26:01'),
(779, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:26:01', '2020-01-12 16:26:01'),
(780, 1, 'admin/risikos/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:26:29', '2020-01-12 16:26:29'),
(781, 1, 'admin/risikos/18', 'PUT', '127.0.0.1', '{\"dosis\":\"40 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:26:32', '2020-01-12 16:26:32'),
(782, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:26:32', '2020-01-12 16:26:32'),
(783, 1, 'admin/risikos/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:26:36', '2020-01-12 16:26:36'),
(784, 1, 'admin/risikos/19', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:26:40', '2020-01-12 16:26:40'),
(785, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:26:40', '2020-01-12 16:26:40'),
(786, 1, 'admin/risikos/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:26:47', '2020-01-12 16:26:47'),
(787, 1, 'admin/risikos/20', 'PUT', '127.0.0.1', '{\"dosis\":\"25 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 16:26:50', '2020-01-12 16:26:50'),
(788, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 16:26:51', '2020-01-12 16:26:51'),
(789, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:26:54', '2020-01-12 16:26:54'),
(790, 1, 'admin/risikos/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:26:57', '2020-01-12 16:26:57'),
(791, 1, 'admin/risikos/21', 'PUT', '127.0.0.1', '{\"dosis\":\"35 mGy\",\"risiko\":\"Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).  Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=2\"}', '2020-01-12 16:27:00', '2020-01-12 16:27:00'),
(792, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-12 16:27:00', '2020-01-12 16:27:00'),
(793, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 16:27:02', '2020-01-12 16:27:02'),
(794, 1, 'admin/risikos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:04:25', '2020-01-12 17:04:25'),
(795, 1, 'admin/risikos/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:04:32', '2020-01-12 17:04:32'),
(796, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:04:32', '2020-01-12 17:04:32'),
(797, 1, 'admin/risikos/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:04:35', '2020-01-12 17:04:35'),
(798, 1, 'admin/risikos/2', 'PUT', '127.0.0.1', '{\"dosis\":\"1,5  mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:04:39', '2020-01-12 17:04:39'),
(799, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:04:39', '2020-01-12 17:04:39'),
(800, 1, 'admin/risikos/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:04:42', '2020-01-12 17:04:42'),
(801, 1, 'admin/risikos/3', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy & 1,5  mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:04:47', '2020-01-12 17:04:47'),
(802, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:04:48', '2020-01-12 17:04:48'),
(803, 1, 'admin/risikos/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:04:53', '2020-01-12 17:04:53'),
(804, 1, 'admin/risikos/4', 'PUT', '127.0.0.1', '{\"dosis\":\"0,8 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:04:57', '2020-01-12 17:04:57'),
(805, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:04:58', '2020-01-12 17:04:58'),
(806, 1, 'admin/risikos/5/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:03', '2020-01-12 17:05:03'),
(807, 1, 'admin/risikos/5', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:07', '2020-01-12 17:05:07'),
(808, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:07', '2020-01-12 17:05:07'),
(809, 1, 'admin/risikos/6/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:11', '2020-01-12 17:05:11'),
(810, 1, 'admin/risikos/6', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:14', '2020-01-12 17:05:14'),
(811, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:14', '2020-01-12 17:05:14'),
(812, 1, 'admin/risikos/7/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:17', '2020-01-12 17:05:17'),
(813, 1, 'admin/risikos/7', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Gonad sheilding\",\"apd_id\":\"2\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:20', '2020-01-12 17:05:20'),
(814, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:21', '2020-01-12 17:05:21'),
(815, 1, 'admin/risikos/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:24', '2020-01-12 17:05:24'),
(816, 1, 'admin/risikos/8', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 20 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:27', '2020-01-12 17:05:27'),
(817, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:27', '2020-01-12 17:05:27'),
(818, 1, 'admin/risikos/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:31', '2020-01-12 17:05:31'),
(819, 1, 'admin/risikos/9', 'PUT', '127.0.0.1', '{\"dosis\":\"20 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:35', '2020-01-12 17:05:35'),
(820, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:35', '2020-01-12 17:05:35'),
(821, 1, 'admin/risikos/10/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:39', '2020-01-12 17:05:39'),
(822, 1, 'admin/risikos/10', 'PUT', '127.0.0.1', '{\"dosis\":\"10 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:43', '2020-01-12 17:05:43'),
(823, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:43', '2020-01-12 17:05:43'),
(824, 1, 'admin/risikos/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:47', '2020-01-12 17:05:47'),
(825, 1, 'admin/risikos/11', 'PUT', '127.0.0.1', '{\"dosis\":\"5 mGy & 3 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:50', '2020-01-12 17:05:50'),
(826, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:50', '2020-01-12 17:05:50'),
(827, 1, 'admin/risikos/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:05:54', '2020-01-12 17:05:54'),
(828, 1, 'admin/risikos/12', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:05:57', '2020-01-12 17:05:57'),
(829, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:05:57', '2020-01-12 17:05:57'),
(830, 1, 'admin/risikos/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:06:02', '2020-01-12 17:06:02'),
(831, 1, 'admin/risikos/13', 'PUT', '127.0.0.1', '{\"dosis\":\"60 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:06:05', '2020-01-12 17:06:05'),
(832, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:06:05', '2020-01-12 17:06:05'),
(833, 1, 'admin/risikos/14/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:06:11', '2020-01-12 17:06:11'),
(834, 1, 'admin/risikos/14', 'PUT', '127.0.0.1', '{\"dosis\":\"7 mGy & 40 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:06:15', '2020-01-12 17:06:15'),
(835, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:06:15', '2020-01-12 17:06:15'),
(836, 1, 'admin/risikos/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:06:27', '2020-01-12 17:06:27'),
(837, 1, 'admin/risikos/15', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"-\",\"apd_id\":null,\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:06:31', '2020-01-12 17:06:31'),
(838, 1, 'admin/risikos/15/edit', 'GET', '127.0.0.1', '[]', '2020-01-12 17:06:31', '2020-01-12 17:06:31'),
(839, 1, 'admin/risikos/15', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"-\",\"apd_id\":null,\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\"}', '2020-01-12 17:06:49', '2020-01-12 17:06:49'),
(840, 1, 'admin/risikos/15/edit', 'GET', '127.0.0.1', '[]', '2020-01-12 17:06:49', '2020-01-12 17:06:49'),
(841, 1, 'admin/risikos/15', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"-\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\"}', '2020-01-12 17:06:56', '2020-01-12 17:06:56'),
(842, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:06:56', '2020-01-12 17:06:56'),
(843, 1, 'admin/risikos/16/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:07:36', '2020-01-12 17:07:36'),
(844, 1, 'admin/risikos/16', 'PUT', '127.0.0.1', '{\"dosis\":\"30 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 17:07:39', '2020-01-12 17:07:39'),
(845, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:07:40', '2020-01-12 17:07:40'),
(846, 1, 'admin/risikos/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:07:44', '2020-01-12 17:07:44'),
(847, 1, 'admin/risikos/17', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 17:07:47', '2020-01-12 17:07:47'),
(848, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:07:48', '2020-01-12 17:07:48'),
(849, 1, 'admin/risikos/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:07:52', '2020-01-12 17:07:52'),
(850, 1, 'admin/risikos/18', 'PUT', '127.0.0.1', '{\"dosis\":\"40 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 17:07:55', '2020-01-12 17:07:55'),
(851, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:07:56', '2020-01-12 17:07:56'),
(852, 1, 'admin/risikos/19/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:07:58', '2020-01-12 17:07:58'),
(853, 1, 'admin/risikos/19', 'PUT', '127.0.0.1', '{\"dosis\":\"50 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 17:08:02', '2020-01-12 17:08:02'),
(854, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:08:02', '2020-01-12 17:08:02'),
(855, 1, 'admin/risikos/20/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:08:07', '2020-01-12 17:08:07'),
(856, 1, 'admin/risikos/20', 'PUT', '127.0.0.1', '{\"dosis\":\"25 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos\"}', '2020-01-12 17:08:12', '2020-01-12 17:08:12'),
(857, 1, 'admin/risikos', 'GET', '127.0.0.1', '[]', '2020-01-12 17:08:12', '2020-01-12 17:08:12'),
(858, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:08:15', '2020-01-12 17:08:15'),
(859, 1, 'admin/risikos/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:08:17', '2020-01-12 17:08:17'),
(860, 1, 'admin/risikos/21', 'PUT', '127.0.0.1', '{\"dosis\":\"35 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Tyroid sheilding\",\"apd_id\":\"3\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=2\"}', '2020-01-12 17:08:21', '2020-01-12 17:08:21'),
(861, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"2\"}', '2020-01-12 17:08:21', '2020-01-12 17:08:21'),
(862, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:27:52', '2020-01-12 17:27:52'),
(863, 1, 'admin/risikos/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-01-12 17:27:54', '2020-01-12 17:27:54'),
(864, 1, 'admin/risikos/1', 'PUT', '127.0.0.1', '{\"dosis\":\"0,4 mGy\",\"risiko\":\"<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).<\\/p>\\r\\n\\r\\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.<\\/p>\",\"apd\":\"Baju Apron\\/baju anti radiasi\",\"apd_id\":\"1\",\"_token\":\"iDgwews6hNqt5WZXjiH6gSFuAQUSogFlzuMOeFvI\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/localhost:8000\\/admin\\/risikos?page=1\"}', '2020-01-12 17:27:58', '2020-01-12 17:27:58'),
(865, 1, 'admin/risikos', 'GET', '127.0.0.1', '{\"page\":\"1\"}', '2020-01-12 17:27:58', '2020-01-12 17:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-01-07 16:20:40', '2020-01-07 16:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$.Yq10KPeYfhjNQ8IjS8NBOLAWxa4yg3UczSO/HH11M.89ShtUE6ie', 'Administrator', NULL, 'M6gqnCj5hbbizcoH3Wc1COsGDvHmyDOlX6tYInuyAz2naEXBklyPAcOmPy3D', '2020-01-07 16:20:40', '2020-01-07 16:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_apd`
--

CREATE TABLE `m_apd` (
  `id` int(11) NOT NULL,
  `apd` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_apd`
--

INSERT INTO `m_apd` (`id`, `apd`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Baju Apron/Baju Anti Radiasi', '<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.</p>\r\n\r\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).</p>\r\n\r\n<p>Baju Apron/ baju anti radiasi merupakan salah satu alat bantu proteksi tubuh yang digunakan untuk pemeriksaan radiografi.</p>\r\n\r\n<p>Secara fisik bila dipakai terasa berat memiliki ketebalan 0,5 mm Pb dan terbuat dari timah hitam.</p>', '2020-01-12 16:07:46', '2020-01-12 16:11:18'),
(2, 'Gonad Sheilding', '<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.</p>\r\n\r\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).</p>\r\n\r\n<p>Penahan radiasi gonad yang digunakan untuk radiologi diagnostik rutin.</p>\r\n\r\n<p>Proteksi ini harus dengan ukuran dan bentuk yang sesuai untuk mencegah gonad secara keseluruhan dari paparan berkas utama</p>', '2020-01-12 16:12:29', '2020-01-12 16:12:29'),
(3, 'Tyroid Sheilding', '<p>Setiap pemeriksaan menggunakan Alat Perlindungan Diri (APD) yang berbeda sesuai dengan jenis pemeriksaan.</p>\r\n\r\n<p>Secara umum APD yang digunakan berupa apron. Namun untuk pemeriksaan tertentu menggunakan pelindung tyroid, dan pelindung gonad (alat kelamin).</p>\r\n\r\n<p>Tyroid Sheilding/Pelindung tiroid yang digunakan untuk melindungi kelenjar tyroid dari sinar X.</p>', '2020-01-12 16:14:07', '2020-01-12 16:14:07'),
(4, 'Sarung Tangan Proteksi', '<p>Sarung tangan proteksi yang digunakan untuk fluoroskopi.</p>\r\n\r\n<p>Proteksi ini harus dapat melindungi secara ke seluruhan, mencakup jari dan pergelangan tangan.</p>', '2020-01-12 16:15:11', '2020-01-12 16:15:11'),
(5, 'Kacamata PB', '<p>Kacamata yang digunakan untuk melindungi lensa mata dari sinar X.</p>', '2020-01-12 16:15:29', '2020-01-12 16:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `m_jenis_pemeriksaan`
--

CREATE TABLE `m_jenis_pemeriksaan` (
  `id` int(11) NOT NULL,
  `jenis_pemeriksaan` varchar(100) NOT NULL,
  `persiapan_pasien` text NOT NULL,
  `manfaat` text NOT NULL,
  `modalitas` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `risiko` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_jenis_pemeriksaan`
--

INSERT INTO `m_jenis_pemeriksaan` (`id`, `jenis_pemeriksaan`, `persiapan_pasien`, `manfaat`, `modalitas`, `deskripsi`, `risiko`, `created_at`, `updated_at`) VALUES
(1, 'Thorax AP', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan organ jantung dan paru-paru', 1, '-', 1, '2020-01-09 15:58:42', '2020-01-12 05:06:09'),
(2, 'Thorax Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Lateral kiri untuk memperlihatkan kelainan organ jantung dan paru-paru kiri. Lateral kanan untuk memperlihatkan paru-paru kanan', 1, '-', 2, '2020-01-09 16:00:27', '2020-01-12 05:07:03'),
(3, 'Thorax PA & Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan organ jantung dan paru-paru', 1, '-', 3, '2020-01-09 16:03:43', '2020-01-12 05:07:22'),
(4, 'Shoulder AP', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan organ sendi bahu', 1, '-', 1, '2020-01-09 16:04:47', '2020-01-12 05:07:39'),
(5, 'Humerus AP', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan tulang humerus', 1, '-', 1, '2020-01-09 16:05:43', '2020-01-12 05:08:02'),
(6, 'Humerus Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan tulang humerus', 1, '-', 1, '2020-01-09 16:06:38', '2020-01-12 05:08:20'),
(7, 'Cubiti AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan tulang pada sendi siku', 1, '-', 4, '2020-01-09 16:09:20', '2020-01-12 05:14:53'),
(8, 'Wrist AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan tulang pada pergelangan tangan', 1, '-', 4, '2020-01-09 16:10:17', '2020-01-12 05:15:14'),
(9, 'Anthebrachii AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan tulang radius dan ulna  pada lengan bawah', 1, '-', 4, '2020-01-09 16:11:08', '2020-01-12 05:15:33'),
(10, 'Manus AP dan Oblique', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang telapak tangan', 1, '-', 4, '2020-01-09 16:12:14', '2020-01-12 05:15:49'),
(11, 'Femur AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang paha', 1, '-', 4, '2020-01-09 16:13:01', '2020-01-12 05:16:22'),
(12, 'Cruris AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang kering', 1, '-', 4, '2020-01-09 16:14:09', '2020-01-12 05:16:53'),
(13, 'Genu AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang sendi lutut', 1, '-', 4, '2020-01-09 16:17:25', '2020-01-12 05:17:08'),
(14, 'Ankle AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang pergelangan kaki', 1, '-', 4, '2020-01-09 17:33:13', '2020-01-12 05:17:21'),
(15, 'Calcaneus AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang tumit kaki', 1, '-', 4, '2020-01-09 17:35:34', '2020-01-12 05:17:36'),
(16, 'Cervical AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang leher', 1, '-', 5, '2020-01-09 17:37:04', '2020-01-12 05:17:48'),
(17, 'Cervical Oblique Kanan dan Kiri', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang leher', 1, '-', 6, '2020-01-09 17:39:13', '2020-01-12 05:18:02'),
(18, 'Thoracal AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang punggung', 1, '-', 7, '2020-01-09 17:42:05', '2020-01-12 05:18:11'),
(19, 'Lumbosacral AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang pinggang', 1, '-', 8, '2020-01-09 17:45:37', '2020-01-12 05:18:26'),
(20, 'Lumbosacral Oblique Kanan dan Kiri', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang pinggang', 1, '-', 9, '2020-01-09 17:47:01', '2020-01-12 05:18:36'),
(21, 'Pelvis AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada tulang pinggul', 1, '-', 6, '2020-01-09 17:48:37', '2020-01-12 05:18:54'),
(22, 'BOF', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada dalam organ abdomen/perut', 1, '-', 10, '2020-01-09 17:52:55', '2020-01-12 05:19:05'),
(23, 'Kepala AP dan Lateral', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada organ kepala dan tulang pipi', 1, '-', 11, '2020-01-09 17:53:51', '2020-01-12 05:19:22'),
(24, 'Panoramik', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui posisi gigi dan kelainan tulang di daerah mulut', 2, '-', 12, '2020-01-09 17:55:06', '2020-01-12 05:19:48'),
(25, 'BNO dan IVP', '<p>1. Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.</p>\r\n\r\n<p>2. Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;</p>\r\n\r\n<p>3. Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan / faeces.&nbsp;</p>\r\n\r\n<p>4. Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)</p>', 'Mengetahui kelainan pada organ ginjal, ureter dan kandung kemih', 1, '-', 13, '2020-01-09 17:57:08', '2020-01-12 05:20:10'),
(26, 'Oesopagografi', '<p>1. Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.&nbsp;</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan pada organ oesophagus dan pharing', 1, '-', 14, '2020-01-09 17:58:30', '2020-01-12 05:20:49'),
(27, 'Fistulografi', '<p>1. Tidak ada persiapan khusus. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui lokasi, luas dan panjang fistula di dalam tubuh', 1, '-', 15, '2020-01-09 17:59:38', '2020-01-12 05:21:08'),
(28, 'HSG', '<p>1. Penderita sejak hari pertama menstruasi yang terakhir sampai hari kesepuluh tidak diperkenankan melakukan persetubuhan (koitus) terlebih dahulu.&nbsp;</p>\r\n\r\n<p>2. Sebelum pemeriksaan yang dilakukan penderita untuk buang air kecil terlebih dahulu untuk menghindari agar penderita tidak buang air selama jalannya pemeriksaan sehingga pemeriksaan tidak terganggu dan berjalan lancar.</p>\r\n\r\n<p>3. Berikan penjelasan pada pasien maksud dan tujuan pemeriksaan yang akan dilakukan, serta jalannya pemeriksaan agar pasien merasa aman dan tenang sehingga dapat diajak kerjasama demi kelancaran pemeriksaan.</p>', 'Mengetahui bentuk, ukuran dan struktur rongga rahim sehingga bisa mendeteksi beberapa kelainan sebagai penyebab infertilitas', 1, '-', 16, '2020-01-09 18:00:33', '2020-01-12 05:21:25'),
(29, 'RPG', '<p>1. Sehari sebelum pemeriksaan dilakukan, pasien diminta untuk makan-makanan lunak yang tanpa serat (seperti bubur kecap) maksudnya supaya makanan tersebut mudah dicerna oleh usus sehingga faeces tidak keras.</p>\r\n\r\n<p>2. Makan terakhir pukul 22.00 (malam sebelum pemeriksaan) supaya tidak ada lagi sisa makanan diusus, dan &nbsp;pasien minum garam inggris (MgSO4) 30 gram di campur &frac14; gelas air selanjutnya puasa sampai pemeriksaan berakhir.&nbsp;</p>\r\n\r\n<p>3. Pagi hari sekitar pukul 06.00 (hari pemeriksaan), pasien diminta untuk garam inggris (MgSO4) 30 gram dicampur &frac14; gelas air &nbsp;supaya usus benar-benar bersih dari sisa makanan / faeces.</p>\r\n\r\n<p>4. Selama menjalani persiapan, pasien diminta untuk tidak banyak bicara dan tidak merokok supaya tidak ada intestinal gas (gas disaluran pencernaan)</p>', 'Mengetahui kelainan fungsi sistem urinaria', 1, '-', 17, '2020-01-09 18:01:25', '2020-01-12 05:21:55'),
(30, 'Uretrografi', '<p>Tidak perlu persiapan khusus, sebelum pemeriksaan pasien diminta untuk kencing. Tujuannya supaya kontras tidak bercampur dengan urine yang menyebabkan kelaian pada kandung kemih tidak terlihat jelas.</p>', 'Mengetahui  fungsi dan kelainan pada uretra', 1, '-', 18, '2020-01-09 18:02:15', '2020-01-09 18:02:15'),
(31, 'CT Scan Kepala', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.&nbsp;</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.</p>\r\n\r\n<p>3. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui  kelainan tumor, infeksi, perdarahan dan keretakan tulang kepala', 3, '-', 19, '2020-01-09 18:03:15', '2020-01-12 05:22:35'),
(32, 'CT Scan Thorax', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan infeksi, emboli paru, tumor paru, penyebaran kanker dari organ lain ke daerah dada serta maslah pada jantung', 3, '-', 9, '2020-01-09 18:04:42', '2020-01-12 05:22:46'),
(33, 'CT Scan Abdomen', '<p>1. Tidak makan dan minum 3-6 jam sebelum pemeriksaan.&nbsp;</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Sehari sebelum pemeriksaan tidak mengkonsumsi makanan padat.</p>', 'Mengetahui kelainan infeksi, kista, abses, tumor, perdarahan pada organ abdomen', 3, '-', 20, '2020-01-09 18:05:30', '2020-01-12 05:23:07'),
(34, 'Ct Scan Spine', '<p>1. Pastikan diri tidak sedang hamil atau usia kandungan anda telah di atas 3 bulan serta informasikan kehamilan anda kepada petugas.</p>\r\n\r\n<p>2. Mohon melepaskan perhiasan/aksesoris dari logam yang sedang anda pakai dan simpan pada tempat yang aman. Kami tidak bertanggung jawab atas kehilangan benda tersebut.&nbsp;</p>\r\n\r\n<p>3. Demi kepentingan pemeriksaan, petugas akan meminta anda untuk menggantikan baju serta pakaian dalam (BH) dengan pakaian yang telah disediakan.</p>\r\n\r\n<p>4. Silahkan menghubungi petugas radiologi bila anda membutuhkan bantuan.</p>', 'Mengetahui kelainan struktur dan celah sendi serta saraf tulang belang', 3, '-', 21, '2020-01-09 18:06:48', '2020-01-12 05:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `m_modalitas`
--

CREATE TABLE `m_modalitas` (
  `id` int(11) NOT NULL,
  `modalitas` varchar(200) NOT NULL,
  `deskripsi` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_modalitas`
--

INSERT INTO `m_modalitas` (`id`, `modalitas`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Digital Radiology', 'Digital Radiologi adalah jenis alat yang digunakan untuk pemeriksaan radiografi umum seperti: kepala, leher, tulang belakang, thorax, ektemitas atas dan bawah, abdomen dan tulang ekor.', '2020-01-07 23:21:32', '2020-01-12 06:30:27'),
(2, 'Panoramik', 'Panoramik adalah jenis alat yang digunakan untuk pemeriksaan untuk melihat lebih jelas gambaran gigi dan jaringan lunak serta kelainan tulang di daerah mulut.', '2020-01-07 23:23:01', '2020-01-07 23:23:01'),
(3, 'Computerized Tomography Scanning', 'Computerized Tomography Scanning (CT Scan) adalah pemeriksaan radiologi dengan teknologi canggih menggunakan sinar-X. CT scan telah menjadi uji pilihan dalam mendiagnosis beberapa kondisi mendesak dan muncul seperti pendarahan otak, emboli paru (penyumbatan dalam arteri paru-paru), diseksi aorta (robeknya dinding aorta), radang usus buntu, divertikulitis, dan batu ginjal.', '2020-01-07 23:23:25', '2020-01-12 06:30:35');

-- --------------------------------------------------------

--
-- Table structure for table `m_risiko`
--

CREATE TABLE `m_risiko` (
  `id` int(11) NOT NULL,
  `dosis` varchar(200) NOT NULL,
  `risiko` text NOT NULL,
  `apd` varchar(200) NOT NULL,
  `apd_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_risiko`
--

INSERT INTO `m_risiko` (`id`, `dosis`, `risiko`, `apd`, `apd_id`, `created_at`, `updated_at`) VALUES
(1, '0,4 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:45:02', '2020-01-12 17:04:32'),
(2, '1,5  mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:45:45', '2020-01-12 17:04:39'),
(3, '0,4 mGy & 1,5  mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:46:25', '2020-01-12 17:04:47'),
(4, '0,8 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:47:24', '2020-01-12 17:04:57'),
(5, '7 mGy & 20 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:48:04', '2020-01-12 17:05:07'),
(6, '20 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:48:49', '2020-01-12 17:05:14'),
(7, '7 mGy & 20 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Gonad sheilding', 2, '2020-01-07 21:49:53', '2020-01-12 17:05:21'),
(8, '7 mGy & 20 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:51:05', '2020-01-12 17:05:27'),
(9, '20 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:51:47', '2020-01-12 17:05:35'),
(10, '10 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:52:38', '2020-01-12 17:05:43'),
(11, '5 mGy & 3 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:53:24', '2020-01-12 17:05:50'),
(12, '7 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:54:58', '2020-01-12 17:05:57'),
(13, '60 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:55:51', '2020-01-12 17:06:05'),
(14, '7 mGy & 40 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 21:56:21', '2020-01-12 17:06:15'),
(15, '30 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', '-', 0, '2020-01-07 21:57:29', '2020-01-13 01:07:25'),
(16, '30 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:58:16', '2020-01-12 17:07:39'),
(17, '50 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 21:59:34', '2020-01-12 17:07:47'),
(18, '40 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 22:00:13', '2020-01-12 17:07:55'),
(19, '50 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Baju Apron/baju anti radiasi', 1, '2020-01-07 22:01:05', '2020-01-12 17:08:02'),
(20, '25 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 23:06:03', '2020-01-12 17:08:12'),
(21, '35 mGy', '<p>Efek stokastik (bersifat kumulatif dalam tubuh), efek radiasi yang timbul setelah jangka waktu yang panjang seperti kanker, leukemia dan penyakit keturunan (genetik).</p>\r\n\r\n<p>Untuk mencegah dan mengendalikan efek radiasi maka di perlukan upaya mengkonsumsi makanan yang mengandung protein meliputi telor, kacang ijo, susu dan vitamin.</p>', 'Tyroid sheilding', 3, '2020-01-07 23:06:37', '2020-01-12 17:08:21');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_apd`
--
ALTER TABLE `m_apd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_jenis_pemeriksaan`
--
ALTER TABLE `m_jenis_pemeriksaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_modalitas`
--
ALTER TABLE `m_modalitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_risiko`
--
ALTER TABLE `m_risiko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_apd`
--
ALTER TABLE `m_apd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_jenis_pemeriksaan`
--
ALTER TABLE `m_jenis_pemeriksaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `m_modalitas`
--
ALTER TABLE `m_modalitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_risiko`
--
ALTER TABLE `m_risiko`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
