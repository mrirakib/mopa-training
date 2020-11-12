-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2020 at 09:10 AM
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
(24, 39, '1604916352.it1-2020-141.PDF', 0, '2020-11-09 10:05:52', '2020-11-09 10:05:52'),
(25, 40, '1604916418.it1-2020-141.PDF', 0, '2020-11-09 10:06:58', '2020-11-09 10:06:58'),
(26, 41, '1604916450.it1-2020-141.PDF', 0, '2020-11-09 10:07:30', '2020-11-09 10:07:30'),
(27, 42, '1604916482.admin1-2020-845.pdf', 0, '2020-11-09 10:08:02', '2020-11-09 10:08:02'),
(28, 43, '1604916540.admin1-2020-845.pdf', 0, '2020-11-09 10:09:00', '2020-11-09 10:09:00'),
(29, 44, '1604916567.admin1-2020-845.pdf', 0, '2020-11-09 10:09:27', '2020-11-09 10:09:27'),
(30, 45, '1604916652.admin1-2020-845.pdf', 0, '2020-11-09 10:10:52', '2020-11-09 10:10:52'),
(31, 46, '1604916676.admin1-2020-845.pdf', 0, '2020-11-09 10:11:16', '2020-11-09 10:11:16'),
(32, 47, '1605168300.Internal Training 4 29-10-2020.pdf', 0, '2020-11-12 08:05:00', '2020-11-12 08:05:00');

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
(25, 21, 44, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪১', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:43:51', '2020-11-09 10:43:55'),
(26, 21, 43, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:11', '2020-11-09 10:44:15'),
(27, 21, 42, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪২', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:26', '2020-11-09 10:44:29'),
(28, 21, 41, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৭', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:41', '2020-11-09 10:44:44'),
(29, 21, 40, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১৪৬', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:44:57', '2020-11-09 10:45:00'),
(30, 21, 39, 1, 1, '2020-11-09', '০৫.০০.০০০০.২০০.২৫.০২১.১৯-১২৩', '২৫ কার্তিক ১৪২৭', '৯ নভেম্বর ২০২০', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:45:10', '2020-11-09 10:45:14');

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
(13, 21, 1, '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; color: #333333; background: white; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p>২।&nbsp; &nbsp;<span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৩।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>\r\n<p><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">৪।&nbsp; &nbsp;</span><span style=\"background-color: white; color: #333333; font-family: Nikosh; font-size: 11pt;\">উপর্যুক্ত বিষয়ের প্রেক্ষিতে জানানো যাচ্ছে যে, ১২৩তম সার্ভে এন্ড সেটেলমেন্ট প্রশিক্ষণ আগামী ০১ নভেম্বর ২০২০ তারিখ হতে ২০</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; background: white;\"><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">১)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">অতিরিক্ত সচিব, ক্যারিয়ার প্লানিং ও ট্রেনিং অনুবিভাগ, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">২)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">মহাপরিচালক, ভূমি রেকর্ড ও জরিপ অধিদপ্তর</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৩)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">যু্গ্মসচিব, অভ্যন্তরীণ এবং বিদেশ প্রশিক্ষণ অধিশাখা, জনপ্রশাসন মন্ত্রণালয়</span><span style=\"font-size: 13.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\"><br /></span><span style=\"font-size: 12.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">৪)&nbsp;</span><span style=\"font-size: 13.0pt; mso-bidi-font-size: 11.0pt; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; color: #333333;\">সচিবের একান্ত সচিব, সচিবের দপ্তর, জনপ্রশাসন মন্ত্রণালয় ( সচিব মহোদয়ের সদয় অবগতির জন্য ) ।</span></p>', '<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">রেক্টর</span></p>\r\n<p class=\"MsoNormal\"><span style=\"font-family: Nikosh;\">বাংলাদেশ লোক প্রশাসন প্রশিক্ষণ কেন্দ্র</span></p>\r\n<p><span style=\"font-size: 11.0pt; line-height: 115%; font-family: Nikosh; mso-fareast-font-family: \'Times New Roman\'; mso-fareast-theme-font: minor-fareast; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">সাভার, ঢাকা।</span></p>', '2020-11-09 10:43:29', '2020-11-09 10:43:29');

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
(31, 39, 21, 25, 0, '2020-11-09 10:15:15', '2020-11-09 10:15:15'),
(32, 40, 21, 25, 0, '2020-11-09 10:26:44', '2020-11-09 10:26:44'),
(33, 41, 21, 25, 0, '2020-11-09 10:29:05', '2020-11-09 10:29:05'),
(34, 46, 17, 25, 0, '2020-11-09 10:30:55', '2020-11-09 10:30:55'),
(35, 45, 17, 25, 0, '2020-11-09 10:32:58', '2020-11-09 10:32:58'),
(36, 44, 21, 25, 0, '2020-11-09 10:33:50', '2020-11-09 10:33:50'),
(37, 43, 21, 25, 0, '2020-11-09 10:34:44', '2020-11-09 10:34:44'),
(38, 42, 21, 25, 0, '2020-11-09 10:35:38', '2020-11-09 10:35:38');

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
(50, 0, 39, 31, 21, 25, 700029, 'S.M. Mohaimen Likhon', 'এস. এম. মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', '2020-11-09 10:15:15', '2020-11-09 10:38:55', NULL),
(51, 1, 39, 31, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', '2020-11-09 10:15:15', '2020-11-09 10:38:55', NULL),
(52, 1, 40, 32, 21, 25, 700029, 'S. M. Mohaimen Likhon', 'মোহায়মেন লিখন', 'Assistant Programmer', 'সহকারী প্রোগ্রামার', '01521481414', 'asstprog5@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', '2020-11-09 10:26:44', '2020-11-09 10:38:45', NULL),
(53, 0, 40, 32, 21, 25, 700030, 'Md. Rakibul Islam', 'মোঃ রাকিবুল ইসলাম', 'Asst. Prog', 'সহকারী প্রোগ্রামার', '01741607831', 'asstprog6@mopa.gov.bd', 'PACC, MOPA', 'পিএসিসি', '2020-11-09 10:26:44', '2020-11-09 10:38:45', NULL),
(54, 1, 41, 33, 21, 25, 700000, 'Abir', 'আবির', 'Asst Prog', 'সহকারী প্রোগ্রামার', '01521101010', 'asstprog@mopa.gov.bd', 'PACC', 'পিএসিসি', '2020-11-09 10:29:05', '2020-11-09 10:38:35', NULL),
(55, 0, 41, 33, 21, 25, 500001, 'Kabir', 'কবির', 'AP', 'সপ্র', '01521202020', 'asst@gmail.com', 'PACC', 'পিএসিসি', '2020-11-09 10:29:05', '2020-11-09 10:38:35', NULL),
(56, 0, 46, 34, 17, 25, 50002, 'Dabir', 'দবির', 'AP', 'সপ্রো', '01521404040', 'asstprog@mopa.gov.bd', 'PACC', 'পিএসিসি', '2020-11-09 10:30:55', NULL, NULL),
(57, 0, 46, 34, 17, 25, 720, 'Mamun', 'মামুন', 'AP', 'এপ্রো', '01741101010', 'ast@gmail.com', 'PACC', 'পিএসিসি', '2020-11-09 10:30:55', NULL, NULL),
(58, 0, 45, 35, 17, 25, 7002, 'Milon', 'মিলন', 'AP', 'এপি', '01741202020', 'assdf@gmail.com', 'PACC', 'পিএসিসি', '2020-11-09 10:32:58', NULL, NULL),
(59, 0, 45, 35, 17, 25, 6952, 'Khaleq', 'খালেক', 'DS', 'উস', '01741505050', 'khaleq@gmail.com', 'PACC', 'পিএসিসি', '2020-11-09 10:32:58', NULL, NULL),
(60, 1, 44, 36, 21, 25, 70002, 'Dabir', 'দবির', 'PA', 'পিএ', '01741202020', 'pa@gmail.com', 'pacc', 'পিএসিসি', '2020-11-09 10:33:50', '2020-11-09 10:38:00', NULL),
(61, 1, 43, 37, 21, 25, 701, 'Karim', 'করিম', 'ap', 'এপ', '01741606060', 'asdf@gmail.com', 'pacc', 'পিএসিসি', '2020-11-09 10:34:44', '2020-11-09 10:38:15', NULL),
(62, 1, 42, 38, 21, 25, 520, 'Kabir', 'কবির', 'AP', 'এপ', '01741505050', 'asdf@gmail.com', 'PACC', 'পিএসিসি', '2020-11-09 10:35:38', '2020-11-09 10:38:24', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`id`, `name`, `name_bangla`, `email`, `contact_no`, `created_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BPATC', 'বিপিএটিসি', 'it3@mopa.gov.bd', '01741607831', 1, 1, '2020-10-14 10:42:36', '2020-11-12 06:58:43'),
(2, 'ADC', '', '', '', 1, 1, '2020-10-14 10:44:08', '2020-10-15 04:55:46'),
(3, 'Foreign', '', '', '', 1, 1, '2020-10-14 10:45:38', '2020-10-15 05:12:57'),
(4, 'Law', '', '', '', 1, 1, '2020-10-14 10:47:47', '2020-10-15 05:13:29'),
(5, 'Example 2', '', '', '', 1, 1, '2020-11-03 09:47:06', '2020-11-03 09:47:51'),
(6, 'asdf', 'া্বক', 'mri.rakib@gmail.com', '01741607831', 1, 1, '2020-11-12 07:00:52', '2020-11-12 07:00:52');

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
  `organization_id` int(11) NOT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `title`, `issue_no`, `issue_date`, `archive_date`, `status`, `admin_id`, `organization_id`, `remarks`, `created_at`, `updated_at`) VALUES
(39, 'training 01 training 01 training 01 training 01 training 01 training 01 training 01 training 01 training 01 training 01 training 01', 100, '2020-11-02', '2020-11-30', 4, 21, 1, 'training 01 training 01 training 01 training 01 training 01', '2020-11-09 10:05:52', '2020-11-09 10:38:57'),
(40, 'Training 02 Training 02 Training 02 Training 02 Training 02 Training 02 Training 02 Training 02 Training 02 Training 02', 101, '2020-11-09', '2020-11-17', 4, 21, 2, 'Training 02 Training 02 Training 02 Training 02', '2020-11-09 10:06:58', '2020-11-09 10:38:48'),
(41, 'Training 03 Training 03 Training 03 Training 03 Training 03 Training 03 Training 03 Training 03 Training 03 Training 03', 102, '2020-11-02', '2020-11-23', 4, 21, 3, 'Training 03 Training 03 Training 03 Training 03 Training 03', '2020-11-09 10:07:30', '2020-11-09 10:38:37'),
(42, 'Training 04 Training 04 Training 04 Training 04 Training 04 Training 04 Training 04 Training 04 Training 04 Training 04', 103, '2020-11-02', '2020-11-24', 4, 21, 1, 'Training 04 Training 04 Training 04 Training 04 Training 04', '2020-11-09 10:08:02', '2020-11-09 10:38:27'),
(43, 'Training 05 Training 05 Training 05 Training 05 Training 05 Training 05 Training 05 Training 05', 105, '2020-11-03', '2020-11-25', 4, 21, 4, 'Training 05 Training 05 Training 05 Training 05', '2020-11-09 10:09:00', '2020-11-09 10:38:17'),
(44, 'Training 06 Training 06 Training 06 Training 06 Training 06 Training 06 Training 06 Training 06 Training 06', 106, '2020-11-03', '2020-11-24', 4, 21, 1, 'Training 06 Training 06 Training 06 Training 06 Training 06', '2020-11-09 10:09:27', '2020-11-09 10:38:05'),
(45, 'Training 07 Training 07 Training 07 Training 07 Training 07 Training 07 Training 07 Training 07 Training 07 Training 07', 107, '2020-11-05', '2020-11-30', 1, 17, 1, 'Training 07 Training 07 Training 07 Training 07 Training 07 Training 07', '2020-11-09 10:10:52', '2020-11-09 10:11:26'),
(46, 'Training 08 Training 08 Training 08 Training 08 Training 08 Training 08 Training 08 Training 08 Training 08', 108, '2020-11-03', '2020-11-24', 1, 17, 2, 'Training 08 Training 08 Training 08 Training 08 Training 08 Training 08', '2020-11-09 10:11:16', '2020-11-09 10:11:29'),
(47, 'asdf', 32, '2020-11-09', '2020-11-13', 1, 21, 5, 'asdasdfasf', '2020-11-12 08:05:00', '2020-11-12 08:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section_bangla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `section`, `name_bangla`, `section_bangla`, `email`, `user_type`, `created_by`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '', '', 'mri.rakib@gmail.com', 1, NULL, 1, '2020-09-25 12:23:24', '$2y$10$jSL6eFclY0T5Ht2XQMkv9.UEOLWNuBD3r2t2mpCPe9VK2e0rcJfT.', 'phyxh79tc7QiXAAeHSmJ7Qu6M0xJyvWf6w1LIg51dV3v4q6WmE6dtPxdhtRT', '2020-09-25 12:22:12', '2020-10-13 05:57:15'),
(2, 'DC Jessore', '', '', '', 'rahim@gmail.com', 2, NULL, 1, '2020-10-04 17:59:06', '$2y$10$9AupoyIIW2me25iyI6OWDu87cWBVOjywE38uFngDPx/xyPbbHYc.K', 'upuzFclIVSHKSzxpbAEwwQTWPZHkCSgas268nDHu5ZOwtHDjvvTNFVDDUzA8', '2020-10-04 17:58:39', '2020-11-12 06:01:43'),
(11, 'Rahim Normal User', '', '', '', 'rahim2@gmail.com', 3, 14, 1, NULL, '$2y$10$.0A0UocGyodpqh7q17s.6ehTbaWTVI8THVTBZmfGJVuLPkVIwdhna', 'IQZ6axemxGRxzsHjXZ2ELScpxyPWteIrR8eME7VbImQpaQXCDYKi2SzNp5ea', '2020-10-05 17:39:48', '2020-10-22 04:48:07'),
(12, 'Rahim3 Admin User', '', '', '', 'rahim3@gmail.com', 2, NULL, 1, NULL, '$2y$10$ePPYWc2OhqANfDkkUxj7Vu4nuvfuJvR0lDbeQNGiitkHOvVLpC.r2', NULL, '2020-10-05 18:11:56', '2020-10-14 09:43:54'),
(13, 'Rahim4', '', '', '', 'rahim4@gmail.com', 2, NULL, 1, NULL, '$2y$10$qfY/MmtitoiMvjlGMSqMd.DbdF6xgQv8ltsl.QCcjNlKrmG1SfoV6', NULL, '2020-10-05 19:01:53', '2020-10-05 19:01:53'),
(14, 'IT1', '', '', '', 'it1@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$QGc4dSM39jpcgxB0VBHSfuU0gwGXafrg9oWZIa4TzkbEyhuGk9NAe', 'gFrRqkfPabKM6IM5mdnUtPSG8Fjotf09tLoBHl4hceyJbuuy6ZsmEwCHSq5C', '2020-10-06 16:21:08', '2020-10-06 16:21:08'),
(15, 'DC Jhenaidah', '', '', '', 'jhenaidah_dc@mopa.gov.bd', 3, 14, 1, NULL, '$2y$10$hx.7VfOhWdh28xZnHD5OzOuVgKH6/XyHFblyGbfExmPnCi6nl/emS', 'lbyiL0gfmRCHUl6oSvvT1pjsNXQlcySkv6hxkArjfPxdCgMfCf6z1T1M1Wcw', '2020-10-06 16:22:10', '2020-10-06 16:22:10'),
(16, 'DC Kushtia', '', '', '', 'dc_kushtia@mopa.gov.bd', 3, 14, 1, NULL, '$2y$10$364pNjzeC4VZdxCVE/QF/u8GRAyTWpOIuv.bX4k0JJH.BpMg/p9ke', NULL, '2020-10-06 16:28:15', '2020-10-06 16:28:15'),
(17, 'IT2', '', '', '', 'it2@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$joFyeU1CKpMn8fp0xDslS.izouQxxw05OjOQgHjYN/peS63vjzKc.', NULL, '2020-10-06 16:31:37', '2020-10-06 16:31:37'),
(18, 'DC Khulna', '', '', '', 'dc_khulna@mopa.gov.bd', 2, NULL, 1, NULL, '$2y$10$I1X7lTCSxUbSajJlRW3JOulYOWg/7DRtCf8pYiVtBDkQbj4SaoPJu', NULL, '2020-10-12 07:16:17', '2020-10-13 05:28:44'),
(19, 'AO DC Khulna', '', '', '', 'ao_dc_khulna@mopa.gov.bd', 3, 18, 1, NULL, '$2y$10$a6bXo/QPc6xT8VlRLXvvCewgk7Y8zR.D5LzI0SwVqDdaAt3ufAAya', 'WEZtK0vAxmP5ADJyQiwb7auHm26LsST9in4tyQZksvli3M0zkM0Z91WWtb3w', '2020-10-12 07:18:29', '2020-10-12 07:18:29'),
(20, 'PO DC Khulna', '', '', '', 'po_dc_khulna@mopa.gov.bd', 3, 18, 1, NULL, '$2y$10$my.QaVAJA4RtWMoDcUReJeV8KGxfPgVKk7x/LbBnAq0oAGZvwNBFC', NULL, '2020-10-12 07:27:51', '2020-10-12 07:27:51'),
(21, 'IT3', '', '', '', 'it3@mopa.gov.bd', 2, 0, 1, NULL, '$2y$10$xhPZwBz/LNXQP8AL9YOm4e/xNVOYSybM7eTfnuFqbkhePHwSWFeZS', NULL, '2020-10-13 05:56:19', '2020-10-13 06:12:48'),
(22, 'DC Jhenaidah', '', '', '', 'dcjhenaidah@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$ko4hPdotz8FfA.yuwe5.LuKjOomdyJBsNIZpu4Bec.Uu/s0Ab9.H2', NULL, '2020-10-13 06:08:45', '2020-10-15 05:58:48'),
(23, 'DC Kushtia', '', '', '', 'dckushtia@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$quZZYx0vPBEofiFrqPVRUO1R9mfXXRwEYfxuI5BYr9LoKwouCXHCu', NULL, '2020-10-13 06:09:21', '2020-10-13 06:09:21'),
(24, 'AO DC Faridpur', '', '', '', 'ao_dc_faridpur@mopa.gov.bd', 2, 1, 1, NULL, '$2y$10$k2TFDeJ/9uwgOP48T0XZ5uScNc0NQSP4ovfaPld.n7t1CoyJURs7i', NULL, '2020-10-14 06:54:02', '2020-10-14 06:54:02'),
(25, 'it3user', '', '', '', 'it3user@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$kOm1fRUgjfqBfs0ySl.NNebE0dMI3Xc20mjR57iLZ8VtdZaZUvpGa', NULL, '2020-10-15 05:59:59', '2020-10-15 05:59:59'),
(26, 'DC Jessore', '', '', '', 'dcjessore@mopa.gov.bd', 3, 21, 1, NULL, '$2y$10$TxI1ajYneMaM/WvUAWHDGe4yRNY03EEH/mfc3fr8uTprnLsOnlfqS', NULL, '2020-10-18 05:29:51', '2020-11-03 05:19:59'),
(27, 'IT4', '', '', '', 'it4@mopa.gov.bd', 2, 1, 1, NULL, '$2y$10$gcJfda3UBVf9aZu1XHr1POBMX/pyoH8j2eG1XaQ2jQK6h75nmCo42', NULL, '2020-10-25 08:46:40', '2020-10-25 08:46:40'),
(28, 'DC Jessore', 'General', '', '', 'user1@mopa.gov.bd', 3, 1, 1, NULL, '$2y$10$WaMWhc4.ALNv1bRuNURRB.MscmKd24wpHfNgwafHdgjJOyU/cbDM.', NULL, '2020-11-12 05:48:57', '2020-11-12 05:48:57'),
(29, 'DC Jessore', 'General', '', '', 'user2@mopa.gov.bd', 3, 1, 1, NULL, '$2y$10$zVL8rByYXyVvzT2xueckb.8SqDaNI4N8YWtGYEzPFbt6iND55qa4q', NULL, '2020-11-12 05:57:02', '2020-11-12 05:57:02'),
(31, 'likhon', 'asdf', '্বকা্ব', '্বা্বকাব', 'asd@asd.asdf', 3, 1, 1, NULL, '$2y$10$abqhCNsB.JHy..BSzdIK2u65zOOmLq/uoxMCmS0cURd1Yxt/ahnWG', NULL, '2020-11-12 06:09:10', '2020-11-12 06:10:42'),
(32, 'likhon', 'asdf', '্বকা্ব', '্বা্বকাব', 'asasdfd@asd.asdf', 2, 1, 1, NULL, '$2y$10$6EpJWQaN0xDhHmUzYVhkHeefn99io7qYT1TEXev6mK1rT3jfTFtBS', NULL, '2020-11-12 06:10:11', '2020-11-12 06:10:11');

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
(296, 21, 'Training Go create.44', '2020-11-12 08:05:23', '192.168.11.120', '2020-11-12 08:05:23', '2020-11-12 08:05:23');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `g_o_information`
--
ALTER TABLE `g_o_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `g_o_information_templates`
--
ALTER TABLE `g_o_information_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nominations`
--
ALTER TABLE `nominations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `nomination_details`
--
ALTER TABLE `nomination_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
