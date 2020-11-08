-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2020 at 11:43 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mopa`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `filename` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `training_id`, `filename`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, '1601147905.119137118_639414603662031_3215899513391788398_n.png', 1, '2020-09-26 19:18:25', '2020-09-27 18:12:09'),
(2, 18, '1601223721.AdmitCard_NWZZBFYDQO.pdf', 0, '2020-09-27 16:22:01', '2020-09-27 16:22:01'),
(3, 19, '1601223754.AdmitCard_NWZZBFYDQO.pdf', 0, '2020-09-27 16:22:34', '2020-09-27 16:22:34'),
(4, 20, '1601230453.pay-scale.pdf', 1, '2020-09-27 18:14:13', '2020-09-27 18:14:51'),
(5, 20, '1601230491.skh-2020-1350-1245.PDF', 0, '2020-09-27 18:14:51', '2020-09-27 18:14:51'),
(6, 21, '1602091236.skh-2020-1350-1245.PDF', 0, '2020-10-07 17:20:36', '2020-10-07 17:20:36'),
(7, 22, '1602487061.it1-2020-116-r1.PDF', 0, '2020-10-12 07:17:41', '2020-10-12 07:17:41'),
(8, 23, '1602569214.it1-2020-117.PDF', 0, '2020-10-13 06:06:54', '2020-10-13 06:06:54'),
(9, 24, '1602569492.it1-2020-88-r1.PDF', 0, '2020-10-13 06:11:32', '2020-10-13 06:11:32'),
(10, 25, '1602996915.plancell2-2020-73.PDF', 0, '2020-10-18 04:55:15', '2020-10-18 04:55:15'),
(11, 26, '1603094528.document (1).pdf', 0, '2020-10-19 08:02:08', '2020-10-19 08:02:08'),
(12, 27, '1603176684.it1-2020-141.PDF', 0, '2020-10-20 06:51:25', '2020-10-20 06:51:25'),
(13, 28, '1603177176.it1-2020-141.PDF', 0, '2020-10-20 06:59:36', '2020-10-20 06:59:36'),
(14, 29, '1603338824.it1-2020-141.PDF', 0, '2020-10-22 03:53:44', '2020-10-22 03:53:44'),
(15, 30, '1603338876.it1-2020-141.PDF', 0, '2020-10-22 03:54:36', '2020-10-22 03:54:36'),
(16, 31, '1603615888.it1-2020-141.PDF', 0, '2020-10-25 08:51:28', '2020-10-25 08:51:28'),
(17, 32, '1603774279.it1-2020-141.PDF', 0, '2020-10-27 04:51:19', '2020-10-27 04:51:19'),
(18, 33, '1604221387.Internal Training 4 29-10-2020.pdf', 0, '2020-11-01 09:03:07', '2020-11-01 09:03:07'),
(19, 34, '1604223511.admin1-2020-845.pdf', 0, '2020-11-01 09:38:31', '2020-11-01 09:38:31'),
(20, 35, '1604378800.admin1-2020-845.pdf', 0, '2020-11-03 04:46:40', '2020-11-03 04:46:40'),
(21, 36, '1604383240.DNCC-M.pdf', 0, '2020-11-03 06:00:40', '2020-11-03 06:00:40'),
(22, 37, '1604397295.admin1-2020-845.pdf', 0, '2020-11-03 09:54:55', '2020-11-03 09:54:55'),
(23, 38, '1604397533.admin1-2020-845.pdf', 0, '2020-11-03 09:58:53', '2020-11-03 09:58:53');

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
-- Table structure for table `g_o_information`
--

CREATE TABLE `g_o_information` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=draft, 1=final',
  `type` int(11) NOT NULL COMMENT '1=bangla, 2=english',
  `publish_date` date NOT NULL,
  `go_number` varchar(100) NOT NULL,
  `publish_date_bangla` varchar(100) DEFAULT NULL,
  `publish_date_english` varchar(100) DEFAULT NULL,
  `subject` text NOT NULL,
  `details` text NOT NULL,
  `rules_regulations` text NOT NULL,
  `kind_information` text NOT NULL,
  `before_kind_information` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_o_information`
--

