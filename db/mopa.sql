-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2020 at 11:44 AM
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
(15, 30, '1603338876.it1-2020-141.PDF', 0, '2020-10-22 03:54:36', '2020-10-22 03:54:36');

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
  `publish_date` date NOT NULL,
  `go_number` varchar(100) NOT NULL,
  `publish_date_bangla` varchar(100) NOT NULL,
  `publish_date_english` varchar(100) NOT NULL,
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

INSERT INTO `g_o_information` (`id`, `admin_id`, `training_id`, `status`, `publish_date`, `go_number`, `publish_date_bangla`, `publish_date_english`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(4, 21, 28, 1, '2020-10-21', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '০৫ কার্তিক ১৪২৭', '২১ অক্টোবর ২০২০', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান করা হল।</p>', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>২।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৩।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৪।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৫।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৬।&nbsp; &nbsp; \'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৭।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; মন্ত্রিপরিষদ সচিব, মন্ত্রিপরিষদ বিভাগ/প্রধানমন্ত্রীর মুখ্য সচিব, প্রধানমন্ত্রীর কার্যালয়, ঢাকা ।</p>\r\n<p>২।&nbsp; &nbsp; সিনিয়র সচিব/সচিব................................................................................................................................।</p>\r\n<p>৩।&nbsp; &nbsp; পুলিশ মহাপরিদর্শক, পুলিশ অধিদপ্তর, ঢাকা ।</p>\r\n<p>৪।&nbsp; &nbsp; বিভাগীয় কমিশনার/চেয়ারম্যান/মহাপরিচালক/ব্যবস্থাপনা পরিচালক ...................................।</p>\r\n<p>৫।&nbsp; &nbsp; পরিচালক, প্রশিক্ষণ পরিদপ্তর, সেনাবাহিনী/নৌবাহিনী/বিমানবাহিনী সদর দপ্তর ।</p>\r\n<p>৬।&nbsp; &nbsp; পরিচালক (পিপিআর), বিপিএটিসি।</p>\r\n<p>৭।&nbsp; &nbsp; জনাব...........................................................................................................................................।</p>\r\n<p>৮।&nbsp; &nbsp; সচিব মহোদয়ের একান্ত সচিব, জনপ্রশাসন মন্ত্রণালয়(সচিব মহোদয়ের অবগতির জন্য)</p>\r\n<p>৯।&nbsp; &nbsp; সিনিয়র সহকারী সচিব, (প্রশাসন-২(৪) অধিশাখা, জনপ্রশাসন মন্ত্রণালয় [])</p>', '<p>রেক্টর</p>\r\n<p>বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</p>\r\n<p>সাভার, ঢাকা।</p>', '2020-10-21 09:52:47', '2020-10-21 10:26:42'),
(7, 21, 27, 1, '2020-10-22', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '৭ কার্তিক ১৪২৭', '২২ অক্টোবর ২০২০', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ বর্ধিত মনোনয়ন।</p>', '<p><span style=\"font-size: 12pt;\">\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</span></p>\r\n<p><span style=\"font-size: 12pt;\">\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</span></p>', '<p>১।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>২।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৩।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৪।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৫।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৬।&nbsp; &nbsp; \'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৭।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; মন্ত্রিপরিষদ সচিব, মন্ত্রিপরিষদ বিভাগ/প্রধানমন্ত্রীর মুখ্য সচিব, প্রধানমন্ত্রীর কার্যালয়, ঢাকা ।</p>\r\n<p>২।&nbsp; &nbsp; সিনিয়র সচিব/সচিব................................................................................................................................।</p>\r\n<p>৩।&nbsp; &nbsp; পুলিশ মহাপরিদর্শক, পুলিশ অধিদপ্তর, ঢাকা ।</p>\r\n<p>৪।&nbsp; &nbsp; বিভাগীয় কমিশনার/চেয়ারম্যান/মহাপরিচালক/ব্যবস্থাপনা পরিচালক ...................................।</p>\r\n<p>৫।&nbsp; &nbsp; পরিচালক, প্রশিক্ষণ পরিদপ্তর, সেনাবাহিনী/নৌবাহিনী/বিমানবাহিনী সদর দপ্তর ।</p>\r\n<p>৬।&nbsp; &nbsp; পরিচালক (পিপিআর), বিপিএটিসি।</p>\r\n<p>৭।&nbsp; &nbsp; জনাব...........................................................................................................................................।</p>\r\n<p>৮।&nbsp; &nbsp; সচিব মহোদয়ের একান্ত সচিব, জনপ্রশাসন মন্ত্রণালয়(সচিব মহোদয়ের অবগতির জন্য)</p>\r\n<p>৯।&nbsp; &nbsp; সিনিয়র সহকারী সচিব, (প্রশাসন-২(৪) অধিশাখা, জনপ্রশাসন মন্ত্রণালয় [])</p>', '<p>রেক্টর</p>\r\n<p>বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</p>\r\n<p>সাভার, ঢাকা।</p>', '2020-10-22 03:30:21', '2020-10-22 04:28:02'),
(8, 21, 25, 1, '2020-10-22', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৯', '০৬ কার্তিক ১৪২৭', '২২ অক্টোবর ২০২০', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।1231233333</p>', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>২।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৩।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৪।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৫।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৬।&nbsp; &nbsp; \'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৭।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; মন্ত্রিপরিষদ সচিব, মন্ত্রিপরিষদ বিভাগ/প্রধানমন্ত্রীর মুখ্য সচিব, প্রধানমন্ত্রীর কার্যালয়, ঢাকা ।</p>\r\n<p>২।&nbsp; &nbsp; সিনিয়র সচিব/সচিব................................................................................................................................।</p>\r\n<p>৩।&nbsp; &nbsp; পুলিশ মহাপরিদর্শক, পুলিশ অধিদপ্তর, ঢাকা ।</p>\r\n<p>৪।&nbsp; &nbsp; বিভাগীয় কমিশনার/চেয়ারম্যান/মহাপরিচালক/ব্যবস্থাপনা পরিচালক ...................................।</p>\r\n<p>৫।&nbsp; &nbsp; পরিচালক, প্রশিক্ষণ পরিদপ্তর, সেনাবাহিনী/নৌবাহিনী/বিমানবাহিনী সদর দপ্তর ।</p>\r\n<p>৬।&nbsp; &nbsp; পরিচালক (পিপিআর), বিপিএটিসি।</p>\r\n<p>৭।&nbsp; &nbsp; জনাব...........................................................................................................................................।</p>\r\n<p>৮।&nbsp; &nbsp; সচিব মহোদয়ের একান্ত সচিব, জনপ্রশাসন মন্ত্রণালয়(সচিব মহোদয়ের অবগতির জন্য)</p>\r\n<p>৯।&nbsp; &nbsp; সিনিয়র সহকারী সচিব, (প্রশাসন-২(৪) অধিশাখা, জনপ্রশাসন মন্ত্রণালয় [])</p>', '<p>রেক্টর</p>\r\n<p>বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</p>\r\n<p>সাভার, ঢাকা।</p>', '2020-10-22 04:33:51', '2020-10-22 04:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `g_o_information_templates`
--

CREATE TABLE `g_o_information_templates` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `publish_date` date NOT NULL,
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

INSERT INTO `g_o_information_templates` (`id`, `admin_id`, `publish_date`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(5, 21, '2020-10-21', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।asdfasdf</p>', '<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>২।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৩।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৪।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৫।&nbsp; &nbsp;&nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৬।&nbsp; &nbsp; \'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>\r\n<p>৭।&nbsp; &nbsp; &nbsp;\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।</p>', '<p>১।&nbsp; &nbsp; মন্ত্রিপরিষদ সচিব, মন্ত্রিপরিষদ বিভাগ/প্রধানমন্ত্রীর মুখ্য সচিব, প্রধানমন্ত্রীর কার্যালয়, ঢাকা ।</p>\r\n<p>২।&nbsp; &nbsp; সিনিয়র সচিব/সচিব................................................................................................................................।</p>\r\n<p>৩।&nbsp; &nbsp; পুলিশ মহাপরিদর্শক, পুলিশ অধিদপ্তর, ঢাকা ।</p>\r\n<p>৪।&nbsp; &nbsp; বিভাগীয় কমিশনার/চেয়ারম্যান/মহাপরিচালক/ব্যবস্থাপনা পরিচালক ...................................।</p>\r\n<p>৫।&nbsp; &nbsp; পরিচালক, প্রশিক্ষণ পরিদপ্তর, সেনাবাহিনী/নৌবাহিনী/বিমানবাহিনী সদর দপ্তর ।</p>\r\n<p>৬।&nbsp; &nbsp; পরিচালক (পিপিআর), বিপিএটিসি।</p>\r\n<p>৭।&nbsp; &nbsp; জনাব...........................................................................................................................................।</p>\r\n<p>৮।&nbsp; &nbsp; সচিব মহোদয়ের একান্ত সচিব, জনপ্রশাসন মন্ত্রণালয়(সচিব মহোদয়ের অবগতির জন্য)</p>\r\n<p>৯।&nbsp; &nbsp; সিনিয়র সহকারী সচিব, (প্রশাসন-২(৪) অধিশাখা, জনপ্রশাসন মন্ত্রণালয় [])</p>', '<p>রেক্টর</p>\r\n<p>বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</p>\r\n<p>সাভার, ঢাকা।</p>', '2020-10-20 05:14:22', '2020-10-21 06:52:35');

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
(18, 28, 21, 25, 0, '2020-10-20 07:00:23', '2020-10-20 07:00:23');

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
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nomination_details`
--

INSERT INTO `nomination_details` (`id`, `status`, `training_id`, `nomination_id`, `admin_id`, `user_id`, `id_no`, `name`, `name_bangla`, `designation`, `designation_bangla`, `contact_no`, `email`, `working_place`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 22, 2, 18, 19, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Asst. Prog', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC, MOPA', '2020-10-13 05:00:50', '2020-10-15 10:10:38', NULL),
(2, 1, 22, 2, 18, 19, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC, MOPA', '2020-10-13 05:00:50', '2020-10-15 10:10:38', NULL),
(3, 1, 23, 3, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', '2020-10-13 06:16:39', '2020-10-20 10:09:20', NULL),
(4, 1, 23, 3, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'Public Administration Computer Center, MOPA', '2020-10-13 06:16:39', '2020-10-20 10:09:20', NULL),
(5, 0, 23, 4, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@mopa.gov.bd', 'PACC, MOPA', '2020-10-13 06:23:01', '2020-10-20 10:09:20', NULL),
(6, 1, 23, 4, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC, MOPA', '2020-10-13 06:23:01', '2020-10-20 10:09:20', NULL),
(7, 0, 24, 6, 21, 25, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC, MOPA', '2020-10-15 06:06:54', '2020-10-15 06:59:04', '2020-10-15 06:58:58'),
(8, 1, 24, 6, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'rakib@gmail.com', 'PACC, MOPA', '2020-10-15 06:06:54', '2020-10-20 10:39:50', NULL),
(9, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:10:41', '2020-10-15 07:21:07', '2020-10-14 18:00:00'),
(10, 0, 22, 8, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:35:22', '2020-10-15 07:35:44', '2020-10-15 07:35:44'),
(11, 0, 22, 9, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:35:44', '2020-10-15 07:37:20', '2020-10-15 07:37:20'),
(12, 0, 22, 9, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:35:44', '2020-10-15 07:37:20', '2020-10-15 07:37:20'),
(13, 0, 22, 10, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:37:20', '2020-10-15 07:40:24', '2020-10-15 07:40:24'),
(14, 0, 22, 11, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:42:40', '2020-10-15 07:42:56', '2020-10-15 07:42:56'),
(15, 0, 22, 12, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:42:56', '2020-10-15 07:43:18', '2020-10-15 07:43:18'),
(16, 0, 22, 13, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:43:18', '2020-10-15 07:43:44', '2020-10-15 07:43:44'),
(17, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 07:43:44', '2020-10-15 08:05:59', '2020-10-15 08:05:59'),
(18, 0, 22, 7, 18, 25, 121212, 'asdf', 'asd', 'asdf', 'asd', '0123456789', 'asd@asdf.asdf', 'asd', '2020-10-15 08:05:59', '2020-10-15 10:10:38', NULL),
(19, 1, 25, 14, 21, 22, 700029, 'S. M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', '2020-10-18 05:03:47', '2020-10-18 05:35:10', NULL),
(20, 1, 25, 14, 21, 22, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', '2020-10-18 05:03:47', '2020-10-18 05:35:10', NULL),
(21, 1, 25, 15, 21, 23, 1111, 'Mr. Rahim', 'রহিম', 'AP', 'আডমিন', '01301121212', 'rahim@gmail.com', 'DC Office Kushtia', '2020-10-18 05:26:16', '2020-10-18 05:35:10', NULL),
(22, 1, 25, 15, 21, 23, 1520, 'Mr. Karim', 'করিম', 'Admin', 'অ্যাডমিন', '01302121212', 'karim@mopa.gov.bd', 'UNO, Kushtia', '2020-10-18 05:26:16', '2020-10-18 05:35:10', NULL),
(23, 1, 25, 16, 21, 26, 3250, 'Mr. Jabed', 'যাবেদ', 'CO', 'কম্পিউটার অপারেটর', '01520101210', 'jabed@mopa.gov.bd', 'DC Office, Jessore', '2020-10-18 05:33:50', '2020-10-18 05:35:10', NULL),
(24, 0, 25, 16, 21, 26, 1582, 'Mr. Saber', 'সাবের', 'Data entry operator', 'ডাটা এন্টি', '01256232110', 'saber@mopa.gov.bd', 'DC Office, Jessore', '2020-10-18 05:33:50', '2020-10-18 05:35:10', NULL),
(25, 1, 27, 17, 21, 25, 700011, 'Md. Liquat Ali', 'asdf', 'AP', 'asdf', '01741607831', 'liquat@gmail.com', 'PACC', '2020-10-20 06:53:42', '2020-10-20 06:54:24', NULL),
(26, 1, 28, 18, 21, 25, 700022, 'asdfadf', 'asdf', 'asdf', 'asdf', '01741607831', 'asd@asd.com', 'asdf', '2020-10-20 07:00:23', '2020-10-20 08:15:52', NULL);

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
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title`, `issue_no`, `issue_date`, `archive_date`, `status`, `admin_id`, `remarks`, `created_at`, `updated_at`) VALUES
(21, '\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।', 116, '2020-10-07', '2020-11-06', 1, 14, 'important', '2020-10-07 17:20:36', '2020-10-09 20:04:13'),
(22, '\'৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)\'- এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।', 116, '2020-10-07', '2020-10-12', 4, 18, NULL, '2020-10-12 07:17:41', '2020-10-18 04:42:40'),
(23, '১৩০তম উচ্চতর প্রশাসন ও উন্নয়ন কোর্স (এসিএডি)-এ অংশগ্রহণে আগ্রহী কর্মকর্তাগণের নিকট থেকে আবেদনপত্র আহ্বান।', 117, '2020-09-28', '2020-10-28', 4, 21, 'This is very important', '2020-10-13 06:06:54', '2020-10-20 10:09:24'),
(24, 'স্থগিতকৃত ১২৯ তম এসিএডি ও ৯৪ তম এসএসসি তে পুনরায় অংশগ্রহণ সংক্রান্ত অফিস আদেশ।', 88, '2020-08-31', '2020-10-31', 4, 21, 'This training is important for candidates', '2020-10-13 06:11:32', '2020-10-20 10:39:53'),
(25, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" শীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 73, '2020-10-01', '2020-10-31', 4, 21, NULL, '2020-10-18 04:55:15', '2020-10-18 05:35:18'),
(26, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" \r\n\r\n\r\n\r\nশীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 151, '2020-10-01', '2020-10-28', 1, 21, NULL, '2020-10-19 08:02:08', '2020-10-20 10:46:50'),
(27, '\"বিসিএস ক্যাডার কর্মকর্তাদের সক্ষমতা বৃদ্ধির মাধ্যমে সরকারকে শক্তিশালীকরণ- ২য় পর্যায় (১ম সংশোধিত)\" শীর্ষক প্রকল্পের আওতায় ২০২০-২০২১ অর্থবছরে বৈদেশিক শর্ট কোর্সের বিজ্ঞপ্তি', 256, '2020-10-01', '2020-10-27', 4, 21, NULL, '2020-10-20 06:51:24', '2020-10-20 06:54:33'),
(28, 'স্থগিতকৃত ১২৯ তম এসিএডি ও ৯৪ তম এসএসসি তে পুনরায় অংশগ্রহণ সংক্রান্ত অফিস আদেশ।', 125, '2020-10-01', '2020-10-28', 4, 21, NULL, '2020-10-20 06:59:36', '2020-10-20 08:15:55'),
(29, 'asdf asd fasdf asf asdf', 12, '2020-10-01', '2020-10-27', 1, 21, NULL, '2020-10-22 03:53:44', '2020-10-22 03:54:08'),
(30, 'asdf asd fasdf asf asdfasdfasfasdf', 122, '2020-10-01', '2020-10-28', 0, 21, NULL, '2020-10-22 03:54:36', '2020-10-22 03:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` int(11) NOT NULL,
  `training_type` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `training_type`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BPATC', 1, 1, '2020-10-14 10:42:36', '2020-10-15 04:51:26'),
(2, 'ADC', 1, 1, '2020-10-14 10:44:08', '2020-10-15 04:55:46'),
(3, 'Foreign', 1, 1, '2020-10-14 10:45:38', '2020-10-15 05:12:57'),
(4, 'Law', 1, 1, '2020-10-14 10:47:47', '2020-10-15 05:13:29');

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
(1, 'Super Admin', 'mri.rakib@gmail.com', 1, NULL, 1, '2020-09-25 12:23:24', '$2y$10$jSL6eFclY0T5Ht2XQMkv9.UEOLWNuBD3r2t2mpCPe9VK2e0rcJfT.', 'xoazeduEwhxK7KlwAdb7Gj2JSKMFfJwocHqBr1infAITMoDZxGXH9s7QTotc', '2020-09-25 12:22:12', '2020-10-13 05:57:15'),
(2, 'Rahim2 Admin User', 'rahim@gmail.com', 2, NULL, 1, '2020-10-04 17:59:06', '$2y$10$9AupoyIIW2me25iyI6OWDu87cWBVOjywE38uFngDPx/xyPbbHYc.K', 'dACqiS30iZzNGWbZkfIZgYf6e0sja59ZV7iXCofaNHyNptvXRaTabJxROJ6d', '2020-10-04 17:58:39', '2020-10-14 08:25:55'),
(11, 'Rahim Normal User', 'rahim2@gmail.com', 3, 14, 1, NULL, '$2y$10$.0A0UocGyodpqh7q17s.6ehTbaWTVI8THVTBZmfGJVuLPkVIwdhna', 'IQZ6axemxGRxzsHjXZ2ELScpxyPWteIrR8eME7VbImQpaQXCDYKi2SzNp5ea', '2020-10-05 17:39:48', '2020-10-22 04:48:07'),
(12, 'Rahim3 Admin User', 'rahim3@gmail.com', 2, NULL, 1, NULL, '$2y$10$ePPYWc2OhqANfDkkUxj7Vu4nuvfuJvR0lDbeQNGiitkHOvVLpC.r2', NULL, '2020-10-05 18:11:56', '2020-10-14 09:43:54'),
(13, 'Rahim4', 'rahim4@gmail.com', 2, NULL, 1, NULL, '$2y$10$qfY/MmtitoiMvjlGMSqMd.DbdF6xgQv8ltsl.QCcjNlKrmG1SfoV6', NULL, '2020-10-05 19:01:53', '2020-10-05 19:01:53'),
(14, 'IT1', 'it1@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$QGc4dSM39jpcgxB0VBHSfuU0gwGXafrg9oWZIa4TzkbEyhuGk9NAe', 'gFrRqkfPabKM6IM5mdnUtPSG8Fjotf09tLoBHl4hceyJbuuy6ZsmEwCHSq5C', '2020-10-06 16:21:08', '2020-10-06 16:21:08'),
(15, 'DC Jhenaidah', 'jhenaidah_dc@mopa.gov.bd', 3, 14, 1, NULL, '$2y$10$hx.7VfOhWdh28xZnHD5OzOuVgKH6/XyHFblyGbfExmPnCi6nl/emS', 'kbrKrlgLpwPIFFdB82UTDTQEq9AHOXPhdXXrNlH5B6U8Gog1TRm1NXLpBNaj', '2020-10-06 16:22:10', '2020-10-06 16:22:10'),
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
(26, 'DC Jessore', 'dcjessore@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$PEITM2QbOGZOuKqadFmLrOpkiuI8tq48q3fc34Dmg/ILU0K3urEja', NULL, '2020-10-18 05:29:51', '2020-10-18 05:29:51');

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
(2, 21, 'Md. Abdur Rouf Mia', 'মোঃ আবদুর রব মিয়া', 'Internal Training - 1 Section MOPA', 'অভ্যন্তরীণ প্রশিক্ষণ-১ মোপা', 'Deputy Secretary', 'উপসচিব', '+88029515525', 'it3@mopa.gov.bd', 1, '2020-10-22 06:39:08', '2020-10-22 07:03:48');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_o_information`
--
ALTER TABLE `g_o_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `g_o_information_templates`
--
ALTER TABLE `g_o_information_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nominations`
--
ALTER TABLE `nominations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nomination_details`
--
ALTER TABLE `nomination_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
