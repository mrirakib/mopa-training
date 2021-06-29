-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 01:01 PM
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
(51, 65, 1, '1624861389.sample.pdf', 1, '2021-06-28 06:23:09', '2021-06-28 06:23:09');

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
-- Table structure for table `entry_user_approval_authority_mappings`
--

CREATE TABLE `entry_user_approval_authority_mappings` (
  `id` int(11) NOT NULL,
  `approval_authority_user_id` int(11) NOT NULL,
  `entry_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `entry_user_approval_authority_mappings`
--

INSERT INTO `entry_user_approval_authority_mappings` (`id`, `approval_authority_user_id`, `entry_user_id`, `created_at`, `updated_at`) VALUES
(1, 11, 86, '2021-06-28 07:11:19', '2021-06-28 07:57:05'),
(2, 73, 87, '2021-06-29 06:13:19', '2021-06-29 06:13:19'),
(3, 69, 88, '2021-06-29 06:44:40', '2021-06-29 06:44:40');

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
(54, 65, 2, 86, 2, '2021-06-28 08:13:19', '2021-06-29 06:36:53'),
(55, 65, 2, 87, 2, '2021-06-28 10:12:20', '2021-06-29 06:37:03'),
(56, 65, 2, 88, 2, '2021-06-29 07:00:49', '2021-06-29 07:04:08');

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
(117, 4, 1, 65, 54, 2, 86, 700030, 'Rakib', 'রাকিব', 'asdf', 'এপি', '01741607831', 'mri.rakib@gmail.com', 'asd', 'পিএসিসি', 34, 2, 'Male', '2021-06-01', '2021-06-28 08:13:19', '2021-06-29 10:19:15', NULL),
(118, 1, 0, 65, 54, 2, 86, 700029, 'asd', 'তদ', 'asdf', 'কতদ', '01521481414', 'likhon@gmail.com', 'asdf', 'দত', 34, 2, 'Male', '2021-06-07', '2021-06-28 08:13:19', '2021-06-29 10:15:37', NULL),
(119, 4, 1, 65, 54, 2, 86, 7025, 'asdf', 'কতদক', 'asdf', 'দতকদ;ক', '01521414141', 'asd@asdf.com', 'asdf', 'দকতদকত', 35, 2, 'Male', '2021-06-03', '2021-06-28 08:13:19', '2021-06-29 10:19:15', NULL),
(120, 3, 1, 65, 55, 2, 87, 500029, 'asd', 'asd', 'asd', 'asd', '01741607831', 'asdf@asdf.asdf', 'asd', 'asdf', 35, 2, 'Male', '2021-06-08', '2021-06-28 10:12:20', '2021-06-29 10:19:15', NULL),
(121, 4, 1, 65, 55, 2, 87, 500030, 'asd', 'asdf', 'asdf', 'sadf', '01741607831', 'asdf@asdf.asdf', 'asdf', 'sadf', 31, 2, 'Male', '2021-06-01', '2021-06-28 10:12:20', '2021-06-29 10:19:15', NULL),
(122, 4, 1, 65, 56, 2, 88, 1, '1', '2', '1', '2', '01741607831', 'asdf@adf.asdf', '1', '2', 1, 1, 'Male', '2021-06-29', '2021-06-29 07:00:49', '2021-06-29 10:19:15', NULL),
(123, 1, 0, 65, 56, 2, 88, 2, 'asdf', 'asd', 'asdf', 'asdf', '01741607831', 'asdf@asdf.asdf', 'asdf', 'asdf', 3, 3, 'Female', '2021-06-15', '2021-06-29 07:00:49', '2021-06-29 10:15:37', NULL);

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
  `status` int(11) NOT NULL COMMENT '0=entry, 1=publish, 2=close, 3=primary selection, 4=Final Selection',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `training_calender_id`, `organization_id`, `title`, `issue_no`, `issue_date`, `application_start_date`, `application_end_date`, `training_start_date`, `training_end_date`, `remarks`, `status`, `created_at`, `updated_at`) VALUES
(65, 1, 2, 'it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2 it2', '116', '2021-06-01', '2021-06-09', '2021-06-17', '2021-06-22', '2021-06-30', NULL, 4, '2021-06-28 06:23:08', '2021-06-29 10:32:12');

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
(1, 'aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa aaa aaaaaa aaaaaaaa aaa', '2325', '2021-06-01', NULL, '2021-2022', 1, 2, 12, 'sas', '2021-06-09', '2021-06-17', '2021-06-22', '2021-06-30', 2, 12, 2, NULL, '2021-06-23 09:20:14', '2021-06-28 06:23:08'),
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
(1, 'Super Admin', '', '', '', 'mri.rakib@gmail.com', 1, 0, NULL, 1, '2020-09-25 12:23:24', '$2y$10$jSL6eFclY0T5Ht2XQMkv9.UEOLWNuBD3r2t2mpCPe9VK2e0rcJfT.', 'tpcr2zWkXQsyeZ4Dicygt4NcJhF6j4MfLEAXMfLyIRYXzMCcPoxo2T8ujZiN', '2020-09-25 12:22:12', '2020-10-13 05:57:15'),
(2, 'Internal Training - 1', 'Internal Training', 'অভ্যন্তরীণ প্রশিক্ষণ-১ শাখা', 'অভ্যন্তরীণ প্রশিক্ষণ', 'itss1@mopa.gov.bd', 2, 0, NULL, 2, '2020-10-04 17:59:06', '$2y$10$9AupoyIIW2me25iyI6OWDu87cWBVOjywE38uFngDPx/xyPbbHYc.K', 'hwLsgmj3B3oxULh2YqivIaPfdpKKzwUUetKe1ltirPLRLNyqYQRT1GycXiW4', '2020-10-04 17:58:39', '2021-06-13 10:19:10'),
(11, 'DC Dhaka', 'General', 'ডিসি ঢাকা', 'সাধারন', 'dcdhaka@mopa.gov.bd', 3, 1, 14, 1, NULL, '$2y$10$.0A0UocGyodpqh7q17s.6ehTbaWTVI8THVTBZmfGJVuLPkVIwdhna', 'Y1iicdgM3ezfuW8q3CdDX6sXM4jBVFtiPQSTUceST1ZPayElzT5fhKJlr97n', '2020-10-05 17:39:48', '2020-11-24 08:54:22'),
(12, 'Internal Training - 2', 'Internal Training', 'অভ্যন্তরীণ প্রশিক্ষণ-২ শাখা', 'অভ্যন্তরীণ প্রশিক্ষণ', 'it2@mopa.gov.bd', 2, 0, NULL, 1, NULL, '$2y$10$ePPYWc2OhqANfDkkUxj7Vu4nuvfuJvR0lDbeQNGiitkHOvVLpC.r2', 'atRn3TsMPRPivfS3rczmvoyjtgXieGD0UcqiwYhRxYOGIs2cuOX4YTUDk6qY', '2020-10-05 18:11:56', '2020-11-25 07:28:00'),
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
(86, 'DC Dhaka', 'Admin', 'ডিসি ঢাকা', 'প্রশাসন', 'dc_dhaka_admin@mopa.gov.bd', 4, 2, 1, 1, NULL, '$2y$10$wa4zl6PUUhgKktHC..ePIefvoiy4n3j1gMF0ErNt73dFGkhDSEte2', NULL, '2021-06-27 04:36:01', '2021-06-27 04:36:01'),
(87, 'DC Office Jhenaidah', 'Admin', 'ডিসি অফিস, ঝিনাইদহ', 'প্রশাসন', 'dcjhenaidahadmin@mopa.gov.bd', 4, 2, 1, 1, NULL, '$2y$10$HcJivZSYl2nxnqW.rC29oO48HfZxR6wI4mbTypS1ranA7xBEW.T0K', 'C0gBAHtrfnf3uyqwe6VQOfKwJT5rcyZ33sH2IN5YqYkBP2jtUo5YfGu7eRJH', '2021-06-28 08:29:49', '2021-06-28 08:29:49'),
(88, 'DC Kushtia', 'Training', 'ডিসি অফিস, কুষ্টিয়া', 'প্রশিক্ষন', 'dckushtiatraining@mopa.gov.bd', 4, 2, 1, 1, NULL, '$2y$10$/npqbhaCzwxK3g1GER3B9uYSOHUuJ6v3VGAgCqqw9VnFniqfBXPem', NULL, '2021-06-29 06:43:14', '2021-06-29 06:44:00');

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
(563, 12, 'Training create 65', '2021-06-28 06:23:09', '127.0.0.1', '2021-06-28 06:23:09', '2021-06-28 06:23:09'),
(564, 12, 'Training publish 65', '2021-06-28 06:24:31', '127.0.0.1', '2021-06-28 06:24:31', '2021-06-28 06:24:31'),
(565, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:11:19', '127.0.0.1', '2021-06-28 07:11:19', '2021-06-28 07:11:19'),
(566, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:15:08', '127.0.0.1', '2021-06-28 07:15:08', '2021-06-28 07:15:08'),
(567, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:49:13', '127.0.0.1', '2021-06-28 07:49:13', '2021-06-28 07:49:13'),
(568, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:56:45', '127.0.0.1', '2021-06-28 07:56:45', '2021-06-28 07:56:45'),
(569, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:56:58', '127.0.0.1', '2021-06-28 07:56:58', '2021-06-28 07:56:58'),
(570, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-28 07:57:05', '127.0.0.1', '2021-06-28 07:57:05', '2021-06-28 07:57:05'),
(571, 86, 'Nomination information save. Training id: 65', '2021-06-28 08:13:19', '127.0.0.1', '2021-06-28 08:13:19', '2021-06-28 08:13:19'),
(572, 87, 'Nomination information save. Training id: 65', '2021-06-28 10:12:20', '127.0.0.1', '2021-06-28 10:12:20', '2021-06-28 10:12:20'),
(573, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-29 06:13:19', '127.0.0.1', '2021-06-29 06:13:19', '2021-06-29 06:13:19'),
(574, 1, 'User information update 88', '2021-06-29 06:44:00', '127.0.0.1', '2021-06-29 06:44:00', '2021-06-29 06:44:00'),
(575, 1, 'Entry User and approval authority user Mapping Successfully', '2021-06-29 06:44:40', '127.0.0.1', '2021-06-29 06:44:40', '2021-06-29 06:44:40'),
(576, 88, 'Nomination information save. Training id: 65', '2021-06-29 07:00:49', '127.0.0.1', '2021-06-29 07:00:49', '2021-06-29 07:00:49'),
(577, 12, 'Training close 65', '2021-06-29 09:48:59', '127.0.0.1', '2021-06-29 09:48:59', '2021-06-29 09:48:59'),
(578, 12, 'Candidate Selection save. Training id: 65', '2021-06-29 10:08:33', '127.0.0.1', '2021-06-29 10:08:33', '2021-06-29 10:08:33'),
(579, 12, 'Candidate Selection save. Training id: 65', '2021-06-29 10:15:37', '127.0.0.1', '2021-06-29 10:15:37', '2021-06-29 10:15:37'),
(580, 12, 'Candidate Selection save. Training id: 65', '2021-06-29 10:19:06', '127.0.0.1', '2021-06-29 10:19:06', '2021-06-29 10:19:06'),
(581, 12, 'Candidate Selection save. Training id: 65', '2021-06-29 10:19:15', '127.0.0.1', '2021-06-29 10:19:15', '2021-06-29 10:19:15'),
(582, 12, 'Training make final 65', '2021-06-29 10:32:12', '127.0.0.1', '2021-06-29 10:32:12', '2021-06-29 10:32:12');

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
-- Indexes for table `entry_user_approval_authority_mappings`
--
ALTER TABLE `entry_user_approval_authority_mappings`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `cadre_lists`
--
ALTER TABLE `cadre_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `entry_user_approval_authority_mappings`
--
ALTER TABLE `entry_user_approval_authority_mappings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `nomination_details`
--
ALTER TABLE `nomination_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `training_calenders`
--
ALTER TABLE `training_calenders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=583;

--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