INSERT INTO `g_o_information` (`id`, `admin_id`, `training_id`, `status`, `type`, `publish_date`, `go_number`, `publish_date_bangla`, `publish_date_english`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(18, 21, 37, 1, 1, '2020-11-08', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৪ কার্তিক ১৪২৭', '৮ নভেম্বর ২০২০', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:03:30', '2020-11-08 10:03:45'),
(19, 21, 36, 1, 1, '2020-11-08', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৪ কার্তিক ১৪২৭', '৮ নভেম্বর ২০২০', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:07:13', '2020-11-08 10:07:54'),
(20, 21, 35, 0, 1, '2020-11-08', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৬', '২৪ কার্তিক ১৪২৭', '৮ নভেম্বর ২০২০', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:09:24', '2020-11-08 10:12:25'),
(21, 21, 34, 0, 1, '2020-11-08', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৪ কার্তিক ১৪২৭', '৮ নভেম্বর ২০২০', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:11:20', '2020-11-08 10:11:20'),
(22, 21, 33, 1, 1, '2020-11-08', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '২৪ কার্তিক ১৪২৭', '৮ নভেম্বর ২০২০', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:18:01', '2020-11-08 10:19:04'),
(23, 21, 37, 1, 2, '2020-11-08', '1321321321321', NULL, NULL, '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>1.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf&nbsp;</p>\r\n<p>&nbsp;asd asd fasdf asdf asd fasd a</p>\r\n<p>&nbsp;asd asd fasdf asdf</p>', '2020-11-08 10:31:34', '2020-11-08 10:40:43'),
(24, 21, 36, 0, 2, '2020-11-08', '321321', NULL, NULL, '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>1.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf&nbsp;</p>\r\n<p>&nbsp;asd asd fasdf asdf asd fasd a</p>\r\n<p>&nbsp;asd asd fasdf asdf</p>', '2020-11-08 10:42:28', '2020-11-08 10:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `g_o_information_templates`
--

CREATE TABLE `g_o_information_templates` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT '1=bangla, 2=english',
  `subject` text NOT NULL,
  `details` text NOT NULL,
  `rules_regulations` text NOT NULL,
  `kind_information` text NOT NULL,
  `before_kind_information` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_o_information_templates`
--

INSERT INTO `g_o_information_templates` (`id`, `admin_id`, `type`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(11, 21, 1, '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>2.&nbsp; &nbsp;a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>4.&nbsp; a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>1. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>2. a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>3. a sd fasdf asdf asdf asdf&nbsp;</p>', '<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>\r\n<p>a sd fasdf asdf asdf asdf&nbsp;</p>', '2020-11-08 10:02:56', '2020-11-08 10:02:56'),
(12, 21, 2, '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>1.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>2.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>3.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>\r\n<p>4.&nbsp; asd asd fasdf asdf asd fasd adf asdf asdfasdfasd fasd asd sad fsadf asdfa&nbsp;</p>', '<p>&nbsp;asd asd fasdf asdf&nbsp;</p>\r\n<p>&nbsp;asd asd fasdf asdf asd fasd a</p>\r\n<p>&nbsp;asd asd fasdf asdf</p>', '2020-11-08 10:25:44', '2020-11-08 10:25:44');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_26_064639_create_trainings_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nominations`
--

CREATE TABLE `nominations` (
  `id` int(11) NOT NULL,
  `training_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=draft, 1=final',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nominations`
--

INSERT INTO `nominations` (`id`, `training_id`, `admin_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 22, 18, 19, 0, '2020-10-12 10:51:25', '2020-10-12 10:51:25'),
(2, 22, 18, 19, 0, '2020-10-13 05:00:50', '2020-10-13 05:00:50'),
(3, 23, 21, 22, 0, '2020-10-13 06:16:39', '2020-10-13 06:16:39'),
(4, 23, 21, 22, 0, '2020-10-13 06:23:01', '2020-10-13 06:23:01'),
(5, 24, 21, 25, 0, '2020-10-15 06:01:31', '2020-10-15 06:01:31'),
(6, 24, 21, 25, 0, '2020-10-15 06:06:54', '2020-10-15 06:06:54'),
(7, 22, 18, 25, 0, '2020-10-15 07:10:41', '2020-10-15 07:10:41'),
(8, 22, 18, 25, 0, '2020-10-15 07:35:22', '2020-10-15 07:35:22'),
(9, 22, 18, 25, 0, '2020-10-15 07:35:44', '2020-10-15 07:35:44'),
(10, 22, 18, 25, 0, '2020-10-15 07:37:20', '2020-10-15 07:37:20'),
(11, 22, 18, 25, 0, '2020-10-15 07:42:40', '2020-10-15 07:42:40'),
(12, 22, 18, 25, 0, '2020-10-15 07:42:56', '2020-10-15 07:42:56'),
(13, 22, 18, 25, 0, '2020-10-15 07:43:18', '2020-10-15 07:43:18'),
(14, 25, 21, 22, 0, '2020-10-18 05:03:47', '2020-10-18 05:03:47'),
(15, 25, 21, 23, 0, '2020-10-18 05:26:16', '2020-10-18 05:26:16'),
(16, 25, 21, 26, 0, '2020-10-18 05:33:50', '2020-10-18 05:33:50'),
(17, 27, 21, 25, 0, '2020-10-20 06:53:42', '2020-10-20 06:53:42'),
(18, 28, 21, 25, 0, '2020-10-20 07:00:23', '2020-10-20 07:00:23'),
(19, 31, 27, 25, 0, '2020-10-25 10:14:18', '2020-10-25 10:14:18'),
(20, 31, 27, 15, 0, '2020-10-25 10:19:36', '2020-10-25 10:19:36'),
(21, 32, 27, 25, 0, '2020-10-27 05:12:55', '2020-10-27 05:12:55'),
(22, 34, 21, 25, 0, '2020-11-01 09:41:24', '2020-11-01 09:41:24'),
(23, 33, 21, 25, 0, '2020-11-02 10:24:06', '2020-11-02 10:24:06'),
(24, 35, 21, 25, 0, '2020-11-03 04:52:00', '2020-11-03 04:52:00'),
(25, 35, 21, 22, 0, '2020-11-03 05:07:16', '2020-11-03 05:07:16'),
(26, 35, 21, 26, 0, '2020-11-03 05:16:12', '2020-11-03 05:16:12'),
(27, 35, 21, 23, 0, '2020-11-03 05:24:47', '2020-11-03 05:24:47'),
(28, 36, 21, 25, 0, '2020-11-03 06:05:33', '2020-11-03 06:05:33'),
(29, 30, 21, 25, 0, '2020-11-03 07:25:30', '2020-11-03 07:25:30'),
(30, 37, 21, 25, 0, '2020-11-08 06:24:00', '2020-11-08 06:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `nomination_details`
--

CREATE TABLE `nomination_details` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=not selected, 1=selected',
  `training_id` int(11) NOT NULL,
  `nomination_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_bangla` text NOT NULL,
  `designation` varchar(255) NOT NULL,
  `designation_bangla` text NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `working_place` varchar(255) NOT NULL,
  `working_place_bangla` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomination_details`
--

INSERT INTO `nomination_details` (`id`, `status`, `training_id`, `nomination_id`, `admin_id`, `user_id`, `id_no`, `name`, `name_bangla`, `designation`, `designation_bangla`, `contact_no`, `email`, `working_place`, `working_place_bangla`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 22, 2, 18, 19, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Asst. Prog', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC, MOPA', NULL, '2020-10-13 05:00:50', '2020-10-15 10:10:38', NULL),
(2, 1, 22, 2, 18, 19, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC, MOPA', NULL, '2020-10-13 05:00:50', '2020-10-15 10:10:38', NULL),
(3, 1, 23, 3, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-13 06:16:39', '2020-10-20 10:09:20', NULL),
(4, 1, 23, 3, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'Public Administration Computer Center, MOPA', NULL, '2020-10-13 06:16:39', '2020-10-20 10:09:20', NULL),
(5, 0, 23, 4, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-13 06:23:01', '2020-10-20 10:09:20', NULL),
(6, 1, 23, 4, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC, MOPA', NULL, '2020-10-13 06:23:01', '2020-10-20 10:09:20', NULL),
(7, 0, 24, 6, 21, 25, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC, MOPA', NULL, '2020-10-15 06:06:54', '2020-10-15 06:59:04', '2020-10-15 06:58:58'),
(8, 1, 24, 6, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'rakib@gmail.com', 'PACC, MOPA', NULL, '2020-10-15 06:06:54', '2020-10-20 10:39:50', NULL),
(9, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:10:41', '2020-10-15 07:21:07', '2020-10-14 18:00:00'),
(10, 0, 22, 8, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:35:22', '2020-10-15 07:35:44', '2020-10-15 07:35:44'),
(11, 0, 22, 9, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:35:44', '2020-10-15 07:37:20', '2020-10-15 07:37:20'),
(12, 0, 22, 9, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:35:44', '2020-10-15 07:37:20', '2020-10-15 07:37:20'),
(13, 0, 22, 10, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:37:20', '2020-10-15 07:40:24', '2020-10-15 07:40:24'),
(14, 0, 22, 11, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:42:40', '2020-10-15 07:42:56', '2020-10-15 07:42:56'),
(15, 0, 22, 12, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:42:56', '2020-10-15 07:43:18', '2020-10-15 07:43:18'),
(16, 0, 22, 13, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:43:18', '2020-10-15 07:43:44', '2020-10-15 07:43:44'),
(17, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 07:43:44', '2020-10-15 08:05:59', '2020-10-15 08:05:59'),
(18, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', NULL, '2020-10-15 08:05:59', '2020-10-15 10:10:38', NULL),
(19, 1, 25, 14, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-18 05:03:47', '2020-10-18 05:35:10', NULL),
(20, 1, 25, 14, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-18 05:03:47', '2020-10-18 05:35:10', NULL),
(21, 1, 25, 15, 21, 23, 1111, 'Mr. Rahim', 'রহিম', 'AP', 'আডমিন', '01301121212', 'rahim@gmail.com', 'DC Office Kushtia', NULL, '2020-10-18 05:26:16', '2020-10-18 05:35:10', NULL),
(22, 1, 25, 15, 21, 23, 1520, 'Mr. Karim', 'করিম', 'Admin', 'অ্যাডমিন', '01302121212', 'karim@mopa.gov.bd', 'UNO, Kushtia', NULL, '2020-10-18 05:26:16', '2020-10-18 05:35:10', NULL),
(23, 1, 25, 16, 21, 26, 3250, 'Mr. Jabed', 'যাবেদ', 'CO', 'কম্পিউটার অপারেটর', '01520101210', 'jabed@mopa.gov.bd', 'DC Office, Jessore', NULL, '2020-10-18 05:33:50', '2020-10-18 05:35:10', NULL),
(24, 0, 25, 16, 21, 26, 1582, 'Mr. Saber', 'সাবের', 'Data entry operator', 'ডাটা এন্টি', '01256232110', 'saber@mopa.gov.bd', 'DC Office, Jessore', NULL, '2020-10-18 05:33:50', '2020-10-18 05:35:10', NULL),
(25, 1, 27, 17, 21, 25, 700011, 'Md. Liquat Ali', 'asdf', 'AP', 'asdf', '01741607831', 'liquat@gmail.com', 'PACC', NULL, '2020-10-20 06:53:42', '2020-10-20 06:54:24', NULL),
(26, 1, 28, 18, 21, 25, 700022, 'asdfadf', 'asdf', 'asdf', 'asdf', '01741607831', 'asd@asd.com', 'asdf', NULL, '2020-10-20 07:00:23', '2020-10-20 08:15:52', NULL),
(27, 1, 31, 19, 27, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'rakib@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-25 10:14:18', '2020-10-25 10:20:59', NULL),
(28, 1, 31, 19, 27, 25, 700029, 'S M Mohaimen Likhon', 'এস এম মোহায়মেন লিখন', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-25 10:14:18', '2020-10-25 10:20:59', NULL),
(29, 0, 31, 20, 27, 15, 1415, 'Md. Rahim', 'মোঃ রহিম', 'Additional Secretary', 'অতিরিক্ত সচিব', '01521010101', 'rahim@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-25 10:19:36', '2020-10-25 10:20:36', '2020-10-25 10:20:36'),
(30, 0, 31, 20, 27, 15, 1412, 'Md. Karim', 'মোঃ করিম', 'DS', 'উপসচিব', '01526323232', 'karim@mopa.gov.bd', 'MOPA, PACC, BD', NULL, '2020-10-25 10:19:36', '2020-10-25 10:20:36', '2020-10-25 10:20:36'),
(31, 1, 31, 20, 27, 15, 1415, 'Md. Rahim', 'মোঃ রহিম', 'Additional Secretary', 'অতিরিক্ত সচিব', '01521010101', 'rahim@mopa.gov.bd', 'PACC, MOPA', NULL, '2020-10-25 10:20:37', '2020-10-25 10:20:59', NULL),
(32, 0, 31, 20, 27, 15, 1412, 'Md. Karim', 'মোঃ করিম', 'DS', 'উপসচিব', '01526323232', 'karim@mopa.gov.bd', 'MOPA, PACC, BD', NULL, '2020-10-25 10:20:37', '2020-10-25 10:20:59', NULL),
(33, 1, 31, 20, 27, 15, 2526, 'Baki', 'বাকি', 'DS', 'উপসচিব', '01524121212', 'baki@mopa.gov.bd', 'PACC, MOPA, BD', NULL, '2020-10-25 10:20:37', '2020-10-25 10:20:59', NULL),
(34, 1, 32, 21, 27, 25, 700029, 'S. M. Mohaimen Likhon', 'এস. এম মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC, mopa', NULL, '2020-10-27 05:12:55', '2020-10-27 05:13:16', NULL),
(35, 1, 32, 21, 27, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'rakib@gmail.com', 'PACC, Ministry of Public Administration', NULL, '2020-10-27 05:12:55', '2020-10-27 05:13:16', NULL),
(36, 1, 34, 22, 21, 25, 700029, 'asdf', 'রফিক', 'asdf', 'স প্র', '01521481111', 'as@asd.com', 'pacc', NULL, '2020-11-01 09:41:24', '2020-11-01 09:42:01', NULL),
(37, 1, 33, 23, 21, 25, 23, 'asdfa sdfasdf', 'রফিক', 'as asdf as', 'সপ্র', '01741607831', 'asdf@asdf.asdf', 'asdfasfd', NULL, '2020-11-02 10:24:06', '2020-11-02 10:25:17', NULL),
(38, 1, 35, 24, 21, 25, 700029, 'S. M. MOHIMEN LIKHON', 'লিখন', 'AP', 'এপি', '01521481414', 'likhon.ruet@gmail.com', 'PACC', NULL, '2020-11-03 04:52:00', '2020-11-03 05:25:38', NULL),
(39, 1, 35, 24, 21, 25, 700030, 'RAKIB', 'রাকীব', 'ap', 'এপি', '01535239063', 'mri.rakib@gmail.com', 'PACC', NULL, '2020-11-03 04:52:00', '2020-11-03 05:25:38', NULL),
(40, 1, 35, 25, 21, 22, 700561, 'Pijush Chandra Paul', 'পীযুষ চন্দ্র পাল', 'Computer Operator', 'কম্পিউটার অপারেটর', '01723485170', 'pijushpaul2015@gmail.com', 'PACC, mopa', NULL, '2020-11-03 05:07:16', '2020-11-03 05:25:38', NULL),
(41, 1, 35, 25, 21, 22, 700560, 'Sujal Biswas', 'সুজল বিশ্বাস', 'Computer Operator', 'কম্পিউটার অপারেটর', '01714960945', 'sujal@gmail.com', 'PACC, mopa', NULL, '2020-11-03 05:07:16', '2020-11-03 05:25:38', NULL),
(42, 0, 35, 26, 21, 26, 700562, 'dfhdhf', 'ককা', 'hkkkfjdf', 'ববব', '01767522264', 'm@gmail.com', 'pacc, mopa', NULL, '2020-11-03 05:16:12', '2020-11-03 05:25:38', NULL),
(43, 1, 35, 26, 21, 26, 700566, 'fdasfdf', 'াবািবিকা', 'fdsfdf', 'াািাি', '01756454664', 'n@gmail.com', 'pacc', NULL, '2020-11-03 05:16:12', '2020-11-03 05:25:38', NULL),
(44, 1, 35, 27, 21, 23, 735030, 'Md. Shakirul Islam', 'মো: শাকিরুল ইসলাম', 'Data Entry/Control Operator', 'ডাটা এন্ট্রি/কন্ট্রোল অপারেটর', '01751073800', 'shakirulbd999@gmail.com', 'pacc.mopa', NULL, '2020-11-03 05:24:47', '2020-11-03 05:25:38', NULL),
(45, 0, 35, 27, 21, 23, 700563, 'Lubna Yasmin', 'লুবনা ইয়াসমিন', 'Computer Opertor', 'কম্পিউটার অপারেটর', '01517812140', 'shakirul99@gmail.com', 'pacc,mopa', NULL, '2020-11-03 05:24:47', '2020-11-03 05:25:38', NULL),
(46, 1, 36, 28, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC, MOPA', NULL, '2020-11-03 06:05:33', '2020-11-03 06:07:26', NULL),
(47, 0, 30, 29, 21, 25, 123, 'asdfadf', 'asdfafd', 'asdfasdf', 'asdfasfd', '123456123', 'asdf@asdf.com', 'asdfaf', 'asdfasfd', '2020-11-03 07:25:30', NULL, NULL),
(48, 0, 30, 29, 21, 25, 1231, 'asdf', 'asdf', 'asdf', 'asdf', '9545321', 'asdff@asdf.asdf', 'asdf', 'asdf', '2020-11-03 07:25:30', NULL, NULL),
(49, 1, 37, 30, 21, 25, 700029, 'assfd', 'ৃউইআ', 'asd', 'ঋউইআ', '01521481414', 'aasdf@asfd.om', 'asdf', 'আ্ক', '2020-11-08 06:24:00', '2020-11-08 06:24:17', NULL);

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
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_no` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=draft, 1=open, 2=close, 3=primary selection, 4=make final, 5=delete',
  `admin_id` int(11) DEFAULT NULL,
  `training_type_id` int(11) NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title`, `issue_no`, `issue_date`, `archive_date`, `status`, `admin_id`, `training_type_id`, `remarks`, `created_at`, `updated_at`) VALUES
(21, '\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।', 116, '2020-10-07', '2020-11-06', 1, 14, 1, 'important', '2020-10-07 17:20:36', '2020-10-09 20:04:13'),
(22, '\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।asdf asdf asdf asdf asdfasfd1313131321', 116, '2020-10-07', '2020-10-12', 4, 18, 1, NULL, '2020-10-12 07:17:41', '2020-10-18 04:42:40'),
(23, '১৩০তম উচ্চতর প্রশাসন ও উন্নয়ন কোর্স (এসিএডি)-এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।', 117, '2020-09-28', '2020-10-28', 4, 21, 1, 'This is very important', '2020-10-13 06:06:54', '2020-10-20 10:09:24'),
(24, 'স্থগিতকৃত ১২৯ তম এসিএডি ও ৯৪ তম এসএসসি তে পুনরায় অংশগ্রহণ সংক্রান্ত অফিস আদেশ।', 88, '2020-08-31', '2020-10-31', 4, 21, 1, 'This training is important for candidates', '2020-10-13 06:11:32', '2020-10-20 10:39:53'),
(25, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" শীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 73, '2020-10-01', '2020-10-31', 4, 21, 1, NULL, '2020-10-18 04:55:15', '2020-10-18 05:35:18'),
(26, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" \r\n\r\n\r\n\r\nশীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 151, '2020-10-01', '2020-10-28', 5, 21, 1, NULL, '2020-10-19 08:02:08', '2020-11-01 09:39:14'),
(27, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" শীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 256, '2020-10-01', '2020-10-27', 4, 21, 1, NULL, '2020-10-20 06:51:24', '2020-10-20 06:54:33'),
(28, 'স্থগিতকৃত ১২৯ তম এসিএডি ও ৯৪ তম এসএসসি তে পুনরায় অংশগ্রহণ সংক্রান্ত অফিস আদেশ।', 125, '2020-10-01', '2020-10-28', 4, 21, 1, NULL, '2020-10-20 06:59:36', '2020-10-20 08:15:55'),
(29, 'asdf asd fasdf asf asdf', 12, '2020-10-01', '2020-10-27', 1, 21, 1, NULL, '2020-10-22 03:53:44', '2020-10-22 03:54:08'),
(30, 'asdf asd fasdf asf asdfasdfasfasdf', 122, '2020-10-01', '2020-10-28', 1, 21, 1, NULL, '2020-10-22 03:54:36', '2020-11-01 09:39:00'),
(31, '\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান। asdfasdf', 285, '2020-10-01', '2020-10-27', 4, 27, 1, 'asdf asf asdf asdf asdf asdf asd fasdf asdf asdf asdf asdfasd fasd asdfasdf asdf sadfas', '2020-10-25 08:51:28', '2020-10-25 10:21:03'),
(32, 'asd as asfd asfd as fasf asf sa fsaf asf asd fasdf asdfasdfas fas asd fasdf asdf asf asf a', 234, '2020-10-01', '2020-10-31', 4, 27, 1, 'asfasdfasdf', '2020-10-27 04:51:19', '2020-10-27 05:13:26'),
(33, 'daf asdasdf a', 256, '2020-11-01', '2020-11-25', 4, 21, 1, 'asdfasdf', '2020-11-01 09:03:07', '2020-11-08 09:56:21'),
(34, 'sdfasdfasf', 986, '2020-11-01', '2020-11-25', 4, 21, 1, 'asdf asdf asdf asdf', '2020-11-01 09:38:31', '2020-11-01 09:42:05'),
(35, 'Test title Test title Test title Test title Test title Test title Test title Test title Test title Test title Test title Test title Test title Test title', 168, '2020-11-01', '2020-11-30', 4, 21, 1, 'Test remarks Test remarks Test remarks', '2020-11-03 04:46:40', '2020-11-03 05:25:43'),
(36, '85 SSC', 530, '2020-11-03', '2020-11-30', 4, 21, 1, NULL, '2020-11-03 06:00:40', '2020-11-03 06:07:36'),
(37, 'asd asd asd asd asd asd asd fasd asd asdfasdfasd asd fasd fasdf asdfasdf 1111', 256, '2020-11-01', '2020-11-25', 4, 21, 1, 'as d fadsf asdf asdfadfasdf asdfa', '2020-11-03 09:54:55', '2020-11-08 06:24:19'),
(38, 'asdf asd asdfasdf222', 23, '2020-11-02', '2020-11-17', 0, 21, 2, 'asdfasdfasdf', '2020-11-03 09:58:53', '2020-11-03 10:33:55');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `name`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BPATC', 1, 1, '2020-10-14 10:42:36', '2020-10-15 04:51:26'),
(2, 'ADC', 1, 1, '2020-10-14 10:44:08', '2020-10-15 04:55:46'),
(3, 'Foreign', 1, 1, '2020-10-14 10:45:38', '2020-10-15 05:12:57'),
(4, 'Law', 1, 1, '2020-10-14 10:47:47', '2020-10-15 05:13:29'),
(5, 'Example 2', 1, 1, '2020-11-03 09:47:06', '2020-11-03 09:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '1=super admin,2=admin, 3=general',
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=not approved,1=active,2=inactive',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `created_by`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'mri.rakib@gmail.com', 1, NULL, 1, '2020-09-25 12:23:24', '$2y$10$jSL6eFclY0T5Ht2XQMkv9.UEOLWNuBD3r2t2mpCPe9VK2e0rcJfT.', 'FOIw3hoe7TnQxxPZ9vsTjbyUpPGdiMKCCeR3Yj0yaQNfHw171qfY7djYQuME', '2020-09-25 12:22:12', '2020-10-13 05:57:15'),
(2, 'Rahim2 Admin User', 'rahim@gmail.com', 2, NULL, 1, '2020-10-04 17:59:06', '$2y$10$9AupoyIIW2me25iyI6OWDu87cWBVOjywE38uFngDPx/xyPbbHYc.K', 'upuzFclIVSHKSzxpbAEwwQTWPZHkCSgas268nDHu5ZOwtHDjvvTNFVDDUzA8', '2020-10-04 17:58:39', '2020-10-14 08:25:55'),
(11, 'Rahim Normal User', 'rahim2@gmail.com', 3, 14, 1, NULL, '$2y$10$.0A0UocGyodpqh7q17s.6ehTbaWTVI8THVTBZmfGJVuLPkVIwdhna', 'IQZ6axemxGRxzsHjXZ2ELScpxyPWteIrR8eME7VbImQpaQXCDYKi2SzNp5ea', '2020-10-05 17:39:48', '2020-10-22 04:48:07'),
(12, 'Rahim3 Admin User', 'rahim3@gmail.com', 2, NULL, 1, NULL, '$2y$10$ePPYWc2OhqANfDkkUxj7Vu4nuvfuJvR0lDbeQNGiitkHOvVLpC.r2', NULL, '2020-10-05 18:11:56', '2020-10-14 09:43:54'),
(13, 'Rahim4', 'rahim4@gmail.com', 2, NULL, 1, NULL, '$2y$10$qfY/MmtitoiMvjlGMSqMd.DbdF6xgQv8ltsl.QCcjNlKrmG1SfoV6', NULL, '2020-10-05 19:01:53', '2020-10-05 19:01:53'),
(14, 'IT1', 'it1@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$QGc4dSM39jpcgxB0VBHSfuU0gwGXafrg9oWZIa4TzkbEyhuGk9NAe', 'gFrRqkfPabKM6IM5mdnUtPSG8Fjotf09tLoBHl4hceyJbuuy6ZsmEwCHSq5C', '2020-10-06 16:21:08', '2020-10-06 16:21:08'),
(15, 'DC Jhenaidah', 'jhenaidah_dc@mopa.gov.bd', 3, 14, 1, NULL, '$2y$10$hx.7VfOhWdh28xZnHD5OzOuVgKH6/XyHFblyGbfExmPnCi6nl/emS', 'lbyiL0gfmRCHUl6oSvvT1pjsNXQlcySkv6hxkArjfPxdCgMfCf6z1T1M1Wcw', '2020-10-06 16:22:10', '2020-10-06 16:22:10'),
(16, 'DC Kushtia', 'dc_kushtia@mopa.gov.bd', 3, 14, 1, NULL, '$2y$10$364pNjzeC4VZdxCVE/QF/u8GRAyTWpOIuv.bX4k0JJH.BpMg/p9ke', NULL, '2020-10-06 16:28:15', '2020-10-06 16:28:15'),
(17, 'IT2', 'it2@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$joFyeU1CKpMn8fp0xDslS.izouQxxw05OjOQgHjYN/peS63vjzKc.', NULL, '2020-10-06 16:31:37', '2020-10-06 16:31:37'),
(18, 'DC Khulna', 'dc_khulna@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$I1X7lTCSxUbSajJlRW3JOulYOWg/7DRtCf8pYiVtBDkQbj4SaoPJu', NULL, '2020-10-12 07:16:17', '2020-10-13 05:28:44'),
(19, 'AO DC Khulna', 'ao_dc_khulna@mopa.gov.bd', 3, 18, 1, NULL, '$2y$10$a6bXo/QPc6xT8VlRLXvvCewgk7Y8zR.D5LzI0SwVqDdaAt3ufAAya', 'WEZtK0vAxmP5ADJyQiwb7auHm26LsST9in4tyQZksvli3M0zkM0Z91WWtb3w', '2020-10-12 07:18:29', '2020-10-12 07:18:29'),
(20, 'PO DC Khulna', 'po_dc_khulna@mopa.gov.bd', 3, 18, 1, NULL, '$2y$10$my.QaVAJA4RtWMoDcUReJeV8KGxfPgVKk7x/LbBnAq0oAGZvwNBFC', NULL, '2020-10-12 07:27:51', '2020-10-12 07:27:51'),
(21, 'IT3', 'it3@mopa.gov.bd', 2, 0, 1, NULL, '$2y$10$xhPZwBz/LNXQP8AL9YOm4e/xNVOYSybM7eTfnuFqbkhePHwSWFeZS', NULL, '2020-10-13 05:56:19', '2020-10-13 06:12:48'),
(22, 'DC Jhenaidah', 'dcjhenaidah@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$ko4hPdotz8FfA.yuwe5.LuKjOomdyJBsNIZpu4Bec.Uu/s0Ab9.H2', NULL, '2020-10-13 06:08:45', '2020-10-15 05:58:48'),
(23, 'DC Kushtia', 'dckushtia@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$quZZYx0vPBEofiFrqPVRUO1R9mfXXRwEYfxuI5BYr9LoKwouCXHCu', NULL, '2020-10-13 06:09:21', '2020-10-13 06:09:21'),
(24, 'AO DC Faridpur', 'ao_dc_faridpur@mopa.gov.bd', 2, 1, 1, NULL, '$2y$10$k2TFDeJ/9uwgOP48T0XZ5uScNc0NQSP4ovfaPld.n7t1CoyJURs7i', NULL, '2020-10-14 06:54:02', '2020-10-14 06:54:02'),
(25, 'it3user', 'it3user@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$kOm1fRUgjfqBfs0ySl.NNebE0dMI3Xc20mjR57iLZ8VtdZaZUvpGa', NULL, '2020-10-15 05:59:59', '2020-10-15 05:59:59'),
(26, 'DC Jessore', 'dcjessore@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$TxI1ajYneMaM/WvUAWHDGe4yRNY03EEH/mfc3fr8uTprnLsOnlfqS', NULL, '2020-10-18 05:29:51', '2020-11-03 05:19:59'),
(27, 'IT4', 'it4@mopa.gov.bd', 2, 1, 1, NULL, '$2y$10$gcJfda3UBVf9aZu1XHr1POBMX/pyoH8j2eG1XaQ2jQK6h75nmCo42', NULL, '2020-10-25 08:46:40', '2020-10-25 08:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `action_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `description`, `action_time`, `ip_address`, `created_at`, `updated_at`) VALUES
(7, 21, 'GO View', '2020-11-01 08:57:52', NULL, '2020-11-01 08:57:52', '2020-11-01 08:57:52'),
(8, 21, 'GO View', '2020-11-01 08:59:42', '127.0.0.1', '2020-11-01 08:59:42', '2020-11-01 08:59:42'),
(9, 21, 'GO View', '2020-11-01 09:00:17', '127.0.0.1', '2020-11-01 09:00:17', '2020-11-01 09:00:17'),
(10, 21, 'GO View', '2020-11-01 09:00:33', '127.0.0.1', '2020-11-01 09:00:33', '2020-11-01 09:00:33'),
(11, 21, 'GO View', '2020-11-01 09:00:46', '127.0.0.1', '2020-11-01 09:00:46', '2020-11-01 09:00:46'),
(12, 21, 'Training create 33', '2020-11-01 09:03:07', '127.0.0.1', '2020-11-01 09:03:07', '2020-11-01 09:03:07'),
(13, 21, 'Training create 34', '2020-11-01 09:38:31', '127.0.0.1', '2020-11-01 09:38:31', '2020-11-01 09:38:31'),
(14, 21, 'Training update 34', '2020-11-01 09:38:44', '127.0.0.1', '2020-11-01 09:38:44', '2020-11-01 09:38:44'),
(15, 21, 'Training publish 34', '2020-11-01 09:38:52', '127.0.0.1', '2020-11-01 09:38:52', '2020-11-01 09:38:52'),
(16, 21, 'Training publish 30', '2020-11-01 09:39:00', '127.0.0.1', '2020-11-01 09:39:00', '2020-11-01 09:39:00'),
(17, 21, 'Training delete 26', '2020-11-01 09:39:14', '127.0.0.1', '2020-11-01 09:39:14', '2020-11-01 09:39:14'),
(18, 25, 'Nomination information save. Training id: 34', '2020-11-01 09:41:24', '127.0.0.1', '2020-11-01 09:41:24', '2020-11-01 09:41:24'),
(19, 21, 'Training close 34', '2020-11-01 09:41:49', '127.0.0.1', '2020-11-01 09:41:49', '2020-11-01 09:41:49'),
(20, 21, 'Candidate Selection save. Training id: 34', '2020-11-01 09:42:01', '127.0.0.1', '2020-11-01 09:42:01', '2020-11-01 09:42:01'),
(21, 21, 'Training make final 34', '2020-11-01 09:42:05', '127.0.0.1', '2020-11-01 09:42:05', '2020-11-01 09:42:05'),
(22, 21, 'GO information save 12', '2020-11-01 09:42:26', '127.0.0.1', '2020-11-01 09:42:26', '2020-11-01 09:42:26'),
(23, 21, 'Training Draft Go create.34', '2020-11-01 09:42:38', '127.0.0.1', '2020-11-01 09:42:38', '2020-11-01 09:42:38'),
(24, 21, 'Training Go create.34', '2020-11-01 09:42:52', '127.0.0.1', '2020-11-01 09:42:52', '2020-11-01 09:42:52'),
(25, 1, 'Candidate list export. Training id: 31', '2020-11-02 07:24:57', '127.0.0.1', '2020-11-02 07:24:57', '2020-11-02 07:24:57'),
(26, 1, 'GO View', '2020-11-02 07:28:33', '127.0.0.1', '2020-11-02 07:28:33', '2020-11-02 07:28:33'),
(27, 1, 'GO View', '2020-11-02 07:28:55', '127.0.0.1', '2020-11-02 07:28:55', '2020-11-02 07:28:55'),
(28, 1, 'GO View', '2020-11-02 07:31:50', '127.0.0.1', '2020-11-02 07:31:50', '2020-11-02 07:31:50'),
(29, 1, 'GO View', '2020-11-02 07:32:13', '127.0.0.1', '2020-11-02 07:32:13', '2020-11-02 07:32:13'),
(30, 1, 'GO View', '2020-11-02 07:32:22', '127.0.0.1', '2020-11-02 07:32:22', '2020-11-02 07:32:22'),
(31, 1, 'GO View', '2020-11-02 07:32:27', '127.0.0.1', '2020-11-02 07:32:27', '2020-11-02 07:32:27'),
(32, 1, 'GO View', '2020-11-02 07:32:43', '127.0.0.1', '2020-11-02 07:32:43', '2020-11-02 07:32:43'),
(33, 1, 'GO View', '2020-11-02 07:33:59', '127.0.0.1', '2020-11-02 07:33:59', '2020-11-02 07:33:59'),
(34, 25, 'Nomination information save. Training id: 33', '2020-11-02 10:24:06', '127.0.0.1', '2020-11-02 10:24:06', '2020-11-02 10:24:06'),
(35, 21, 'Training close 33', '2020-11-02 10:25:09', '127.0.0.1', '2020-11-02 10:25:09', '2020-11-02 10:25:09'),
(36, 21, 'Candidate Selection save. Training id: 33', '2020-11-02 10:25:17', '127.0.0.1', '2020-11-02 10:25:17', '2020-11-02 10:25:17'),
(37, 21, 'Training create 35', '2020-11-03 04:46:40', '192.168.11.120', '2020-11-03 04:46:40', '2020-11-03 04:46:40'),
(38, 21, 'Training publish 35', '2020-11-03 04:46:45', '192.168.11.120', '2020-11-03 04:46:45', '2020-11-03 04:46:45'),
(39, 25, 'Nomination information save. Training id: 35', '2020-11-03 04:52:00', '192.168.11.240', '2020-11-03 04:52:00', '2020-11-03 04:52:00'),
(40, 22, 'Nomination information save. Training id: 35', '2020-11-03 05:07:16', '192.168.11.171', '2020-11-03 05:07:16', '2020-11-03 05:07:16'),
(41, 26, 'Nomination information save. Training id: 35', '2020-11-03 05:16:12', '192.168.11.130', '2020-11-03 05:16:12', '2020-11-03 05:16:12'),
(42, 23, 'Nomination information save. Training id: 35', '2020-11-03 05:24:47', '192.168.11.187', '2020-11-03 05:24:47', '2020-11-03 05:24:47'),
(43, 21, 'Training close 35', '2020-11-03 05:25:27', '192.168.11.120', '2020-11-03 05:25:27', '2020-11-03 05:25:27'),
(44, 21, 'Candidate Selection save. Training id: 35', '2020-11-03 05:25:38', '192.168.11.120', '2020-11-03 05:25:38', '2020-11-03 05:25:38'),
(45, 21, 'Training make final 35', '2020-11-03 05:25:43', '192.168.11.120', '2020-11-03 05:25:43', '2020-11-03 05:25:43'),
(46, 21, 'GO information save 13', '2020-11-03 05:29:37', '192.168.11.120', '2020-11-03 05:29:37', '2020-11-03 05:29:37'),
(47, 21, 'Training Draft Go create.35', '2020-11-03 05:30:54', '192.168.11.120', '2020-11-03 05:30:54', '2020-11-03 05:30:54'),
(48, 21, 'Training Go create.35', '2020-11-03 05:31:09', '192.168.11.120', '2020-11-03 05:31:09', '2020-11-03 05:31:09'),
(49, 1, 'Candidate list export. Training id: 35', '2020-11-03 05:52:14', '192.168.11.157', '2020-11-03 05:52:14', '2020-11-03 05:52:14'),
(50, 1, 'Training Go create.35', '2020-11-03 05:53:14', '192.168.11.157', '2020-11-03 05:53:14', '2020-11-03 05:53:14'),
(51, 21, 'Training create 36', '2020-11-03 06:00:40', '192.168.11.157', '2020-11-03 06:00:40', '2020-11-03 06:00:40'),
(52, 21, 'Training publish 36', '2020-11-03 06:03:17', '192.168.11.157', '2020-11-03 06:03:17', '2020-11-03 06:03:17'),
(53, 25, 'Nomination information save. Training id: 36', '2020-11-03 06:05:33', '192.168.11.119', '2020-11-03 06:05:33', '2020-11-03 06:05:33'),
(54, 21, 'Training close 36', '2020-11-03 06:05:51', '192.168.11.157', '2020-11-03 06:05:51', '2020-11-03 06:05:51'),
(55, 21, 'Candidate Selection save. Training id: 36', '2020-11-03 06:07:26', '192.168.11.157', '2020-11-03 06:07:26', '2020-11-03 06:07:26'),
(56, 21, 'Training make final 36', '2020-11-03 06:07:36', '192.168.11.157', '2020-11-03 06:07:36', '2020-11-03 06:07:36'),
(57, 21, 'Candidate list export. Training id: 36', '2020-11-03 06:07:55', '192.168.11.157', '2020-11-03 06:07:55', '2020-11-03 06:07:55'),
(58, 21, 'GO information save 14', '2020-11-03 06:11:12', '192.168.11.157', '2020-11-03 06:11:12', '2020-11-03 06:11:12'),
(59, 21, 'Training Draft Go create.36', '2020-11-03 06:11:56', '192.168.11.157', '2020-11-03 06:11:56', '2020-11-03 06:11:56'),
(60, 21, 'Training Go create.36', '2020-11-03 06:12:43', '192.168.11.157', '2020-11-03 06:12:43', '2020-11-03 06:12:43'),
(61, 21, 'Training Draft Go create.36', '2020-11-03 06:14:05', '192.168.11.157', '2020-11-03 06:14:05', '2020-11-03 06:14:05'),
(62, 21, 'Training Go create.35', '2020-11-03 06:15:11', '192.168.11.157', '2020-11-03 06:15:11', '2020-11-03 06:15:11'),
(63, 21, 'Training Report create.', '2020-11-03 06:17:33', '192.168.11.157', '2020-11-03 06:17:33', '2020-11-03 06:17:33'),
(64, 21, 'GO View', '2020-11-03 06:19:37', '192.168.11.157', '2020-11-03 06:19:37', '2020-11-03 06:19:37'),
(65, 1, 'GO View', '2020-11-03 06:30:36', '192.168.11.119', '2020-11-03 06:30:36', '2020-11-03 06:30:36'),
(66, 1, 'GO View', '2020-11-03 06:30:38', '192.168.11.119', '2020-11-03 06:30:38', '2020-11-03 06:30:38'),
(67, 21, 'GO View', '2020-11-03 06:31:23', '192.168.11.157', '2020-11-03 06:31:23', '2020-11-03 06:31:23'),
(68, 21, 'GO View', '2020-11-03 06:31:32', '192.168.11.157', '2020-11-03 06:31:32', '2020-11-03 06:31:32'),
(69, 25, 'Nomination information save. Training id: 30', '2020-11-03 07:25:30', '127.0.0.1', '2020-11-03 07:25:30', '2020-11-03 07:25:30'),
(70, 1, 'Training type create 5', '2020-11-03 09:47:06', '127.0.0.1', '2020-11-03 09:47:06', '2020-11-03 09:47:06'),
(71, 1, 'Training type update 5', '2020-11-03 09:47:51', '127.0.0.1', '2020-11-03 09:47:51', '2020-11-03 09:47:51'),
(72, 21, 'Training create 37', '2020-11-03 09:54:55', '127.0.0.1', '2020-11-03 09:54:55', '2020-11-03 09:54:55'),
(73, 21, 'Training create 38', '2020-11-03 09:58:53', '127.0.0.1', '2020-11-03 09:58:53', '2020-11-03 09:58:53'),
(74, 21, 'Training update 38', '2020-11-03 10:33:02', '127.0.0.1', '2020-11-03 10:33:02', '2020-11-03 10:33:02'),
(75, 21, 'Training update 38', '2020-11-03 10:33:55', '127.0.0.1', '2020-11-03 10:33:55', '2020-11-03 10:33:55'),
(76, 21, 'Training publish 37', '2020-11-08 06:20:44', '127.0.0.1', '2020-11-08 06:20:44', '2020-11-08 06:20:44'),
(77, 21, 'Training close 37', '2020-11-08 06:20:59', '127.0.0.1', '2020-11-08 06:20:59', '2020-11-08 06:20:59'),
(78, 25, 'Nomination information save. Training id: 37', '2020-11-08 06:24:00', '127.0.0.1', '2020-11-08 06:24:00', '2020-11-08 06:24:00'),
(79, 21, 'Training close 37', '2020-11-08 06:24:08', '127.0.0.1', '2020-11-08 06:24:08', '2020-11-08 06:24:08'),
(80, 21, 'Candidate Selection save. Training id: 37', '2020-11-08 06:24:17', '127.0.0.1', '2020-11-08 06:24:17', '2020-11-08 06:24:17'),
(81, 21, 'Training make final 37', '2020-11-08 06:24:19', '127.0.0.1', '2020-11-08 06:24:19', '2020-11-08 06:24:19'),
(82, 21, 'Training Go create.28', '2020-11-08 06:37:25', '127.0.0.1', '2020-11-08 06:37:25', '2020-11-08 06:37:25'),
(83, 21, 'GO information (template) save 7', '2020-11-08 06:41:22', '127.0.0.1', '2020-11-08 06:41:22', '2020-11-08 06:41:22'),
(84, 21, 'GO information save 15', '2020-11-08 06:42:22', '127.0.0.1', '2020-11-08 06:42:22', '2020-11-08 06:42:22'),
(85, 21, 'GO information (template) save 8', '2020-11-08 06:54:42', '127.0.0.1', '2020-11-08 06:54:42', '2020-11-08 06:54:42'),
(86, 21, 'Training Draft Go create.37', '2020-11-08 07:00:10', '127.0.0.1', '2020-11-08 07:00:10', '2020-11-08 07:00:10'),
(87, 21, 'GO information (template) save 9', '2020-11-08 07:02:21', '127.0.0.1', '2020-11-08 07:02:21', '2020-11-08 07:02:21'),
(88, 21, 'GO information save 16', '2020-11-08 07:03:24', '127.0.0.1', '2020-11-08 07:03:24', '2020-11-08 07:03:24'),
(89, 21, 'Training Go create.36', '2020-11-08 07:11:28', '127.0.0.1', '2020-11-08 07:11:28', '2020-11-08 07:11:28'),
(90, 21, 'Training Go create.37', '2020-11-08 07:11:30', '127.0.0.1', '2020-11-08 07:11:30', '2020-11-08 07:11:30'),
(91, 21, 'Training Go create.37', '2020-11-08 07:23:48', '127.0.0.1', '2020-11-08 07:23:48', '2020-11-08 07:23:48'),
(92, 21, 'Training Draft Go create.37', '2020-11-08 07:24:10', '127.0.0.1', '2020-11-08 07:24:10', '2020-11-08 07:24:10'),
(93, 21, 'GO information (template) save 10', '2020-11-08 07:44:23', '127.0.0.1', '2020-11-08 07:44:23', '2020-11-08 07:44:23'),
(94, 21, 'GO information (template) update 5', '2020-11-08 07:52:04', '127.0.0.1', '2020-11-08 07:52:04', '2020-11-08 07:52:04'),
(95, 21, 'GO information save 17', '2020-11-08 09:44:23', '127.0.0.1', '2020-11-08 09:44:23', '2020-11-08 09:44:23'),
(96, 21, 'Training Draft Go create.37', '2020-11-08 09:45:32', '127.0.0.1', '2020-11-08 09:45:32', '2020-11-08 09:45:32'),
(97, 21, 'Training make final 33', '2020-11-08 09:56:21', '127.0.0.1', '2020-11-08 09:56:21', '2020-11-08 09:56:21'),
(98, 21, 'GO information (template) save 11', '2020-11-08 10:02:56', '127.0.0.1', '2020-11-08 10:02:56', '2020-11-08 10:02:56'),
(99, 21, 'GO information save 18', '2020-11-08 10:03:30', '127.0.0.1', '2020-11-08 10:03:30', '2020-11-08 10:03:30'),
(100, 21, 'GO information save 19', '2020-11-08 10:07:13', '127.0.0.1', '2020-11-08 10:07:13', '2020-11-08 10:07:13'),
(101, 21, 'GO information save 20', '2020-11-08 10:09:24', '127.0.0.1', '2020-11-08 10:09:24', '2020-11-08 10:09:24'),
(102, 21, 'GO information save 21', '2020-11-08 10:11:20', '127.0.0.1', '2020-11-08 10:11:20', '2020-11-08 10:11:20'),
(103, 21, 'GO information save 22', '2020-11-08 10:18:01', '127.0.0.1', '2020-11-08 10:18:01', '2020-11-08 10:18:01'),
(104, 21, 'GO information (template) save 12', '2020-11-08 10:25:44', '127.0.0.1', '2020-11-08 10:25:44', '2020-11-08 10:25:44'),
(105, 21, 'GO information save 23', '2020-11-08 10:31:34', '127.0.0.1', '2020-11-08 10:31:34', '2020-11-08 10:31:34'),
(106, 21, 'Training Go create.37', '2020-11-08 10:40:52', '127.0.0.1', '2020-11-08 10:40:52', '2020-11-08 10:40:52'),
(107, 21, 'GO information save 24', '2020-11-08 10:42:28', '127.0.0.1', '2020-11-08 10:42:28', '2020-11-08 10:42:28'),
(108, 21, 'Training Draft Go create.36', '2020-11-08 10:42:38', '127.0.0.1', '2020-11-08 10:42:38', '2020-11-08 10:42:38'),
(109, 21, 'Training Draft Go create.35', '2020-11-08 10:43:04', '127.0.0.1', '2020-11-08 10:43:04', '2020-11-08 10:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_bangla` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `department_bangla` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `designation_bangla` text NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `name`, `name_bangla`, `department`, `department_bangla`, `designation`, `designation_bangla`, `contact_no`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 21, 'Md. Abdur Rouf Mia', 'মোঃ আবদুর রব মিয়া', 'Internal Training - 1', 'অভ্যন্তরীণ প্রশিক্ষণ-১ মোপা', 'Deputy Secretary', 'উপসচিব', '+88029515525', 'it3@mopa.gov.bd', 1, '2020-10-22 06:39:08', '2020-11-01 06:06:06'),
(5, 27, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Internal Training 4', 'অভ্যন্তরীন প্রশিক্ষণ ৪', 'Deputy Secretary', 'উপসচিব', '০২-৯৫৪৫৩২১', 'it4@mopa.gov.bd', 1, '2020-10-27 04:10:45', '2020-10-27 04:15:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_o_information`
--
ALTER TABLE `g_o_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g_o_information_templates`
--
ALTER TABLE `g_o_information_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nominations`
--
ALTER TABLE `nominations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nomination_details`
--
ALTER TABLE `nomination_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_o_information`
--
ALTER TABLE `g_o_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `g_o_information_templates`
--
ALTER TABLE `g_o_information_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nominations`
--
ALTER TABLE `nominations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `nomination_details`
--
ALTER TABLE `nomination_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
