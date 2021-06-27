-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 12:53 PM
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
  `reference_id` int(11) NOT NULL,
  `attachment_type` int(11) NOT NULL,
  `filename` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `reference_id`, `attachment_type`, `filename`, `status`, `created_at`, `updated_at`) VALUES
(24, 39, 1, '1604916352.it1-2020-141.PDF', 1, '2020-11-09 10:05:52', '2020-11-09 10:05:52'),
(25, 40, 1, '1604916418.it1-2020-141.PDF', 1, '2020-11-09 10:06:58', '2020-11-09 10:06:58'),
(26, 41, 1, '1604916450.it1-2020-141.PDF', 1, '2020-11-09 10:07:30', '2020-11-09 10:07:30'),
(27, 42, 1, '1604916482.admin1-2020-845.pdf', 1, '2020-11-09 10:08:02', '2020-11-09 10:08:02'),
(28, 43, 1, '1604916540.admin1-2020-845.pdf', 1, '2020-11-09 10:09:00', '2020-11-09 10:09:00'),
(29, 44, 1, '1604916567.admin1-2020-845.pdf', 1, '2020-11-09 10:09:27', '2020-11-09 10:09:27'),
(30, 45, 1, '1604916652.admin1-2020-845.pdf', 1, '2020-11-09 10:10:52', '2020-11-09 10:10:52'),
(31, 46, 1, '1604916676.admin1-2020-845.pdf', 1, '2020-11-09 10:11:16', '2020-11-09 10:11:16'),
(32, 47, 1, '1605168300.Internal Training 4 29-10-2020.pdf', 1, '2020-11-12 08:05:00', '2020-11-12 08:05:00'),
(33, 48, 1, '1606117557.it1-2020-116-r1.PDF', 1, '2020-11-23 07:45:57', '2020-11-23 07:45:57'),
(34, 49, 1, '1607586672.it1-2020-116-r1.PDF', 1, '2020-12-10 07:51:12', '2020-12-10 07:51:12'),
(35, 50, 1, '1607588666.it1-2020-116-r1.PDF', 1, '2020-12-10 08:24:26', '2020-12-10 08:24:26'),
(36, 51, 1, '1607590383.http___127.0.0.1_8000_upload_1602648168.it1-2020-88-r1.PDF', 1, '2020-12-10 08:53:03', '2020-12-10 08:53:03'),
(37, 52, 1, '1608788419.district wise admin.pdf', 1, '2020-12-24 05:40:19', '2020-12-24 05:40:19'),
(38, 53, 1, '1623580198.1.PDF', 1, '2021-06-13 10:29:58', '2021-06-13 10:29:58'),
(39, 54, 1, '1623815746.1.PDF', 1, '2021-06-16 03:55:46', '2021-06-16 03:55:46'),
(40, 55, 1, '1623817389.নিয়োগ বিধিমিালা অংশ.pdf', 1, '2021-06-16 04:23:09', '2021-06-16 04:23:09'),
(41, 56, 1, '1624267451.it2 letter.pdf', 1, '2021-06-21 09:24:11', '2021-06-21 09:24:11'),
(42, 2, 2, '1624440051.it3-2021-129.PDF', 1, '2021-06-23 09:20:51', '2021-06-23 09:20:51'),
(43, 3, 2, '1624441149.it3-2021-129.PDF', 0, '2021-06-23 09:39:09', '2021-06-23 10:45:38'),
(44, 61, 1, '1624441976.it3-2021-129.PDF', 1, '2021-06-23 09:52:56', '2021-06-23 09:52:56'),
(45, 3, 2, '1624445138.sample.pdf', 1, '2021-06-23 10:45:38', '2021-06-23 10:45:38'),
(46, 4, 2, '1624445210.sample.pdf', 1, '2021-06-23 10:46:50', '2021-06-23 10:46:50'),
(47, 5, 2, '1624508784.it3-2021-129.PDF', 1, '2021-06-24 04:26:24', '2021-06-24 04:26:24'),
(48, 62, 1, '1624527209.it3-2021-129.PDF', 1, '2021-06-24 09:33:29', '2021-06-24 09:33:29'),
(49, 63, 1, '1624528906.it3-2021-129.PDF', 1, '2021-06-24 10:01:46', '2021-06-24 10:01:46'),
(50, 64, 1, '1624529135.it3-2021-129.PDF', 1, '2021-06-24 10:05:35', '2021-06-24 10:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `cadre_lists`
--

CREATE TABLE `cadre_lists` (
  `id` int(11) NOT NULL,
  `cadre_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cadre_lists`
--

INSERT INTO `cadre_lists` (`id`, `cadre_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Foreign Affairs', 1, '2020-12-24 04:30:49', NULL),
(2, 'Administration', 1, '2020-12-24 04:30:49', NULL),
(3, 'Audit & Account', 1, '2020-12-24 04:31:59', NULL),
(4, 'Police', 1, '2020-12-24 04:31:59', NULL),
(5, 'Taxation', 1, '2021-06-14 04:08:50', NULL),
(6, 'Customs & Excise', 1, '2021-06-14 04:13:54', NULL),
(7, 'Ansar', 1, '2021-06-14 04:13:54', NULL),
(8, 'Family Planning', 1, '2021-06-14 04:13:55', NULL),
(9, 'Postal', 1, '2021-06-14 04:13:55', NULL),
(10, 'Railway Transportation & Commercial', 1, '2021-06-14 04:13:55', NULL),
(11, 'General Education', 1, '2021-06-14 04:13:55', NULL),
(12, 'Technical Education', 1, '2021-06-14 04:13:55', NULL),
(13, 'Public Health Engineering', 1, '2021-06-14 04:13:55', NULL),
(14, 'Public Works', 1, '2021-06-14 04:13:55', NULL),
(15, 'Railway: Engineering', 1, '2021-06-14 04:13:55', NULL),
(16, 'Roads & Highways', 1, '2021-06-14 04:13:55', NULL),
(17, 'Health', 1, '2021-06-14 04:13:55', NULL),
(18, 'Agriculture', 1, '2021-06-14 04:13:55', NULL),
(19, 'Forest', 1, '2021-06-14 04:13:55', NULL),
(20, 'Fisheries', 1, '2021-06-14 04:13:55', NULL),
(21, 'Livestock', 1, '2021-06-14 04:13:55', NULL),
(22, 'Statistics', 1, '2021-06-14 04:13:55', NULL),
(23, 'Food', 1, '2021-06-14 04:13:55', NULL),
(24, 'Trade', 1, '2021-06-14 04:13:55', NULL),
(25, 'Information', 1, '2021-06-14 04:13:55', NULL),
(26, 'Co-operative', 1, '2021-06-14 04:13:55', NULL),
(27, 'Non-Cadre', 1, '2021-06-14 04:39:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_o_information`
--

INSERT INTO `g_o_information` (`id`, `admin_id`, `training_id`, `status`, `type`, `publish_date`, `go_number`, `publish_date_bangla`, `publish_date_english`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(25, 21, 44, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:43:51', '2020-11-09 10:43:55'),
(26, 21, 43, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:11', '2020-11-09 10:44:15'),
(27, 21, 42, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:26', '2020-11-09 10:44:29'),
(28, 21, 41, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৭', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:41', '2020-11-09 10:44:44'),
(29, 21, 40, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৬', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:57', '2020-11-09 10:45:00'),
(30, 21, 39, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১২৩', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:45:10', '2020-11-09 10:45:14'),
(31, 17, 45, 1, 1, '2020-11-19', '31', '৫ অগ্রহায়ণ ১৪২৭', '১৯ নভেম্বর ২০২০', '<p>LAC Training</p>', '<p>jakljfldsjflkjflsdjflkasdjfsd</p>\r\n<p>pjflkajflksdajflkasdjflasdkf</p>\r\n<p>lsjfodsjfklsdajfkdsa</p>', '<p>conditions:</p>\r\n<p>a. ajofidjklfjf</p>\r\n<p>b. a;fjlkasdjf</p>', '<p>PS to Secy</p>', '<p>Rector</p>', '2020-11-19 08:33:23', '2020-11-19 08:33:30'),
(32, 21, 48, 1, 1, '2020-11-24', 'স্মরক নং-০৫.০০.০০০০.২০০.২৫.০০১.১৯-১৩৪', '১০ অগ্রহায়ণ ১৪২৭', '২৪ নভেম্বর ২০২০', '<p style=\"line-height: 1;\"><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)- এ অংশগ্রহণের জন্য কর্মকর্তা মনোনয়ন।</span></p>', '<p style=\"line-height: 1;\"><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">বাংলাদেশ লোক-প্রশাসন প্রশিক্ষণ কেন্দ্র</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">,</span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"> সাভার</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">, </span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">ঢাকায় আগামী ১৮/১০/২০২০ হতে ০১/১২/২০২০ তারিখ পর্যন্ত ৪৫ (পয়ঁতাল্লিশ) দিন মেয়াদে অনুষ্ঠেয় ৯৫তম সিনিয়র স্টাফ কোর্স (এসএসসি)- এ অংশগ্রহণের জন্য নিম্নোক্ত কর্মকর্তাগণকে নির্দেশক্রমে মনোনয়ন প্রদান করা হলো:</span></p>', '<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">০</span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">২। স্বাস্থ্য বিধি মেনে সামাজিক দুরত্ব বজায় রেখে বিপিএটিসি কর্তৃক কোর্সটি পরিচালিত হবে</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">;</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">০</span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">৩। মনোনীত কর্মকর্তাগণ উল্লিখিত প্রশিক্ষণ চলাকালে কর্মরত হিসেবে গণ্য হবেন এবং স্ব-স্ব মন্ত্রণালয়/বিভাগ/দপ্তর হতে বেতন/ভাতাদি গ্রহণ করবেন।</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">০</span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">৪। কোর্স ফি জনপ্রতি ৬০</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">,</span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">০০০/- (ষাট হাজার) টাকা। কোর্সে মনোনীত কর্মকর্তাগণের কোর্স ফি কোর্স শুরু হওয়ার পূর্বে স্ব-স্ব দপ্তর হতে ক্রসড চেক/পে-অর্ডার কিংবা ড্রাফট এর মাধ্যমে রেক্টর</span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">, </span><span lang=\"AR-SA\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh;\">বিপিএটিসি বরাবর জমা দিতে হবে।</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">০৫। </span><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">কোর্স চলাকালীন ভ্রমণ ভাতা পাবেন, কোন দৈনিক ভাতা প্রাপ্য হবে না।</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">৬। প্রশিক্ষণার্থীগণকে আগামী ১৭/১০/২০২০ তারিখ অথবা কোস্য ম্যানেজমেন্ট কর্তৃক নির্ধারিত সময়ে বিপিএটিসিতে আবশ্যিকভাবে যোগদান করতে হবে।(প্রয়োজনে কোর্স পরিচালক(০১৭২০-০৩৮৬১০) এবং কোর্স সমন্বয়ক(০১৭১২-২২২১৪৯)-এর সাথে যোগাযোগ করা যাবে);</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">এবং</span></p>\r\n<p style=\"line-height: 1;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৭। মনোনীত কর্মকর্তাগণ-কে আগামী ১৫/১০/২০২০ তারিখের মধ্যে বিপিএটিসি&rsquo;র(</span><span lang=\"EN-GB\" style=\"font-size: 11.0pt; line-height: 115%; font-family: \'Calibri\',\'sans-serif\'; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: Vrinda; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\"><a href=\"http://www.bpatc.org.bd/\"><span style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">www.bpatc.org.bd</span></a></span><span lang=\"EN-GB\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: BN;\">) </span><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: BN;\">ওয়েবসাইটের মাধ্যমে অনলাইন রেজিস্ট্রেশন সম্পন্ন করতে হবে। কোর্সের মোট ৩০টি আসন সংখ্যার মধ্যে ৬টি আসন বিসিএস পররাষ্ট্র ক্যাডারের-১ জন, বিসিএস পুলিশ হলে স্বয়ংক্রিয়ভাবে রেজিস্ট্রেশন প্রক্রিয়া বন্ধ হয়ে যাবে। মনোনীত যে সকল কর্মকর্তা অনলাইন রেজিস্ট্রেশন সম্পন্ন করতে পারবেন না সেসকল কর্মকর্তা ৯৫তম এসএসসি কোর্সে অংশগ্রহণের সুযোগ পাবেন না, তাদেরকে পরবর্তী কোন কোর্সে অংশগ্রহণের জন্য পুনরায় সুযোগ প্রদান করা হবে।</span></p>\r\n<p style=\"line-height: 1;\">&nbsp;</p>\r\n<p style=\"line-height: 1;\">&nbsp;</p>', '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">১। মন্ত্রিপরিষদ সচিব, মন্ত্রিপরিষদ বিভাগ/প্রধানমন্ত্রীর মুখ্য সচিব, প্র্রধানমন্ত্রীর কার্যালয়, ঢাকা।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">২। সিনিয়র সচিব/সচিব................................................................।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৩। বিভাগীয় কমিশনার/ চেয়ারম্যান/মহাপরিচালক/ব্যবস্থাপনাপরিচালক.........................।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৪। জনাব..................................................................................................।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৫। পরিচালক(পিপিআর), বিপিএটিসি।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৬। সচিব মহোদয়ের একান্ত সচিব, জনপ্রশাসন মন্ত্রণালয়(সচিব মহোদয়ের সদয় অবগতির জন্য)।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৭। সিনিয়র সহকারী সচিব, (প্রশাসন-২(৪) অধিশাখা, জনপ্রশাসন মন্ত্রণালয় [কোর্সে যোগদানের পর এ মন্ত্রণালয়ের কর্মকর্তাদের কোর্স ফি বাবদ প্রত্যেকের জন্য ৬০,০০০/- (ষাট হাজার) টাকা করে রেক্টর, বাংলাদেশ লোকপ্রশাসন কেন্দ্র, সাভার ঢাকা বরাবরে প্রদানের প্রয়োজনীয় ব্যবস্থা গ্রহণের জন্য অনুরোধ করা হলো]।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৮। প্রধান হিসাবরক্ষণ কর্মকর্তা, জনপ্রশাসন মন্ত্রণালয়, ২২ পুরানা পল্টন, ঢাকা।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"EN-GB\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">০</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৯। সিনিয়র সিস্টেমস এনালিস্ট, পিএসিসি, জনপ্রশাসন মন্ত্রণালয় (ওয়েব সাইটে প্রকাশের অনুরোধসহ)।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">১<a name=\"_GoBack\"></a>০। হিসাবরক্ষণ কর্মকর্তা, জনপ্রশাসন মন্ত্রণালয়।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">১১। অতিরিক্ত সচিব (এপিডি/সিপিটি)- এর ব্যক্তিগত কর্মকর্তা, জনপ্রশাসন মন্ত্রণালয় (অতিরিক্ত সচিব মহোদয়ের সদয় অবগতির জন্য)।</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt;\"><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: Nikosh; mso-bidi-language: BN;\">১২। অফিস কপি/মাস্টার ফাইল।</span></p>', '<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-bidi-language: BN;\">বাংলাদেশ লোক-প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p class=\"MsoNormal\" style=\"line-height: 1;\"><span lang=\"BN\" style=\"font-size: 12.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: BN;\">সাভার, ঢাকা।</span></p>', '2020-11-24 04:20:40', '2020-11-24 04:33:00');
INSERT INTO `g_o_information` (`id`, `admin_id`, `training_id`, `status`, `type`, `publish_date`, `go_number`, `publish_date_bangla`, `publish_date_english`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(33, 21, 49, 1, 1, '2020-12-10', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৬ অগ্রহায়ণ ১৪২৭', '১০ ডিসেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">৯৩ তম সিনিয়র স্টাফ কোর্স (এসএসসি)- এ অংশগ্রহণের জন্য কর্মকর্তা মনোনয়ন।</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-12-10 08:06:12', '2020-12-10 08:11:55'),
(34, 21, 51, 1, 1, '2020-12-10', '০০.২৫০.০০০০.২০.১০.২', '২৬ অগ্রহায়ণ ১৪২৭', '১০ ডিসেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জা</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-12-10 09:04:17', '2020-12-10 09:06:56'),
(35, 21, 51, 1, 2, '2021-06-13', '125', NULL, NULL, '<p>Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>2. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>1. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>2. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01&nbsp;</p>', '2021-06-13 10:26:04', '2021-06-13 10:26:08'),
(36, 21, 53, 1, 1, '2021-06-13', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '৩০ জ্যৈষ্ঠ ১৪২৮', '১৩ জুন ২০২১', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2021-06-13 10:38:00', '2021-06-13 10:38:04'),
(37, 21, 53, 0, 2, '2021-06-13', '125.25.23.26.00.00.012.01', NULL, NULL, '<p>Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>2. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>1. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>2. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01&nbsp;</p>', '2021-06-13 10:38:28', '2021-06-13 10:38:34'),
(38, 12, 55, 1, 1, '2021-06-17', '00.0001.02.032.115', '৩ আষাঢ় ১৪২৮', '১৭ জুন ২০২১', '<p><strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">বিসিএস</span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\"> প্রশাসন একাডেমিতে অনুষ্ঠেয় ১</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">তম আইন ও প্রশাসন কোর্সে প্রশিক্ষণার্থী মনোনয়ন&nbsp;</span></strong></p>', '<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: .5in;\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, বিসিএস প্রশাসন একাডেমি, শাহবাগ, ঢাকায় আগামী <span style=\"mso-spacerun: yes;\">&nbsp;</span>---- জুন ২০২১ হতে<span style=\"mso-spacerun: yes;\">&nbsp; </span>অক্টোবর ২০২১ তারিখ পর্যন্ত ০৫ (পাঁচ) মাস মেয়াদে অনুষ্ঠেয় ১২১তম আইন ও প্রশাসন প্রশিক্ষণ কোর্সে নিম্নবর্ণিত ৪৬ (ছিচল্লিশ) জন কর্মকর্তাকে নির্দেশক্রমে মনোনয়ন প্রদান করা হলোঃ </span></p>', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">২।<span lang=\"BN-BD\">&nbsp; </span></span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;মনোনীত কর্মকর্তাগণ স্ব স্ব নিয়ন্ত্রণকারী কর্তৃপক্ষের সম্মতি গ্রহণ পূর্বক </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">বি.সি.এস প্রশাসন একাডেমির ওয়েব সাইট </span><strong><u><span style=\"font-size: 10.0pt;\">(<span class=\"MsoHyperlink\"><a href=\"http://www.bcsadminacademy.gov.bd/\">www.bcsadminacademy.gov.bd</a></span></span></u></strong><strong><u><span lang=\"BN\" style=\"font-size: 10.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-language: BN;\">)</span></u></strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> এর </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;-----এপ্রিল ২০২১ হতে এপ্রিল ২০২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে অনলাইন রেজিস্ট্রেশন করার জন্য অনুরোধ করা হলো। নির্দিষ্ট সময়ের মধ্যে রেজিস্ট্রেশন সম্পন্ন করতে ব্যর্থ হলে মনোনয়ন বাতিল বলে গন্য হবে । এ ছাড়া রেজিস্ট্রেশন না করার যথাযথ কারণ ব্যাখ্যাসহ সংশ্লিষ্ট কর্তৃপক্ষের মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">---------- </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে আবশ্যিক ভাবে এ মন্ত্রণালয়কে অবহিত&nbsp; করতে হবে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">।</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"font-size: 1.0pt; line-height: 115%; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 1.0pt; mso-bidi-font-size: 4.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">রেজিস্ট্রেশন সম্পন্নকারী কর্মকর্তাগণকে আগামী </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">----------- &nbsp;</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">তারিখ অপরাহ্নে বি.সি.এস. প্রশাসন একাডেমি, শাহবাগ, ঢাকাতে যোগদান করতে হবে। উক্ত তারিখে সংশিষ্ট কর্মকর্তাগণ প্রশিক্ষণকালীন সময়ের জন্য নিজ নিজ কর্মস্থল হতে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> ---------</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\"> তাৎক্ষনিকভাবে অবমুক্ত (stand released) বলে গণ্য হবেন। প্রশিক্ষণ শেষে সকল কর্মকর্তা নিজ নিজ কর্মস্থলে যোগদান করবেন।</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">প্রশিক্ষণে অংশগ্রহণকারী কর্মকর্তাগণ বেতন ও ভাতাদি নিজ নিজ দপ্তর হতে প্রাপ্য হবেন।</span></p>\r\n<p class=\"MsoBodyText2\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৫</span><span style=\"font-size: 11.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">কোর্সটি আবাসিক।&nbsp;</span></p>', '<p class=\"MsoBodyText2\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">সদয় অবগতি ও প্রয়োজনীয় কার্যার্থে অনুলিপি প্রেরণ করা হলো (জ্যেষ্ঠতার ক্রমানুসারে নয়):</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><u><span style=\"font-size: 7.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Arial; mso-bidi-font-weight: bold;\">&nbsp;</span></u></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gw&scaron;&iquest;cwil` mwPe, gw&scaron;&iquest;cwil` wefvM, evsjv&Dagger;`k mwPevjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">2|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gyL&uml; mwPe, c&ordf;avbg&scaron;&iquest;xi Kvh&copy;vjq, &Dagger;ZRMuvI, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"margin-bottom: .0001pt;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: AdarshaLipiNormal;\">&cent;p&cent;eul </span>mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\">j&iquest;&raquo;Z&iexcl;muz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">4|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\"> j&iquest;&raquo;Z&iexcl;mu/ &cent;hi&iexcl;Nz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">5|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &dagger;i&plusmn;i, wewmGm c&ordf;kvmb GKv&Dagger;Wwg, kvnevM, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">6|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AwZwi&sup3; mwPe(GwcwW<span lang=\"BN\" style=\"font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\">/</span>wmwcwU), Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">7|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wefvMxq Kwgkbvi, XvKv/ivRkvnx/P&AElig;M&ordf;vg/Lyjbv/wm&Dagger;jU/ewikvj/iscyi/<span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">ময়মনসিংহ</span>|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">৮।&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; যুগ্মসচিব (অভ্যন্তরীণ ও বিদেশে প্রশিক্ষণ অধিশাখা), জনপ্রশাসন মন্ত্রণালয়।</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৯</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Dagger;Rjv c&ordf;kvmK<span style=\"font-family: Nikosh;\">,.............................</span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">(সকল)</span>(g&Dagger;bvbxZ Kg&copy;KZ&copy;vM&Dagger;Yi &dagger;Kv&Dagger;m&copy; AskM&ordf;nY wbw&eth;Z Ki&Dagger;Yi Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">১০</span><span style=\"font-family: Nikosh;\">|</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সচিব মহোদয়ের</span><span lang=\"BN\" style=\"font-size: 15.0pt; mso-ansi-font-size: 12.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\"> </span><span style=\"font-family: Nikosh;\">একান্ত</span> mwPe, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv (mwPe g&Dagger;nv`&Dagger;qi m`q AeMwZi Rb&uml;)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">১</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&Ouml;avb wnmve i&para;Y Kg&copy;KZ&copy;v, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, 22 cyivbv c&euml;b, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">২</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সিনিয়র </span>wm&Dagger;&divide;g Gbvwj&oacute;, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq (I&Dagger;qe mvB&Dagger;U c&ordf;Kv&Dagger;ki Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৩</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ms<span style=\"font-family: Nikosh;\">শ্লিষ্ট </span>Kg&copy;KZ&copy;v.........................................................................................|</p>\r\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">1</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: \'Times New Roman\'; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Shonar Bangla\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Awdm Kwc/</span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">মাস্টার কপি</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|</span></p>', NULL, '2021-06-17 05:08:29', '2021-06-17 05:08:39'),
(39, 21, 41, 0, 2, '2021-06-17', '123', NULL, NULL, '<p>Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>2. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>1. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>2. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01&nbsp;</p>', '2021-06-17 08:52:09', '2021-06-17 08:52:09'),
(40, 12, 56, 0, 1, '2021-06-21', '00.0001.02.032.115', '৭ আষাঢ় ১৪২৮', '২১ জুন ২০২১', '<p><strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">বিসিএস</span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\"> প্রশাসন একাডেমিতে অনুষ্ঠেয় ১</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">তম আইন ও প্রশাসন কোর্সে প্রশিক্ষণার্থী মনোনয়ন&nbsp;</span></strong></p>', '<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: .5in;\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, বিসিএস প্রশাসন একাডেমি, শাহবাগ, ঢাকায় আগামী <span style=\"mso-spacerun: yes;\">&nbsp;</span>---- জুন ২০২১ হতে<span style=\"mso-spacerun: yes;\">&nbsp; </span>অক্টোবর ২০২১ তারিখ পর্যন্ত ০৫ (পাঁচ) মাস মেয়াদে অনুষ্ঠেয় ১২১তম আইন ও প্রশাসন প্রশিক্ষণ কোর্সে নিম্নবর্ণিত ৪৬ (ছিচল্লিশ) জন কর্মকর্তাকে নির্দেশক্রমে মনোনয়ন প্রদান করা হলোঃ </span></p>', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">২।<span lang=\"BN-BD\">&nbsp; </span></span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;মনোনীত কর্মকর্তাগণ স্ব স্ব নিয়ন্ত্রণকারী কর্তৃপক্ষের সম্মতি গ্রহণ পূর্বক </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">বি.সি.এস প্রশাসন একাডেমির ওয়েব সাইট </span><strong><u><span style=\"font-size: 10.0pt;\">(<span class=\"MsoHyperlink\"><a href=\"http://www.bcsadminacademy.gov.bd/\">www.bcsadminacademy.gov.bd</a></span></span></u></strong><strong><u><span lang=\"BN\" style=\"font-size: 10.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-language: BN;\">)</span></u></strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> এর </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;-----এপ্রিল ২০২১ হতে এপ্রিল ২০২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে অনলাইন রেজিস্ট্রেশন করার জন্য অনুরোধ করা হলো। নির্দিষ্ট সময়ের মধ্যে রেজিস্ট্রেশন সম্পন্ন করতে ব্যর্থ হলে মনোনয়ন বাতিল বলে গন্য হবে । এ ছাড়া রেজিস্ট্রেশন না করার যথাযথ কারণ ব্যাখ্যাসহ সংশ্লিষ্ট কর্তৃপক্ষের মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">---------- </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে আবশ্যিক ভাবে এ মন্ত্রণালয়কে অবহিত&nbsp; করতে হবে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">।</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"font-size: 1.0pt; line-height: 115%; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 1.0pt; mso-bidi-font-size: 4.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">রেজিস্ট্রেশন সম্পন্নকারী কর্মকর্তাগণকে আগামী </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">----------- &nbsp;</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">তারিখ অপরাহ্নে বি.সি.এস. প্রশাসন একাডেমি, শাহবাগ, ঢাকাতে যোগদান করতে হবে। উক্ত তারিখে সংশিষ্ট কর্মকর্তাগণ প্রশিক্ষণকালীন সময়ের জন্য নিজ নিজ কর্মস্থল হতে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> ---------</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\"> তাৎক্ষনিকভাবে অবমুক্ত (stand released) বলে গণ্য হবেন। প্রশিক্ষণ শেষে সকল কর্মকর্তা নিজ নিজ কর্মস্থলে যোগদান করবেন।</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">প্রশিক্ষণে অংশগ্রহণকারী কর্মকর্তাগণ বেতন ও ভাতাদি নিজ নিজ দপ্তর হতে প্রাপ্য হবেন।</span></p>\r\n<p class=\"MsoBodyText2\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৫</span><span style=\"font-size: 11.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">কোর্সটি আবাসিক।&nbsp;</span></p>', '<p class=\"MsoBodyText2\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">সদয় অবগতি ও প্রয়োজনীয় কার্যার্থে অনুলিপি প্রেরণ করা হলো (জ্যেষ্ঠতার ক্রমানুসারে নয়):</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><u><span style=\"font-size: 7.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Arial; mso-bidi-font-weight: bold;\">&nbsp;</span></u></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gw&scaron;&iquest;cwil` mwPe, gw&scaron;&iquest;cwil` wefvM, evsjv&Dagger;`k mwPevjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">2|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gyL&uml; mwPe, c&ordf;avbg&scaron;&iquest;xi Kvh&copy;vjq, &Dagger;ZRMuvI, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"margin-bottom: .0001pt;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: AdarshaLipiNormal;\">&cent;p&cent;eul </span>mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\">j&iquest;&raquo;Z&iexcl;muz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">4|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\"> j&iquest;&raquo;Z&iexcl;mu/ &cent;hi&iexcl;Nz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">5|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &dagger;i&plusmn;i, wewmGm c&ordf;kvmb GKv&Dagger;Wwg, kvnevM, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">6|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AwZwi&sup3; mwPe(GwcwW<span lang=\"BN\" style=\"font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\">/</span>wmwcwU), Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">7|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wefvMxq Kwgkbvi, XvKv/ivRkvnx/P&AElig;M&ordf;vg/Lyjbv/wm&Dagger;jU/ewikvj/iscyi/<span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">ময়মনসিংহ</span>|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">৮।&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; যুগ্মসচিব (অভ্যন্তরীণ ও বিদেশে প্রশিক্ষণ অধিশাখা), জনপ্রশাসন মন্ত্রণালয়।</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৯</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Dagger;Rjv c&ordf;kvmK<span style=\"font-family: Nikosh;\">,.............................</span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">(সকল)</span>(g&Dagger;bvbxZ Kg&copy;KZ&copy;vM&Dagger;Yi &dagger;Kv&Dagger;m&copy; AskM&ordf;nY wbw&eth;Z Ki&Dagger;Yi Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">১০</span><span style=\"font-family: Nikosh;\">|</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সচিব মহোদয়ের</span><span lang=\"BN\" style=\"font-size: 15.0pt; mso-ansi-font-size: 12.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\"> </span><span style=\"font-family: Nikosh;\">একান্ত</span> mwPe, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv (mwPe g&Dagger;nv`&Dagger;qi m`q AeMwZi Rb&uml;)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">১</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&Ouml;avb wnmve i&para;Y Kg&copy;KZ&copy;v, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, 22 cyivbv c&euml;b, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">২</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সিনিয়র </span>wm&Dagger;&divide;g Gbvwj&oacute;, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq (I&Dagger;qe mvB&Dagger;U c&ordf;Kv&Dagger;ki Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৩</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ms<span style=\"font-family: Nikosh;\">শ্লিষ্ট </span>Kg&copy;KZ&copy;v.........................................................................................|</p>\r\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">1</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: \'Times New Roman\'; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Shonar Bangla\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Awdm Kwc/</span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">মাস্টার কপি</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|</span></p>', NULL, '2021-06-21 09:54:30', '2021-06-21 09:54:30');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g_o_information_templates`
--

INSERT INTO `g_o_information_templates` (`id`, `admin_id`, `type`, `subject`, `details`, `rules_regulations`, `kind_information`, `before_kind_information`, `created_at`, `updated_at`) VALUES
(13, 21, 1, '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:43:29', '2020-11-09 10:43:29'),
(14, 21, 2, '<p>Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01 Subject 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>2. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>1. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>2. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>3. Details 01 Details 01 Details 01 Details 01 Details 01 Details 01&nbsp;</p>', '<p>Details 01 Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01&nbsp;</p>\r\n<p>Details 01 Details 01 Details 01&nbsp;</p>', '2020-11-17 06:46:09', '2020-11-17 06:46:09'),
(15, 17, 1, '<p>LAC Training</p>', '<p>jakljfldsjflkjflsdjflkasdjfsd</p>\r\n<p>pjflkajflksdajflkasdjflasdkf</p>\r\n<p>lsjfodsjfklsdajfkdsa</p>', '<p>conditions:</p>\r\n<p>a. ajofidjklfjf</p>\r\n<p>b. a;fjlkasdjf</p>', '<p>PS to Secy</p>', '<p>Rector</p>', '2020-11-19 08:32:49', '2020-11-19 08:32:49'),
(16, 12, 1, '<p><strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">বিসিএস</span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\"> প্রশাসন একাডেমিতে অনুষ্ঠেয় ১</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">তম আইন ও প্রশাসন কোর্সে প্রশিক্ষণার্থী মনোনয়ন&nbsp;</span></strong></p>', '<p class=\"MsoNormal\" style=\"text-align: justify; text-indent: .5in;\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, বিসিএস প্রশাসন একাডেমি, শাহবাগ, ঢাকায় আগামী <span style=\"mso-spacerun: yes;\">&nbsp;</span>---- জুন ২০২১ হতে<span style=\"mso-spacerun: yes;\">&nbsp; </span>অক্টোবর ২০২১ তারিখ পর্যন্ত ০৫ (পাঁচ) মাস মেয়াদে অনুষ্ঠেয় ১২১তম আইন ও প্রশাসন প্রশিক্ষণ কোর্সে নিম্নবর্ণিত ৪৬ (ছিচল্লিশ) জন কর্মকর্তাকে নির্দেশক্রমে মনোনয়ন প্রদান করা হলোঃ </span></p>', '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">২।<span lang=\"BN-BD\">&nbsp; </span></span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;মনোনীত কর্মকর্তাগণ স্ব স্ব নিয়ন্ত্রণকারী কর্তৃপক্ষের সম্মতি গ্রহণ পূর্বক </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">বি.সি.এস প্রশাসন একাডেমির ওয়েব সাইট </span><strong><u><span style=\"font-size: 10.0pt;\">(<span class=\"MsoHyperlink\"><a href=\"http://www.bcsadminacademy.gov.bd/\">www.bcsadminacademy.gov.bd</a></span></span></u></strong><strong><u><span lang=\"BN\" style=\"font-size: 10.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-language: BN;\">)</span></u></strong><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> এর </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;-----এপ্রিল ২০২১ হতে এপ্রিল ২০২১ </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে অনলাইন রেজিস্ট্রেশন করার জন্য অনুরোধ করা হলো। নির্দিষ্ট সময়ের মধ্যে রেজিস্ট্রেশন সম্পন্ন করতে ব্যর্থ হলে মনোনয়ন বাতিল বলে গন্য হবে । এ ছাড়া রেজিস্ট্রেশন না করার যথাযথ কারণ ব্যাখ্যাসহ সংশ্লিষ্ট কর্তৃপক্ষের মাধ্যমে </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">---------- </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">&nbsp;তারিখের মধ্যে আবশ্যিক ভাবে এ মন্ত্রণালয়কে অবহিত&nbsp; করতে হবে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">।</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify; line-height: 115%;\"><span style=\"font-size: 1.0pt; line-height: 115%; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 1.0pt; mso-bidi-font-size: 4.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">রেজিস্ট্রেশন সম্পন্নকারী কর্মকর্তাগণকে আগামী </span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">----------- &nbsp;</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">তারিখ অপরাহ্নে বি.সি.এস. প্রশাসন একাডেমি, শাহবাগ, ঢাকাতে যোগদান করতে হবে। উক্ত তারিখে সংশিষ্ট কর্মকর্তাগণ প্রশিক্ষণকালীন সময়ের জন্য নিজ নিজ কর্মস্থল হতে</span><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\"> ---------</span><span style=\"font-size: 11.0pt; font-family: Nikosh;\"> তাৎক্ষনিকভাবে অবমুক্ত (stand released) বলে গণ্য হবেন। প্রশিক্ষণ শেষে সকল কর্মকর্তা নিজ নিজ কর্মস্থলে যোগদান করবেন।</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\"><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 11.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Vrinda;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh;\">প্রশিক্ষণে অংশগ্রহণকারী কর্মকর্তাগণ বেতন ও ভাতাদি নিজ নিজ দপ্তর হতে প্রাপ্য হবেন।</span></p>\r\n<p class=\"MsoBodyText2\"><span lang=\"BN\" style=\"font-size: 4.0pt; mso-ansi-font-size: 1.0pt; font-family: Nikosh; mso-bidi-language: BN;\">&nbsp;</span></p>\r\n<p><span lang=\"BN\" style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৫</span><span style=\"font-size: 11.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span style=\"font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">কোর্সটি আবাসিক।&nbsp;</span></p>', '<p class=\"MsoBodyText2\"><span style=\"font-size: 11.0pt; font-family: Nikosh;\">সদয় অবগতি ও প্রয়োজনীয় কার্যার্থে অনুলিপি প্রেরণ করা হলো (জ্যেষ্ঠতার ক্রমানুসারে নয়):</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><u><span style=\"font-size: 7.0pt; font-family: SutonnyMJ; mso-bidi-font-family: Arial; mso-bidi-font-weight: bold;\">&nbsp;</span></u></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gw&scaron;&iquest;cwil` mwPe, gw&scaron;&iquest;cwil` wefvM, evsjv&Dagger;`k mwPevjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">2|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; gyL&uml; mwPe, c&ordf;avbg&scaron;&iquest;xi Kvh&copy;vjq, &Dagger;ZRMuvI, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"margin-bottom: .0001pt;\">3|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style=\"font-family: AdarshaLipiNormal;\">&cent;p&cent;eul </span>mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\">j&iquest;&raquo;Z&iexcl;muz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">4|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; mwPe.............................................................................<span style=\"font-family: AdarshaLipiNormal;\"> j&iquest;&raquo;Z&iexcl;mu/ &cent;hi&iexcl;Nz</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">5|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &dagger;i&plusmn;i, wewmGm c&ordf;kvmb GKv&Dagger;Wwg, kvnevM, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">6|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AwZwi&sup3; mwPe(GwcwW<span lang=\"BN\" style=\"font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\">/</span>wmwcwU), Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">7|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wefvMxq Kwgkbvi, XvKv/ivRkvnx/P&AElig;M&ordf;vg/Lyjbv/wm&Dagger;jU/ewikvj/iscyi/<span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">ময়মনসিংহ</span>|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">৮।&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; যুগ্মসচিব (অভ্যন্তরীণ ও বিদেশে প্রশিক্ষণ অধিশাখা), জনপ্রশাসন মন্ত্রণালয়।</span></p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৯</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &Dagger;Rjv c&ordf;kvmK<span style=\"font-family: Nikosh;\">,.............................</span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">(সকল)</span>(g&Dagger;bvbxZ Kg&copy;KZ&copy;vM&Dagger;Yi &dagger;Kv&Dagger;m&copy; AskM&ordf;nY wbw&eth;Z Ki&Dagger;Yi Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\"><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">১০</span><span style=\"font-family: Nikosh;\">|</span><span lang=\"AR-SA\" style=\"font-family: \'Times New Roman\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সচিব মহোদয়ের</span><span lang=\"BN\" style=\"font-size: 15.0pt; mso-ansi-font-size: 12.0pt; font-family: \'Vrinda\',serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: Vrinda; mso-bidi-language: BN;\"> </span><span style=\"font-family: Nikosh;\">একান্ত</span> mwPe, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, XvKv (mwPe g&Dagger;nv`&Dagger;qi m`q AeMwZi Rb&uml;)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">১</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; c&Ouml;avb wnmve i&para;Y Kg&copy;KZ&copy;v, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq, 22 cyivbv c&euml;b, XvKv|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">২</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span lang=\"BN\" style=\"font-family: Nikosh; mso-bidi-language: BN;\">সিনিয়র </span>wm&Dagger;&divide;g Gbvwj&oacute;, Rbc&ordf;kvmb g&scaron;&iquest;Yvjq (I&Dagger;qe mvB&Dagger;U c&ordf;Kv&Dagger;ki Aby&Dagger;ivamn)|</p>\r\n<p class=\"MsoBodyText\" style=\"text-align: justify; text-indent: -.5in; margin: 0in 0in .0001pt .5in;\">1<span lang=\"BN\" style=\"font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: SutonnyMJ; mso-hansi-font-family: SutonnyMJ; mso-bidi-font-family: \'Shonar Bangla\'; mso-bidi-language: BN;\">৩</span>|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ms<span style=\"font-family: Nikosh;\">শ্লিষ্ট </span>Kg&copy;KZ&copy;v.........................................................................................|</p>\r\n<p><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">1</span><span lang=\"BN\" style=\"font-size: 12.0pt; font-family: \'Shonar Bangla\',sans-serif; mso-ascii-font-family: \'Times New Roman\'; mso-fareast-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'; mso-bidi-font-family: \'Shonar Bangla\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN;\">৪</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Awdm Kwc/</span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">মাস্টার কপি</span><span style=\"font-size: 12.0pt; font-family: \'Times New Roman\',serif; mso-fareast-font-family: \'Times New Roman\'; mso-bidi-font-family: Vrinda; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: BN-BD;\">|</span></p>', NULL, '2021-06-17 05:05:47', '2021-06-17 05:05:47');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=entry, 1=send to approval authority, 2=approved by approval authority and send to admin, 3=not selected, 4=selected, 5=join in training, 6=completed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nominations`
--

INSERT INTO `nominations` (`id`, `training_id`, `organization_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(31, 39, 21, 25, 0, '2020-11-09 10:15:15', '2020-11-09 10:15:15'),
(32, 40, 21, 25, 0, '2020-11-09 10:26:44', '2020-11-09 10:26:44'),
(33, 41, 21, 25, 0, '2020-11-09 10:29:05', '2020-11-09 10:29:05'),
(34, 46, 17, 25, 0, '2020-11-09 10:30:55', '2020-11-09 10:30:55'),
(35, 45, 17, 25, 0, '2020-11-09 10:32:58', '2020-11-09 10:32:58'),
(36, 44, 21, 25, 0, '2020-11-09 10:33:50', '2020-11-09 10:33:50'),
(37, 43, 21, 25, 0, '2020-11-09 10:34:44', '2020-11-09 10:34:44'),
(38, 42, 21, 25, 0, '2020-11-09 10:35:38', '2020-11-09 10:35:38'),
(39, 45, 17, 26, 0, '2020-11-19 08:26:48', '2020-11-19 08:26:48'),
(40, 48, 21, 25, 0, '2020-11-23 08:14:55', '2020-11-23 08:14:55'),
(41, 49, 21, 73, 0, '2020-12-10 08:02:31', '2020-12-10 08:02:31'),
(42, 49, 21, 72, 0, '2020-12-10 08:03:21', '2020-12-10 08:03:21'),
(43, 51, 21, 72, 0, '2020-12-10 08:57:34', '2020-12-10 08:57:34'),
(44, 51, 21, 73, 0, '2020-12-10 08:59:15', '2020-12-10 08:59:15'),
(45, 46, 17, 72, 0, '2020-12-24 05:11:35', '2020-12-24 05:11:35'),
(46, 52, 13, 72, 0, '2020-12-24 05:42:22', '2020-12-24 05:42:22'),
(47, 52, 13, 15, 0, '2021-06-13 10:24:00', '2021-06-13 10:24:00'),
(48, 53, 21, 15, 0, '2021-06-13 10:32:01', '2021-06-13 10:32:01'),
(49, 55, 12, 11, 0, '2021-06-16 04:29:51', '2021-06-16 04:29:51'),
(50, 55, 12, 73, 0, '2021-06-17 04:53:55', '2021-06-17 04:53:55'),
(51, 56, 12, 11, 0, '2021-06-21 09:34:14', '2021-06-21 09:34:14'),
(52, 54, 0, 86, 2, '2021-06-27 08:36:10', '2021-06-27 10:18:31'),
(53, 64, 2, 86, 1, '2021-06-27 10:49:44', '2021-06-27 10:49:51');

-- --------------------------------------------------------

--
-- Table structure for table `nomination_details`
--

CREATE TABLE `nomination_details` (
  `id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0=entry, \r\n1=send to approval authority, \r\n2=approved by approval authority and send to admin,\r\n3=not selected,\r\n4=selected,\r\n5=join in training,\r\n6=completed',
  `stage_status` int(11) NOT NULL DEFAULT 0,
  `training_id` int(11) NOT NULL,
  `nomination_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
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
  `batch` int(11) DEFAULT NULL,
  `cadre_id` int(11) DEFAULT NULL,
  `gender` varchar(25) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nomination_details`
--

INSERT INTO `nomination_details` (`id`, `status`, `stage_status`, `training_id`, `nomination_id`, `organization_id`, `user_id`, `id_no`, `name`, `name_bangla`, `designation`, `designation_bangla`, `contact_no`, `email`, `working_place`, `working_place_bangla`, `batch`, `cadre_id`, `gender`, `date_of_birth`, `created_at`, `updated_at`, `deleted_at`) VALUES
(50, 0, 0, 39, 31, 21, 25, 700029, 'S.M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:15:15', '2020-11-09 10:38:55', NULL),
(51, 1, 0, 39, 31, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:15:15', '2020-11-09 10:38:55', NULL),
(52, 1, 0, 40, 32, 21, 25, 700029, 'S. M. Mohaimen Likhon', 'মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:26:44', '2020-11-09 10:38:45', NULL),
(53, 0, 0, 40, 32, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Asst. Prog', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:26:44', '2020-11-09 10:38:45', NULL),
(54, 1, 0, 41, 33, 21, 25, 700000, 'Abir', 'আবির', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01521101010', 'asstprog@mopa.gov.bd', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:29:05', '2020-11-09 10:38:35', NULL),
(55, 0, 0, 41, 33, 21, 25, 500001, 'Kabir', 'কবির', 'AP', 'সপ্র', '01521202020', 'asst@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:29:05', '2020-11-09 10:38:35', NULL),
(56, 0, 0, 46, 34, 17, 25, 50002, 'Dabir', 'দবির', 'AP', 'সপ্রো', '01521404040', 'asstprog@mopa.gov.bd', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:30:55', NULL, NULL),
(57, 0, 0, 46, 34, 17, 25, 720, 'Mamun', 'মামুন', 'AP', 'এপ্রো', '01741101010', 'ast@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:30:55', NULL, NULL),
(58, 0, 0, 45, 35, 17, 25, 7002, 'Milon', 'মিলন', 'AP', 'এপি', '01741202020', 'assdf@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:32:58', '2020-11-19 08:21:59', '2020-11-19 08:21:59'),
(59, 0, 0, 45, 35, 17, 25, 6952, 'Khaleq', 'খালেক', 'DS', 'উস', '01741505050', 'khaleq@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:32:58', '2020-11-19 08:21:59', '2020-11-19 08:21:59'),
(60, 1, 0, 44, 36, 21, 25, 70002, 'Dabir', 'দবির', 'PA', 'পিএ', '01741202020', 'pa@gmail.com', 'pacc', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:33:50', '2020-11-09 10:38:00', NULL),
(61, 1, 0, 43, 37, 21, 25, 701, 'Karim', 'করিম', 'ap', 'এপ', '01741606060', 'asdf@gmail.com', 'pacc', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:34:44', '2020-11-09 10:38:15', NULL),
(62, 1, 0, 42, 38, 21, 25, 520, 'Kabir', 'কবির', 'AP', 'এপ', '01741505050', 'asdf@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-09 10:35:38', '2020-11-09 10:38:24', NULL),
(63, 1, 0, 45, 35, 17, 25, 7002, 'Milon', 'মিলন', 'AP', 'এপি', '01741202020', 'assdf@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-19 08:21:59', '2020-11-19 08:30:06', NULL),
(64, 1, 0, 45, 35, 17, 25, 6952, 'Khaleq', 'খালেক', 'DS', 'উস', '01741505050', 'khaleq@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-11-19 08:21:59', '2020-11-19 08:30:06', NULL),
(65, 0, 0, 45, 35, 17, 25, 1200, 'ABM Michael', 'এবিএম মাইকেল', 'DD', 'ডিডি', '01254402010', 'manfn@mnanfnb.com', 'Rnagamati', 'রাঙামাটি', 0, 0, '', NULL, '2020-11-19 08:21:59', '2020-11-19 08:30:06', NULL),
(66, 1, 0, 45, 39, 17, 26, 21554, 'DM John', 'ডিএম জন', 'DD', 'ডিডি', '101010101000', 'dm@gff.com', 'Jessore', 'যশোর', 0, 0, '', NULL, '2020-11-19 08:26:48', '2020-11-19 08:30:06', NULL),
(67, 0, 0, 48, 40, 21, 25, 5666, 'Md. Oliullah NDC', 'জনাব মোঃ অলিউল্লাহ এনডিসি', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'oliur@gmail.com', 'Ministry of Textiles and Jute', 'বস্ত্র ও পাট মন্ত্রণালয়', 0, 0, '', NULL, '2020-11-23 08:14:56', '2020-11-23 08:24:31', '2020-11-23 08:24:31'),
(68, 0, 0, 48, 40, 21, 25, 5840, 'Dr. Md. Abdul mannan', 'ড. মোঃ আব্দুল মান্নান', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mannan@gmail.com', 'Additional Divisional Commissioner office, Rajshahi Division, Rajshahi', 'অতিরিক্ত বিভাগীয় কমিশনার অফিস, রাজশাহী বিভাগ, রাজশাহী', 0, 0, '', NULL, '2020-11-23 08:14:56', '2020-11-23 08:24:31', '2020-11-23 08:24:31'),
(69, 0, 0, 48, 40, 21, 25, 5905, 'Dr. Nasim Ahmed', 'ড. নাছিম আহমেদ', 'Joint Secreraty', 'যুগ্মসচিব', '01741607831', 'nasim@gmail.com', 'Bangladesh Road Transport Corporation', 'বাংলাদেশ সরক পরিবহন কর্পোরেশন', 0, 0, '', NULL, '2020-11-23 08:14:56', '2020-11-23 08:24:31', '2020-11-23 08:24:31'),
(70, 0, 0, 48, 40, 21, 25, 5666, 'Md. Oliullah NDC', 'জনাব মোঃ অলিউল্লাহ এনডিসি', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'oliur@gmail.com', 'Ministry of Textiles and Jute', 'বস্ত্র ও পাট মন্ত্রণালয়', 0, 0, '', NULL, '2020-11-23 08:24:31', '2020-11-23 09:31:20', '2020-11-23 09:31:20'),
(71, 0, 0, 48, 40, 21, 25, 5840, 'Dr. Md. Abdul mannan', 'ড. মোঃ আব্দুল মান্নান', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mannan@gmail.com', 'Additional Divisional Commissioner office, Rajshahi Division, Rajshahi', 'অতিরিক্ত বিভাগীয় কমিশনার অফিস, রাজশাহী বিভাগ, রাজশাহী', 0, 0, '', NULL, '2020-11-23 08:24:31', '2020-11-23 09:31:20', '2020-11-23 09:31:20'),
(72, 0, 0, 48, 40, 21, 25, 5905, 'Dr. Nasim Ahmed', 'ড. নাছিম আহমেদ', 'Joint Secreraty', 'যুগ্মসচিব', '01741607831', 'nasim@gmail.com', 'Bangladesh Road Transport Corporation', 'বাংলাদেশ সরক পরিবহন কর্পোরেশন', 0, 0, '', NULL, '2020-11-23 08:24:31', '2020-11-23 09:31:20', '2020-11-23 09:31:20'),
(73, 0, 0, 48, 40, 21, 25, 6043, 'Md. Mostafa Kamal Mojumder', 'মোঃ মোস্তফা কামাল মজুমদার', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mostafa@gmail.com', 'Bangladesh Land Port Authority', 'বাংলাদেশ স্থলবন্দর কর্তৃপক্ষ', 0, 0, '', NULL, '2020-11-23 08:24:31', '2020-11-23 09:31:20', '2020-11-23 09:31:20'),
(74, 0, 0, 48, 40, 21, 25, 5666, 'Md. Oliullah NDC', 'জনাব মোঃ অলিউল্লাহ এনডিসি', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'oliur@gmail.com', 'Ministry of Textiles and Jute', 'বস্ত্র ও পাট মন্ত্রণালয়', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(75, 0, 0, 48, 40, 21, 25, 5840, 'Dr. Md. Abdul mannan', 'ড. মোঃ আব্দুল মান্নান', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mannan@gmail.com', 'Additional Divisional Commissioner office, Rajshahi Division, Rajshahi', 'অতিরিক্ত বিভাগীয় কমিশনার অফিস, রাজশাহী বিভাগ, রাজশাহী', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(76, 0, 0, 48, 40, 21, 25, 5905, 'Dr. Nasim Ahmed', 'ড. নাছিম আহমেদ', 'Joint Secreraty', 'যুগ্মসচিব', '01741607831', 'nasim@gmail.com', 'Bangladesh Road Transport Corporation', 'বাংলাদেশ সরক পরিবহন কর্পোরেশন', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(77, 0, 0, 48, 40, 21, 25, 6043, 'Md. Mostafa Kamal Mojumder', 'মোঃ মোস্তফা কামাল মজুমদার', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mostafa@gmail.com', 'Bangladesh Land Port Authority', 'বাংলাদেশ স্থলবন্দর কর্তৃপক্ষ', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(78, 0, 0, 48, 40, 21, 25, 6068, 'Md. Abdur Rouf', 'মোহাম্মদ আবদুর রউফ', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'rouf@gmail.com', 'Transit Development Project', 'ট্রানজিট ডেভেলপমেন্ট প্রজেক্ট', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(79, 0, 0, 48, 40, 21, 25, 6282, 'Zahir Rayhan', 'জহির রায়হান', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Anti-Corruption Commission', 'দুর্নীতি দমন কমিশন', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(80, 0, 0, 48, 40, 21, 25, 6252, 'Farjana Momotaz', 'ফারজানা মমতাজ', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Power Division', 'বিদ্যুৎ বিভাগ', 0, 0, '', NULL, '2020-11-23 09:31:20', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(81, 1, 0, 48, 40, 21, 25, 5666, 'Md. Oliullah NDC', 'জনাব মোঃ অলিউল্লাহ এনডিসি', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'oliur@gmail.com', 'Ministry of Textiles and Jute', 'বস্ত্র ও পাট মন্ত্রণালয়', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(82, 1, 0, 48, 40, 21, 25, 5840, 'Dr. Md. Abdul mannan', 'ড. মোঃ আব্দুল মান্নান', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mannan@gmail.com', 'Additional Divisional Commissioner office, Rajshahi Division, Rajshahi', 'অতিরিক্ত বিভাগীয় কমিশনার অফিস, রাজশাহী বিভাগ, রাজশাহী', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(83, 1, 0, 48, 40, 21, 25, 5905, 'Dr. Nasim Ahmed', 'ড. নাছিম আহমেদ', 'Joint Secreraty', 'যুগ্মসচিব', '01741607831', 'nasim@gmail.com', 'Bangladesh Road Transport Corporation', 'বাংলাদেশ সরক পরিবহন কর্পোরেশন', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(84, 1, 0, 48, 40, 21, 25, 6043, 'Md. Mostafa Kamal Mojumder', 'মোঃ মোস্তফা কামাল মজুমদার', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'mostafa@gmail.com', 'Bangladesh Land Port Authority', 'বাংলাদেশ স্থলবন্দর কর্তৃপক্ষ', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(85, 1, 0, 48, 40, 21, 25, 6068, 'Md. Abdur Rouf', 'মোহাম্মদ আবদুর রউফ', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'rouf@gmail.com', 'Transit Development Project', 'ট্রানজিট ডেভেলপমেন্ট প্রজেক্ট', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(86, 1, 0, 48, 40, 21, 25, 6282, 'Zahir Rayhan', 'জহির রায়হান', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Anti-Corruption Commission', 'দুর্নীতি দমন কমিশন', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(87, 1, 0, 48, 40, 21, 25, 6252, 'Farjana Momotaz', 'ফারজানা মমতাজ', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Power Division', 'বিদ্যুৎ বিভাগ', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(88, 1, 0, 48, 40, 21, 25, 6271, 'Fatima Rahim Vima', 'ফাতেমা রহিম ভীমা', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Finance Division', 'অর্থ বিভাগ', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(89, 1, 0, 48, 40, 21, 25, 6298, 'Shoyaib Ahmed Khan', 'শোয়াইব আহমাদ খান', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Wedge Earner Welfare Board', 'ওয়েজ আর্নার্স কল্যাণ বোর্ড', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(90, 1, 0, 48, 40, 21, 25, 6319, 'Syed Md. Nurul Basir', 'সৈয়দ মো: নুরুল বাসির', 'Joint Secretary', 'যুগ্মসচিব', '01751073800', 'shakirulbd999@gmail.com', 'Department of Social Services', 'সমাজসেবা অধিদপ্তর', 0, 0, '', NULL, '2020-11-23 09:42:43', '2020-11-23 10:13:44', NULL),
(91, 1, 0, 49, 41, 21, 73, 6068, 'Md. Abdur Rouf', 'মোহাম্মদ আবদুর রউফ', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'rouf@gmail.com', 'Transit Development Project', 'ট্রানজিট', 0, 0, '', NULL, '2020-12-10 08:02:31', '2020-12-10 08:05:54', NULL),
(92, 1, 0, 49, 42, 21, 72, 5666, 'Md. Oliullah NDC', 'জনাব মোঃ অলিউল্লাহ এনডিসি', 'Joint Secretary', 'যুগ্মসচিব', '01741607831', 'oliur@gmail.com', 'Ministry of Textiles and Jute', 'বস্ত্র ও পাট মন্ত্রণালয়', 0, 0, '', NULL, '2020-12-10 08:03:21', '2020-12-10 08:05:54', NULL),
(93, 1, 0, 51, 43, 21, 72, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', 0, 0, '', NULL, '2020-12-10 08:57:34', '2020-12-10 09:00:22', NULL),
(94, 1, 0, 51, 44, 21, 73, 700029, 'S. M. Mohaimen Likhon', 'লিখর', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01521481414', 'likhon@gmail.com', 'PACC', 'পিএসিসি', 0, 0, '', NULL, '2020-12-10 08:59:15', '2020-12-10 09:00:22', NULL),
(95, 0, 0, 46, 45, 17, 72, 3434, 'asd asd fadf a', 'sdf asdf', 'f asdf asdf a', 'f asdf asdf', '01741607831', 'asdfasdf@asdfasdf.asdf', 'a sdf asdf', 'asdf asdf asdf', 2, 2, 'Male', '2020-12-01', '2020-12-24 05:12:35', '2020-12-24 05:38:05', '2020-12-24 05:38:05'),
(96, 0, 0, 46, 45, 17, 72, 2563, 'a sdf asdf', 'asd asdf asdf', 'asd fasd f', 'asdf asdf asdf', '01741607831', 'asdfasdf@asdfasdf.com', 'asd fasdf as', 'df asdf asdf', 1, 3, 'Female', '2020-12-01', '2020-12-24 05:12:35', '2020-12-24 05:38:05', '2020-12-24 05:38:05'),
(97, 0, 0, 46, 45, 17, 72, 3434, 'asd asd fadf a', 'sdf asdf', 'f asdf asdf a', 'f asdf asdf', '01741607831', 'asdfasdf@asdfasdf.asdf', 'a sdf asdf', 'asdf asdf asdf', 2, 2, 'Male', '2020-12-01', '2020-12-24 05:38:32', NULL, NULL),
(98, 0, 0, 46, 45, 17, 72, 2563, 'a sdf asdf', 'asd asdf asdf', 'asd fasd f', 'asdf asdf asdf', '01741607831', 'asdfasdf@asdfasdf.com', 'asd fasdf as', 'df asdf asdf', 1, 3, 'Female', '2020-12-01', '2020-12-24 05:38:32', NULL, NULL),
(99, 0, 0, 52, 46, 13, 72, 700030, 'asdf asd asdf', 'asd asd fasd', 'fasdf asdf', 'asd asd asdf', '01741607831', 'asdasdf@asdfads.asdf', 'asd fasdf asd', 'fasd asdf asdf', 33, 2, 'Male', '2020-12-01', '2020-12-24 05:42:22', '2020-12-24 05:42:28', '2020-12-24 05:42:28'),
(100, 0, 0, 52, 46, 13, 72, 23343, 'asd asd asdf', 'asd asd', 'fasdf asdf', 'asdf asd', '01741607831', 'fasdf2@asdf.com', 'aasdfasdf', 'asdfasdf', 38, 3, 'Male', '2020-12-01', '2020-12-24 05:42:22', '2020-12-24 05:42:28', '2020-12-24 05:42:28'),
(101, 0, 0, 52, 46, 13, 72, 700030, 'asdf asd asdf', 'asd asd fasd', 'fasdf asdf', 'asd asd asdf', '01741607831', 'asdasdf@asdfads.asdf', 'asd fasdf asd', 'fasd asdf asdf', 33, 2, 'Male', '2020-12-01', '2020-12-24 05:42:28', NULL, NULL),
(102, 0, 0, 52, 46, 13, 72, 23343, 'asd asd asdf', 'asd asd', 'fasdf asdf', 'asdf asd', '01741607831', 'fasdf2@asdf.com', 'aasdfasdf', 'asdfasdf', 38, 3, 'Male', '2020-12-01', '2020-12-24 05:42:28', NULL, NULL),
(103, 0, 0, 52, 47, 13, 15, 700030, 'Rakib', 'রাকিব', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC', 'পিএসিসি', 38, 1, 'Male', '2021-06-13', '2021-06-13 10:24:00', '2021-06-13 10:24:10', '2021-06-13 10:24:10'),
(104, 0, 0, 52, 47, 13, 15, 700030, 'Rakib', 'রাকিব', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01741607831', 'mri.rakib@gmail.com', 'PACC', 'পিএসিসি', 38, 1, 'Male', '2021-06-13', '2021-06-13 10:24:10', NULL, NULL),
(105, 1, 0, 53, 48, 21, 15, 700030, 'Rakib', 'রাকিব', 'AP', 'এপি', '01741607831', 'mri.rakib@gmail.com', 'PACC', 'পিএসিসি', 36, 1, 'Male', '1989-07-09', '2021-06-13 10:32:01', '2021-06-13 10:32:53', NULL),
(106, 1, 0, 55, 49, 12, 11, 20551, 'Md. Abdul Mannan', 'জনাব আবদুল মান্নান', 'Senior assistant Secretary', 'সিনিয়র সহকারী প্রধান', '01741607831', 'mannan@gmail.com', 'Finance Division, Finance ministry', 'অর্থ বিভাগ, অর্থ মন্ত্রণালয়', 34, 2, 'Male', '1989-06-16', '2021-06-16 04:29:51', '2021-06-17 05:01:14', NULL),
(107, 1, 0, 55, 49, 12, 11, 20561, 'Md. Tanjim', 'জনাব মোঃ তানজীম', 'Senior Assistant Secretary', 'বিশেষ ভারপ্রাপ্ত কর্মকর্তা (সিনিয়র সহকারী প্রধান)', '0155339322', 'tanjim@gmail.com', 'Mopa', 'জনপ্রশাসন মন্ত্রণালয় পিআরআরসি, কক্সবাজার', 34, 2, 'Male', '1989-06-09', '2021-06-16 04:29:51', '2021-06-17 05:01:14', NULL),
(108, 0, 0, 55, 50, 12, 73, 20569, 'Sabina Yasmin', 'জনাব সাবিনা ইয়াসমিন', 'Senior Assistant Secretary', 'সিনিয়র সহকারী প্রধান', '01717362364', 'sabina@gmail.com', 'Finance Ministry', 'অর্থ বিভাগ, অর্থ মন্ত্রণালয়', 34, 2, 'Male', '1988-09-09', '2021-06-17 04:53:55', '2021-06-17 05:01:14', NULL),
(109, 1, 0, 55, 50, 12, 73, 20570, 'Md. Kamruul Islam', 'মোঃ কামরুল ইসলাম', 'Senior Assistant Secretary', 'সিনিয়র সহকারী সচিব', '01710631161', 'kamrul@gmail.com', 'OSD', 'সিনিয়র সহকারী (বিশেষ ভারপ্রাপ্ত কর্মকর্তা)', 34, 2, 'Male', '1988-08-09', '2021-06-17 04:53:55', '2021-06-17 05:01:14', NULL),
(110, 1, 0, 56, 51, 12, 11, 700030, 'Rakib', 'রাকিব', 'Assistant Commissioner', 'সহকারী কমিশনার', '01741607831', 'mri.rakib@gmail.com', 'PACC', 'পিএসিসি', 34, 2, 'Male', '1987-06-21', '2021-06-21 09:34:14', '2021-06-21 09:44:20', NULL),
(111, 0, 0, 56, 51, 12, 11, 20551, 'Mannan', 'জনাব আবদুল মান্নান', 'Asst. Chief', 'সিনিয়র সহকারী প্রধান', '01741303030', 'mri.rakib2@gmail.com', 'Finance Ministry', 'অর্থ বিভাগ, অর্থ মন্ত্রণালয়', 34, 2, 'Male', '1988-06-08', '2021-06-21 09:34:14', '2021-06-21 09:44:20', NULL),
(112, 2, 1, 54, 52, 0, 86, 700030, 'Rakib', 'রাকিব', 'Asst Prog', 'সপ্র', '01741607831', 'mri.rakib@gmail.com', 'PACC', 'পিএসিসি', 34, 2, 'Male', '1988-01-05', '2021-06-27 08:37:08', '2021-06-27 10:18:31', NULL),
(113, 2, 1, 54, 52, 0, 86, 700029, 'Likhon', 'লিখন', 'Asst Prog', 'সপ্র', '01521481414', 'likhon@gmail.com', 'PACC', 'পিএসিসি', 35, 2, 'Male', '1985-06-01', '2021-06-27 08:37:08', '2021-06-27 10:18:31', NULL),
(114, 2, 0, 54, 52, 0, 86, 700031, 'Hasan', 'হাসান', 'AS', 'সস', '01541202020', 'hasan@gmail.com', 'MOPA', 'জপ্র', 34, 2, 'Male', '1986-06-02', '2021-06-27 08:37:08', '2021-06-27 10:18:31', NULL),
(115, 1, 0, 64, 53, 2, 86, 700030, 'asd', 'asdf', 'asd', 'asdf', '01741607831', 'mri.rakib@gmail.com', 'asdf', 'asdf', 34, 2, 'Male', '2021-06-21', '2021-06-27 10:49:44', '2021-06-27 10:49:51', NULL),
(116, 1, 0, 64, 53, 2, 86, 700029, 'afasfda', 'asdf', 'asdf', 'asd', '01741607831', 'mri.rakib2@gmail.com', 'asdf', 'asdf', 37, 2, 'Male', '2021-06-01', '2021-06-27 10:49:44', '2021-06-27 10:49:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_bangla` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `created_by` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `name_bangla`, `email`, `contact_no`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BPATC', 'বিপিএটিসি', 'it3@mopa.gov.bd', '01741607831', 1, 1, '2020-10-14 10:42:36', '2020-11-12 06:58:43'),
(2, 'BCSAA', 'বিসিএস প্রশাসন একাডেমি', 'aaf@mail.com', '01741607831', 1, 1, '2020-10-14 10:44:08', '2021-06-22 04:23:33'),
(3, 'BIM', 'বিআইএম', 'bim@gmail.com', '01741607831', 1, 1, '2020-10-14 10:45:38', '2020-11-23 04:31:31'),
(4, 'NAPD', 'এনএপিডি', 'napd@gmail.com', '01741607831', 1, 1, '2020-10-14 10:47:47', '2020-11-23 04:32:18'),
(5, 'Example', 'উদাহরন', 'mri.rakib@gmail.com', '01741607831', 1, 0, '2020-11-03 09:47:06', '2020-11-23 04:32:33'),
(6, 'Example 2', 'উদাহরন ২', 'mri.rakib@gmail.com', '01741607831', 1, 0, '2020-11-12 07:00:52', '2020-11-23 04:32:39'),
(7, 'Example 3', 'উদাহরন ৩', 'example@example.com', '01741607831', 1, 0, '2020-11-17 06:35:51', '2020-11-23 04:32:45'),
(8, 'BMA', 'বিএমএ', 'bma@gmail.com', '01741607831', 1, 1, '2021-06-16 04:21:58', '2021-06-16 04:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `training_calender_id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `issue_no` varchar(255) NOT NULL,
  `issue_date` date DEFAULT NULL,
  `application_start_date` date DEFAULT NULL,
  `application_end_date` date DEFAULT NULL,
  `training_start_date` date DEFAULT NULL,
  `training_end_date` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `status` int(11) NOT NULL COMMENT '0=draft, 1=open, 2=close, 3=primary selection, 4=make final, 5=delete',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `training_calender_id`, `organization_id`, `title`, `issue_no`, `issue_date`, `application_start_date`, `application_end_date`, `training_start_date`, `training_end_date`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(39, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:05:52', '2020-11-09 10:38:57'),
(40, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:06:58', '2020-11-09 10:38:48'),
(41, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:07:30', '2020-11-09 10:38:37'),
(42, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:08:02', '2020-11-09 10:38:27'),
(43, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:09:00', '2020-11-09 10:38:17'),
(44, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:09:27', '2020-11-09 10:38:05'),
(45, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-09 10:10:52', '2020-11-19 08:30:14'),
(46, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-11-09 10:11:16', '2020-11-09 10:11:29'),
(47, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, '2020-11-12 08:05:00', '2020-12-13 10:04:05'),
(48, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-11-23 07:45:57', '2020-11-23 10:13:49'),
(49, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-12-10 07:51:12', '2020-12-10 08:05:57'),
(50, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2020-12-10 08:24:26', '2020-12-10 08:24:26'),
(51, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2020-12-10 08:53:03', '2020-12-10 09:00:31'),
(52, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2020-12-24 05:40:19', '2020-12-24 05:40:24'),
(53, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2021-06-13 10:29:58', '2021-06-13 10:32:56'),
(54, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, '2021-06-16 03:55:46', '2021-06-16 03:55:55'),
(55, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2021-06-16 04:23:09', '2021-06-17 05:01:20'),
(56, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, '2021-06-21 09:24:10', '2021-06-21 09:45:00'),
(61, 0, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '2021-06-23 09:52:56', '2021-06-23 09:52:56'),
(64, 2, 2, 'asd sad asd', '12.032.02365011', '2021-06-17', '2021-06-09', '2021-06-17', '2021-06-22', '2021-06-30', NULL, 1, '2021-06-24 10:05:35', '2021-06-27 10:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `training_calenders`
--

CREATE TABLE `training_calenders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `issue_no` varchar(255) NOT NULL,
  `issue_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `financial_year` varchar(255) NOT NULL,
  `residence_type_id` int(11) NOT NULL,
  `attaindance_type_id` int(11) NOT NULL,
  `trainee_number` int(11) NOT NULL,
  `trainee_level` varchar(255) NOT NULL,
  `application_start_date` date NOT NULL,
  `application_end_date` date NOT NULL,
  `training_start_date` date NOT NULL,
  `training_end_date` date NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=open, 2=publish',
  `admin_id` int(11) DEFAULT NULL,
  `organization_id` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `training_calenders`
--

INSERT INTO `training_calenders` (`id`, `title`, `issue_no`, `issue_date`, `archive_date`, `financial_year`, `residence_type_id`, `attaindance_type_id`, `trainee_number`, `trainee_level`, `application_start_date`, `application_end_date`, `training_start_date`, `training_end_date`, `status`, `admin_id`, `organization_id`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa', '2325', '2021-06-01', NULL, '2021-2022', 1, 2, 12, 'sas', '2021-06-09', '2021-06-17', '2021-06-22', '2021-06-30', 1, 12, 2, NULL, '2021-06-23 09:20:14', '2021-06-23 09:20:14'),
(2, 'aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa', '2325', '2021-06-01', NULL, '2021-2022', 1, 2, 12, 'sas', '2021-06-09', '2021-06-17', '2021-06-22', '2021-06-30', 2, 12, 2, NULL, '2021-06-23 09:20:51', '2021-06-24 10:05:35'),
(3, 'sad fas sad sadf as sf sadf asdf asd asdf sdf asf asdf sad fa asdf asd fasd asd f333', '23232', '2021-06-01', NULL, '2021-2022', 2, 1, 232, '23232', '2021-06-10', '2021-06-11', '2021-06-23', '2021-06-30', 1, 12, 2, 'sd asd fasdf asdas dasd fasdf sadf', '2021-06-23 09:39:09', '2021-06-23 10:45:38'),
(4, 'sad fas sad sadf as sf sadf asdf asd asdf sdf asf asdf sad fa sd asd sadf12313 13a1321 31', '23231', '2021-06-01', NULL, '2021-2022', 1, 3, 231, '23231', '2021-06-10', '2021-06-11', '2021-06-23', '2021-06-30', 1, NULL, 2, 'rerer e asdf as sdf sf sdf sdfsd asd asdf', '2021-06-23 10:39:35', '2021-06-23 10:46:50'),
(5, 'Internal Training 1 Internal Training 1 Internal Training 1 Internal Training 1 Internal Training 1 Internal Training 1', '25', '2021-06-23', NULL, '2021-2022', 1, 2, 23, '23', '2021-06-25', '2021-06-25', '2021-06-30', '2021-07-29', 1, 21, 3, 'remarks .....', '2021-06-24 04:26:24', '2021-06-24 04:26:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `name_bangla` varchar(255) NOT NULL,
  `section_bangla` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` tinyint(4) NOT NULL COMMENT '1=super admin,2=admin, 3=general',
  `user_level` tinyint(4) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=not approved,1=active,2=inactive',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `section`, `name_bangla`, `section_bangla`, `email`, `user_type`, `user_level`, `created_by`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '', '', 'mri.rakib@gmail.com', 1, 0, NULL, 1, '2020-09-25 12:23:24', '$2y$10$jSL6eFclY0T5Ht2XQMkv9.UEOLWNuBD3r2t2mpCPe9VK2e0rcJfT.', 'LWUtKPV5BnmAmdgG8P4bvfhn19oMlYKfR88Yk4Jd394t5hMUMkruxAlwSiLa', '2020-09-25 12:22:12', '2020-10-13 05:57:15'),
(2, 'Internal Training - 1', 'Internal Training', 'অভ্যন্তরীণ প্রশিক্ষণ-১ শাখা', 'অভ্যন্তরীণ প্রশিক্ষণ', 'itss1@mopa.gov.bd', 2, 0, NULL, 2, '2020-10-04 17:59:06', '$2y$10$9AupoyIIW2me25iyI6OWDu87cWBVOjywE38uFngDPx/xyPbbHYc.K', 'hwLsgmj3B3oxULh2YqivIaPfdpKKzwUUetKe1ltirPLRLNyqYQRT1GycXiW4', '2020-10-04 17:58:39', '2021-06-13 10:19:10'),
(11, 'DC Dhaka', 'General', 'ডিসি ঢাকা', 'সাধারন', 'dcdhaka@mopa.gov.bd', 3, 1, 14, 1, NULL, '$2y$10$.0A0UocGyodpqh7q17s.6ehTbaWTVI8THVTBZmfGJVuLPkVIwdhna', 'IZEk0GRGqNs4jH7FQ6lBeujwF2zCzkfJaWaSB2q0PaapZkNXKRGLK3TndKWg', '2020-10-05 17:39:48', '2020-11-24 08:54:22'),
(12, 'Internal Training - 2', 'Internal Training', 'অভ্যন্তরীণ প্রশিক্ষণ-২ শাখা', 'অভ্যন্তরীণ প্রশিক্ষণ', 'it2@mopa.gov.bd', 2, 0, NULL, 1, NULL, '$2y$10$ePPYWc2OhqANfDkkUxj7Vu4nuvfuJvR0lDbeQNGiitkHOvVLpC.r2', NULL, '2020-10-05 18:11:56', '2020-11-25 07:28:00'),
(13, 'Internal Training - 3', 'Internal Training', 'অভ্যন্তরীণ প্রশিক্ষণ-৩ শাখা', 'অভ্যন্তরীণ প্রশিক্ষণ', 'it3@mopa.gov.bd', 2, 0, NULL, 1, NULL, '$2y$10$qfY/MmtitoiMvjlGMSqMd.DbdF6xgQv8ltsl.QCcjNlKrmG1SfoV6', NULL, '2020-10-05 19:01:53', '2020-11-25 07:29:16'),
(14, 'Foreign Training', 'Foreign Training', 'বিদেশ প্রশিক্ষণ শাখা', 'বিদেশ প্রশিক্ষণ', 'ft@mopa.gov.bd', 2, 0, NULL, 1, NULL, '$2y$10$QGc4dSM39jpcgxB0VBHSfuU0gwGXafrg9oWZIa4TzkbEyhuGk9NAe', 'gFrRqkfPabKM6IM5mdnUtPSG8Fjotf09tLoBHl4hceyJbuuy6ZsmEwCHSq5C', '2020-10-06 16:21:08', '2020-11-25 07:30:47'),
(15, 'DC Narayanganj', 'General', 'ডিসি নারায়নগন্জ', 'সাধারন', 'dcnarayanganj@mopa.gov.bd', 3, 1, 14, 1, NULL, '$2y$10$hx.7VfOhWdh28xZnHD5OzOuVgKH6/XyHFblyGbfExmPnCi6nl/emS', 'LVX33OiUSwIxNpJId3wto3IBPsMRMV2lZCkB3VuDPNT1By0o3DhMMz54046Z', '2020-10-06 16:22:10', '2020-11-24 08:55:23'),
(16, 'DC Munshiganj', 'General', 'মুন্সিগঞ্জ', 'সাধারন', 'dcmunshiganj@mopa.gov.bd', 3, 1, 14, 1, NULL, '$2y$10$364pNjzeC4VZdxCVE/QF/u8GRAyTWpOIuv.bX4k0JJH.BpMg/p9ke', NULL, '2020-10-06 16:28:15', '2020-11-24 08:57:15'),
(17, 'Foreign Training - 2', 'Foreign Training', 'বিদেশ প্রশিক্ষণ-২ শাখা', 'বিদেশ প্রশিক্ষণ', 'ft2@mopa.gov.bd', 2, 0, NULL, 1, NULL, '$2y$10$joFyeU1CKpMn8fp0xDslS.izouQxxw05OjOQgHjYN/peS63vjzKc.', NULL, '2020-10-06 16:31:37', '2020-11-25 07:42:35'),
(18, 'DC Khulna', 'General', 'ববব', 'ববব', 'dc_khulna@mopa.gov.bd', 2, 0, NULL, 2, NULL, '$2y$10$I1X7lTCSxUbSajJlRW3JOulYOWg/7DRtCf8pYiVtBDkQbj4SaoPJu', NULL, '2020-10-12 07:16:17', '2020-11-25 07:46:44'),
(19, 'DC Narsingdi', 'General', 'ডিসি নরসিংদী', 'সাধারন', 'dcnarsingdi@mopa.gov.bd', 3, 1, 18, 1, NULL, '$2y$10$a6bXo/QPc6xT8VlRLXvvCewgk7Y8zR.D5LzI0SwVqDdaAt3ufAAya', 'WEZtK0vAxmP5ADJyQiwb7auHm26LsST9in4tyQZksvli3M0zkM0Z91WWtb3w', '2020-10-12 07:18:29', '2020-11-24 08:58:31'),
(20, 'DC Manikganj', 'General', 'ডিসি মানিকগঞ্জ', 'সাধারন', 'dcmanikganj@mopa.gov.bd', 3, 1, 18, 1, NULL, '$2y$10$my.QaVAJA4RtWMoDcUReJeV8KGxfPgVKk7x/LbBnAq0oAGZvwNBFC', NULL, '2020-10-12 07:27:51', '2020-11-24 08:59:53'),
(21, 'Internal Training 1', 'Training', 'অভ্যন্তরীণ প্রশিক্ষণ-১ শাখা', 'প্রশিক্ষণ', 'it1@mopa.gov.bd', 2, 0, 0, 1, NULL, '$2y$10$zW42Uk8E3RqPvh.Jbf0Mde.uFpc.zuUr68pg/otq3GkBgEbpEwB.i', NULL, '2020-10-13 05:56:19', '2020-12-10 08:33:50'),
(22, 'DC Gazipur', 'General', 'ডিসি গাজীপুর', 'সাধারন', 'dcgazipur@mopa.gov.bd', 3, 1, 21, 1, NULL, '$2y$10$ko4hPdotz8FfA.yuwe5.LuKjOomdyJBsNIZpu4Bec.Uu/s0Ab9.H2', NULL, '2020-10-13 06:08:45', '2020-11-24 09:00:44'),
(23, 'DC Faridpur', 'General', 'ডিসি ফরিদপুর', 'সাধারন', 'dcfaridpur@mopa.gov.bd', 3, 1, 21, 1, NULL, '$2y$10$quZZYx0vPBEofiFrqPVRUO1R9mfXXRwEYfxuI5BYr9LoKwouCXHCu', NULL, '2020-10-13 06:09:21', '2020-11-24 09:02:18'),
(24, 'AO DC Faridpur', 'AO DC Faridpur', 'বব', 'বব', 'ao_dc_faridpur@mopa.gov.bd', 2, 0, 1, 2, NULL, '$2y$10$k2TFDeJ/9uwgOP48T0XZ5uScNc0NQSP4ovfaPld.n7t1CoyJURs7i', NULL, '2020-10-14 06:54:02', '2020-11-25 07:47:01'),
(25, 'DC Rajbari', 'General', 'ডিসি রাজবাড়ী', 'সাধারন', 'dcrajbari@mopa.gov.bd', 3, 1, 21, 1, NULL, '$2y$10$kOm1fRUgjfqBfs0ySl.NNebE0dMI3Xc20mjR57iLZ8VtdZaZUvpGa', NULL, '2020-10-15 05:59:59', '2020-11-24 09:03:24'),
(26, 'DC Shariatpur', 'General', 'ডিসি শরিয়তপুর', 'সাধারন', 'dcshariatpur@mopa.gov.bd', 3, 1, 21, 1, NULL, '$2y$10$TxI1ajYneMaM/WvUAWHDGe4yRNY03EEH/mfc3fr8uTprnLsOnlfqS', NULL, '2020-10-18 05:29:51', '2020-11-24 09:04:18'),
(27, 'IT4', 'adfadsf dsa', '্ববব', 'বববব', 'itwww4@mopa.gov.bd', 2, 0, 1, 2, NULL, '$2y$10$gcJfda3UBVf9aZu1XHr1POBMX/pyoH8j2eG1XaQ2jQK6h75nmCo42', NULL, '2020-10-25 08:46:40', '2020-11-25 07:47:35'),
(28, 'DC Madaripur', 'General', 'ডিসি মাদারিপুর', 'সাধারন', 'dcmadaripur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$WaMWhc4.ALNv1bRuNURRB.MscmKd24wpHfNgwafHdgjJOyU/cbDM.', NULL, '2020-11-12 05:48:57', '2020-11-24 09:05:13'),
(29, 'DC Gopalganj', 'General', 'ডিসি গোপালগঞ্জ', 'সাধারন', 'dcgopalganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$zVL8rByYXyVvzT2xueckb.8SqDaNI4N8YWtGYEzPFbt6iND55qa4q', NULL, '2020-11-12 05:57:02', '2020-11-24 09:06:33'),
(31, 'DC Mymensingh', 'General', 'ডিসি ময়মনসিংহ', 'সাধারন', 'dcmymensingh@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$abqhCNsB.JHy..BSzdIK2u65zOOmLq/uoxMCmS0cURd1Yxt/ahnWG', NULL, '2020-11-12 06:09:10', '2020-11-24 09:08:31'),
(32, 'likhon', 'asdf', '্বকা্ব', '্বা্বকাব', 'asasdfd@asd.asdf', 2, 0, 1, 2, NULL, '$2y$10$6EpJWQaN0xDhHmUzYVhkHeefn99io7qYT1TEXev6mK1rT3jfTFtBS', NULL, '2020-11-12 06:10:11', '2020-11-25 07:44:55'),
(33, 'DC Netrokona', 'General', 'ডিসি নেত্রকোণা', 'সাধারন', 'dcnetrokona@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$2AS/J4ACzX4O4g6CQqmw.e6XJM06JsuHlov2jbivVUCzEvYcXPPk.', NULL, '2020-11-17 06:39:17', '2020-11-24 09:09:21'),
(34, 'DC Kishoreganj', 'General', 'ডিসি কিশোরগঞ্জ', 'সাধারন', 'dckishoreganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$NnYC3UG/aHUfV0qB5Pb36OKZSFl/cjZ1pvo8T6enZqSd1EWNYhLMS', NULL, '2020-11-24 09:13:07', '2020-11-24 09:13:07'),
(35, 'DC Tangail', 'General', 'ডিসি টাঙ্গাইল', 'সাধারন', 'dctangail@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$PnYHfSc64OWUMry2m5s8cu7NPiPNl6XymDv6ocCVEH30kpLkqXhiu', NULL, '2020-11-24 09:18:42', '2020-11-24 09:18:42'),
(36, 'DC Jamalpur', 'General', 'ডিসি জামালপুর', 'সাধারন', 'dcjamalpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$WfKuIORU47CWohQwPH768eRl6oPHEPX7yCceO3pqPT075IrZDitwC', NULL, '2020-11-24 09:19:52', '2020-11-24 09:19:52'),
(37, 'DC Sherpur', 'General', 'ডিসি শেরপুর', 'সাধারন', 'dcsherpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$MkQjoK/yofM3pRivjObbEuicrg1Nlw4ott2XU6yuOesY0AZ94qHkW', NULL, '2020-11-24 09:20:48', '2020-11-24 09:20:48'),
(38, 'DC Comilla', 'General', 'ডিসি কুমিল্লা', 'সাধারন', 'dccomilla@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$3bG1Q0hP4p3c5xUjwK.E3ud19NnHrClKHDfvDxpEY.8kNs2O57zJe', NULL, '2020-11-24 09:22:03', '2020-11-24 09:22:03'),
(39, 'DC Chandpur', 'General', 'ডিসি চাঁদপুর', 'সাধারন', 'dcchandpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$qWQu18MgxIaIIj51VMjB9u0GxgECxxqn9EkYbSkKLdxB6uOCVxOXG', NULL, '2020-11-24 09:24:43', '2020-11-24 09:24:43'),
(40, 'DC Brahmanbaria', 'General', 'ডিসি ব্রাহ্মণবাড়িয়া', 'সাধারন', 'dcbrahmanbaria@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$fe3cUC.7baRvKIAzBeHPx.vYOisfN2Uq.urNwYroBmyCptezJ/vUm', NULL, '2020-11-24 09:25:32', '2020-11-24 09:25:32'),
(41, 'DC Noakhali', 'General', 'ডিসি নোয়াখালী', 'সাধারন', 'dcnoakhali@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$JEBUCPTDi7Cg2A3d9E5dR.LPgaYjF0EVadqoeqRy8leOJhwxGZlQ.', NULL, '2020-11-24 09:26:23', '2020-11-24 09:26:23'),
(42, 'DC Feni', 'General', 'ডিসি ফেনী', 'সাধারন', 'dcfeni@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$a6oVaWsXjzIm/I2.KEPiU./x9OwO9mQokTeRzu5MYR35s332cPll.', NULL, '2020-11-24 09:27:08', '2020-11-24 09:27:08'),
(43, 'DC Lakshmipur', 'General', 'ডিসি লক্ষ্মীপুর', 'সাধারন', 'dclakshmipur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$9yfMVaZqOvVMwtZcnbzFmOx.gb2OvrbaL9X/oNvwBBtD0JIJM4uv6', NULL, '2020-11-24 09:28:00', '2020-11-24 09:28:00'),
(44, 'DC Sylhet', 'General', 'ডিসি সিলেট', 'সাধারন', 'dcsylhet@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$ifAxe/3QWeMwXVOTfCAe7On.dlfu3qWpulXfO0rnKBObdvFmrIcNK', NULL, '2020-11-24 09:28:53', '2020-11-24 09:28:53'),
(45, 'DC Sunamganj', 'General', 'ডিসি সুনামগঞ্জ', 'সাধারন', 'dcsunamganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$9ysFs68IU5UN9u7DRz9ga.B9P1m9eMRnMjPL5D46mwPbhW/P2RO/K', NULL, '2020-11-24 09:29:52', '2020-11-24 09:29:52'),
(46, 'DC Habiganj', 'General', 'ডিসি হবিগঞ্জ', 'সাধারন', 'dchabiganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$F3ZH8EHfePp9Q0r3TuK0Ye5QIrz0kjEV7./lH3P/tW.gjjXNsSyJS', NULL, '2020-11-24 09:30:43', '2020-11-24 09:30:43'),
(47, 'DC Moulvibazar', 'General', 'ডিসি মৌলভীবাজার', 'সাধারন', 'dcmoulvibazar@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$WgYRTDxDHnCSf/YkookSCOWQYwI0FoT.09P7mdV1w3DEims6d.yIm', NULL, '2020-11-24 09:31:37', '2020-11-24 09:31:37'),
(48, 'DC Chittagong', 'General', 'ডিসি চট্টগ্রাম', 'সাধারন', 'dcchittagong@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$Ih211krigChft007rvRwsejngZDkMOquspi0BHkjq5dIUaqLcff2y', NULL, '2020-11-24 09:32:31', '2020-11-24 09:32:31'),
(49, 'DC Cox\'s Bazar', 'General', 'ডিসি কক্সবাজার', 'সাধারন', 'dccoxsbazar@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$qgM6rjt6YgZ9dsbVZK/WP.jzJmEBy4Brm3GQKMfmeDl.3t58Lm8fO', NULL, '2020-11-24 09:33:21', '2020-11-24 09:33:21'),
(50, 'DC Khagrachari', 'General', 'ডিসি খাগড়াছড়ি', 'সাধারন', 'dckhagrachari@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$lIKuq013Q5y4N8um96tTmeiSOO5G.oDWhZRLDQeIsHjEvCXQw1N5m', NULL, '2020-11-24 09:34:08', '2020-11-24 09:34:08'),
(51, 'DC Bandarban', 'General', 'ডিসি বান্দরবান', 'সাধারন', 'dcbandarban@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$G6xXusFFryxvDONXRIZc2OZA0Yrre17prbIDgJzpUESBWxVkKNVJG', NULL, '2020-11-24 09:34:53', '2020-11-24 09:34:53'),
(52, 'DC Rangamati', 'General', 'ডিসি রাঙ্গামাটি', 'সাধারন', 'dcrangamati@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$RIzkTTJ3Fs3j6uTRlwHSrO76k2hjfQnPsNbrjNSa/7hcD17Es4KmC', NULL, '2020-11-24 09:36:40', '2020-11-24 09:36:40'),
(53, 'DC Pabna', 'General', 'ডিসি পাবনা', 'সাধারন', 'dcpabna@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$0kqLAw/AGGNzzdD51Kk0DOMWODWcGw8UAtqVoWhZCw0YkrIYUN3Je', NULL, '2020-11-24 09:44:22', '2020-11-24 09:44:22'),
(54, 'DC Sirajganj', 'General', 'ডিসি সিরাজগঞ্জ', 'সাধারন', 'dcsirajganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$Zv5en5Dx/cdPrQQVgtWCk.j6AQA./04lvkdv09IA1G/2RzwzfEANq', NULL, '2020-11-24 09:45:43', '2020-11-24 09:45:43'),
(55, 'DC Rajshahi', 'General', 'ডিসি রাজশাহী', 'সাধারন', 'dcrajshahi@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$bDNL44L/LXnldpbbsd/nCu8L5ASOK4gQUP746JQ8oVJYH8t2BJXu6', NULL, '2020-11-24 09:46:32', '2020-11-24 09:46:32'),
(56, 'DC Naogaon', 'General', 'ডিসি নওগাঁ', 'সাধারন', 'dcnaogaon@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$YkkswzN8.n0VbCbKye04VOPwjR4kobJZerlSyCnxUGsaJpPtI6RPG', NULL, '2020-11-24 09:47:27', '2020-11-24 09:47:27'),
(57, 'DC Natore', 'General', 'ডিসি নাটোর', 'সাধারন', 'dcnatore@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$pacQeCO4g/OFnGATEtrHPuB2mLJmWHkDJQnREUgFxLng/7AoMsT26', NULL, '2020-11-24 09:53:13', '2020-11-24 09:53:13'),
(58, 'DC Chapai Nawabganj', 'General', 'ডিসি চাঁপাইনবাবগঞ্জ', 'সাধারন', 'dcchapainawabganj@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$dwMdoVX4nULgRuGM.Cdj6.FvKzcuQV3a/jRzc1B7wtdXYbpgNHhl.', NULL, '2020-11-24 09:54:19', '2020-11-24 09:54:19'),
(59, 'DC Dinajpur', 'General', 'ডিসি দিনাজপুর', 'সাধারন', 'dcdinajpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$Mrh2DrF3uS2J72TUKVg4NecjBRlUHPFGrcQ.s7gQ6lmnmzUobySi2', NULL, '2020-11-24 09:55:10', '2020-11-24 09:55:10'),
(60, 'DC Panchagarh', 'General', 'ডিসি পঞ্চগড়', 'সাধারন', 'dcpanchagarh@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$rhAD/G3OLnNTKUdu/bYaJ.jjrfMWmdENfKd6bgM7Ys0/yH7tLiqzC', NULL, '2020-11-24 09:57:21', '2020-11-24 09:57:21'),
(61, 'DC Thakurgaon', 'General', 'ডিসি ঠাকুরগাঁও', 'সাধারন', 'dcthakurgaon@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$6wVur0ZK3ueHtTRdpE5CduXeuuoCNuJ.X20JIFZDdMmW0vZrol4.K', NULL, '2020-11-24 09:58:40', '2020-11-24 09:58:40'),
(62, 'DC Rangpur', 'General', 'ডিসি রংপুর', 'সাধারন', 'dcrangpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$n7y85Dmtnht4T.yd9WJbp.aXkpuVUAdWIr94fia3hsJNzfmL1dwky', NULL, '2020-11-24 09:59:28', '2020-11-24 09:59:28'),
(63, 'DC Nilphamari', 'General', 'ডিসি নীলফামারী', 'সাধারন', 'dcnilphamari@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$4YZe40D.d43VxJWz3zIyte1sr3wKBLAq7a0DwqCkQBVbPYeiEiteO', NULL, '2020-11-24 10:00:17', '2020-11-24 10:00:17'),
(64, 'DC Gaibandha', 'General', 'ডিসি গাইবান্ধা', 'সাধারন', 'dcgaibandha@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$Q53rlrGoY1eaeuZ.bR/8C.BYQ17ztZg3ef0sNbOCvmWKmYOjYkCdC', NULL, '2020-11-24 10:01:13', '2020-11-24 10:01:13'),
(65, 'DC Kurigram', 'General', 'ডিসি কুড়িগ্রাম', 'সাধারন', 'dckurigram@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$fRqoROnTDf9ajEFTICUZ9.WsNYHdzgVMvPuv//kwNnmQfm7TiIXTu', NULL, '2020-11-24 10:01:57', '2020-11-24 10:01:57'),
(66, 'DC Lalmonirhat', 'General', 'ডিসি লালমনিরহাট', 'সাধারন', 'dclalmonirhat@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$OWJRevzh2JuQhSkdk09AUelW7wcm84CcWlAaCl2FwdpJITcslgpQa', NULL, '2020-11-24 10:02:49', '2020-11-24 10:02:49'),
(67, 'DC Bogra', 'General', 'ডিসি বগুড়া', 'সাধারন', 'dcbogra@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$vumRL74OAfW7xNwLspujIuqG3.3lUDd1WHir1hydCV38F2K.UlzjO', NULL, '2020-11-24 10:03:44', '2020-11-24 10:03:44'),
(68, 'DC Joypurhat', 'General', 'ডিসি জয়পুরহাট', 'সাধারন', 'dcjoypurhat@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$DA4ymc1NfEdCuCCdQkPOg.Jqv9apUzmmOXQJu2yuozE9BUflfNvTO', NULL, '2020-11-24 10:04:32', '2020-11-24 10:04:32'),
(69, 'DC Kushtia', 'General', 'ডিসি কুষ্টিয়া', 'সাধারন', 'dckushtia@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$UP1oKufiXnph5CiacKJUN.yEtUXkkcA/ivlLqi7XfHfJ2jDEb9yz.', NULL, '2020-11-24 10:05:19', '2020-11-24 10:05:19'),
(70, 'DC Chuadanga', 'General', 'ডিসি চুয়াডাঙ্গা', 'সাধারন', 'dcchuadanga@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$wrs0j4HWsOfMtw2liSvkqOBMmsd5CcOZEBQ1YF60G0g.YR1XHLAdq', NULL, '2020-11-24 10:06:02', '2020-11-24 10:06:02'),
(71, 'DC Meherpur', 'General', 'ডিসি মেহেরপুর', 'সাধারন', 'dcmeherpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$aVrvMq1wTqZvhUaRss2FKONoymZZC0xf/7xwPu1Lil7sX9k.qGVrW', NULL, '2020-11-24 10:12:26', '2020-11-24 10:12:26'),
(72, 'DC Jessore', 'General', 'ডিসি যশোর', 'সাধারন', 'dcjessore@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$ARV58I65O5b0RgCeyzAKsONaeGRCuXJ8xOPkCOvs2890.FaGS96bi', NULL, '2020-11-24 10:13:01', '2020-11-24 10:13:01'),
(73, 'DC Jhenaidah', 'General', 'ডিসি ঝিনাইদহ', 'সাধারন', 'dcjhenaidah@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$QYgcZuTVFVkEn0CYU6Zb9e8WqhDr1SJX3uUEWcfTfl/UWBqyuBNJ2', NULL, '2020-11-24 10:13:57', '2020-11-24 10:13:57'),
(74, 'DC Magura', 'General', 'ডিসি মাগুরা', 'সাধারন', 'dcmagura@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$H/77tPmt.qCdqqoC7hoXLuOxMS700P3hzaEKdRE76PKoHDPqKFRBO', NULL, '2020-11-24 10:14:35', '2020-11-24 10:14:35'),
(75, 'DC Narail', 'General', 'ডিসি নড়াইল', 'সাধারন', 'dcnarail@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$fjKJ4KscOlyCx5sGzAdeJeXRmjnS2D.HMOctAbtBQsnD4CDtxe8J.', NULL, '2020-11-24 10:15:24', '2020-11-24 10:15:24'),
(76, 'DC Khulna', 'General', 'ডিসি খুলনা', 'সাধারন', 'dckhulna@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$GliN7ewvvqmV6Usa8AN7bOifw2V98x3MUNWOan.OjeVZgMbGCSxY6', NULL, '2020-11-24 10:16:41', '2020-11-24 10:16:41'),
(77, 'DC Bagerhat', 'General', 'ডিসি বাগেরহাট', 'সাধারন', 'dcbagerhat@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$GCCtfCByfXnHOt2D5kwsxOCbP4pZPhH.Xwnq6GlTyXhuEmOpSJqz2', NULL, '2020-11-24 10:17:34', '2020-11-24 10:17:34'),
(78, 'DC Satkhira', 'General', 'ডিসি সাতক্ষীরা', 'সাধারন', 'dcsatkhira@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$AVsxdrJ03N2MeYMEUrZk5eekxWc3SNL6m7i5yAcDf1ezpaoL.h7ti', NULL, '2020-11-24 10:18:25', '2020-11-24 10:18:25'),
(79, 'DC Barisal', 'General', 'ডিসি বরিশাল', 'সাধারন', 'dcbarisal@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$7.xUiAoW9WAJa1jeE6ipN.zRL8dSBKK8OjGpXcHhL3NKk.k2HXpPi', NULL, '2020-11-25 07:06:55', '2020-11-25 07:06:55'),
(80, 'DC Pirojpur', 'General', 'ডিসি পিরোজপুর', 'সাধারন', 'dcpirojpur@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$JRVsNWlBj4UB7Uib2htKPezrxm7C/M.LkaZXA7SfWu7C4e6pzFdz6', NULL, '2020-11-25 07:08:03', '2020-11-25 07:08:03'),
(81, 'DC Jhalokati', 'General', 'ডিসি ঝালকাঠি', 'সাধারন', 'dcjhalokati@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$YOH0XvjjNq1Nrxzlt6yadu0CUQ3/TeLHZ9Y3o1gmrM6tIdDHvnmAq', NULL, '2020-11-25 07:09:49', '2020-11-25 07:09:49'),
(82, 'DC Bhola', 'General', 'ডিসি ভোলা', 'সাধারন', 'dcbhola@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$P4PFuspXF8oIKAsJtzEmTehET.8/x93BDffqpSGM3akM2ZVmEf5Ua', NULL, '2020-11-25 07:10:27', '2020-11-25 07:10:27'),
(83, 'DC Patuakhali', 'General', 'ডিসি পটুয়াখালী', 'সাধারন', 'dcpatuakhali@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$JLbSXyqbfNtxVe3hYUKrP.RqKIqU9qxHOXieGFYgDRPocw/QU0IPW', NULL, '2020-11-25 07:11:42', '2020-11-25 07:11:42'),
(84, 'DC Barguna', 'General', 'ডিসি বরগুনা', 'সাধারন', 'dcbarguna@mopa.gov.bd', 3, 1, 1, 1, NULL, '$2y$10$Ve1IRjmXbMyurbmEN5boVObGeoBwsgX0bpEFV1LQ5RbEK/inoGtOa', NULL, '2020-11-25 07:13:10', '2020-11-25 07:13:10'),
(85, 'DC Dhaka 2', 'Training 2', 'ডিসি ঢাকা ২', 'ট্রেনিং ২', 'dcdhaka2@mopa.gov.bd', 3, 2, 1, 1, NULL, '$2y$10$JOHDZTNIqXbL0N4S5eSRpeCCtfiYVdkGV2kP1R7OMRnVLy6yJT/PK', NULL, '2021-06-22 07:09:59', '2021-06-22 07:17:27'),
(86, 'DC Dhaka', 'Admin', 'ডিসি ঢাকা', 'প্রশাসন', 'dc_dhaka_admin@mopa.gov.bd', 4, 2, 1, 1, NULL, '$2y$10$wa4zl6PUUhgKktHC..ePIefvoiy4n3j1gMF0ErNt73dFGkhDSEte2', NULL, '2021-06-27 04:36:01', '2021-06-27 04:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_institutes`
--

CREATE TABLE `user_institutes` (
  `id` int(11) NOT NULL,
  `organization_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_institutes`
--

INSERT INTO `user_institutes` (`id`, `organization_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 2, 12, '2021-06-22 09:29:28', '2021-06-22 10:54:41'),
(6, 4, 13, '2021-06-22 10:02:31', '2021-06-22 10:02:31'),
(7, 1, 14, '2021-06-22 10:02:39', '2021-06-22 10:02:39'),
(8, 2, 17, '2021-06-22 10:03:03', '2021-06-23 07:11:06'),
(9, 3, 21, '2021-06-22 10:03:20', '2021-06-24 04:04:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` int(11) NOT NULL,
  `user_level` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=action,0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `user_level`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DC Office', 1, '2021-06-22 05:21:15', NULL),
(2, 'Ministry', 1, '2021-06-22 05:21:15', NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `description`, `action_time`, `ip_address`, `created_at`, `updated_at`) VALUES
(177, 21, 'Training create 39', '2020-11-09 10:05:53', '127.0.0.1', '2020-11-09 10:05:53', '2020-11-09 10:05:53'),
(178, 21, 'Training publish 39', '2020-11-09 10:05:57', '127.0.0.1', '2020-11-09 10:05:57', '2020-11-09 10:05:57'),
(179, 21, 'Training create 40', '2020-11-09 10:06:58', '127.0.0.1', '2020-11-09 10:06:58', '2020-11-09 10:06:58'),
(180, 21, 'Training publish 40', '2020-11-09 10:07:02', '127.0.0.1', '2020-11-09 10:07:02', '2020-11-09 10:07:02'),
(181, 21, 'Training create 41', '2020-11-09 10:07:30', '127.0.0.1', '2020-11-09 10:07:30', '2020-11-09 10:07:30'),
(182, 21, 'Training publish 41', '2020-11-09 10:07:34', '127.0.0.1', '2020-11-09 10:07:34', '2020-11-09 10:07:34'),
(183, 21, 'Training create 42', '2020-11-09 10:08:02', '127.0.0.1', '2020-11-09 10:08:02', '2020-11-09 10:08:02'),
(184, 21, 'Training publish 42', '2020-11-09 10:08:06', '127.0.0.1', '2020-11-09 10:08:06', '2020-11-09 10:08:06'),
(185, 21, 'Training create 43', '2020-11-09 10:09:00', '127.0.0.1', '2020-11-09 10:09:00', '2020-11-09 10:09:00'),
(186, 21, 'Training create 44', '2020-11-09 10:09:27', '127.0.0.1', '2020-11-09 10:09:27', '2020-11-09 10:09:27'),
(187, 21, 'Training publish 43', '2020-11-09 10:09:32', '127.0.0.1', '2020-11-09 10:09:32', '2020-11-09 10:09:32'),
(188, 21, 'Training publish 44', '2020-11-09 10:09:35', '127.0.0.1', '2020-11-09 10:09:35', '2020-11-09 10:09:35'),
(189, 17, 'Training create 45', '2020-11-09 10:10:52', '127.0.0.1', '2020-11-09 10:10:52', '2020-11-09 10:10:52'),
(190, 17, 'Training create 46', '2020-11-09 10:11:16', '127.0.0.1', '2020-11-09 10:11:16', '2020-11-09 10:11:16'),
(191, 17, 'Training publish 45', '2020-11-09 10:11:26', '127.0.0.1', '2020-11-09 10:11:26', '2020-11-09 10:11:26'),
(192, 17, 'Training publish 46', '2020-11-09 10:11:29', '127.0.0.1', '2020-11-09 10:11:29', '2020-11-09 10:11:29'),
(193, 25, 'Nomination information save. Training id: 39', '2020-11-09 10:15:15', '127.0.0.1', '2020-11-09 10:15:15', '2020-11-09 10:15:15'),
(194, 25, 'Nomination information save. Training id: 40', '2020-11-09 10:26:44', '127.0.0.1', '2020-11-09 10:26:44', '2020-11-09 10:26:44'),
(195, 25, 'Nomination information save. Training id: 41', '2020-11-09 10:29:05', '127.0.0.1', '2020-11-09 10:29:05', '2020-11-09 10:29:05'),
(196, 25, 'Nomination information save. Training id: 46', '2020-11-09 10:30:55', '127.0.0.1', '2020-11-09 10:30:55', '2020-11-09 10:30:55'),
(197, 25, 'Nomination information save. Training id: 45', '2020-11-09 10:32:58', '127.0.0.1', '2020-11-09 10:32:58', '2020-11-09 10:32:58'),
(198, 25, 'Nomination information save. Training id: 44', '2020-11-09 10:33:50', '127.0.0.1', '2020-11-09 10:33:50', '2020-11-09 10:33:50'),
(199, 25, 'Nomination information save. Training id: 43', '2020-11-09 10:34:44', '127.0.0.1', '2020-11-09 10:34:44', '2020-11-09 10:34:44'),
(200, 25, 'Nomination information save. Training id: 42', '2020-11-09 10:35:38', '127.0.0.1', '2020-11-09 10:35:38', '2020-11-09 10:35:38'),
(201, 21, 'Training close 44', '2020-11-09 10:36:21', '127.0.0.1', '2020-11-09 10:36:21', '2020-11-09 10:36:21'),
(202, 21, 'Training close 43', '2020-11-09 10:36:25', '127.0.0.1', '2020-11-09 10:36:25', '2020-11-09 10:36:25'),
(203, 21, 'Training close 42', '2020-11-09 10:36:27', '127.0.0.1', '2020-11-09 10:36:27', '2020-11-09 10:36:27'),
(204, 21, 'Training close 41', '2020-11-09 10:36:31', '127.0.0.1', '2020-11-09 10:36:31', '2020-11-09 10:36:31'),
(205, 21, 'Training close 40', '2020-11-09 10:36:34', '127.0.0.1', '2020-11-09 10:36:34', '2020-11-09 10:36:34'),
(206, 21, 'Training close 39', '2020-11-09 10:36:36', '127.0.0.1', '2020-11-09 10:36:36', '2020-11-09 10:36:36'),
(207, 21, 'Candidate Selection save. Training id: 44', '2020-11-09 10:38:00', '127.0.0.1', '2020-11-09 10:38:00', '2020-11-09 10:38:00'),
(208, 21, 'Training make final 44', '2020-11-09 10:38:05', '127.0.0.1', '2020-11-09 10:38:05', '2020-11-09 10:38:05'),
(209, 21, 'Candidate Selection save. Training id: 43', '2020-11-09 10:38:15', '127.0.0.1', '2020-11-09 10:38:15', '2020-11-09 10:38:15'),
(210, 21, 'Training make final 43', '2020-11-09 10:38:17', '127.0.0.1', '2020-11-09 10:38:17', '2020-11-09 10:38:17'),
(211, 21, 'Candidate Selection save. Training id: 42', '2020-11-09 10:38:24', '127.0.0.1', '2020-11-09 10:38:24', '2020-11-09 10:38:24'),
(212, 21, 'Training make final 42', '2020-11-09 10:38:27', '127.0.0.1', '2020-11-09 10:38:27', '2020-11-09 10:38:27'),
(213, 21, 'Candidate Selection save. Training id: 41', '2020-11-09 10:38:36', '127.0.0.1', '2020-11-09 10:38:36', '2020-11-09 10:38:36'),
(214, 21, 'Training make final 41', '2020-11-09 10:38:37', '127.0.0.1', '2020-11-09 10:38:37', '2020-11-09 10:38:37'),
(215, 21, 'Candidate Selection save. Training id: 40', '2020-11-09 10:38:46', '127.0.0.1', '2020-11-09 10:38:46', '2020-11-09 10:38:46'),
(216, 21, 'Training make final 40', '2020-11-09 10:38:48', '127.0.0.1', '2020-11-09 10:38:48', '2020-11-09 10:38:48'),
(217, 21, 'Candidate Selection save. Training id: 39', '2020-11-09 10:38:55', '127.0.0.1', '2020-11-09 10:38:55', '2020-11-09 10:38:55'),
(218, 21, 'Training make final 39', '2020-11-09 10:38:57', '127.0.0.1', '2020-11-09 10:38:57', '2020-11-09 10:38:57'),
(219, 21, 'GO information (template) save 13', '2020-11-09 10:43:29', '127.0.0.1', '2020-11-09 10:43:29', '2020-11-09 10:43:29'),
(220, 21, 'GO information save 25', '2020-11-09 10:43:52', '127.0.0.1', '2020-11-09 10:43:52', '2020-11-09 10:43:52'),
(221, 21, 'GO information save 26', '2020-11-09 10:44:11', '127.0.0.1', '2020-11-09 10:44:11', '2020-11-09 10:44:11'),
(222, 21, 'GO information save 27', '2020-11-09 10:44:26', '127.0.0.1', '2020-11-09 10:44:26', '2020-11-09 10:44:26'),
(223, 21, 'GO information save 28', '2020-11-09 10:44:41', '127.0.0.1', '2020-11-09 10:44:41', '2020-11-09 10:44:41'),
(224, 21, 'GO information save 29', '2020-11-09 10:44:57', '127.0.0.1', '2020-11-09 10:44:57', '2020-11-09 10:44:57'),
(225, 21, 'GO information save 30', '2020-11-09 10:45:10', '127.0.0.1', '2020-11-09 10:45:10', '2020-11-09 10:45:10'),
(226, 21, 'Training Report create.', '2020-11-09 10:46:04', '127.0.0.1', '2020-11-09 10:46:04', '2020-11-09 10:46:04'),
(227, 21, 'Training Report pdf create.', '2020-11-09 10:46:12', '127.0.0.1', '2020-11-09 10:46:12', '2020-11-09 10:46:12'),
(228, 21, 'Training Report create.', '2020-11-09 10:47:03', '127.0.0.1', '2020-11-09 10:47:03', '2020-11-09 10:47:03'),
(229, 21, 'Training Report create.', '2020-11-09 10:51:15', '127.0.0.1', '2020-11-09 10:51:15', '2020-11-09 10:51:15'),
(230, 21, 'Training Report create.', '2020-11-09 10:51:37', '127.0.0.1', '2020-11-09 10:51:37', '2020-11-09 10:51:37'),
(231, 21, 'Training Report create.', '2020-11-09 10:52:13', '127.0.0.1', '2020-11-09 10:52:13', '2020-11-09 10:52:13'),
(232, 21, 'Training Report create.', '2020-11-10 03:56:13', '127.0.0.1', '2020-11-10 03:56:13', '2020-11-10 03:56:13'),
(233, 21, 'Training Report create.', '2020-11-10 03:56:24', '127.0.0.1', '2020-11-10 03:56:24', '2020-11-10 03:56:24'),
(234, 21, 'Training Report pdf create.', '2020-11-10 03:56:39', '127.0.0.1', '2020-11-10 03:56:39', '2020-11-10 03:56:39'),
(235, 21, 'Training Report create.', '2020-11-10 03:56:59', '127.0.0.1', '2020-11-10 03:56:59', '2020-11-10 03:56:59'),
(236, 21, 'Training Report pdf create.', '2020-11-10 03:57:01', '127.0.0.1', '2020-11-10 03:57:01', '2020-11-10 03:57:01'),
(237, 21, 'Training Report create.', '2020-11-10 03:58:23', '127.0.0.1', '2020-11-10 03:58:23', '2020-11-10 03:58:23'),
(238, 21, 'Training Report pdf create.', '2020-11-10 03:58:27', '127.0.0.1', '2020-11-10 03:58:27', '2020-11-10 03:58:27'),
(239, 21, 'Training Report create.', '2020-11-10 04:00:17', '127.0.0.1', '2020-11-10 04:00:17', '2020-11-10 04:00:17'),
(240, 21, 'Training Report create.', '2020-11-10 04:04:07', '127.0.0.1', '2020-11-10 04:04:07', '2020-11-10 04:04:07'),
(241, 21, 'Training Report create.', '2020-11-10 04:05:58', '127.0.0.1', '2020-11-10 04:05:58', '2020-11-10 04:05:58'),
(242, 21, 'Training Report create.', '2020-11-10 04:06:10', '127.0.0.1', '2020-11-10 04:06:10', '2020-11-10 04:06:10'),
(243, 21, 'Training Report create.', '2020-11-10 04:06:18', '127.0.0.1', '2020-11-10 04:06:18', '2020-11-10 04:06:18'),
(244, 21, 'Training Report pdf create.', '2020-11-10 04:06:22', '127.0.0.1', '2020-11-10 04:06:22', '2020-11-10 04:06:22'),
(245, 21, 'Training Report create.', '2020-11-10 04:07:43', '127.0.0.1', '2020-11-10 04:07:43', '2020-11-10 04:07:43'),
(246, 21, 'Training Report pdf create.', '2020-11-10 04:07:47', '127.0.0.1', '2020-11-10 04:07:47', '2020-11-10 04:07:47'),
(247, 21, 'Training Report create.', '2020-11-10 04:10:31', '127.0.0.1', '2020-11-10 04:10:31', '2020-11-10 04:10:31'),
(248, 21, 'Training Report create.', '2020-11-10 04:11:24', '127.0.0.1', '2020-11-10 04:11:24', '2020-11-10 04:11:24'),
(249, 21, 'Training Report create.', '2020-11-10 04:12:51', '127.0.0.1', '2020-11-10 04:12:51', '2020-11-10 04:12:51'),
(250, 21, 'Training Report create.', '2020-11-10 04:13:40', '127.0.0.1', '2020-11-10 04:13:40', '2020-11-10 04:13:40'),
(251, 21, 'Training Report create.', '2020-11-10 04:26:27', '127.0.0.1', '2020-11-10 04:26:27', '2020-11-10 04:26:27'),
(252, 21, 'Training Report create.', '2020-11-10 07:43:42', '127.0.0.1', '2020-11-10 07:43:42', '2020-11-10 07:43:42'),
(253, 21, 'Training Report create.', '2020-11-10 07:44:08', '127.0.0.1', '2020-11-10 07:44:08', '2020-11-10 07:44:08'),
(254, 21, 'Training Report create.', '2020-11-10 07:45:17', '127.0.0.1', '2020-11-10 07:45:17', '2020-11-10 07:45:17'),
(255, 21, 'Training Report create.', '2020-11-10 07:46:25', '127.0.0.1', '2020-11-10 07:46:25', '2020-11-10 07:46:25'),
(256, 21, 'Training Report create.', '2020-11-10 08:02:03', '127.0.0.1', '2020-11-10 08:02:03', '2020-11-10 08:02:03'),
(257, 21, 'Training Report create.', '2020-11-10 08:04:58', '127.0.0.1', '2020-11-10 08:04:58', '2020-11-10 08:04:58'),
(258, 21, 'Training Report create.', '2020-11-10 08:05:26', '127.0.0.1', '2020-11-10 08:05:26', '2020-11-10 08:05:26'),
(259, 21, 'Training Report create.', '2020-11-10 08:06:16', '127.0.0.1', '2020-11-10 08:06:16', '2020-11-10 08:06:16'),
(260, 21, 'Training Report create.', '2020-11-10 08:09:06', '127.0.0.1', '2020-11-10 08:09:06', '2020-11-10 08:09:06'),
(261, 21, 'Training Report create.', '2020-11-10 08:09:45', '127.0.0.1', '2020-11-10 08:09:45', '2020-11-10 08:09:45'),
(262, 21, 'Training Report create.', '2020-11-10 08:11:02', '127.0.0.1', '2020-11-10 08:11:02', '2020-11-10 08:11:02'),
(263, 21, 'Training Report create.', '2020-11-10 08:14:19', '127.0.0.1', '2020-11-10 08:14:19', '2020-11-10 08:14:19'),
(264, 21, 'Training Report create.', '2020-11-10 08:15:11', '127.0.0.1', '2020-11-10 08:15:11', '2020-11-10 08:15:11'),
(265, 21, 'Training Report create.', '2020-11-10 08:33:57', '127.0.0.1', '2020-11-10 08:33:57', '2020-11-10 08:33:57'),
(266, 21, 'Training Report pdf create.', '2020-11-10 08:34:48', '127.0.0.1', '2020-11-10 08:34:48', '2020-11-10 08:34:48'),
(267, 21, 'Training Report create.', '2020-11-10 08:35:42', '127.0.0.1', '2020-11-10 08:35:42', '2020-11-10 08:35:42'),
(268, 21, 'Training Report pdf create.', '2020-11-10 08:35:45', '127.0.0.1', '2020-11-10 08:35:45', '2020-11-10 08:35:45'),
(269, 21, 'Training Report create.', '2020-11-10 08:35:57', '127.0.0.1', '2020-11-10 08:35:57', '2020-11-10 08:35:57'),
(270, 21, 'Training Report pdf create.', '2020-11-10 08:35:58', '127.0.0.1', '2020-11-10 08:35:58', '2020-11-10 08:35:58'),
(271, 21, 'Training Report create.', '2020-11-10 08:38:20', '127.0.0.1', '2020-11-10 08:38:20', '2020-11-10 08:38:20'),
(272, 21, 'Training Report create.', '2020-11-10 08:44:20', '127.0.0.1', '2020-11-10 08:44:20', '2020-11-10 08:44:20'),
(273, 21, 'Training Report create.', '2020-11-10 08:45:14', '127.0.0.1', '2020-11-10 08:45:14', '2020-11-10 08:45:14'),
(274, 21, 'Training Report create.', '2020-11-10 08:45:17', '127.0.0.1', '2020-11-10 08:45:17', '2020-11-10 08:45:17'),
(275, 21, 'Training Report create.', '2020-11-10 08:45:20', '127.0.0.1', '2020-11-10 08:45:20', '2020-11-10 08:45:20'),
(276, 21, 'Training Report create.', '2020-11-10 08:45:38', '127.0.0.1', '2020-11-10 08:45:38', '2020-11-10 08:45:38'),
(277, 1, 'Candidate list export. Training id: 44', '2020-11-12 04:49:28', '192.168.11.157', '2020-11-12 04:49:28', '2020-11-12 04:49:28'),
(278, 1, 'Training Go create.44', '2020-11-12 04:49:44', '192.168.11.157', '2020-11-12 04:49:44', '2020-11-12 04:49:44'),
(279, 1, 'Training Report create.', '2020-11-12 04:54:01', '192.168.11.157', '2020-11-12 04:54:01', '2020-11-12 04:54:01'),
(280, 1, 'Training Report create.', '2020-11-12 04:54:27', '192.168.11.157', '2020-11-12 04:54:27', '2020-11-12 04:54:27'),
(281, 1, 'Training Report create.', '2020-11-12 04:55:03', '192.168.11.157', '2020-11-12 04:55:03', '2020-11-12 04:55:03'),
(282, 1, 'Training Report create.', '2020-11-12 04:55:22', '192.168.11.157', '2020-11-12 04:55:22', '2020-11-12 04:55:22'),
(283, 1, 'Training Report create.', '2020-11-12 05:17:12', '192.168.11.157', '2020-11-12 05:17:12', '2020-11-12 05:17:12'),
(284, 1, 'User information update 2', '2020-11-12 06:01:43', '192.168.11.120', '2020-11-12 06:01:43', '2020-11-12 06:01:43'),
(285, 1, 'User information update 31', '2020-11-12 06:10:42', '192.168.11.120', '2020-11-12 06:10:42', '2020-11-12 06:10:42'),
(286, 1, 'Organization update 1', '2020-11-12 06:51:22', '192.168.11.120', '2020-11-12 06:51:22', '2020-11-12 06:51:22'),
(287, 1, 'Organization update 1', '2020-11-12 06:58:05', '192.168.11.120', '2020-11-12 06:58:05', '2020-11-12 06:58:05'),
(288, 1, 'Organization update 1', '2020-11-12 06:58:43', '192.168.11.120', '2020-11-12 06:58:43', '2020-11-12 06:58:43'),
(289, 1, 'Organization create 6', '2020-11-12 07:00:52', '192.168.11.120', '2020-11-12 07:00:52', '2020-11-12 07:00:52'),
(290, 1, 'Training Go create.44', '2020-11-12 07:13:27', '192.168.11.120', '2020-11-12 07:13:27', '2020-11-12 07:13:27'),
(291, 1, 'Candidate list export. Training id: 42', '2020-11-12 07:13:35', '192.168.11.120', '2020-11-12 07:13:35', '2020-11-12 07:13:35'),
(292, 1, 'Training Report create.', '2020-11-12 07:13:52', '192.168.11.120', '2020-11-12 07:13:52', '2020-11-12 07:13:52'),
(293, 21, 'Training create 47', '2020-11-12 08:05:00', '192.168.11.120', '2020-11-12 08:05:00', '2020-11-12 08:05:00'),
(294, 21, 'Training update 47', '2020-11-12 08:05:09', '192.168.11.120', '2020-11-12 08:05:09', '2020-11-12 08:05:09'),
(295, 21, 'Training publish 47', '2020-11-12 08:05:14', '192.168.11.120', '2020-11-12 08:05:14', '2020-11-12 08:05:14'),
(296, 21, 'Training Go create.44', '2020-11-12 08:05:23', '192.168.11.120', '2020-11-12 08:05:23', '2020-11-12 08:05:23'),
(297, 21, 'Training Go create.44', '2020-11-12 08:21:35', '192.168.11.120', '2020-11-12 08:21:35', '2020-11-12 08:21:35'),
(298, 25, 'Training Report create.', '2020-11-15 08:10:58', '192.168.11.120', '2020-11-15 08:10:58', '2020-11-15 08:10:58'),
(299, 25, 'Training Report create.', '2020-11-15 08:11:07', '192.168.11.120', '2020-11-15 08:11:07', '2020-11-15 08:11:07'),
(300, 25, 'Training Report create.', '2020-11-15 08:11:26', '192.168.11.120', '2020-11-15 08:11:26', '2020-11-15 08:11:26'),
(301, 23, 'Training Report create.', '2020-11-15 08:35:37', '192.168.11.120', '2020-11-15 08:35:37', '2020-11-15 08:35:37'),
(302, 23, 'Training Report pdf create.', '2020-11-15 08:45:19', '192.168.11.120', '2020-11-15 08:45:19', '2020-11-15 08:45:19'),
(303, 25, 'Training Report create.', '2020-11-15 08:57:05', '192.168.11.120', '2020-11-15 08:57:05', '2020-11-15 08:57:05'),
(304, 25, 'Training Report pdf create.', '2020-11-15 08:57:07', '192.168.11.120', '2020-11-15 08:57:07', '2020-11-15 08:57:07'),
(305, 25, 'Training Report create.', '2020-11-15 09:00:29', '192.168.11.120', '2020-11-15 09:00:29', '2020-11-15 09:00:29'),
(306, 25, 'Training Report pdf create.', '2020-11-15 09:00:33', '192.168.11.120', '2020-11-15 09:00:33', '2020-11-15 09:00:33'),
(307, 25, 'Training Report create.', '2020-11-15 09:00:39', '192.168.11.120', '2020-11-15 09:00:39', '2020-11-15 09:00:39'),
(308, 25, 'Training Report pdf create.', '2020-11-15 09:00:43', '192.168.11.120', '2020-11-15 09:00:43', '2020-11-15 09:00:43'),
(309, 25, 'Training Report create.', '2020-11-15 09:02:00', '192.168.11.120', '2020-11-15 09:02:00', '2020-11-15 09:02:00'),
(310, 25, 'Training Report create.', '2020-11-15 09:02:25', '192.168.11.120', '2020-11-15 09:02:25', '2020-11-15 09:02:25'),
(311, 25, 'Training Report create.', '2020-11-15 09:03:10', '192.168.11.120', '2020-11-15 09:03:10', '2020-11-15 09:03:10'),
(312, 25, 'Training Report pdf create.', '2020-11-15 09:04:27', '192.168.11.120', '2020-11-15 09:04:27', '2020-11-15 09:04:27'),
(313, 25, 'Training Report create.', '2020-11-15 09:04:43', '192.168.11.120', '2020-11-15 09:04:43', '2020-11-15 09:04:43'),
(314, 25, 'Training Report pdf create.', '2020-11-15 09:04:45', '192.168.11.120', '2020-11-15 09:04:45', '2020-11-15 09:04:45'),
(315, 25, 'Training Report create.', '2020-11-15 09:25:21', '192.168.11.120', '2020-11-15 09:25:21', '2020-11-15 09:25:21'),
(316, 25, 'Training Report pdf create.', '2020-11-15 09:32:55', '192.168.11.120', '2020-11-15 09:32:55', '2020-11-15 09:32:55'),
(317, 25, 'Training Report pdf create.', '2020-11-15 09:33:31', '192.168.11.120', '2020-11-15 09:33:31', '2020-11-15 09:33:31'),
(318, 25, 'Training Report pdf create.', '2020-11-15 09:33:55', '192.168.11.120', '2020-11-15 09:33:55', '2020-11-15 09:33:55'),
(319, 25, 'Training Report pdf create.', '2020-11-15 09:45:45', '192.168.11.120', '2020-11-15 09:45:45', '2020-11-15 09:45:45'),
(320, 25, 'Training Report pdf create.', '2020-11-15 09:46:48', '192.168.11.120', '2020-11-15 09:46:48', '2020-11-15 09:46:48'),
(321, 25, 'Training Report pdf create.', '2020-11-15 09:47:12', '192.168.11.120', '2020-11-15 09:47:12', '2020-11-15 09:47:12'),
(322, 25, 'Training Report pdf create.', '2020-11-15 10:04:53', '192.168.11.120', '2020-11-15 10:04:53', '2020-11-15 10:04:53'),
(323, 1, 'Candidate list export. Training id: 44', '2020-11-17 06:32:27', '192.168.11.120', '2020-11-17 06:32:27', '2020-11-17 06:32:27'),
(324, 1, 'Candidate list export. Training id: 44', '2020-11-17 06:32:42', '192.168.11.120', '2020-11-17 06:32:42', '2020-11-17 06:32:42'),
(325, 1, 'Training Go create.43', '2020-11-17 06:32:47', '192.168.11.120', '2020-11-17 06:32:47', '2020-11-17 06:32:47'),
(326, 1, 'Training Go create.44', '2020-11-17 06:33:05', '192.168.11.120', '2020-11-17 06:33:05', '2020-11-17 06:33:05'),
(327, 1, 'Candidate list export. Training id: 44', '2020-11-17 06:33:16', '192.168.11.120', '2020-11-17 06:33:16', '2020-11-17 06:33:16'),
(328, 1, 'Training Report create.', '2020-11-17 06:33:31', '192.168.11.120', '2020-11-17 06:33:31', '2020-11-17 06:33:31'),
(329, 1, 'Organization create 7', '2020-11-17 06:35:51', '192.168.11.120', '2020-11-17 06:35:51', '2020-11-17 06:35:51'),
(330, 1, 'Organization update 6', '2020-11-17 06:36:53', '192.168.11.120', '2020-11-17 06:36:53', '2020-11-17 06:36:53'),
(331, 1, 'Organization update 5', '2020-11-17 06:37:22', '192.168.11.120', '2020-11-17 06:37:22', '2020-11-17 06:37:22'),
(332, 21, 'GO information (template) update 13', '2020-11-17 06:43:36', '192.168.11.120', '2020-11-17 06:43:36', '2020-11-17 06:43:36'),
(333, 21, 'GO information (template) save 14', '2020-11-17 06:46:09', '192.168.11.120', '2020-11-17 06:46:09', '2020-11-17 06:46:09'),
(334, 21, 'Training Go create.44', '2020-11-17 06:46:18', '192.168.11.120', '2020-11-17 06:46:18', '2020-11-17 06:46:18'),
(335, 25, 'Training Report create.', '2020-11-17 06:52:30', '192.168.11.120', '2020-11-17 06:52:30', '2020-11-17 06:52:30'),
(336, 25, 'Training Report pdf create.', '2020-11-17 06:52:35', '192.168.11.120', '2020-11-17 06:52:35', '2020-11-17 06:52:35'),
(337, 25, 'Training Report pdf create.', '2020-11-17 06:53:42', '192.168.11.120', '2020-11-17 06:53:42', '2020-11-17 06:53:42'),
(338, 25, 'Training Report pdf create.', '2020-11-17 06:56:11', '192.168.11.120', '2020-11-17 06:56:11', '2020-11-17 06:56:11'),
(339, 25, 'Training Report export.', '2020-11-17 06:56:30', '192.168.11.120', '2020-11-17 06:56:30', '2020-11-17 06:56:30'),
(340, 25, 'Training Report create.', '2020-11-17 06:59:53', '192.168.11.120', '2020-11-17 06:59:53', '2020-11-17 06:59:53'),
(341, 25, 'Training Report create.', '2020-11-17 07:03:50', '192.168.11.120', '2020-11-17 07:03:50', '2020-11-17 07:03:50'),
(342, 25, 'Training Report export.', '2020-11-17 07:03:52', '192.168.11.120', '2020-11-17 07:03:52', '2020-11-17 07:03:52'),
(343, 25, 'Training Report export.', '2020-11-17 07:09:55', '192.168.11.120', '2020-11-17 07:09:55', '2020-11-17 07:09:55'),
(344, 25, 'Training Report export.', '2020-11-17 07:13:13', '192.168.11.120', '2020-11-17 07:13:13', '2020-11-17 07:13:13'),
(345, 25, 'Training Report export.', '2020-11-17 07:13:37', '192.168.11.120', '2020-11-17 07:13:37', '2020-11-17 07:13:37'),
(346, 21, 'Training Report create.', '2020-11-19 07:33:22', '192.168.11.120', '2020-11-19 07:33:22', '2020-11-19 07:33:22'),
(347, 21, 'Training Report create.', '2020-11-19 07:33:31', '192.168.11.120', '2020-11-19 07:33:31', '2020-11-19 07:33:31'),
(348, 21, 'Training Report export.', '2020-11-19 07:33:32', '192.168.11.120', '2020-11-19 07:33:32', '2020-11-19 07:33:32'),
(349, 25, 'Nomination information save. Training id: 45', '2020-11-19 08:21:59', '192.168.11.157', '2020-11-19 08:21:59', '2020-11-19 08:21:59'),
(350, 26, 'Nomination information save. Training id: 45', '2020-11-19 08:26:48', '192.168.11.157', '2020-11-19 08:26:48', '2020-11-19 08:26:48'),
(351, 17, 'Training close 45', '2020-11-19 08:29:49', '192.168.11.157', '2020-11-19 08:29:49', '2020-11-19 08:29:49'),
(352, 17, 'Candidate Selection save. Training id: 45', '2020-11-19 08:30:06', '192.168.11.157', '2020-11-19 08:30:06', '2020-11-19 08:30:06'),
(353, 17, 'Training make final 45', '2020-11-19 08:30:14', '192.168.11.157', '2020-11-19 08:30:14', '2020-11-19 08:30:14'),
(354, 17, 'GO information (template) save 15', '2020-11-19 08:32:49', '192.168.11.157', '2020-11-19 08:32:49', '2020-11-19 08:32:49'),
(355, 17, 'GO information save 31', '2020-11-19 08:33:23', '192.168.11.157', '2020-11-19 08:33:23', '2020-11-19 08:33:23'),
(356, 17, 'User Profile information save 6', '2020-11-19 08:34:50', '192.168.11.157', '2020-11-19 08:34:50', '2020-11-19 08:34:50'),
(357, 17, 'Training Go create.45', '2020-11-19 08:35:01', '192.168.11.157', '2020-11-19 08:35:01', '2020-11-19 08:35:01'),
(358, 1, 'Organization update 2', '2020-11-19 08:38:34', '192.168.11.157', '2020-11-19 08:38:34', '2020-11-19 08:38:34'),
(359, 1, 'Organization update 3', '2020-11-23 04:31:32', '192.168.11.120', '2020-11-23 04:31:32', '2020-11-23 04:31:32'),
(360, 1, 'Organization update 4', '2020-11-23 04:32:18', '192.168.11.120', '2020-11-23 04:32:18', '2020-11-23 04:32:18'),
(361, 1, 'Organization update 5', '2020-11-23 04:32:33', '192.168.11.120', '2020-11-23 04:32:33', '2020-11-23 04:32:33'),
(362, 1, 'Organization update 6', '2020-11-23 04:32:39', '192.168.11.120', '2020-11-23 04:32:39', '2020-11-23 04:32:39'),
(363, 1, 'Organization update 7', '2020-11-23 04:32:45', '192.168.11.120', '2020-11-23 04:32:45', '2020-11-23 04:32:45'),
(364, 21, 'User Profile information update 2', '2020-11-23 04:33:44', '192.168.11.120', '2020-11-23 04:33:44', '2020-11-23 04:33:44'),
(365, 21, 'User Profile information update 2', '2020-11-23 04:36:40', '192.168.11.120', '2020-11-23 04:36:40', '2020-11-23 04:36:40'),
(366, 21, 'Training create 48', '2020-11-23 07:45:57', '192.168.11.120', '2020-11-23 07:45:57', '2020-11-23 07:45:57'),
(367, 21, 'Training publish 48', '2020-11-23 07:46:03', '192.168.11.120', '2020-11-23 07:46:03', '2020-11-23 07:46:03'),
(368, 25, 'Nomination information save. Training id: 48', '2020-11-23 08:14:56', '192.168.11.120', '2020-11-23 08:14:56', '2020-11-23 08:14:56'),
(369, 25, 'Nomination information save. Training id: 48', '2020-11-23 08:24:31', '192.168.11.120', '2020-11-23 08:24:31', '2020-11-23 08:24:31'),
(370, 25, 'Nomination information save. Training id: 48', '2020-11-23 09:31:20', '192.168.11.171', '2020-11-23 09:31:20', '2020-11-23 09:31:20'),
(371, 25, 'Nomination information save. Training id: 48', '2020-11-23 09:42:43', '192.168.11.171', '2020-11-23 09:42:43', '2020-11-23 09:42:43'),
(372, 21, 'Training close 48', '2020-11-23 09:43:56', '192.168.11.120', '2020-11-23 09:43:56', '2020-11-23 09:43:56'),
(373, 21, 'Candidate Selection save. Training id: 48', '2020-11-23 10:13:45', '192.168.11.120', '2020-11-23 10:13:45', '2020-11-23 10:13:45'),
(374, 21, 'Training make final 48', '2020-11-23 10:13:49', '192.168.11.120', '2020-11-23 10:13:49', '2020-11-23 10:13:49'),
(375, 21, 'GO information save 32', '2020-11-24 04:20:40', '192.168.11.120', '2020-11-24 04:20:40', '2020-11-24 04:20:40'),
(376, 21, 'Training Go create.48', '2020-11-24 04:20:52', '192.168.11.120', '2020-11-24 04:20:52', '2020-11-24 04:20:52'),
(377, 21, 'Training Draft Go create.48', '2020-11-24 04:23:30', '192.168.11.120', '2020-11-24 04:23:30', '2020-11-24 04:23:30'),
(378, 21, 'Training Draft Go create.48', '2020-11-24 04:24:32', '192.168.11.120', '2020-11-24 04:24:32', '2020-11-24 04:24:32'),
(379, 21, 'Training Draft Go create.48', '2020-11-24 04:25:27', '192.168.11.120', '2020-11-24 04:25:27', '2020-11-24 04:25:27'),
(380, 21, 'Training Draft Go create.48', '2020-11-24 04:26:10', '192.168.11.120', '2020-11-24 04:26:10', '2020-11-24 04:26:10'),
(381, 21, 'Training Go create.48', '2020-11-24 04:26:38', '192.168.11.120', '2020-11-24 04:26:38', '2020-11-24 04:26:38'),
(382, 21, 'Training Go create.48', '2020-11-24 04:30:08', '192.168.11.120', '2020-11-24 04:30:08', '2020-11-24 04:30:08'),
(383, 21, 'Training Go create.48', '2020-11-24 04:30:30', '192.168.11.120', '2020-11-24 04:30:30', '2020-11-24 04:30:30'),
(384, 21, 'Training Go create.48', '2020-11-24 04:33:04', '192.168.11.120', '2020-11-24 04:33:04', '2020-11-24 04:33:04'),
(385, 21, 'Training Go create.48', '2020-11-24 06:15:39', '192.168.11.120', '2020-11-24 06:15:39', '2020-11-24 06:15:39'),
(386, 21, 'Training Go create.48', '2020-11-24 08:19:22', '192.168.11.120', '2020-11-24 08:19:22', '2020-11-24 08:19:22'),
(387, 21, 'Training Go create.48', '2020-11-24 08:20:09', '192.168.11.120', '2020-11-24 08:20:09', '2020-11-24 08:20:09'),
(388, 21, 'Training Go create.48', '2020-11-24 08:20:38', '192.168.11.120', '2020-11-24 08:20:38', '2020-11-24 08:20:38'),
(389, 21, 'Training Go create.48', '2020-11-24 08:21:09', '192.168.11.120', '2020-11-24 08:21:09', '2020-11-24 08:21:09'),
(390, 21, 'Training Go create.48', '2020-11-24 08:21:42', '192.168.11.120', '2020-11-24 08:21:42', '2020-11-24 08:21:42'),
(391, 21, 'Training Go create.48', '2020-11-24 08:21:59', '192.168.11.120', '2020-11-24 08:21:59', '2020-11-24 08:21:59'),
(392, 1, 'User information update 11', '2020-11-24 08:44:01', '192.168.11.120', '2020-11-24 08:44:01', '2020-11-24 08:44:01'),
(393, 1, 'User information update 15', '2020-11-24 08:47:13', '192.168.11.120', '2020-11-24 08:47:13', '2020-11-24 08:47:13'),
(394, 1, 'User information update 15', '2020-11-24 08:49:06', '192.168.11.120', '2020-11-24 08:49:06', '2020-11-24 08:49:06'),
(395, 1, 'User information update 11', '2020-11-24 08:51:20', '192.168.11.120', '2020-11-24 08:51:20', '2020-11-24 08:51:20'),
(396, 1, 'User information update 11', '2020-11-24 08:54:22', '192.168.11.120', '2020-11-24 08:54:22', '2020-11-24 08:54:22'),
(397, 1, 'User information update 15', '2020-11-24 08:55:23', '192.168.11.120', '2020-11-24 08:55:23', '2020-11-24 08:55:23'),
(398, 1, 'User information update 16', '2020-11-24 08:57:15', '192.168.11.120', '2020-11-24 08:57:15', '2020-11-24 08:57:15'),
(399, 1, 'User information update 19', '2020-11-24 08:58:31', '192.168.11.120', '2020-11-24 08:58:31', '2020-11-24 08:58:31'),
(400, 1, 'User information update 20', '2020-11-24 08:59:53', '192.168.11.120', '2020-11-24 08:59:53', '2020-11-24 08:59:53'),
(401, 1, 'User information update 22', '2020-11-24 09:00:44', '192.168.11.120', '2020-11-24 09:00:44', '2020-11-24 09:00:44'),
(402, 1, 'User information update 23', '2020-11-24 09:02:18', '192.168.11.120', '2020-11-24 09:02:18', '2020-11-24 09:02:18'),
(403, 1, 'User information update 25', '2020-11-24 09:03:24', '192.168.11.120', '2020-11-24 09:03:24', '2020-11-24 09:03:24'),
(404, 1, 'User information update 26', '2020-11-24 09:04:18', '192.168.11.120', '2020-11-24 09:04:18', '2020-11-24 09:04:18'),
(405, 1, 'User information update 28', '2020-11-24 09:05:13', '192.168.11.120', '2020-11-24 09:05:13', '2020-11-24 09:05:13'),
(406, 1, 'User information update 29', '2020-11-24 09:06:33', '192.168.11.120', '2020-11-24 09:06:33', '2020-11-24 09:06:33'),
(407, 1, 'User information update 31', '2020-11-24 09:08:31', '192.168.11.120', '2020-11-24 09:08:31', '2020-11-24 09:08:31'),
(408, 1, 'User information update 33', '2020-11-24 09:09:21', '192.168.11.120', '2020-11-24 09:09:21', '2020-11-24 09:09:21'),
(409, 1, 'User information update 12', '2020-11-24 09:11:13', '192.168.11.120', '2020-11-24 09:11:13', '2020-11-24 09:11:13'),
(410, 1, 'User information update 12', '2020-11-24 09:41:32', '192.168.11.120', '2020-11-24 09:41:32', '2020-11-24 09:41:32'),
(411, 1, 'User information update 21', '2020-11-25 07:21:07', '192.168.11.120', '2020-11-25 07:21:07', '2020-11-25 07:21:07'),
(412, 1, 'User information update 2', '2020-11-25 07:25:39', '192.168.11.120', '2020-11-25 07:25:39', '2020-11-25 07:25:39'),
(413, 1, 'User information update 17', '2020-11-25 07:27:28', '192.168.11.120', '2020-11-25 07:27:28', '2020-11-25 07:27:28'),
(414, 1, 'User information update 27', '2020-11-25 07:27:54', '192.168.11.120', '2020-11-25 07:27:54', '2020-11-25 07:27:54'),
(415, 1, 'User information update 12', '2020-11-25 07:28:01', '192.168.11.120', '2020-11-25 07:28:01', '2020-11-25 07:28:01'),
(416, 1, 'User information update 13', '2020-11-25 07:29:16', '192.168.11.120', '2020-11-25 07:29:16', '2020-11-25 07:29:16'),
(417, 1, 'User information update 14', '2020-11-25 07:30:47', '192.168.11.120', '2020-11-25 07:30:47', '2020-11-25 07:30:47'),
(418, 1, 'User information update 17', '2020-11-25 07:42:35', '192.168.11.120', '2020-11-25 07:42:35', '2020-11-25 07:42:35'),
(419, 1, 'User information update 32', '2020-11-25 07:44:55', '192.168.11.120', '2020-11-25 07:44:55', '2020-11-25 07:44:55'),
(420, 1, 'User information update 18', '2020-11-25 07:46:44', '192.168.11.120', '2020-11-25 07:46:44', '2020-11-25 07:46:44'),
(421, 1, 'User information update 21', '2020-11-25 07:46:50', '192.168.11.120', '2020-11-25 07:46:50', '2020-11-25 07:46:50'),
(422, 1, 'User information update 24', '2020-11-25 07:47:01', '192.168.11.120', '2020-11-25 07:47:01', '2020-11-25 07:47:01'),
(423, 1, 'User information update 27', '2020-11-25 07:47:35', '192.168.11.120', '2020-11-25 07:47:35', '2020-11-25 07:47:35'),
(424, 21, 'Training Go create.48', '2020-12-10 04:01:53', '192.168.11.131', '2020-12-10 04:01:53', '2020-12-10 04:01:53'),
(425, 21, 'Training create 49', '2020-12-10 07:51:12', '192.168.11.131', '2020-12-10 07:51:12', '2020-12-10 07:51:12'),
(426, 21, 'Training publish 49', '2020-12-10 07:51:22', '192.168.11.131', '2020-12-10 07:51:22', '2020-12-10 07:51:22'),
(427, 21, 'Candidate list export. Training id: 48', '2020-12-10 08:00:46', '192.168.11.219', '2020-12-10 08:00:46', '2020-12-10 08:00:46'),
(428, 21, 'Candidate list export. Training id: 48', '2020-12-10 08:01:36', '192.168.11.131', '2020-12-10 08:01:36', '2020-12-10 08:01:36'),
(429, 73, 'Nomination information save. Training id: 49', '2020-12-10 08:02:31', '192.168.11.131', '2020-12-10 08:02:31', '2020-12-10 08:02:31'),
(430, 72, 'Nomination information save. Training id: 49', '2020-12-10 08:03:21', '192.168.11.247', '2020-12-10 08:03:21', '2020-12-10 08:03:21'),
(431, 21, 'Training close 49', '2020-12-10 08:04:07', '192.168.11.131', '2020-12-10 08:04:07', '2020-12-10 08:04:07'),
(432, 21, 'Candidate Selection save. Training id: 49', '2020-12-10 08:05:54', '192.168.11.131', '2020-12-10 08:05:54', '2020-12-10 08:05:54'),
(433, 21, 'Training make final 49', '2020-12-10 08:05:57', '192.168.11.131', '2020-12-10 08:05:57', '2020-12-10 08:05:57'),
(434, 21, 'GO information save 33', '2020-12-10 08:06:12', '192.168.11.131', '2020-12-10 08:06:12', '2020-12-10 08:06:12'),
(435, 21, 'Training Go create.49', '2020-12-10 08:06:26', '192.168.11.131', '2020-12-10 08:06:26', '2020-12-10 08:06:26'),
(436, 21, 'Candidate list export. Training id: 49', '2020-12-10 08:06:41', '192.168.11.131', '2020-12-10 08:06:41', '2020-12-10 08:06:41'),
(437, 21, 'Training Go create.49', '2020-12-10 08:08:43', '192.168.11.131', '2020-12-10 08:08:43', '2020-12-10 08:08:43'),
(438, 21, 'Training Go create.49', '2020-12-10 08:12:31', '192.168.11.131', '2020-12-10 08:12:31', '2020-12-10 08:12:31'),
(439, 21, 'Training Go create.49', '2020-12-10 08:17:20', '192.168.11.131', '2020-12-10 08:17:20', '2020-12-10 08:17:20'),
(440, 21, 'Training create 50', '2020-12-10 08:24:26', '192.168.11.131', '2020-12-10 08:24:26', '2020-12-10 08:24:26'),
(441, 1, 'User information update 21', '2020-12-10 08:33:50', '192.168.44.109', '2020-12-10 08:33:50', '2020-12-10 08:33:50'),
(442, 1, 'Training Report create.', '2020-12-10 08:41:32', '192.168.44.109', '2020-12-10 08:41:32', '2020-12-10 08:41:32'),
(443, 1, 'Training Go create.49', '2020-12-10 08:47:33', '192.168.44.109', '2020-12-10 08:47:33', '2020-12-10 08:47:33'),
(444, 1, 'Candidate list export. Training id: 49', '2020-12-10 08:47:48', '192.168.44.109', '2020-12-10 08:47:48', '2020-12-10 08:47:48'),
(445, 21, 'Training create 51', '2020-12-10 08:53:03', '192.168.44.109', '2020-12-10 08:53:03', '2020-12-10 08:53:03'),
(446, 21, 'Training publish 51', '2020-12-10 08:53:22', '192.168.44.109', '2020-12-10 08:53:22', '2020-12-10 08:53:22'),
(447, 72, 'Nomination information save. Training id: 51', '2020-12-10 08:57:34', '192.168.44.109', '2020-12-10 08:57:34', '2020-12-10 08:57:34'),
(448, 73, 'Nomination information save. Training id: 51', '2020-12-10 08:59:15', '192.168.44.109', '2020-12-10 08:59:15', '2020-12-10 08:59:15'),
(449, 21, 'Training close 51', '2020-12-10 08:59:56', '192.168.44.109', '2020-12-10 08:59:56', '2020-12-10 08:59:56'),
(450, 21, 'Candidate Selection save. Training id: 51', '2020-12-10 09:00:22', '192.168.44.109', '2020-12-10 09:00:22', '2020-12-10 09:00:22'),
(451, 21, 'Training make final 51', '2020-12-10 09:00:31', '192.168.44.109', '2020-12-10 09:00:31', '2020-12-10 09:00:31'),
(452, 21, 'GO information save 34', '2020-12-10 09:04:17', '192.168.44.109', '2020-12-10 09:04:17', '2020-12-10 09:04:17'),
(453, 21, 'Training Draft Go create.51', '2020-12-10 09:05:57', '192.168.44.109', '2020-12-10 09:05:57', '2020-12-10 09:05:57'),
(454, 21, 'Training Go create.51', '2020-12-10 09:07:11', '192.168.44.109', '2020-12-10 09:07:11', '2020-12-10 09:07:11'),
(455, 21, 'Training Report create.', '2020-12-10 09:07:52', '192.168.44.109', '2020-12-10 09:07:52', '2020-12-10 09:07:52'),
(456, 21, 'Training Report create.', '2020-12-10 09:08:30', '192.168.44.109', '2020-12-10 09:08:30', '2020-12-10 09:08:30'),
(457, 21, 'Training Report create.', '2020-12-10 09:08:53', '192.168.44.109', '2020-12-10 09:08:53', '2020-12-10 09:08:53'),
(458, 21, 'Training close 47', '2020-12-13 10:04:05', '192.168.11.222', '2020-12-13 10:04:05', '2020-12-13 10:04:05'),
(459, 21, 'Training Go create.51', '2020-12-13 10:05:19', '192.168.11.222', '2020-12-13 10:05:19', '2020-12-13 10:05:19'),
(460, 21, 'Candidate list export. Training id: 51', '2020-12-13 10:05:42', '192.168.11.222', '2020-12-13 10:05:42', '2020-12-13 10:05:42'),
(461, 21, 'Training Report create.', '2020-12-13 10:07:00', '192.168.11.222', '2020-12-13 10:07:00', '2020-12-13 10:07:00'),
(462, 72, 'Nomination information save. Training id: 46', '2020-12-24 05:12:35', '192.168.11.131', '2020-12-24 05:12:35', '2020-12-24 05:12:35'),
(463, 72, 'Nomination information save. Training id: 46', '2020-12-24 05:38:32', '192.168.11.131', '2020-12-24 05:38:32', '2020-12-24 05:38:32'),
(464, 13, 'Training create 52', '2020-12-24 05:40:19', '192.168.11.131', '2020-12-24 05:40:19', '2020-12-24 05:40:19'),
(465, 13, 'Training publish 52', '2020-12-24 05:40:24', '192.168.11.131', '2020-12-24 05:40:24', '2020-12-24 05:40:24'),
(466, 72, 'Nomination information save. Training id: 52', '2020-12-24 05:42:22', '192.168.11.131', '2020-12-24 05:42:22', '2020-12-24 05:42:22'),
(467, 72, 'Nomination information save. Training id: 52', '2020-12-24 05:42:28', '192.168.11.131', '2020-12-24 05:42:28', '2020-12-24 05:42:28'),
(468, 1, 'User information update 2', '2021-06-13 10:19:10', '127.0.0.1', '2021-06-13 10:19:10', '2021-06-13 10:19:10'),
(469, 15, 'Nomination information save. Training id: 52', '2021-06-13 10:24:00', '127.0.0.1', '2021-06-13 10:24:00', '2021-06-13 10:24:00'),
(470, 15, 'Nomination information save. Training id: 52', '2021-06-13 10:24:10', '127.0.0.1', '2021-06-13 10:24:10', '2021-06-13 10:24:10'),
(471, 21, 'Training Go create.51', '2021-06-13 10:25:28', '127.0.0.1', '2021-06-13 10:25:28', '2021-06-13 10:25:28'),
(472, 21, 'GO information save 35', '2021-06-13 10:26:04', '127.0.0.1', '2021-06-13 10:26:04', '2021-06-13 10:26:04'),
(473, 21, 'Training Go create.51', '2021-06-13 10:26:28', '127.0.0.1', '2021-06-13 10:26:28', '2021-06-13 10:26:28'),
(474, 21, 'Training Go create.51', '2021-06-13 10:26:36', '127.0.0.1', '2021-06-13 10:26:36', '2021-06-13 10:26:36'),
(475, 21, 'Training create 53', '2021-06-13 10:29:58', '127.0.0.1', '2021-06-13 10:29:58', '2021-06-13 10:29:58'),
(476, 21, 'Training publish 53', '2021-06-13 10:30:06', '127.0.0.1', '2021-06-13 10:30:06', '2021-06-13 10:30:06'),
(477, 15, 'Nomination information save. Training id: 53', '2021-06-13 10:32:02', '127.0.0.1', '2021-06-13 10:32:02', '2021-06-13 10:32:02'),
(478, 21, 'Training close 53', '2021-06-13 10:32:45', '127.0.0.1', '2021-06-13 10:32:45', '2021-06-13 10:32:45'),
(479, 21, 'Candidate Selection save. Training id: 53', '2021-06-13 10:32:53', '127.0.0.1', '2021-06-13 10:32:53', '2021-06-13 10:32:53'),
(480, 21, 'Training make final 53', '2021-06-13 10:32:56', '127.0.0.1', '2021-06-13 10:32:56', '2021-06-13 10:32:56'),
(481, 21, 'GO information save 36', '2021-06-13 10:38:00', '127.0.0.1', '2021-06-13 10:38:00', '2021-06-13 10:38:00'),
(482, 21, 'GO information save 37', '2021-06-13 10:38:28', '127.0.0.1', '2021-06-13 10:38:28', '2021-06-13 10:38:28'),
(483, 21, 'Training Draft Go create.53', '2021-06-13 10:38:45', '127.0.0.1', '2021-06-13 10:38:45', '2021-06-13 10:38:45'),
(484, 21, 'Training Report create.', '2021-06-14 04:02:02', '127.0.0.1', '2021-06-14 04:02:02', '2021-06-14 04:02:02'),
(485, 21, 'Training Report create.', '2021-06-14 04:02:12', '127.0.0.1', '2021-06-14 04:02:12', '2021-06-14 04:02:12'),
(486, 21, 'Training Report create.', '2021-06-14 04:02:38', '127.0.0.1', '2021-06-14 04:02:38', '2021-06-14 04:02:38'),
(487, 21, 'Training Report pdf create.', '2021-06-14 04:02:49', '127.0.0.1', '2021-06-14 04:02:49', '2021-06-14 04:02:49'),
(488, 21, 'Training Report create.', '2021-06-14 06:06:09', '127.0.0.1', '2021-06-14 06:06:09', '2021-06-14 06:06:09'),
(489, 21, 'Training create 54', '2021-06-16 03:55:46', '192.168.11.121', '2021-06-16 03:55:46', '2021-06-16 03:55:46'),
(490, 21, 'Training publish 54', '2021-06-16 03:55:56', '192.168.11.121', '2021-06-16 03:55:56', '2021-06-16 03:55:56'),
(491, 1, 'Organization create 8', '2021-06-16 04:21:58', '192.168.44.156', '2021-06-16 04:21:58', '2021-06-16 04:21:58'),
(492, 12, 'Training create 55', '2021-06-16 04:23:09', '192.168.44.156', '2021-06-16 04:23:09', '2021-06-16 04:23:09'),
(493, 12, 'Training publish 55', '2021-06-16 04:23:40', '192.168.44.156', '2021-06-16 04:23:40', '2021-06-16 04:23:40'),
(494, 11, 'Nomination information save. Training id: 55', '2021-06-16 04:29:51', '192.168.44.156', '2021-06-16 04:29:51', '2021-06-16 04:29:51'),
(495, 73, 'Nomination information save. Training id: 55', '2021-06-17 04:53:55', '192.168.44.156', '2021-06-17 04:53:55', '2021-06-17 04:53:55'),
(496, 12, 'Training close 55', '2021-06-17 05:00:36', '192.168.44.156', '2021-06-17 05:00:36', '2021-06-17 05:00:36'),
(497, 12, 'Candidate Selection save. Training id: 55', '2021-06-17 05:01:01', '192.168.44.156', '2021-06-17 05:01:01', '2021-06-17 05:01:01'),
(498, 12, 'Candidate Selection save. Training id: 55', '2021-06-17 05:01:14', '192.168.44.156', '2021-06-17 05:01:14', '2021-06-17 05:01:14'),
(499, 12, 'Training make final 55', '2021-06-17 05:01:20', '192.168.44.156', '2021-06-17 05:01:20', '2021-06-17 05:01:20'),
(500, 12, 'GO information (template) save 16', '2021-06-17 05:05:47', '192.168.44.156', '2021-06-17 05:05:47', '2021-06-17 05:05:47'),
(501, 12, 'User Profile information save 7', '2021-06-17 05:07:36', '192.168.44.156', '2021-06-17 05:07:36', '2021-06-17 05:07:36'),
(502, 12, 'GO information save 38', '2021-06-17 05:08:30', '192.168.44.156', '2021-06-17 05:08:30', '2021-06-17 05:08:30'),
(503, 12, 'Training Go create.55', '2021-06-17 05:08:53', '192.168.44.156', '2021-06-17 05:08:53', '2021-06-17 05:08:53'),
(504, 12, 'Training Go create.55', '2021-06-17 05:10:04', '192.168.44.156', '2021-06-17 05:10:04', '2021-06-17 05:10:04'),
(505, 12, 'Candidate list export. Training id: 55', '2021-06-17 05:10:22', '192.168.44.156', '2021-06-17 05:10:22', '2021-06-17 05:10:22'),
(506, 12, 'Training Report create.', '2021-06-17 05:11:31', '192.168.44.156', '2021-06-17 05:11:31', '2021-06-17 05:11:31'),
(507, 12, 'Training Report create.', '2021-06-17 08:10:42', '192.168.44.156', '2021-06-17 08:10:42', '2021-06-17 08:10:42'),
(508, 12, 'Training Report create.', '2021-06-17 08:10:55', '192.168.44.156', '2021-06-17 08:10:55', '2021-06-17 08:10:55'),
(509, 1, 'Training Go create.55', '2021-06-17 08:47:47', '192.168.44.156', '2021-06-17 08:47:47', '2021-06-17 08:47:47'),
(510, 1, 'Training Go create.55', '2021-06-17 08:48:34', '192.168.44.156', '2021-06-17 08:48:34', '2021-06-17 08:48:34'),
(511, 1, 'Candidate list export. Training id: 55', '2021-06-17 08:48:44', '192.168.44.156', '2021-06-17 08:48:44', '2021-06-17 08:48:44'),
(512, 21, 'GO information save 39', '2021-06-17 08:52:09', '192.168.44.156', '2021-06-17 08:52:09', '2021-06-17 08:52:09'),
(513, 21, 'Training Draft Go create.53', '2021-06-17 08:52:17', '192.168.44.156', '2021-06-17 08:52:17', '2021-06-17 08:52:17'),
(514, 12, 'Training create 56', '2021-06-21 09:24:11', '192.168.44.156', '2021-06-21 09:24:11', '2021-06-21 09:24:11'),
(515, 12, 'Training publish 56', '2021-06-21 09:24:34', '192.168.44.156', '2021-06-21 09:24:34', '2021-06-21 09:24:34'),
(516, 11, 'Nomination information save. Training id: 56', '2021-06-21 09:34:14', '192.168.44.156', '2021-06-21 09:34:14', '2021-06-21 09:34:14'),
(517, 12, 'Training close 56', '2021-06-21 09:36:10', '192.168.44.156', '2021-06-21 09:36:10', '2021-06-21 09:36:10'),
(518, 12, 'Candidate Selection save. Training id: 56', '2021-06-21 09:44:15', '192.168.44.156', '2021-06-21 09:44:15', '2021-06-21 09:44:15'),
(519, 12, 'Candidate Selection save. Training id: 56', '2021-06-21 09:44:20', '192.168.44.156', '2021-06-21 09:44:20', '2021-06-21 09:44:20'),
(520, 12, 'Training make final 56', '2021-06-21 09:45:00', '192.168.44.156', '2021-06-21 09:45:00', '2021-06-21 09:45:00'),
(521, 12, 'Candidate list export. Training id: 56', '2021-06-21 09:45:18', '192.168.44.156', '2021-06-21 09:45:18', '2021-06-21 09:45:18'),
(522, 12, 'GO information save 40', '2021-06-21 09:54:30', '192.168.44.156', '2021-06-21 09:54:30', '2021-06-21 09:54:30'),
(523, 12, 'Training Draft Go create.56', '2021-06-21 09:54:39', '192.168.44.156', '2021-06-21 09:54:39', '2021-06-21 09:54:39'),
(524, 12, 'Training Report create.', '2021-06-21 09:55:51', '192.168.44.156', '2021-06-21 09:55:51', '2021-06-21 09:55:51'),
(525, 1, 'Organization update 2', '2021-06-22 04:22:55', '192.168.11.227', '2021-06-22 04:22:55', '2021-06-22 04:22:55'),
(526, 1, 'Organization update 2', '2021-06-22 04:23:18', '192.168.11.227', '2021-06-22 04:23:18', '2021-06-22 04:23:18'),
(527, 1, 'Organization update 2', '2021-06-22 04:23:33', '192.168.11.227', '2021-06-22 04:23:33', '2021-06-22 04:23:33'),
(528, 1, 'User information update 85', '2021-06-22 07:16:22', '192.168.11.227', '2021-06-22 07:16:22', '2021-06-22 07:16:22'),
(529, 1, 'User information update 85', '2021-06-22 07:17:14', '192.168.11.227', '2021-06-22 07:17:14', '2021-06-22 07:17:14'),
(530, 1, 'User information update 85', '2021-06-22 07:17:27', '192.168.11.227', '2021-06-22 07:17:27', '2021-06-22 07:17:27'),
(531, 1, 'User Institute Mapping Successfully', '2021-06-22 09:14:27', '192.168.11.227', '2021-06-22 09:14:27', '2021-06-22 09:14:27'),
(532, 1, 'User Institute Mapping Successfully', '2021-06-22 09:16:18', '192.168.11.227', '2021-06-22 09:16:18', '2021-06-22 09:16:18'),
(533, 1, 'User Institute Mapping Successfully', '2021-06-22 09:16:49', '192.168.11.227', '2021-06-22 09:16:49', '2021-06-22 09:16:49'),
(534, 1, 'User Institute Mapping Successfully', '2021-06-22 09:17:51', '192.168.11.227', '2021-06-22 09:17:51', '2021-06-22 09:17:51'),
(535, 1, 'User Institute Mapping Successfully', '2021-06-22 09:29:28', '192.168.11.227', '2021-06-22 09:29:28', '2021-06-22 09:29:28'),
(536, 1, 'User Institute Mapping Successfully', '2021-06-22 10:02:16', '192.168.11.227', '2021-06-22 10:02:16', '2021-06-22 10:02:16'),
(537, 1, 'User Institute Mapping Successfully', '2021-06-22 10:02:31', '192.168.11.227', '2021-06-22 10:02:31', '2021-06-22 10:02:31'),
(538, 1, 'User Institute Mapping Successfully', '2021-06-22 10:02:39', '192.168.11.227', '2021-06-22 10:02:39', '2021-06-22 10:02:39'),
(539, 1, 'User Institute Mapping Successfully', '2021-06-22 10:03:03', '192.168.11.227', '2021-06-22 10:03:03', '2021-06-22 10:03:03'),
(540, 1, 'User Institute Mapping Successfully', '2021-06-22 10:03:21', '192.168.11.227', '2021-06-22 10:03:21', '2021-06-22 10:03:21'),
(541, 1, 'User Institute Mapping Successfully', '2021-06-22 10:50:30', '192.168.11.227', '2021-06-22 10:50:30', '2021-06-22 10:50:30'),
(542, 1, 'User Institute Mapping Successfully', '2021-06-22 10:50:53', '192.168.11.227', '2021-06-22 10:50:53', '2021-06-22 10:50:53'),
(543, 1, 'User Institute Mapping Successfully', '2021-06-22 10:54:34', '192.168.11.227', '2021-06-22 10:54:34', '2021-06-22 10:54:34'),
(544, 1, 'User Institute Mapping Successfully', '2021-06-22 10:54:41', '192.168.11.227', '2021-06-22 10:54:41', '2021-06-22 10:54:41'),
(545, 1, 'User Institute Mapping Successfully', '2021-06-23 07:09:03', '192.168.11.227', '2021-06-23 07:09:03', '2021-06-23 07:09:03'),
(546, 1, 'User Institute Mapping Successfully', '2021-06-23 07:10:29', '192.168.11.227', '2021-06-23 07:10:29', '2021-06-23 07:10:29'),
(547, 1, 'User Institute Mapping Successfully', '2021-06-23 07:11:06', '192.168.11.227', '2021-06-23 07:11:06', '2021-06-23 07:11:06'),
(548, 12, 'Training Calender create 2', '2021-06-23 09:20:51', '192.168.11.227', '2021-06-23 09:20:51', '2021-06-23 09:20:51'),
(549, 12, 'Training Calender create 3', '2021-06-23 09:39:09', '192.168.11.227', '2021-06-23 09:39:09', '2021-06-23 09:39:09'),
(550, 12, 'Training create 61', '2021-06-23 09:52:56', '192.168.11.227', '2021-06-23 09:52:56', '2021-06-23 09:52:56'),
(551, 12, 'Training Calender create 4', '2021-06-23 10:39:35', '192.168.11.227', '2021-06-23 10:39:35', '2021-06-23 10:39:35'),
(552, 12, 'Training Calender create 3', '2021-06-23 10:43:28', '192.168.11.227', '2021-06-23 10:43:28', '2021-06-23 10:43:28'),
(553, 12, 'Training Calender create 3', '2021-06-23 10:45:38', '192.168.11.227', '2021-06-23 10:45:38', '2021-06-23 10:45:38'),
(554, 12, 'Training Calender create 4', '2021-06-23 10:46:50', '192.168.11.227', '2021-06-23 10:46:50', '2021-06-23 10:46:50'),
(555, 1, 'User Institute Mapping Successfully', '2021-06-24 04:04:00', '192.168.11.227', '2021-06-24 04:04:00', '2021-06-24 04:04:00'),
(556, 21, 'Training Calender create 5', '2021-06-24 04:26:24', '192.168.11.227', '2021-06-24 04:26:24', '2021-06-24 04:26:24'),
(557, 12, 'Training create 62', '2021-06-24 09:33:29', '192.168.11.227', '2021-06-24 09:33:29', '2021-06-24 09:33:29'),
(558, 12, 'Training create 63', '2021-06-24 10:01:47', '192.168.11.227', '2021-06-24 10:01:47', '2021-06-24 10:01:47'),
(559, 12, 'Training create 64', '2021-06-24 10:05:35', '192.168.11.227', '2021-06-24 10:05:35', '2021-06-24 10:05:35'),
(560, 86, 'Nomination information save. Training id: 54', '2021-06-27 08:37:08', '192.168.11.227', '2021-06-27 08:37:08', '2021-06-27 08:37:08'),
(561, 12, 'Training publish 64', '2021-06-27 10:47:32', '192.168.11.227', '2021-06-27 10:47:32', '2021-06-27 10:47:32'),
(562, 86, 'Nomination information save. Training id: 64', '2021-06-27 10:49:44', '192.168.11.227', '2021-06-27 10:49:44', '2021-06-27 10:49:44');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`id`, `user_id`, `name`, `name_bangla`, `department`, `department_bangla`, `designation`, `designation_bangla`, `contact_no`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 21, 'Md. Abdur Rouf Mia', 'মোঃ আবদুর রব মিয়া', 'Internal Training - 1', 'অভ্যন্তরীণ প্রশিক্ষণ-১', 'Deputy Secretary', 'উপসচিব', '+88029515525', 'it1@mopa.gov.bd', 1, '2020-10-22 06:39:08', '2020-11-23 04:36:40'),
(5, 27, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Internal Training 4', 'অভ্যন্তরীন প্রশিক্ষণ ৪', 'Deputy Secretary', 'উপসচিব', '০২-৯৫৪৫৩২১', 'it4@mopa.gov.bd', 1, '2020-10-27 04:10:45', '2020-10-27 04:15:41'),
(6, 17, 'aafg', 'afga', 'akljfljalskdjf', 'ahfkdsajhfklajlfsd', 'afdasfds', 'agdsga', '00011211445', 'asdfdf@gfgsd.com', 1, '2020-11-19 08:34:50', '2020-11-19 08:34:50'),
(7, 12, 'Flora Bilkis Jahan', 'ফ্লোরা বিলকিস জাহান', 'Internal Training 2', 'অভ্যন্তরীণ প্রশিক্ষণ-২ শাখা', 'Deputy Secretary', 'উপসচিব', '+৮৮ ০২ ৯৫৫৬৮৫২', 'it2@gmail.com', 1, '2021-06-17 05:07:36', '2021-06-17 05:07:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadre_lists`
--
ALTER TABLE `cadre_lists`
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
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
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
-- Indexes for table `training_calenders`
--
ALTER TABLE `training_calenders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_institutes`
--
ALTER TABLE `user_institutes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `cadre_lists`
--
ALTER TABLE `cadre_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_o_information`
--
ALTER TABLE `g_o_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `g_o_information_templates`
--
ALTER TABLE `g_o_information_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nominations`
--
ALTER TABLE `nominations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `nomination_details`
--
ALTER TABLE `nomination_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `training_calenders`
--
ALTER TABLE `training_calenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `user_institutes`
--
ALTER TABLE `user_institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=563;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
