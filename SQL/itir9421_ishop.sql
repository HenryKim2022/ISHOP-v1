-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2024 at 03:57 PM
-- Server version: 10.5.24-MariaDB-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itir9421_ishop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT '',
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `password` text NOT NULL,
  `commission` decimal(8,2) DEFAULT NULL,
  `remember_token` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `verified` tinyint(1) DEFAULT 0,
  `viewed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `code`, `password`, `commission`, `remember_token`, `created_at`, `updated_at`, `active`, `verified`, `viewed`) VALUES
(1, 'Admin', 'admin', 'admin@mail.com', NULL, '$2y$10$lxC9Kimc6fj0MirqTQ0qPO87TSMcjMMYk8N0.tAc1C0Vzegrte9qS', NULL, 0, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 1, 0),
(2, 'Vendor', 'vendor', 'vendor@mail.com', NULL, '$2y$10$F/RnDF7Ue0WhC6ui./gtJ.AxLpF67D0Z.eqqTn9yi88SU8.haIowe', 28.00, 0, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `title`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Size', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 'Color', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 'Ram', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_langs`
--

CREATE TABLE `attribute_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_langs`
--

INSERT INTO `attribute_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `attribute_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Boyut', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Renk', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Veri deposu', 'tr', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Taille', 'fr', 1),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Couleur', 'fr', 2),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'RAM', 'fr', 3),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'مقاس', 'ar', 1),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'لون', 'ar', 2),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'كبش', 'ar', 3),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'आकार', 'hi', 1),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'रंग', 'hi', 2),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'टक्कर मारना', 'hi', 3);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `attribute_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `title`, `attribute_id`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'XL', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 'L', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 'M', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 'S', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 'XS', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 'White', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 'Blue', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(8, 'Ash', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(9, 'Orange', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(10, 'Green', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(11, '1GB', 3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(12, '2GB', 3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attribute_value_langs`
--

CREATE TABLE `attribute_value_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `attribute_value_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `attribute_value_langs`
--

INSERT INTO `attribute_value_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `attribute_value_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एक्स्ट्रा लार्ज', 'hi', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एल', 'hi', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एम', 'hi', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एस', 'hi', 4),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एक्सएस', 'hi', 5),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सफ़ेद', 'hi', 6),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'नीला', 'hi', 7),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'राख', 'hi', 8),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'नारंगी', 'hi', 9),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'हरा', 'hi', 10),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1 जीबी', 'hi', 11),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '2 जीबी', 'hi', 12),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XL', 'fr', 1),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'L', 'fr', 2),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'M', 'fr', 3),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'S', 'fr', 4),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XS', 'fr', 5),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Blanc', 'fr', 6),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Bleue', 'fr', 7),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Cendre', 'fr', 8),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Orange', 'fr', 9),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vert', 'fr', 10),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1 Go', 'fr', 11),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '2 Go', 'fr', 12),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XL', 'ar', 1),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'L', 'ar', 2),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'M', 'ar', 3),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'S', 'ar', 4),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XS', 'ar', 5),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أبيض', 'ar', 6),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أزرق', 'ar', 7),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'رماد', 'ar', 8),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'البرتقالي', 'ar', 9),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أخضر', 'ar', 10),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1 جيجابايت', 'ar', 11),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '2 جيجابايت', 'ar', 12),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XL', 'tr', 1),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'L', 'tr', 2),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'M', 'tr', 3),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'S', 'tr', 4),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'XS', 'tr', 5),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Beyaz', 'tr', 6),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Mavi', 'tr', 7),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Kül', 'tr', 8),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Turuncu', 'tr', 9),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Yeşil', 'tr', 10),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1GB', 'tr', 11),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '2GB', 'tr', 12);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default-image.webp',
  `type` int(11) NOT NULL,
  `source_type` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 1,
  `closable` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `type`, `source_type`, `tags`, `url`, `title`, `status`, `closable`, `created_at`, `updated_at`, `admin_id`, `slug`) VALUES
(1, 'banner-1.webp', 1, 4, NULL, NULL, 'Sale', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'sale'),
(2, 'banner-2.webp', 2, 6, NULL, '/homesick-new-home-reed-diffuser/product/88630161', 'Voucher', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'voucher'),
(3, 'banner-3.webp', 3, 4, NULL, NULL, 'Discount', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'discount'),
(4, 'banner-4.webp', 4, 4, NULL, NULL, 'Black friday', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'black-friday'),
(5, 'banner-5.webp', 5, 4, NULL, NULL, 'Summer fashion', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'summer-fashion'),
(6, 'banner-6.webp', 6, 4, NULL, NULL, 'Autumn Offer', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'autumn-offer'),
(7, 'banner-7.webp', 7, 4, NULL, NULL, 'Christmas Offer', 1, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'christmas-offer'),
(8, 'banner-8.webp', 8, 4, NULL, NULL, '45% Off', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, '45-off'),
(9, 'banner-9.png', 9, 4, NULL, NULL, 'Free shipping', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'free-shipping');

-- --------------------------------------------------------

--
-- Table structure for table `banner_langs`
--

CREATE TABLE `banner_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner_langs`
--

INSERT INTO `banner_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `banner_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Satış', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Fiş', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'İndirim', 'tr', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Kara Cuma', 'tr', 4),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Yaz modası', 'tr', 5),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Sonbahar Teklifi', 'tr', 6),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Noel Teklifi', 'tr', 7),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '%45 İndirim', 'tr', 8),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ücretsiz kargo', 'tr', 9),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'बिक्री', 'hi', 1),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'वाउचर', 'hi', 2),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'छूट', 'hi', 3),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ब्लैक फ्राइडे', 'hi', 4),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ग्रीष्मकालीन फैशन', 'hi', 5),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ऑटम ऑफर', 'hi', 6),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'क्रिसमस ऑफर', 'hi', 7),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '45% की छूट', 'hi', 8),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'मुफ़्त शिपिंग', 'hi', 9),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vente', 'fr', 1),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Bon', 'fr', 2),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Réduction', 'fr', 3),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vendredi noir', 'fr', 4),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Mode d\'été', 'fr', 5),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Offre Automne', 'fr', 6),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Offre de Noël', 'fr', 7),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '45% de réduction', 'fr', 8),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Livraison gratuite', 'fr', 9),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أُوكَازيُون', 'ar', 1),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'القسيمة', 'ar', 2),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'الخصم', 'ar', 3),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'الجمعة السوداء', 'ar', 4),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أزياء الصيف', 'ar', 5),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'عرض الخريف', 'ar', 6),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'عرض عيد الميلاد', 'ar', 7),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'خصم 45٪', 'ar', 8),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'شحن مجاني', 'ar', 9);

-- --------------------------------------------------------

--
-- Table structure for table `banner_source_brands`
--

CREATE TABLE `banner_source_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banner_source_brands`
--

INSERT INTO `banner_source_brands` (`id`, `created_at`, `updated_at`, `brand_id`, `banner_id`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442200, 1),
(2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442201, 1),
(3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442202, 1),
(4, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442203, 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner_source_categories`
--

CREATE TABLE `banner_source_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_source_products`
--

CREATE TABLE `banner_source_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_source_sub_categories`
--

CREATE TABLE `banner_source_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `featured` int(11) NOT NULL DEFAULT 2,
  `status` int(11) NOT NULL DEFAULT 2,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `image`, `featured`, `status`, `admin_id`, `created_at`, `updated_at`, `slug`) VALUES
(9442200, 'Levi\'s', 'levis.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'levis'),
(9442201, 'Addidas', 'addidas.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'addidas'),
(9442202, 'H&M', 'hnm.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'hm'),
(9442203, 'Rolex', 'rolex.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'rolex'),
(9442204, 'Apple', 'apple.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'apple'),
(9442205, 'Gucci', 'gucci.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'gucci'),
(9442206, 'Schnell', 'schnell.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'schnell'),
(9442207, 'Zara', 'zara.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'zara'),
(9442208, 'Nike', 'nike.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'nike'),
(9442209, 'Gillette', 'gillette.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'gillette'),
(9442210, 'Accenture', 'accenture.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'accenture'),
(9442211, 'Nescafe', 'nescafe.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'nescafe'),
(9442212, 'Loreal', 'loreal.webp', 1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'loreal');

-- --------------------------------------------------------

--
-- Table structure for table `brand_langs`
--

CREATE TABLE `brand_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand_langs`
--

INSERT INTO `brand_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `brand_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'लेवी \' s', 'hi', 9442200),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'अडीडास', 'hi', 9442201),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एच एंड एम', 'hi', 9442202),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'रोलेक्स', 'hi', 9442203),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सेब', 'hi', 9442204),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'गुच्ची', 'hi', 9442205),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'श्नेल', 'hi', 9442206),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ज़ारा', 'hi', 9442207),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'नाइके', 'hi', 9442208),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'जिलेट', 'hi', 9442209),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एक्सेंचर', 'hi', 9442210),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'नेस्कैफे', 'hi', 9442211),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'लोरियल', 'hi', 9442212),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Levi \' s', 'fr', 9442200),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Addidas', 'fr', 9442201),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'H&M', 'fr', 9442202),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Rolex', 'fr', 9442203),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Pomme', 'fr', 9442204),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Gucci', 'fr', 9442205),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Schnell', 'fr', 9442206),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Zara', 'fr', 9442207),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Nike', 'fr', 9442208),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Gillette', 'fr', 9442209),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Accenture', 'fr', 9442210),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Nescafé', 'fr', 9442211),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Loréal', 'fr', 9442212),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Levi\'ler', 'tr', 9442200),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Addidas', 'tr', 9442201),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'H&M', 'tr', 9442202),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Rolex', 'tr', 9442203),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Elma', 'tr', 9442204),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Gucci', 'tr', 9442205),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Schnell', 'tr', 9442206),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Zara', 'tr', 9442207),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Nike', 'tr', 9442208),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Gillette', 'tr', 9442209),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Accenture', 'tr', 9442210),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Nescafe', 'tr', 9442211),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Loreal', 'tr', 9442212),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ليفي', 'ar', 9442200),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'شركة اديداس', 'ar', 9442201),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'اتش اند ام', 'ar', 9442202),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'رولكس', 'ar', 9442203),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'إلما', 'ar', 9442204),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'غوتشي', 'ar', 9442205),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'شنيل', 'ar', 9442206),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'زارا', 'ar', 9442207),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'نايك', 'ar', 9442208),
(49, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'جيليت', 'ar', 9442209),
(50, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أكسنتشر', 'ar', 9442210),
(51, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'نسكافيه', 'ar', 9442211),
(52, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'لوريال', 'ar', 9442212);

-- --------------------------------------------------------

--
-- Table structure for table `bundle_deals`
--

CREATE TABLE `bundle_deals` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `buy` int(11) NOT NULL,
  `free` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bundle_deals`
--

INSERT INTO `bundle_deals` (`id`, `title`, `buy`, `free`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'BOGO', 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bundle_deal_langs`
--

CREATE TABLE `bundle_deal_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `bundle_deal_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bundle_deal_langs`
--

INSERT INTO `bundle_deal_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `bundle_deal_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أشتري 1 و أحصل على 1', 'ar', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'एक खरीदें, दूसरी मुफ़्त पाएं', 'hi', 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1 Al 1 Al', 'tr', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Acheter 1 obtenez 1', 'fr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cancellations`
--

CREATE TABLE `cancellations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `refunded` tinyint(1) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `user_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `shipping_place_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_type` int(11) NOT NULL DEFAULT 1,
  `selected` int(11) NOT NULL DEFAULT 1,
  `user_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 2,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent` bigint(20) UNSIGNED DEFAULT 0,
  `featured` int(11) DEFAULT 2,
  `in_footer` int(11) DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `meta_title`, `meta_description`, `image`, `status`, `admin_id`, `created_at`, `updated_at`, `slug`, `parent`, `featured`, `in_footer`) VALUES
(61952111, 'Men\'s Wear', 'Men\'s Wear Products Online Shopping', 'Buy Men\'s Wear at the best sale prices today!', 'category-men.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'mens-wear', 0, 2, 1),
(63082111, 'Women Apparel', 'Women Apparel Products Online Shopping', 'Buy Women Apparel at the best sale prices today!', 'category-women-apparel.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'women-apparel', 0, 2, 1),
(63082112, 'Beauty & Personal Care', 'Beauty & Personal Care Products Online Shopping', 'Buy Beauty & Personal Care at the best sale prices today!', 'category-beauty.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'beauty-personal-care', 0, 2, 1),
(64273111, 'Tops', 'Tops Products Online Shopping', 'Buy Tops at the best sale prices today!', 'sub-cat-tops.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'tops', 63082111, 1, 1),
(72531153, 'Jewellery & Accessories', 'Jewellery & Accessories Products Online Shopping', 'Buy Jewellery & Accessories at the best sale prices today!', 'category-jewellery-accessories.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'jewellery-ccessories', 0, 2, 1),
(72531155, 'Women\'s Bags', 'Women\'s Bags Products Online Shopping', 'Buy Women\'s Bags at the best sale prices today!', 'category-women-bags.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'womens-bags', 0, 2, 1),
(72533143, 'Travel & Luggage', 'Travel & Luggage Products Online Shopping', 'Buy Travel & Luggage at the best sale prices today!', 'category-travel-luggage.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'travel-luggage', 0, 2, 1),
(73294112, 'Dresses', 'Dresses Products Online Shopping', 'Buy Dresses at the best sale prices today!', 'sub-cat-dresses.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'dresses', 63082111, 1, 1),
(73294118, 'Sling Bags', 'Sling Bags Products Online Shopping', 'Buy Sling Bags at the best sale prices today!', 'sub-cat-sling-bags.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'sling-bags', 72531155, 1, 1),
(91202114, 'Men\'s Shoes', 'Men\'s Shoes Products Online Shopping', 'Buy Men\'s Shoes at the best sale prices today!', 'category-men-shoes.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'mens-shoes', 0, 2, 1),
(91233119, 'Home Appliances', 'Home Appliances Products Online Shopping', 'Buy Home Appliances at the best sale prices today!', 'category-home-appliances.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'home-appliances', 0, 2, 1),
(92522115, 'Home & Living', 'Home & Living Products Online Shopping', 'Buy Home & Living at the best sale prices today!', 'category-home.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'home-living', 0, 2, 1),
(96323113, 'Socks & Tights', 'Socks & Tights Products Online Shopping', 'Buy Socks & Tights at the best sale prices today!', 'sub-cat-socks-tights.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'socks--tights', 63082111, 1, 1),
(96323119, 'Clutches & Mini Bags', 'Clutches & Mini Bags Products Online Shopping', 'Buy Clutches & Mini Bags at the best sale prices today!', 'sub-cat-clutches-mini-bags.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'clutches--mini-bags', 72531155, 1, 1),
(96522110, 'Men\'s Bags', 'Men\'s Bags Products Online Shopping', 'Buy Men\'s Bags at the best sale prices today!', 'category-men-bags.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'mens-bags', 0, 2, 1),
(96674111, 'Toys, Kids & Babies', 'Toys, Kids & Babies Products Online Shopping', 'Buy Toys, Kids & Babies at the best sale prices today!', 'category-toys-kids-babies.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'toys-kids-babies', 0, 2, 1),
(96765110, 'Handbags', 'Handbags Products Online Shopping', 'Buy Handbags at the best sale prices today!', 'sub-cat-handbags.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'handbags', 72531155, 1, 1),
(96765114, 'Pants & Leggings', 'Pants & Leggings Products Online Shopping', 'Buy Pants & Leggings at the best sale prices today!', 'sub-cat-pants-leggings.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'pants--leggings', 63082111, 1, 1),
(96765123, 'Hats & Caps', 'Hats & Caps Products Online Shopping', 'Buy Hats & Caps at the best sale prices today!', 'sub-cat-hats-caps.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'hats--caps', 72531153, 1, 1),
(96765126, 'Pants', 'Pants Products Online Shopping', 'Buy Pants at the best sale prices today!', 'sub-cat-pants.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'pants', 61952111, 1, 1),
(96765129, 'Crossbody & Shoulder Bags', 'Crossbody & Shoulder Bags Products Online Shopping', 'Buy Crossbody & Shoulder Bags at the best sale prices today!', 'sub-cat-crossbody-shoulder-bags.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'crossbody--shoulder-bags', 61952111, 1, 1),
(96765132, 'Totes', 'Totes Products Online Shopping', 'Buy Totes at the best sale prices today!', 'sub-cat-totes.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'totes', 96522110, 1, 1),
(96765135, 'Luggage', 'Luggage Products Online Shopping', 'Buy Luggage at the best sale prices today!', 'sub-cat-luggage.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'luggage', 72533143, 1, 1),
(96765138, 'Bath & Baby Care', 'Bath & Baby Care Products Online Shopping', 'Buy Bath & Baby Care at the best sale prices today!', 'sub-cat-bath-baby-care.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'bath--baby-care', 96674111, 1, 1),
(96765141, 'Formal Shoes', 'Formal Shoes Products Online Shopping', 'Buy Formal Shoes at the best sale prices today!', 'sub-cat-formal-shoes.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'formal-shoes', 91202114, 1, 1),
(96765144, 'Home Decor', 'Home Decor Products Online Shopping', 'Buy Home Decor at the best sale prices today!', 'sub-cat-home-decor.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'home-decor', 92522115, 1, 1),
(96765147, 'Snacks & Sweets', 'Snacks & Sweets Products Online Shopping', 'Buy Snacks & Sweets at the best sale prices today!', 'sub-cat-snacks-sweets.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'snacks--sweets', 96874118, 1, 1),
(96765150, 'Housekeeping', 'Housekeeping Products Online Shopping', 'Buy Housekeeping at the best sale prices today!', 'sub-cat-housekeeping.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'housekeeping', 91233119, 1, 1),
(96874118, 'Food & Beverages', 'Food & Beverages Products Online Shopping', 'Buy Food & Beverages at the best sale prices today!', 'category-food.webp', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 'food-beverages', 0, 2, 1),
(97373115, 'Women\'s Hair Care', 'Women\'s Hair Care Products Online Shopping', 'Buy Women\'s Hair Care at the best sale prices today!', 'sub-cat-women-hair-care.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'womens-hair-care', 63082112, 1, 1),
(97373116, 'Feminine Care', 'Feminine Care Products Online Shopping', 'Buy Feminine Care at the best sale prices today!', 'sub-cat-feminine-care.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'feminine-care', 63082112, 1, 1),
(97373117, 'Skincare', 'Skincare Products Online Shopping', 'Buy Skincare at the best sale prices today!', 'sub-cat-skincare.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'skincare', 63082112, 1, 1),
(97373121, 'Key Chains', 'Key Chains Products Online Shopping', 'Buy Key Chains at the best sale prices today!', 'sub-cat-key-chains.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'key-chains', 72531153, 1, 1),
(97373124, 'Shirts', 'Shirts Products Online Shopping', 'Buy Shirts at the best sale prices today!', 'sub-cat-shirts.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'shirts', 61952111, 1, 1),
(99585122, 'Eyewear', 'Eyewear Products Online Shopping', 'Buy Eyewear at the best sale prices today!', 'sub-cat-eyewear.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'eyewear', 72531153, 1, 1),
(99585125, 'Jackets & Coats', 'Jackets & Coats Products Online Shopping', 'Buy Jackets & Coats at the best sale prices today!', 'sub-cat-jackets-coats.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'jackets--coats', 61952111, 1, 1),
(99585127, 'Men\'s Wallet', 'Men\'s Wallet Products Online Shopping', 'Buy Men\'s Wallet at the best sale prices today!', 'sub-cat-men-wallet.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'mens-wallet', 61952111, 1, 1),
(99585128, 'Backpacks', 'Backpacks Products Online Shopping', 'Buy Backpacks at the best sale prices today!', 'sub-cat-backpacks.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'backpacks', 61952111, 1, 1),
(99585130, 'Briefcases', 'Briefcases Products Online Shopping', 'Buy Briefcases at the best sale prices today!', 'sub-cat-briefcases.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'briefcases', 96522110, 1, 1),
(99585131, 'Suit Carriers', 'Suit Carriers Products Online Shopping', 'Buy Suit Carriers at the best sale prices today!', 'sub-cat-suit-carriers.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'suit-carriers', 96522110, 1, 1),
(99585133, 'Travel Bags & Backpacks', 'Travel Bags & Backpacks Products Online Shopping', 'Buy Travel Bags & Backpacks at the best sale prices today!', 'sub-cat-travel-bags-backpacks.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'travel-bags--backpacks', 72533143, 1, 1),
(99585134, 'Travel Accessories', 'Travel Accessories Products Online Shopping', 'Buy Travel Accessories at the best sale prices today!', 'sub-cat-travel-accessories.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'travel-accessories', 72533143, 1, 1),
(99585136, 'Maternity Care', 'Maternity Care Products Online Shopping', 'Buy Maternity Care at the best sale prices today!', 'sub-cat-maternity-care.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'maternity-care', 96674111, 1, 1),
(99585137, 'Kid\'s Furniture', 'Kid\'s Furniture Products Online Shopping', 'Buy Kid\'s Furniture at the best sale prices today!', 'sub-cat-kid-furniture.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'kids-furniture', 96674111, 1, 1),
(99585139, 'Sandals & Flip-Flops', 'Sandals & Flip-Flops Products Online Shopping', 'Buy Sandals & Flip-Flops at the best sale prices today!', 'sub-cat-sandals-flip-flops.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'sandals--flip-flops', 91202114, 1, 1),
(99585140, 'Sneakers', 'Sneakers Products Online Shopping', 'Buy Sneakers at the best sale prices today!', 'sub-cat-sneakers.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'sneakers', 91202114, 1, 1),
(99585142, 'Tools, DIY & Outdoors', 'Tools, DIY & Outdoors Products Online Shopping', 'Buy Tools, DIY & Outdoors at the best sale prices today!', 'sub-cat-tools-diy-outdoors.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'tools-diy--outdoors', 92522115, 1, 1),
(99585143, 'Kitchen & Dining', 'Kitchen & Dining Products Online Shopping', 'Buy Kitchen & Dining at the best sale prices today!', 'sub-cat-kitchen-dining.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'kitchen--dining', 92522115, 1, 1),
(99585145, 'Meat & Seafood', 'Meat & Seafood Products Online Shopping', 'Buy Meat & Seafood at the best sale prices today!', 'sub-cat-meat-Seafood.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'meat--seafood', 96874118, 1, 1),
(99585148, 'TV Accessories', 'TV Accessories Products Online Shopping', 'Buy TV Accessories at the best sale prices today!', 'sub-cat-tv-accessories.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'tv-accessories', 91233119, 1, 1),
(99585149, 'Small Kitchen Appliances', 'Small Kitchen Appliances Products Online Shopping', 'Buy Small Kitchen Appliances at the best sale prices today!', 'sub-cat-small-kitchen-appliances.webp', 1, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'small-kitchen-appliances', 91233119, 1, 1),
(99585150, 'New Skin Care 2024.1', 'New Skin Care 2024.1', '-- new 2024.1 --', 'default-image.webp', 1, 1, '2024-05-02 00:52:00', '2024-05-02 00:52:32', 'new-skin-care-20241', 97373117, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_langs`
--

CREATE TABLE `category_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `lang` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_langs`
--

INSERT INTO `category_langs` (`id`, `created_at`, `updated_at`, `title`, `meta_title`, `meta_description`, `lang`, `category_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Kadın Giyim', 'Kadın Giyim Ürünler Çevrimiçi Alışveriş', 'Satın almak Kadın Giyim bugünün en iyi satış fiyatlarıyla!', 'tr', 63082111),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Güzellik ve Kişisel Bakım', 'Güzellik ve Kişisel Bakım Ürünler Çevrimiçi Alışveriş', 'Satın almak Güzellik ve Kişisel Bakım bugünün en iyi satış fiyatlarıyla!', 'tr', 63082112),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Bayan Çantaları', 'Bayan Çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Bayan Çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 72531155),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Takı ve Aksesuarlar', 'Takı ve Aksesuarlar Ürünler Çevrimiçi Alışveriş', 'Satın almak Takı ve Aksesuarlar bugünün en iyi satış fiyatlarıyla!', 'tr', 72531153),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'erkek giyim', 'erkek giyim Ürünler Çevrimiçi Alışveriş', 'Satın almak erkek giyim bugünün en iyi satış fiyatlarıyla!', 'tr', 61952111),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Erkek Çantaları', 'Erkek Çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Erkek Çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 96522110),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Seyahat ve Bagaj', 'Seyahat ve Bagaj Ürünler Çevrimiçi Alışveriş', 'Satın almak Seyahat ve Bagaj bugünün en iyi satış fiyatlarıyla!', 'tr', 72533143),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Oyuncaklar, Çocuklar ve Bebekler', 'Oyuncaklar, Çocuklar ve Bebekler Ürünler Çevrimiçi Alışveriş', 'Satın almak Oyuncaklar, Çocuklar ve Bebekler bugünün en iyi satış fiyatlarıyla!', 'tr', 96674111),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Erkek ayakkabıları', 'Erkek ayakkabıları Ürünler Çevrimiçi Alışveriş', 'Satın almak Erkek ayakkabıları bugünün en iyi satış fiyatlarıyla!', 'tr', 91202114),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ev yaşantısı', 'Ev yaşantısı Ürünler Çevrimiçi Alışveriş', 'Satın almak Ev yaşantısı bugünün en iyi satış fiyatlarıyla!', 'tr', 92522115),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Yiyecek ve İçecekler', 'Yiyecek ve İçecekler Ürünler Çevrimiçi Alışveriş', 'Satın almak Yiyecek ve İçecekler bugünün en iyi satış fiyatlarıyla!', 'tr', 96874118),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ev Aletleri', 'Ev Aletleri Ürünler Çevrimiçi Alışveriş', 'Satın almak Ev Aletleri bugünün en iyi satış fiyatlarıyla!', 'tr', 91233119),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ملابس نسائية', 'ملابس نسائية المنتجات للتسوق عبر الإنترنت', 'يشتري ملابس نسائية بأفضل أسعار البيع اليوم!', 'ar', 63082111),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'الجمال والعناية الشخصية', 'الجمال والعناية الشخصية المنتجات للتسوق عبر الإنترنت', 'يشتري الجمال والعناية الشخصية بأفضل أسعار البيع اليوم!', 'ar', 63082112),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'حقائب نسائية', 'حقائب نسائية المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب نسائية بأفضل أسعار البيع اليوم!', 'ar', 72531155),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'المجوهرات والاكسسوارات', 'المجوهرات والاكسسوارات المنتجات للتسوق عبر الإنترنت', 'يشتري المجوهرات والاكسسوارات بأفضل أسعار البيع اليوم!', 'ar', 72531153),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ملابس رجالية', 'ملابس رجالية المنتجات للتسوق عبر الإنترنت', 'يشتري ملابس رجالية بأفضل أسعار البيع اليوم!', 'ar', 61952111),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'حقائب رجالية', 'حقائب رجالية المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب رجالية بأفضل أسعار البيع اليوم!', 'ar', 96522110),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'السفر والأمتعة', 'السفر والأمتعة المنتجات للتسوق عبر الإنترنت', 'يشتري السفر والأمتعة بأفضل أسعار البيع اليوم!', 'ar', 72533143),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'لعب الاطفال والرضع', 'لعب الاطفال والرضع المنتجات للتسوق عبر الإنترنت', 'يشتري لعب الاطفال والرضع بأفضل أسعار البيع اليوم!', 'ar', 96674111),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'احذية رجالية', 'احذية رجالية المنتجات للتسوق عبر الإنترنت', 'يشتري احذية رجالية بأفضل أسعار البيع اليوم!', 'ar', 91202114),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'المعيشة المنزلية', 'المعيشة المنزلية المنتجات للتسوق عبر الإنترنت', 'يشتري المعيشة المنزلية بأفضل أسعار البيع اليوم!', 'ar', 92522115),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'مأكولات ومشروبات', 'مأكولات ومشروبات المنتجات للتسوق عبر الإنترنت', 'يشتري مأكولات ومشروبات بأفضل أسعار البيع اليوم!', 'ar', 96874118),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أجهزة منزلية', 'أجهزة منزلية المنتجات للتسوق عبر الإنترنت', 'يشتري أجهزة منزلية بأفضل أسعار البيع اليوم!', 'ar', 91233119),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'महिला परिधान', 'महिला परिधान उत्पाद ऑनलाइन शॉपिंग', 'खरीदना महिला परिधान सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 63082111),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सौंदर्य और व्यक्तिगत देखभाल', 'सौंदर्य और व्यक्तिगत देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना सौंदर्य और व्यक्तिगत देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 63082112),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'महिलाओं के बैग', 'महिलाओं के बैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना महिलाओं के बैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 72531155),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'आभूषण और सहायक उपकरण', 'आभूषण और सहायक उपकरण उत्पाद ऑनलाइन शॉपिंग', 'खरीदना आभूषण और सहायक उपकरण सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 72531153),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'पुरुषों के वस्त्र', 'पुरुषों के वस्त्र उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पुरुषों के वस्त्र सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 61952111),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'पुरुषों के बैग', 'पुरुषों के बैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पुरुषों के बैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96522110),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'यात्रा और सामान', 'यात्रा और सामान उत्पाद ऑनलाइन शॉपिंग', 'खरीदना यात्रा और सामान सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 72533143),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'खिलौने, बच्चे और बच्चे', 'खिलौने, बच्चे और बच्चे उत्पाद ऑनलाइन शॉपिंग', 'खरीदना खिलौने, बच्चे और बच्चे सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96674111),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'पुरुषों के जूते', 'पुरुषों के जूते उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पुरुषों के जूते सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 91202114),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'घर में रहने वाले', 'घर में रहने वाले उत्पाद ऑनलाइन शॉपिंग', 'खरीदना घर में रहने वाले सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 92522115),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'खाद्य और पेय पदार्थ', 'खाद्य और पेय पदार्थ उत्पाद ऑनलाइन शॉपिंग', 'खरीदना खाद्य और पेय पदार्थ सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96874118),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'घरेलू उपकरण', 'घरेलू उपकरण उत्पाद ऑनलाइन शॉपिंग', 'खरीदना घरेलू उपकरण सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 91233119),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vêtements pour femmes', 'Vêtements pour femmes Produits Achats en ligne', 'Acheter Vêtements pour femmes aux meilleurs prix de vente aujourd\'hui!', 'fr', 63082111),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Beauté et soins personnels', 'Beauté et soins personnels Produits Achats en ligne', 'Acheter Beauté et soins personnels aux meilleurs prix de vente aujourd\'hui!', 'fr', 63082112),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Sacs femme', 'Sacs femme Produits Achats en ligne', 'Acheter Sacs femme aux meilleurs prix de vente aujourd\'hui!', 'fr', 72531155),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Bijoux & Accessoires', 'Bijoux & Accessoires Produits Achats en ligne', 'Acheter Bijoux & Accessoires aux meilleurs prix de vente aujourd\'hui!', 'fr', 72531153),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vêtements pour hommes', 'Vêtements pour hommes Produits Achats en ligne', 'Acheter Vêtements pour hommes aux meilleurs prix de vente aujourd\'hui!', 'fr', 61952111),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Sacs pour hommes', 'Sacs pour hommes Produits Achats en ligne', 'Acheter Sacs pour hommes aux meilleurs prix de vente aujourd\'hui!', 'fr', 96522110),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Voyage & Bagages', 'Voyage & Bagages Produits Achats en ligne', 'Acheter Voyage & Bagages aux meilleurs prix de vente aujourd\'hui!', 'fr', 72533143),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Jouets, enfants et bébés', 'Jouets, enfants et bébés Produits Achats en ligne', 'Acheter Jouets, enfants et bébés aux meilleurs prix de vente aujourd\'hui!', 'fr', 96674111),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Chaussures pour hommes', 'Chaussures pour hommes Produits Achats en ligne', 'Acheter Chaussures pour hommes aux meilleurs prix de vente aujourd\'hui!', 'fr', 91202114),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'La vie domestique', 'La vie domestique Produits Achats en ligne', 'Acheter La vie domestique aux meilleurs prix de vente aujourd\'hui!', 'fr', 92522115),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Nourriture et boissons', 'Nourriture et boissons Produits Achats en ligne', 'Acheter Nourriture et boissons aux meilleurs prix de vente aujourd\'hui!', 'fr', 96874118),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Appareils ménagers', 'Appareils ménagers Produits Achats en ligne', 'Acheter Appareils ménagers aux meilleurs prix de vente aujourd\'hui!', 'fr', 91233119),
(49, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Üstler', 'Üstler Ürünler Çevrimiçi Alışveriş', 'Satın almak Üstler bugünün en iyi satış fiyatlarıyla!', 'tr', 64273111),
(50, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'सबसे ऊपर', 'सबसे ऊपर उत्पाद ऑनलाइन शॉपिंग', 'खरीदना सबसे ऊपर सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 64273111),
(51, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'بلايز', 'بلايز المنتجات للتسوق عبر الإنترنت', 'يشتري بلايز بأفضل أسعار البيع اليوم!', 'ar', 64273111),
(52, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Hauts', 'Hauts Produits Achats en ligne', 'Acheter Hauts aux meilleurs prix de vente aujourd\'hui!', 'fr', 64273111),
(53, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Elbiseler', 'Elbiseler Ürünler Çevrimiçi Alışveriş', 'Satın almak Elbiseler bugünün en iyi satış fiyatlarıyla!', 'tr', 73294112),
(54, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'कपड़े', 'कपड़े उत्पाद ऑनलाइन शॉपिंग', 'खरीदना कपड़े सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 73294112),
(55, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'فساتين', 'فساتين المنتجات للتسوق عبر الإنترنت', 'يشتري فساتين بأفضل أسعار البيع اليوم!', 'ar', 73294112),
(56, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Robes', 'Robes Produits Achats en ligne', 'Acheter Robes aux meilleurs prix de vente aujourd\'hui!', 'fr', 73294112),
(57, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Askılı Çantalar', 'Askılı Çantalar Ürünler Çevrimiçi Alışveriş', 'Satın almak Askılı Çantalar bugünün en iyi satış fiyatlarıyla!', 'tr', 73294118),
(58, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'गोफन बैग', 'गोफन बैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना गोफन बैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 73294118),
(59, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أكياس حبال', 'أكياس حبال المنتجات للتسوق عبر الإنترنت', 'يشتري أكياس حبال بأفضل أسعار البيع اليوم!', 'ar', 73294118),
(60, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sacs à bandoulière', 'Sacs à bandoulière Produits Achats en ligne', 'Acheter Sacs à bandoulière aux meilleurs prix de vente aujourd\'hui!', 'fr', 73294118),
(61, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Çorap ve Tayt', 'Çorap ve Tayt Ürünler Çevrimiçi Alışveriş', 'Satın almak Çorap ve Tayt bugünün en iyi satış fiyatlarıyla!', 'tr', 96323113),
(62, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'मोज़े और चड्डी', 'मोज़े और चड्डी उत्पाद ऑनलाइन शॉपिंग', 'खरीदना मोज़े और चड्डी सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96323113),
(63, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'الجوارب والجوارب', 'الجوارب والجوارب المنتجات للتسوق عبر الإنترنت', 'يشتري الجوارب والجوارب بأفضل أسعار البيع اليوم!', 'ar', 96323113),
(64, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Chaussettes & Collants', 'Chaussettes & Collants Produits Achats en ligne', 'Acheter Chaussettes & Collants aux meilleurs prix de vente aujourd\'hui!', 'fr', 96323113),
(65, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Manşonlar ve Mini Çantalar', 'Manşonlar ve Mini Çantalar Ürünler Çevrimiçi Alışveriş', 'Satın almak Manşonlar ve Mini Çantalar bugünün en iyi satış fiyatlarıyla!', 'tr', 96323119),
(66, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'चंगुल और मिनी बैग', 'चंगुल और मिनी बैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना चंगुल और मिनी बैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96323119),
(67, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب اليد والحقائب الصغيرة', 'حقائب اليد والحقائب الصغيرة المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب اليد والحقائب الصغيرة بأفضل أسعار البيع اليوم!', 'ar', 96323119),
(68, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Pochettes et mini sacs', 'Pochettes et mini sacs Produits Achats en ligne', 'Acheter Pochettes et mini sacs aux meilleurs prix de vente aujourd\'hui!', 'fr', 96323119),
(69, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Çantalar', 'Çantalar Ürünler Çevrimiçi Alışveriş', 'Satın almak Çantalar bugünün en iyi satış fiyatlarıyla!', 'tr', 96765110),
(70, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'हैंडबैग', 'हैंडबैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना हैंडबैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765110),
(71, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب اليد', 'حقائب اليد المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب اليد بأفضل أسعار البيع اليوم!', 'ar', 96765110),
(72, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sacs à main', 'Sacs à main Produits Achats en ligne', 'Acheter Sacs à main aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765110),
(73, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Pantolon ve Tayt', 'Pantolon ve Tayt Ürünler Çevrimiçi Alışveriş', 'Satın almak Pantolon ve Tayt bugünün en iyi satış fiyatlarıyla!', 'tr', 96765114),
(74, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'पैंटोलन और लेगिंग्स', 'पैंटोलन और लेगिंग्स उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पैंटोलन और लेगिंग्स सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765114),
(75, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'بانتولون وطماق', 'بانتولون وطماق المنتجات للتسوق عبر الإنترنت', 'يشتري بانتولون وطماق بأفضل أسعار البيع اليوم!', 'ar', 96765114),
(76, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Pantalon & Leggings', 'Pantalon & Leggings Produits Achats en ligne', 'Acheter Pantalon & Leggings aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765114),
(77, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Şapkalar ve Bereler', 'Şapkalar ve Bereler Ürünler Çevrimiçi Alışveriş', 'Satın almak Şapkalar ve Bereler bugünün en iyi satış fiyatlarıyla!', 'tr', 96765123),
(78, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'टोपी और टोपियाँ', 'टोपी और टोपियाँ उत्पाद ऑनलाइन शॉपिंग', 'खरीदना टोपी और टोपियाँ सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765123),
(79, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'القبعات والقبعات', 'القبعات والقبعات المنتجات للتسوق عبر الإنترنت', 'يشتري القبعات والقبعات بأفضل أسعار البيع اليوم!', 'ar', 96765123),
(80, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Chapeaux et Bérets', 'Chapeaux et Bérets Produits Achats en ligne', 'Acheter Chapeaux et Bérets aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765123),
(81, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Pantolon', 'Pantolon Ürünler Çevrimiçi Alışveriş', 'Satın almak Pantolon bugünün en iyi satış fiyatlarıyla!', 'tr', 96765126),
(82, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'पैजामा', 'पैजामा उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पैजामा सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765126),
(83, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'بنطلون', 'بنطلون المنتجات للتسوق عبر الإنترنت', 'يشتري بنطلون بأفضل أسعار البيع اليوم!', 'ar', 96765126),
(84, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Pantalon', 'Pantalon Produits Achats en ligne', 'Acheter Pantalon aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765126),
(85, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Crossbody ve Omuz Çantaları', 'Crossbody ve Omuz Çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Crossbody ve Omuz Çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 96765129),
(86, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'क्रॉसबॉडी और शोल्डर बैग', 'क्रॉसबॉडी और शोल्डर बैग उत्पाद ऑनलाइन शॉपिंग', 'खरीदना क्रॉसबॉडी और शोल्डर बैग सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765129),
(87, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب الكتف والكتف', 'حقائب الكتف والكتف المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب الكتف والكتف بأفضل أسعار البيع اليوم!', 'ar', 96765129),
(88, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sacs à bandoulière et à bandoulière', 'Sacs à bandoulière et à bandoulière Produits Achats en ligne', 'Acheter Sacs à bandoulière et à bandoulière aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765129),
(89, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Çantalar', 'Çantalar Ürünler Çevrimiçi Alışveriş', 'Satın almak Çantalar bugünün en iyi satış fiyatlarıyla!', 'tr', 96765132),
(90, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'थैलियों', 'थैलियों उत्पाद ऑनलाइन शॉपिंग', 'खरीदना थैलियों सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765132),
(91, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أكياس', 'أكياس المنتجات للتسوق عبر الإنترنت', 'يشتري أكياس بأفضل أسعار البيع اليوم!', 'ar', 96765132),
(92, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sacs', 'Sacs Produits Achats en ligne', 'Acheter Sacs aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765132),
(93, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Bagaj', 'Bagaj Ürünler Çevrimiçi Alışveriş', 'Satın almak Bagaj bugünün en iyi satış fiyatlarıyla!', 'tr', 96765135),
(94, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'सामान', 'सामान उत्पाद ऑनलाइन शॉपिंग', 'खरीदना सामान सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765135),
(95, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أمتعة السفر', 'أمتعة السفر المنتجات للتسوق عبر الإنترنت', 'يشتري أمتعة السفر بأفضل أسعار البيع اليوم!', 'ar', 96765135),
(96, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Bagage', 'Bagage Produits Achats en ligne', 'Acheter Bagage aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765135),
(97, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Banyo & Bebek Bakımı', 'Banyo & Bebek Bakımı Ürünler Çevrimiçi Alışveriş', 'Satın almak Banyo & Bebek Bakımı bugünün en iyi satış fiyatlarıyla!', 'tr', 96765138),
(98, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'स्नान और शिशु देखभाल', 'स्नान और शिशु देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना स्नान और शिशु देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765138),
(99, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'العناية بالطفل والاستحمام', 'العناية بالطفل والاستحمام المنتجات للتسوق عبر الإنترنت', 'يشتري العناية بالطفل والاستحمام بأفضل أسعار البيع اليوم!', 'ar', 96765138),
(100, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Soins du bain et du bébé', 'Soins du bain et du bébé Produits Achats en ligne', 'Acheter Soins du bain et du bébé aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765138),
(101, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Resmi Ayakkabı', 'Resmi Ayakkabı Ürünler Çevrimiçi Alışveriş', 'Satın almak Resmi Ayakkabı bugünün en iyi satış fiyatlarıyla!', 'tr', 96765141),
(102, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'औपचारिक जूते', 'औपचारिक जूते उत्पाद ऑनलाइन शॉपिंग', 'खरीदना औपचारिक जूते सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765141),
(103, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أحذية رسمية', 'أحذية رسمية المنتجات للتسوق عبر الإنترنت', 'يشتري أحذية رسمية بأفضل أسعار البيع اليوم!', 'ar', 96765141),
(104, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Chaussures formelles', 'Chaussures formelles Produits Achats en ligne', 'Acheter Chaussures formelles aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765141),
(105, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Ev dekoru', 'Ev dekoru Ürünler Çevrimiçi Alışveriş', 'Satın almak Ev dekoru bugünün en iyi satış fiyatlarıyla!', 'tr', 96765144),
(106, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'गृह सजावट', 'गृह सजावट उत्पाद ऑनलाइन शॉपिंग', 'खरीदना गृह सजावट सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765144),
(107, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ديكور المنزل', 'ديكور المنزل المنتجات للتسوق عبر الإنترنت', 'يشتري ديكور المنزل بأفضل أسعار البيع اليوم!', 'ar', 96765144),
(108, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Décoration de maison', 'Décoration de maison Produits Achats en ligne', 'Acheter Décoration de maison aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765144),
(109, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Atıştırmalıklar ve Tatlılar', 'Atıştırmalıklar ve Tatlılar Ürünler Çevrimiçi Alışveriş', 'Satın almak Atıştırmalıklar ve Tatlılar bugünün en iyi satış fiyatlarıyla!', 'tr', 96765147),
(110, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'स्नैक्स और मिठाई', 'स्नैक्स और मिठाई उत्पाद ऑनलाइन शॉपिंग', 'खरीदना स्नैक्स और मिठाई सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765147),
(111, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'سناكس وحلويات', 'سناكس وحلويات المنتجات للتسوق عبر الإنترنت', 'يشتري سناكس وحلويات بأفضل أسعار البيع اليوم!', 'ar', 96765147),
(112, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Collations et sucreries', 'Collations et sucreries Produits Achats en ligne', 'Acheter Collations et sucreries aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765147),
(113, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Kat hizmetleri', 'Kat hizmetleri Ürünler Çevrimiçi Alışveriş', 'Satın almak Kat hizmetleri bugünün en iyi satış fiyatlarıyla!', 'tr', 96765150),
(114, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'गृह व्यवस्था', 'गृह व्यवस्था उत्पाद ऑनलाइन शॉपिंग', 'खरीदना गृह व्यवस्था सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 96765150),
(115, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'التدبير المنزلي', 'التدبير المنزلي المنتجات للتسوق عبر الإنترنت', 'يشتري التدبير المنزلي بأفضل أسعار البيع اليوم!', 'ar', 96765150),
(116, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Entretien ménager', 'Entretien ménager Produits Achats en ligne', 'Acheter Entretien ménager aux meilleurs prix de vente aujourd\'hui!', 'fr', 96765150),
(117, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Bayan Saç Bakımı', 'Bayan Saç Bakımı Ürünler Çevrimiçi Alışveriş', 'Satın almak Bayan Saç Bakımı bugünün en iyi satış fiyatlarıyla!', 'tr', 97373115),
(118, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'महिलाओं के बालों की देखभाल', 'महिलाओं के बालों की देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना महिलाओं के बालों की देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 97373115),
(119, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'العناية بالشعر للنساء', 'العناية بالشعر للنساء المنتجات للتسوق عبر الإنترنت', 'يشتري العناية بالشعر للنساء بأفضل أسعار البيع اليوم!', 'ar', 97373115),
(120, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Soins des cheveux pour femmes', 'Soins des cheveux pour femmes Produits Achats en ligne', 'Acheter Soins des cheveux pour femmes aux meilleurs prix de vente aujourd\'hui!', 'fr', 97373115),
(121, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Kadın Bakımı', 'Kadın Bakımı Ürünler Çevrimiçi Alışveriş', 'Satın almak Kadın Bakımı bugünün en iyi satış fiyatlarıyla!', 'tr', 97373116),
(122, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'स्त्री देखभाल', 'स्त्री देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना स्त्री देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 97373116),
(123, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'العناية الأنثوية', 'العناية الأنثوية المنتجات للتسوق عبر الإنترنت', 'يشتري العناية الأنثوية بأفضل أسعار البيع اليوم!', 'ar', 97373116),
(124, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Soins féminins', 'Soins féminins Produits Achats en ligne', 'Acheter Soins féminins aux meilleurs prix de vente aujourd\'hui!', 'fr', 97373116),
(125, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Cilt bakımı', 'Cilt bakımı Ürünler Çevrimiçi Alışveriş', 'Satın almak Cilt bakımı bugünün en iyi satış fiyatlarıyla!', 'tr', 97373117),
(126, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'त्वचा की देखभाल', 'त्वचा की देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना त्वचा की देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 97373117),
(127, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'العناية بالبشرة', 'العناية بالبشرة المنتجات للتسوق عبر الإنترنت', 'يشتري العناية بالبشرة بأفضل أسعار البيع اليوم!', 'ar', 97373117),
(128, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Soins de la peau', 'Soins de la peau Produits Achats en ligne', 'Acheter Soins de la peau aux meilleurs prix de vente aujourd\'hui!', 'fr', 97373117),
(129, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Anahtarlık', 'Anahtarlık Ürünler Çevrimiçi Alışveriş', 'Satın almak Anahtarlık bugünün en iyi satış fiyatlarıyla!', 'tr', 97373121),
(130, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'कुंजी जंजीर', 'कुंजी जंजीर उत्पाद ऑनलाइन शॉपिंग', 'खरीदना कुंजी जंजीर सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 97373121),
(131, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'سلاسل المفاتيح', 'سلاسل المفاتيح المنتجات للتسوق عبر الإنترنت', 'يشتري سلاسل المفاتيح بأفضل أسعار البيع اليوم!', 'ar', 97373121),
(132, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Porte-clés', 'Porte-clés Produits Achats en ligne', 'Acheter Porte-clés aux meilleurs prix de vente aujourd\'hui!', 'fr', 97373121),
(133, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'gömlek', 'gömlek Ürünler Çevrimiçi Alışveriş', 'Satın almak gömlek bugünün en iyi satış fiyatlarıyla!', 'tr', 97373124),
(134, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'शर्ट', 'शर्ट उत्पाद ऑनलाइन शॉपिंग', 'खरीदना शर्ट सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 97373124),
(135, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'قميص', 'قميص المنتجات للتسوق عبر الإنترنت', 'يشتري قميص بأفضل أسعار البيع اليوم!', 'ar', 97373124),
(136, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Chemise', 'Chemise Produits Achats en ligne', 'Acheter Chemise aux meilleurs prix de vente aujourd\'hui!', 'fr', 97373124),
(137, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'gözlük', 'gözlük Ürünler Çevrimiçi Alışveriş', 'Satın almak gözlük bugünün en iyi satış fiyatlarıyla!', 'tr', 99585122),
(138, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'चश्में', 'चश्में उत्पाद ऑनलाइन शॉपिंग', 'खरीदना चश्में सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585122),
(139, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'نظارات', 'نظارات المنتجات للتسوق عبر الإنترنت', 'يشتري نظارات بأفضل أسعار البيع اليوم!', 'ar', 99585122),
(140, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Lunettes', 'Lunettes Produits Achats en ligne', 'Acheter Lunettes aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585122),
(141, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ceketler ve kabanlar', 'ceketler ve kabanlar Ürünler Çevrimiçi Alışveriş', 'Satın almak ceketler ve kabanlar bugünün en iyi satış fiyatlarıyla!', 'tr', 99585125),
(142, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'जैकेट और कोट', 'जैकेट और कोट उत्पाद ऑनलाइन शॉपिंग', 'खरीदना जैकेट और कोट सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585125),
(143, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'السترات والمعاطف', 'السترات والمعاطف المنتجات للتسوق عبر الإنترنت', 'يشتري السترات والمعاطف بأفضل أسعار البيع اليوم!', 'ar', 99585125),
(144, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Vestes et manteaux', 'Vestes et manteaux Produits Achats en ligne', 'Acheter Vestes et manteaux aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585125),
(145, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Erkek Cüzdanı', 'Erkek Cüzdanı Ürünler Çevrimiçi Alışveriş', 'Satın almak Erkek Cüzdanı bugünün en iyi satış fiyatlarıyla!', 'tr', 99585127),
(146, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'पुरुषों का बटुआ', 'पुरुषों का बटुआ उत्पाद ऑनलाइन शॉपिंग', 'खरीदना पुरुषों का बटुआ सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585127),
(147, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'محفظة رجالية', 'محفظة رجالية المنتجات للتسوق عبر الإنترنت', 'يشتري محفظة رجالية بأفضل أسعار البيع اليوم!', 'ar', 99585127),
(148, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Portefeuille homme', 'Portefeuille homme Produits Achats en ligne', 'Acheter Portefeuille homme aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585127),
(149, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sırt çantaları', 'Sırt çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Sırt çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585128),
(150, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'बैकपैक', 'बैकपैक उत्पाद ऑनलाइन शॉपिंग', 'खरीदना बैकपैक सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585128),
(151, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب ظهر', 'حقائب ظهر المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب ظهر بأفضل أسعار البيع اليوم!', 'ar', 99585128),
(152, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'sacs à dos', 'sacs à dos Produits Achats en ligne', 'Acheter sacs à dos aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585128),
(153, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Evrak çantaları', 'Evrak çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Evrak çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585130),
(154, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ब्रीफ़केस', 'ब्रीफ़केस उत्पाद ऑनलाइन शॉपिंग', 'खरीदना ब्रीफ़केस सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585130),
(155, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب', 'حقائب المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب بأفضل أسعار البيع اليوم!', 'ar', 99585130),
(156, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Porte-documents', 'Porte-documents Produits Achats en ligne', 'Acheter Porte-documents aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585130),
(157, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Takım Elbise Taşıyıcıları', 'Takım Elbise Taşıyıcıları Ürünler Çevrimiçi Alışveriş', 'Satın almak Takım Elbise Taşıyıcıları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585131),
(158, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'सूट वाहक', 'सूट वाहक उत्पाद ऑनलाइन शॉपिंग', 'खरीदना सूट वाहक सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585131),
(159, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حاملات البدلة', 'حاملات البدلة المنتجات للتسوق عبر الإنترنت', 'يشتري حاملات البدلة بأفضل أسعار البيع اليوم!', 'ar', 99585131),
(160, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Porte-costumes', 'Porte-costumes Produits Achats en ligne', 'Acheter Porte-costumes aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585131),
(161, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Seyahat Çantaları & Sırt Çantaları', 'Seyahat Çantaları & Sırt Çantaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Seyahat Çantaları & Sırt Çantaları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585133),
(162, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'यात्रा बैग और बैकपैक्स', 'यात्रा बैग और बैकपैक्स उत्पाद ऑनलाइन शॉपिंग', 'खरीदना यात्रा बैग और बैकपैक्स सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585133),
(163, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'حقائب السفر وحقائب الظهر', 'حقائب السفر وحقائب الظهر المنتجات للتسوق عبر الإنترنت', 'يشتري حقائب السفر وحقائب الظهر بأفضل أسعار البيع اليوم!', 'ar', 99585133),
(164, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sacs de voyage et sacs à dos', 'Sacs de voyage et sacs à dos Produits Achats en ligne', 'Acheter Sacs de voyage et sacs à dos aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585133),
(165, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Seyahat Aksesuarları', 'Seyahat Aksesuarları Ürünler Çevrimiçi Alışveriş', 'Satın almak Seyahat Aksesuarları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585134),
(166, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'यात्रा सहायक उपकरण', 'यात्रा सहायक उपकरण उत्पाद ऑनलाइन शॉपिंग', 'खरीदना यात्रा सहायक उपकरण सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585134),
(167, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'اكسسوارات السفر', 'اكسسوارات السفر المنتجات للتسوق عبر الإنترنت', 'يشتري اكسسوارات السفر بأفضل أسعار البيع اليوم!', 'ar', 99585134),
(168, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Accessoires de voyage', 'Accessoires de voyage Produits Achats en ligne', 'Acheter Accessoires de voyage aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585134),
(169, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Doğum Bakımı', 'Maternity Care Ürünler Çevrimiçi Alışveriş', 'Satın almak Doğum Bakımı bugünün en iyi satış fiyatlarıyla!', 'tr', 99585136),
(170, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'मातृत्व देखभाल', 'मातृत्व देखभाल उत्पाद ऑनलाइन शॉपिंग', 'खरीदना मातृत्व देखभाल सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585136),
(171, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'رعاية الأمومة', 'رعاية الأمومة المنتجات للتسوق عبر الإنترنت', 'يشتري رعاية الأمومة بأفضل أسعار البيع اليوم!', 'ar', 99585136),
(172, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Soins de maternité', 'Soins de maternité Produits Achats en ligne', 'Acheter Soins de maternité aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585136),
(173, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Çocuk Mobilyaları', 'Çocuk Mobilyaları Ürünler Çevrimiçi Alışveriş', 'Satın almak Çocuk Mobilyaları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585137),
(174, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'बच्चे का फर्नीचर', 'बच्चे का फर्नीचर उत्पाद ऑनलाइन शॉपिंग', 'खरीदना बच्चे का फर्नीचर सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585137),
(175, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أثاث الأطفال', 'أثاث الأطفال المنتجات للتسوق عبر الإنترنت', 'يشتري أثاث الأطفال بأفضل أسعار البيع اليوم!', 'ar', 99585137),
(176, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Meubles pour enfants', 'Meubles pour enfants Produits Achats en ligne', 'Acheter Meubles pour enfants aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585137),
(177, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sandalet ve Parmak Arası Terlik', 'Sandalet ve Parmak Arası Terlik Ürünler Çevrimiçi Alışveriş', 'Satın almak Sandalet ve Parmak Arası Terlik bugünün en iyi satış fiyatlarıyla!', 'tr', 99585139),
(178, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'सैंडल एवं फ़्लिप फ़्लॉप', 'सैंडल एवं फ़्लिप फ़्लॉप उत्पाद ऑनलाइन शॉपिंग', 'खरीदना सैंडल एवं फ़्लिप फ़्लॉप सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585139),
(179, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'زحافات', 'زحافات المنتجات للتسوق عبر الإنترنت', 'يشتري زحافات بأفضل أسعار البيع اليوم!', 'ar', 99585139),
(180, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sandales et tongs', 'Sandales et tongs Produits Achats en ligne', 'Acheter Sandales et tongs aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585139),
(181, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Spor ayakkabı', 'Spor ayakkabı Ürünler Çevrimiçi Alışveriş', 'Satın almak Spor ayakkabı bugünün en iyi satış fiyatlarıyla!', 'tr', 99585140),
(182, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'स्नीकर्स', 'स्नीकर्स उत्पाद ऑनलाइन शॉपिंग', 'खरीदना स्नीकर्स सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585140),
(183, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أحذية رياضية', 'أحذية رياضية المنتجات للتسوق عبر الإنترنت', 'يشتري أحذية رياضية بأفضل أسعار البيع اليوم!', 'ar', 99585140),
(184, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Baskets', 'Baskets Produits Achats en ligne', 'Acheter Baskets aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585140),
(185, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Aletler, Kendin Yap ve Dış Mekanlar', 'Aletler, Kendin Yap ve Dış Mekanlar Ürünler Çevrimiçi Alışveriş', 'Satın almak Aletler, Kendin Yap ve Dış Mekanlar bugünün en iyi satış fiyatlarıyla!', 'tr', 99585142),
(186, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'उपकरण, DIY और आउटडोर', 'उपकरण, DIY और आउटडोर उत्पाद ऑनलाइन शॉपिंग', 'खरीदना उपकरण, DIY और आउटडोर सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585142),
(187, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أدوات ، اصنعها بنفسك وخارجها', 'أدوات ، اصنعها بنفسك وخارجها المنتجات للتسوق عبر الإنترنت', 'يشتري أدوات ، اصنعها بنفسك وخارجها بأفضل أسعار البيع اليوم!', 'ar', 99585142),
(188, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Outils, bricolage et plein air', 'Outils, bricolage et plein air Produits Achats en ligne', 'Acheter Outils, bricolage et plein air aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585142),
(189, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Mutfak ve Yemek', 'Mutfak ve Yemek Ürünler Çevrimiçi Alışveriş', 'Satın almak Mutfak ve Yemek bugünün en iyi satış fiyatlarıyla!', 'tr', 99585143),
(190, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'रसोई और भोजन', 'रसोई और भोजन उत्पाद ऑनलाइन शॉपिंग', 'खरीदना रसोई और भोजन सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585143),
(191, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'المطبخ والطعام', 'المطبخ والطعام المنتجات للتسوق عبر الإنترنت', 'يشتري المطبخ والطعام بأفضل أسعار البيع اليوم!', 'ar', 99585143),
(192, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Cuisine et salle à manger', 'Cuisine et salle à manger Produits Achats en ligne', 'Acheter Cuisine et salle à manger aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585143),
(193, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Et ve Deniz Ürünleri', 'Et ve Deniz Ürünleri Ürünler Çevrimiçi Alışveriş', 'Satın almak Et ve Deniz Ürünleri bugünün en iyi satış fiyatlarıyla!', 'tr', 99585145),
(194, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'मांस और समुद्री भोजन', 'मांस और समुद्री भोजन उत्पाद ऑनलाइन शॉपिंग', 'खरीदना मांस और समुद्री भोजन सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585145),
(195, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'اللحوم والمأكولات البحرية', 'اللحوم والمأكولات البحرية المنتجات للتسوق عبر الإنترنت', 'يشتري اللحوم والمأكولات البحرية بأفضل أسعار البيع اليوم!', 'ar', 99585145),
(196, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Viande & Fruits de mer', 'Viande & Fruits de mer Produits Achats en ligne', 'Acheter Viande & Fruits de mer aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585145),
(197, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Televizyon aksesuarları', 'Televizyon aksesuarları Ürünler Çevrimiçi Alışveriş', 'Satın almak Televizyon aksesuarları bugünün en iyi satış fiyatlarıyla!', 'tr', 99585148),
(198, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'टीवी सहायक उपकरण', 'टीवी सहायक उपकरण उत्पाद ऑनलाइन शॉपिंग', 'खरीदना टीवी सहायक उपकरण सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585148),
(199, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ملحقات التلفزيون', 'ملحقات التلفزيون المنتجات للتسوق عبر الإنترنت', 'يشتري ملحقات التلفزيون بأفضل أسعار البيع اليوم!', 'ar', 99585148),
(200, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Accessoires pour téléviseurs', 'Accessoires pour téléviseurs Produits Achats en ligne', 'Acheter Accessoires pour téléviseurs aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585148),
(201, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Küçük Mutfak Aletleri', 'Küçük Mutfak Aletleri Ürünler Çevrimiçi Alışveriş', 'Satın almak Küçük Mutfak Aletleri bugünün en iyi satış fiyatlarıyla!', 'tr', 99585149),
(202, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'छोटे रसोई के उपकरण', 'छोटे रसोई के उपकरण उत्पाद ऑनलाइन शॉपिंग', 'खरीदना छोटे रसोई के उपकरण सबसे अच्छी बिक्री कीमतों पर आज!', 'hi', 99585149),
(203, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'أجهزة مطبخ صغيرة', 'أجهزة مطبخ صغيرة المنتجات للتسوق عبر الإنترنت', 'يشتري أجهزة مطبخ صغيرة بأفضل أسعار البيع اليوم!', 'ar', 99585149),
(204, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Petits appareils de cuisine', 'Petits appareils de cuisine Produits Achats en ligne', 'Acheter Petits appareils de cuisine aux meilleurs prix de vente aujourd\'hui!', 'fr', 99585149);

-- --------------------------------------------------------

--
-- Table structure for table `collection_with_products`
--

CREATE TABLE `collection_with_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `collection_with_products`
--

INSERT INTO `collection_with_products` (`id`, `created_at`, `updated_at`, `product_collection_id`, `product_id`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630111),
(2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630112),
(3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630113),
(4, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630114),
(5, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630115),
(6, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630116),
(7, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630117),
(8, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630119),
(9, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630120),
(10, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630121),
(11, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630122),
(12, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630123),
(13, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630124),
(14, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630125),
(15, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630126),
(16, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630127),
(17, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630128),
(18, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630129),
(19, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630130),
(20, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630131),
(21, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630132),
(22, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630133),
(23, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630134),
(24, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 88630135),
(25, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 2, 88630136),
(26, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 3, 88630137);

-- --------------------------------------------------------

--
-- Table structure for table `compare_lists`
--

CREATE TABLE `compare_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `viewed` int(11) NOT NULL DEFAULT 2,
  `replied` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_scripts`
--

CREATE TABLE `custom_scripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `route_pattern` varchar(255) DEFAULT NULL,
  `header_script` tinyint(1) DEFAULT 0,
  `header_script_code` text DEFAULT NULL,
  `body_script` tinyint(1) DEFAULT 0,
  `body_script_code` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `custom_scripts`
--

INSERT INTO `custom_scripts` (`id`, `route_pattern`, `header_script`, `header_script_code`, `body_script`, `body_script_code`, `status`, `created_at`, `updated_at`) VALUES
(1, '/*', 1, 'console.log(\'Calling from common header\')', 0, NULL, 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(2, '/*/product/*', 0, NULL, 1, 'console.log(\'Calling from product body\')', 1, '2024-05-02 00:43:34', '2024-05-02 00:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `feature_wysiwyg_images`
--

CREATE TABLE `feature_wysiwyg_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `site_feature_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `title`, `status`, `start_time`, `end_time`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'New Year Sale', 1, '2022-01-31 20:32:00', '2024-03-20 20:32:00', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_langs`
--

CREATE TABLE `flash_sale_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_sale_langs`
--

INSERT INTO `flash_sale_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `flash_sale_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Yeni Yıl İndirimi', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'تخفيضات العام الجديد', 'ar', 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Vente du Nouvel An', 'fr', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'नए साल की बिक्री', 'hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `flash_sale_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `product_id`, `flash_sale_id`, `price`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 88630111, 1, 76.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 88630112, 1, 77.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 88630113, 1, 78.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 88630114, 1, 79.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 88630115, 1, 80.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 88630116, 1, 81.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 88630117, 1, 82.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(8, 88630118, 1, 83.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(9, 88630119, 1, 84.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(10, 88630120, 1, 85.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(11, 88630121, 1, 86.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(12, 88630122, 1, 87.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(13, 88630123, 1, 88.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(14, 88630124, 1, 89.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(15, 88630125, 1, 90.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(16, 88630126, 1, 91.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(17, 88630127, 1, 92.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(18, 88630128, 1, 93.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footer_image_links`
--

CREATE TABLE `footer_image_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footer_image_links`
--

INSERT INTO `footer_image_links` (`id`, `title`, `image`, `link`, `type`, `status`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Paypal', 'paypal.png', 'https://www.paypal.com', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 'MasterCard', 'master-card.png', 'https://mastercard.com', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 'VisaCard', 'visa-card.png', 'https://visa.com', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 'AmericanExpress', 'american-express.png', 'https://americanexpress.com', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 'Discover', 'discover.png', 'https://discover.com', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 'Instagram', 'instagram.png', 'https://instagram.com', 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 'Facebook', 'facebook.png', 'https://facebook.com', 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(8, 'Twitter', 'twitter.png', 'https://twitter.com', 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(9, 'Linkedin', 'linkedin.png', 'https://linkedin.com', 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `page_id`, `type`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 2, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 3, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 4, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 5, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 6, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 7, 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guest_users`
--

CREATE TABLE `guest_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `default_address` int(11) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_links`
--

CREATE TABLE `header_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `header_links`
--

INSERT INTO `header_links` (`id`, `type`, `title`, `url`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 1, 'DISCOVER PRODUCTS', '/discover/products', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(2, 1, 'CATEGORIES', '/categories', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(3, 1, 'BRANDS', '/brands', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(4, 1, 'HOT DEALS', '/flash-sale', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(5, 2, 'TRACK ORDER', '/track-order', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(6, 2, 'FAQ', '/page/faq', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(7, 2, 'HELP', '/page/help', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1),
(8, 2, 'CONTACT US', '/page/contact', '2024-05-02 00:43:34', '2024-05-02 00:43:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `header_link_langs`
--

CREATE TABLE `header_link_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `header_link_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `header_link_langs`
--

INSERT INTO `header_link_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `header_link_id`) VALUES
(1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Ürünleri Keşfet', 'tr', 1),
(2, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Kategoriler', 'tr', 2),
(3, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Markalar', 'tr', 3),
(4, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Sıcak Fırsatlar', 'tr', 4),
(5, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Siparişi Takip Et', 'tr', 5),
(6, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'SSS', 'tr', 6),
(7, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Yardım', 'tr', 7),
(8, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Bize ulaşın', 'tr', 8),
(9, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'उत्पादों की खोज करें', 'hi', 1),
(10, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'श्रेणियाँ', 'hi', 2),
(11, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ब्रांड्स', 'hi', 3),
(12, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'हॉट डील', 'hi', 4),
(13, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'ट्रैक ऑर्डर', 'hi', 5),
(14, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'अक्सर पूछे जाने वाले प्रश्न', 'hi', 6),
(15, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'सहायता', 'hi', 7),
(16, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'हमसे संपर्क करें', 'hi', 8),
(17, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Découvrir les produits', 'fr', 1),
(18, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Catégories', 'fr', 2),
(19, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Marques', 'fr', 3),
(20, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Offres exceptionnelles', 'fr', 4),
(21, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Suivre la commande', 'fr', 5),
(22, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'FAQ', 'fr', 6),
(23, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Aide', 'fr', 7),
(24, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'Contactez-nous', 'fr', 8),
(25, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'اكتشف المنتجات', 'ar', 1),
(26, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'الفئات', 'ar', 2),
(27, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'العلامات التجارية', 'ar', 3),
(28, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'عروض ساخنة', 'ar', 4),
(29, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'تتبع الطلب', 'ar', 5),
(30, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'التعليمات', 'ar', 6),
(31, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'مساعدة', 'ar', 7),
(32, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'اتصل بنا', 'ar', 8);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default-image.webp',
  `type` int(11) NOT NULL,
  `source_type` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `image`, `type`, `source_type`, `tags`, `url`, `title`, `created_at`, `updated_at`, `admin_id`, `status`, `slug`) VALUES
(1, 'slider-1.webp', 1, 1, NULL, NULL, 'Winter sale', '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 1, 'winter-sale'),
(2, 'slider-2.webp', 1, 1, NULL, NULL, 'Flash 50 % off', '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 1, 'flash-50-off'),
(3, 'slider-3.webp', 1, 1, NULL, NULL, 'Black Friday Discount', '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 1, 'black-friday-discount'),
(4, 'slider-4.webp', 2, 1, NULL, NULL, 'Backpack for Men', '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 1, 'backpack-for-men'),
(5, 'slider-5.webp', 3, 4, NULL, NULL, 'Puma Stylist Shoes', '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 1, 'puma-stylist-shoes');

-- --------------------------------------------------------

--
-- Table structure for table `home_slider_langs`
--

CREATE TABLE `home_slider_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `home_slider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider_langs`
--

INSERT INTO `home_slider_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `home_slider_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Kış indirimi', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Flaş %50 indirimli', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Kara Cuma İndirimi', 'tr', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Erkekler için sırt çantası', 'tr', 4),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Puma Stilist Ayakkabı', 'tr', 5),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'تنزيلات الشتاء', 'ar', 1),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'فلاش 50٪ خصم', 'ar', 2),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'خصم الجمعة السوداء', 'ar', 3),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'حقيبة ظهر للرجال', 'ar', 4),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'أحذية المصمم بوما', 'ar', 5),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Soldes d\'hiver', 'fr', 1),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Flash 50% de réduction', 'fr', 2),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Remise Black Friday', 'fr', 3),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Sac à dos pour hommes', 'fr', 4),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Puma Styliste Chaussures', 'fr', 5),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सर्दी की सेल', 'hi', 1),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'फ्लैश 50% बंद', 'hi', 2),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ब्लैक फ्राइडे डिस्काउंट', 'hi', 3),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'पुरुषों के लिए बैकपैक', 'hi', 4),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'प्यूमा स्टाइलिस्ट जूते', 'hi', 5);

-- --------------------------------------------------------

--
-- Table structure for table `home_slider_source_brands`
--

CREATE TABLE `home_slider_source_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `home_slider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider_source_brands`
--

INSERT INTO `home_slider_source_brands` (`id`, `created_at`, `updated_at`, `brand_id`, `home_slider_id`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442200, 5),
(2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442201, 5),
(3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442202, 5),
(4, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 9442203, 5);

-- --------------------------------------------------------

--
-- Table structure for table `home_slider_source_categories`
--

CREATE TABLE `home_slider_source_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `home_slider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `home_slider_source_categories`
--

INSERT INTO `home_slider_source_categories` (`id`, `created_at`, `updated_at`, `category_id`, `home_slider_id`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 63082111, 1),
(2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 63082112, 1),
(3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 72531153, 1),
(4, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 61952111, 2),
(5, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 72531153, 2),
(6, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 63082111, 3),
(7, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 61952111, 3),
(8, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 97373117, 4),
(9, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 73294112, 4),
(10, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 96765129, 4),
(11, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 96765126, 4);

-- --------------------------------------------------------

--
-- Table structure for table `home_slider_source_products`
--

CREATE TABLE `home_slider_source_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `home_slider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_slider_source_sub_categories`
--

CREATE TABLE `home_slider_source_sub_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL,
  `home_slider_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory_attributes`
--

CREATE TABLE `inventory_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inventory_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_value_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `inventory_attributes`
--

INSERT INTO `inventory_attributes` (`id`, `created_at`, `updated_at`, `inventory_id`, `attribute_value_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 1, 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 2, 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 3, 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 4, 1),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 5, 1),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 6, 1),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 7, 1),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 8, 1),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 9, 1),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 10, 1),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 11, 1),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 12, 1),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 13, 1),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 14, 1),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 15, 1),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 16, 1),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 17, 1),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 18, 1),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 19, 1),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 20, 1),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 21, 1),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 22, 1),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 23, 1),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 24, 1),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 25, 1),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 26, 1),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 27, 1),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 28, 1),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 29, 1),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 30, 1),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 31, 1),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 32, 1),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 33, 1),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 34, 1),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 35, 1),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 36, 1),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 37, 1),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 38, 1),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 39, 1),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 40, 1),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 41, 1),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 42, 1),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 43, 1),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 44, 1),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 45, 1),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 46, 1),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 47, 1),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 48, 1),
(49, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 49, 1),
(50, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 50, 1),
(51, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 51, 1),
(52, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 52, 1),
(53, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `direction` varchar(255) NOT NULL DEFAULT 'ltr',
  `predefined` tinyint(1) NOT NULL DEFAULT 0,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 2,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `created_at`, `updated_at`, `name`, `code`, `direction`, `predefined`, `default`, `status`, `admin_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'English', 'en', 'ltr', 1, 1, 1, 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Turkish', 'tr', 'ltr', 1, 0, 1, 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Hindi', 'hi', 'ltr', 1, 0, 1, 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Arabic', 'ar', 'rtl', 1, 0, 1, 1),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'French', 'fr', 'ltr', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `licences`
--

CREATE TABLE `licences` (
  `id` int(10) UNSIGNED NOT NULL,
  `public_key` text NOT NULL,
  `encrypt_key` text NOT NULL,
  `encrypt_iv` text NOT NULL,
  `secret_key` text NOT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_12_09_153706_create_admins_table', 1),
(3, '2020_12_14_151827_create_categories_table', 1),
(4, '2020_12_26_103135_create_sub_categories_table', 1),
(5, '2020_12_26_103507_create_brands_table', 1),
(6, '2020_12_26_162246_create_tax_rules_table', 1),
(7, '2020_12_26_162521_create_shipping_rules_table', 1),
(8, '2020_12_27_051936_create_products_table', 1),
(9, '2021_01_03_132641_create_attributes_table', 1),
(10, '2021_01_03_132859_create_attribute_values_table', 1),
(11, '2021_01_09_170701_create_product_images_table', 1),
(12, '2021_01_12_170005_create_settings_table', 1),
(13, '2021_01_14_095942_create_pages_table', 1),
(14, '2021_01_16_063513_create_footer_links_table', 1),
(15, '2021_01_21_165023_create_footer_image_links_table', 1),
(16, '2021_01_23_185412_create_home_sliders_table', 1),
(17, '2021_01_24_163436_create_flash_sales_table', 1),
(18, '2021_01_24_165204_create_flash_sale_products_table', 1),
(19, '2021_02_02_173338_create_tags_table', 1),
(20, '2021_02_12_174258_create_wysiwyg_images_table', 1),
(21, '2021_03_21_055834_create_product_collections_table', 1),
(22, '2021_04_13_164248_create_bundle_deals_table', 1),
(23, '2021_04_13_164443_create_vouchers_table', 1),
(24, '2021_04_19_162124_create_shipping_places_table', 1),
(25, '2021_06_17_080829_create_user_addresses_table', 1),
(26, '2021_06_22_152058_create_orders_table', 1),
(27, '2021_07_23_172027_create_rating_reviews_table', 1),
(28, '2021_07_24_100829_create_review_images_table', 1),
(29, '2021_08_09_170430_create_user_wishlists_table', 1),
(30, '2021_08_25_183052_create_payments_table', 1),
(31, '2021_08_29_065059_create_cancellations_table', 1),
(32, '2021_10_08_192514_create_contact_us_table', 1),
(33, '2022_06_03_173156_create_collection_with_products_table', 1),
(34, '2022_06_12_191338_create_page_wysiwyg_images_table', 1),
(35, '2022_06_15_151535_create_home_slider_source_brands_table', 1),
(36, '2022_06_15_151642_create_home_slider_source_categories_table', 1),
(37, '2022_06_15_151646_create_home_slider_source_subcategories_table', 1),
(38, '2022_07_03_171642_create_updated_inventories_table', 1),
(39, '2022_07_03_171754_create_inventory_attributes_table', 1),
(40, '2022_07_03_171806_create_ordered_products_table', 1),
(41, '2022_07_20_190549_create_permission_tables', 1),
(42, '2022_07_27_153416_create_withdrawal_accounts_table', 1),
(43, '2022_07_27_153529_create_withdrawals_table', 1),
(44, '2022_07_27_153534_create_carts_table', 1),
(45, '2022_10_09_053511_create_banners_table', 1),
(46, '2022_10_09_054602_create_banner_source_brands_table', 1),
(47, '2022_10_09_054606_create_banner_source_categories_table', 1),
(48, '2022_10_09_054609_create_banner_source_sub_categories_table', 1),
(49, '2022_10_11_161500_create_banner_source_products_table', 1),
(50, '2022_10_11_173154_create_home_slider_source_products_table', 1),
(51, '2022_10_18_160602_create_subscription_emails_table', 1),
(52, '2022_10_21_152129_create_subscription_email_formats_table', 1),
(53, '2022_10_24_181244_create_compare_lists_table', 1),
(54, '2023_04_07_190449_update_order_table', 1),
(55, '2023_04_07_191537_add_currency_position_table', 1),
(56, '2023_04_08_092738_create_site_setting_table', 1),
(57, '2023_04_09_091220_create_stores_table', 1),
(58, '2023_04_09_105642_create_user_follow_stores_table', 1),
(59, '2023_04_13_145736_delete_column_payments_table', 1),
(60, '2023_04_13_145746_add_column_payments_table', 1),
(61, '2023_04_15_202121_add_style_site_setting_table', 1),
(62, '2023_04_16_132948_add_flatterwave_payment_table', 1),
(63, '2023_04_29_152123_create_language_table', 1),
(64, '2023_05_01_124706_create_product_lang_table', 1),
(65, '2023_05_06_092035_create_category_lang_table', 1),
(66, '2023_05_06_160007_create_sub_category_lang_table', 1),
(67, '2023_05_06_191007_create_brand_lang_table', 1),
(68, '2023_05_07_084214_create_attribute_lang_table', 1),
(69, '2023_05_07_084354_create_attribute_value_lang_table', 1),
(70, '2023_05_07_140255_create_tax_rule_lang_table', 1),
(71, '2023_05_07_152152_update_tax_rule_title_table', 1),
(72, '2023_05_07_154633_update_shipping_rule_title_table', 1),
(73, '2023_05_07_154738_create_shipping_rule_lang_table', 1),
(74, '2023_05_07_161426_create_product_collection_lang_table', 1),
(75, '2023_05_07_171709_update_bundle_deal_title_table', 1),
(76, '2023_05_07_171825_create_bundle_deal_lang_table', 1),
(77, '2023_05_07_173711_update_voucher_title_table', 1),
(78, '2023_05_07_173724_create_voucher_lang_table', 1),
(79, '2023_05_08_154300_update_flash_sale_title_table', 1),
(80, '2023_05_08_154622_create_flash_sale_lang_table', 1),
(81, '2023_05_08_174525_create_page_lang_table', 1),
(82, '2023_05_08_182007_create_home_slider_lang_table', 1),
(83, '2023_05_08_185102_update_banner_title_table', 1),
(84, '2023_05_08_185138_create_banner_lang_table', 1),
(85, '2023_05_08_191327_create_site_setting_lang_table', 1),
(86, '2023_05_10_175324_create_store_lang_table', 1),
(87, '2023_05_22_184056_add_slug_brands_table', 1),
(88, '2023_05_22_184254_add_slug_product_collections_table', 1),
(89, '2023_05_22_184342_add_slug_banners_table', 1),
(90, '2023_05_22_184405_add_slug_home_sliders_table', 1),
(91, '2023_05_25_163220_update_settings_table', 1),
(92, '2023_05_27_054506_add_slug_products_table', 1),
(93, '2023_06_05_155050_add_iyzico_payment_table', 1),
(94, '2023_06_12_183421_update_charts_table', 1),
(95, '2023_06_13_183019_update_user_addresses_table', 1),
(96, '2023_06_13_193721_update_orders_table', 1),
(97, '2023_06_15_183244_create_guest_users_table', 1),
(98, '2023_06_17_075152_update_cancellation_table', 1),
(99, '2023_06_17_095748_update_user_addresses_relation_table', 1),
(100, '2023_06_18_093240_update_rating_reviews_table', 1),
(101, '2023_06_20_182500_create_header_links_table', 1),
(102, '2023_06_20_191049_create_header_link_lang_table', 1),
(103, '2023_06_25_044157_update_product_price_table', 1),
(104, '2023_06_25_044353_update_flash_product_price_table', 1),
(105, '2023_06_25_044431_update_updated_inventories_price_table', 1),
(106, '2023_06_25_044519_update_vouchers_price_table', 1),
(107, '2023_06_28_111637_create_licences_table', 1),
(108, '2023_07_01_140327_update_guest_users_table', 1),
(109, '2023_07_11_164327_update_settings_decimal_format_table', 1),
(110, '2023_07_14_192135_update_settings_social_login_table', 1),
(111, '2023_07_22_064937_update_categories_table', 1),
(112, '2023_07_26_172841_create_product_categories_table', 1),
(113, '2023_09_02_192055_delete_column_products_table', 1),
(114, '2023_09_14_180803_update_setting_miscellaneous_table', 1),
(115, '2023_09_17_075633_update_orders_viewed_table', 1),
(116, '2023_09_17_082453_update_users_viewed_table', 1),
(117, '2023_09_19_080640_update_productt_category_table', 1),
(118, '2023_09_19_180615_update_guest_users_viewed_table', 1),
(119, '2023_09_24_150041_update_setting_analytics_table', 1),
(120, '2023_10_01_183221_update_setting_seller_registration_table', 1),
(121, '2023_10_05_193248_update_admin_table', 1),
(122, '2023_10_11_185412_update_inventory_sku_table', 1),
(123, '2023_10_15_134547_add_bank_payment_table', 1),
(124, '2023_10_16_191903_add_order_trans_id_table', 1),
(125, '2023_10_25_155058_update_setting_table', 1),
(126, '2023_10_27_185111_create_site_features_table', 1),
(127, '2023_10_27_191601_create_site_feature_langs_table', 1),
(128, '2023_10_28_100000_create_feature_wysiwyg_image_table', 1),
(129, '2023_10_28_190706_update_stores_table', 1),
(130, '2023_10_29_180206_update_shipping_rules_table', 1),
(131, '2023_11_02_154934_update_ordered_products_table', 1),
(132, '2023_11_04_163451_update_shipping_places_table', 1),
(133, '2023_11_06_193511_create_custom_script_table', 1),
(134, '2023_11_07_180123_update_orders_total_order_table', 1),
(135, '2023_11_11_161209_update_setting_pixel_table', 1),
(136, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(137, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(138, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(139, '2016_06_01_000004_create_oauth_clients_table', 2),
(140, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\Admin', 1),
(2, 'App\\Models\\Admin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('669a200335aadd235a101759a2311e23b00db8ab5e1f61a1873bb407d448b71e9ab6843ad5017554', 1, 1, 'admin', '[\"admin\"]', 0, '2024-05-02 00:49:32', '2024-05-02 00:49:32', '2024-05-02 13:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ISHOP Personal Access Client', 'c9BEyH5TEWrXzKIFhFHAk1LIcHpfWO6nNoJO7FmG', NULL, 'http://localhost', 1, 0, 0, '2024-05-02 00:43:36', '2024-05-02 00:43:36'),
(2, NULL, 'ISHOP Password Grant Client', 'QvEoQXARTARBOj0hlpljM2sdsTjv8jn2sFBNpess', 'users', 'http://localhost', 0, 1, 0, '2024-05-02 00:43:36', '2024-05-02 00:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-05-02 00:43:36', '2024-05-02 00:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

CREATE TABLE `ordered_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `inventory_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping_place_id` int(10) UNSIGNED NOT NULL,
  `shipping_type` int(11) NOT NULL,
  `purchased` decimal(10,2) NOT NULL DEFAULT 0.00,
  `selling` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commission` decimal(10,2) DEFAULT 0.00,
  `commission_amount` decimal(10,2) DEFAULT 0.00,
  `shipping_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `bundle_offer` int(11) DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `order_method` int(11) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `payment_done` tinyint(1) NOT NULL DEFAULT 0,
  `cancelled` tinyint(1) NOT NULL DEFAULT 0,
  `payment_token` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_address_id` bigint(20) UNSIGNED NOT NULL,
  `voucher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order` varchar(255) DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `trans_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `status`, `total_amount`, `order_method`, `currency`, `payment_done`, `cancelled`, `payment_token`, `created_at`, `updated_at`, `user_id`, `user_address_id`, `voucher_id`, `order`, `user_token`, `viewed`, `trans_id`) VALUES
(1, 1, 232.60, 2, 'USD', 0, 0, NULL, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 1, 1, NULL, '20240205SotUg1', NULL, 0, NULL),
(2, 1, 111.30, 2, 'USD', 0, 0, NULL, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 1, 1, NULL, '20240205DY8iz1', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `page_from_component` int(11) NOT NULL DEFAULT 2,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `slug`, `title`, `description`, `meta_title`, `meta_description`, `page_from_component`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'about', 'About', '<h1 style=\"margin: 30px 0;\">About us</h1>\r\n<h2 style=\"margin: 30px 0;\">Definitions</h2>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service orparts of our Service.</p>\r\n<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;,&quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to ishop.cholobangla.com, Canada.<</p>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n<p><strong>Country</strong> refers to: New Brunswick, Canada</p>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified oridentifiable individual.</p>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by theCompany to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how theService is used.</p>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by theuse of the Service or from the Service infrastructure itself (for example, the duration of apage visit).</p>\r\n<p><strong>Website</strong> refers to https://www.ishop.cholobangla.com/, accessible from <a href=\"ishop.com\" rel=\"external nofollow noopener\" target=\"_blank\">ishop.cholobangla.com</a></p>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, orother legal entity on behalf of which such individual is accessing or using the Service, asapplicable.</p>\r\n', 'Ishop - About', 'About', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 'faq', 'Faq', '<h1 style=\"margin: 30px 0;\">Frequently asked questions</h1>\r\n<h2 style=\"margin: 30px 0;\">Overview?</h2>\r\n<p>ishop is a multi vendor ecommerce CMS.API is build with <b>laravel</b>, admin panel and the front end is build with<strong>nuxt js</strong>.For storing data <b>mysql</b> is being used. The performance of the site is super fast because of advance <b>caching</b> system. It is fully responsive and highly customizable. In the regular licence admin panel build files will not be found, that\'s mean you won\'t be able to customize any design of the admin panel. Frontend and API source code will be found in the package folder. You can customize the frontend and API as your requirements very easily. Admin panel source code will be found in the extended licence. For any query, please contact our team for support at <a href=\"mailto:iyozedcontact@gmail.com\" class=\"link\"><b>iyozedcontact@gmail.com</b></a></p>\r\n<h2 style=\"margin: 30px 0;\">Do we provide installation support to the users?</h2>\r\n<p>Yes, we provide installation support to the users. Feel free to email us anytime.</p>\r\n<h2 style=\"margin: 30px 0;\">Do we provide installation guide to the users?</h2>\r\n<p>Yes, we provide installation guide to the users with the packages.</p>\r\n<h2 style=\"margin: 30px 0;\">How much time do we take to get back to the user?</h2>\r\n<p>We reply to the users as soon as possible.</p>\r\n\r\n', 'Ishop - Faq', 'Faq', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 'contact', 'Contact', 'Contact', 'Ishop - Contact', 'Contact', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 'refund-policy', 'Refund Policy', '<h1 style=\"margin: 30px 0;\">Refund Policy</h1>\r\n<h2 style=\"margin: 30px 0;\">Definitions</h2>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;,&quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to ishop.cholobangla.com, Canada.</p>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n<p><strong>Country</strong> refers to: New Brunswick, Canada</p>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n<p><strong>Website</strong> refers to https://ishop.cholobangla.com/, accessible from <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\">ishop.cholobangla.com</a></p>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n<h1 style=\"margin: 30px 0;\">Collecting and Using Your Personal Data</h1>\r\n<h2 style=\"margin: 30px 0;\">Types of Data Collected</h2>\r\n<h3 style=\"margin: 30px 0;\">Personal Data</h3>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul style=\"margin: 30px 0;\"><li>Email address</li><li>First name and last name</li><li>Address, State, Province, ZIP/Postal code, City</li><li>Usage Data</li></ul>\r\n<h3 style=\"margin: 30px 0;\">Usage Data</h3>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h3 style=\"margin: 30px 0;\">Tracking Technologies and Cookies</h3>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<ul style=\"margin: 30px 0;\"><li><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</li><li><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those pages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</li></ul>\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the <a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a> article.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h2 style=\"margin: 30px 0;\">Use of Your Personal Data</h2>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n', 'Ishop - Refund Policy', 'Refund Policy', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 'privacy-policy', 'Privacy Policy', '<h1 style=\"margin: 30px 0;\">Privacy Policy</h1>\r\n<p>Last updated: December 13, 2022</p>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\">Free Privacy Policy Generator</a>.</p>\r\n<h1 style=\"margin: 30px 0;\">Interpretation and Definitions</h1>\r\n<h2 style=\"margin: 30px 0;\">Interpretation</h2>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h2 style=\"margin: 30px 0;\">Definitions</h2>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<strong>Account</strong> means a unique account created for You to access our Service or parts of our Service.</p>\r\n<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;,&quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to ishop.cholobangla.com, Canada.</p>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n<p><strong>Country</strong> refers to: New Brunswick, Canada</p>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, a cellphone or a digital tablet.</p>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified or identifiable individual.</p>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by the use of the Service or from the Service infrastructure itself (for example, the duration of a page visit).</p>\r\n<p><strong>Website</strong> refers to https://ishop.cholobangla.com/, accessible from <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\">ishop.cholobangla.com</a></p>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other legal entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n<h1 style=\"margin: 30px 0;\">Collecting and Using Your Personal Data</h1>\r\n<h2 style=\"margin: 30px 0;\">Types of Data Collected</h2>\r\n<h3 style=\"margin: 30px 0;\">Personal Data</h3>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul style=\"margin: 30px 0;\"><li>Email address</li><li>First name and last name</li><li>Address, State, Province, ZIP/Postal code, City</li><li>Usage Data</li></ul>\r\n<h3 style=\"margin: 30px 0;\">Usage Data</h3>\r\n<p>Usage Data is collected automatically when using the Service.</p>\r\n<p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that You visit, the time and date of Your visit, the time spent on those pages, unique device identifiers and other diagnostic data.</p>\r\n<p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h3 style=\"margin: 30px 0;\">Tracking Technologies and Cookies</h3>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<p><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies.</p>\r\n<p><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small electronic files knownas web beacons (also referred to as clear gifs, pixel tags, andsingle-pixel gifs) that permit the Company, for example, to count users who have visited thosepages or opened an email and for other related website statistics (for example, recording thepopularity of a certain section and verifying system and server integrity).</p>\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the <a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a> article.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users and prevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p>\r\n<p><strong>Functionality Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies allow us to remember choices You make when You use the Website, such as remembering your login details or language preference. The purpose of these Cookies is to provide You with a more personal experience and to avoid You having to re-enter your preferences every time You use the Website.</p>\r\n<p>For more information about the cookies we use and your choices regarding cookies, please visit our Cookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h2 style=\"margin: 30px 0;\">Use of Your Personal Data</h2>\r\n<p>The Company may use Personal Data for the following purposes:</p>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of our Service.</p>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities of the Service that are available to You as a registered user.</p>\r\n<p><strong>For the performance of a contract:</strong> the development, compliance and undertaking of the purchase contract for the products, items or services You have purchased or of any other contract with Us through the Service.</p>\r\n<p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or other equivalent forms of electronic communication, such as a mobile application\'s push notifications regarding updates or informative communications related to the functionalities, products or contracted services, including the security updates, when necessary or reasonable for their implementation.</p>\r\n<p><strong>To provide You</strong> with news, special offers and general information about other goods, services and events which we offer that are similar to those that you have already purchased or enquired about unless You have opted not to receive such information.</p>\r\n<p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p>\r\n<p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct a merger, divestiture, restructuring, reorganization, dissolution, or other sale or transfer of some or all of Our assets, whether as a going concern or as part of bankruptcy, liquidation, or similar proceeding, in which Personal Data held by Us about our Service users is among the assets transferred.</p>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such as data analysis, identifying usage trends, determining the effectiveness of our promotional campaigns and to evaluate and improve our Service, products, services, marketing and your experience.</p>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul style=\"margin: 30px 0;\"><li><strong>With Service Providers:</strong> We may share Your personal information with Service Providers to monitor and analyze the use of our Service, to contact You.</li><li><strong>For business transfers:</strong> We may share or transfer Your personal information in connection with, or during negotiations of, any merger, sale of Company assets, financing, or acquisition of all or a portion of Our business to another company.</li><li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in which case we will require those affiliates to honor this Privacy Policy. Affiliates include Our parent company and any other subsidiaries, joint venture partners or other companies that We control or that are under common control with Us.</li><li><strong>With business partners:</strong> We may share Your information with Our business partners to offer You certain products, services or promotions.</li><li><strong>With other users:</strong> when You share personal information or otherwise interact in the public areas with other users, such information may be viewed by all users and may be publicly distributed outside.</li><li><strong>With Your consent</strong>: We may disclose Your personal information for any other purpose with Your consent.</li></ul>\r\n<h2 style=\"margin: 30px 0;\">Retention of Your Personal Data</h2>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out in this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply with our legal obligations (for example, if we are required to retain your data to comply with applicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h2 style=\"margin: 30px 0;\">Transfer of Your Personal Data</h2>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in any other places where the parties involved in the processing are located. It means that this information may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h2 style=\"margin: 30px 0;\">Delete Your Personal Data</h2>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We have collected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within the Service.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if you have one, and visiting the account settings section that allows you to manage Your personal information. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h2 style=\"margin: 30px 0;\">Disclosure of Your Personal Data</h2>\r\n<h3 style=\"margin: 30px 0;\">Business Transactions</h3>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h3 style=\"margin: 30px 0;\">Law enforcement</h3>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h3 style=\"margin: 30px 0;\">Other legal requirements</h3>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul><li>Comply with a legal obligation</li><li>Protect and defend the rights or property of the Company</li><li>Prevent or investigate possible wrongdoing in connection with the Service</li><li>Protect the personal safety of Users of the Service or the public</li><li>Protect against legal liability</li></ul>\r\n<h2>Security of Your Personal Data</h2>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h1>Children\'s Privacy</h1>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and You are aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h1 style=\"margin: 30px 0;\">Links to Other Websites</h1>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a third party link, You will be directed to that third party\'s site. We strongly advise You to review the Privacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practices of any third party sites or services.</p>\r\n<h1 style=\"margin: 30px 0;\">Changes to this Privacy Policy</h1>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting the new Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becoming effective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.</p>\r\n<h1 style=\"margin: 30px 0;\">Contact Us</h1>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul style=\"margin: 30px 0;\"><li>By visiting this page on our website: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank\">https://ishop.cholobangla.com/</a></li></ul>', 'Ishop - Privacy Policy', 'Privacy Policy', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 'help', 'Help', '<h1 style=\"margin: 30px 0;\">Help</h1>\r\n<p>This Privacy Policy describes Our policies and procedures on the collection, use and disclosure of Your information when You use the Service and tells You about Your privacy rights and how the law protects You.</p>\r\n<p>We use Your Personal data to provide and improve the Service. By using the Service, You agree to the collection and use of information in accordance with this Privacy Policy. This Privacy Policy has been created with the help of the <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\">Free Privacy Policy Generator</a>.</p>\r\n<h1 style=\"margin: 30px 0;\">Interpretation and Definitions</h1>\r\n<h2 style=\"margin: 30px 0;\">Interpretation</h2>\r\n<p>The words of which the initial letter is capitalized have meanings defined under the following conditions. The following definitions shall have the same meaning regardless of whether they appear in singular or in plural.</p>\r\n<h2 style=\"margin: 30px 0;\">Definitions</h2>\r\n<p>For the purposes of this Privacy Policy:</p>\r\n<p><strong>Account</strong> means a unique account created for You to access our Service orparts of our Service.</p>\r\n<p><strong>Company</strong> (referred to as either &quot;the Company&quot;, &quot;We&quot;, &quot;Us&quot; or &quot;Our&quot; in this Agreement) refers to ishop.cholobangla.com, Canada.</p>\r\n<p><strong>Cookies</strong> are small files that are placed on Your computer, mobile device or any other device by a website, containing the details of Your browsing history on that website among its many uses.</p>\r\n<p><strong>Country</strong> refers to: New Brunswick, Canada</p>\r\n<p><strong>Device</strong> means any device that can access the Service such as a computer, acellphone or a digital tablet.</p>\r\n<p><strong>Personal Data</strong> is any information that relates to an identified oridentifiable individual.</p>\r\n<p><strong>Service</strong> refers to the Website.</p>\r\n<p><strong>Service Provider</strong> means any natural or legal person who processes the data on behalf of the Company. It refers to third-party companies or individuals employed by the Company to facilitate the Service, to provide the Service on behalf of the Company, to perform services related to the Service or to assist the Company in analyzing how the Service is used.</p>\r\n<p><strong>Usage Data</strong> refers to data collected automatically, either generated by theuse of the Service or from the Service infrastructure itself (for example, the duration of apage visit).</p>\r\n<p><strong>Website</strong> refers to https://ishop.cholobangla.com/, accessible from <a href=\"ishop.cholobangla\" rel=\"external nofollow noopener\" target=\"_blank\">ishop.cholobangla.com</a></p>\r\n<p><strong>You</strong> means the individual accessing or using the Service, or the company, or other leg entity on behalf of which such individual is accessing or using the Service, as applicable.</p>\r\n<h1 style=\"margin: 30px 0;\">Collecting and Using Your Personal Data</h1>\r\n<h2 style=\"margin: 30px 0;\">Types of Data Collected</h2>\r\n<h3 style=\"margin: 30px 0;\">Personal Data</h3>\r\n<p>While using Our Service, We may ask You to provide Us with certain personally identifiable information that can be used to contact or identify You. Personally identifiable information may include, but is not limited to:</p>\r\n<ul style=\"margin: 30px 0;\"><li>Email address</li><li>First name and last name</li><li>Address, State, Province, ZIP/Postal code, City</li><li>Usage Data</li></ul>\r\n<h3 style=\"margin: 30px 0;\">Usage Data</h3>\r\n<p>Usage Data is collected automatically when using the Service.</p><p>Usage Data may include information such as Your Device\'s Internet Protocol address (e.g. IP address),browser type, browser version, the pages of our Service that You visit, the time and date of Yourvisit, the time spent on those pages, unique device identifiers and other diagnostic data.</p><p>When You access the Service by or through a mobile device, We may collect certain information automatically, including, but not limited to, the type of mobile device You use, Your mobile device unique ID, the IP address of Your mobile device, Your mobile operating system, the type of mobile Internet browser You use, unique device identifiers and other diagnostic data.</p>\r\n<p>We may also collect information that Your browser sends whenever You visit our Service or when You access the Service by or through a mobile device.</p>\r\n<h3 style=\"margin: 30px 0;\">Tracking Technologies and Cookies</h3>\r\n<p>We use Cookies and similar tracking technologies to track the activity on Our Service and store certain information. Tracking technologies used are beacons, tags, and scripts to collect and track information and to improve and analyze Our Service. The technologies We use may include:</p>\r\n<p><strong>Cookies or Browser Cookies.</strong> A cookie is a small file placed on Your Device. You can instruct Your browser to refuse all Cookies or to indicate when a Cookie is being sent. However, if You do not accept Cookies, You may not be able to use some parts of our Service. Unless you have adjusted Your browser setting so that it will refuse Cookies, our Service may use Cookies. </p>\r\n<p><strong>Web Beacons.</strong> Certain sections of our Service and our emails may contain small\r\nelectronic files known as web beacons (also referred to as clear gifs, pixel tags, and single-pixel gifs) that permit the Company, for example, to count users who have visited those\r\npages or opened an email and for other related website statistics (for example, recording the popularity of a certain section and verifying system and server integrity).</p>\r\n<p>Cookies can be &quot;Persistent&quot; or &quot;Session&quot; Cookies. Persistent Cookies remain on Your personal computer or mobile device when You go offline, while Session Cookies are deleted as soon as You close Your web browser. Learn more about cookies on the <a href=\"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\">Free Privacy Policy website</a> article.</p>\r\n<p>We use both Session and Persistent Cookies for the purposes set out below:</p>\r\n<p><strong>Necessary / Essential Cookies</strong></p>\r\n<p>Type: Session Cookies</p>\r\n<p>Administered by: Us</p>\r\n<p>Purpose: These Cookies are essential to provide You with services available through the Website and to enable You to use some of its features. They help to authenticate users andprevent fraudulent use of user accounts. Without these Cookies, the services that You have asked for cannot be provided, and We only use these Cookies to provide You with those services.</p>\r\n<p><strong>Cookies Policy / Notice Acceptance Cookies</strong></p>\r\n<p>Type: Persistent Cookies</p><p>Administered by: Us</p><p>Purpose: These Cookies identify if users have accepted the use of cookies on the Website.</p><p><strong>Functionality Cookies</strong></p><p>Type: Persistent Cookies</p><p>Administered by: Us</p><p>Purpose: These Cookies allow us to remember choices You make when You use the Website, suchas remembering your login details or language preference. The purpose of these Cookies is toprovide You with a more personal experience and to avoid You having to re-enter yourpreferences every time You use the Website.</p><p>For more information about the cookies we use and your choices regarding cookies, please visit ourCookies Policy or the Cookies section of our Privacy Policy.</p>\r\n<h2 style=\"margin: 30px 0;\">Use of Your Personal Data</h2><p>The Company may use Personal Data for the following purposes:</p>\r\n<p><strong>To provide and maintain our Service</strong>, including to monitor the usage of ourService.</p>\r\n<p><strong>To manage Your Account:</strong> to manage Your registration as a user of the Service. The Personal Data You provide can give You access to different functionalities ofthe Service that are available to You as a registered user.</p><p><strong>For the performance of a contract:</strong> the development, compliance andundertaking of the purchase contract for the products, items or services You have purchasedor of any other contract with Us through the Service.</p><p><strong>To contact You:</strong> To contact You by email, telephone calls, SMS, or otherequivalent forms of electronic communication, such as a mobile application\'s pushnotifications regarding updates or informative communications related to thefunctionalities, products or contracted services, including the security updates, whennecessary or reasonable for their implementation.</p><p><strong>To provide You</strong> with news, special offers and general information about othergoods, services and events which we offer that are similar to those that you have alreadypurchased or enquired about unless You have opted not to receive such information.</p><p><strong>To manage Your requests:</strong> To attend and manage Your requests to Us.</p><p><strong>For business transfers:</strong> We may use Your information to evaluate or conduct amerger, divestiture, restructuring, reorganization, dissolution, or other sale or transferof some or all of Our assets, whether as a going concern or as part of bankruptcy,liquidation, or similar proceeding, in which Personal Data held by Us about our Serviceusers is among the assets transferred.</p>\r\n<p><strong>For other purposes</strong>: We may use Your information for other purposes, such asdata analysis, identifying usage trends, determining the effectiveness of our promotionalcampaigns and to evaluate and improve our Service, products, services, marketing and yourexperience.</p>\r\n<p>We may share Your personal information in the following situations:</p>\r\n<ul style=\"margin: 30px 0;\"><li><strong>With Service Providers:</strong> We may share Your personal information with ServiceProviders to monitor and analyze the use of our Service, to contact You.</li><li><strong>For business transfers:</strong> We may share or transfer Your personal information inconnection with, or during negotiations of, any merger, sale of Company assets, financing, oracquisition of all or a portion of Our business to another company.</li><li><strong>With Affiliates:</strong> We may share Your information with Our affiliates, in whichcase we will require those affiliates to honor this Privacy Policy. Affiliates include Ourparent company and any other subsidiaries, joint venture partners or other companies that Wecontrol or that are under common control with Us.</li><li><strong>With business partners:</strong> We may share Your information with Our businesspartners to offer You certain products, services or promotions.</li><li><strong>With other users:</strong> when You share personal information or otherwise interact inthe public areas with other users, such information may be viewed by all users and may bepublicly distributed outside.</li><li><strong>With Your consent</strong>: We may disclose Your personal information for any otherpurpose with Your consent.</li></ul>\r\n<h2 style=\"margin: 30px 0;\">Retention of Your Personal Data</h2>\r\n<p>The Company will retain Your Personal Data only for as long as is necessary for the purposes set out\r\nin this Privacy Policy. We will retain and use Your Personal Data to the extent necessary to comply\r\nwith our legal obligations (for example, if we are required to retain your data to comply with\r\napplicable laws), resolve disputes, and enforce our legal agreements and policies.</p>\r\n<p>The Company will also retain Usage Data for internal analysis purposes. Usage Data is generally retained for a shorter period of time, except when this data is used to strengthen the security or to improve the functionality of Our Service, or We are legally obligated to retain this data for longer time periods.</p>\r\n<h2 style=\"margin: 30px 0;\">Transfer of Your Personal Data</h2>\r\n<p>Your information, including Personal Data, is processed at the Company\'s operating offices and in anyother places where the parties involved in the processing are located. It means that this\r\ninformation may be transferred to — and maintained on — computers located outside of Your state, province, country or other governmental jurisdiction where the data protection laws may differ than those from Your jurisdiction.</p>\r\n<p>Your consent to this Privacy Policy followed by Your submission of such information represents Your agreement to that transfer.</p>\r\n<p>The Company will take all steps reasonably necessary to ensure that Your data is treated securely and in accordance with this Privacy Policy and no transfer of Your Personal Data will take place to an organization or a country unless there are adequate controls in place including the security of Your data and other personal information.</p>\r\n<h2 style=\"margin: 30px 0;\">Delete Your Personal Data</h2>\r\n<p>You have the right to delete or request that We assist in deleting the Personal Data that We havecollected about You.</p>\r\n<p>Our Service may give You the ability to delete certain information about You from within theService.</p>\r\n<p>You may update, amend, or delete Your information at any time by signing in to Your Account, if youhave one, and visiting the account settings section that allows you to manage Your personalinformation. You may also contact Us to request access to, correct, or delete any personal information that You have provided to Us.</p>\r\n<p>Please note, however, that We may need to retain certain information when we have a legal obligation or lawful basis to do so.</p>\r\n<h2 style=\"margin: 30px 0;\">Disclosure of Your Personal Data</h2>\r\n<h3 style=\"margin: 30px 0;\">Business Transactions</h3>\r\n<p>If the Company is involved in a merger, acquisition or asset sale, Your Personal Data may be transferred. We will provide notice before Your Personal Data is transferred and becomes subject to a different Privacy Policy.</p>\r\n<h3 style=\"margin: 30px 0;\">Law enforcement</h3>\r\n<p>Under certain circumstances, the Company may be required to disclose Your Personal Data if required to do so by law or in response to valid requests by public authorities (e.g. a court or a government agency).</p>\r\n<h3 style=\"margin: 30px 0;\">Other legal requirements</h3>\r\n<p>The Company may disclose Your Personal Data in the good faith belief that such action is necessary to:</p>\r\n<ul><li>Comply with a legal obligation</li><li>Protect and defend the rights or property of the Company</li><li>Prevent or investigate possible wrongdoing in connection with the Service</li><li>Protect the personal safety of Users of the Service or the public</li><li>Protect against legal liability</li></ul>\r\n<h2>Security of Your Personal Data</h2>\r\n<p>The security of Your Personal Data is important to Us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While We strive to use commercially acceptable means to protect Your Personal Data, We cannot guarantee its absolute security.</p>\r\n<h1>Children\'s Privacy</h1>\r\n<p>Our Service does not address anyone under the age of 13. We do not knowingly collect personally identifiable information from anyone under the age of 13. If You are a parent or guardian and Youare aware that Your child has provided Us with Personal Data, please contact Us. If We become aware that We have collected Personal Data from anyone under the age of 13 without verification of parental consent, We take steps to remove that information from Our servers.</p>\r\n<p>If We need to rely on consent as a legal basis for processing Your information and Your country requires consent from a parent, We may require Your parent\'s consent before We collect and use that information.</p>\r\n<h1 style=\"margin: 30px 0;\">Links to Other Websites</h1>\r\n<p>Our Service may contain links to other websites that are not operated by Us. If You click on a thirdparty link, You will be directed to that third party\'s site. We strongly advise You to review thePrivacy Policy of every site You visit.</p>\r\n<p>We have no control over and assume no responsibility for the content, privacy policies or practicesof any third party sites or services.</p>\r\n<h1 style=\"margin: 30px 0;\">Changes to this Privacy Policy</h1>\r\n<p>We may update Our Privacy Policy from time to time. We will notify You of any changes by posting thenew Privacy Policy on this page.</p>\r\n<p>We will let You know via email and/or a prominent notice on Our Service, prior to the change becomingeffective and update the &quot;Last updated&quot; date at the top of this Privacy Policy.</p>\r\n<p>You are advised to review this Privacy Policy periodically for any changes. Changes to this PrivacyPolicy are effective when they are posted on this page.</p>\r\n<h1 style=\"margin: 30px 0;\">Contact Us</h1>\r\n<p>If you have any questions about this Privacy Policy, You can contact us:</p>\r\n<ul style=\"margin: 30px 0;\"><li>By visiting this page on our website: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank\">https://ishop.cholobangla.com/</a></li></ul>\r\n<p>Generated using <a href=\"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\"target=\"_blank\">Free Privacy Policy Generator</a></p>\r\n', 'Ishop - Help', 'Help', 2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 'sitemap', 'Sitemap', 'Sitemap', 'Ishop - Sitemap', 'Sitemap', 1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_langs`
--

CREATE TABLE `page_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `lang` text NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_langs`
--

INSERT INTO `page_langs` (`id`, `created_at`, `updated_at`, `title`, `description`, `meta_title`, `meta_description`, `lang`, `page_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'عن', '<h1 style = \"margin: 30px 0؛\"> عنا </h1>\r\n<h2 style = \"margin: 30px 0؛\"> تعريفات </h2>\r\n<p> <strong> الحساب </strong> يعني حسابًا فريدًا تم إنشاؤه لك للوصول إلى خدمتنا أو أجزاء من خدمتنا. </p>\r\n<p> <strong> الشركة </strong> (يشار إليها باسم & quot؛ الشركة & \"، & quot؛ نحن & quot؛، & quot؛ لنا & quot؛ أو & quot؛ لدينا & quot؛ في هذه الاتفاقية) تشير إلى ishop.cholobangla.com ، كندا. <</p>\r\n<p> <strong> ملفات تعريف الارتباط </strong> هي ملفات صغيرة يتم وضعها على جهاز الكمبيوتر أو الجهاز المحمول أو أي جهاز آخر بواسطة موقع ويب ، وتحتوي على تفاصيل محفوظات الاستعراض على موقع الويب هذا من بين استخداماته العديدة. </p>\r\nتشير <p> <strong> الدولة </strong> إلى: نيو برونزويك ، كندا </p>\r\n<p> <strong> الجهاز </strong> يعني أي جهاز يمكنه الوصول إلى الخدمة مثل جهاز كمبيوتر أو هاتف محمول أو جهاز لوحي رقمي. </p>\r\n<p> <strong> البيانات الشخصية </strong> هي أي معلومات تتعلق بفرد محدد الهوية أو يمكن التعرف عليه. </p>\r\nتشير <p> <strong> الخدمة </strong> إلى موقع الويب. </p>\r\n<p> <strong> مقدم الخدمة </strong> يُقصد به أي شخص طبيعي أو اعتباري يقوم بمعالجة البيانات نيابة عن الشركة. يشير إلى شركات أو أفراد تابعين لجهات خارجية توظفهم الشركة لتسهيل الخدمة ، أو لتقديم الخدمة نيابة عن الشركة ، أو لأداء الخدمات المتعلقة بالخدمة أو لمساعدة الشركة في تحليل كيفية استخدام الخدمة. </p>\r\nتشير <p> <strong> بيانات الاستخدام </strong> إلى البيانات التي يتم جمعها تلقائيًا ، إما الناتجة عن استخدام الخدمة أو من البنية التحتية للخدمة نفسها (على سبيل المثال ، مدة زيارة الصفحة). </p>\r\nيشير <p> <strong> موقع الويب </strong> إلى https://www.ishop.cholobangla.com/ ، ويمكن الوصول إليه من <a href=\"ishop.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com </a> </p>\r\n<p> <strong> أنت </strong> تعني الفرد الذي يصل إلى الخدمة أو يستخدمها ، أو الشركة أو الكيان القانوني الآخر الذي يصل هذا الفرد إلى الخدمة أو يستخدمها نيابةً عنه ، حسب الاقتضاء. </p>\r\n', 'Ishop - عن', 'عن', 'ar', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'التعليمات', '<h1 style=\"margin: 30px 0\">  الأسئلة المتداولة </h1>\r\n<h2 style=\"margin: 30px 0\">  نظرة عامة؟ </h2>\r\n<p> ishop عبارة عن تجارة إلكترونية متعددة البائعين تم إنشاء CMS.API باستخدام <b> laravel </b> ، ولوحة الإدارة وتم إنشاء الواجهة الأمامية باستخدام <strong> nuxt js </strong> لتخزين البيانات <b> mysql </ b> قيد الاستخدام. أداء الموقع سريع للغاية بسبب نظام <b> التخزين المؤقت </ b> المتقدم. إنه سريع الاستجابة وقابل للتخصيص بدرجة كبيرة. لن يتم العثور على ملفات إنشاء لوحة إدارة الترخيص العادية ، وهذا يعني أنك لن تتمكن من تخصيص أي تصميم للوحة الإدارة. سيتم العثور على الكود المصدري للواجهة الأمامية وواجهة برمجة التطبيقات في مجلد الحزمة. يمكنك تخصيص الواجهة الأمامية وواجهة برمجة التطبيقات حسب متطلباتك بسهولة بالغة. سيتم العثور على رمز مصدر لوحة المشرف في الترخيص الموسع. لأي استفسار ، يرجى الاتصال بفريقنا للحصول على الدعم على <a href=\"mailto:iyozedcontact@gmail.com\" class=\"link\"> <b> iyozedcontact@gmail.com </b> </a> </p>\r\n<h2 style=\"margin: 30px 0\">  هل نقدم دعم التثبيت للمستخدمين؟ </h2>\r\n<p> نعم ، نحن نقدم دعم التثبيت للمستخدمين. لا تتردد في مراسلتنا عبر البريد الإلكتروني في أي وقت. </p>\r\n<h2 style=\"margin: 30px 0\">  هل نقدم دليل التثبيت للمستخدمين؟ </h2>\r\n<p> نعم ، نحن نقدم دليل التثبيت للمستخدمين مع الحزم. </p>\r\n<h2 style=\"margin: 30px 0\">  كم من الوقت نحتاج للعودة إلى المستخدم؟ </h2>\r\n<p> نقوم بالرد على المستخدمين في أقرب وقت ممكن. </p>\r\n', 'Ishop - التعليمات', 'التعليمات', 'ar', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'اتصال', 'Contact', 'Ishop - اتصال', 'اتصال', 'ar', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'سياسة الاسترجاع', '<h1 style=\"margin: 30px 0\">؛\"> سياسة رد الأموال </h1>\r\n<h2 style=\"margin: 30px 0\">؛\"> تعريفات </h2>\r\n<p> لأغراض سياسة الخصوصية هذه: </p>\r\n<p> <strong> الحساب </strong> يعني حسابًا فريدًا تم إنشاؤه لك للوصول إلى خدمتنا أو أجزاء من خدمتنا. </p>\r\n<p> <strong> الشركة </strong> (يشار إليها باسم & quot؛ الشركة & \"، & quot؛ نحن & quot؛، & quot؛ لنا & quot؛ أو & quot؛ لدينا & quot؛ في هذه الاتفاقية) تشير إلى ishop.cholobangla.com ، كندا. </p>\r\n<p> <strong> ملفات تعريف الارتباط </strong> هي ملفات صغيرة يتم وضعها على جهاز الكمبيوتر أو الجهاز المحمول أو أي جهاز آخر بواسطة موقع ويب ، وتحتوي على تفاصيل محفوظات الاستعراض على موقع الويب هذا من بين استخداماته العديدة. </p>\r\nتشير <p> <strong> الدولة </strong> إلى: نيو برونزويك ، كندا </p>\r\n<p> <strong> الجهاز </strong> يعني أي جهاز يمكنه الوصول إلى الخدمة مثل جهاز كمبيوتر أو هاتف محمول أو جهاز لوحي رقمي. </p>\r\n<p> <strong> البيانات الشخصية </strong> هي أي معلومات تتعلق بفرد محدد الهوية أو يمكن التعرف عليه. </p>\r\nتشير <p> <strong> الخدمة </strong> إلى موقع الويب. </p>\r\n<p> <strong> مقدم الخدمة </strong> يُقصد به أي شخص طبيعي أو اعتباري يقوم بمعالجة البيانات نيابة عن الشركة. يشير إلى شركات أو أفراد تابعين لجهات خارجية توظفهم الشركة لتسهيل الخدمة ، لتقديم الخدمة نيابة عن الشركة ، لأداء الخدمات المتعلقة بالخدمة أو لمساعدة الشركة في تحليل كيفية استخدام الخدمة. </ ص>\r\nتشير <p> <strong> بيانات الاستخدام </strong> إلى البيانات التي يتم جمعها تلقائيًا ، إما الناتجة عن استخدام الخدمة أو من البنية التحتية للخدمة نفسها (على سبيل المثال ، مدة زيارة الصفحة). </p>\r\nيشير <p> <strong> موقع الويب </strong> إلى https: //ishop.cholobangla.com/ ، ويمكن الوصول إليه من <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com </a> </p>\r\n<p> <strong> أنت </strong> تعني الفرد الذي يصل إلى الخدمة أو يستخدمها ، أو الشركة ، أو الكيان القانوني الآخر الذي يصل هذا الفرد إلى الخدمة أو يستخدمها نيابةً عنه ، حسب الاقتضاء. </p>\r\n<h1 style=\"margin: 30px 0\">؛\"> جمع واستخدام بياناتك الشخصية </h1>\r\n<h2 style=\"margin: 30px 0\">؛\"> أنواع البيانات المجمعة </h2>\r\n<h3 style=\"margin: 30px 0\">؛\"> البيانات الشخصية </h3>\r\n<p> أثناء استخدام خدمتنا ، قد نطلب منك تزويدنا بمعلومات تعريف شخصية معينة يمكن استخدامها للاتصال بك أو التعرف عليك. قد تتضمن معلومات التعريف الشخصية ، على سبيل المثال لا الحصر: </p>\r\n<ul style=\"margin: 30px 0\">؛\"> <li> عنوان البريد الإلكتروني </ li> <li> الاسم الأول واسم العائلة </ li> <li> العنوان والولاية والمقاطعة والرمز البريدي / الرمز البريدي والمدينة </ li> <li> بيانات الاستخدام </ li> </ul>\r\n<h3 style=\"margin: 30px 0\">؛\"> بيانات الاستخدام </h3>\r\n<p> يتم جمع بيانات الاستخدام تلقائيًا عند استخدام الخدمة. </p>\r\n<p> قد تتضمن بيانات الاستخدام معلومات مثل عنوان بروتوكول الإنترنت لجهازك (مثل عنوان IP) ، ونوع المتصفح ، وإصدار المتصفح ، وصفحات الخدمة التي تزورها ، ووقت وتاريخ زيارتك ، والوقت الذي تقضيه في تلك الصفحات ومعرفات الجهاز الفريدة وبيانات التشخيص الأخرى. </p>\r\n<p> عند الوصول إلى الخدمة عن طريق أو من خلال جهاز محمول ، يجوز لنا جمع معلومات معينة تلقائيًا ، بما في ذلك ، على سبيل المثال لا الحصر ، نوع الجهاز المحمول الذي تستخدمه ، والمعرف الفريد لجهازك المحمول ، وعنوان IP لجهازك المحمول ونظام تشغيل هاتفك المحمول ونوع متصفح الإنترنت على الهاتف المحمول الذي تستخدمه ومعرفات الجهاز الفريدة وبيانات التشخيص الأخرى. </p>\r\n<p> قد نجمع أيضًا المعلومات التي يرسلها متصفحك عندما تزور خدمتنا أو عندما تصل إلى الخدمة عن طريق أو من خلال جهاز محمول. </p>\r\n<h3 style=\"margin: 30px 0\">؛\"> تقنيات التتبع وملفات تعريف الارتباط </h3>\r\n<p> نستخدم ملفات تعريف الارتباط وتقنيات التتبع المماثلة لتتبع النشاط على خدمتنا وتخزين معلومات معينة. تقنيات التتبع المستخدمة هي إشارات وعلامات ونصوص لجمع المعلومات وتتبعها ولتحسين خدمتنا وتحليلها. قد تشمل التقنيات التي نستخدمها ما يلي: </p>\r\n<ul style=\"margin: 30px 0\">؛\"> <li> <strong> ملفات تعريف الارتباط أو ملفات تعريف ارتباط المتصفح. </strong> ملف تعريف الارتباط هو ملف صغير يوضع على جهازك. يمكنك توجيه متصفحك لرفض جميع ملفات تعريف الارتباط أو للإشارة إلى وقت إرسال ملف تعريف الارتباط. ومع ذلك ، إذا كنت لا تقبل ملفات تعريف الارتباط ، فقد لا تتمكن من استخدام بعض أجزاء من خدمتنا. ما لم تقم بتعديل إعداد المستعرض الخاص بك بحيث يرفض ملفات تعريف الارتباط ، فقد تستخدم خدمتنا ملفات تعريف الارتباط. </ li> <li> <strong> إشارات الويب. </strong> قد تحتوي أقسام معينة من خدمتنا ورسائل البريد الإلكتروني الخاصة بنا على ملفات إلكترونية صغيرة تُعرف باسم إشارات الويب (يشار إليها أيضًا باسم gifs الواضحة وعلامات البكسل وصور gif أحادية البكسل) التي تسمح للشركة ، على سبيل المثال ، بإحصاء المستخدمين الذين زاروا تلك الصفحات أو فتحوا بريدًا إلكترونيًا ولإحصائيات مواقع الويب الأخرى ذات الصلة (على سبيل المثال وتسجيل شعبية قسم معين والتحقق من سلامة النظام والخادم). </ li> </ul>\r\n<p> يمكن أن تكون ملفات تعريف الارتباط & quot؛ ثابتة & quot؛ أو & quot؛ جلسة & quot؛ بسكويت. تظل ملفات تعريف الارتباط الدائمة على جهاز الكمبيوتر الشخصي أو الجهاز المحمول الخاص بك عندما تكون غير متصل بالإنترنت ، بينما يتم حذف ملفات تعريف ارتباط الجلسة بمجرد إغلاق متصفح الويب الخاص بك. تعرف على المزيد حول ملفات تعريف الارتباط على مقالة <a href= \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> موقع ويب سياسة الخصوصية المجانية </a>. </p>\r\n<p> نستخدم كلاً من ملفات تعريف الارتباط الخاصة بالجلسة وملفات تعريف الارتباط الدائمة للأغراض الموضحة أدناه: </p >\r\n<p> <strong> ملفات تعريف الارتباط الضرورية / الأساسية </strong> </p>\r\n<p> النوع: ملفات تعريف ارتباط الجلسة </p>\r\n<p> تحت إدارة: نحن </p>\r\n<p> الغرض: ملفات تعريف الارتباط هذه ضرورية لتزويدك بالخدمات المتاحة عبر موقع الويب ولتمكينك من استخدام بعض ميزاته. إنها تساعد في مصادقة المستخدمين ومنع الاستخدام الاحتيالي لحسابات المستخدمين. بدون ملفات تعريف الارتباط هذه ، لا يمكن توفير الخدمات التي طلبتها ، ونحن نستخدم ملفات تعريف الارتباط هذه فقط لتزويدك بهذه الخدمات. </p>\r\n<p> <strong> سياسة ملفات تعريف الارتباط / ملفات تعريف ارتباط قبول الإشعار </strong> </p>\r\n<p> النوع: ملفات تعريف الارتباط الدائمة </p>\r\n<p> تحت إدارة: نحن </p>\r\n<p> الغرض: تحدد ملفات تعريف الارتباط هذه ما إذا كان المستخدمون قد وافقوا على استخدام ملفات تعريف الارتباط على موقع الويب. </p>\r\n<p> <strong> ملفات تعريف الارتباط الوظيفية </strong> </p>\r\n<p> النوع: ملفات تعريف الارتباط الدائمة </p>\r\n<p> تحت إدارة: نحن </p>\r\n<p> الغرض: تسمح لنا ملفات تعريف الارتباط هذه بتذكر الاختيارات التي تقوم بها عند استخدام موقع الويب ، مثل تذكر تفاصيل تسجيل الدخول أو تفضيلات اللغة. الغرض من ملفات تعريف الارتباط هذه هو تزويدك بتجربة شخصية أكثر وتجنب الاضطرار إلى إعادة إدخال تفضيلاتك في كل مرة تستخدم فيها موقع الويب. </p>\r\n<p> لمزيد من المعلومات حول ملفات تعريف الارتباط التي نستخدمها وخياراتك فيما يتعلق بملفات تعريف الارتباط ، يرجى زيارة سياسة ملفات تعريف الارتباط أو قسم ملفات تعريف الارتباط في سياسة الخصوصية الخاصة بنا. </p>\r\n<h2 style=\"margin: 30px 0\">؛\"> استخدام بياناتك الشخصية </h2>\r\n<p> يجوز للشركة استخدام البيانات الشخصية للأغراض التالية: </p>\r\n<p> <strong> لتقديم خدمتنا وصيانتها </strong> ، بما في ذلك مراقبة استخدام خدمتنا. </p>\r\n<p> <strong> لإدارة حسابك: </strong> لإدارة تسجيلك كمستخدم للخدمة. يمكن أن تمنحك البيانات الشخصية التي تقدمها إمكانية الوصول إلى الوظائف المختلفة للخدمة المتاحة لك كمستخدم مسجل. </p>\r\n<p> <strong> لتنفيذ عقد: </strong> التطوير والامتثال والتعهد بعقد شراء المنتجات أو العناصر أو الخدمات التي اشتريتها أو أي عقد آخر معنا من خلال الخدمة. </ ص>\r\n<p> <strong> للاتصال بك: </strong> للاتصال بك عن طريق البريد الإلكتروني أو المكالمات الهاتفية أو الرسائل القصيرة أو غير ذلك من أشكال الاتصالات الإلكترونية المماثلة ، مثل الإخطارات الفورية لتطبيقات الهاتف المحمول فيما يتعلق بالتحديثات أو الاتصالات الإعلامية المتعلقة بالوظائف ، المنتجات أو الخدمات المتعاقد عليها ، بما في ذلك التحديثات الأمنية ، عند الضرورة أو المعقول لتنفيذها. </p>\r\n<p> <strong> لتزويدك </strong> بأخبار وعروض خاصة ومعلومات عامة حول السلع والخدمات والأحداث الأخرى التي نقدمها والتي تشبه تلك التي اشتريتها بالفعل أو استفسرت عنها ما لم تكن قد اخترت عدم تلقي هذه المعلومات. </p>\r\n<p> <strong> لإدارة طلباتك: </strong> لحضور وإدارة طلباتك إلينا. </p>\r\n<p> <strong> لعمليات نقل الأعمال: </strong> قد نستخدم معلوماتك لتقييم أو إجراء عملية دمج أو تجريد أو إعادة هيكلة أو إعادة تنظيم أو حل أو غير ذلك من عمليات البيع أو النقل لبعض أو كل أصولنا ، سواء كانت الاستمرارية أو كجزء من الإفلاس أو التصفية أو الإجراءات المماثلة ، حيث تكون البيانات الشخصية التي نحتفظ بها حول مستخدمي خدمتنا من بين الأصول المنقولة. </p>\r\n<p> <strong> لأغراض أخرى </strong>: قد نستخدم معلوماتك لأغراض أخرى ، مثل تحليل البيانات ، وتحديد اتجاهات الاستخدام ، وتحديد فعالية حملاتنا الترويجية ولتقييم وتحسين خدماتنا ومنتجاتنا وخدماتنا والتسويق وتجربتك. </p>\r\n\r\n', 'Ishop - سياسة الاسترجاع', 'سياسة الاسترجاع', 'ar', 4),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'سياسة الخصوصية', '<h1 style = \"margin: 30px 0\"> سياسة الخصوصية </h1>\r\n<p> آخر تحديث : 13 كانون الأول (ديسمبر) 2022 </p>\r\n<p> تصف سياسة الخصوصية هذه سياساتنا وإجراءاتنا المتعلقة بجمع معلوماتك واستخدامها والكشف عنها عند استخدامك للخدمة وتخبرك بحقوق الخصوصية الخاصة بك وكيف يحميك القانون. </p>\r\n<p> نستخدم بياناتك الشخصية لتوفير الخدمة وتحسينها. باستخدام الخدمة ، فإنك توافق على جمع واستخدام المعلومات وفقًا لسياسة الخصوصية هذه. تم إنشاء سياسة الخصوصية هذه بمساعدة <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> أداة إنشاء سياسة الخصوصية المجانية </a>. </p>\r\n<h1 style = \"margin: 30px 0\"> التفسير والتعريفات </h1>\r\n<h2 style = \"margin: 30px 0\"> تفسير </h2>\r\n<p> الكلمات التي يتم كتابة الحرف الأول بها معاني محددة وفقًا للشروط التالية. يجب أن يكون للتعريفات التالية نفس المعنى بغض النظر عما إذا كانت تظهر بصيغة المفرد أو الجمع. </p>\r\n<h2 style = \"margin: 30px 0\"> تعريفات </h2>\r\n<p> لأغراض سياسة الخصوصية هذه : </p>\r\n<strong> الحساب </strong> يعني حسابًا فريدًا تم إنشاؤه لك للوصول إلى خدمتنا أو أجزاء من خدمتنا. </p>\r\n<p> <strong> الشركة </strong> (يشار إليها باسم & quot؛ الشركة & \"، & quot؛ نحن & quot؛، & quot؛ لنا & quot؛ أو & quot؛ لدينا & quot؛ في هذه الاتفاقية) تشير إلى ishop.cholobangla.com ، كندا. </p>\r\n<p> <strong> ملفات تعريف الارتباط </strong> هي ملفات صغيرة يتم وضعها على جهاز الكمبيوتر أو الجهاز المحمول أو أي جهاز آخر بواسطة موقع ويب ، وتحتوي على تفاصيل محفوظات الاستعراض على موقع الويب هذا من بين استخداماته العديدة. </p>\r\nتشير <p> <strong> الدولة </strong> إلى : نيو برونزويك ، كندا </p>\r\n<p> <strong> الجهاز </strong> يعني أي جهاز يمكنه الوصول إلى الخدمة مثل جهاز كمبيوتر أو هاتف محمول أو جهاز لوحي رقمي. </p>\r\n<p> <strong> البيانات الشخصية </strong> هي أي معلومات تتعلق بفرد محدد الهوية أو يمكن التعرف عليه. </p>\r\nتشير <p> <strong> الخدمة </strong> إلى موقع الويب. </p>\r\n<p> <strong> مقدم الخدمة </strong> يُقصد به أي شخص طبيعي أو اعتباري يقوم بمعالجة البيانات نيابة عن الشركة. يشير إلى شركات أو أفراد تابعين لجهات خارجية توظفهم الشركة لتسهيل الخدمة ، لتقديم الخدمة نيابة عن الشركة ، لأداء الخدمات المتعلقة بالخدمة أو لمساعدة الشركة في تحليل كيفية استخدام الخدمة. </ ص>\r\nتشير <p> <strong> بيانات الاستخدام </strong> إلى البيانات التي يتم جمعها تلقائيًا ، إما الناتجة عن استخدام الخدمة أو من البنية التحتية للخدمة نفسها (على سبيل المثال ، مدة زيارة الصفحة). </p>\r\nيشير <p> <strong> موقع الويب </strong> إلى https : //ishop.cholobangla.com/ ، ويمكن الوصول إليه من <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com </a> </p>\r\n<p> <strong> أنت </strong> تعني الفرد الذي يصل إلى الخدمة أو يستخدمها ، أو الشركة ، أو الكيان القانوني الآخر الذي يصل هذا الفرد إلى الخدمة أو يستخدمها نيابةً عنه ، حسب الاقتضاء. </p>\r\n<h1 style = \"margin: 30px 0\"> جمع واستخدام بياناتك الشخصية </h1>\r\n<h2 style = \"margin: 30px 0\"> أنواع البيانات المجمعة </h2>\r\n<h3 style = \"margin: 30px 0\"> البيانات الشخصية </h3>\r\n<p> أثناء استخدام خدمتنا ، قد نطلب منك تزويدنا بمعلومات تعريف شخصية معينة يمكن استخدامها للاتصال بك أو التعرف عليك. قد تتضمن معلومات التعريف الشخصية ، على سبيل المثال لا الحصر : </p>\r\n<ul style = \"margin: 30px 0\"> <li> عنوان البريد الإلكتروني </ li> <li> الاسم الأول واسم العائلة </ li> <li> العنوان والولاية والمقاطعة والرمز البريدي / الرمز البريدي والمدينة </ li> <li> بيانات الاستخدام </ li> </ul>\r\n<h3 style = \"margin: 30px 0\"> بيانات الاستخدام </h3>\r\n<p> يتم جمع بيانات الاستخدام تلقائيًا عند استخدام الخدمة. </p>\r\n<p> قد تتضمن بيانات الاستخدام معلومات مثل عنوان بروتوكول الإنترنت لجهازك (مثل عنوان IP) ، ونوع المتصفح ، وإصدار المتصفح ، وصفحات الخدمة التي تزورها ، ووقت وتاريخ زيارتك ، والوقت الذي تقضيه في تلك الصفحات ومعرفات الجهاز الفريدة وبيانات التشخيص الأخرى. </p>\r\n<p> عند الوصول إلى الخدمة عن طريق أو من خلال جهاز محمول ، يجوز لنا جمع معلومات معينة تلقائيًا ، بما في ذلك ، على سبيل المثال لا الحصر ، نوع الجهاز المحمول الذي تستخدمه ، والمعرف الفريد لجهازك المحمول ، وعنوان IP لجهازك المحمول ونظام تشغيل هاتفك المحمول ونوع متصفح الإنترنت على الهاتف المحمول الذي تستخدمه ومعرفات الجهاز الفريدة وبيانات التشخيص الأخرى. </p>\r\n<p> قد نجمع أيضًا المعلومات التي يرسلها متصفحك عندما تزور خدمتنا أو عندما تصل إلى الخدمة عن طريق أو من خلال جهاز محمول. </p>\r\n<h3 style = \"margin: 30px 0\"> تقنيات التتبع وملفات تعريف الارتباط </h3>\r\n<p> نستخدم ملفات تعريف الارتباط وتقنيات التتبع المماثلة لتتبع النشاط على خدمتنا وتخزين معلومات معينة. تقنيات التتبع المستخدمة هي إشارات وعلامات ونصوص لجمع المعلومات وتتبعها ولتحسين خدمتنا وتحليلها. قد تشمل التقنيات التي نستخدمها ما يلي : </p>\r\n<p> <strong> ملفات تعريف الارتباط أو ملفات تعريف ارتباط المتصفح. </strong> ملف تعريف الارتباط هو ملف صغير يوضع على جهازك. يمكنك توجيه متصفحك لرفض جميع ملفات تعريف الارتباط أو للإشارة إلى وقت إرسال ملف تعريف الارتباط. ومع ذلك ، إذا كنت لا تقبل ملفات تعريف الارتباط ، فقد لا تتمكن من استخدام بعض أجزاء من خدمتنا. ما لم تقم بتعديل إعدادات المتصفح بحيث يرفض ملفات تعريف الارتباط ، فقد تستخدم خدمتنا ملفات تعريف الارتباط. </p>\r\n<p> <strong> إشارات الويب. </strong> قد تحتوي أقسام معينة من خدمتنا ورسائل البريد الإلكتروني الخاصة بنا على ملفات إلكترونية صغيرة تُعرف بإشارات الويب (يُشار إليها أيضًا باسم gifs الواضحة وعلامات البكسل وصور GIF أحادية البكسل) التي تسمح للشركة ، على سبيل المثال ، لحساب عدد المستخدمين الذين زاروا هذه الصفحات أو فتحوا بريدًا إلكترونيًا ولإحصائيات مواقع الويب الأخرى ذات الصلة (على سبيل المثال ، تسجيل شعبية قسم معين والتحقق من سلامة النظام والخادم). </p>\r\n<p> يمكن أن تكون ملفات تعريف الارتباط & quot؛ ثابتة & quot؛ أو & quot؛ جلسة & quot؛ بسكويت. تظل ملفات تعريف الارتباط الدائمة على جهاز الكمبيوتر الشخصي أو الجهاز المحمول الخاص بك عندما تكون غير متصل بالإنترنت ، بينما يتم حذف ملفات تعريف ارتباط الجلسة بمجرد إغلاق متصفح الويب الخاص بك. تعرف على المزيد حول ملفات تعريف الارتباط على مقالة <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> موقع ويب سياسة الخصوصية المجانية </a>. </p>\r\n<p> نستخدم كلاً من ملفات تعريف الارتباط الخاصة بالجلسة وملفات تعريف الارتباط الدائمة للأغراض الموضحة أدناه : </p>\r\n<p> <strong> ملفات تعريف الارتباط الضرورية / الأساسية </strong> </p>\r\n<p> النوع : ملفات تعريف ارتباط الجلسة </p>\r\n<p> تحت إدارة : نحن </p>\r\n<p> الغرض : ملفات تعريف الارتباط هذه ضرورية لتزويدك بالخدمات المتاحة عبر موقع الويب ولتمكينك من استخدام بعض ميزاته. إنها تساعد في مصادقة المستخدمين ومنع الاستخدام الاحتيالي لحسابات المستخدمين. بدون ملفات تعريف الارتباط هذه ، لا يمكن توفير الخدمات التي طلبتها ، ونحن نستخدم ملفات تعريف الارتباط هذه فقط لتزويدك بهذه الخدمات. </p>\r\n<p> <strong> سياسة ملفات تعريف الارتباط / ملفات تعريف ارتباط قبول الإشعار </strong> </p>\r\n<p> النوع : ملفات تعريف الارتباط الدائمة </p>\r\n<p> تحت إدارة : نحن </p>\r\n<p> الغرض : تحدد ملفات تعريف الارتباط هذه ما إذا كان المستخدمون قد وافقوا على استخدام ملفات تعريف الارتباط على موقع الويب. </p>\r\n<p> <strong> ملفات تعريف الارتباط الوظيفية </strong> </p>\r\n<p> النوع : ملفات تعريف الارتباط الدائمة </p>\r\n<p> تحت إدارة : نحن </p>\r\n<p> الغرض : تسمح لنا ملفات تعريف الارتباط هذه بتذكر الاختيارات التي تقوم بها عند استخدام موقع الويب ، مثل تذكر تفاصيل تسجيل الدخول أو تفضيلات اللغة. الغرض من ملفات تعريف الارتباط هذه هو تزويدك بتجربة شخصية أكثر وتجنب الاضطرار إلى إعادة إدخال تفضيلاتك في كل مرة تستخدم فيها موقع الويب. </p>\r\n<p> لمزيد من المعلومات حول ملفات تعريف الارتباط التي نستخدمها وخياراتك فيما يتعلق بملفات تعريف الارتباط ، يرجى زيارة سياسة ملفات تعريف الارتباط أو قسم ملفات تعريف الارتباط في سياسة الخصوصية الخاصة بنا. </p>\r\n<h2 style = \"margin: 30px 0\"> استخدام بياناتك الشخصية </h2>\r\n<p> يجوز للشركة استخدام البيانات الشخصية للأغراض التالية : </p>\r\n<p> <strong> لتقديم خدمتنا وصيانتها </strong> ، بما في ذلك مراقبة استخدام خدمتنا. </p>\r\n<p> <strong> لإدارة حسابك : </strong> لإدارة تسجيلك كمستخدم للخدمة. يمكن أن تمنحك البيانات الشخصية التي تقدمها إمكانية الوصول إلى الوظائف المختلفة للخدمة المتاحة لك كمستخدم مسجل. </p>\r\n<p> <strong> لتنفيذ عقد : </strong> التطوير والامتثال والتعهد بعقد شراء المنتجات أو العناصر أو الخدمات التي اشتريتها أو أي عقد آخر معنا من خلال الخدمة. </ ص>\r\n<p> <strong> للاتصال بك : </strong> للاتصال بك عن طريق البريد الإلكتروني أو المكالمات الهاتفية أو الرسائل القصيرة أو غير ذلك من أشكال الاتصالات الإلكترونية المماثلة ، مثل الإخطارات الفورية لتطبيقات الهاتف المحمول فيما يتعلق بالتحديثات أو الاتصالات الإعلامية المتعلقة بالوظائف ، المنتجات أو الخدمات المتعاقد عليها ، بما في ذلك التحديثات الأمنية ، عند الضرورة أو المعقول لتنفيذها. </p>\r\n<p> <strong> لتزويدك </strong> بأخبار وعروض خاصة ومعلومات عامة حول السلع والخدمات والأحداث الأخرى التي نقدمها والتي تشبه تلك التي اشتريتها بالفعل أو استفسرت عنها ما لم تكن قد اخترت عدم تلقي هذه المعلومات. </p>\r\n<p> <strong> لإدارة طلباتك : </strong> لحضور وإدارة طلباتك إلينا. </p>\r\n<p> <strong> لعمليات نقل الأعمال : </strong> قد نستخدم معلوماتك لتقييم أو إجراء عملية دمج أو تجريد أو إعادة هيكلة أو إعادة تنظيم أو حل أو غير ذلك من عمليات البيع أو النقل لبعض أو كل أصولنا ، سواء كانت الاستمرارية أو كجزء من الإفلاس أو التصفية أو الإجراءات المماثلة ، حيث تكون البيانات الشخصية التي نحتفظ بها حول مستخدمي خدمتنا من بين الأصول المنقولة. </p>\r\n<p> <strong> لأغراض أخرى </strong> : قد نستخدم معلوماتك لأغراض أخرى ، مثل تحليل البيانات ، وتحديد اتجاهات الاستخدام ، وتحديد فعالية حملاتنا الترويجية ولتقييم وتحسين خدماتنا ومنتجاتنا وخدماتنا والتسويق وتجربتك. </p>\r\n<p> قد نشارك معلوماتك الشخصية في المواقف التالية : </p>\r\n<ul style = \"margin: 30px 0\"> <li> <strong> مع مزودي الخدمة: </strong> قد نشارك معلوماتك الشخصية مع مزودي الخدمة لمراقبة وتحليل استخدام خدمتنا ، للاتصال بك. < / li> <li> <strong> لعمليات نقل الأعمال: </strong> يجوز لنا مشاركة معلوماتك الشخصية أو نقلها فيما يتعلق أو أثناء المفاوضات بشأن أي دمج أو بيع أصول الشركة أو التمويل أو الاستحواذ على كل أو جزء من أعمالنا إلى شركة أخرى. </ li> <li> <strong> مع الشركات التابعة: </strong> قد نشارك معلوماتك مع الشركات التابعة لنا ، وفي هذه الحالة سنطلب من تلك الشركات التابعة احترام سياسة الخصوصية هذه. تشمل الشركات التابعة شركتنا الأم وأي شركات فرعية أخرى أو شركاء في المشاريع المشتركة أو شركات أخرى نسيطر عليها أو تخضع لسيطرة مشتركة معنا. </ li> <li> <strong> مع شركاء الأعمال: </strong> قد نشاركك المعلومات مع شركائنا في العمل لنقدم لك منتجات أو خدمات أو عروض ترويجية معينة. </ li> <li> <strong> مع مستخدمين آخرين: </strong> عندما تشارك معلومات شخصية أو تتفاعل بطريقة أخرى في المناطق العامة مع مستخدمين آخرين ، مثل يمكن عرض المعلومات من قبل جميع المستخدمين ويمكن توزيعها علنًا في الخارج. </ li> <li> <strong> بموافقتك </strong>: يجوز لنا الكشف عن معلوماتك الشخصية لأي غرض آخر بموافقتك. </ li> </ul>\r\n<h2 style = \"margin: 30px 0\"> الاحتفاظ ببياناتك الشخصية </h2>\r\n<p> ستحتفظ الشركة ببياناتك الشخصية فقط طالما كان ذلك ضروريًا للأغراض المنصوص عليها في سياسة الخصوصية هذه. سنحتفظ ببياناتك الشخصية ونستخدمها بالقدر اللازم للامتثال لالتزاماتنا القانونية (على سبيل المثال ، إذا طُلب منا الاحتفاظ ببياناتك للامتثال للقوانين المعمول بها) ، وحل النزاعات ، وإنفاذ اتفاقياتنا وسياساتنا القانونية. </ ص>\r\n<p> ستحتفظ الشركة أيضًا ببيانات الاستخدام لأغراض التحليل الداخلي. بشكل عام ، يتم الاحتفاظ ببيانات الاستخدام لفترة زمنية أقصر ، إلا في حالة استخدام هذه البيانات لتعزيز الأمن أو لتحسين وظائف خدمتنا ، أو نحن ملزمون قانونًا بالاحتفاظ بهذه البيانات لفترات زمنية أطول. </p>\r\n<h2 style = \"margin: 30px 0\"> نقل بياناتك الشخصية </h2>\r\n<p> تتم معالجة معلوماتك ، بما في ذلك البيانات الشخصية ، في مكاتب تشغيل الشركة وفي أي أماكن أخرى توجد بها الأطراف المشاركة في المعالجة. وهذا يعني أنه قد يتم نقل هذه المعلومات إلى - والاحتفاظ بها - على أجهزة الكمبيوتر الموجودة خارج ولايتك أو مقاطعتك أو بلدك أو أي ولاية قضائية حكومية أخرى حيث قد تختلف قوانين حماية البيانات عن تلك الموجودة في ولايتك القضائية. </p>\r\n<p> موافقتك على سياسة الخصوصية هذه متبوعة بتقديمك لهذه المعلومات يمثل موافقتك على هذا النقل. </p>\r\n<p> ستتخذ الشركة جميع الخطوات اللازمة بشكل معقول لضمان التعامل مع بياناتك بشكل آمن ووفقًا لسياسة الخصوصية هذه ولن يتم نقل بياناتك الشخصية إلى منظمة أو دولة ما لم تكن هناك ضوابط كافية مطبقة بما في ذلك أمان بياناتك والمعلومات الشخصية الأخرى. </p>\r\n<h2 style = \"margin: 30px 0\"> حذف بياناتك الشخصية </h2>\r\n<p> لديك الحق في حذف أو طلب مساعدتنا في حذف البيانات الشخصية التي جمعناها عنك. </p>\r\n<p> قد تمنحك خدمتنا القدرة على حذف معلومات معينة عنك من داخل الخدمة. </p>\r\n<p> يمكنك تحديث معلوماتك أو تعديلها أو حذفها في أي وقت عن طريق تسجيل الدخول إلى حسابك ، إذا كان لديك حساب ، وزيارة قسم إعدادات الحساب الذي يسمح لك بإدارة معلوماتك الشخصية. يمكنك أيضًا الاتصال بنا لطلب الوصول إلى أي معلومات شخصية قدمتها لنا أو تصحيحها أو حذفها. </p>\r\n<p> ومع ذلك ، يرجى ملاحظة أننا قد نحتاج إلى الاحتفاظ بمعلومات معينة عندما يكون لدينا التزام قانوني أو أساس قانوني للقيام بذلك. </p>\r\n<h2 style = \"margin: 30px 0\"> الكشف عن بياناتك الشخصية </h2>\r\n<h3 style = \"margin: 30px 0\"> المعاملات التجارية </h3>\r\n<p> إذا كانت الشركة متورطة في عملية دمج أو استحواذ أو بيع أصول ، فقد يتم نقل بياناتك الشخصية. سنقدم إشعارًا قبل نقل بياناتك الشخصية وخضوعها لسياسة خصوصية مختلفة. </p>\r\n<h3 style = \"margin: 30px 0\"> تطبيق القانون </h3>\r\n<p> في ظل ظروف معينة ، قد يُطلب من الشركة الكشف عن بياناتك الشخصية إذا طُلب منها ذلك بموجب القانون أو استجابة لطلبات صحيحة من قبل السلطات العامة (مثل محكمة أو وكالة حكومية). </p>\r\n<h3 style = \"margin: 30px 0\"> متطلبات قانونية أخرى </h3>\r\n<p> قد تفصح الشركة عن بياناتك الشخصية بحسن نية أن هذا الإجراء ضروري من أجل : </p>\r\n<ul> <li> الامتثال لالتزام قانوني </ li> <li> حماية حقوق أو ممتلكات الشركة والدفاع عنها </ li> <li> منع المخالفات المحتملة المتعلقة بالخدمة أو التحقيق فيها </ li> < li> حماية السلامة الشخصية لمستخدمي الخدمة أو الجمهور </ li> <li> الحماية من المسؤولية القانونية </ li> </ul>\r\n<h2> أمان بياناتك الشخصية </h2>\r\n<p> يعد أمان بياناتك الشخصية أمرًا مهمًا بالنسبة لنا ، ولكن تذكر أنه لا توجد طريقة نقل عبر الإنترنت أو طريقة تخزين إلكتروني آمنة بنسبة 100٪. بينما نسعى جاهدين لاستخدام وسائل مقبولة تجاريًا لحماية بياناتك الشخصية ، لا يمكننا ضمان أمنها المطلق. </p>\r\n<h1> خصوصية الأطفال </h1>\r\n<p> لا تخاطب خدمتنا أي شخص يقل عمره عن 13 عامًا. نحن لا نجمع عن قصد معلومات تعريف شخصية من أي شخص يقل عمره عن 13 عامًا. إذا كنت أحد الوالدين أو الوصي وتدرك أن طفلك قد زودنا بمعلومات شخصية البيانات ، يرجى الاتصال بنا. إذا علمنا أننا قد جمعنا بيانات شخصية من أي شخص يقل عمره عن 13 عامًا دون التحقق من موافقة الوالدين ، فإننا نتخذ خطوات لإزالة هذه المعلومات من خوادمنا. </p>\r\n<p> إذا احتجنا إلى الاعتماد على الموافقة كأساس قانوني لمعالجة معلوماتك وكان بلدك يتطلب موافقة أحد الوالدين ، فقد نطلب موافقة والديك قبل أن نجمع هذه المعلومات ونستخدمها. </p>\r\n<h1 style = \"margin: 30px 0\"> روابط لمواقع أخرى </h1>\r\n<p> قد تحتوي خدمتنا على روابط لمواقع أخرى لا نقوم بتشغيلها. إذا قمت بالنقر فوق ارتباط جهة خارجية ، فسيتم توجيهك إلى موقع الطرف الثالث. ننصحك بشدة بمراجعة سياسة الخصوصية لكل موقع تزوره. </p>\r\n<p> ليس لدينا أي سيطرة ولا نتحمل أي مسؤولية عن المحتوى أو سياسات الخصوصية أو ممارسات أي مواقع أو خدمات تابعة لجهات خارجية. </p>\r\n<h1 style = \"margin: 30px 0\"> التغييرات في سياسة الخصوصية هذه </h1>\r\n<p> قد نقوم بتحديث سياسة الخصوصية الخاصة بنا من وقت لآخر. سنخطرك بأي تغييرات عن طريق نشر سياسة الخصوصية الجديدة على هذه الصفحة. </p>\r\n<p> سنخبرك عبر البريد الإلكتروني و / أو إشعارًا بارزًا على \"خدمتنا\" ، قبل أن يصبح التغيير ساريًا ونقوم بتحديث & quot؛ آخر تحديث & quot؛ التاريخ في الجزء العلوي من سياسة الخصوصية هذه. </p>\r\n<p> يُنصح بمراجعة سياسة الخصوصية هذه بشكل دوري لمعرفة أي تغييرات. تسري التغييرات التي تطرأ على سياسة الخصوصية هذه عند نشرها على هذه الصفحة. </p>\r\n<h1 style = \"margin: 30px 0\"> اتصل بنا </h1>\r\n<p> إذا كان لديك أي أسئلة حول سياسة الخصوصية هذه ، يمكنك الاتصال بنا : </p>\r\n<ul style = \"margin: 30px 0\"> <li> من خلال زيارة هذه الصفحة على موقعنا على الويب: <a href = \"https://ishop.cholobangla.com/\" rel = \"external nofollow noopener\" target = \"_ blank \"> https://ishop.cholobangla.com/ </a> </li> </ul>\r\n\r\n', 'Ishop - سياسة الخصوصية', 'سياسة الخصوصية', 'ar', 5),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'يساعد', '<h1 style=\"margin: 30px 0;\">مساعدة</h1>\r\n<p> تصف سياسة الخصوصية هذه سياساتنا وإجراءاتنا المتعلقة بجمع معلوماتك واستخدامها والكشف عنها عند استخدامك للخدمة وتخبرك بحقوق الخصوصية الخاصة بك وكيف يحميك القانون. </p>\r\n<p> نستخدم بياناتك الشخصية لتوفير الخدمة وتحسينها. باستخدام الخدمة ، فإنك توافق على جمع واستخدام المعلومات وفقًا لسياسة الخصوصية هذه. تم إنشاء سياسة الخصوصية هذه بمساعدة <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> أداة إنشاء سياسة الخصوصية المجانية </a>. </p>\r\n<h1 style=\"margin: 30px 0;\">التفسير والتعريفات</h1>\r\n<h2 style=\"margin: 30px 0;\"> تفسير </h2>\r\n<p> الكلمات التي يتم كتابة الحرف الأول بها معاني محددة وفقًا للشروط التالية. يجب أن يكون للتعريفات التالية نفس المعنى بغض النظر عما إذا كانت تظهر بصيغة المفرد أو الجمع. </p>\r\n<h2 style=\"margin: 30px 0;\"> تعريفات </h2>\r\n<p> لأغراض سياسة الخصوصية هذه : </p>\r\n<p> <strong> الحساب </strong> يعني حسابًا فريدًا تم إنشاؤه لك للوصول إلى خدمتنا أو أجزاء من خدمتنا. </p>\r\n<p> <strong> الشركة </strong> (يشار إليها باسم & quot؛ الشركة & \"، & quot؛ نحن & quot؛ أو & quot؛ لنا & quot؛ أو & quot؛ في هذه الاتفاقية) تشير إلى ishop.cholobangla.com ، كندا. </p>\r\n<p> <strong> ملفات تعريف الارتباط </strong> هي ملفات صغيرة يتم وضعها على جهاز الكمبيوتر أو الجهاز المحمول أو أي جهاز آخر بواسطة موقع ويب ، وتحتوي على تفاصيل محفوظات الاستعراض على موقع الويب هذا من بين استخداماته العديدة. </p>\r\nتشير <p> <strong> الدولة </strong> إلى : نيو برونزويك ، كندا </p>\r\n<p> <strong> الجهاز </strong> يعني أي جهاز يمكنه الوصول إلى الخدمة مثل جهاز كمبيوتر أو هاتف ذكي أو جهاز لوحي رقمي. </p>\r\n<p> <strong> البيانات الشخصية </strong> هي أي معلومات تتعلق بفرد محدد الهوية أو يمكن التعرف عليه. </p>\r\nتشير <p> <strong> الخدمة </strong> إلى موقع الويب. </p>\r\n<p> <strong> مقدم الخدمة </strong> يُقصد به أي شخص طبيعي أو اعتباري يقوم بمعالجة البيانات نيابة عن الشركة. يشير إلى شركات أو أفراد تابعين لجهات خارجية توظفهم الشركة لتسهيل الخدمة ، لتقديم الخدمة نيابة عن الشركة ، لأداء الخدمات المتعلقة بالخدمة أو لمساعدة الشركة في تحليل كيفية استخدام الخدمة. </ ص>\r\nتشير <p> <strong> بيانات الاستخدام </strong> إلى البيانات التي يتم جمعها تلقائيًا ، إما الناتجة عن استخدام الخدمة أو من البنية التحتية للخدمة نفسها (على سبيل المثال ، مدة زيارة الصفحة). </p>\r\nيشير <p> <strong> موقع الويب </strong> إلى https : //ishop.cholobangla.com/ ، ويمكن الوصول إليه من <a href=\"ishop.cholobangla\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop. cholobangla.com </a> </p>\r\n<p> <strong> أنت </strong> تعني الفرد الذي يصل إلى الخدمة أو يستخدمها ، أو الشركة أو الكيان القانوني الآخر الذي يصل هذا الفرد إلى الخدمة أو يستخدمها نيابةً عنه ، حسب الاقتضاء. </p>\r\n<h1 style = \"margin: 30px 0 جمع واستخدام بياناتك الشخصية </h1>\r\n<h1 style=\"margin: 30px 0;\"> أنواع البيانات المجمعة </h2>\r\n<h3 style=\"margin: 30px 0;\">البيانات الشخصية </h3>\r\n<p> أثناء استخدام خدمتنا ، قد نطلب منك تزويدنا بمعلومات تعريف شخصية معينة يمكن استخدامها للاتصال بك أو التعرف عليك. قد تتضمن معلومات التعريف الشخصية ، على سبيل المثال لا الحصر : </p>\r\n<ul style = \"margin: 30px 0\"> <li> عنوان البريد الإلكتروني </ li> <li> الاسم الأول واسم العائلة </ li> <li> العنوان والولاية والمقاطعة والرمز البريدي / الرمز البريدي والمدينة </ li> <li> بيانات الاستخدام </ li> </ul>\r\n<h3 style=\"margin: 30px 0;\">بيانات الاستخدام </h3>\r\n<p> يتم جمع بيانات الاستخدام تلقائيًا عند استخدام الخدمة. </p> <p> قد تتضمن بيانات الاستخدام معلومات مثل عنوان بروتوكول الإنترنت لجهازك (مثل عنوان IP) ، ونوع المتصفح ، وإصدار المتصفح ، وصفحات خدمتنا التي أنت تزور ووقت وتاريخ زيارتك والوقت الذي تقضيه في تلك الصفحات ومعرفات الجهاز الفريدة وبيانات التشخيص الأخرى. </p> <p> عند الوصول إلى الخدمة عن طريق أو من خلال جهاز محمول ، يجوز لنا جمع معلومات معينة تلقائيًا ، بما في ذلك ، على سبيل المثال لا الحصر ، نوع الجهاز المحمول الذي تستخدمه ، والمعرف الفريد لجهازك المحمول ، وعنوان IP لجهازك المحمول ، ونظام تشغيل هاتفك المحمول ، ونوع متصفح الإنترنت على الهاتف المحمول الذي تستخدمه ، ومعرفات الجهاز الفريدة وغيرها من التشخيصات البيانات. </p>\r\n<p> قد نجمع أيضًا المعلومات التي يرسلها متصفحك عندما تزور خدمتنا أو عندما تصل إلى الخدمة عن طريق أو من خلال جهاز محمول. </p>\r\n<h3 style=\"margin: 30px 0;\">تقنيات التتبع وملفات تعريف الارتباط </h3>\r\n<p> نستخدم ملفات تعريف الارتباط وتقنيات التتبع المماثلة لتتبع النشاط على خدمتنا وتخزين معلومات معينة. تقنيات التتبع المستخدمة هي إشارات وعلامات ونصوص لجمع المعلومات وتتبعها ولتحسين خدمتنا وتحليلها. قد تشمل التقنيات التي نستخدمها ما يلي : </p>\r\n<p> <strong> ملفات تعريف الارتباط أو ملفات تعريف ارتباط المتصفح. </strong> ملف تعريف الارتباط هو ملف صغير يوضع على جهازك. يمكنك توجيه متصفحك لرفض جميع ملفات تعريف الارتباط أو للإشارة إلى وقت إرسال ملف تعريف الارتباط. ومع ذلك ، إذا كنت لا تقبل ملفات تعريف الارتباط ، فقد لا تتمكن من استخدام بعض أجزاء من خدمتنا. ما لم تقم بتعديل إعدادات المستعرض الخاص بك بحيث يرفض ملفات تعريف الارتباط ، فقد تستخدم خدمتنا ملفات تعريف الارتباط. </p>\r\n<p> <strong> إشارات الويب. </strong> قد تحتوي أقسام معينة من خدمتنا ورسائل البريد الإلكتروني الخاصة بنا على أجزاء صغيرة\r\nالملفات الإلكترونية المعروفة باسم إشارات الويب (يشار إليها أيضًا باسم gifs الواضحة وعلامات البكسل وصور gif أحادية البكسل) التي تسمح للشركة ، على سبيل المثال ، بإحصاء المستخدمين الذين زاروا تلك\r\nالصفحات أو فتح بريد إلكتروني ولإحصائيات مواقع الويب الأخرى ذات الصلة (على سبيل المثال ، تسجيل شعبية قسم معين والتحقق من سلامة النظام والخادم). </p>\r\n<p> يمكن أن تكون ملفات تعريف الارتباط & quot؛ ثابتة & quot؛ أو & quot؛ جلسة & quot؛ بسكويت. تظل ملفات تعريف الارتباط الدائمة على جهاز الكمبيوتر الشخصي أو الجهاز المحمول الخاص بك عندما تكون غير متصل بالإنترنت ، بينما يتم حذف ملفات تعريف ارتباط الجلسة بمجرد إغلاق متصفح الويب الخاص بك. تعرف على المزيد حول ملفات تعريف الارتباط على مقالة <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> موقع ويب سياسة الخصوصية المجانية </a>. </p>\r\n<p> نستخدم كلاً من ملفات تعريف الارتباط الخاصة بالجلسة وملفات تعريف الارتباط الدائمة للأغراض الموضحة أدناه : </p>\r\n<p> <strong> ملفات تعريف الارتباط الضرورية / الأساسية </strong> </p>\r\n<p>النوع : ملفات تعريف ارتباط الجلسة</p>\r\n<p> تحت إدارة : نحن </p>\r\n<p> الغرض : ملفات تعريف الارتباط هذه ضرورية لتزويدك بالخدمات المتاحة عبر موقع الويب ولتمكينك من استخدام بعض ميزاته. إنها تساعد على مصادقة المستخدمين ومنع الاستخدام الاحتيالي لحسابات المستخدمين. بدون ملفات تعريف الارتباط هذه ، لا يمكن توفير الخدمات التي طلبتها ، ونحن نستخدم ملفات تعريف الارتباط هذه فقط لتزويدك بهذه الخدمات. </p>\r\n<p> <strong> سياسة ملفات تعريف الارتباط / ملفات تعريف ارتباط قبول الإشعار </strong> </p>\r\n<p> النوع : ملفات تعريف الارتباط الدائمة </p> <p> يديرها: نحن </p> <p> الغرض: تحدد ملفات تعريف الارتباط هذه ما إذا كان المستخدمون قد وافقوا على استخدام ملفات تعريف الارتباط على موقع الويب. </p> <p> < strong> ملفات تعريف الارتباط الوظيفية </strong> </p> <p> النوع: ملفات تعريف الارتباط الدائمة </p> <p> يديرها: نحن </p> <p> الغرض: تسمح لنا ملفات تعريف الارتباط هذه بتذكر الخيارات التي تتخذها عندما استخدام موقع الويب ، مثل تذكر تفاصيل تسجيل الدخول أو تفضيلات اللغة. الغرض من ملفات تعريف الارتباط هذه هو تزويدك بتجربة شخصية أكثر وتجنب الاضطرار إلى إعادة إدخال تفضيلاتك في كل مرة تستخدم فيها الموقع. </p> <p> لمزيد من المعلومات حول ملفات تعريف الارتباط التي نستخدمها وخياراتك فيما يتعلق بملفات تعريف الارتباط ، يرجى زيارة سياسة ملفات تعريف الارتباط الخاصة بنا أو قسم ملفات تعريف الارتباط في سياسة الخصوصية الخاصة بنا. </p>\r\n<h1 style=\"margin: 30px 0;\"> استخدام بياناتك الشخصية </h2> <p> يجوز للشركة استخدام البيانات الشخصية للأغراض التالية: </p>\r\n<p> <strong> لتقديم خدمتنا وصيانتها </strong> ، بما في ذلك مراقبة استخدام خدمتنا. </p>\r\n<p> <strong> لإدارة حسابك : </strong> لإدارة تسجيلك كمستخدم للخدمة. يمكن أن تمنحك البيانات الشخصية التي تقدمها إمكانية الوصول إلى الوظائف المختلفة للخدمة المتاحة لك كمستخدم مسجل. </p> <p> <strong> لأداء العقد: </strong> التطوير والامتثال والتعهد من عقد شراء المنتجات أو العناصر أو الخدمات التي اشتريتها أو من أي عقد آخر معنا من خلال الخدمة. </p> <p> <strong> للاتصال بك: </strong> للاتصال بك عن طريق البريد الإلكتروني والمكالمات الهاتفية أو الرسائل النصية القصيرة أو الأشكال الأخرى المماثلة من الاتصالات الإلكترونية ، مثل توجيهات تطبيقات الهاتف المحمول فيما يتعلق بالتحديثات أو الاتصالات الإعلامية المتعلقة بالوظائف أو المنتجات أو الخدمات المتعاقد عليها ، بما في ذلك التحديثات الأمنية ، عندما تكون ضرورية أو معقولة لتنفيذها. </p> <p> < strong> لتزويدك </strong> بالأخبار والعروض الخاصة والمعلومات العامة حول السلع والخدمات والأحداث الأخرى التي نقدمها والتي تشبه تلك التي اشتريتها أو استفسرت عنها مسبقًا ما لم تكن قد اخترت عدم تلقي هذه المعلومات. </p> <p> <strong> لإدارة طلباتك: </strong> لحضور وإدارة طلباتك إلينا. </p> <p> <strong> لنقل الأعمال: </strong> قد نستخدم معلوماتك من أجل تقييم أو إجراء الاندماج أو التجريد أو إعادة الهيكلة أو إعادة التنظيم أو الحل أو غير ذلك من عمليات البيع أو النقل لبعض أو كل أصولنا ، سواء كان ذلك كمنشأة مستمرة أو كجزء من الإفلاس أو التصفية أو إجراء مشابه ، حيث تكون البيانات الشخصية التي نحتفظ بها عن يعد مستخدمو الخدمة لدينا من بين الأصول المنقولة. </p>\r\n<p> <strong> لأغراض أخرى </strong> : قد نستخدم معلوماتك لأغراض أخرى ، مثل تحليل البيانات ، وتحديد اتجاهات الاستخدام ، وتحديد فعالية حملاتنا الترويجية ولتقييم وتحسين خدماتنا ومنتجاتنا وخدماتنا وتسويقنا وتجربتك. </p>\r\n<p> قد نشارك معلوماتك الشخصية في المواقف التالية : </p>\r\n<ul style = \"margin: 30px 0\"> <li> <strong> مع مزودي الخدمة: </strong> قد نشارك معلوماتك الشخصية مع ServiceProviders لمراقبة وتحليل استخدام خدمتنا ، للاتصال بك. </ li> <li> <strong> لعمليات نقل الأعمال: </strong> يجوز لنا مشاركة أو نقل معلوماتك الشخصية المرتبطة أو أثناء المفاوضات بشأن أي دمج أو بيع أصول الشركة أو التمويل أو الاستحواذ على كل أو جزء من شركة أخرى. </ li> <li> <strong> مع الشركات التابعة: </strong> قد نشارك معلوماتك مع الشركات التابعة لنا ، وفي هذه الحالة سنطلب من تلك الشركات التابعة احترام سياسة الخصوصية هذه. تشمل الشركات التابعة شركتنا الأم وأي شركات فرعية أخرى أو شركاء في المشاريع المشتركة أو شركات أخرى تتحكم فيها أو تخضع لسيطرة مشتركة معنا. </ li> <li> <strong> مع شركاء الأعمال: </strong> يجوز لنا مشاركة معلوماتك مع يقدم شركاء الأعمال لدينا منتجات أو خدمات أو عروض ترويجية معينة لك. </ li> <li> <strong> مع مستخدمين آخرين: </strong> عندما تشارك معلومات شخصية أو تتفاعل بطريقة أخرى في الأماكن العامة مع مستخدمين آخرين ، يمكن عرض هذه المعلومات من قبل جميع المستخدمين ويجوز توزيعها علنًا بالخارج. </ li> <li> <strong> بموافقتك </strong>: يجوز لنا الكشف عن معلوماتك الشخصية لأي غرض آخر بموافقتك. </ li> </ul>\r\n<h2 style=\"margin: 30px 0;\"> الاحتفاظ ببياناتك الشخصية </h2>\r\n<p> ستحتفظ الشركة ببياناتك الشخصية فقط طالما كان ذلك ضروريًا للأغراض المحددة\r\nفي سياسة الخصوصية هذه. سنحتفظ ببياناتك الشخصية ونستخدمها بالقدر اللازم للامتثال\r\nمع التزاماتنا القانونية (على سبيل المثال ، إذا طُلب منا الاحتفاظ ببياناتك للامتثال لها\r\nالقوانين المعمول بها) وحل النزاعات وفرض اتفاقياتنا وسياساتنا القانونية. </p>\r\n<p> ستحتفظ الشركة أيضًا ببيانات الاستخدام لأغراض التحليل الداخلي. بشكل عام ، يتم الاحتفاظ ببيانات الاستخدام لفترة زمنية أقصر ، إلا في حالة استخدام هذه البيانات لتعزيز الأمن أو لتحسين وظائف خدمتنا ، أو نحن ملزمون قانونًا بالاحتفاظ بهذه البيانات لفترات زمنية أطول. </p>\r\n<h2 style=\"margin: 30px 0;\"> نقل بياناتك الشخصية </h2>\r\n<p> تتم معالجة معلوماتك ، بما في ذلك البيانات الشخصية ، في مكاتب تشغيل الشركة وفي أي أماكن أخرى توجد بها الأطراف المشاركة في المعالجة. هذا يعني أن هذا\r\nقد يتم نقل المعلومات إلى - والاحتفاظ بها - لأجهزة الكمبيوتر الموجودة خارج ولايتك أو مقاطعتك أو بلدك أو أي سلطة قضائية حكومية أخرى حيث قد تختلف قوانين حماية البيانات عن تلك الموجودة في ولايتك القضائية. </p>\r\n<p> موافقتك على سياسة الخصوصية هذه متبوعة بتقديمك لهذه المعلومات يمثل موافقتك على هذا النقل. </p>\r\n<p> ستتخذ الشركة جميع الخطوات اللازمة بشكل معقول لضمان التعامل مع بياناتك بشكل آمن ووفقًا لسياسة الخصوصية هذه ولن يتم نقل بياناتك الشخصية إلى منظمة أو دولة ما لم تكن هناك ضوابط كافية مطبقة بما في ذلك أمان بياناتك والمعلومات الشخصية الأخرى. </p>\r\n<h2 style=\"margin: 30px 0;\"> حذف بياناتك الشخصية </h2>\r\n<p> لديك الحق في حذف أو طلب مساعدتنا في حذف البيانات الشخصية التي جمعناها عنك. </p>\r\n<p> قد تمنحك خدمتنا القدرة على حذف معلومات معينة عنك من داخل الخدمة. </p>\r\n<p> يمكنك تحديث معلوماتك أو تعديلها أو حذفها في أي وقت عن طريق تسجيل الدخول إلى حسابك ، إذا كان لديك حساب ، وزيارة قسم إعدادات الحساب الذي يسمح لك بإدارة معلوماتك الشخصية. يمكنك أيضًا الاتصال بنا لطلب الوصول إلى أي معلومات شخصية قدمتها لنا أو تصحيحها أو حذفها. </p>\r\n<p> ومع ذلك ، يرجى ملاحظة أننا قد نحتاج إلى الاحتفاظ بمعلومات معينة عندما يكون لدينا التزام قانوني أو أساس قانوني للقيام بذلك. </p>\r\n<h2 style=\"margin: 30px 0;\"> الكشف عن بياناتك الشخصية </h2>\r\n<h3 style=\"margin: 30px 0;\">المعاملات التجارية </h3>\r\n<p> إذا كانت الشركة متورطة في عملية دمج أو استحواذ أو بيع أصول ، فقد يتم نقل بياناتك الشخصية. سنقدم إشعارًا قبل نقل بياناتك الشخصية وخضوعها لسياسة خصوصية مختلفة. </p>\r\n<h3 style=\"margin: 30px 0;\">تطبيق القانون </h3>\r\n<p> في ظل ظروف معينة ، قد يُطلب من الشركة الكشف عن بياناتك الشخصية إذا طُلب منها ذلك بموجب القانون أو استجابة لطلبات صحيحة من قبل السلطات العامة (مثل محكمة أو وكالة حكومية). </p>\r\n<h3 style=\"margin: 30px 0;\">متطلبات قانونية أخرى </h3>\r\n<p> قد تفصح الشركة عن بياناتك الشخصية بحسن نية أن هذا الإجراء ضروري من أجل : </p>\r\n<ul> <li> الامتثال لالتزام قانوني </ li> <li> حماية حقوق أو ممتلكات الشركة والدفاع عنها </ li> <li> منع المخالفات المحتملة المتعلقة بالخدمة أو التحقيق فيها </ li> < li> حماية السلامة الشخصية لمستخدمي الخدمة أو الجمهور </ li> <li> الحماية من المسؤولية القانونية </ li> </ul>\r\n<h2> أمان بياناتك الشخصية </h2>\r\n<p> يعد أمان بياناتك الشخصية أمرًا مهمًا بالنسبة لنا ، ولكن تذكر أنه لا توجد طريقة نقل عبر الإنترنت أو طريقة تخزين إلكتروني آمنة بنسبة 100٪. بينما نسعى جاهدين لاستخدام وسائل مقبولة تجاريًا لحماية بياناتك الشخصية ، لا يمكننا ضمان أمنها المطلق. </p>\r\n<h1> خصوصية الأطفال </h1>\r\n<p> لا تخاطب خدمتنا أي شخص يقل عمره عن 13 عامًا. نحن لا نجمع عن قصد معلومات تعريف شخصية من أي شخص يقل عمره عن 13 عامًا. إذا كنت أحد الوالدين أو الوصي وتدرك أن طفلك قد زودنا ببيانات شخصية ، الرجاء التواصل معنا. إذا علمنا أننا قد جمعنا بيانات شخصية من أي شخص يقل عمره عن 13 عامًا دون التحقق من موافقة الوالدين ، فإننا نتخذ خطوات لإزالة هذه المعلومات من خوادمنا. </p>\r\n<p> إذا احتجنا إلى الاعتماد على الموافقة كأساس قانوني لمعالجة معلوماتك وكان بلدك يتطلب موافقة أحد الوالدين ، فقد نطلب موافقة والديك قبل أن نجمع هذه المعلومات ونستخدمها. </p>\r\n<h1 style=\"margin: 30px 0;\">  روابط لمواقع أخرى </h1>\r\n<p> قد تحتوي خدمتنا على روابط لمواقع أخرى لا نقوم بتشغيلها. إذا قمت بالنقر فوق ارتباط جهة خارجية ، فسيتم توجيهك إلى موقع هذا الطرف الثالث. ننصحك بشدة بمراجعة سياسة الخصوصية لكل موقع تزوره. </p>\r\n<p> ليس لدينا أي سيطرة ولا نتحمل أي مسؤولية عن المحتوى أو سياسات الخصوصية أو الممارسات الخاصة بأي مواقع أو خدمات تابعة لجهات خارجية. </p>\r\n<h1 style=\"margin: 30px 0;\">  التغييرات في سياسة الخصوصية هذه </h1>\r\n<p> قد نقوم بتحديث سياسة الخصوصية الخاصة بنا من وقت لآخر. سنخطرك بأي تغييرات عن طريق نشر سياسة الخصوصية الجديدة على هذه الصفحة. </p>\r\n<p> سنخبرك عبر البريد الإلكتروني و / أو إشعارًا بارزًا على \"خدمتنا\" ، قبل أن يصبح التغيير ساريًا ونقوم بتحديث & quot؛ آخر تحديث & quot؛ التاريخ في الجزء العلوي من سياسة الخصوصية هذه. </p>\r\n<p> يُنصح بمراجعة سياسة الخصوصية هذه بشكل دوري لمعرفة أي تغييرات. تسري التغييرات التي تطرأ على سياسة الخصوصية هذه عند نشرها على هذه الصفحة. </p>\r\n<h1 style=\"margin: 30px 0;\"> اتصل بنا </h1>\r\n<p> إذا كان لديك أي أسئلة حول سياسة الخصوصية هذه ، يمكنك الاتصال بنا : </p>\r\n<ul style = \"margin: 30px 0\"> <li> من خلال زيارة هذه الصفحة على موقعنا على الويب: <a href = \"https://ishop.cholobangla.com/\" rel = \"external nofollow noopener\" target = \"_ blank \"> https://ishop.cholobangla.com/ </a> </li> </ul>\r\n<p> تم إنشاؤه باستخدام <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\"target=\"_blank\"> منشئ سياسة الخصوصية المجاني </a> </p>\r\n\r\n', 'Ishop - يساعد', 'يساعد', 'ar', 6),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'خريطة الموقع', 'Sitemap', 'Ishop - خريطة الموقع', 'خريطة الموقع', 'ar', 7),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Hakkında', '<h1 style=\"margin: 30px 0;\">Hakkımızda</h1>\r\n<h2 style=\"margin: 30px 0;\">Tanımlar</h2>\r\n<p><strong>Hesap</strong>, Hizmetimize veya Hizmetimizin bölümlerine erişmeniz için Sizin için oluşturulan benzersiz bir hesap anlamına gelir.</p>\r\n<p><strong>Şirket</strong> (bu Sözleşmede \"Şirket\", \"Biz\", \"Biz\" veya \"Bizim\" olarak anılacaktır) ishop.cholobangla.com, Kanada anlamına gelir. <</p>\r\n<p><strong>Çerezler</strong>, bir web sitesi tarafından bilgisayarınıza, mobil cihazınıza veya başka herhangi bir cihaza yerleştirilen ve birçok kullanımının yanı sıra o web sitesindeki tarama geçmişinizin ayrıntılarını içeren küçük dosyalardır.</p>\r\n<p><strong>Ülke</strong> şu anlama gelir: New Brunswick, Kanada</p>\r\n<p><strong>Cihaz</strong> bilgisayar, cep telefonu veya dijital tablet gibi Hizmete erişebilen herhangi bir cihaz anlamına gelir.</p>\r\n<p><strong>Kişisel Veriler</strong>, kimliği belirli veya belirlenebilir bir gerçek kişiyle ilgili her türlü bilgidir.</p>\r\n<p><strong>Hizmet</strong>, Web Sitesini ifade eder.</p>\r\n<p><strong>Hizmet Sağlayıcı</strong> Şirket adına verileri işleyen her türlü gerçek veya tüzel kişi anlamına gelir. Hizmeti kolaylaştırmak, Hizmeti Şirket adına sağlamak, Hizmetle ilgili hizmetleri gerçekleştirmek veya Hizmetin nasıl kullanıldığını analiz etmede Şirkete yardımcı olmak için Şirket tarafından istihdam edilen üçüncü taraf şirketleri veya bireyleri ifade eder.</p>\r\n<p><strong>Kullanım Verileri</strong>, Hizmetin kullanımıyla veya Hizmet altyapısının kendisinden otomatik olarak toplanan verileri ifade eder (örneğin, bir sayfa ziyaretinin süresi).</p>\r\n<p><strong>Web sitesi</strong>, <a href=\"ishop.com\" rel=\"external nofollow noopener\" target=\"_blank\"> adresinden erişilebilen https://www.ishop.cholobangla.com/ anlamına gelir ishop.cholobangla.com</a></p>\r\n<p><strong>Siz</strong>, uygun olduğu şekilde, Hizmete erişen veya Hizmet\'i kullanan kişi veya söz konusu kişinin adına Hizmet\'e eriştiği veya Hizmet\'i kullandığı şirket veya başka bir tüzel kişilik anlamına gelir.</p>\r\n', 'Ishop - Hakkında', 'Hakkında', 'tr', 1),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'SSS', '<h1 style=\"margin: 30px 0;\">Sıkça sorulan sorular</h1>\r\n<h2 style=\"margin: 30px 0;\">Genel Bakış</h2>\r\n<p>ishop, çok satıcılı bir e-ticaret CMS\'dir. API <b>laravel</b>, yönetici paneli ve ön uç <strong>nuxt js</strong> ile oluşturulmuştur. Verileri <b>mysql depolamak için </b> kullanılıyor. Gelişmiş <b>önbelleğe alma</b> sistemi sayesinde sitenin performansı süper hızlıdır. Tamamen duyarlı ve son derece özelleştirilebilir. Normal lisans yönetici panelinde derleme dosyaları bulunmayacaktır, bu da yönetici panelinin herhangi bir tasarımını özelleştiremeyeceğiniz anlamına gelir. Ön uç ve API kaynak kodu, paket klasöründe bulunacaktır. Ön ucu ve API\'yi gereksinimlerinize göre kolayca özelleştirebilirsiniz. Yönetici paneli kaynak kodu, genişletilmiş lisansta bulunacaktır. Herhangi bir sorunuz için lütfen destek için ekibimizle <a href=\"mailto:iyozedcontact@gmail.com\" class=\"link\"><b>iyozedcontact@gmail.com</b></a></p> adresinden iletişime geçin.\r\n<h2 style=\"margin: 30px 0;\">Kullanıcılara kurulum desteği veriyor muyuz?</h2>\r\n<p>Evet, kullanıcılara kurulum desteği sağlıyoruz. İstediğiniz zaman bize e-posta göndermekten çekinmeyin.</p>\r\n<h2 style=\"margin: 30px 0;\">Kullanıcılara kurulum kılavuzu sağlıyor muyuz?</h2>\r\n<p>Evet, paketlerle birlikte kullanıcılara kurulum kılavuzu sağlıyoruz.</p>\r\n<h2 style=\"margin: 30px 0;\">Kullanıcıya geri dönmemiz ne kadar sürer?</h2>\r\n<p>Kullanıcılara en kısa sürede yanıt veriyoruz.</p>\r\n', 'Ishop - SSS', 'SSS', 'tr', 2),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Temas etmek', 'Contact', 'Ishop - Temas etmek', 'Temas etmek', 'tr', 3);
INSERT INTO `page_langs` (`id`, `created_at`, `updated_at`, `title`, `description`, `meta_title`, `meta_description`, `lang`, `page_id`) VALUES
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Geri ödeme politikası', '<h1 style= \"margin: 30px 0;\">Geri Ödeme Politikası</h1>\r\n<h2 style= \"margin: 30px 0;\">Tanımlar</h2>\r\n<p>Bu Gizlilik Politikasının amaçları doğrultusunda: </p>\r\n<p><strong>Hesap</strong>, Hizmetimize veya Hizmetimizin bölümlerine erişmeniz için Sizin için oluşturulan benzersiz bir hesap anlamına gelir.</p>\r\n<p><strong>Şirket</strong> (bu Sözleşmede \"Şirket\", \"Biz\", \"Biz\" veya \"Bizim\" olarak anılacaktır) ishop.cholobangla.com, Kanada anlamına gelir. </p>\r\n<p><strong>Çerezler</strong>, bir web sitesi tarafından bilgisayarınıza, mobil cihazınıza veya başka herhangi bir cihaza yerleştirilen ve birçok kullanımının yanı sıra o web sitesindeki tarama geçmişinizin ayrıntılarını içeren küçük dosyalardır.</p>\r\n<p><strong>Ülke</strong> şu anlama gelir: New Brunswick, Kanada</p>\r\n<p><strong>Cihaz</strong> bilgisayar, cep telefonu veya dijital tablet gibi Hizmete erişebilen herhangi bir cihaz anlamına gelir.</p>\r\n<p><strong>Kişisel Veri</strong>, kimliği belirli veya belirlenebilir bir gerçek kişiyle ilgili her türlü bilgidir.</p>\r\n<p><strong>Hizmet</strong>, Web Sitesini ifade eder.</p>\r\n<p><strong>Hizmet Sağlayıcı</strong> Şirket adına verileri işleyen her türlü gerçek veya tüzel kişi anlamına gelir. Hizmeti kolaylaştırmak, Hizmeti Şirket adına sağlamak, Hizmetle ilgili hizmetleri gerçekleştirmek veya Hizmetin nasıl kullanıldığını analiz etmede Şirkete yardımcı olmak için Şirket tarafından istihdam edilen üçüncü taraf şirketleri veya bireyleri ifade eder.</p>\r\n<p><strong>Kullanım Verileri</strong>, Hizmetin kullanımıyla veya Hizmet altyapısının kendisinden otomatik olarak toplanan verileri ifade eder (örneğin, bir sayfa ziyaretinin süresi).</p>\r\n, <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> adresinden erişilebilen https: //ishop.cholobangla.com/ anlamına gelir ishop.cholobangla.com</a></p>\r\n<p><strong>Siz</strong>, uygun olduğu şekilde, Hizmete erişen veya Hizmet\'i kullanan kişi veya söz konusu kişinin adına Hizmet\'e eriştiği veya Hizmet\'i kullandığı şirket veya diğer tüzel kişilik anlamına gelir.</p>\r\n<h1 style= \"margin: 30px 0;\">Kişisel Verilerinizin Toplanması ve Kullanılması</h1>\r\n<h2 style= \"margin: 30px 0;\">Toplanan Veri Türleri</h2>\r\n<h3 style= \"margin: 30px 0;\">Kişisel Veriler</h3>\r\n<p>Hizmetimizi kullanırken, Sizinle iletişim kurmak veya kimliğinizi belirlemek için kullanılabilecek bazı kişisel olarak tanımlanabilir bilgileri Bize vermenizi isteyebiliriz. Kişisel olarak tanımlanabilir bilgiler şunları içerebilir, ancak bunlarla sınırlı değildir: </p>\r\n<ul style= \"margin: 30px 0;\"><li>E-posta adresi</li><li>Ad ve soyadı</li><li>Adres, Eyalet, İl, Posta kodu, Şehir</li> li><li>Kullanım Verileri</li></ul>\r\n<h3 style= \"margin: 30px 0;\">Kullanım Verileri</h3>\r\n<p>Kullanım Verileri, Hizmet kullanılırken otomatik olarak toplanır.</p>\r\n<p>Kullanım Verileri, Cihazınızın İnternet Protokolü adresi (örn. IP adresi), tarayıcı türü, tarayıcı sürümü, Hizmetimizin ziyaret ettiğiniz sayfaları, ziyaretinizin saati ve tarihi, bu sayfalarda geçirilen süre gibi bilgileri içerebilir. , benzersiz cihaz tanımlayıcıları ve diğer teşhis verileri.</p>\r\n<p>Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde, kullandığınız mobil cihazın türü, mobil cihazınızın benzersiz kimliği, mobil cihazınızın IP adresi dahil ancak bunlarla sınırlı olmamak üzere belirli bilgileri otomatik olarak toplayabiliriz. , Mobil işletim sisteminiz, kullandığınız mobil İnternet tarayıcısının türü, benzersiz cihaz tanımlayıcıları ve diğer teşhis verileri.</p>\r\n<p>Ayrıca, Hizmetimizi her ziyaret ettiğinizde veya Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde tarayıcınızın gönderdiği bilgileri de toplayabiliriz.</p>\r\n<h3 style= \"margin: 30px 0;\">İzleme Teknolojileri ve Tanımlama Bilgileri</h3>\r\n<p>Hizmetimiz üzerindeki etkinliği izlemek ve belirli bilgileri depolamak için Çerezleri ve benzer izleme teknolojilerini kullanıyoruz. Kullanılan izleme teknolojileri, bilgi toplamak ve izlemek ve Hizmetimizi iyileştirmek ve analiz etmek için işaretçiler, etiketler ve komut dosyalarıdır. Kullandığımız teknolojiler şunları içerebilir: </p>\r\n<ul style= \"margin: 30px 0;\"><li><strong>Çerezler veya Tarayıcı Çerezleri.</strong> Çerez, Cihazınıza yerleştirilen küçük bir dosyadır. Tarayıcınıza tüm Çerezleri reddetmesi veya bir Çerez gönderildiğinde bunu belirtmesi talimatını verebilirsiniz. Ancak Çerezleri kabul etmezseniz Hizmetimizin bazı bölümlerini kullanamayabilirsiniz. Tarayıcı ayarlarınızı Çerezleri reddedecek şekilde değiştirmediyseniz, Hizmetimiz Çerezleri kullanabilir.</li><li><strong>Web İşaretçileri</strong> Hizmetimizin belirli bölümleri ve e-postalarımız küçük elektronik dosyalar içerebilir. Örneğin Şirketin bu sayfaları ziyaret eden veya bir e-posta açan kullanıcıları saymasına ve diğer ilgili web sitesi istatistiklerine (örneğin , belirli bir bölümün popülaritesini kaydetme ve sistem ile sunucu bütünlüğünü doğrulama).</li></ul>\r\n<p>Çerezler &quot;Kalıcı&quot; veya &quot;Oturum&quot; Kurabiye. Kalıcı Çerezler, siz çevrimdışı olduğunuzda kişisel bilgisayarınızda veya mobil cihazınızda kalırken, Oturum Çerezleri siz web tarayıcınızı kapattığınız anda silinir. <a href= \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> Ücretsiz Gizlilik Politikası web sitesi</a> makalesinden çerezler hakkında daha fazla bilgi edinin . </p>\r\n<p>Hem Oturum Çerezlerini hem de Kalıcı Çerezleri aşağıda belirtilen amaçlar için kullanıyoruz: </p>\r\n<p><strong>Gerekli / Temel Çerezler</strong></p>\r\n<p>Tür: Oturum Çerezleri</p>\r\n<p>Yöneten: Biz</p>\r\n<p>Amaç: Bu Çerezler, Size Web Sitesi aracılığıyla sunulan hizmetleri sağlamak ve bazı özelliklerini kullanmanızı sağlamak için gereklidir. Kullanıcıların kimliğini doğrulamaya ve kullanıcı hesaplarının hileli kullanımını önlemeye yardımcı olurlar. Bu Çerezler olmadan talep ettiğiniz hizmetler sağlanamaz ve Biz bu Çerezleri yalnızca Size bu hizmetleri sağlamak için kullanırız.</p>\r\n<p><strong>Çerez Politikası / Bildirim Kabul Çerezleri</strong></p>\r\n<p>Tür: Kalıcı Çerezler</p>\r\n<p>Yöneten: Biz</p>\r\n<p>Amaç: Bu Çerezler, kullanıcıların Web Sitesinde çerez kullanımını kabul edip etmediğini belirler.</p>\r\n<p><strong>İşlevsellik Çerezleri</strong></p>\r\n<p>Tür: Kalıcı Çerezler</p>\r\n<p>Yöneten: Biz</p>\r\n<p>Amaç: Bu Çerezler, oturum açma bilgilerinizi veya dil tercihinizi hatırlamak gibi Web Sitesini kullandığınızda yaptığınız seçimleri hatırlamamızı sağlar. Bu Çerezlerin amacı, Size daha kişisel bir deneyim sağlamak ve Web Sitesini her kullandığınızda tercihlerinizi yeniden girmek zorunda kalmamak.</p>\r\n<p>Kullandığımız çerezler ve çerezlerle ilgili tercihleriniz hakkında daha fazla bilgi için lütfen Çerez Politikamızı veya Gizlilik Politikamızın Çerezler bölümünü ziyaret edin.</p>\r\n<h2 style= \"margin: 30px 0;\">Kişisel Verilerinizin Kullanımı</h2>\r\n<p>Şirket, Kişisel Verileri aşağıdaki amaçlarla kullanabilir: </p>\r\n<p><strong>Hizmetimizin kullanımını izlemek de dahil olmak üzere Hizmetimizi sağlamak ve sürdürmek</strong>.</p>\r\n<p><strong>Hesabınızı yönetmek için: </strong> Hizmetin bir kullanıcısı olarak kaydınızı yönetmek için. Sağladığınız Kişisel Veriler, Hizmetin kayıtlı bir kullanıcı olarak kullanabileceğiniz farklı işlevlerine erişmenizi sağlayabilir.</p>\r\n<p><strong>Bir sözleşmenin ifası için: </strong> Satın aldığınız ürünler, öğeler veya hizmetler için satın alma sözleşmesinin veya Hizmet aracılığıyla Bizimle olan diğer herhangi bir sözleşmenin geliştirilmesi, uyumluluğu ve taahhüdü.</p>\r\n<p><strong>Sizinle iletişime geçmek için: </strong> Sizinle e-posta, telefon görüşmeleri, SMS veya bir mobil uygulamanın güncellemelerle ilgili push bildirimleri veya işlevlerle ilgili bilgilendirici iletişimler gibi diğer eşdeğer elektronik iletişim biçimleri aracılığıyla iletişim kurmak için, uygulamaları için gerekli veya makul olduğunda güvenlik güncellemeleri dahil ürünler veya sözleşmeli hizmetler.</p>\r\n<p><strong>Size, daha önce satın aldığınız veya sorguladığınız ürünlere benzer, sunduğumuz diğer mallar, hizmetler ve etkinlikler hakkında haberler, özel teklifler ve genel bilgiler sağlamak için</strong> Siz aksini seçmediğiniz sürece bu tür bilgileri almak.</p>\r\n<p><strong>Taleplerinizi yönetmek için: </strong> Bize olan isteklerinize katılmak ve bunları yönetmek için.</p>\r\n<p><strong>İş devirleri için: </strong> Bilgilerinizi bir birleşme, elden çıkarma, yeniden yapılandırma, yeniden düzenleme, tasfiye veya başka bir şekilde satış veya varlıklarımızın bir kısmının veya tamamının devrini değerlendirmek veya yürütmek için kullanabiliriz. Hizmet kullanıcılarımız hakkında Tarafımızca tutulan Kişisel Verilerin aktarılan varlıklar arasında yer aldığı iflas, tasfiye veya benzeri işlemlerin bir parçası olarak.</p>\r\n<p><strong>Başka amaçlar için</strong>: Bilgilerinizi veri analizi, kullanım trendlerini belirlemek, promosyon kampanyalarımızın etkinliğini belirlemek ve Hizmetimizi, ürünlerimizi, hizmetlerimizi değerlendirmek ve iyileştirmek gibi başka amaçlar için kullanabiliriz. , pazarlama ve deneyiminiz.</p>\r\n\r\n', 'Ishop - Geri ödeme politikası', 'Geri ödeme politikası', 'tr', 4),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Gizlilik Politikası', '<h1 style = \"margin: 30px 0;\">Gizlilik Politikası</h1>\r\n<p>Son güncelleme : 13 Aralık 2022</p>\r\n<p>Bu Gizlilik Politikası, Hizmeti kullandığınızda bilgilerinizin toplanması, kullanılması ve ifşa edilmesiyle ilgili politikalarımızı ve prosedürlerimizi açıklar ve Size gizlilik haklarınız ve kanunların Sizi nasıl koruduğu hakkında bilgi verir.</p>\r\n<p>Kişisel verilerinizi Hizmeti sağlamak ve iyileştirmek için kullanırız. Hizmeti kullanarak, bilgilerin bu Gizlilik Politikasına uygun olarak toplanmasını ve kullanılmasını kabul edersiniz. Bu Gizlilik Politikası, <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> Ücretsiz Gizlilik Politikası Oluşturucu</a>\'nun yardımıyla oluşturulmuştur . </p>\r\n<h1 style = \"margin: 30px 0;\">Yorum ve Tanımlar</h1>\r\n<h2 style = \"margin: 30px 0;\">Yorum</h2>\r\n<p>Baş harfi büyük olan kelimeler aşağıdaki şartlar altında tanımlanmış anlamlara sahiptir. Aşağıdaki tanımlar, ister tekil ister çoğul olsun, aynı anlamı taşıyacaktır.</p>\r\n<h2 style = \"margin: 30px 0;\">Tanımlar</h2>\r\n<p>Bu Gizlilik Politikasının amaçları doğrultusunda : </p>\r\n<strong>Hesap</strong>, Hizmetimize veya Hizmetimizin bölümlerine erişmeniz için Sizin için oluşturulan benzersiz bir hesap anlamına gelir.</p>\r\n<p><strong>Şirket</strong> (bu Sözleşmede \"Şirket\", \"Biz\", \"Biz\" veya \"Bizim\" olarak anılacaktır) ishop.cholobangla.com, Kanada anlamına gelir. </p>\r\n<p><strong>Çerezler</strong>, bir web sitesi tarafından bilgisayarınıza, mobil cihazınıza veya başka herhangi bir cihaza yerleştirilen ve birçok kullanımının yanı sıra o web sitesindeki tarama geçmişinizin ayrıntılarını içeren küçük dosyalardır.</p>\r\n<p><strong>Ülke</strong> şu anlama gelir : New Brunswick, Kanada</p>\r\n<p><strong>Cihaz</strong> bilgisayar, cep telefonu veya dijital tablet gibi Hizmete erişebilen herhangi bir cihaz anlamına gelir.</p>\r\n<p><strong>Kişisel Veri</strong>, kimliği belirli veya belirlenebilir bir gerçek kişiyle ilgili her türlü bilgidir.</p>\r\n<p><strong>Hizmet</strong>, Web Sitesini ifade eder.</p>\r\n<p><strong>Hizmet Sağlayıcı</strong> Şirket adına verileri işleyen her türlü gerçek veya tüzel kişi anlamına gelir. Hizmeti kolaylaştırmak, Hizmeti Şirket adına sağlamak, Hizmetle ilgili hizmetleri gerçekleştirmek veya Hizmetin nasıl kullanıldığını analiz etmede Şirkete yardımcı olmak için Şirket tarafından istihdam edilen üçüncü taraf şirketleri veya bireyleri ifade eder.</p>\r\n<p><strong>Kullanım Verileri</strong>, Hizmetin kullanımıyla veya Hizmet altyapısının kendisinden otomatik olarak toplanan verileri ifade eder (örneğin, bir sayfa ziyaretinin süresi).</p>\r\n, <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> adresinden erişilebilen https : //ishop.cholobangla.com/ anlamına gelir ishop.cholobangla.com</a></p>\r\n<p><strong>Siz</strong>, uygun olduğu şekilde, Hizmete erişen veya Hizmet\'i kullanan kişi veya söz konusu kişinin adına Hizmet\'e eriştiği veya Hizmet\'i kullandığı şirket veya diğer tüzel kişilik anlamına gelir.</p>\r\n<h1 style = \"margin: 30px 0;\">Kişisel Verilerinizin Toplanması ve Kullanılması</h1>\r\n<h2 style = \"margin: 30px 0;\">Toplanan Veri Türleri</h2>\r\n<h3 style = \"margin: 30px 0;\">Kişisel Veriler</h3>\r\n<p>Hizmetimizi kullanırken, Sizinle iletişim kurmak veya kimliğinizi belirlemek için kullanılabilecek bazı kişisel olarak tanımlanabilir bilgileri Bize vermenizi isteyebiliriz. Kişisel olarak tanımlanabilir bilgiler şunları içerebilir, ancak bunlarla sınırlı değildir : </p>\r\n<ul style = \"margin: 30px 0;\"><li>E-posta adresi</li><li>Ad ve soyadı</li><li>Adres, Eyalet, İl, Posta kodu, Şehir</li> li><li>Kullanım Verileri</li></ul>\r\n<h3 style = \"margin: 30px 0;\">Kullanım Verileri</h3>\r\n<p>Kullanım Verileri, Hizmet kullanılırken otomatik olarak toplanır.</p>\r\n<p>Kullanım Verileri, Cihazınızın İnternet Protokolü adresi (örn. IP adresi), tarayıcı türü, tarayıcı sürümü, Hizmetimizin ziyaret ettiğiniz sayfaları, ziyaretinizin saati ve tarihi, bu sayfalarda geçirilen süre gibi bilgileri içerebilir. , benzersiz cihaz tanımlayıcıları ve diğer teşhis verileri.</p>\r\n<p>Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde, kullandığınız mobil cihazın türü, mobil cihazınızın benzersiz kimliği, mobil cihazınızın IP adresi dahil ancak bunlarla sınırlı olmamak üzere belirli bilgileri otomatik olarak toplayabiliriz. , Mobil işletim sisteminiz, kullandığınız mobil İnternet tarayıcısının türü, benzersiz cihaz tanımlayıcıları ve diğer teşhis verileri.</p>\r\n<p>Ayrıca, Hizmetimizi her ziyaret ettiğinizde veya Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde tarayıcınızın gönderdiği bilgileri de toplayabiliriz.</p>\r\n<h3 style = \"margin: 30px 0;\">İzleme Teknolojileri ve Çerezler</h3>\r\n<p>Hizmetimiz üzerindeki etkinliği izlemek ve belirli bilgileri depolamak için Çerezleri ve benzer izleme teknolojilerini kullanıyoruz. Kullanılan izleme teknolojileri, bilgi toplamak ve izlemek ve Hizmetimizi iyileştirmek ve analiz etmek için işaretçiler, etiketler ve komut dosyalarıdır. Kullandığımız teknolojiler şunları içerebilir : </p>\r\n<p><strong>Çerezler veya Tarayıcı Çerezleri.</strong> Çerez, Cihazınıza yerleştirilen küçük bir dosyadır. Tarayıcınıza tüm Çerezleri reddetmesi veya bir Çerez gönderildiğinde bunu belirtmesi talimatını verebilirsiniz. Ancak Çerezleri kabul etmezseniz Hizmetimizin bazı bölümlerini kullanamayabilirsiniz. Tarayıcı ayarlarınızı Çerezleri reddedecek şekilde değiştirmediyseniz, Hizmetimiz Çerezleri kullanabilir.</p>\r\n<p><strong>Web İşaretçileri.</strong> Hizmetimizin belirli bölümleri ve e-postalarımız, web işaretçileri olarak bilinen (aynı zamanda açık gifler, piksel etiketleri ve tek pikselli gifler olarak da anılır) Şirkete izin veren küçük elektronik dosyalar içerebilir. örneğin, bu sayfaları ziyaret eden veya bir e-posta açan kullanıcıları saymak ve diğer ilgili web sitesi istatistikleri için (örneğin, belirli bir bölümün popülaritesini kaydetmek ve sistem ve sunucu bütünlüğünü doğrulamak).</p>\r\n<p>Çerezler &quot;Kalıcı&quot; veya &quot;Oturum&quot; Kurabiye. Kalıcı Çerezler, siz çevrimdışı olduğunuzda kişisel bilgisayarınızda veya mobil cihazınızda kalırken, Oturum Çerezleri siz web tarayıcınızı kapattığınız anda silinir. <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> Ücretsiz Gizlilik Politikası web sitesi</a> makalesinden çerezler hakkında daha fazla bilgi edinin . </p>\r\n<p>Hem Oturum Çerezlerini hem de Kalıcı Çerezleri aşağıda belirtilen amaçlar için kullanıyoruz : </p>\r\n<p><strong>Gerekli / Temel Çerezler</strong></p>\r\n<p>Tür : Oturum Çerezleri</p>\r\n<p>Yöneten : Biz</p>\r\n<p>Amaç : Bu Çerezler, Size Web Sitesi aracılığıyla sunulan hizmetleri sağlamak ve bazı özelliklerini kullanmanızı sağlamak için gereklidir. Kullanıcıların kimliğini doğrulamaya ve kullanıcı hesaplarının hileli kullanımını önlemeye yardımcı olurlar. Bu Çerezler olmadan talep ettiğiniz hizmetler sağlanamaz ve Biz bu Çerezleri yalnızca Size bu hizmetleri sağlamak için kullanırız.</p>\r\n<p><strong>Çerez Politikası / Bildirim Kabul Çerezleri</strong></p>\r\n<p>Tür : Kalıcı Çerezler</p>\r\n<p>Yöneten : Biz</p>\r\n<p>Amaç : Bu Çerezler, kullanıcıların Web Sitesinde çerez kullanımını kabul edip etmediğini belirler.</p>\r\n<p><strong>İşlevsellik Çerezleri</strong></p>\r\n<p>Tür : Kalıcı Çerezler</p>\r\n<p>Yöneten : Biz</p>\r\n<p>Amaç : Bu Çerezler, oturum açma bilgilerinizi veya dil tercihinizi hatırlamak gibi Web Sitesini kullandığınızda yaptığınız seçimleri hatırlamamıza izin verir. Bu Çerezlerin amacı, Size daha kişisel bir deneyim sağlamak ve Web Sitesini her kullandığınızda tercihlerinizi yeniden girmek zorunda kalmamak.</p>\r\n<p>Kullandığımız çerezler ve çerezlerle ilgili tercihleriniz hakkında daha fazla bilgi için lütfen Çerez Politikamızı veya Gizlilik Politikamızın Çerezler bölümünü ziyaret edin.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Kullanımı</h2>\r\n<p>Şirket, Kişisel Verileri aşağıdaki amaçlarla kullanabilir : </p>\r\n<p><strong>Hizmetimizin kullanımını izlemek de dahil olmak üzere Hizmetimizi sağlamak ve sürdürmek</strong>.</p>\r\n<p><strong>Hesabınızı yönetmek için : </strong> Hizmetin bir kullanıcısı olarak kaydınızı yönetmek için. Sağladığınız Kişisel Veriler, Hizmetin kayıtlı bir kullanıcı olarak kullanabileceğiniz farklı işlevlerine erişmenizi sağlayabilir.</p>\r\n<p><strong>Bir sözleşmenin ifası için : </strong> Satın aldığınız ürünler, öğeler veya hizmetler için satın alma sözleşmesinin veya Hizmet aracılığıyla Bizimle yapılan diğer herhangi bir sözleşmenin geliştirilmesi, uyumluluğu ve taahhüdü.</p>\r\n<p><strong>Sizinle iletişime geçmek için : </strong> Sizinle e-posta, telefon görüşmeleri, SMS veya bir mobil uygulamanın güncellemelerle ilgili push bildirimleri veya işlevlerle ilgili bilgilendirici iletişimler gibi diğer eşdeğer elektronik iletişim biçimleri aracılığıyla iletişim kurmak için, uygulamaları için gerekli veya makul olduğunda güvenlik güncellemeleri dahil ürünler veya sözleşmeli hizmetler.</p>\r\n<p><strong>Size, daha önce satın aldığınız veya sorguladığınız ürünlere benzer, sunduğumuz diğer mallar, hizmetler ve etkinlikler hakkında haberler, özel teklifler ve genel bilgiler sağlamak için</strong> Siz aksini seçmediğiniz sürece bu tür bilgileri almak.</p>\r\n<p><strong>Taleplerinizi yönetmek için : </strong> Bize olan isteklerinize katılmak ve bunları yönetmek için.</p>\r\n<p><strong>İş devirleri için : </strong> Bilgilerinizi bir birleşme, elden çıkarma, yeniden yapılandırma, yeniden düzenleme, tasfiye veya başka bir şekilde satış veya varlıklarımızın bir kısmının veya tamamının devrini değerlendirmek veya yürütmek için kullanabiliriz. Hizmet kullanıcılarımız hakkında Tarafımızca tutulan Kişisel Verilerin aktarılan varlıklar arasında yer aldığı iflas, tasfiye veya benzeri işlemlerin bir parçası olarak veya devam eden bir şirkette.</p>\r\n<p><strong>Başka amaçlar için</strong> : Bilgilerinizi veri analizi, kullanım trendlerini belirlemek, promosyon kampanyalarımızın etkinliğini belirlemek ve Hizmetimizi, ürünlerimizi, hizmetlerimizi değerlendirmek ve iyileştirmek gibi başka amaçlar için kullanabiliriz. , pazarlama ve deneyiminiz.</p>\r\n<p>Kişisel bilgilerinizi aşağıdaki durumlarda paylaşabiliriz : </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>Hizmet Sağlayıcılarla:</strong> Kişisel bilgilerinizi, Hizmetimizin kullanımını izlemek ve analiz etmek, Sizinle iletişim kurmak için Hizmet Sağlayıcılarla paylaşabiliriz.< /li><li><strong>İş devirleri için:</strong> Kişisel bilgilerinizi herhangi bir birleşme, Şirket varlıklarının satışı, finansmanı veya tamamının veya bir kısmının satın alınmasıyla bağlantılı olarak veya bunlarla ilgili müzakereler sırasında paylaşabilir veya aktarabiliriz. İşimizin bir kısmını başka bir şirkete devrederiz.</li><li><strong>Bağlı Kuruluşlarla:</strong> Bilgilerinizi bağlı şirketlerimizle paylaşabiliriz, bu durumda bu bağlı kuruluşların bu Gizlilik Politikasına uymasını zorunlu tutarız. İştirakler, ana şirketimizi ve diğer bağlı kuruluşları, ortak girişim ortaklarını veya kontrol ettiğimiz veya Bizimle ortak kontrol altında olan diğer şirketleri içerir.</li><li><strong>İş ortaklarıyla:</strong> Sizin bilgilerinizi paylaşabiliriz. Size belirli ürünleri, hizmetleri veya promosyonları sunmak için iş ortaklarımızla bilgi.</li><li><strong>Diğer kullanıcılarla:</strong> Kişisel bilgileri paylaştığınızda veya ortak alanlarda diğer kullanıcılarla etkileşimde bulunduğunuzda, örneğin bilgiler tüm kullanıcılar tarafından görüntülenebilir ve dışarıda herkese açık olarak dağıtılabilir.</li><li><strong>Sizin izninizle</strong>: Kişisel bilgilerinizi, Sizin izninizle başka herhangi bir amaçla ifşa edebiliriz.</li> </ul>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Saklanması</h2>\r\n<p>Şirket, Kişisel Verilerinizi yalnızca bu Gizlilik Politikasında belirtilen amaçlar için gerekli olduğu sürece saklayacaktır. Kişisel Verilerinizi yasal yükümlülüklerimize uymak (örneğin, geçerli yasalara uymak için verilerinizi saklamamız gerekiyorsa), anlaşmazlıkları çözmek ve yasal sözleşmelerimizi ve politikalarımızı uygulamak için gerekli olduğu ölçüde saklayacak ve kullanacağız.</p>\r\n<p>Şirket, Kullanım Verilerini dahili analiz amaçları için de saklayacaktır. Kullanım Verileri, bu verilerin güvenliği güçlendirmek veya Hizmetimizin işlevselliğini iyileştirmek için kullanıldığı veya yasal olarak bu verileri daha uzun süreler boyunca saklamak zorunda olduğumuz durumlar dışında, genellikle daha kısa bir süre için saklanır.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Aktarımı</h2>\r\n<p>Kişisel Veriler dahil olmak üzere bilgileriniz, Şirketin işletme ofislerinde ve işlemeye dahil olan tarafların bulunduğu diğer yerlerde işlenir. Bu, bu bilgilerin Sizin eyaletiniz, iliniz, ülkeniz veya veri koruma yasalarının Sizin yargı alanınızdan farklı olabileceği diğer hükümet yetki alanları dışında bulunan bilgisayarlara aktarılabileceği ve bu bilgisayarlarda tutulabileceği anlamına gelir.</p>\r\n<p>Bu Gizlilik Politikasına onay vermeniz ve ardından bu tür bilgileri göndermeniz, bu aktarımı kabul ettiğiniz anlamına gelir.</p>\r\n<p>Şirket, Verilerinizin güvenli bir şekilde ve bu Gizlilik Politikasına uygun olarak işlenmesini sağlamak için makul olarak gerekli tüm adımları atacaktır ve Kişisel Verileriniz, aşağıdakiler dahil olmak üzere yeterli kontroller olmadıkça herhangi bir kuruluşa veya ülkeye aktarılmayacaktır: Verilerinizin ve diğer kişisel bilgilerinizin güvenliği.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizi Silin</h2>\r\n<p>Sizinle ilgili topladığımız Kişisel Verileri silme veya silmemize yardımcı olmamızı talep etme hakkına sahipsiniz.</p>\r\n<p>Hizmetimiz, Size, Sizinle ilgili belirli bilgileri Hizmet içinden silme olanağı verebilir.</p>\r\n<p>Bilgilerinizi, varsa, Hesabınızda oturum açarak ve kişisel bilgilerinizi yönetmenize olanak tanıyan hesap ayarları bölümünü ziyaret ederek istediğiniz zaman güncelleyebilir, değiştirebilir veya silebilirsiniz. Bize sağladığınız herhangi bir kişisel bilgiye erişim, düzeltme veya silme talebinde bulunmak için de bizimle iletişime geçebilirsiniz.</p>\r\n<p>Bununla birlikte, yasal bir yükümlülüğümüz veya yasal dayanağımız olduğunda belirli bilgileri saklamamız gerekebileceğini lütfen unutmayın.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Açıklanması</h2>\r\n<h3 style = \"margin: 30px 0;\">Ticari İşlemler</h3>\r\n<p>Şirketin bir birleşme, devralma veya varlık satışına dahil olması durumunda Kişisel Verileriniz aktarılabilir. Kişisel Verileriniz aktarılmadan ve farklı bir Gizlilik Politikasına tabi hale gelmeden önce bildirimde bulunacağız.</p>\r\n<h3 style = \"margin: 30px 0;\">Kanun yaptırımı</h3>\r\n<p>Belirli koşullar altında, Şirketin Kişisel Verilerinizi kanunen gerektirmesi halinde veya kamu makamlarının (örneğin bir mahkeme veya devlet kurumu) geçerli taleplerine yanıt olarak ifşa etmesi gerekebilir.</p>\r\n<h3 style = \"margin: 30px 0;\">Diğer yasal gereklilikler</h3>\r\n<p>Şirket, Kişisel Verilerinizi aşağıdakiler için gerekli olduğuna iyi niyetle inanarak ifşa edebilir : </p>\r\n<ul><li>Yasal bir yükümlülüğe uymak</li><li>Şirketin haklarını veya mülkiyetini korumak ve savunmak</li><li>Hizmetle bağlantılı olası yanlışları önlemek veya araştırmak</li>< li>Hizmet Kullanıcılarının veya kamunun kişisel güvenliğini korumak</li><li>Yasal sorumluluğa karşı korumak</li></ul>\r\n<h2>Kişisel Verilerinizin Güvenliği</h2>\r\n<p>Kişisel Verilerinizin güvenliği Bizim için önemlidir, ancak İnternet üzerinden hiçbir aktarım yönteminin veya elektronik depolama yönteminin %100 güvenli olmadığını unutmayın. Kişisel Verilerinizi korumak için ticari olarak kabul edilebilir yöntemler kullanmaya çalışsak da mutlak güvenliğini garanti edemeyiz.</p>\r\n<h1>Çocukların Gizliliği</h1>\r\n<p>Hizmetimiz 13 yaşın altındaki hiç kimseye hitap etmemektedir. 13 yaşın altındaki hiç kimseden bilerek kişisel olarak tanımlanabilir bilgi toplamıyoruz. Ebeveyn veya vasiyseniz ve çocuğunuzun Bize Kişisel Bilgiler sağladığının farkındaysanız Veri, lütfen Bizimle iletişime geçin. Ebeveyn onayını doğrulamadan 13 yaşın altındaki herhangi birinden Kişisel Veriler topladığımızı fark edersek, bu bilgileri sunucularımızdan kaldırmak için gerekli adımları atarız.</p>\r\n<p>Bilgilerinizi işlemek için yasal bir dayanak olarak iznimize güvenmemiz gerekirse ve Ülkeniz bir ebeveynin onayını gerektiriyorsa, bu bilgileri toplayıp kullanmadan önce ebeveyninizin onayını isteyebiliriz.</p>\r\n<h1 style = \"margin: 30px 0;\">Diğer Web Sitelerine Bağlantılar</h1>\r\n<p>Hizmetimiz, Bizim tarafımızdan işletilmeyen diğer web sitelerine bağlantılar içerebilir. Bir üçüncü şahıs bağlantısına tıklarsanız, o üçüncü şahsın sitesine yönlendirileceksiniz. Ziyaret ettiğiniz her sitenin Gizlilik Politikasını incelemenizi önemle tavsiye ederiz.</p>\r\n<p>Üçüncü taraf sitelerinin veya hizmetlerinin içeriği, gizlilik politikaları veya uygulamaları üzerinde hiçbir kontrolümüz yoktur ve hiçbir sorumluluk üstlenmeyiz.</p>\r\n<h1 style = \"margin: 30px 0;\">Bu Gizlilik Politikasındaki Değişiklikler</h1>\r\n<p>Gizlilik Politikamızı zaman zaman güncelleyebiliriz. Yeni Gizlilik Politikasını bu sayfada yayınlayarak sizi herhangi bir değişiklikten haberdar edeceğiz.</p>\r\n<p>Değişiklik yürürlüğe girmeden ve &quot;Son güncelleme&quot; bu Gizlilik Politikasının üst kısmındaki tarih.</p>\r\n<p>Herhangi bir değişiklik için bu Gizlilik Politikasını düzenli olarak gözden geçirmeniz önerilir. Bu Gizlilik Politikasında yapılan değişiklikler, bu sayfada yayınlandıklarında geçerli olur.</p>\r\n<h1 style = \"margin: 30px 0;\">Bize Ulaşın</h1>\r\n<p>Bu Gizlilik Politikası hakkında herhangi bir sorunuz varsa, bizimle iletişime geçebilirsiniz : </p>\r\n<ul style = \"margin: 30px 0;\"><li>Web sitemizdeki bu sayfayı ziyaret ederek: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n\r\n', 'Ishop - Gizlilik Politikası', 'Gizlilik Politikası', 'tr', 5),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Yardım', '<h1 style = \"margin: 30px 0;\">Yardım</h1>\r\n<p>Bu Gizlilik Politikası, Hizmeti kullandığınızda bilgilerinizin toplanması, kullanılması ve ifşa edilmesiyle ilgili politikalarımızı ve prosedürlerimizi açıklar ve Size gizlilik haklarınız ve kanunların Sizi nasıl koruduğu hakkında bilgi verir.</p>\r\n<p>Kişisel verilerinizi Hizmeti sağlamak ve iyileştirmek için kullanırız. Hizmeti kullanarak, bilgilerin bu Gizlilik Politikasına uygun olarak toplanmasını ve kullanılmasını kabul edersiniz. Bu Gizlilik Politikası, <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> Ücretsiz Gizlilik Politikası Oluşturucu</a>\'nun yardımıyla oluşturulmuştur . </p>\r\n<h1 style = \"margin: 30px 0;\">Yorum ve Tanımlar</h1>\r\n<h2 style = \"margin: 30px 0;\">Yorum</h2>\r\n<p>Baş harfi büyük olan kelimeler aşağıdaki şartlar altında tanımlanmış anlamlara sahiptir. Aşağıdaki tanımlar, ister tekil ister çoğul olsun, aynı anlamı taşıyacaktır.</p>\r\n<h2 style = \"margin: 30px 0;\">Tanımlar</h2>\r\n<p>Bu Gizlilik Politikasının amaçları doğrultusunda : </p>\r\n<p><strong>Hesap</strong>, Hizmetimize veya Hizmetimizin bölümlerine erişmeniz için Sizin için oluşturulan benzersiz bir hesap anlamına gelir.</p>\r\n<p><strong>Şirket</strong> (bu Sözleşmede \"Şirket\", \"Biz\", \"Bize\" veya \"Bizim\" olarak anılacaktır) ishop.cholobangla.com, Kanada anlamına gelir. </p>\r\n<p><strong>Çerezler</strong>, bir web sitesi tarafından bilgisayarınıza, mobil cihazınıza veya başka herhangi bir cihaza yerleştirilen ve birçok kullanımının yanı sıra o web sitesindeki tarama geçmişinizin ayrıntılarını içeren küçük dosyalardır.</p>\r\n<p><strong>Ülke</strong> şu anlama gelir : New Brunswick, Kanada</p>\r\n<p><strong>Cihaz</strong> bilgisayar, cep telefonu veya dijital tablet gibi Hizmete erişebilen herhangi bir cihaz anlamına gelir.</p>\r\n<p><strong>Kişisel Veriler</strong>, kimliği belirli veya belirlenebilir bir gerçek kişiyle ilgili her türlü bilgidir.</p>\r\n<p><strong>Hizmet</strong>, Web Sitesini ifade eder.</p>\r\n<p><strong>Hizmet Sağlayıcı</strong> Şirket adına verileri işleyen her türlü gerçek veya tüzel kişi anlamına gelir. Hizmeti kolaylaştırmak, Hizmeti Şirket adına sağlamak, Hizmetle ilgili hizmetleri gerçekleştirmek veya Hizmetin nasıl kullanıldığını analiz etmede Şirkete yardımcı olmak için Şirket tarafından istihdam edilen üçüncü taraf şirketleri veya bireyleri ifade eder.</p>\r\n<p><strong>Kullanım Verileri</strong>, Hizmetin kullanımıyla veya Hizmet altyapısının kendisinden otomatik olarak toplanan verileri ifade eder (örneğin, bir sayfa ziyaretinin süresi).</p>\r\n, <a href=\"ishop.cholobangla\" rel=\"external nofollow noopener\" target=\"_blank\">ishop\'tan erişilebilen https : //ishop.cholobangla.com/ anlamına gelir . Cholobangla.com</a></p>\r\n<p><strong>Siz</strong>, uygun olduğu şekilde, Hizmete erişen veya Hizmeti kullanan kişi veya söz konusu kişinin adına Hizmete eriştiği veya Hizmeti kullandığı şirket veya diğer tüzel kişilik anlamına gelir.</p>\r\n<h1 style = \"margin: 30px 0;\">Kişisel Verilerinizin Toplanması ve Kullanılması</h1>\r\n<h2 style = \"margin: 30px 0;\">Toplanan Veri Türleri</h2>\r\n<h3 style = \"margin: 30px 0;\">Kişisel Veriler</h3>\r\n<p>Hizmetimizi kullanırken, Sizinle iletişim kurmak veya kimliğinizi belirlemek için kullanılabilecek bazı kişisel olarak tanımlanabilir bilgileri Bize vermenizi isteyebiliriz. Kişisel olarak tanımlanabilir bilgiler şunları içerebilir, ancak bunlarla sınırlı değildir : </p>\r\n<ul style = \"margin: 30px 0;\"><li>E-posta adresi</li><li>Ad ve soyadı</li><li>Adres, Eyalet, İl, Posta kodu, Şehir</li> li><li>Kullanım Verileri</li></ul>\r\n<h3 style = \"margin: 30px 0;\">Kullanım Verileri</h3>\r\n<p>Kullanım Verileri, Hizmet kullanılırken otomatik olarak toplanır.</p><p>Kullanım Verileri, Cihazınızın İnternet Protokol adresi (örn. IP adresi), tarayıcı türü, tarayıcı sürümü, Hizmetimizin hangi sayfaları gibi bilgileri içerebilir. Ziyaretiniz, ziyaretinizin saati ve tarihi, bu sayfalarda geçirilen süre, benzersiz cihaz tanımlayıcıları ve diğer teşhis verileri.</p><p>Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde, belirli bilgileri otomatik olarak toplayabiliriz. Kullandığınız mobil cihazın türü, mobil cihazınızın benzersiz kimliği, mobil cihazınızın IP adresi, mobil işletim sisteminiz, kullandığınız mobil İnternet tarayıcısının türü, benzersiz cihaz tanımlayıcıları ve diğer teşhis dahil ancak bunlarla sınırlı olmamak üzere veriler.</p>\r\n<p>Ayrıca, Hizmetimizi her ziyaret ettiğinizde veya Hizmete bir mobil cihaz aracılığıyla veya aracılığıyla eriştiğinizde tarayıcınızın gönderdiği bilgileri de toplayabiliriz.</p>\r\n<h3 style = \"margin: 30px 0;\">İzleme Teknolojileri ve Çerezler</h3>\r\n<p>Hizmetimiz üzerindeki etkinliği izlemek ve belirli bilgileri depolamak için Çerezleri ve benzer izleme teknolojilerini kullanıyoruz. Kullanılan izleme teknolojileri, bilgi toplamak ve izlemek ve Hizmetimizi iyileştirmek ve analiz etmek için işaretçiler, etiketler ve komut dosyalarıdır. Kullandığımız teknolojiler şunları içerebilir : </p>\r\n<p><strong>Çerezler veya Tarayıcı Çerezleri.</strong> Çerez, Cihazınıza yerleştirilen küçük bir dosyadır. Tarayıcınıza tüm Çerezleri reddetmesi veya bir Çerez gönderildiğinde bunu belirtmesi talimatını verebilirsiniz. Ancak Çerezleri kabul etmezseniz Hizmetimizin bazı bölümlerini kullanamayabilirsiniz. Tarayıcı ayarlarınızı Çerezleri reddedecek şekilde değiştirmediyseniz, Hizmetimiz Çerezleri kullanabilir. </p>\r\n<p><strong>Web İşaretçileri.</strong> Hizmetimizin belirli bölümleri ve e-postalarımız küçük\r\nŞirketin, örneğin bunları ziyaret eden kullanıcıları saymasına izin veren, web işaretçileri olarak bilinen elektronik dosyalar (ayrıca net gifler, piksel etiketleri ve tek pikselli gifler olarak da anılır).\r\nsayfaları veya bir e-postayı ve diğer ilgili web sitesi istatistiklerini açtı (örneğin, belirli bir bölümün popülaritesini kaydetme ve sistem ve sunucu bütünlüğünü doğrulama).</p>\r\n<p>Çerezler &quot;Kalıcı&quot; veya &quot;Oturum&quot; Kurabiye. Kalıcı Çerezler, siz çevrimdışı olduğunuzda kişisel bilgisayarınızda veya mobil cihazınızda kalırken, Oturum Çerezleri siz web tarayıcınızı kapattığınız anda silinir. <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> Ücretsiz Gizlilik Politikası web sitesi</a> makalesinden çerezler hakkında daha fazla bilgi edinin . </p>\r\n<p>Hem Oturum Çerezlerini hem de Kalıcı Çerezleri aşağıda belirtilen amaçlar için kullanıyoruz : </p>\r\n<p><strong>Gerekli / Temel Çerezler</strong></p>\r\n<p>Tür : Oturum Çerezleri</p>\r\n<p>Yöneten : Biz</p>\r\n<p>Amaç : Bu Çerezler, Size Web Sitesi aracılığıyla sunulan hizmetleri sağlamak ve bazı özelliklerini kullanmanızı sağlamak için gereklidir. Kullanıcıların kimliğini doğrulamaya ve kullanıcı hesaplarının hileli kullanımını önlemeye yardımcı olurlar. Bu Çerezler olmadan talep ettiğiniz hizmetler sağlanamaz ve Biz bu Çerezleri yalnızca Size bu hizmetleri sağlamak için kullanırız.</p>\r\n<p><strong>Çerez Politikası / Bildirim Kabul Çerezleri</strong></p>\r\n<p>Tür : Kalıcı Çerezler</p><p>Yöneten: Biz</p><p>Amaç: Bu Çerezler, kullanıcıların Web Sitesinde çerez kullanımını kabul edip etmediğini belirler.</p><p>< güçlü>İşlevsellik Çerezleri</strong></p><p>Tür: Kalıcı Çerezler</p><p>Yöneten: Biz</p><p>Amaç: Bu Çerezler, Yaptığınız seçimleri hatırlamamızı sağlar. giriş bilgilerinizi veya dil tercihinizi hatırlamak gibi Web Sitesini kullanın. Bu Çerezlerin amacı, Size daha kişisel bir deneyim sağlamak ve Web Sitesini her kullandığınızda tercihlerinizi yeniden girmek zorunda kalmamak.</p><p>Kullandığımız çerezler ve çerezlerle ilgili tercihleriniz hakkında daha fazla bilgi için , lütfen Çerez Politikamızı veya Gizlilik Politikamızın Çerezler bölümünü ziyaret edin.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Kullanımı</h2><p>Şirket, Kişisel Verilerinizi aşağıdaki amaçlarla kullanabilir:</p>\r\n<p><strong>Hizmetimizin kullanımını izlemek de dahil olmak üzere Hizmetimizi sağlamak ve sürdürmek</strong>.</p>\r\n<p><strong>Hesabınızı yönetmek için : </strong> Hizmetin bir kullanıcısı olarak kaydınızı yönetmek için. Sağladığınız Kişisel Veriler, Kayıtlı bir kullanıcı olarak Size sunulan Hizmetin farklı işlevlerine erişmenizi sağlayabilir.</p><p><strong>Bir sözleşmenin ifası için:</strong> geliştirme, uyumluluk ve taahhüt satın aldığınız ürünler, öğeler veya hizmetler için satın alma sözleşmesinin veya Hizmet aracılığıyla Bizimle yapılan diğer tüm sözleşmelerin.</p><p><strong>Sizinle iletişim kurmak için:</strong> Sizinle e-posta, telefon aramaları yoluyla iletişim kurmak için , SMS veya diğer eşdeğer elektronik iletişim biçimleri, örneğin güvenlik güncellemeleri de dahil olmak üzere işlevsellikler, ürünler veya sözleşmeli hizmetlerle ilgili güncellemelere ilişkin mobil uygulamanın push bildirimleri veya bilgilendirici iletişimler, bunların uygulanması için gerekli veya makul olduğunda.</p><p>< Bu tür bilgileri almamayı seçmediğiniz sürece, halihazırda satın aldığınız veya sorguladığınız ürünlere benzer sunduğumuz diğer mallar, hizmetler ve etkinlikler hakkında güçlü>Size</strong> haberler, özel teklifler ve genel bilgiler sağlamak.</strong> p><p><strong>Taleplerinizi yönetmek için:</strong> Bize olan isteklerinize katılmak ve bunları yönetmek için.</p><p><strong>İş transferleri için:</strong> Bilgilerinizi şu amaçlarla kullanabiliriz: devam eden bir işletme olarak veya iflas, tasfiye veya benzeri bir sürecin bir parçası olarak, Kişisel Verilerin Tarafımızca tutulduğu birleştirme, elden çıkarma, yeniden yapılandırma, yeniden düzenleme, tasfiye veya başka bir şekilde satış veya devrini değerlendirmek veya yürütmek Hizmet kullanıcılarımız, aktarılan varlıklar arasındadır.</p>\r\n<p><strong>Başka amaçlar için</strong> : Bilgilerinizi veri analizi, kullanım trendlerini belirlemek, promosyon kampanyalarımızın etkinliğini belirlemek ve Hizmetimizi, ürünlerimizi, hizmetlerimizi, pazarlamamızı değerlendirmek ve geliştirmek gibi başka amaçlar için kullanabiliriz. ve deneyiminiz.</p>\r\n<p>Kişisel bilgilerinizi aşağıdaki durumlarda paylaşabiliriz : </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>Hizmet Sağlayıcılarla:</strong> Kişisel bilgilerinizi, Hizmetimizin kullanımını izlemek ve analiz etmek, Sizinle iletişim kurmak için Hizmet Sağlayıcılarla paylaşabiliriz.</strong> li><li><strong>İş devirleri için:</strong> Kişisel bilgilerinizi herhangi bir birleşme, Şirket varlıklarının satışı, finansmanı veya Şirketimizin tamamının veya bir kısmının satın alınmasıyla bağlantılı olarak veya bunlarla ilgili müzakereler sırasında paylaşabilir veya aktarabiliriz. başka bir şirkete iş.</li><li><strong>İştiraklerle:</strong> Bilgilerinizi bağlı şirketlerimizle paylaşabiliriz, bu durumda bu bağlı kuruluşların bu Gizlilik Politikasına uymasını zorunlu tutarız. İştirakler, Ana şirketimizi ve kontrolümüz altında olan veya Bizimle ortak kontrol altında olan diğer yan kuruluşları, ortak girişim ortaklarını veya diğer şirketleri içerir.</li><li><strong>İş ortaklarıyla:</strong> Bilgilerinizi şu kişilerle paylaşabiliriz: İş ortaklarımızın Size belirli ürünler, hizmetler veya promosyonlar sunması için.</li><li><strong>Diğer kullanıcılarla:</strong> Kişisel bilgilerinizi paylaştığınızda veya halka açık alanlarda başka kullanıcılarla etkileşimde bulunduğunuzda, bu tür bilgiler görüntülenebilir. tüm kullanıcılar tarafından paylaşılabilir ve dışarıda halka açık olarak dağıtılabilir.</li><li><strong>Sizin izninizle</strong>: Kişisel bilgilerinizi, Sizin izninizle başka herhangi bir amaçla ifşa edebiliriz.</li></ul>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Saklanması</h2>\r\n<p>Şirket, Kişisel Verilerinizi yalnızca belirtilen amaçlar için gerekli olduğu sürece saklayacaktır.\r\nbu Gizlilik Politikasında. Kişisel Verilerinizi, uymak için gerekli olduğu ölçüde saklayacak ve kullanacağız.\r\nyasal yükümlülüklerimizle (örneğin, verilerinizi yasalara uymak için saklamamız gerekiyorsa)\r\nyürürlükteki yasalar), anlaşmazlıkları çözün ve yasal sözleşmelerimizi ve politikalarımızı uygulayın.</p>\r\n<p>Şirket, Kullanım Verilerini dahili analiz amaçları için de saklayacaktır. Kullanım Verileri, bu verilerin güvenliği güçlendirmek veya Hizmetimizin işlevselliğini iyileştirmek için kullanıldığı veya yasal olarak bu verileri daha uzun süreler boyunca saklamak zorunda olduğumuz durumlar dışında, genellikle daha kısa bir süre için saklanır.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Aktarımı</h2>\r\n<p>Kişisel Veriler dahil olmak üzere bilgileriniz, Şirketin işletme ofislerinde ve işlemeye dahil olan tarafların bulunduğu diğer yerlerde işlenir. Bunun anlamı\r\nbilgiler Sizin eyaletiniz, iliniz, ülkeniz veya veri koruma yasalarının Sizin yargı alanınızdan farklı olabileceği diğer hükümet yetki alanları dışında bulunan bilgisayarlara aktarılabilir ve bu bilgisayarlarda tutulabilir.</p>\r\n<p>Bu Gizlilik Politikasına onay vermeniz ve ardından bu tür bilgileri göndermeniz, bu aktarımı kabul ettiğiniz anlamına gelir.</p>\r\n<p>Şirket, Verilerinizin güvenli bir şekilde ve bu Gizlilik Politikasına uygun olarak işlenmesini sağlamak için makul olarak gerekli tüm adımları atacaktır ve Kişisel Verileriniz, aşağıdakiler dahil olmak üzere yeterli kontroller olmadıkça herhangi bir kuruluşa veya ülkeye aktarılmayacaktır: Verilerinizin ve diğer kişisel bilgilerinizin güvenliği.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizi Silin</h2>\r\n<p>Sizinle ilgili topladığımız Kişisel Verileri silme veya silmemize yardımcı olmamızı talep etme hakkına sahipsiniz.</p>\r\n<p>Hizmetimiz, Size, Sizinle ilgili bazı bilgileri Hizmet içinden silme olanağı verebilir.</p>\r\n<p>Bilgilerinizi, varsa, Hesabınızda oturum açarak ve kişisel bilgilerinizi yönetmenize izin veren hesap ayarları bölümünü ziyaret ederek istediğiniz zaman güncelleyebilir, değiştirebilir veya silebilirsiniz. Bize sağladığınız herhangi bir kişisel bilgiye erişim, düzeltme veya silme talebinde bulunmak için de bizimle iletişime geçebilirsiniz.</p>\r\n<p>Bununla birlikte, yasal bir yükümlülüğümüz veya yasal dayanağımız olduğunda belirli bilgileri saklamamız gerekebileceğini lütfen unutmayın.</p>\r\n<h2 style = \"margin: 30px 0;\">Kişisel Verilerinizin Açıklanması</h2>\r\n<h3 style = \"margin: 30px 0;\">Ticari İşlemler</h3>\r\n<p>Şirketin bir birleşme, devralma veya varlık satışına dahil olması durumunda Kişisel Verileriniz aktarılabilir. Kişisel Verileriniz aktarılmadan ve farklı bir Gizlilik Politikasına tabi hale gelmeden önce bildirimde bulunacağız.</p>\r\n<h3 style = \"margin: 30px 0;\">Kanun yaptırımı</h3>\r\n<p>Belirli koşullar altında, Şirketin Kişisel Verilerinizi kanunen gerektirmesi halinde veya kamu makamlarının (örneğin bir mahkeme veya devlet kurumu) geçerli taleplerine yanıt olarak ifşa etmesi gerekebilir.</p>\r\n<h3 style = \"margin: 30px 0;\">Diğer yasal gereklilikler</h3>\r\n<p>Şirket, Kişisel Verilerinizi aşağıdakiler için gerekli olduğuna iyi niyetle inanarak ifşa edebilir : </p>\r\n<ul><li>Yasal bir yükümlülüğe uymak</li><li>Şirketin haklarını veya mülkiyetini korumak ve savunmak</li><li>Hizmetle bağlantılı olası yanlışları önlemek veya araştırmak</li>< li>Hizmet Kullanıcılarının veya kamunun kişisel güvenliğini korumak</li><li>Yasal sorumluluğa karşı korumak</li></ul>\r\n<h2>Kişisel Verilerinizin Güvenliği</h2>\r\n<p>Kişisel Verilerinizin güvenliği Bizim için önemlidir, ancak İnternet üzerinden hiçbir aktarım yönteminin veya elektronik depolama yönteminin %100 güvenli olmadığını unutmayın. Kişisel Verilerinizi korumak için ticari olarak kabul edilebilir yöntemler kullanmaya çalışsak da mutlak güvenliğini garanti edemeyiz.</p>\r\n<h1>Çocukların Gizliliği</h1>\r\n<p>Hizmetimiz 13 yaşın altındaki hiç kimseye hitap etmemektedir. 13 yaşın altındaki hiç kimseden kişisel olarak tanımlanabilir bilgileri bilerek toplamıyoruz. Bir ebeveyn veya vasiyseniz ve çocuğunuzun Bize Kişisel Veriler sağladığının farkındaysanız , lütfen bizimle iletişime geçin. Ebeveyn onayını doğrulamadan 13 yaşın altındaki herhangi birinden Kişisel Veriler topladığımızı fark edersek, bu bilgileri sunucularımızdan kaldırmak için gerekli adımları atarız.</p>\r\n<p>Bilgilerinizi işlemek için yasal bir dayanak olarak iznimize güvenmemiz gerekirse ve Ülkeniz bir ebeveynin onayını gerektiriyorsa, bu bilgileri toplayıp kullanmadan önce ebeveyninizin onayını isteyebiliriz.</p>\r\n<h1 style = \"margin: 30px 0;\">Diğer Web Sitelerine Bağlantılar</h1>\r\n<p>Hizmetimiz, Bizim tarafımızdan işletilmeyen diğer web sitelerine bağlantılar içerebilir. Bir üçüncü şahıs bağlantısına tıklarsanız, o üçüncü şahsın sitesine yönlendirileceksiniz. Ziyaret ettiğiniz her sitenin Gizlilik Politikasını incelemenizi önemle tavsiye ederiz.</p>\r\n<p>Üçüncü taraf sitelerinin veya hizmetlerinin içeriği, gizlilik politikaları veya uygulamaları üzerinde hiçbir kontrolümüz yoktur ve hiçbir sorumluluk üstlenmeyiz.</p>\r\n<h1 style = \"margin: 30px 0;\">Bu Gizlilik Politikasındaki Değişiklikler</h1>\r\n<p>Gizlilik Politikamızı zaman zaman güncelleyebiliriz. Yeni Gizlilik Politikasını bu sayfada yayınlayarak sizi herhangi bir değişiklikten haberdar edeceğiz.</p>\r\n<p>Değişiklik yürürlüğe girmeden ve &quot;Son güncelleme&quot; bu Gizlilik Politikasının üst kısmındaki tarih.</p>\r\n<p>Herhangi bir değişiklik için bu Gizlilik Politikasını düzenli olarak gözden geçirmeniz önerilir. Bu Gizlilik Politikasında yapılan değişiklikler, bu sayfada yayınlandığında yürürlüğe girer.</p>\r\n<h1 style = \"margin: 30px 0;\">Bize Ulaşın</h1>\r\n<p>Bu Gizlilik Politikası hakkında herhangi bir sorunuz varsa, bizimle iletişime geçebilirsiniz : </p>\r\n<ul style = \"margin: 30px 0;\"><li>Web sitemizdeki bu sayfayı ziyaret ederek: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n<p> <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\"target=\"_blank\"> Ücretsiz Gizlilik Politikası Oluşturucu</a></p> kullanılarak oluşturulmuştur.\r\n\r\n', 'Ishop - Yardım', 'Yardım', 'tr', 6),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'site haritası', 'Sitemap', 'Ishop - site haritası', 'site haritası', 'tr', 7),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'À propos', '<h1 style=\"margin : 30px 0 ;\">À propos de nous</h1>\r\n<h2 style=\"margin : 30px 0 ;\">Définitions</h2>\r\n<p><strong>Compte</strong> désigne un compte unique créé pour vous permettre d\'accéder à notre Service ou à des parties de notre Service.</p>\r\n<p><strong>Entreprise</strong> (ci-après dénommée \"l\'Entreprise\", \"Nous\", \"Nous\" ou \"Notre\" dans le présent Contrat) fait référence à ishop.cholobangla.com, Canada. <</p>\r\n<p><strong>Les cookies</strong> sont de petits fichiers qui sont placés sur votre ordinateur, appareil mobile ou tout autre appareil par un site Web, contenant les détails de votre historique de navigation sur ce site Web parmi ses nombreuses utilisations.</p>\r\n<p><strong>Pays</strong> désigne : Nouveau-Brunswick, Canada</p>\r\n<p><strong>Appareil</strong> désigne tout appareil pouvant accéder au Service tel qu\'un ordinateur, un téléphone portable ou une tablette numérique.</p>\r\n<p><strong>Les données personnelles</strong> sont toutes les informations relatives à une personne identifiée ou identifiable.</p>\r\n<p><strong>Service</strong> fait référence au site Web.</p>\r\n<p><strong>Prestataire de services</strong> désigne toute personne physique ou morale qui traite les données pour le compte de la Société. Il fait référence à des sociétés tierces ou à des personnes employées par la Société pour faciliter le Service, pour fournir le Service au nom de la Société, pour fournir des services liés au Service ou pour aider la Société à analyser la manière dont le Service est utilisé.</p>\r\n<p><strong>Les données d\'utilisation</strong> font référence aux données collectées automatiquement, soit générées par l\'utilisation du Service, soit à partir de l\'infrastructure du Service elle-même (par exemple, la durée de la visite d\'une page).</p>\r\n<p><strong>Site Web</strong> fait référence à https://www.ishop.cholobangla.com/, accessible depuis <a href=\"ishop.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com</a></p>\r\n<p><strong>Vous</strong> désigne la personne accédant ou utilisant le Service, ou la société ou toute autre entité juridique au nom de laquelle cette personne accède ou utilise le Service, selon le cas.</p>\r\n', 'Ishop - À propos', 'À propos', 'fr', 1);
INSERT INTO `page_langs` (`id`, `created_at`, `updated_at`, `title`, `description`, `meta_title`, `meta_description`, `lang`, `page_id`) VALUES
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'FAQ', '<h1 style=\"margin: 30px 0;\">Questions fréquentes</h1>\r\n<h2 style=\"margin: 30px 0;\">Aperçu?</h2>\r\n<p>ishop est un CMS de commerce électronique multi-fournisseurs. L\'API est construite avec <b>laravel</b>, le panneau d\'administration et le front-end est construit avec <strong>nuxt js</strong>.Pour stocker des données <b>mysql </b> est utilisé. Les performances du site sont super rapides grâce au système de <b>cache</b> avancé. Il est entièrement réactif et hautement personnalisable. Dans le panneau d\'administration de licence standard, les fichiers de construction ne seront pas trouvés, cela signifie que vous ne pourrez pas personnaliser la conception du panneau d\'administration. Le code source de l\'interface et de l\'API se trouve dans le dossier du package. Vous pouvez très facilement personnaliser l\'interface et l\'API selon vos besoins. Le code source du panneau d\'administration se trouve dans la licence étendue. Pour toute question, veuillez contacter notre équipe d\'assistance à <a href=\"mailto:iyozedcontact@gmail.com\" class=\"link\"><b>iyozedcontact@gmail.com</b></a></p>\r\n<h2 style=\"margin: 30px 0;\">Fournissons-nous une assistance à l\'installation pour les utilisateurs?</h2>\r\n<p>Oui, nous fournissons une assistance à l\'installation aux utilisateurs. N\'hésitez pas à nous envoyer un e-mail à tout moment.</p>\r\n<h2 style=\"margin: 30px 0;\">Fournissons-nous un guide d\'installation aux utilisateurs?</h2>\r\n<p>Oui, nous fournissons un guide d\'installation aux utilisateurs avec les packages.</p>\r\n<h2 style=\"margin: 30px 0;\">Combien de temps faut-il pour revenir à l\'utilisateur?</h2>\r\n<p>Nous répondons aux utilisateurs dès que possible.</p>\r\n', 'Ishop - FAQ', 'FAQ', 'fr', 2),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Contact', 'Contact', 'Ishop - Contact', 'Contact', 'fr', 3),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Politique de remboursement', '<h1 style= \"margin: 30px 0;\">Politique de remboursement</h1>\r\n<h2 style= \"margin: 30px 0;\">Définitions</h2>\r\n<p>Aux fins de la présente politique de confidentialité: </p>\r\n<p><strong>Compte</strong> désigne un compte unique créé pour vous permettre d\'accéder à notre Service ou à des parties de notre Service.</p>\r\n<p><strong>Société</strong> (ci-après dénommée «la Société», «Nous», «Nous» ou «Notre» dans le présent Accord) fait référence à ishop.cholobangla.com, Canada. </p>\r\n<p><strong>Les cookies</strong> sont de petits fichiers qui sont placés sur votre ordinateur, appareil mobile ou tout autre appareil par un site Web, contenant les détails de votre historique de navigation sur ce site Web parmi ses nombreuses utilisations.</p>\r\n<p><strong>Pays</strong> désigne: Nouveau-Brunswick, Canada</p>\r\n<p><strong>Appareil</strong> désigne tout appareil pouvant accéder au Service tel qu\'un ordinateur, un téléphone portable ou une tablette numérique.</p>\r\n<p><strong>Les données personnelles</strong> sont toutes les informations relatives à une personne identifiée ou identifiable.</p>\r\n<p><strong>Service</strong> fait référence au site Web.</p>\r\n<p><strong>Prestataire de services</strong> désigne toute personne physique ou morale qui traite les données pour le compte de la Société. Il fait référence à des sociétés tierces ou à des personnes employées par la Société pour faciliter le Service, pour fournir le Service au nom de la Société, pour effectuer des services liés au Service ou pour aider la Société à analyser la manière dont le Service est utilisé.</p>\r\n<p><strong>Données d\'utilisation</strong> fait référence aux données collectées automatiquement, soit générées par l\'utilisation du Service, soit à partir de l\'infrastructure du Service elle-même (par exemple, la durée d\'une visite de page).</p>\r\n<p><strong>Site Web</strong> fait référence à https: //ishop.cholobangla.com/, accessible depuis <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com</a></p>\r\n<p><strong>Vous</strong> désigne la personne accédant ou utilisant le Service, ou la société ou toute autre entité juridique au nom de laquelle cette personne accède ou utilise le Service, selon le cas.</p>\r\n<h1 style= \"margin: 30px 0;\">Collecte et utilisation de vos données personnelles</h1>\r\n<h2 style= \"margin: 30px 0;\">Types de données collectées</h2>\r\n<h3 style= \"margin: 30px 0;\">Données personnelles</h3>\r\n<p>Lorsque vous utilisez Notre Service, Nous pouvons Vous demander de Nous fournir certaines informations personnellement identifiables qui peuvent être utilisées pour Vous contacter ou Vous identifier. Les informations personnellement identifiables peuvent inclure, mais sans s\'y limiter: </p>\r\n<ul style= \"margin: 30px 0;\"><li>Adresse e-mail</li><li>Prénom et nom</li><li>Adresse, État, Province, Code postal/ZIP, Ville</ li><li>Données d\'utilisation</li></ul>\r\n<h3 style= \"margin: 30px 0;\">Données d\'utilisation</h3>\r\n<p>Les données d\'utilisation sont collectées automatiquement lors de l\'utilisation du service.</p>\r\n<p>Les données d\'utilisation peuvent inclure des informations telles que l\'adresse de protocole Internet de votre appareil (par exemple, l\'adresse IP), le type de navigateur, la version du navigateur, les pages de notre service que vous visitez, l\'heure et la date de votre visite, le temps passé sur ces pages , des identifiants d\'appareil uniques et d\'autres données de diagnostic.</p>\r\n<p>Lorsque vous accédez au Service par ou via un appareil mobile, nous pouvons collecter certaines informations automatiquement, y compris, mais sans s\'y limiter, le type d\'appareil mobile que vous utilisez, l\'identifiant unique de votre appareil mobile, l\'adresse IP de votre appareil mobile , votre système d\'exploitation mobile, le type de navigateur Internet mobile que vous utilisez, les identifiants uniques de l\'appareil et d\'autres données de diagnostic.</p>\r\n<p>Nous pouvons également collecter des informations que votre navigateur envoie chaque fois que vous visitez notre service ou lorsque vous accédez au service par ou via un appareil mobile.</p>\r\n<h3 style= \"margin: 30px 0;\">Technologies de suivi et cookies</h3>\r\n<p>Nous utilisons des cookies et des technologies de suivi similaires pour suivre l\'activité sur notre service et stocker certaines informations. Les technologies de suivi utilisées sont des balises, des balises et des scripts pour collecter et suivre les informations et pour améliorer et analyser notre service. Les technologies que nous utilisons peuvent inclure : </p>\r\n<ul style= \"margin: 30px 0;\"><li><strong>Cookies ou cookies de navigateur.</strong> Un cookie est un petit fichier placé sur votre appareil. Vous pouvez demander à Votre navigateur de refuser tous les Cookies ou de vous signaler l\'envoi d\'un Cookie. Cependant, si vous n\'acceptez pas les cookies, vous ne pourrez peut-être pas utiliser certaines parties de notre service. À moins que vous n\'ayez réglé les paramètres de votre navigateur de manière à ce qu\'il refuse les cookies, notre service peut utiliser des cookies.</li><li><strong>Balises Web.</strong> Certaines sections de notre service et nos e-mails peuvent contenir de petits fichiers électroniques connues sous le nom de balises Web (également appelées gifs clairs, pixels invisibles et gifs à pixel unique) qui permettent à la Société, par exemple, de compter les utilisateurs qui ont visité ces pages ou ouvert un e-mail et pour d\'autres statistiques de sites Web connexes (par exemple , enregistrant la popularité d\'une certaine section et vérifiant l\'intégrité du système et du serveur).</li></ul>\r\n<p>Les cookies peuvent être &quot;Persistants&quot; ou &quot;Session&quot; Biscuits. Les cookies persistants restent sur votre ordinateur personnel ou votre appareil mobile lorsque vous vous déconnectez, tandis que les cookies de session sont supprimés dès que vous fermez votre navigateur Web. Pour en savoir plus sur les cookies, consultez l\'article du <a href= \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> site Web sur la politique de confidentialité gratuite</a>. </p>\r\n<p>Nous utilisons à la fois des cookies de session et des cookies persistants aux fins décrites ci-dessous: </p>\r\n<p><strong>Cookies nécessaires/essentiels</strong></p>\r\n<p>Type: Cookies de session</p>\r\n<p>Géré par: Nous</p>\r\n<p>Objectif: Ces cookies sont essentiels pour vous fournir les services disponibles via le site Web et pour vous permettre d\'utiliser certaines de ses fonctionnalités. Ils aident à authentifier les utilisateurs et à empêcher l\'utilisation frauduleuse des comptes d\'utilisateurs. Sans ces cookies, les services que vous avez demandés ne peuvent pas être fournis, et nous n\'utilisons ces cookies que pour vous fournir ces services.</p>\r\n<p><strong>Politique relative aux cookies / Avis d\'acceptation des cookies</strong></p>\r\n<p>Type: Cookies persistants</p>\r\n<p>Géré par: Nous</p>\r\n<p>Objectif: Ces cookies identifient si les utilisateurs ont accepté l\'utilisation de cookies sur le site Web.</p>\r\n<p><strong>Cookies de fonctionnalité</strong></p>\r\n<p>Type: Cookies persistants</p>\r\n<p>Géré par: Nous</p>\r\n<p>Objectif: ces cookies nous permettent de mémoriser les choix que vous faites lorsque vous utilisez le site Web, tels que la mémorisation de vos informations de connexion ou de votre préférence de langue. Le but de ces Cookies est de Vous offrir une expérience plus personnelle et de Vous éviter d\'avoir à ressaisir vos préférences à chaque fois que Vous utilisez le Site.</p>\r\n<p>Pour plus d\'informations sur les cookies que nous utilisons et vos choix concernant les cookies, veuillez consulter notre Politique relative aux cookies ou la section Cookies de notre Politique de confidentialité.</p>\r\n<h2 style= \"margin: 30px 0;\">Utilisation de vos données personnelles</h2>\r\n<p>La Société peut utiliser les Données personnelles aux fins suivantes: </p>\r\n<p><strong>Pour fournir et maintenir notre Service</strong>, y compris pour surveiller l\'utilisation de notre Service.</p>\r\n<p><strong>Pour gérer Votre Compte: </strong> pour gérer Votre inscription en tant qu\'utilisateur du Service. Les données personnelles que vous fournissez peuvent vous donner accès à différentes fonctionnalités du service qui sont à votre disposition en tant qu\'utilisateur enregistré.</p>\r\n<p><strong>Pour l\'exécution d\'un contrat: </strong> l\'élaboration, le respect et l\'engagement du contrat d\'achat des produits, articles ou services que vous avez achetés ou de tout autre contrat avec nous via le service.</p>\r\n<p><strong>Pour vous contacter: </strong> pour vous contacter par e-mail, appels téléphoniques, SMS ou autres formes de communication électronique équivalentes, telles que les notifications push d\'une application mobile concernant les mises à jour ou les communications informatives liées aux fonctionnalités, produits ou services sous-traités, y compris les mises à jour de sécurité, lorsque cela est nécessaire ou raisonnable pour leur mise en œuvre.</p>\r\n<p><strong>Pour vous fournir</strong> des actualités, des offres spéciales et des informations générales sur d\'autres biens, services et événements que nous proposons et qui sont similaires à ceux que vous avez déjà achetés ou sur lesquels vous vous êtes renseigné, sauf si vous avez choisi de ne pas le faire recevoir ces informations.</p>\r\n<p><strong>Pour gérer vos demandes: </strong> pour assister et gérer vos demandes que vous nous adressez.</p>\r\n<p><strong>Pour les transferts d\'entreprise: </strong> Nous pouvons utiliser Vos informations pour évaluer ou mener une fusion, une cession, une restructuration, une réorganisation, une dissolution ou toute autre vente ou transfert de tout ou partie de Nos actifs, que ce soit en tant que en cours d\'exploitation ou dans le cadre d\'une faillite, d\'une liquidation ou d\'une procédure similaire, dans laquelle les données personnelles que nous détenons sur les utilisateurs de nos services font partie des actifs transférés.</p>\r\n<p><strong>À d\'autres fins</strong>: nous pouvons utiliser vos informations à d\'autres fins, telles que l\'analyse de données, l\'identification des tendances d\'utilisation, la détermination de l\'efficacité de nos campagnes promotionnelles et pour évaluer et améliorer notre service, nos produits, nos services , le marketing et votre expérience.</p>\r\n\r\n', 'Ishop - Politique de remboursement', 'Politique de remboursement', 'fr', 4),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'politique de confidentialité', '<h1 style = \"margin: 30px 0;\">Politique de confidentialité</h1>\r\n<p>Dernière mise à jour: 13 décembre 2022</p>\r\n<p>Cette politique de confidentialité décrit nos politiques et procédures sur la collecte, l\'utilisation et la divulgation de vos informations lorsque vous utilisez le service et vous informe sur vos droits en matière de confidentialité et sur la manière dont la loi vous protège.</p>\r\n<p>Nous utilisons vos données personnelles pour fournir et améliorer le service. En utilisant le Service, Vous acceptez la collecte et l\'utilisation d\'informations conformément à la présente Politique de confidentialité. Cette politique de confidentialité a été créée à l\'aide du <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> Générateur gratuit de politique de confidentialité</a>. </p>\r\n<h1 style = \"margin: 30px 0;\">Interprétation et définitions</h1>\r\n<h2 style = \"margin: 30px 0;\">Interprétation</h2>\r\n<p>Les mots dont la lettre initiale est en majuscule ont des significations définies dans les conditions suivantes. Les définitions suivantes auront la même signification, qu\'elles apparaissent au singulier ou au pluriel.</p>\r\n<h2 style = \"margin: 30px 0;\">Définitions</h2>\r\n<p>Aux fins de la présente politique de confidentialité: </p>\r\n<strong>Compte</strong> désigne un compte unique créé pour vous permettre d\'accéder à notre service ou à des parties de notre service.</p>\r\n<p><strong>Société</strong> (ci-après dénommée «la Société», «Nous», «Nous» ou «Notre» dans le présent Accord) fait référence à ishop.cholobangla.com, Canada. </p>\r\n<p><strong>Les cookies</strong> sont de petits fichiers qui sont placés sur votre ordinateur, appareil mobile ou tout autre appareil par un site Web, contenant les détails de votre historique de navigation sur ce site Web parmi ses nombreuses utilisations.</p>\r\n<p><strong>Pays</strong> fait référence à: Nouveau-Brunswick, Canada</p>\r\n<p><strong>Appareil</strong> désigne tout appareil pouvant accéder au Service tel qu\'un ordinateur, un téléphone portable ou une tablette numérique.</p>\r\n<p><strong>Les données personnelles</strong> sont toutes les informations relatives à une personne identifiée ou identifiable.</p>\r\n<p><strong>Service</strong> fait référence au site Web.</p>\r\n<p><strong>Prestataire de services</strong> désigne toute personne physique ou morale qui traite les données pour le compte de la Société. Il fait référence à des sociétés tierces ou à des personnes employées par la Société pour faciliter le Service, pour fournir le Service au nom de la Société, pour effectuer des services liés au Service ou pour aider la Société à analyser la manière dont le Service est utilisé.</p>\r\n<p><strong>Données d\'utilisation</strong> fait référence aux données collectées automatiquement, soit générées par l\'utilisation du Service, soit à partir de l\'infrastructure du Service elle-même (par exemple, la durée d\'une visite de page).</p>\r\n<p><strong>Site Web</strong> fait référence à https: //ishop.cholobangla.com/, accessible depuis <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> ishop.cholobangla.com</a></p>\r\n<p><strong>Vous</strong> désigne la personne accédant ou utilisant le Service, ou la société ou toute autre entité juridique au nom de laquelle cette personne accède ou utilise le Service, selon le cas.</p>\r\n<h1 style = \"margin: 30px 0;\">Collecte et utilisation de vos données personnelles</h1>\r\n<h2 style = \"margin: 30px 0;\">Types de données collectées</h2>\r\n<h3 style = \"margin: 30px 0;\">Données personnelles</h3>\r\n<p>Lorsque vous utilisez Notre Service, Nous pouvons Vous demander de Nous fournir certaines informations personnellement identifiables qui peuvent être utilisées pour Vous contacter ou Vous identifier. Les informations personnellement identifiables peuvent inclure, mais sans s\'y limiter: </p>\r\n<ul style = \"margin: 30px 0;\"><li>Adresse e-mail</li><li>Prénom et nom</li><li>Adresse, État, Province, Code postal/ZIP, Ville</ li><li>Données d\'utilisation</li></ul>\r\n<h3 style = \"margin: 30px 0;\">Données d\'utilisation</h3>\r\n<p>Les données d\'utilisation sont collectées automatiquement lors de l\'utilisation du service.</p>\r\n<p>Les données d\'utilisation peuvent inclure des informations telles que l\'adresse de protocole Internet de votre appareil (par exemple, l\'adresse IP), le type de navigateur, la version du navigateur, les pages de notre service que vous visitez, l\'heure et la date de votre visite, le temps passé sur ces pages , des identifiants d\'appareil uniques et d\'autres données de diagnostic.</p>\r\n<p>Lorsque vous accédez au Service par ou via un appareil mobile, nous pouvons collecter certaines informations automatiquement, y compris, mais sans s\'y limiter, le type d\'appareil mobile que vous utilisez, l\'identifiant unique de votre appareil mobile, l\'adresse IP de votre appareil mobile , votre système d\'exploitation mobile, le type de navigateur Internet mobile que vous utilisez, les identifiants uniques de l\'appareil et d\'autres données de diagnostic.</p>\r\n<p>Nous pouvons également collecter des informations que votre navigateur envoie chaque fois que vous visitez notre service ou lorsque vous accédez au service par ou via un appareil mobile.</p>\r\n<h3 style = \"margin: 30px 0;\">Technologies de suivi et cookies</h3>\r\n<p>Nous utilisons des cookies et des technologies de suivi similaires pour suivre l\'activité sur notre service et stocker certaines informations. Les technologies de suivi utilisées sont des balises, des balises et des scripts pour collecter et suivre les informations et pour améliorer et analyser notre service. Les technologies que Nous utilisons peuvent inclure : </p>\r\n<p><strong>Cookies ou cookies de navigateur.</strong> Un cookie est un petit fichier placé sur votre appareil. Vous pouvez demander à Votre navigateur de refuser tous les Cookies ou de vous signaler l\'envoi d\'un Cookie. Cependant, si vous n\'acceptez pas les cookies, vous ne pourrez peut-être pas utiliser certaines parties de notre service. À moins que vous n\'ayez réglé les paramètres de votre navigateur pour qu\'il refuse les cookies, notre service peut utiliser des cookies.</p>\r\n<p><strong>Balises Web.</strong> Certaines sections de notre Service et de nos e-mails peuvent contenir de petits fichiers électroniques connus sous le nom de balises Web (également appelés gifs transparents, pixels invisibles et gifs à pixel unique) qui permettent à la Société, par exemple, pour compter les utilisateurs qui ont visité ces pages ou ouvert un e-mail et pour d\'autres statistiques de site Web connexes (par exemple, enregistrer la popularité d\'une certaine section et vérifier l\'intégrité du système et du serveur).</p>\r\n<p>Les cookies peuvent être &quot;Persistants&quot; ou &quot;Session&quot; Biscuits. Les cookies persistants restent sur votre ordinateur personnel ou votre appareil mobile lorsque vous vous déconnectez, tandis que les cookies de session sont supprimés dès que vous fermez votre navigateur Web. Pour en savoir plus sur les cookies, consultez l\'article du <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> site Web sur la politique de confidentialité gratuite</a>. </p>\r\n<p>Nous utilisons à la fois des cookies de session et des cookies persistants aux fins décrites ci-dessous: </p>\r\n<p><strong>Cookies nécessaires/essentiels</strong></p>\r\n<p>Type: Cookies de session</p>\r\n<p>Géré par : Nous</p>\r\n<p>Objectif: Ces cookies sont essentiels pour vous fournir les services disponibles via le site Web et pour vous permettre d\'utiliser certaines de ses fonctionnalités. Ils aident à authentifier les utilisateurs et à empêcher l\'utilisation frauduleuse des comptes d\'utilisateurs. Sans ces cookies, les services que vous avez demandés ne peuvent pas être fournis, et nous n\'utilisons ces cookies que pour vous fournir ces services.</p>\r\n<p><strong>Politique relative aux cookies / Avis d\'acceptation des cookies</strong></p>\r\n<p>Type: Cookies persistants</p>\r\n<p>Géré par : Nous</p>\r\n<p>Objectif: Ces cookies identifient si les utilisateurs ont accepté l\'utilisation de cookies sur le site Web.</p>\r\n<p><strong>Cookies de fonctionnalité</strong></p>\r\n<p>Type: Cookies persistants</p>\r\n<p>Géré par : Nous</p>\r\n<p>Objectif: Ces cookies nous permettent de mémoriser les choix que vous faites lorsque vous utilisez le site Web, tels que la mémorisation de vos informations de connexion ou de votre préférence de langue. Le but de ces Cookies est de Vous offrir une expérience plus personnelle et de Vous éviter d\'avoir à ressaisir vos préférences à chaque fois que Vous utilisez le Site.</p>\r\n<p>Pour plus d\'informations sur les cookies que nous utilisons et vos choix concernant les cookies, veuillez consulter notre Politique relative aux cookies ou la section Cookies de notre Politique de confidentialité.</p>\r\n<h2 style = \"margin: 30px 0;\">Utilisation de vos données personnelles</h2>\r\n<p>La Société peut utiliser les Données Personnelles aux fins suivantes: </p>\r\n<p><strong>Pour fournir et maintenir notre Service</strong>, y compris pour surveiller l\'utilisation de notre Service.</p>\r\n<p><strong>Pour gérer Votre Compte : </strong> pour gérer Votre inscription en tant qu\'utilisateur du Service. Les données personnelles que vous fournissez peuvent vous donner accès à différentes fonctionnalités du service qui sont à votre disposition en tant qu\'utilisateur enregistré.</p>\r\n<p><strong>Pour l\'exécution d\'un contrat: </strong> l\'élaboration, le respect et l\'exécution du contrat d\'achat des produits, articles ou services que vous avez achetés ou de tout autre contrat avec nous par le biais du service.</p>\r\n<p><strong>Pour vous contacter: </strong> pour vous contacter par e-mail, appels téléphoniques, SMS ou autres formes de communication électronique équivalentes, telles que les notifications push d\'une application mobile concernant les mises à jour ou les communications informatives liées aux fonctionnalités, produits ou services sous-traités, y compris les mises à jour de sécurité, lorsque cela est nécessaire ou raisonnable pour leur mise en œuvre.</p>\r\n<p><strong>Pour vous fournir</strong> des actualités, des offres spéciales et des informations générales sur d\'autres biens, services et événements que nous proposons et qui sont similaires à ceux que vous avez déjà achetés ou sur lesquels vous vous êtes renseigné, sauf si vous avez choisi de ne pas le faire recevoir ces informations.</p>\r\n<p><strong>Pour gérer Vos demandes: </strong> Pour assister et gérer Vos demandes envers Nous.</p>\r\n<p><strong>Pour les transferts d\'entreprise: </strong> Nous pouvons utiliser Vos informations pour évaluer ou mener une fusion, une cession, une restructuration, une réorganisation, une dissolution ou toute autre vente ou transfert de tout ou partie de Nos actifs, que ce soit en tant que en cours d\'exploitation ou dans le cadre d\'une faillite, d\'une liquidation ou d\'une procédure similaire, dans laquelle les données personnelles que nous détenons sur les utilisateurs de nos services font partie des actifs transférés.</p>\r\n<p><strong>À d\'autres fins</strong>: nous pouvons utiliser vos informations à d\'autres fins, telles que l\'analyse de données, l\'identification des tendances d\'utilisation, la détermination de l\'efficacité de nos campagnes promotionnelles et pour évaluer et améliorer notre service, nos produits, nos services , le marketing et votre expérience.</p>\r\n<p>Nous pouvons partager Vos informations personnelles dans les situations suivantes: </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>Avec les fournisseurs de services:</strong> nous pouvons partager vos informations personnelles avec les fournisseurs de services pour surveiller et analyser l\'utilisation de notre service, pour vous contacter.< /li><li><strong>Pour les transferts d\'entreprise:</strong> Nous pouvons partager ou transférer vos informations personnelles dans le cadre de, ou pendant les négociations de, toute fusion, vente d\'actifs de la Société, financement ou acquisition de tout ou partie partie de nos activités à une autre société.</li><li><strong>Avec des affiliés:</strong> nous pouvons partager vos informations avec nos affiliés, auquel cas nous exigerons que ces affiliés respectent cette politique de confidentialité. Les sociétés affiliées incluent notre société mère et toutes autres filiales, partenaires de coentreprise ou autres sociétés que nous contrôlons ou qui sont sous contrôle commun avec nous.</li><li><strong>Avec des partenaires commerciaux:</strong> nous pouvons partager votre informations avec nos partenaires commerciaux pour vous proposer certains produits, services ou promotions.</li><li><strong>Avec d\'autres utilisateurs:</strong> lorsque vous partagez des informations personnelles ou interagissez autrement dans les espaces publics avec d\'autres utilisateurs, tels que les informations peuvent être vues par tous les utilisateurs et peuvent être diffusées publiquement à l\'extérieur.</li><li><strong>Avec Votre consentement</strong>: Nous pouvons divulguer Vos informations personnelles à toute autre fin avec Votre consentement.</li> </ul>\r\n<h2 style = \"margin: 30px 0;\">Conservation de vos données personnelles</h2>\r\n<p>La Société ne conservera vos données personnelles que le temps nécessaire aux fins énoncées dans la présente politique de confidentialité. Nous conserverons et utiliserons vos données personnelles dans la mesure nécessaire pour nous conformer à nos obligations légales (par exemple, si nous sommes tenus de conserver vos données pour nous conformer aux lois applicables), résoudre les litiges et appliquer nos accords et politiques juridiques.</p>\r\n<p>La Société conservera également les Données d\'utilisation à des fins d\'analyse interne. Les données d\'utilisation sont généralement conservées pendant une période plus courte, sauf lorsque ces données sont utilisées pour renforcer la sécurité ou pour améliorer la fonctionnalité de notre service, ou lorsque nous sommes légalement tenus de conserver ces données pendant des périodes plus longues.</p>\r\n<h2 style = \"margin: 30px 0;\">Transfert de vos données personnelles</h2>\r\n<p>Vos informations, y compris les données personnelles, sont traitées dans les bureaux d\'exploitation de la société et dans tout autre lieu où se trouvent les parties impliquées dans le traitement. Cela signifie que ces informations peuvent être transférées et conservées sur des ordinateurs situés en dehors de votre état, province, pays ou autre juridiction gouvernementale où les lois sur la protection des données peuvent différer de celles de votre juridiction.</p>\r\n<p>Votre consentement à cette politique de confidentialité suivi de votre soumission de ces informations représente votre accord à ce transfert.</p>\r\n<p>La Société prendra toutes les mesures raisonnablement nécessaires pour s\'assurer que Vos données sont traitées en toute sécurité et conformément à la présente Politique de confidentialité et aucun transfert de Vos Données personnelles n\'aura lieu vers une organisation ou un pays à moins que des contrôles adéquats ne soient en place, y compris la sécurité de vos données et autres informations personnelles.</p>\r\n<h2 style = \"margin: 30px 0;\">Supprimer vos données personnelles</h2>\r\n<p>Vous avez le droit de supprimer ou de demander que nous vous aidions à supprimer les données personnelles que nous avons collectées à votre sujet.</p>\r\n<p>Notre service peut vous donner la possibilité de supprimer certaines informations vous concernant depuis le service.</p>\r\n<p>Vous pouvez mettre à jour, modifier ou supprimer vos informations à tout moment en vous connectant à votre compte, si vous en avez un, et en visitant la section des paramètres du compte qui vous permet de gérer vos informations personnelles. Vous pouvez également nous contacter pour demander l\'accès, la correction ou la suppression de toute information personnelle que vous nous avez fournie.</p>\r\n<p>Veuillez noter, cependant, que nous pouvons avoir besoin de conserver certaines informations lorsque nous avons une obligation légale ou une base légale pour le faire.</p>\r\n<h2 style = \"margin: 30px 0;\">Divulgation de vos données personnelles</h2>\r\n<h3 style = \"margin: 30px 0;\">Transactions commerciales</h3>\r\n<p>Si la Société est impliquée dans une fusion, une acquisition ou une vente d\'actifs, vos données personnelles peuvent être transférées. Nous vous informerons avant que vos données personnelles ne soient transférées et soumises à une politique de confidentialité différente.</p>\r\n<h3 style = \"margin: 30px 0;\">Application de la loi</h3>\r\n<p>Dans certaines circonstances, la Société peut être tenue de divulguer vos données personnelles si la loi l\'exige ou en réponse à des demandes valables d\'autorités publiques (par exemple, un tribunal ou une agence gouvernementale).</p>\r\n<h3 style = \"margin: 30px 0;\">Autres exigences légales</h3>\r\n<p>La Société peut divulguer Vos Données Personnelles en croyant de bonne foi qu\'une telle action est nécessaire pour: </p>\r\n<ul><li>Se conformer à une obligation légale</li><li>Protéger et défendre les droits ou la propriété de la Société</li><li>Prévenir ou enquêter sur d\'éventuels actes répréhensibles en rapport avec le Service</li>< li>Protéger la sécurité personnelle des Utilisateurs du Service ou du public</li><li>Protéger contre la responsabilité légale</li></ul>\r\n<h2>Sécurité de vos données personnelles</h2>\r\n<p>La sécurité de vos données personnelles est importante pour nous, mais n\'oubliez pas qu\'aucune méthode de transmission sur Internet ou méthode de stockage électronique n\'est sécurisée à 100%. Bien que nous nous efforcions d\'utiliser des moyens commercialement acceptables pour protéger vos données personnelles, nous ne pouvons garantir leur sécurité absolue.</p>\r\n<h1>Confidentialité des enfants</h1>\r\n<p>Notre service ne s\'adresse pas aux personnes de moins de 13ans. Nous ne collectons pas sciemment d\'informations personnellement identifiables auprès de personnes de moins de 13ans. Si vous êtes un parent ou un tuteur et que vous savez que votre enfant nous a fourni des informations personnelles. Données, veuillez nous contacter. Si nous apprenons que nous avons collecté des données personnelles auprès d\'une personne de moins de 13 ans sans vérification du consentement parental, nous prenons des mesures pour supprimer ces informations de nos serveurs.</p>\r\n<p>Si nous devons compter sur le consentement comme base légale pour le traitement de vos informations et que votre pays exige le consentement d\'un parent, nous pouvons exiger le consentement de votre parent avant de collecter et d\'utiliser ces informations.</p>\r\n<h1 style = \"margin: 30px 0;\">Liens vers d\'autres sites Web</h1>\r\n<p>Notre Service peut contenir des liens vers d\'autres sites Web qui ne sont pas exploités par Nous. Si vous cliquez sur un lien tiers, vous serez dirigé vers le site de ce tiers. Nous vous conseillons vivement de consulter la politique de confidentialité de chaque site que vous visitez.</p>\r\n<p>Nous n\'avons aucun contrôle et n\'assumons aucune responsabilité quant au contenu, aux politiques de confidentialité ou aux pratiques des sites ou services tiers.</p>\r\n<h1 style = \"margin: 30px 0;\">Modifications de cette politique de confidentialité</h1>\r\n<p>Nous pouvons mettre à jour notre politique de confidentialité de temps à autre. Nous vous informerons de tout changement en publiant la nouvelle politique de confidentialité sur cette page.</p>\r\n<p>Nous vous informerons par e-mail et/ou par un avis visible sur notre service, avant que le changement ne devienne effectif et mettrons à jour la &quot;Dernière mise à jour&quot; date en haut de cette politique de confidentialité.</p>\r\n<p>Il vous est conseillé de consulter régulièrement cette politique de confidentialité pour tout changement. Les modifications apportées à cette politique de confidentialité entrent en vigueur lorsqu\'elles sont publiées sur cette page.</p>\r\n<h1 style = \"margin: 30px 0;\">Contactez-nous</h1>\r\n<p>Si vous avez des questions concernant cette politique de confidentialité, vous pouvez nous contacter: </p>\r\n<ul style = \"margin: 30px 0;\"><li>En visitant cette page sur notre site: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n\r\n', 'Ishop - politique de confidentialité', 'politique de confidentialité', 'fr', 5);
INSERT INTO `page_langs` (`id`, `created_at`, `updated_at`, `title`, `description`, `meta_title`, `meta_description`, `lang`, `page_id`) VALUES
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Aider', '<h1 style = \"margin: 30px 0;\">Aide</h1>\r\n<p>Cette politique de confidentialité décrit nos politiques et procédures sur la collecte, l\'utilisation et la divulgation de vos informations lorsque vous utilisez le service et vous informe sur vos droits en matière de confidentialité et sur la manière dont la loi vous protège.</p>\r\n<p>Nous utilisons vos données personnelles pour fournir et améliorer le service. En utilisant le Service, Vous acceptez la collecte et l\'utilisation d\'informations conformément à la présente Politique de confidentialité. Cette politique de confidentialité a été créée à l\'aide du <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> Générateur gratuit de politique de confidentialité</a>. </p>\r\n<h1 style = \"margin: 30px 0;\">Interprétation et définitions</h1>\r\n<h2 style = \"margin: 30px 0;\">Interprétation</h2>\r\n<p>Les mots dont la lettre initiale est en majuscule ont des significations définies dans les conditions suivantes. Les définitions suivantes auront la même signification, qu\'elles apparaissent au singulier ou au pluriel.</p>\r\n<h2 style = \"margin: 30px 0;\">Définitions</h2>\r\n<p>Aux fins de la présente politique de confidentialité: </p>\r\n<p><strong>Compte</strong> désigne un compte unique créé pour vous permettre d\'accéder à notre service ou à des parties de notre service.</p>\r\n<p><strong>Société</strong> (ci-après dénommée «la Société», «Nous», «Nous» ou «Notre» dans le présent Accord) fait référence à ishop.cholobangla.com, Canada. </p>\r\n<p><strong>Les cookies</strong> sont de petits fichiers qui sont placés sur votre ordinateur, appareil mobile ou tout autre appareil par un site Web, contenant les détails de votre historique de navigation sur ce site Web parmi ses nombreuses utilisations.</p>\r\n<p><strong>Pays</strong> fait référence à: Nouveau-Brunswick, Canada</p>\r\n<p><strong>Appareil</strong> désigne tout appareil pouvant accéder au Service, tel qu\'un ordinateur, un téléphone portable ou une tablette numérique.</p>\r\n<p><strong>Les données personnelles</strong> sont toutes les informations relatives à une personne identifiée ou identifiable.</p>\r\n<p><strong>Service</strong> fait référence au site Web.</p>\r\n<p><strong>Prestataire de services</strong> désigne toute personne physique ou morale qui traite les données pour le compte de la Société. Il fait référence à des sociétés tierces ou à des personnes employées par la Société pour faciliter le Service, pour fournir le Service au nom de la Société, pour effectuer des services liés au Service ou pour aider la Société à analyser la manière dont le Service est utilisé.</p>\r\n<p><strong>Données d\'utilisation</strong> fait référence aux données collectées automatiquement, soit générées par l\'utilisation du Service, soit à partir de l\'infrastructure du Service elle-même (par exemple, la durée de la visite d\'une page).</p>\r\n<p><strong>Site Web</strong> fait référence à https: //ishop.cholobangla.com/, accessible depuis <a href=\"ishop.cholobangla\" rel=\"external nofollow noopener\" target=\"_blank\">ishop. cholobangla.com</a></p>\r\n<p><strong>Vous</strong> désigne la personne accédant ou utilisant le Service, ou la société ou toute autre entité pour le compte de laquelle cette personne accède ou utilise le Service, selon le cas.</p>\r\n<h1 style = \"margin: 30px 0;\">Collecte et utilisation de vos données personnelles</h1>\r\n<h2 style = \"margin: 30px 0;\">Types de données collectées</h2>\r\n<h3 style = \"margin: 30px 0;\">Données personnelles</h3>\r\n<p>Lorsque vous utilisez Notre Service, Nous pouvons Vous demander de Nous fournir certaines informations personnellement identifiables qui peuvent être utilisées pour Vous contacter ou Vous identifier. Les informations personnellement identifiables peuvent inclure, mais sans s\'y limiter: </p>\r\n<ul style = \"margin: 30px 0;\"><li>Adresse e-mail</li><li>Prénom et nom</li><li>Adresse, État, Province, Code postal/ZIP, Ville</ li><li>Données d\'utilisation</li></ul>\r\n<h3 style = \"margin: 30px 0;\">Données d\'utilisation</h3>\r\n<p>Les données d\'utilisation sont collectées automatiquement lors de l\'utilisation du service.</p><p>Les données d\'utilisation peuvent inclure des informations telles que l\'adresse de protocole Internet de votre appareil (par exemple, l\'adresse IP), le type de navigateur, la version du navigateur, les pages de notre service qui Votre visite, l\'heure et la date de votre visite, le temps passé sur ces pages, les identifiants uniques de l\'appareil et d\'autres données de diagnostic.</p><p>Lorsque vous accédez au Service par ou via un appareil mobile, nous pouvons collecter certaines informations automatiquement , y compris, mais sans s\'y limiter, le type d\'appareil mobile que vous utilisez, l\'identifiant unique de votre appareil mobile, l\'adresse IP de votre appareil mobile, votre système d\'exploitation mobile, le type de navigateur Internet mobile que vous utilisez, les identifiants uniques de l\'appareil et d\'autres diagnostics données.</p>\r\n<p>Nous pouvons également collecter des informations que votre navigateur envoie chaque fois que vous visitez notre service ou lorsque vous accédez au service par ou via un appareil mobile.</p>\r\n<h3 style = \"margin: 30px 0;\">Technologies de suivi et cookies</h3>\r\n<p>Nous utilisons des cookies et des technologies de suivi similaires pour suivre l\'activité sur notre service et stocker certaines informations. Les technologies de suivi utilisées sont des balises, des balises et des scripts pour collecter et suivre les informations et pour améliorer et analyser notre service. Les technologies que Nous utilisons peuvent inclure : </p>\r\n<p><strong>Cookies ou cookies de navigateur.</strong> Un cookie est un petit fichier placé sur votre appareil. Vous pouvez demander à Votre navigateur de refuser tous les Cookies ou de vous signaler l\'envoi d\'un Cookie. Cependant, si vous n\'acceptez pas les cookies, vous ne pourrez peut-être pas utiliser certaines parties de notre service. À moins que vous n\'ayez réglé les paramètres de votre navigateur pour qu\'il refuse les cookies, notre service peut utiliser des cookies. </p>\r\n<p><strong>Balises Web.</strong> Certaines sections de notre Service et nos e-mails peuvent contenir de petites\r\nfichiers électroniques connus sous le nom de balises Web (également appelés gifs clairs, pixels invisibles et gifs à pixel unique) qui permettent à la Société, par exemple, de compter les utilisateurs qui ont visité ces\r\npages ou ouvert un e-mail et pour d\'autres statistiques de site Web connexes (par exemple, enregistrer la popularité d\'une certaine section et vérifier l\'intégrité du système et du serveur).</p>\r\n<p>Les cookies peuvent être &quot;Persistants&quot; ou &quot;Session&quot; Biscuits. Les cookies persistants restent sur votre ordinateur personnel ou votre appareil mobile lorsque vous vous déconnectez, tandis que les cookies de session sont supprimés dès que vous fermez votre navigateur Web. Pour en savoir plus sur les cookies, consultez l\'article du <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> site Web sur la politique de confidentialité gratuite</a>. </p>\r\n<p>Nous utilisons à la fois des cookies de session et des cookies persistants aux fins décrites ci-dessous: </p>\r\n<p><strong>Cookies nécessaires/essentiels</strong></p>\r\n<p>Type: Cookies de session</p>\r\n<p>Géré par : Nous</p>\r\n<p>Objectif: Ces cookies sont essentiels pour vous fournir les services disponibles via le site Web et pour vous permettre d\'utiliser certaines de ses fonctionnalités. Ils aident à authentifier les utilisateurs et à empêcher l\'utilisation frauduleuse des comptes d\'utilisateurs. Sans ces cookies, les services que vous avez demandés ne peuvent pas être fournis, et nous n\'utilisons ces cookies que pour vous fournir ces services.</p>\r\n<p><strong>Politique relative aux cookies / Avis d\'acceptation des cookies</strong></p>\r\n<p>Type: Cookies persistants</p><p>Géré par: Nous</p><p>Objectif: Ces cookies identifient si les utilisateurs ont accepté l\'utilisation de cookies sur le site Web.</p><p>< strong>Cookies de fonctionnalité</strong></p><p>Type: Cookies persistants</p><p>Gérés par: Nous</p><p>Objectif: Ces cookies nous permettent de mémoriser les choix que vous faites lorsque vous utiliser le site Web, comme la mémorisation de vos informations de connexion ou de votre préférence de langue. Ces Cookies ont pour but de Vous offrir une expérience plus personnelle et de Vous éviter d\'avoir à ressaisir vos préférences à chaque fois que Vous utilisez le Site.</p><p>Pour plus d\'informations sur les cookies que nous utilisons et vos choix en matière de cookies , veuillez consulter notre politique relative aux cookies ou la section relative aux cookies de notre politique de confidentialité.</p>\r\n<h2 style = \"margin: 30px 0;\">Utilisation de vos données personnelles</h2><p>La Société peut utiliser les données personnelles aux fins suivantes:</p>\r\n<p><strong>Pour fournir et maintenir notre Service</strong>, y compris pour surveiller l\'utilisation de notre Service.</p>\r\n<p><strong>Pour gérer Votre Compte : </strong> pour gérer Votre inscription en tant qu\'utilisateur du Service. Les Données Personnelles que Vous fournissez peuvent Vous donner accès à différentes fonctionnalités du Service qui Vous sont accessibles en tant qu\'utilisateur inscrit.</p><p><strong>Pour l\'exécution d\'un contrat:</strong> le développement, le respect et l\'engagement du contrat d\'achat des produits, articles ou services que vous avez achetés ou de tout autre contrat avec nous par le biais du service.</p><p><strong>Pour vous contacter:</strong> Pour vous contacter par e-mail, appels téléphoniques , SMS ou autres formes équivalentes de communication électronique, telles que les notifications push d\'une application mobile concernant les mises à jour ou les communications informatives liées aux fonctionnalités, produits ou services sous contrat, y compris les mises à jour de sécurité, lorsque cela est nécessaire ou raisonnable pour leur mise en œuvre.</p><p>< strong>Pour vous fournir</strong> des actualités, des offres spéciales et des informations générales sur d\'autres biens, services et événements que nous proposons qui sont similaires à ceux que vous avez déjà achetés ou sur lesquels vous vous êtes renseigné, sauf si vous avez choisi de ne pas recevoir ces informations.</p><p><strong>Pour gérer vos demandes:</strong> Pour assister et gérer vos demandes.</p><p><strong>Pour les transferts d\'entreprise:</strong> Nous pouvons utiliser vos informations pour évaluer ou mener une fusion, une cession, une restructuration, une réorganisation, une dissolution ou toute autre vente ou transfert de tout ou partie de nos actifs, que ce soit dans le cadre d\'une entreprise en activité ou dans le cadre d\'une faillite, d\'une liquidation ou d\'une procédure similaire, dans laquelle les données personnelles que nous détenons sur nos Serviceusers fait partie des actifs transférés.</p>\r\n<p><strong>À d\'autres fins</strong>: nous pouvons utiliser vos informations à d\'autres fins, telles que l\'analyse des données, l\'identification des tendances d\'utilisation, la détermination de l\'efficacité de nos campagnes promotionnelles et pour évaluer et améliorer notre service, nos produits, nos services, notre marketing et votre expérience.</p>\r\n<p>Nous pouvons partager Vos informations personnelles dans les situations suivantes: </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>Avec les fournisseurs de services:</strong> nous pouvons partager vos informations personnelles avec les fournisseurs de services pour surveiller et analyser l\'utilisation de notre service, pour vous contacter.</ li><li><strong>Pour les transferts d\'entreprise:</strong> Nous pouvons partager ou transférer Vos informations personnelles dans le cadre de, ou pendant les négociations de, toute fusion, vente d\'actifs de la Société, financement ou acquisition de tout ou partie de Notre entreprise à une autre société.</li><li><strong>Avec des affiliés:</strong> nous pouvons partager vos informations avec nos affiliés, auquel cas nous exigerons de ces affiliés qu\'ils respectent cette politique de confidentialité. Les affiliés incluent notre société mère et toutes autres filiales, partenaires de coentreprise ou autres sociétés que nous contrôlons ou qui sont sous contrôle commun avec nous.</li><li><strong>Avec des partenaires commerciaux:</strong> nous pouvons partager vos informations avec Nos partenaires commerciaux pour vous offrir certains produits, services ou promotions.</li><li><strong>Avec d\'autres utilisateurs:</strong> lorsque vous partagez des informations personnelles ou interagissez autrement dans les espaces publics avec d\'autres utilisateurs, ces informations peuvent être consultées par tous les utilisateurs et peuvent être diffusées publiquement à l\'extérieur.</li><li><strong>Avec Votre consentement</strong>: Nous pouvons divulguer Vos informations personnelles à toute autre fin avec Votre consentement.</li></ul>\r\n<h2 style = \"margin: 30px 0;\">Conservation de vos données personnelles</h2>\r\n<p>La Société ne conservera vos données personnelles que le temps nécessaire aux fins énoncées\r\ndans cette politique de confidentialité. Nous conserverons et utiliserons vos données personnelles dans la mesure nécessaire pour nous conformer\r\nà nos obligations légales (par exemple, si nous sommes tenus de conserver vos données pour nous conformer à\r\nlois applicables), résoudre les litiges et appliquer nos accords et politiques juridiques.</p>\r\n<p>La Société conservera également les Données d\'utilisation à des fins d\'analyse interne. Les données d\'utilisation sont généralement conservées pendant une période plus courte, sauf lorsque ces données sont utilisées pour renforcer la sécurité ou pour améliorer la fonctionnalité de notre service, ou lorsque nous sommes légalement tenus de conserver ces données pendant des périodes plus longues.</p>\r\n<h2 style = \"margin: 30px 0;\">Transfert de vos données personnelles</h2>\r\n<p>Vos informations, y compris les données personnelles, sont traitées dans les bureaux d\'exploitation de la société et dans tout autre lieu où se trouvent les parties impliquées dans le traitement. Cela signifie que cela\r\nles informations peuvent être transférées et conservées sur des ordinateurs situés en dehors de votre état, province, pays ou autre juridiction gouvernementale où les lois sur la protection des données peuvent différer de celles de votre juridiction.</p>\r\n<p>Votre consentement à cette politique de confidentialité suivi de votre soumission de ces informations représente votre accord à ce transfert.</p>\r\n<p>La Société prendra toutes les mesures raisonnablement nécessaires pour s\'assurer que Vos données sont traitées en toute sécurité et conformément à la présente Politique de confidentialité et aucun transfert de Vos Données personnelles n\'aura lieu vers une organisation ou un pays à moins que des contrôles adéquats ne soient en place, y compris la sécurité de vos données et autres informations personnelles.</p>\r\n<h2 style = \"margin: 30px 0;\">Supprimer vos données personnelles</h2>\r\n<p>Vous avez le droit de supprimer ou de demander que nous vous aidions à supprimer les données personnelles que nous avons collectées à votre sujet.</p>\r\n<p>Notre service peut vous donner la possibilité de supprimer certaines informations vous concernant depuis le service.</p>\r\n<p>Vous pouvez mettre à jour, modifier ou supprimer vos informations à tout moment en vous connectant à votre compte, si vous en avez un, et en visitant la section des paramètres du compte qui vous permet de gérer vos informations personnelles. Vous pouvez également nous contacter pour demander l\'accès, la correction ou la suppression de toute information personnelle que vous nous avez fournie.</p>\r\n<p>Veuillez noter, cependant, que nous pouvons avoir besoin de conserver certaines informations lorsque nous avons une obligation légale ou une base légale pour le faire.</p>\r\n<h2 style = \"margin: 30px 0;\">Divulgation de vos données personnelles</h2>\r\n<h3 style = \"margin: 30px 0;\">Transactions commerciales</h3>\r\n<p>Si la Société est impliquée dans une fusion, une acquisition ou une vente d\'actifs, vos données personnelles peuvent être transférées. Nous vous informerons avant que vos données personnelles ne soient transférées et soumises à une politique de confidentialité différente.</p>\r\n<h3 style = \"margin: 30px 0;\">Application de la loi</h3>\r\n<p>Dans certaines circonstances, la Société peut être tenue de divulguer vos données personnelles si la loi l\'exige ou en réponse à des demandes valables d\'autorités publiques (par exemple, un tribunal ou une agence gouvernementale).</p>\r\n<h3 style = \"margin: 30px 0;\">Autres exigences légales</h3>\r\n<p>La Société peut divulguer Vos Données Personnelles en croyant de bonne foi qu\'une telle action est nécessaire pour: </p>\r\n<ul><li>Se conformer à une obligation légale</li><li>Protéger et défendre les droits ou la propriété de la Société</li><li>Prévenir ou enquêter sur d\'éventuels actes répréhensibles en rapport avec le Service</li>< li>Protéger la sécurité personnelle des Utilisateurs du Service ou du public</li><li>Protéger contre la responsabilité légale</li></ul>\r\n<h2>Sécurité de vos données personnelles</h2>\r\n<p>La sécurité de vos données personnelles est importante pour nous, mais n\'oubliez pas qu\'aucune méthode de transmission sur Internet ou méthode de stockage électronique n\'est sécurisée à 100%. Bien que nous nous efforcions d\'utiliser des moyens commercialement acceptables pour protéger vos données personnelles, nous ne pouvons garantir leur sécurité absolue.</p>\r\n<h1>Confidentialité des enfants</h1>\r\n<p>Notre Service ne s\'adresse pas aux personnes de moins de 13ans. Nous ne collectons pas sciemment d\'informations personnellement identifiables auprès de personnes de moins de 13ans. Si vous êtes un parent ou un tuteur et que vous savez que votre enfant nous a fourni des données personnelles , Contactez nous s\'il vous plait. Si nous apprenons que nous avons collecté des données personnelles auprès d\'une personne de moins de 13 ans sans vérification du consentement parental, nous prenons des mesures pour supprimer ces informations de nos serveurs.</p>\r\n<p>Si nous devons compter sur le consentement comme base légale pour le traitement de vos informations et que votre pays exige le consentement d\'un parent, nous pouvons exiger le consentement de votre parent avant de collecter et d\'utiliser ces informations.</p>\r\n<h1 style = \"margin: 30px 0;\">Liens vers d\'autres sites Web</h1>\r\n<p>Notre Service peut contenir des liens vers d\'autres sites Web qui ne sont pas exploités par Nous. Si vous cliquez sur un lien tiers, vous serez dirigé vers le site de ce tiers. Nous vous conseillons vivement de consulter la politique de confidentialité de chaque site que vous visitez.</p>\r\n<p>Nous n\'avons aucun contrôle sur et n\'assumons aucune responsabilité quant au contenu, aux politiques de confidentialité ou aux pratiques de tout site ou service tiers.</p>\r\n<h1 style = \"margin: 30px 0;\">Modifications de cette politique de confidentialité</h1>\r\n<p>Nous pouvons mettre à jour notre politique de confidentialité de temps à autre. Nous vous informerons de tout changement en publiant la nouvelle politique de confidentialité sur cette page.</p>\r\n<p>Nous vous informerons par e-mail et/ou par un avis visible sur notre service, avant que le changement ne devienne effectif et mettrons à jour la &quot;Dernière mise à jour&quot; date en haut de cette politique de confidentialité.</p>\r\n<p>Il vous est conseillé de consulter régulièrement cette politique de confidentialité pour tout changement. Les modifications apportées à cette politique de confidentialité entrent en vigueur lorsqu\'elles sont publiées sur cette page.</p>\r\n<h1 style = \"margin: 30px 0;\">Contactez-nous</h1>\r\n<p>Si vous avez des questions concernant cette politique de confidentialité, vous pouvez nous contacter: </p>\r\n<ul style = \"margin: 30px 0;\"><li>En visitant cette page sur notre site: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n<p>Généré à l\'aide de <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\"target=\"_blank\"> Générateur de politique de confidentialité gratuit</a></p>\r\n\r\n', 'Ishop - Aider', 'Aider', 'fr', 6),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Plan du site', 'Sitemap', 'Ishop - Plan du site', 'Plan du site', 'fr', 7),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'के बारे में', '<h1 style=\"margin: 30px 0;\">हमारे बारे में</h1>\r\n<h2 style=\"margin: 30px 0;\">परिभाषाएं</h2>\r\n<p><strong>खाता</strong> का अर्थ है कि हमारी सेवा या हमारी सेवा के कुछ हिस्सों तक पहुंचने के लिए आपके लिए बनाया गया एक अनूठा खाता।</p>\r\n<p><strong>कंपनी</strong> (इस अनुबंध में &quot;कंपनी&quot;, &quot;हम&quot;,&quot;हम&quot; या &quot;हमारा&quot; के रूप में संदर्भित) ishop.cholobangla.com, कनाडा को संदर्भित करता है। <</p>\r\n<p><strong>कुकीज़</strong> छोटी फ़ाइलें होती हैं जिन्हें किसी वेबसाइट द्वारा आपके कंप्यूटर, मोबाइल डिवाइस या किसी अन्य डिवाइस पर रखा जाता है, जिसमें उस वेबसाइट पर आपके ब्राउज़िंग इतिहास के कई उपयोगों के बीच उसका विवरण होता है।</p>\r\n<p><strong>देश</strong> संदर्भित करता है: न्यू ब्रंसविक, कनाडा</p>\r\n<p><strong>उपकरण</strong> का अर्थ है कोई भी उपकरण जो कंप्यूटर, सेलफोन या डिजिटल टैबलेट जैसी सेवा तक पहुंच सकता है।</p>\r\n<p><strong>व्यक्तिगत डेटा</strong> ऐसी कोई भी जानकारी है जो किसी पहचान योग्य व्यक्ति से संबंधित है।</p>\r\n<p><strong>सेवा</strong> वेबसाइट को संदर्भित करती है।</p>\r\n<p><strong>सेवा प्रदाता</strong> का अर्थ किसी प्राकृतिक या कानूनी व्यक्ति से है जो कंपनी की ओर से डेटा संसाधित करता है। यह तीसरे पक्ष की कंपनियों या कंपनी द्वारा नियोजित व्यक्तियों को सेवा की सुविधा के लिए संदर्भित करता है, कंपनी की ओर से सेवा प्रदान करने के लिए, सेवा से संबंधित सेवाओं का प्रदर्शन करने के लिए या सेवा का उपयोग कैसे किया जाता है, इसका विश्लेषण करने में कंपनी की सहायता करने के लिए।</p>\r\n<p><strong>उपयोग डेटा</strong> स्वचालित रूप से एकत्र किए गए डेटा को संदर्भित करता है, या तो सेवा के उपयोग से या स्वयं सेवा के बुनियादी ढांचे से उत्पन्न होता है (उदाहरण के लिए, पृष्ठ विज़िट की अवधि)।</p>\r\n<p><strong>वेबसाइट</strong> https://www.ishop.cholobangla.com/ को संदर्भित करता है, जिसे <a href=\"ishop.com\" rel=\"external nofollow noopener\" target=\"_blank\"> से एक्सेस किया जा सकता है ishop.cholobangla.com</a></p>\r\n<p><strong>आप</strong> का अर्थ उस व्यक्ति से है जो सेवा, या कंपनी, या अन्य कानूनी इकाई तक पहुंच बना रहा है या उसका उपयोग कर रहा है, जिसकी ओर से ऐसा व्यक्ति सेवा तक पहुंच बना रहा है या उपयोग कर रहा है, जैसा लागू हो।</p>\r\n', 'Ishop - के बारे में', 'के बारे में', 'hi', 1),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सामान्य प्रश्न', '<h1 style=\"margin: 30px 0;\">अक्सर पूछे जाने वाले प्रश्न</h1>\r\n<h2 style=\"margin: 30px 0;\">अवलोकन?</h2>\r\n<p>Ishop एक मल्टी वेंडर ईकॉमर्स CMS है। API <b>laravel</b>, एडमिन पैनल और फ्रंट एंड <strong>nuxt js</strong> के साथ बनाया गया है। डेटा <b>mysql स्टोर करने के लिए </b> का प्रयोग किया जा रहा है। अग्रिम <b>कैशिंग</b> प्रणाली के कारण साइट का प्रदर्शन बहुत तेज है। यह पूरी तरह उत्तरदायी और अत्यधिक अनुकूलन योग्य है। रेगुलर लाइसेंस एडमिन पैनल में बिल्ड फाइल्स नहीं मिलेंगी, इसका मतलब है कि आप एडमिन पैनल के किसी भी डिजाइन को कस्टमाइज नहीं कर पाएंगे। पैकेज फोल्डर में फ्रंटेंड और एपीआई सोर्स कोड मिलेगा। आप अपनी आवश्यकताओं के अनुसार दृश्यपटल और एपीआई को बहुत आसानी से अनुकूलित कर सकते हैं। विस्तारित लाइसेंस में एडमिन पैनल सोर्स कोड मिलेगा। किसी भी प्रश्न के लिए, कृपया हमारी टीम से <a href=\"mailto:iyozedcontact@gmail.com\" class=\"link\"><b>iyozedcontact@gmail.com</b></a></p> पर संपर्क करें।\r\n<h2 style=\"margin: 30px 0;\">क्या हम उपयोगकर्ताओं को इंस्टॉलेशन सहायता प्रदान करते हैं?</h2>\r\n<p>हां, हम उपयोगकर्ताओं को इंस्टॉलेशन सहायता प्रदान करते हैं। बेझिझक हमें कभी भी ईमेल करें।</p>\r\n<h2 style=\"margin: 30px 0;\">क्या हम उपयोगकर्ताओं को इंस्टॉलेशन गाइड प्रदान करते हैं?</h2>\r\n<p>हां, हम उपयोगकर्ताओं को पैकेज के साथ इंस्टॉलेशन गाइड प्रदान करते हैं।</p>\r\n<h2 style=\"margin: 30px 0;\">हमें उपयोगकर्ता के पास वापस जाने में कितना समय लगता है?</h2>\r\n<p>हम जितनी जल्दी हो सके उपयोगकर्ताओं को जवाब देते हैं।</p>\r\n', 'Ishop - सामान्य प्रश्न', 'सामान्य प्रश्न', 'hi', 2),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'संपर्क', 'Contact', 'Ishop - संपर्क', 'संपर्क', 'hi', 3),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'भुगतान वापसी की नीति', '<h1 style= \"margin: 30px 0;\">रिफंड पॉलिसी</h1>\r\n<h2 style= \"margin: 30px 0;\">परिभाषाएं</h2>\r\n<p>इस गोपनीयता नीति के प्रयोजनों के लिए: </p>\r\n<p><strong>खाता</strong> का अर्थ है हमारी सेवा या हमारी सेवा के कुछ हिस्सों तक पहुंचने के लिए आपके लिए बनाया गया एक अनूठा खाता।</p>\r\n<p><strong>कंपनी</strong> (इस अनुबंध में &quot;कंपनी&quot;, &quot;हम&quot;,&quot;हम&quot; या &quot;हमारा&quot; के रूप में संदर्भित) ishop.cholobangla.com, कनाडा को संदर्भित करता है। </p>\r\n<p><strong>कुकीज़</strong> छोटी फ़ाइलें होती हैं जिन्हें किसी वेबसाइट द्वारा आपके कंप्यूटर, मोबाइल डिवाइस या किसी अन्य डिवाइस पर रखा जाता है, जिसमें उस वेबसाइट पर आपके ब्राउज़िंग इतिहास के कई उपयोगों के बीच उसका विवरण होता है।</p>\r\n<p><strong>देश</strong> संदर्भित करता है: न्यू ब्रंसविक, कनाडा</p>\r\n<p><strong>उपकरण</strong> का अर्थ है कोई भी उपकरण जो कंप्यूटर, सेलफोन या डिजिटल टैबलेट जैसी सेवा तक पहुंच सकता है।</p>\r\n<p><strong>व्यक्तिगत डेटा</strong> कोई भी जानकारी है जो किसी पहचाने गए या पहचाने जाने योग्य व्यक्ति से संबंधित है।</p>\r\n<p><strong>सेवा</strong> वेबसाइट को संदर्भित करती है।</p>\r\n<p><strong>सेवा प्रदाता</strong> का अर्थ किसी प्राकृतिक या कानूनी व्यक्ति से है जो कंपनी की ओर से डेटा को संसाधित करता है। यह सेवा को सुविधाजनक बनाने, कंपनी की ओर से सेवा प्रदान करने, सेवा से संबंधित सेवाओं को निष्पादित करने या सेवा का उपयोग करने के तरीके का विश्लेषण करने में कंपनी की सहायता करने के लिए कंपनी द्वारा नियुक्त तृतीय-पक्ष कंपनियों या व्यक्तियों को संदर्भित करता है।</ प>\r\n<p><strong>उपयोग डेटा</strong> स्वचालित रूप से एकत्र किए गए डेटा को संदर्भित करता है, या तो सेवा के उपयोग से या स्वयं सेवा के बुनियादी ढांचे से उत्पन्न होता है (उदाहरण के लिए, पृष्ठ विज़िट की अवधि)।</p>\r\n<p><strong>वेबसाइट</strong> https: //ishop.cholobangla.com/ को संदर्भित करता है, जिसे <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> से एक्सेस किया जा सकता है ishop.cholobangla.com</a></p>\r\n<p><strong>आप</strong> का अर्थ उस व्यक्ति से है जो सेवा, या कंपनी, या अन्य कानूनी इकाई तक पहुंच बना रहा है या उपयोग कर रहा है, जिसकी ओर से ऐसा व्यक्ति सेवा तक पहुंच बना रहा है या उपयोग कर रहा है, जैसा लागू हो।</p>\r\n<h1 style= \"margin: 30px 0;\">अपने व्यक्तिगत डेटा का संग्रह और उपयोग करना</h1>\r\n<h2 style= \"margin: 30px 0;\">एकत्रित डेटा के प्रकार</h2>\r\n<h3 style= \"margin: 30px 0;\">व्यक्तिगत डेटा</h3>\r\n<p>हमारी सेवा का उपयोग करते समय, हम आपसे कुछ व्यक्तिगत पहचान योग्य जानकारी प्रदान करने के लिए कह सकते हैं जिसका उपयोग आपसे संपर्क करने या पहचानने के लिए किया जा सकता है। व्यक्तिगत रूप से पहचान योग्य जानकारी शामिल हो सकती है, लेकिन यह इन तक सीमित नहीं है: </p>\r\n<ul style= \"margin: 30px 0;\"><li>ईमेल पता</li><li>प्रथम नाम और उपनाम</li><li>पता, राज्य, प्रांत, ज़िप/पोस्टल कोड, शहर</li><li> ली><li>उपयोग डेटा</li></ul>\r\n<h3 style= \"margin: 30px 0;\">उपयोग डेटा</h3>\r\n<p>सेवा का उपयोग करते समय उपयोग डेटा स्वचालित रूप से एकत्र किया जाता है।</p>\r\n<p>उपयोग डेटा में आपके डिवाइस का इंटरनेट प्रोटोकॉल पता (जैसे आईपी पता), ब्राउज़र प्रकार, ब्राउज़र संस्करण, हमारी सेवा के पेज जिन पर आप जाते हैं, आपकी यात्रा का समय और तारीख, उन पेजों पर बिताया गया समय जैसी जानकारी शामिल हो सकती है , अद्वितीय उपकरण पहचानकर्ता और अन्य नैदानिक डेटा।</p>\r\n<p>जब आप मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं, तो हम स्वचालित रूप से कुछ जानकारी एकत्र कर सकते हैं, जिसमें आपके द्वारा उपयोग किए जाने वाले मोबाइल डिवाइस का प्रकार, आपकी मोबाइल डिवाइस की विशिष्ट आईडी, आपके मोबाइल डिवाइस का आईपी पता शामिल है, लेकिन यह इस तक सीमित नहीं है। , आपका मोबाइल ऑपरेटिंग सिस्टम, आपके द्वारा उपयोग किए जाने वाले मोबाइल इंटरनेट ब्राउज़र का प्रकार, विशिष्ट उपकरण पहचानकर्ता और अन्य नैदानिक डेटा।</p>\r\n<p>हम वह जानकारी भी एकत्र कर सकते हैं जो आपका ब्राउज़र तब भेजता है जब आप हमारी सेवा पर जाते हैं या जब आप किसी मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं।</p>\r\n<h3 style= \"margin: 30px 0;\">ट्रैकिंग तकनीकें और कुकीज</h3>\r\n<p>हम अपनी सेवा पर गतिविधि को ट्रैक करने और कुछ जानकारी संग्रहीत करने के लिए कुकीज़ और समान ट्रैकिंग तकनीकों का उपयोग करते हैं। उपयोग की जाने वाली ट्रैकिंग तकनीकें जानकारी एकत्र करने और ट्रैक करने और हमारी सेवा में सुधार और विश्लेषण करने के लिए बीकन, टैग और स्क्रिप्ट हैं। हमारे द्वारा उपयोग की जाने वाली तकनीकों में शामिल हो सकते हैं: </p>\r\n<ul style= \"margin: 30px 0;\"><li><strong>कुकीज़ या ब्राउज़र कुकीज़।</strong> कुकी आपके डिवाइस पर रखी गई एक छोटी फ़ाइल है। आप अपने ब्राउज़र को निर्देश दे सकते हैं कि वह सभी कूकीज़ को अस्वीकार कर दे या कूकी भेजे जाने के समय का संकेत दे। हालाँकि, यदि आप कुकीज़ स्वीकार नहीं करते हैं, तो आप हमारी सेवा के कुछ हिस्सों का उपयोग करने में सक्षम नहीं हो सकते हैं। जब तक आपने अपनी ब्राउज़र सेटिंग को समायोजित नहीं किया है ताकि यह कुकीज़ को अस्वीकार कर दे, हमारी सेवा कुकीज़ का उपयोग कर सकती है।</li><li><strong>वेब बीकन।</strong> हमारी सेवा के कुछ अनुभागों और हमारे ईमेल में छोटी इलेक्ट्रॉनिक फ़ाइलें हो सकती हैं वेब बीकन के रूप में जाना जाता है (जिन्हें स्पष्ट gifs, पिक्सेल टैग और सिंगल-पिक्सेल gifs के रूप में भी जाना जाता है) जो कंपनी को अनुमति देते हैं, उदाहरण के लिए, उन उपयोगकर्ताओं की गणना करने के लिए जो उन पृष्ठों पर गए हैं या एक ईमेल खोला है और अन्य संबंधित वेबसाइट आंकड़ों के लिए (उदाहरण के लिए) , एक निश्चित खंड की लोकप्रियता रिकॉर्ड करना और सिस्टम और सर्वर अखंडता की पुष्टि करना)।</li></ul>\r\n<p>कुकीज़ &quot;स्थायी&quot; या &quot;सत्र&quot; कुकीज़। जब आप ऑफ़लाइन हो जाते हैं तो स्थायी कुकीज़ आपके व्यक्तिगत कंप्यूटर या मोबाइल डिवाइस पर रहती हैं, जबकि जैसे ही आप अपना वेब ब्राउज़र बंद करते हैं, सत्र कुकीज़ हटा दी जाती हैं। कुकीज़ के बारे में <a href= \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> नि:शुल्क गोपनीयता नीति वेबसाइट</a> लेख पर अधिक जानें । </p>\r\n<p>हम नीचे निर्धारित उद्देश्यों के लिए सत्र और स्थायी कुकीज़ दोनों का उपयोग करते हैं: </p>\r\n<p><strong>आवश्यक / आवश्यक कुकीज़</strong></p>\r\n<p>प्रकार: सत्र कुकीज़</p>\r\n<p>द्वारा प्रशासित: हमारे</p>\r\n<p>उद्देश्य: ये कुकीज़ आपको वेबसाइट के माध्यम से उपलब्ध सेवाएं प्रदान करने और आपको इसकी कुछ विशेषताओं का उपयोग करने में सक्षम बनाने के लिए आवश्यक हैं। वे उपयोगकर्ताओं को प्रमाणित करने और उपयोगकर्ता खातों के कपटपूर्ण उपयोग को रोकने में मदद करते हैं। इन कुकीज़ के बिना, आपके द्वारा मांगी गई सेवाएँ प्रदान नहीं की जा सकती हैं, और हम केवल इन कुकीज़ का उपयोग आपको वे सेवाएँ प्रदान करने के लिए करते हैं।</p>\r\n<p><strong>कुकी नीति / सूचना स्वीकृति कुकीज़</strong></p>\r\n<p>प्रकार: स्थायी कुकीज़</p>\r\n<p>द्वारा प्रशासित: हमारे</p>\r\n<p>उद्देश्य: ये कुकीज़ पहचानती हैं कि क्या उपयोगकर्ताओं ने वेबसाइट पर कुकीज़ के उपयोग को स्वीकार किया है।</p>\r\n<p><strong>कार्यक्षमता कुकीज़</strong></p>\r\n<p>प्रकार: स्थायी कुकीज़</p>\r\n<p>द्वारा प्रशासित: हमारे</p>\r\n<p>उद्देश्य: जब आप वेबसाइट का उपयोग करते हैं तो ये कुकीज़ हमें आपके द्वारा चुने गए विकल्पों को याद रखने की अनुमति देती हैं, जैसे कि आपके लॉगिन विवरण या भाषा वरीयता को याद रखना। इन कुकीज़ का उद्देश्य आपको एक अधिक व्यक्तिगत अनुभव प्रदान करना है और हर बार जब आप वेबसाइट का उपयोग करते हैं तो आपको अपनी प्राथमिकताओं को फिर से दर्ज करने से बचना है।</p>\r\n<p>हमारे द्वारा उपयोग की जाने वाली कुकीज और कुकीज के बारे में आपकी पसंद के बारे में अधिक जानकारी के लिए, कृपया हमारी कुकीज नीति या हमारी गोपनीयता नीति के कुकीज अनुभाग पर जाएं।</p>\r\n<h2 style= \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का उपयोग</h2>\r\n<p>कंपनी व्यक्तिगत डेटा का उपयोग निम्नलिखित उद्देश्यों के लिए कर सकती है: </p>\r\n<p><strong>हमारी सेवा प्रदान करने और बनाए रखने के लिए</strong>, जिसमें हमारी सेवा के उपयोग की निगरानी करना भी शामिल है।</p>\r\n<p><strong>अपना खाता प्रबंधित करने के लिए: </strong> सेवा के उपयोगकर्ता के रूप में अपने पंजीकरण को प्रबंधित करने के लिए। आपके द्वारा प्रदान किया जाने वाला व्यक्तिगत डेटा आपको सेवा की विभिन्न कार्यात्मकताओं तक पहुंच प्रदान कर सकता है जो एक पंजीकृत उपयोगकर्ता के रूप में आपके लिए उपलब्ध हैं।</p>\r\n<p><strong>किसी अनुबंध के प्रदर्शन के लिए: </strong> आपके द्वारा खरीदे गए उत्पादों, वस्तुओं या सेवाओं या सेवा के माध्यम से हमारे साथ किसी अन्य अनुबंध के खरीद अनुबंध का विकास, अनुपालन और उपक्रम।</p> प>\r\n<p><strong>आपसे संपर्क करने के लिए: </strong> आपसे ईमेल, टेलीफोन कॉल, एसएमएस, या इलेक्ट्रॉनिक संचार के अन्य समकक्ष रूपों से संपर्क करने के लिए, जैसे कि मोबाइल एप्लिकेशन की पुश सूचनाएँ अपडेट या कार्यात्मकताओं से संबंधित सूचनात्मक संचार के बारे में, उत्पादों या अनुबंधित सेवाओं, सुरक्षा अद्यतन सहित, जब उनके कार्यान्वयन के लिए आवश्यक या उचित हो।</p>\r\n<p><strong>आपको प्रदान करने के लिए</strong> अन्य सामान, सेवाओं और घटनाओं के बारे में समाचार, विशेष ऑफ़र और सामान्य जानकारी जो हम प्रदान करते हैं जो आपके द्वारा पहले से खरीदे गए या पूछताछ के समान हैं, जब तक कि आपने नहीं चुना है ऐसी जानकारी प्राप्त करें।</p>\r\n<p><strong>आपके अनुरोधों को प्रबंधित करने के लिए: </strong> आपके अनुरोधों में भाग लेने और उन्हें प्रबंधित करने के लिए।</p>\r\n<p><strong>व्यापार हस्तांतरण के लिए: </strong> हम आपकी जानकारी का उपयोग विलय, विनिवेश, पुनर्गठन, पुनर्गठन, विघटन, या अन्य बिक्री या हमारी कुछ या सभी संपत्तियों के हस्तांतरण के मूल्यांकन या संचालन के लिए कर सकते हैं, चाहे एक चल रही चिंता या दिवालिएपन, परिसमापन, या इसी तरह की कार्यवाही के हिस्से के रूप में, जिसमें हमारे सेवा उपयोगकर्ताओं के बारे में हमारे पास मौजूद व्यक्तिगत डेटा हस्तांतरित संपत्तियों में से है।</p>\r\n<p><strong>अन्य उद्देश्यों के लिए</strong>: हम आपकी जानकारी का उपयोग अन्य उद्देश्यों के लिए कर सकते हैं, जैसे डेटा विश्लेषण, उपयोग प्रवृत्तियों की पहचान करना, हमारे प्रचार अभियानों की प्रभावशीलता का निर्धारण करना और हमारी सेवा, उत्पादों, सेवाओं का मूल्यांकन और सुधार करना , मार्केटिंग और आपका अनुभव।</p>\r\n\r\n', 'Ishop - भुगतान वापसी की नीति', 'भुगतान वापसी की नीति', 'hi', 4);
INSERT INTO `page_langs` (`id`, `created_at`, `updated_at`, `title`, `description`, `meta_title`, `meta_description`, `lang`, `page_id`) VALUES
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'गोपनीयता नीति', '<h1 style = \"margin: 30px 0;\">गोपनीयता नीति</h1>\r\n<p>पिछला अपडेट : 13 दिसंबर, 2022</p>\r\n<p>यह गोपनीयता नीति आपके द्वारा सेवा का उपयोग करने पर आपकी जानकारी के संग्रह, उपयोग और प्रकटीकरण पर हमारी नीतियों और प्रक्रियाओं का वर्णन करती है और आपको आपके गोपनीयता अधिकारों के बारे में बताती है और कानून आपकी सुरक्षा कैसे करता है।</p>\r\n<p>हम सेवा प्रदान करने और उसमें सुधार करने के लिए आपके व्यक्तिगत डेटा का उपयोग करते हैं। सेवा का उपयोग करके, आप इस गोपनीयता नीति के अनुसार जानकारी के संग्रह और उपयोग के लिए सहमत होते हैं। यह गोपनीयता नीति <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> निःशुल्क गोपनीयता नीति जेनरेटर</a> की सहायता से बनाई गई है । </p>\r\n<h1 style = \"margin: 30px 0;\">व्याख्या और परिभाषाएं</h1>\r\n<h2 style = \"margin: 30px 0;\">व्याख्या</h2>\r\n<p>जिन शब्दों के शुरुआती अक्षर बड़े अक्षरों में लिखे गए हैं, उनके अर्थ निम्नलिखित शर्तों के तहत परिभाषित किए गए हैं। निम्नलिखित परिभाषाओं का एक ही अर्थ होगा चाहे वे एकवचन में हों या बहुवचन में।</p>\r\n<h2 स्टाइल = \"margin: 30px 0;\">परिभाषाएं</h2>\r\n<p>इस गोपनीयता नीति के प्रयोजनों के लिए : </p>\r\n<strong>खाता</strong> का अर्थ है हमारी सेवा या हमारी सेवा के कुछ हिस्सों तक पहुंचने के लिए आपके लिए बनाया गया एक अनूठा खाता।</p>\r\n<p><strong>कंपनी</strong> (इस अनुबंध में &quot;कंपनी&quot;, &quot;हम&quot;,&quot;हम&quot; या &quot;हमारा&quot; के रूप में संदर्भित) ishop.cholobangla.com, कनाडा को संदर्भित करता है। </p>\r\n<p><strong>कुकीज़</strong> छोटी फ़ाइलें होती हैं जिन्हें किसी वेबसाइट द्वारा आपके कंप्यूटर, मोबाइल डिवाइस या किसी अन्य डिवाइस पर रखा जाता है, जिसमें उस वेबसाइट पर आपके ब्राउज़िंग इतिहास के कई उपयोगों के बीच उसका विवरण होता है।</p>\r\n<p><strong>देश</strong> का अर्थ है : न्यू ब्रंसविक, कनाडा</p>\r\n<p><strong>उपकरण</strong> का अर्थ है कोई भी उपकरण जो कंप्यूटर, सेलफोन या डिजिटल टैबलेट जैसी सेवा तक पहुंच सकता है।</p>\r\n<p><strong>व्यक्तिगत डेटा</strong> कोई भी जानकारी है जो किसी पहचाने गए या पहचाने जाने योग्य व्यक्ति से संबंधित है।</p>\r\n<p><strong>सेवा</strong> वेबसाइट को संदर्भित करती है।</p>\r\n<p><strong>सेवा प्रदाता</strong> का अर्थ किसी प्राकृतिक या कानूनी व्यक्ति से है जो कंपनी की ओर से डेटा को संसाधित करता है। यह सेवा को सुविधाजनक बनाने, कंपनी की ओर से सेवा प्रदान करने, सेवा से संबंधित सेवाओं को निष्पादित करने या सेवा का उपयोग करने के तरीके का विश्लेषण करने में कंपनी की सहायता करने के लिए कंपनी द्वारा नियुक्त तृतीय-पक्ष कंपनियों या व्यक्तियों को संदर्भित करता है।</ प>\r\n<p><strong>उपयोग डेटा</strong> स्वचालित रूप से एकत्र किए गए डेटा को संदर्भित करता है, या तो सेवा के उपयोग से या स्वयं सेवा के बुनियादी ढांचे से उत्पन्न होता है (उदाहरण के लिए, पृष्ठ विज़िट की अवधि)।</p>\r\n<p><strong>वेबसाइट</strong> https को संदर्भित करता है : //ishop.cholobangla.com/, <a href=\"ishop.cholobangla.com\" rel=\"external nofollow noopener\" target=\"_blank\"> से एक्सेस किया जा सकता है ishop.cholobangla.com</a></p>\r\n<p><strong>आप</strong> का अर्थ उस व्यक्ति से है जो सेवा, या कंपनी, या अन्य कानूनी इकाई तक पहुंच बना रहा है या उपयोग कर रहा है, जिसकी ओर से ऐसा व्यक्ति सेवा तक पहुंच बना रहा है या उपयोग कर रहा है, जैसा लागू हो।</p>\r\n<h1 style = \"margin: 30px 0;\">अपना व्यक्तिगत डेटा एकत्र करना और उसका उपयोग करना</h1>\r\n<h2 style = \"margin: 30px 0;\">एकत्रित डेटा के प्रकार</h2>\r\n<h3 style = \"margin: 30px 0;\">व्यक्तिगत डेटा</h3>\r\n<p>हमारी सेवा का उपयोग करते समय, हम आपसे कुछ व्यक्तिगत पहचान योग्य जानकारी प्रदान करने के लिए कह सकते हैं जिसका उपयोग आपसे संपर्क करने या पहचानने के लिए किया जा सकता है। व्यक्तिगत रूप से पहचान योग्य जानकारी शामिल हो सकती है, लेकिन यह इन्हीं तक सीमित नहीं है : </p>\r\n<ul style = \"margin: 30px 0;\"><li>ईमेल पता</li><li>प्रथम नाम और उपनाम</li><li>पता, राज्य, प्रांत, ज़िप/पोस्टल कोड, शहर</li><li> ली><li>उपयोग डेटा</li></ul>\r\n<h3 style = \"margin: 30px 0;\">उपयोग डेटा</h3>\r\n<p>सेवा का उपयोग करते समय उपयोग डेटा स्वचालित रूप से एकत्र किया जाता है।</p>\r\n<p>उपयोग डेटा में आपके डिवाइस का इंटरनेट प्रोटोकॉल पता (जैसे आईपी पता), ब्राउज़र प्रकार, ब्राउज़र संस्करण, हमारी सेवा के पेज जिन पर आप जाते हैं, आपकी यात्रा का समय और तारीख, उन पेजों पर बिताया गया समय जैसी जानकारी शामिल हो सकती है , अद्वितीय उपकरण पहचानकर्ता और अन्य नैदानिक डेटा।</p>\r\n<p>जब आप मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं, तो हम स्वचालित रूप से कुछ जानकारी एकत्र कर सकते हैं, जिसमें आपके द्वारा उपयोग किए जाने वाले मोबाइल डिवाइस का प्रकार, आपकी मोबाइल डिवाइस की विशिष्ट आईडी, आपके मोबाइल डिवाइस का आईपी पता शामिल है, लेकिन यह इस तक सीमित नहीं है। , आपका मोबाइल ऑपरेटिंग सिस्टम, आपके द्वारा उपयोग किए जाने वाले मोबाइल इंटरनेट ब्राउज़र का प्रकार, विशिष्ट उपकरण पहचानकर्ता और अन्य नैदानिक डेटा।</p>\r\n<p>हम वह जानकारी भी एकत्र कर सकते हैं जो आपका ब्राउज़र तब भेजता है जब आप हमारी सेवा पर जाते हैं या जब आप किसी मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं।</p>\r\n<h3 style = \"margin: 30px 0;\">ट्रैकिंग तकनीकें और कुकीज</h3>\r\n<p>हम अपनी सेवा पर गतिविधि को ट्रैक करने और कुछ जानकारी संग्रहीत करने के लिए कुकीज़ और समान ट्रैकिंग तकनीकों का उपयोग करते हैं। उपयोग की जाने वाली ट्रैकिंग तकनीकें जानकारी एकत्र करने और ट्रैक करने और हमारी सेवा में सुधार और विश्लेषण करने के लिए बीकन, टैग और स्क्रिप्ट हैं। हम जिन तकनीकों का उपयोग करते हैं उनमें शामिल हो सकते हैं : </p>\r\n<p><strong>कुकी या ब्राउज़र कुकी।</strong> कुकी आपके डिवाइस पर रखी गई एक छोटी फ़ाइल होती है। आप अपने ब्राउज़र को निर्देश दे सकते हैं कि वह सभी कूकीज़ को अस्वीकार कर दे या कूकी भेजे जाने के समय का संकेत दे। हालाँकि, यदि आप कुकीज़ स्वीकार नहीं करते हैं, तो आप हमारी सेवा के कुछ हिस्सों का उपयोग करने में सक्षम नहीं हो सकते हैं। जब तक आपने अपनी ब्राउज़र सेटिंग को समायोजित नहीं किया है ताकि यह कुकीज़ को मना कर दे, हमारी सेवा कुकीज़ का उपयोग कर सकती है।</p>\r\n<p><strong>वेब बीकन।</strong> हमारी सेवा के कुछ अनुभागों और हमारे ईमेल में छोटी इलेक्ट्रॉनिक फ़ाइलें हो सकती हैं जिन्हें वेब बीकन के रूप में जाना जाता है (जिन्हें स्पष्ट gifs, पिक्सेल टैग और सिंगल-पिक्सेल gifs भी कहा जाता है) जो कंपनी को अनुमति देती हैं, उदाहरण के लिए, उन पेजों पर जाने वाले या ईमेल खोलने वाले उपयोगकर्ताओं की गणना करने के लिए और अन्य संबंधित वेबसाइट आंकड़ों के लिए (उदाहरण के लिए, एक निश्चित अनुभाग की लोकप्रियता रिकॉर्ड करना और सिस्टम और सर्वर अखंडता की पुष्टि करना)।</p>\r\n<p>कुकीज़ &quot;स्थायी&quot; या &quot;सत्र&quot; कुकीज़। जब आप ऑफ़लाइन हो जाते हैं तो स्थायी कुकीज़ आपके व्यक्तिगत कंप्यूटर या मोबाइल डिवाइस पर रहती हैं, जबकि जैसे ही आप अपना वेब ब्राउज़र बंद करते हैं, सत्र कुकीज़ हटा दी जाती हैं। <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> निःशुल्क गोपनीयता नीति वेबसाइट</a> लेख पर कुकीज़ के बारे में अधिक जानें । </p>\r\n<p>हम नीचे निर्धारित उद्देश्यों के लिए सत्र और स्थायी कुकीज़ दोनों का उपयोग करते हैं : </p>\r\n<p><strong>आवश्यक / आवश्यक कुकीज़</strong></p>\r\n<p>प्रकार : सत्र कुकीज़</p>\r\n<p>द्वारा प्रशासित : हमारे</p>\r\n<p>उद्देश्य : ये कुकीज़ आपको वेबसाइट के माध्यम से उपलब्ध सेवाएं प्रदान करने और आपको इसकी कुछ विशेषताओं का उपयोग करने में सक्षम बनाने के लिए आवश्यक हैं। वे उपयोगकर्ताओं को प्रमाणित करने और उपयोगकर्ता खातों के कपटपूर्ण उपयोग को रोकने में मदद करते हैं। इन कुकीज़ के बिना, आपके द्वारा मांगी गई सेवाएँ प्रदान नहीं की जा सकती हैं, और हम केवल इन कुकीज़ का उपयोग आपको वे सेवाएँ प्रदान करने के लिए करते हैं।</p>\r\n<p><strong>कुकी नीति / सूचना स्वीकृति कुकीज़</strong></p>\r\n<p>प्रकार : स्थायी कुकीज़</p>\r\n<p>द्वारा प्रशासित : हमारे</p>\r\n<p>उद्देश्य : ये कुकीज़ पहचानती हैं कि क्या उपयोगकर्ताओं ने वेबसाइट पर कुकीज़ के उपयोग को स्वीकार किया है।</p>\r\n<p><strong>कार्यक्षमता कुकीज़</strong></p>\r\n<p>प्रकार : स्थायी कुकीज़</p>\r\n<p>द्वारा प्रशासित : हमारे</p>\r\n<p>उद्देश्य : जब आप वेबसाइट का उपयोग करते हैं तो ये कुकीज़ हमें आपके द्वारा चुने गए विकल्पों को याद रखने की अनुमति देती हैं, जैसे कि आपके लॉगिन विवरण या भाषा वरीयता को याद रखना। इन कुकीज़ का उद्देश्य आपको एक अधिक व्यक्तिगत अनुभव प्रदान करना है और हर बार जब आप वेबसाइट का उपयोग करते हैं तो आपको अपनी प्राथमिकताओं को फिर से दर्ज करने से बचना है।</p>\r\n<p>हमारे द्वारा उपयोग की जाने वाली कुकीज और कुकीज के बारे में आपकी पसंद के बारे में अधिक जानकारी के लिए, कृपया हमारी कुकीज नीति या हमारी गोपनीयता नीति के कुकीज अनुभाग पर जाएं।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का उपयोग</h2>\r\n<p>कंपनी व्यक्तिगत डेटा का उपयोग निम्नलिखित उद्देश्यों के लिए कर सकती है : </p>\r\n<p><strong>हमारी सेवा प्रदान करने और बनाए रखने के लिए</strong>, जिसमें हमारी सेवा के उपयोग की निगरानी करना भी शामिल है।</p>\r\n<p><strong>आपके खाते को प्रबंधित करने के लिए : </strong> सेवा के उपयोगकर्ता के रूप में आपके पंजीकरण को प्रबंधित करने के लिए। आपके द्वारा प्रदान किया जाने वाला व्यक्तिगत डेटा आपको सेवा की विभिन्न कार्यात्मकताओं तक पहुंच प्रदान कर सकता है जो एक पंजीकृत उपयोगकर्ता के रूप में आपके लिए उपलब्ध हैं।</p>\r\n<p><strong>अनुबंध के प्रदर्शन के लिए : </strong> आपके द्वारा खरीदे गए उत्पादों, वस्तुओं या सेवाओं के लिए खरीद अनुबंध का विकास, अनुपालन और उपक्रम या सेवा के माध्यम से हमारे साथ कोई अन्य अनुबंध।</strong> प>\r\n<p><strong>आपसे संपर्क करने के लिए : </strong> आपसे ईमेल, टेलीफोन कॉल, एसएमएस, या इलेक्ट्रॉनिक संचार के अन्य समकक्ष रूपों से संपर्क करने के लिए, जैसे कि मोबाइल एप्लिकेशन की पुश सूचनाएँ अपडेट या कार्यात्मकताओं से संबंधित सूचनात्मक संचार के बारे में, उत्पादों या अनुबंधित सेवाओं, सुरक्षा अद्यतन सहित, जब उनके कार्यान्वयन के लिए आवश्यक या उचित हो।</p>\r\n<p><strong>आपको प्रदान करने के लिए</strong> अन्य सामान, सेवाओं और घटनाओं के बारे में समाचार, विशेष ऑफ़र और सामान्य जानकारी जो हम प्रदान करते हैं जो आपके द्वारा पहले से खरीदे गए या पूछताछ के समान हैं, जब तक कि आपने नहीं चुना है ऐसी जानकारी प्राप्त करें।</p>\r\n<p><strong>आपके अनुरोधों को प्रबंधित करने के लिए : </strong> आपके अनुरोधों में भाग लेने और उन्हें प्रबंधित करने के लिए।</p>\r\n<p><strong>व्यावसायिक हस्तांतरण के लिए : </strong> हम आपकी जानकारी का उपयोग विलय, विनिवेश, पुनर्गठन, पुनर्गठन, विघटन, या अन्य बिक्री या हमारी कुछ या सभी संपत्तियों के हस्तांतरण के मूल्यांकन या संचालन के लिए कर सकते हैं, चाहे एक चल रही चिंता या दिवालिएपन, परिसमापन, या इसी तरह की कार्यवाही के हिस्से के रूप में, जिसमें हमारे सेवा उपयोगकर्ताओं के बारे में हमारे पास मौजूद व्यक्तिगत डेटा हस्तांतरित संपत्तियों में से है।</p>\r\n<p><strong>अन्य उद्देश्यों के लिए</strong> : हम आपकी जानकारी का उपयोग अन्य उद्देश्यों के लिए कर सकते हैं, जैसे डेटा विश्लेषण, उपयोग प्रवृत्तियों की पहचान करना, हमारे प्रचार अभियानों की प्रभावशीलता का निर्धारण करना और हमारी सेवा, उत्पादों, सेवाओं का मूल्यांकन और सुधार करना , मार्केटिंग और आपका अनुभव।</p>\r\n<p>हम निम्नलिखित स्थितियों में आपकी व्यक्तिगत जानकारी साझा कर सकते हैं : </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>सेवा प्रदाताओं के साथ:</strong> हम आपसे संपर्क करने के लिए, हमारी सेवा के उपयोग की निगरानी और विश्लेषण करने के लिए सेवा प्रदाताओं के साथ आपकी व्यक्तिगत जानकारी साझा कर सकते हैं।< /li><li><strong>व्यावसायिक हस्तांतरण के लिए:</strong> हम आपकी व्यक्तिगत जानकारी को किसी भी विलय, कंपनी की संपत्ति की बिक्री, वित्तपोषण, या सभी या एक के अधिग्रहण के संबंध में, या बातचीत के दौरान साझा या स्थानांतरित कर सकते हैं। हमारे व्यवसाय का एक हिस्सा दूसरी कंपनी के साथ।</li><li><strong>सहयोगियों के साथ:</strong> हम आपकी जानकारी को अपने सहयोगियों के साथ साझा कर सकते हैं, इस स्थिति में हमें उन सहयोगियों से इस गोपनीयता नीति का सम्मान करने की आवश्यकता होगी। संबद्धों में हमारी मूल कंपनी और कोई अन्य सहायक, संयुक्त उद्यम भागीदार या अन्य कंपनियां शामिल हैं जिन्हें हम नियंत्रित करते हैं या जो हमारे साथ सामान्य नियंत्रण में हैं।</li><li><strong>व्यावसायिक भागीदारों के साथ:</strong> हम आपका साझा कर सकते हैं आपको कुछ उत्पादों, सेवाओं या प्रचारों की पेशकश करने के लिए हमारे व्यापार भागीदारों के साथ जानकारी।</li><li><strong>अन्य उपयोगकर्ताओं के साथ:</strong> जब आप व्यक्तिगत जानकारी साझा करते हैं या सार्वजनिक क्षेत्रों में अन्य उपयोगकर्ताओं के साथ बातचीत करते हैं, जैसे जानकारी सभी उपयोगकर्ताओं द्वारा देखी जा सकती है और बाहर सार्वजनिक रूप से वितरित की जा सकती है।</li><li><strong>आपकी सहमति से</strong>: हम आपकी सहमति से किसी अन्य उद्देश्य के लिए आपकी व्यक्तिगत जानकारी का खुलासा कर सकते हैं।</li> </ul>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का प्रतिधारण</h2>\r\n<p>कंपनी आपके व्यक्तिगत डेटा को केवल तब तक बनाए रखेगी जब तक कि इस गोपनीयता नीति में निर्धारित उद्देश्यों के लिए आवश्यक है। हम अपने कानूनी दायित्वों का पालन करने के लिए आवश्यक सीमा तक आपके व्यक्तिगत डेटा को बनाए रखेंगे और उसका उपयोग करेंगे (उदाहरण के लिए, यदि हमें लागू कानूनों का पालन करने के लिए आपके डेटा को बनाए रखने की आवश्यकता है), विवादों को हल करें, और हमारे कानूनी समझौतों और नीतियों को लागू करें।</ प>\r\n<p>कंपनी आंतरिक विश्लेषण उद्देश्यों के लिए उपयोग डेटा को भी बनाए रखेगी। उपयोग डेटा को आम तौर पर कम समय के लिए बनाए रखा जाता है, सिवाय इसके कि जब इस डेटा का उपयोग सुरक्षा को मजबूत करने या हमारी सेवा की कार्यक्षमता में सुधार करने के लिए किया जाता है, या हम इस डेटा को अधिक समय तक बनाए रखने के लिए कानूनी रूप से बाध्य होते हैं।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का स्थानांतरण</h2>\r\n<p>व्यक्तिगत डेटा सहित आपकी जानकारी को कंपनी के ऑपरेटिंग कार्यालयों और किसी अन्य स्थान पर संसाधित किया जाता है जहां प्रसंस्करण में शामिल पार्टियां स्थित होती हैं। इसका मतलब यह है कि यह जानकारी आपके राज्य, प्रांत, देश या अन्य सरकारी क्षेत्राधिकार के बाहर स्थित कंप्यूटरों में स्थानांतरित की जा सकती है — और उन पर रखी जा सकती है, जहां डेटा सुरक्षा कानून आपके अधिकार क्षेत्र से भिन्न हो सकते हैं।</p>\r\n<p>इस गोपनीयता नीति के लिए आपकी सहमति के बाद ऐसी जानकारी जमा करना उस स्थानांतरण के लिए आपकी सहमति का प्रतिनिधित्व करता है।</p>\r\n<p>कंपनी यह सुनिश्चित करने के लिए उचित रूप से आवश्यक सभी कदम उठाएगी कि आपके डेटा को सुरक्षित रूप से और इस गोपनीयता नीति के अनुसार व्यवहार किया जाता है और आपके व्यक्तिगत डेटा का कोई भी स्थानांतरण किसी संगठन या देश में तब तक नहीं होगा जब तक पर्याप्त नियंत्रण न हो आपके डेटा और अन्य व्यक्तिगत जानकारी की सुरक्षा।</p>\r\n<h2 style = \"margin: 30px 0;\">अपना व्यक्तिगत डेटा हटाएं</h2>\r\n<p>आपके पास यह अनुरोध करने का अधिकार है कि हम आपके बारे में एकत्र किए गए व्यक्तिगत डेटा को हटाने में सहायता करें।</p>\r\n<p>हमारी सेवा आपको सेवा के भीतर से आपके बारे में कुछ जानकारी को हटाने की क्षमता दे सकती है।</p>\r\n<p>आप किसी भी समय अपने खाते में साइन इन करके, यदि आपके पास है, और खाता सेटिंग अनुभाग पर जाकर अपनी जानकारी को अपडेट, संशोधित या हटा सकते हैं जो आपको आपकी व्यक्तिगत जानकारी प्रबंधित करने की अनुमति देता है। आप हमें प्रदान की गई किसी भी व्यक्तिगत जानकारी तक पहुंच का अनुरोध करने, सही करने या हटाने के लिए भी हमसे संपर्क कर सकते हैं।</p>\r\n<p>कृपया ध्यान दें, हालांकि, हमें कुछ जानकारी को बनाए रखने की आवश्यकता हो सकती है जब हमारे पास ऐसा करने के लिए कानूनी बाध्यता या कानूनी आधार हो।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का प्रकटीकरण</h2>\r\n<h3 style = \"margin: 30px 0;\">व्यावसायिक लेन-देन</h3>\r\n<p>यदि कंपनी विलय, अधिग्रहण या परिसंपत्ति बिक्री में शामिल है, तो आपका व्यक्तिगत डेटा स्थानांतरित किया जा सकता है। आपका व्यक्तिगत डेटा स्थानांतरित होने और एक अलग गोपनीयता नीति के अधीन होने से पहले हम नोटिस प्रदान करेंगे।</p>\r\n<h3 style = \"margin: 30px 0;\">कानून प्रवर्तन</h3>\r\n<p>कुछ परिस्थितियों में, कंपनी को आपके व्यक्तिगत डेटा का खुलासा करने की आवश्यकता हो सकती है यदि कानून द्वारा या सार्वजनिक अधिकारियों (जैसे एक अदालत या एक सरकारी एजेंसी) द्वारा मान्य अनुरोधों के जवाब में ऐसा करना आवश्यक हो।</p>\r\n<h3 style = \"margin: 30px 0;\">अन्य कानूनी आवश्यकताएं</h3>\r\n<p>कंपनी आपके व्यक्तिगत डेटा को अच्छे विश्वास में प्रकट कर सकती है कि इस तरह की कार्रवाई आवश्यक है : </p>\r\n<ul><li>एक कानूनी बाध्यता का पालन करें</li><li>कंपनी के अधिकारों या संपत्ति की रक्षा और बचाव करें</li><li>सेवा के संबंध में संभावित गलत कार्यों को रोकें या जांच करें</li>< ली>सेवा के उपयोगकर्ताओं या जनता की व्यक्तिगत सुरक्षा की रक्षा करें</li><li>कानूनी दायित्व से रक्षा करें</li></ul>\r\n<h2>आपके व्यक्तिगत डेटा की सुरक्षा</h2>\r\n<p>आपके व्यक्तिगत डेटा की सुरक्षा हमारे लिए महत्वपूर्ण है, लेकिन याद रखें कि इंटरनेट पर प्रसारण का कोई भी तरीका या इलेक्ट्रॉनिक स्टोरेज का तरीका 100% सुरक्षित नहीं है। जबकि हम आपके व्यक्तिगत डेटा की सुरक्षा के लिए व्यावसायिक रूप से स्वीकार्य साधनों का उपयोग करने का प्रयास करते हैं, हम इसकी पूर्ण सुरक्षा की गारंटी नहीं दे सकते।</p>\r\n<h1>बच्चों की गोपनीयता</h1>\r\n<p>हमारी सेवा 13 वर्ष से कम आयु के किसी भी व्यक्ति को संबोधित नहीं करती है। हम जानबूझकर 13 वर्ष से कम आयु के किसी व्यक्ति से व्यक्तिगत पहचान योग्य जानकारी एकत्र नहीं करते हैं। यदि आप माता-पिता या अभिभावक हैं और आप जानते हैं कि आपके बच्चे ने हमें व्यक्तिगत जानकारी प्रदान की है डेटा, कृपया हमसे संपर्क करें। अगर हमें पता चलता है कि हमने 13 साल से कम उम्र के किसी भी व्यक्ति से माता-पिता की सहमति के सत्यापन के बिना व्यक्तिगत डेटा एकत्र किया है, तो हम अपने सर्वर से उस जानकारी को हटाने के लिए कदम उठाते हैं।</p>\r\n<p>यदि हमें आपकी जानकारी को संसाधित करने के लिए कानूनी आधार के रूप में सहमति पर भरोसा करने की आवश्यकता है और आपके देश को माता-पिता की सहमति की आवश्यकता है, तो हमें उस जानकारी को एकत्र करने और उसका उपयोग करने से पहले आपके माता-पिता की सहमति की आवश्यकता हो सकती है।</p>\r\n<h1 style = \"margin: 30px 0;\">अन्य वेबसाइटों के लिंक</h1>\r\n<p>हमारी सेवा में अन्य वेबसाइटों के लिंक हो सकते हैं जो हमारे द्वारा संचालित नहीं हैं। यदि आप किसी तृतीय पक्ष लिंक पर क्लिक करते हैं, तो आपको उस तृतीय पक्ष की साइट पर निर्देशित कर दिया जाएगा। हम आपको दृढ़ता से सलाह देते हैं कि आप जिस भी साइट पर जाते हैं, उसकी गोपनीयता नीति की समीक्षा करें।</p>\r\n<p>किसी तीसरे पक्ष की साइट या सेवाओं की सामग्री, गोपनीयता नीतियों या प्रथाओं पर हमारा कोई नियंत्रण नहीं है और न ही हम इसके लिए कोई ज़िम्मेदारी लेते हैं।</p>\r\n<h1 style = \"margin: 30px 0;\">इस निजता नीति में बदलाव</h1>\r\n<p>हम अपनी गोपनीयता नीति को समय-समय पर अपडेट कर सकते हैं। हम इस पृष्ठ पर नई गोपनीयता नीति पोस्ट करके किसी भी परिवर्तन के बारे में आपको सूचित करेंगे।</p>\r\n<p>बदलाव प्रभावी होने से पहले और &quot;अंतिम अपडेट&quot; इस गोपनीयता नीति के शीर्ष पर दिनांक।</p>\r\n<p>किसी भी बदलाव के लिए आपको समय-समय पर इस गोपनीयता नीति की समीक्षा करने की सलाह दी जाती है। इस गोपनीयता नीति में परिवर्तन तब प्रभावी होते हैं जब वे इस पृष्ठ पर पोस्ट किए जाते हैं।</p>\r\n<h1 स्टाइल = \"margin: 30px 0;\">हमसे संपर्क करें</h1>\r\n<p>यदि इस गोपनीयता नीति के बारे में आपके कोई प्रश्न हैं, तो आप हमसे संपर्क कर सकते हैं : </p>\r\n<ul style = \"margin: 30px 0;\"><li>हमारी वेबसाइट पर इस पेज पर जाकर: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n\r\n', 'Ishop - गोपनीयता नीति', 'गोपनीयता नीति', 'hi', 5),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'मदद', '<h1 स्टाइल = \"margin: 30px 0;\">सहायता</h1>\r\n<p>यह गोपनीयता नीति आपके द्वारा सेवा का उपयोग करने पर आपकी जानकारी के संग्रह, उपयोग और प्रकटीकरण पर हमारी नीतियों और प्रक्रियाओं का वर्णन करती है और आपको आपके गोपनीयता अधिकारों के बारे में बताती है और कानून आपकी सुरक्षा कैसे करता है।</p>\r\n<p>हम सेवा प्रदान करने और उसमें सुधार करने के लिए आपके व्यक्तिगत डेटा का उपयोग करते हैं। सेवा का उपयोग करके, आप इस गोपनीयता नीति के अनुसार जानकारी के संग्रह और उपयोग के लिए सहमत होते हैं। यह गोपनीयता नीति <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\" target=\"_blank\"> निःशुल्क गोपनीयता नीति जेनरेटर</a> की सहायता से बनाई गई है । </p>\r\n<h1 style = \"margin: 30px 0;\">व्याख्या और परिभाषाएं</h1>\r\n<h2 style = \"margin: 30px 0;\">व्याख्या</h2>\r\n<p>जिन शब्दों के शुरुआती अक्षर बड़े अक्षरों में लिखे गए हैं, उनके अर्थ निम्नलिखित शर्तों के तहत परिभाषित किए गए हैं। निम्नलिखित परिभाषाओं का एक ही अर्थ होगा चाहे वे एकवचन में हों या बहुवचन में।</p>\r\n<h2 स्टाइल = \"margin: 30px 0;\">परिभाषाएं</h2>\r\n<p>इस गोपनीयता नीति के प्रयोजनों के लिए : </p>\r\n<p><strong>खाता</strong> का अर्थ है कि हमारी सेवा या हमारी सेवा के कुछ हिस्सों तक पहुंचने के लिए आपके लिए बनाया गया एक अनूठा खाता।</p>\r\n<p><strong>कंपनी</strong> (इस अनुबंध में &quot;कंपनी&quot;, &quot;हम&quot;, &quot;हम&quot; या &quot;हमारा&quot; के रूप में संदर्भित) ishop.cholobangla.com, कनाडा को संदर्भित करता है। </p>\r\n<p><strong>कुकीज़</strong> छोटी फ़ाइलें होती हैं जिन्हें किसी वेबसाइट द्वारा आपके कंप्यूटर, मोबाइल डिवाइस या किसी अन्य डिवाइस पर रखा जाता है, जिसमें उस वेबसाइट पर आपके ब्राउज़िंग इतिहास के कई उपयोगों के बीच उसका विवरण होता है।</p>\r\n<p><strong>देश</strong> का अर्थ है : न्यू ब्रंसविक, कनाडा</p>\r\n<p><strong>उपकरण</strong> का अर्थ है कोई भी उपकरण जो कंप्यूटर, सेलफ़ोन या डिजिटल टैबलेट जैसी सेवा तक पहुँच प्राप्त कर सकता है।</p>\r\n<p><strong>व्यक्तिगत डेटा</strong> ऐसी कोई भी जानकारी है जो किसी पहचान योग्य व्यक्ति से संबंधित है।</p>\r\n<p><strong>सेवा</strong> वेबसाइट को संदर्भित करती है।</p>\r\n<p><strong>सेवा प्रदाता</strong> का अर्थ किसी प्राकृतिक या कानूनी व्यक्ति से है जो कंपनी की ओर से डेटा को संसाधित करता है। यह सेवा को सुविधाजनक बनाने, कंपनी की ओर से सेवा प्रदान करने, सेवा से संबंधित सेवाओं को निष्पादित करने या सेवा का उपयोग करने के तरीके का विश्लेषण करने में कंपनी की सहायता करने के लिए कंपनी द्वारा नियुक्त तृतीय-पक्ष कंपनियों या व्यक्तियों को संदर्भित करता है।</ प>\r\n<p><strong>उपयोग डेटा</strong> स्वचालित रूप से एकत्र किए गए डेटा को संदर्भित करता है, या तो सेवा के उपयोग से या स्वयं सेवा के बुनियादी ढांचे से उत्पन्न होता है (उदाहरण के लिए, पृष्ठ विज़िट की अवधि)।</p>\r\n<p><strong>वेबसाइट</strong> https को संदर्भित करता है : //ishop.cholobangla.com/, <a href=\"ishop.cholobangla\" rel=\"external nofollow noopener\" target=\"_blank\">ishop से एक्सेस किया जा सकता है। cholobangla.com</a></p>\r\n<p><strong>आप</strong> का अर्थ उस व्यक्ति से है जो सेवा, या कंपनी, या अन्य कानूनी इकाई तक पहुंच बना रहा है या उसका उपयोग कर रहा है, जिसकी ओर से ऐसा व्यक्ति सेवा तक पहुंच बना रहा है या उसका उपयोग कर रहा है, जैसा कि लागू हो।</p>\r\n<h1 style = \"margin: 30px 0;\">अपना व्यक्तिगत डेटा एकत्र करना और उसका उपयोग करना</h1>\r\n<h2 style = \"margin: 30px 0;\">एकत्रित डेटा के प्रकार</h2>\r\n<h3 style = \"margin: 30px 0;\">व्यक्तिगत डेटा</h3>\r\n<p>हमारी सेवा का उपयोग करते समय, हम आपसे कुछ व्यक्तिगत पहचान योग्य जानकारी प्रदान करने के लिए कह सकते हैं जिसका उपयोग आपसे संपर्क करने या पहचानने के लिए किया जा सकता है। व्यक्तिगत रूप से पहचान योग्य जानकारी शामिल हो सकती है, लेकिन यह इन्हीं तक सीमित नहीं है : </p>\r\n<ul style = \"margin: 30px 0;\"><li>ईमेल पता</li><li>प्रथम नाम और उपनाम</li><li>पता, राज्य, प्रांत, ज़िप/पोस्टल कोड, शहर</li><li> ली><li>उपयोग डेटा</li></ul>\r\n<h3 style = \"margin: 30px 0;\">उपयोग डेटा</h3>\r\n<p>सेवा का उपयोग करते समय उपयोग डेटा स्वचालित रूप से एकत्र किया जाता है।</p><p>उपयोग डेटा में आपके डिवाइस का इंटरनेट प्रोटोकॉल पता (जैसे आईपी पता), ब्राउज़र प्रकार, ब्राउज़र संस्करण, हमारी सेवा के पेज जैसी जानकारी शामिल हो सकती है। आप विज़िट करते हैं, आपकी विज़िट का समय और तारीख, उन पेजों पर बिताया गया समय, अद्वितीय उपकरण पहचानकर्ता और अन्य डायग्नोस्टिक डेटा।</p><p>जब आप किसी मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं, तो हम कुछ जानकारी स्वचालित रूप से एकत्र कर सकते हैं , जिसमें आपके द्वारा उपयोग किए जाने वाले मोबाइल डिवाइस का प्रकार, आपकी मोबाइल डिवाइस की विशिष्ट आईडी, आपके मोबाइल डिवाइस का IP पता, आपका मोबाइल ऑपरेटिंग सिस्टम, आपके द्वारा उपयोग किए जाने वाले मोबाइल इंटरनेट ब्राउज़र का प्रकार, अद्वितीय डिवाइस पहचानकर्ता और अन्य नैदानिक शामिल हैं, लेकिन इन्हीं तक सीमित नहीं है डेटा।</p>\r\n<p>हम वह जानकारी भी एकत्र कर सकते हैं जो आपका ब्राउज़र तब भेजता है जब आप हमारी सेवा पर जाते हैं या जब आप किसी मोबाइल डिवाइस द्वारा या उसके माध्यम से सेवा का उपयोग करते हैं।</p>\r\n<h3 style = \"margin: 30px 0;\">ट्रैकिंग तकनीकें और कुकीज</h3>\r\n<p>हम अपनी सेवा पर गतिविधि को ट्रैक करने और कुछ जानकारी संग्रहीत करने के लिए कुकीज़ और समान ट्रैकिंग तकनीकों का उपयोग करते हैं। उपयोग की जाने वाली ट्रैकिंग तकनीकें जानकारी एकत्र करने और ट्रैक करने और हमारी सेवा में सुधार और विश्लेषण करने के लिए बीकन, टैग और स्क्रिप्ट हैं। हम जिन तकनीकों का उपयोग करते हैं उनमें शामिल हो सकते हैं : </p>\r\n<p><strong>कुकी या ब्राउज़र कुकी।</strong> कुकी आपके डिवाइस पर रखी गई एक छोटी फ़ाइल होती है। आप अपने ब्राउज़र को निर्देश दे सकते हैं कि वह सभी कूकीज़ को अस्वीकार कर दे या कूकी भेजे जाने के समय का संकेत दे। हालाँकि, यदि आप कुकीज़ स्वीकार नहीं करते हैं, तो आप हमारी सेवा के कुछ हिस्सों का उपयोग करने में सक्षम नहीं हो सकते हैं। जब तक आपने अपनी ब्राउज़र सेटिंग को समायोजित नहीं किया है ताकि यह कुकीज़ को मना कर दे, हमारी सेवा कुकीज़ का उपयोग कर सकती है। </p>\r\n<p><strong>वेब बीकन।</strong> हमारी सेवा के कुछ अनुभागों और हमारे ईमेल में छोटे हो सकते हैं\r\nवेब बीकन के रूप में जानी जाने वाली इलेक्ट्रॉनिक फाइलें (जिन्हें स्पष्ट gifs, पिक्सेल टैग और सिंगल-पिक्सेल gifs भी कहा जाता है) जो कंपनी को अनुमति देती हैं, उदाहरण के लिए, उन उपयोगकर्ताओं की गणना करने के लिए जो उन पर गए हैं\r\nपृष्ठ या एक ईमेल खोला और अन्य संबंधित वेबसाइट आंकड़ों के लिए (उदाहरण के लिए, एक निश्चित खंड की लोकप्रियता रिकॉर्ड करना और सिस्टम और सर्वर अखंडता की पुष्टि करना)।</p>\r\n<p>कुकीज़ &quot;स्थायी&quot; या &quot;सत्र&quot; कुकीज़। जब आप ऑफ़लाइन हो जाते हैं तो स्थायी कुकीज़ आपके व्यक्तिगत कंप्यूटर या मोबाइल डिवाइस पर रहती हैं, जबकि जैसे ही आप अपना वेब ब्राउज़र बंद करते हैं, सत्र कुकीज़ हटा दी जाती हैं। <a href = \"https://www.freeprivacypolicy.com/blog/sample-privacy-policy-template/#Use_Of_Cookies_And_Tracking\" target=\"_blank\"> निःशुल्क गोपनीयता नीति वेबसाइट</a> लेख पर कुकीज़ के बारे में अधिक जानें । </p>\r\n<p>हम नीचे निर्धारित उद्देश्यों के लिए सत्र और स्थायी कुकीज़ दोनों का उपयोग करते हैं : </p>\r\n<p><strong>आवश्यक / आवश्यक कुकीज़</strong></p>\r\n<p>प्रकार : सत्र कुकीज़</p>\r\n<p>द्वारा प्रशासित : हमारे</p>\r\n<p>उद्देश्य : ये कुकीज़ आपको वेबसाइट के माध्यम से उपलब्ध सेवाएं प्रदान करने और आपको इसकी कुछ विशेषताओं का उपयोग करने में सक्षम बनाने के लिए आवश्यक हैं। वे उपयोगकर्ताओं को प्रमाणित करने और उपयोगकर्ता खातों के धोखाधड़ी वाले उपयोग को रोकने में मदद करते हैं। इन कुकीज़ के बिना, आपके द्वारा मांगी गई सेवाएँ प्रदान नहीं की जा सकती हैं, और हम केवल इन कुकीज़ का उपयोग आपको वे सेवाएँ प्रदान करने के लिए करते हैं।</p>\r\n<p><strong>कुकी नीति / सूचना स्वीकृति कुकीज़</strong></p>\r\n<p>प्रकार : स्थायी कुकीज़</p><p>द्वारा प्रशासित: हमारे</p><p>उद्देश्य: ये कुकीज़ पहचानती हैं कि क्या उपयोगकर्ताओं ने वेबसाइट पर कुकीज़ के उपयोग को स्वीकार किया है।</p><p>< मजबूत>कार्यात्मकता कुकीज़</strong></p><p>प्रकार: स्थायी कुकीज़</p><p>हमारे द्वारा प्रशासित</p><p>उद्देश्य: ये कुकीज़ हमें आपके द्वारा चुने गए विकल्पों को याद रखने की अनुमति देती हैं जब आप वेबसाइट का उपयोग करें, जैसे अपने लॉगिन विवरण या भाषा वरीयता को याद रखना। इन कुकीज़ का उद्देश्य आपको एक अधिक व्यक्तिगत अनुभव प्रदान करना है और हर बार जब आप वेबसाइट का उपयोग करते हैं तो आपको अपनी प्राथमिकताओं को फिर से दर्ज करने से बचना है। , कृपया हमारी कुकी नीति या हमारी गोपनीयता नीति के कुकी अनुभाग पर जाएं।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का उपयोग</h2><p>कंपनी निम्नलिखित उद्देश्यों के लिए व्यक्तिगत डेटा का उपयोग कर सकती है:</p>\r\n<p><strong>हमारी सेवा प्रदान करने और बनाए रखने के लिए</strong>, जिसमें हमारी सेवा के उपयोग की निगरानी करना शामिल है।</p>\r\n<p><strong>आपके खाते को प्रबंधित करने के लिए : </strong> सेवा के उपयोगकर्ता के रूप में आपके पंजीकरण को प्रबंधित करने के लिए। आपके द्वारा प्रदान किया गया व्यक्तिगत डेटा आपको सेवा की विभिन्न कार्यात्मकताओं तक पहुंच प्रदान कर सकता है जो एक पंजीकृत उपयोगकर्ता के रूप में आपके लिए उपलब्ध हैं।</p><p><strong>अनुबंध के प्रदर्शन के लिए:</strong> विकास, अनुपालन और उपक्रम सेवा के माध्यम से आपके द्वारा खरीदे गए उत्पादों, वस्तुओं या सेवाओं के खरीद अनुबंध का या हमारे साथ किसी अन्य अनुबंध का।</p><p><strong>आपसे संपर्क करने के लिए:</strong> ईमेल, टेलीफोन कॉल द्वारा आपसे संपर्क करने के लिए , एसएमएस, या इलेक्ट्रॉनिक संचार के अन्य समकक्ष रूप, जैसे कि मोबाइल एप्लिकेशन की पुश सूचनाएं, जो कि कार्यात्मकताओं, उत्पादों या अनुबंधित सेवाओं से संबंधित अद्यतन या सूचनात्मक संचार से संबंधित हैं, सुरक्षा अद्यतन सहित, जब उनके कार्यान्वयन के लिए आवश्यक या उचित हो।</p><p>< मजबूत>आपको प्रदान करने के लिए</strong> अन्य सामान, सेवाओं और घटनाओं के बारे में समाचार, विशेष ऑफ़र और सामान्य जानकारी प्रदान करने के लिए जो हम प्रदान करते हैं जो आपके द्वारा पहले से खरीदे गए या पूछताछ के समान हैं, जब तक कि आपने ऐसी जानकारी प्राप्त न करने का विकल्प नहीं चुना हो।</strong> p><p><strong>आपके अनुरोधों को प्रबंधित करने के लिए:</strong> आपके अनुरोधों में भाग लेने और उन्हें प्रबंधित करने के लिए।</p><p><strong>व्यावसायिक स्थानांतरण के लिए:</strong> हम आपकी जानकारी का उपयोग करने के लिए कर सकते हैं हमारी कुछ या सभी संपत्तियों का विलय, विनिवेश, पुनर्गठन, पुनर्गठन, विघटन, या अन्य बिक्री या हस्तांतरण का मूल्यांकन या संचालन करें, चाहे एक चल रही चिंता के रूप में या दिवालिएपन, परिसमापन, या इसी तरह की कार्यवाही के हिस्से के रूप में, जिसमें व्यक्तिगत डेटा हमारे पास होता है हमारे सेवा उपयोगकर्ता हस्तांतरित संपत्तियों में से हैं।</p>\r\n<p><strong>अन्य उद्देश्यों के लिए</strong> : हम आपकी जानकारी का उपयोग अन्य उद्देश्यों के लिए कर सकते हैं, जैसे डेटा विश्लेषण, उपयोग प्रवृत्तियों की पहचान करना, हमारे प्रचार अभियानों की प्रभावशीलता का निर्धारण करना और हमारी सेवा, उत्पादों, सेवाओं, विपणन का मूल्यांकन और सुधार करना और आपका अनुभव।</p>\r\n<p>हम निम्नलिखित स्थितियों में आपकी व्यक्तिगत जानकारी साझा कर सकते हैं : </p>\r\n<ul style = \"margin: 30px 0;\"><li><strong>सेवा प्रदाताओं के साथ:</strong> हम आपसे संपर्क करने के लिए, हमारी सेवा के उपयोग की निगरानी और विश्लेषण करने के लिए सेवा प्रदाताओं के साथ आपकी व्यक्तिगत जानकारी साझा कर सकते हैं।</ul ली><li><strong>व्यापार हस्तांतरण के लिए:</strong> हम आपकी व्यक्तिगत जानकारी को किसी भी विलय, कंपनी की संपत्ति की बिक्री, वित्तपोषण, या हमारे सभी या एक हिस्से के अधिग्रहण के संबंध में या बातचीत के दौरान साझा या स्थानांतरित कर सकते हैं। किसी अन्य कंपनी को व्यवसाय।</li><li><strong>सहयोगियों के साथ:</strong> हम आपकी जानकारी को अपने सहयोगियों के साथ साझा कर सकते हैं, जिस स्थिति में हमें उन सहयोगियों से इस गोपनीयता नीति का सम्मान करने की आवश्यकता होगी। संबद्धों में हमारी मूल कंपनी और अन्य सहायक कंपनियां, संयुक्त उद्यम भागीदार या अन्य कंपनियां शामिल हैं जिन्हें हम नियंत्रित करते हैं या जो हमारे साथ सामान्य नियंत्रण में हैं।</li><li><strong>व्यावसायिक भागीदारों के साथ:</strong> हम आपकी जानकारी को उनके साथ साझा कर सकते हैं हमारे व्यापार भागीदार आपको कुछ उत्पादों, सेवाओं या प्रचारों की पेशकश करने के लिए।</li><li><strong>अन्य उपयोगकर्ताओं के साथ:</strong> जब आप व्यक्तिगत जानकारी साझा करते हैं या अन्य उपयोगकर्ताओं के साथ सार्वजनिक क्षेत्रों में बातचीत करते हैं, तो ऐसी जानकारी देखी जा सकती है सभी उपयोगकर्ताओं द्वारा और सार्वजनिक रूप से बाहर वितरित किया जा सकता है।</li><li><strong>आपकी सहमति से</strong>: हम आपकी सहमति से किसी अन्य उद्देश्य के लिए आपकी व्यक्तिगत जानकारी का खुलासा कर सकते हैं।</li></ul>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का प्रतिधारण</h2>\r\n<p>कंपनी आपके व्यक्तिगत डेटा को केवल तब तक बनाए रखेगी जब तक निर्धारित उद्देश्यों के लिए आवश्यक है\r\nइस गोपनीयता नीति में। हम आपके व्यक्तिगत डेटा का अनुपालन करने के लिए आवश्यक सीमा तक बनाए रखेंगे और उसका उपयोग करेंगे\r\nहमारे कानूनी दायित्वों के साथ (उदाहरण के लिए, यदि हमें अनुपालन करने के लिए आपके डेटा को बनाए रखने की आवश्यकता है\r\nलागू कानून), विवादों को सुलझाएं, और हमारे कानूनी समझौतों और नीतियों को लागू करें।</p>\r\n<p>कंपनी आंतरिक विश्लेषण उद्देश्यों के लिए उपयोग डेटा को भी बनाए रखेगी। उपयोग डेटा को आम तौर पर कम समय के लिए बनाए रखा जाता है, सिवाय इसके कि जब इस डेटा का उपयोग सुरक्षा को मजबूत करने या हमारी सेवा की कार्यक्षमता में सुधार करने के लिए किया जाता है, या हम इस डेटा को अधिक समय तक बनाए रखने के लिए कानूनी रूप से बाध्य होते हैं।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का स्थानांतरण</h2>\r\n<p>व्यक्तिगत डेटा सहित आपकी जानकारी को कंपनी के ऑपरेटिंग कार्यालयों में और किसी अन्य स्थान पर संसाधित किया जाता है जहां प्रसंस्करण में शामिल पार्टियां स्थित हैं। इसका मतलब है कि यह\r\nसूचना को आपके राज्य, प्रांत, देश या अन्य सरकारी क्षेत्राधिकार के बाहर स्थित कंप्यूटरों में स्थानांतरित किया जा सकता है - और उन पर बनाए रखा जा सकता है, जहां डेटा सुरक्षा कानून आपके अधिकार क्षेत्र से भिन्न हो सकते हैं।</p>\r\n<p>इस गोपनीयता नीति के लिए आपकी सहमति के बाद ऐसी जानकारी जमा करना उस स्थानांतरण के लिए आपकी सहमति का प्रतिनिधित्व करता है।</p>\r\n<p>कंपनी यह सुनिश्चित करने के लिए उचित रूप से आवश्यक सभी कदम उठाएगी कि आपके डेटा को सुरक्षित रूप से और इस गोपनीयता नीति के अनुसार व्यवहार किया जाता है और आपके व्यक्तिगत डेटा का कोई भी स्थानांतरण किसी संगठन या देश में तब तक नहीं होगा जब तक पर्याप्त नियंत्रण न हो आपके डेटा और अन्य व्यक्तिगत जानकारी की सुरक्षा।</p>\r\n<h2 style = \"margin: 30px 0;\">अपना व्यक्तिगत डेटा हटाएं</h2>\r\n<p>आपके पास यह अनुरोध करने का अधिकार है कि हम आपके बारे में एकत्र किए गए व्यक्तिगत डेटा को हटाने में सहायता करें।</p>\r\n<p>हमारी सेवा आपको सेवा के भीतर से आपके बारे में कुछ जानकारी को हटाने की क्षमता दे सकती है।</p>\r\n<p>आप किसी भी समय अपने खाते में साइन इन करके, यदि आपके पास है, अपनी जानकारी को अपडेट, संशोधित या हटा सकते हैं, और खाता सेटिंग अनुभाग पर जाकर, जो आपको आपकी व्यक्तिगत जानकारी प्रबंधित करने की अनुमति देता है। आप हमें प्रदान की गई किसी भी व्यक्तिगत जानकारी तक पहुंच का अनुरोध करने, सही करने या हटाने के लिए भी हमसे संपर्क कर सकते हैं।</p>\r\n<p>कृपया ध्यान दें, हालांकि, हमें कुछ जानकारी को बनाए रखने की आवश्यकता हो सकती है जब हमारे पास ऐसा करने के लिए कानूनी बाध्यता या कानूनी आधार हो।</p>\r\n<h2 style = \"margin: 30px 0;\">आपके व्यक्तिगत डेटा का प्रकटीकरण</h2>\r\n<h3 style = \"margin: 30px 0;\">व्यावसायिक लेन-देन</h3>\r\n<p>यदि कंपनी विलय, अधिग्रहण या परिसंपत्ति बिक्री में शामिल है, तो आपका व्यक्तिगत डेटा स्थानांतरित किया जा सकता है। आपका व्यक्तिगत डेटा स्थानांतरित होने और एक अलग गोपनीयता नीति के अधीन होने से पहले हम नोटिस प्रदान करेंगे।</p>\r\n<h3 style = \"margin: 30px 0;\">कानून प्रवर्तन</h3>\r\n<p>कुछ परिस्थितियों में, कंपनी को आपके व्यक्तिगत डेटा का खुलासा करने की आवश्यकता हो सकती है यदि कानून द्वारा या सार्वजनिक अधिकारियों (जैसे एक अदालत या एक सरकारी एजेंसी) द्वारा मान्य अनुरोधों के जवाब में ऐसा करना आवश्यक हो।</p>\r\n<h3 style = \"margin: 30px 0;\">अन्य कानूनी आवश्यकताएं</h3>\r\n<p>कंपनी आपके व्यक्तिगत डेटा को अच्छे विश्वास में प्रकट कर सकती है कि इस तरह की कार्रवाई आवश्यक है : </p>\r\n<ul><li>एक कानूनी बाध्यता का पालन करें</li><li>कंपनी के अधिकारों या संपत्ति की रक्षा और बचाव करें</li><li>सेवा के संबंध में संभावित गलत कार्यों को रोकें या जांच करें</li>< ली>सेवा के उपयोगकर्ताओं या जनता की व्यक्तिगत सुरक्षा की रक्षा करें</li><li>कानूनी दायित्व से रक्षा करें</li></ul>\r\n<h2>आपके व्यक्तिगत डेटा की सुरक्षा</h2>\r\n<p>आपके व्यक्तिगत डेटा की सुरक्षा हमारे लिए महत्वपूर्ण है, लेकिन याद रखें कि इंटरनेट पर प्रसारण का कोई भी तरीका या इलेक्ट्रॉनिक स्टोरेज का तरीका 100% सुरक्षित नहीं है। जबकि हम आपके व्यक्तिगत डेटा की सुरक्षा के लिए व्यावसायिक रूप से स्वीकार्य साधनों का उपयोग करने का प्रयास करते हैं, हम इसकी पूर्ण सुरक्षा की गारंटी नहीं दे सकते।</p>\r\n<h1>बच्चों की गोपनीयता</h1>\r\n<p>हमारी सेवा 13 वर्ष से कम आयु के किसी भी व्यक्ति को संबोधित नहीं करती है। हम जानबूझकर 13 वर्ष से कम आयु के किसी व्यक्ति से व्यक्तिगत पहचान योग्य जानकारी एकत्र नहीं करते हैं। यदि आप माता-पिता या अभिभावक हैं और आप जानते हैं कि आपके बच्चे ने हमें व्यक्तिगत डेटा प्रदान किया है , कृपया हमसे संपर्क करें। अगर हमें पता चलता है कि हमने 13 साल से कम उम्र के किसी भी व्यक्ति से माता-पिता की सहमति के सत्यापन के बिना व्यक्तिगत डेटा एकत्र किया है, तो हम अपने सर्वर से उस जानकारी को हटाने के लिए कदम उठाते हैं।</p>\r\n<p>यदि हमें आपकी जानकारी को संसाधित करने के लिए कानूनी आधार के रूप में सहमति पर भरोसा करने की आवश्यकता है और आपके देश को माता-पिता की सहमति की आवश्यकता है, तो हमें उस जानकारी को एकत्र करने और उसका उपयोग करने से पहले आपके माता-पिता की सहमति की आवश्यकता हो सकती है।</p>\r\n<h1 style = \"margin: 30px 0;\">अन्य वेबसाइटों के लिंक</h1>\r\n<p>हमारी सेवा में अन्य वेबसाइटों के लिंक हो सकते हैं जो हमारे द्वारा संचालित नहीं हैं। यदि आप किसी तृतीय पक्ष लिंक पर क्लिक करते हैं, तो आपको उस तृतीय पक्ष की साइट पर निर्देशित कर दिया जाएगा। हम आपको दृढ़ता से सलाह देते हैं कि आप जिस भी साइट पर जाते हैं, उसकी गोपनीयता नीति की समीक्षा करें।</p>\r\n<p>किसी तीसरे पक्ष की साइट या सेवाओं की सामग्री, गोपनीयता नीतियों या प्रथाओं पर हमारा कोई नियंत्रण नहीं है और न ही हम इसके लिए कोई ज़िम्मेदारी लेते हैं।</p>\r\n<h1 style = \"margin: 30px 0;\">इस निजता नीति में बदलाव</h1>\r\n<p>हम अपनी गोपनीयता नीति को समय-समय पर अपडेट कर सकते हैं। हम इस पृष्ठ पर नई गोपनीयता नीति पोस्ट करके किसी भी बदलाव के बारे में आपको सूचित करेंगे।</p>\r\n<p>परिवर्तन प्रभावी होने से पहले हम आपको ईमेल और/या हमारी सेवा पर एक प्रमुख सूचना के माध्यम से सूचित करेंगे और &quot;अंतिम अपडेट&quot; इस गोपनीयता नीति के शीर्ष पर दिनांक।</p>\r\n<p>किसी भी बदलाव के लिए आपको समय-समय पर इस गोपनीयता नीति की समीक्षा करने की सलाह दी जाती है। इस गोपनीयता नीति में परिवर्तन तब प्रभावी होते हैं जब वे इस पृष्ठ पर पोस्ट किए जाते हैं।</p>\r\n<h1 स्टाइल = \"margin: 30px 0;\">हमसे संपर्क करें</h1>\r\n<p>यदि इस गोपनीयता नीति के बारे में आपके कोई प्रश्न हैं, तो आप हमसे संपर्क कर सकते हैं : </p>\r\n<ul style = \"margin: 30px 0;\"><li>हमारी वेबसाइट पर इस पेज पर जाकर: <a href=\"https://ishop.cholobangla.com/\" rel=\"external nofollow noopener\" target=\"_blank \">https://ishop.cholobangla.com/</a></li></ul>\r\n<p> <a href = \"https://www.freeprivacypolicy.com/free-privacy-policy-generator/\"target=\"_blank\"> निःशुल्क गोपनीयता नीति जेनरेटर</a></p> का उपयोग करके जेनरेट किया गया\r\n\r\n', 'Ishop - मदद', 'मदद', 'hi', 6),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'साइट मैप', 'Sitemap', 'Ishop - साइट मैप', 'साइट मैप', 'hi', 7);

-- --------------------------------------------------------

--
-- Table structure for table `page_wysiwyg_images`
--

CREATE TABLE `page_wysiwyg_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cash_on_delivery` tinyint(1) DEFAULT 1,
  `paypal` tinyint(1) DEFAULT 1,
  `paypal_key` text DEFAULT NULL,
  `paypal_secret` text DEFAULT NULL,
  `razorpay_key` text DEFAULT NULL,
  `razorpay_secret` text DEFAULT NULL,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `razorpay` tinyint(1) DEFAULT 1,
  `stripe` tinyint(1) DEFAULT 1,
  `flutterwave` tinyint(1) DEFAULT 1,
  `fw_environment` varchar(255) DEFAULT 'development',
  `fw_public_key` varchar(255) DEFAULT NULL,
  `fw_secret_key` varchar(255) DEFAULT NULL,
  `fw_encryption_key` varchar(255) DEFAULT NULL,
  `iyzico_payment` tinyint(1) DEFAULT 1,
  `ip_base_url` varchar(255) DEFAULT NULL,
  `ip_api_key` varchar(255) DEFAULT NULL,
  `ip_secret_key` varchar(255) DEFAULT NULL,
  `bank` tinyint(1) DEFAULT 1,
  `bank_name` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `created_at`, `updated_at`, `cash_on_delivery`, `paypal`, `paypal_key`, `paypal_secret`, `razorpay_key`, `razorpay_secret`, `stripe_key`, `stripe_secret`, `admin_id`, `razorpay`, `stripe`, `flutterwave`, `fw_environment`, `fw_public_key`, `fw_secret_key`, `fw_encryption_key`, `iyzico_payment`, `ip_base_url`, `ip_api_key`, `ip_secret_key`, `bank`, `bank_name`, `account_name`, `branch_name`, `account_number`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 1, 'AVR2_ITELs7N2yfBG6CFcTFKCUFCiLQGn9ggrC6XgCOwCAAVPFjGXGUVu7UXHXH8eZ2ICwKuUB5M4CRt', 'EJ0bHCYhFT5pr0vQlzcHNmuJx5FUZXlbRPozxDHn43Y10g6keGsTvjTtN3DNdI-BI3saAmq1hM7-vS6x', 'rzp_test_vtdcqC3RtQu6Y3', 'BBFRuBHJiARuW5StLE80Z0jd', 'pk_test_51JRA6eFeoecS5e5Lm6m5mOCTOWxgtj5r0D19uHvgPRvwd0vayTx8bqKuaSJaJwVnwuhgahIQYP4M6Wfme9d9wpDG00VUVbACbg', 'sk_test_51JRA6eFeoecS5e5LLuqYCPFttIi7YvZ65zrqoyp9VvmdoOemESn4UQreSjMgPa2dPX0RqCMknMbT9s3w1YPn3iGm00Eu0w3hFl', 1, 1, 1, 1, 'development', 'FLWPUBK_TEST-7ceb4852c77efb1c4193180c82c5729d-X', 'FLWSECK_TEST-ff884473569b3c5aa37d8319f0af5398-X', 'FLWSECK_TEST848e9dc518a2', 1, 'https://sandbox-api.iyzipay.com', 'sandbox-QkCUIJZTMWlKIj7xkpgCuqGsKisGSWoT', 'sandbox-T4tiVhj18B24caQ6GWIYmFpkPBEr8Js7', 1, 'First Century Bank', 'John Doe', 'GA', '5361147767209');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group_name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'dashboard.view', 'dashboard', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(2, 'category.view', 'category', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(3, 'category.create', 'category', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(4, 'category.edit', 'category', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(5, 'category.delete', 'category', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(10, 'brand.view', 'brand', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(11, 'brand.create', 'brand', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(12, 'brand.edit', 'brand', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(13, 'brand.delete', 'brand', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(14, 'attribute.view', 'attribute', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(15, 'attribute.create', 'attribute', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(16, 'attribute.edit', 'attribute', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(17, 'attribute.delete', 'attribute', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(18, 'tax_rule.view', 'tax_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(19, 'tax_rule.create', 'tax_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(20, 'tax_rule.edit', 'tax_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(21, 'tax_rule.delete', 'tax_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(22, 'shipping_rule.view', 'shipping_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(23, 'shipping_rule.create', 'shipping_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(24, 'shipping_rule.edit', 'shipping_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(25, 'shipping_rule.delete', 'shipping_rule', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(26, 'product_collection.view', 'product_collection', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(27, 'product_collection.create', 'product_collection', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(28, 'product_collection.edit', 'product_collection', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(29, 'product_collection.delete', 'product_collection', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(30, 'bundle_deal.view', 'bundle_deal', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(31, 'bundle_deal.create', 'bundle_deal', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(32, 'bundle_deal.edit', 'bundle_deal', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(33, 'bundle_deal.delete', 'bundle_deal', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(34, 'voucher.view', 'voucher', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(35, 'voucher.create', 'voucher', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(36, 'voucher.edit', 'voucher', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(37, 'voucher.delete', 'voucher', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(38, 'product.view', 'product', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(39, 'product.create', 'product', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(40, 'product.edit', 'product', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(41, 'product.delete', 'product', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(42, 'flash_sale.view', 'flash_sale', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(43, 'flash_sale.create', 'flash_sale', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(44, 'flash_sale.edit', 'flash_sale', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(45, 'flash_sale.delete', 'flash_sale', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(46, 'order.view', 'order', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(47, 'order.delete', 'order', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(48, 'order.edit', 'order', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(49, 'rating_review.view', 'rating_review', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(50, 'rating_review.delete', 'rating_review', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(51, 'user.view', 'user', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(52, 'user.create', 'user', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(53, 'user.edit', 'user', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(54, 'user.delete', 'user', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(55, 'subscriber.view', 'subscriber', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(56, 'subscriber.delete', 'subscriber', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(57, 'subscription_email_format.view', 'subscription_email_format', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(58, 'subscription_email_format.create', 'subscription_email_format', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(59, 'subscription_email_format.edit', 'subscription_email_format', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(60, 'subscription_email_format.delete', 'subscription_email_format', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(61, 'role.view', 'role', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(62, 'role.create', 'role', 'admin', '2024-05-02 00:43:30', '2024-05-02 00:43:30'),
(63, 'role.edit', 'role', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(64, 'role.delete', 'role', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(65, 'admin.view', 'admin', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(66, 'admin.create', 'admin', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(67, 'admin.edit', 'admin', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(68, 'admin.delete', 'admin', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(69, 'page.view', 'page', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(70, 'page.create', 'page', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(71, 'page.edit', 'page', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(72, 'page.delete', 'page', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(73, 'home_slider.view', 'home_slider', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(74, 'home_slider.create', 'home_slider', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(75, 'home_slider.edit', 'home_slider', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(76, 'home_slider.delete', 'home_slider', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(77, 'banner.view', 'banner', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(78, 'banner.create', 'banner', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(79, 'banner.edit', 'banner', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(80, 'banner.delete', 'banner', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(81, 'site_setting.view', 'site_setting', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(82, 'site_setting.edit', 'site_setting', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(83, 'footer_link.view', 'footer_link', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(84, 'footer_link.create', 'footer_link', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(85, 'footer_link.edit', 'footer_link', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(86, 'footer_link.delete', 'footer_link', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(87, 'setting.view', 'setting', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(88, 'setting.edit', 'setting', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(89, 'profile.view', 'profile', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(90, 'profile.edit', 'profile', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(91, 'message.view', 'message', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(92, 'message.delete', 'message', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(93, 'withdrawal_account.view', 'withdrawal_account', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(94, 'withdrawal_account.create', 'withdrawal_account', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(95, 'withdrawal_account.edit', 'withdrawal_account', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(96, 'withdrawal_account.delete', 'withdrawal_account', 'admin', '2024-05-02 00:43:31', '2024-05-02 00:43:31'),
(97, 'store.view', 'store', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(98, 'store.create', 'store', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(99, 'store.edit', 'store', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(100, 'store.delete', 'store', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(101, 'withdrawal_request.view', 'withdrawal_request', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(102, 'withdrawal_request.create', 'withdrawal_request', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(103, 'withdrawal_request.approve', 'withdrawal_request', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(104, 'withdrawal_request.cancel', 'withdrawal_request', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(105, 'withdrawal_request.delete', 'withdrawal_request', 'admin', '2024-05-02 00:43:32', '2024-05-02 00:43:32'),
(106, 'language.view', 'language', 'admin', '2024-05-02 00:43:33', '2024-05-02 00:43:33'),
(107, 'language.create', 'language', 'admin', '2024-05-02 00:43:33', '2024-05-02 00:43:33'),
(108, 'language.edit', 'language', 'admin', '2024-05-02 00:43:33', '2024-05-02 00:43:33'),
(109, 'language.delete', 'language', 'admin', '2024-05-02 00:43:33', '2024-05-02 00:43:33'),
(110, 'header_link.view', 'header_link', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(111, 'header_link.create', 'header_link', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(112, 'header_link.edit', 'header_link', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(113, 'header_link.delete', 'header_link', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(114, 'bulk_upload.view', 'bulk_upload', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(115, 'bulk_upload.create', 'bulk_upload', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34'),
(116, 'bulk_upload.edit', 'bulk_upload', 'admin', '2024-05-02 00:43:34', '2024-05-02 00:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `overview` text DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `selling` decimal(10,2) NOT NULL DEFAULT 0.00,
  `purchased` decimal(10,2) NOT NULL DEFAULT 0.00,
  `offered` decimal(10,2) DEFAULT 0.00,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `video_thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `category_id` bigint(20) UNSIGNED DEFAULT 0,
  `subcategory_id` int(11) DEFAULT NULL,
  `warranty` tinyint(4) DEFAULT NULL,
  `refundable` tinyint(4) DEFAULT NULL,
  `tax_rule_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `review_count` int(11) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL DEFAULT 0,
  `bundle_deal_id` varchar(255) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `tags`, `selling`, `purchased`, `offered`, `image`, `video`, `video_thumb`, `status`, `category_id`, `subcategory_id`, `warranty`, `refundable`, `tax_rule_id`, `shipping_rule_id`, `review_count`, `rating`, `bundle_deal_id`, `brand_id`, `created_at`, `updated_at`, `admin_id`, `slug`) VALUES
(67370166, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, 'product-1714636588-3.webp', NULL, NULL, 2, 0, NULL, NULL, NULL, 1, 1, 0, 0, NULL, NULL, '2024-05-02 00:56:28', '2024-05-02 00:56:28', 1, NULL),
(88630111, 'Women’s Casual Long Sleeve Lapel Zipper Sweatshirt Drawstring Loose Pullover Tops', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', 'Women’s Casual Long Sleeve Lapel Zipper Sweatshirt Drawstring Loose Pullover Tops', 'Women’s Casual Long Sleeve Lapel Zipper Sweatshirt Drawstring Loose Pullover Tops', NULL, 130.00, 61.00, 81.00, 'product-1-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 5, 4, '1', 9442200, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'womens-casual-long-sleeve-lapel-zipper-sweatshirt-drawstring-loose-pullover-tops'),
(88630112, 'Tops Knit Shirts Casual Ruffle Short Sleeve Top Round Neck Tunic Tank Tops Tee Blouse for Women', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Tops Knit Shirts Casual Ruffle Short Sleeve Top Round Neck Tunic Tank Tops Tee Blouse for Women', 'Tops Knit Shirts Casual Ruffle Short Sleeve Top Round Neck Tunic Tank Tops Tee Blouse for Women', NULL, 100.00, 62.00, 82.00, 'product-2-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 5, '1', 9442200, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'tops-knit-shirts-casual-ruffle-short-sleeve-top-round-neck-tunic-tank-tops-tee-blouse-for-women'),
(88630113, 'Andongnywell Casual Solid Color Ruffle Collar Long Sleeve Ruffle Shirt Blouse V Neck Short Sleeve Shirt Top', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Andongnywell Casual Solid Color Ruffle Collar Long Sleeve Ruffle Shirt Blouse V Neck Short Sleeve Shirt Top', 'Andongnywell Casual Solid Color Ruffle Collar Long Sleeve Ruffle Shirt Blouse V Neck Short Sleeve Shirt Top', NULL, 100.00, 63.00, 83.00, 'product-3-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 5, '1', 9442200, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'andongnywell-casual-solid-color-ruffle-collar-long-sleeve-ruffle-shirt-blouse-v-neck-short-sleeve-shirt-top'),
(88630114, 'Women\'s Waffle Knit Blouse Ballon Long Sleeve Lace Tops Casual Loose T Shirts', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Women\'s Waffle Knit Blouse Ballon Long Sleeve Lace Tops Casual Loose T Shirts', 'Women\'s Waffle Knit Blouse Ballon Long Sleeve Lace Tops Casual Loose T Shirts', NULL, 100.00, 64.00, 84.00, 'product-4-1.webp', 'product-4-0.mp4', 'product-video-4-3.webp', 1, 0, NULL, NULL, 1, 1, 1, 2, 4, '1', 9442200, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'womens-waffle-knit-blouse-ballon-long-sleeve-lace-tops-casual-loose-t-shirts'),
(88630115, 'Women\'s Ruffle Sleeve Tops Summer Casual Blouse Crew Neck Solid Cute Tunic Shirt', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Featured', 'Women\'s Ruffle Sleeve Tops Summer Casual Blouse Crew Neck Solid Cute Tunic Shirt', 'Women\'s Ruffle Sleeve Tops Summer Casual Blouse Crew Neck Solid Cute Tunic Shirt', NULL, 100.00, 65.00, 85.00, 'product-5-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 5, '1', 9442200, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'womens-ruffle-sleeve-tops-summer-casual-blouse-crew-neck-solid-cute-tunic-shirt'),
(88630116, 'Women\'s Floral Tunic Tops Casual Blouse V Neck Short Sleeve Buttons Up T-Shirts', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Women\'s Floral Tunic Tops Casual Blouse V Neck Short Sleeve Buttons Up T-Shirts', 'Women\'s Floral Tunic Tops Casual Blouse V Neck Short Sleeve Buttons Up T-Shirts', NULL, 100.00, 66.00, 86.00, 'product-6-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 3, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'womens-floral-tunic-tops-casual-blouse-v-neck-short-sleeve-buttons-up-t-shirts'),
(88630117, 'Andongnywell Women\'s Casual Tops Leopard Print T-Shirt Long Sleeve Soft Stretchy Camouflage Blouse Shirts', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Andongnywell Women\'s Casual Tops Leopard Print T-Shirt Long Sleeve Soft Stretchy Camouflage Blouse Shirts', 'Andongnywell Women\'s Casual Tops Leopard Print T-Shirt Long Sleeve Soft Stretchy Camouflage Blouse Shirts', NULL, 100.00, 67.00, 87.00, 'product-7-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 4, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'andongnywell-womens-casual-tops-leopard-print-t-shirt-long-sleeve-soft-stretchy-camouflage-blouse-shirts'),
(88630118, 'Amoretu Women Summer Tunic Dress V Neck Casual Loose Flowy Swing Shift Dresses', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Amoretu Women Summer Tunic Dress V Neck Casual Loose Flowy Swing Shift Dresses', 'Amoretu Women Summer Tunic Dress V Neck Casual Loose Flowy Swing Shift Dresses', NULL, 100.00, 68.00, 88.00, 'product-8-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 5, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'amoretu-women-summer-tunic-dress-v-neck-casual-loose-flowy-swing-shift-dresses'),
(88630119, 'Simple Flavor Women\'s Floral Vintage Dress Elegant Midi Evening Dress 3/4 Sleeves', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Simple Flavor Women\'s Floral Vintage Dress Elegant Midi Evening Dress 3/4 Sleeves', 'Simple Flavor Women\'s Floral Vintage Dress Elegant Midi Evening Dress 3/4 Sleeves', NULL, 100.00, 69.00, 89.00, 'product-9-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 4, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'simple-flavor-womens-floral-vintage-dress-elegant-midi-evening-dress-34-sleeves'),
(88630120, 'BTFBM Women Casual Fall Dresses V Neck Tie Neck Long Sleeve High Waist Dot Ruffle Tiered A Line Solid Swing Mini Dress', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'BTFBM Women Casual Fall Dresses V Neck Tie Neck Long Sleeve High Waist Dot Ruffle Tiered A Line Solid Swing Mini Dress', 'BTFBM Women Casual Fall Dresses V Neck Tie Neck Long Sleeve High Waist Dot Ruffle Tiered A Line Solid Swing Mini Dress', NULL, 100.00, 70.00, 90.00, 'product-10-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 5, 4, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'btfbm-women-casual-fall-dresses-v-neck-tie-neck-long-sleeve-high-waist-dot-ruffle-tiered-a-line-solid-swing-mini-dress'),
(88630121, 'LYANER Women\'s Tunic Round Neck Ruffle Loose Flowy Babydoll Swing Mini Dresses', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', 'LYANER Women\'s Tunic Round Neck Ruffle Loose Flowy Babydoll Swing Mini Dresses', 'LYANER Women\'s Tunic Round Neck Ruffle Loose Flowy Babydoll Swing Mini Dresses', NULL, 100.00, 71.00, 91.00, 'product-11-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 4, '1', 9442201, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'lyaner-womens-tunic-round-neck-ruffle-loose-flowy-babydoll-swing-mini-dresses'),
(88630122, 'PUMA Kids\' 6 Pack Low Cut Socks', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'PUMA Kids\' 6 Pack Low Cut Socks', 'PUMA Kids\' 6 Pack Low Cut Socks', NULL, 100.00, 72.00, 92.00, 'product-12-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 5, '1', 9442202, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'puma-kids-6-pack-low-cut-socks'),
(88630123, '3 Pairs Triple Stripe Over the Knee Socks Extra Long Opaque Thigh High Stockings', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, '3 Pairs Triple Stripe Over the Knee Socks Extra Long Opaque Thigh High Stockings', '3 Pairs Triple Stripe Over the Knee Socks Extra Long Opaque Thigh High Stockings', NULL, 100.00, 73.00, 93.00, 'product-13-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 5, '1', 9442202, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, '3-pairs-triple-stripe-over-the-knee-socks-extra-long-opaque-thigh-high-stockings'),
(88630124, '4 Pack Leggings with Pockets for Women,High Waist Tummy Control Workout Yoga Pants', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', '4 Pack Leggings with Pockets for Women,High Waist Tummy Control Workout Yoga Pants', '4 Pack Leggings with Pockets for Women,High Waist Tummy Control Workout Yoga Pants', NULL, 100.00, 74.00, 94.00, 'product-14-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 4, '1', 9442202, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, '4-pack-leggings-with-pockets-for-womenhigh-waist-tummy-control-workout-yoga-pants'),
(88630125, 'Women\'s Regrowth Kit Plus: Shampoo, Conditioner, 2% Minoxidil, Leave-In Foamer. Anti Hair Loss and Thinning Hair Solution for Women, 1 Month', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Women\'s Regrowth Kit Plus: Shampoo, Conditioner, 2% Minoxidil, Leave-In Foamer. Anti Hair Loss and Thinning Hair Solution for Women, 1 Month', 'Women\'s Regrowth Kit Plus: Shampoo, Conditioner, 2% Minoxidil, Leave-In Foamer. Anti Hair Loss and Thinning Hair Solution for Women, 1 Month', NULL, 100.00, 75.00, 95.00, 'product-15-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 4, '1', 9442202, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'womens-regrowth-kit-plus-shampoo-conditioner-2-minoxidil-leave-in-foamer-anti-hair-loss-and-thinning-hair-solution-for-women-1-month'),
(88630126, 'Nutrafol Women Hair Growth For Thicker, Stronger Hair (4 Capsules Per Day) (1 Month Supply)', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', 'Nutrafol Women Hair Growth For Thicker, Stronger Hair (4 Capsules Per Day) (1 Month Supply)', 'Nutrafol Women Hair Growth For Thicker, Stronger Hair (4 Capsules Per Day) (1 Month Supply)', NULL, 100.00, 76.00, 96.00, 'product-16-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 5, '1', 9442202, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'nutrafol-women-hair-growth-for-thicker-stronger-hair-4-capsules-per-day-1-month-supply'),
(88630127, 'Vagisil Anti-Itch Medicated Feminine Vaginal Wipes, Maximum Strength, Instant Relief, Pack of 3 - 60 Wipes Total (Packaging may vary)', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Vagisil Anti-Itch Medicated Feminine Vaginal Wipes, Maximum Strength, Instant Relief, Pack of 3 - 60 Wipes Total (Packaging may vary)', 'Vagisil Anti-Itch Medicated Feminine Vaginal Wipes, Maximum Strength, Instant Relief, Pack of 3 - 60 Wipes Total (Packaging may vary)', NULL, 100.00, 77.00, 97.00, 'product-17-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 4, '1', 9442203, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'vagisil-anti-itch-medicated-feminine-vaginal-wipes-maximum-strength-instant-relief-pack-of-3-60-wipes-total-packaging-may-vary'),
(88630128, 'Jet Set Hydration Kit, Travel Friendly Skincare Set, Cleanser, Balm, Moisturizer, Eye Cream & Night Cream', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', 'Jet Set Hydration Kit, Travel Friendly Skincare Set, Cleanser, Balm, Moisturizer, Eye Cream & Night Cream', 'Jet Set Hydration Kit, Travel Friendly Skincare Set, Cleanser, Balm, Moisturizer, Eye Cream & Night Cream', NULL, 100.00, 78.00, 98.00, 'product-18-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 4, '1', 9442203, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'jet-set-hydration-kit-travel-friendly-skincare-set-cleanser-balm-moisturizer-eye-cream-night-cream'),
(88630129, 'Magic | Skin-renewing Microdermabrasion Scrub | Straight-from-the-Spa | Tightens Pores & Brightens Skin | Paraben Free, Cruelty Free', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Magic | Skin-renewing Microdermabrasion Scrub | Straight-from-the-Spa | Tightens Pores & Brightens Skin | Paraben Free, Cruelty Free', 'Magic | Skin-renewing Microdermabrasion Scrub | Straight-from-the-Spa | Tightens Pores & Brightens Skin | Paraben Free, Cruelty Free', NULL, 100.00, 79.00, 99.00, 'product-19-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 5, 5, '1', 9442203, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'magic-skin-renewing-microdermabrasion-scrub-straight-from-the-spa-tightens-pores-brightens-skin-paraben-free-cruelty-free'),
(88630130, '\'Daily Hydrating\' Duo Skin Care Starter Kit (Bio-Complex Moisturizer and Ferulic Acid + Vitamins C & E) Helps with Fine Lines, Hydration, and Uneven Skin Tone', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', '\'Daily Hydrating\' Duo Skin Care Starter Kit (Bio-Complex Moisturizer and Ferulic Acid + Vitamins C & E) Helps with Fine Lines, Hydration, and Uneven Skin Tone', '\'Daily Hydrating\' Duo Skin Care Starter Kit (Bio-Complex Moisturizer and Ferulic Acid + Vitamins C & E) Helps with Fine Lines, Hydration, and Uneven Skin Tone', NULL, 100.00, 80.00, 0.00, 'product-20-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 5, '1', 9442203, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'daily-hydrating-duo-skin-care-starter-kit-bio-complex-moisturizer-and-ferulic-acid-vitamins-c-e-helps-with-fine-lines-hydration-and-uneven-skin-tone'),
(88630131, 'Image Skincare The Max Stem Cell Facial Cleanser, 4 Fl Oz', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Image Skincare The Max Stem Cell Facial Cleanser, 4 Fl Oz', 'Image Skincare The Max Stem Cell Facial Cleanser, 4 Fl Oz', NULL, 101.00, 81.00, 0.00, 'product-21-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 4, '1', 9442203, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'image-skincare-the-max-stem-cell-facial-cleanser-4-fl-oz'),
(88630132, 'Sling Bag Canvas Crossbody Backpack Shoulder Travel Bag Casual Daypacks', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Sling Bag Canvas Crossbody Backpack Shoulder Travel Bag Casual Daypacks', 'Sling Bag Canvas Crossbody Backpack Shoulder Travel Bag Casual Daypacks', NULL, 102.00, 82.00, 0.00, 'product-22-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 5, '1', 9442204, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'sling-bag-canvas-crossbody-backpack-shoulder-travel-bag-casual-daypacks'),
(88630133, 'Nautica Diver Nylon Small Womens Crossbody Bag Purse with Adjustable Shoulder Strap', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Nautica Diver Nylon Small Womens Crossbody Bag Purse with Adjustable Shoulder Strap', 'Nautica Diver Nylon Small Womens Crossbody Bag Purse with Adjustable Shoulder Strap', NULL, 150.00, 83.00, 103.00, 'product-23-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 5, '1', 9442204, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'nautica-diver-nylon-small-womens-crossbody-bag-purse-with-adjustable-shoulder-strap'),
(88630134, 'Anna by Anuschka Satchel Handbag | Genuine Leather', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Anna by Anuschka Satchel Handbag | Genuine Leather', 'Anna by Anuschka Satchel Handbag | Genuine Leather', NULL, 170.00, 84.00, 104.00, 'product-24-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 5, '1', 9442204, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'anna-by-anuschka-satchel-handbag-genuine-leather'),
(88630135, 'Self Retractable ID Badge Holder Key Reel, Heavy Duty Metal Body, 30 Inches Steel Cord, Carabiner Key Chain Keychain with Belt Clip, Hold Up to 15 Keys and Tools', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Self Retractable ID Badge Holder Key Reel, Heavy Duty Metal Body, 30 Inches Steel Cord, Carabiner Key Chain Keychain with Belt Clip, Hold Up to 15 Keys and Tools', 'Self Retractable ID Badge Holder Key Reel, Heavy Duty Metal Body, 30 Inches Steel Cord, Carabiner Key Chain Keychain with Belt Clip, Hold Up to 15 Keys and Tools', NULL, 200.00, 85.00, 105.00, 'product-25-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 4, '1', 9442204, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'self-retractable-id-badge-holder-key-reel-heavy-duty-metal-body-30-inches-steel-cord-carabiner-key-chain-keychain-with-belt-clip-hold-up-to-15-keys-and-tools'),
(88630136, 'Airanes Anti Fog Safety Glasses for Women Men', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Airanes Anti Fog Safety Glasses for Women Men', 'Airanes Anti Fog Safety Glasses for Women Men', NULL, 170.00, 86.00, 106.00, 'product-26-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 3, '1', 9442204, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'airanes-anti-fog-safety-glasses-for-women-men'),
(88630137, 'Legendary Whitetails Men\'s Journeyman Shirt Jacket', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Legendary Whitetails Men\'s Journeyman Shirt Jacket', 'Legendary Whitetails Men\'s Journeyman Shirt Jacket', NULL, 160.00, 87.00, 107.00, 'product-27-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 5, '1', 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'legendary-whitetails-mens-journeyman-shirt-jacket'),
(88630138, 'Wrangler Men\'s Cowboy Cut Western Long Sleeve Snap Work Shirt Firm Finish', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Wrangler Men\'s Cowboy Cut Western Long Sleeve Snap Work Shirt Firm Finish', 'Wrangler Men\'s Cowboy Cut Western Long Sleeve Snap Work Shirt Firm Finish', NULL, 108.00, 88.00, 0.00, 'product-28-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 5, 5, '1', 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 1, 'wrangler-mens-cowboy-cut-western-long-sleeve-snap-work-shirt-firm-finish'),
(88630139, 'Dockers Men\'s Long Sleeve Signature Comfort Flex Shirt', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', 'Dockers Men\'s Long Sleeve Signature Comfort Flex Shirt', 'Dockers Men\'s Long Sleeve Signature Comfort Flex Shirt', NULL, 109.00, 89.00, 0.00, 'product-29-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 4, '1', 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'dockers-mens-long-sleeve-signature-comfort-flex-shirt'),
(88630140, 'Goodthreads Men\'s Slim-Fit Long-Sleeve Plaid Oxford Shirt', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Goodthreads Men\'s Slim-Fit Long-Sleeve Plaid Oxford Shirt', 'Goodthreads Men\'s Slim-Fit Long-Sleeve Plaid Oxford Shirt', NULL, 110.00, 90.00, 0.00, 'product-30-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 3, NULL, 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'goodthreads-mens-slim-fit-long-sleeve-plaid-oxford-shirt'),
(88630141, 'Dickies Men\'s Sanded Duck Sherpa Lined Hooded Jacket', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', 'Dickies Men\'s Sanded Duck Sherpa Lined Hooded Jacket', 'Dickies Men\'s Sanded Duck Sherpa Lined Hooded Jacket', NULL, 111.00, 91.00, 0.00, 'product-31-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 5, NULL, 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'dickies-mens-sanded-duck-sherpa-lined-hooded-jacket'),
(88630142, 'Carhartt Men\'s Thermal Lined Duck Active Jacket J131 (Regular and Big & Tall Sizes)', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Carhartt Men\'s Thermal Lined Duck Active Jacket J131 (Regular and Big & Tall Sizes)', 'Carhartt Men\'s Thermal Lined Duck Active Jacket J131 (Regular and Big & Tall Sizes)', NULL, 190.00, 92.00, 112.00, 'product-32-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 4, NULL, 9442205, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'carhartt-mens-thermal-lined-duck-active-jacket-j131-regular-and-big-tall-sizes'),
(88630143, 'Columbia Men\'s Powder Lite Jacket', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Columbia Men\'s Powder Lite Jacket', 'Columbia Men\'s Powder Lite Jacket', NULL, 200.00, 93.00, 113.00, 'product-33-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 3, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'columbia-mens-powder-lite-jacket'),
(88630144, 'Jack Wolfskin Women\'s Turbulence Jacket', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', 'Jack Wolfskin Women\'s Turbulence Jacket', 'Jack Wolfskin Women\'s Turbulence Jacket', NULL, 114.00, 94.00, 0.00, 'product-34-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 1, 5, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'jack-wolfskin-womens-turbulence-jacket'),
(88630145, 'Men\'s Survivor Iv Relaxed Fit Cargo Pant-Reg and Big and Tall Sizes', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Men\'s Survivor Iv Relaxed Fit Cargo Pant-Reg and Big and Tall Sizes', 'Men\'s Survivor Iv Relaxed Fit Cargo Pant-Reg and Big and Tall Sizes', NULL, 115.00, 95.00, 0.00, 'product-35-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 2, 3, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'mens-survivor-iv-relaxed-fit-cargo-pant-reg-and-big-and-tall-sizes'),
(88630146, 'Fossil Men\'s Leather Trifold with Id Window Wallet', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', 'Fossil Men\'s Leather Trifold with Id Window Wallet', 'Fossil Men\'s Leather Trifold with Id Window Wallet', NULL, 140.00, 96.00, 116.00, 'product-36-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 5, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'fossil-mens-leather-trifold-with-id-window-wallet'),
(88630147, 'Carhartt Legacy Deluxe Work Backpack with 17-Inch Laptop Compartment, Carhartt Brown', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Carhartt Legacy Deluxe Work Backpack with 17-Inch Laptop Compartment, Carhartt Brown', 'Carhartt Legacy Deluxe Work Backpack with 17-Inch Laptop Compartment, Carhartt Brown', NULL, 170.00, 97.00, 117.00, 'product-37-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 5, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'carhartt-legacy-deluxe-work-backpack-with-17-inch-laptop-compartment-carhartt-brown'),
(88630148, 'Herschel Classic Backpack, Ash Rose, Mid-Volume 18.0L', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Trending', 'Herschel Classic Backpack, Ash Rose, Mid-Volume 18.0L', 'Herschel Classic Backpack, Ash Rose, Mid-Volume 18.0L', NULL, 118.00, 98.00, 0.00, 'product-38-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 5, 4, NULL, 9442206, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'herschel-classic-backpack-ash-rose-mid-volume-180l'),
(88630149, 'Vera Bradley Women\'s Cotton Campus Backpack', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Vera Bradley Women\'s Cotton Campus Backpack', 'Vera Bradley Women\'s Cotton Campus Backpack', NULL, 119.00, 98.00, 0.00, 'product-39-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 4, 5, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'vera-bradley-womens-cotton-campus-backpack'),
(88630150, 'EaseGave 17.3 Inch Briefcase for Women,Multi-Pocket Work Bag Spacious Office Computer Bags Laptop Messenger Bag for Work Business Travel,coffee-17.3 Inch', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'EaseGave 17.3 Inch Briefcase for Women,Multi-Pocket Work Bag Spacious Office Computer Bags Laptop Messenger Bag for Work Business Travel,coffee-17.3 Inch', 'EaseGave 17.3 Inch Briefcase for Women,Multi-Pocket Work Bag Spacious Office Computer Bags Laptop Messenger Bag for Work Business Travel,coffee-17.3 Inch', NULL, 200.00, 100.00, 120.00, 'product-40-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 3, 4, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'easegave-173-inch-briefcase-for-womenmulti-pocket-work-bag-spacious-office-computer-bags-laptop-messenger-bag-for-work-business-travelcoffee-173-inch'),
(88630151, 'Eco Friendly Laptop Backpack: Made from recycled PET bottles', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Eco Friendly Laptop Backpack: Made from recycled PET bottles', 'Eco Friendly Laptop Backpack: Made from recycled PET bottles', NULL, 110.00, 90.00, 100.00, 'product-41-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'eco-friendly-laptop-backpack-made-from-recycled-pet-bottles'),
(88630152, 'Solo New York Region Laptop Backpack, Grey', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Solo New York Region Laptop Backpack, Grey', 'Solo New York Region Laptop Backpack, Grey', NULL, 110.00, 90.00, 100.00, 'product-42-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'solo-new-york-region-laptop-backpack-grey'),
(88630153, 'Laptop Backpack for Women Work Backpack Purse Travel Bookbag Nurse School Bag', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Featured', 'Laptop Backpack for Women Work Backpack Purse Travel Bookbag Nurse School Bag', 'Laptop Backpack for Women Work Backpack Purse Travel Bookbag Nurse School Bag', NULL, 110.00, 90.00, 100.00, 'product-43-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'laptop-backpack-for-women-work-backpack-purse-travel-bookbag-nurse-school-bag'),
(88630154, 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Wipes Remove Dirt, Oil, Makeup & Waterproof Mascara, Gentle, Individually Wrapped, 100% Plant-Based Fibers, 20 ct', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Wipes Remove Dirt, Oil, Makeup & Waterproof Mascara, Gentle, Individually Wrapped, 100% Plant-Based Fibers, 20 ct', 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Wipes Remove Dirt, Oil, Makeup & Waterproof Mascara, Gentle, Individually Wrapped, 100% Plant-Based Fibers, 20 ct', NULL, 110.00, 90.00, 100.00, 'product-44-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'neutrogena-makeup-remover-facial-cleansing-towelette-singles-daily-face-wipes-remove-dirt-oil-makeup-waterproof-mascara-gentle-individually-wrapped-100-plant-based-fibers-20-ct'),
(88630155, 'Anker Soundcore Life Q20 Hybrid Active Noise Cancelling Headphones, Wireless Over Ear Bluetooth Headphones, 40H Playtime, Hi-Res Audio, Deep Bass, Memory Foam Ear Cups, for Travel, Home Office', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Anker Soundcore Life Q20 Hybrid Active Noise Cancelling Headphones, Wireless Over Ear Bluetooth Headphones, 40H Playtime, Hi-Res Audio, Deep Bass, Memory Foam Ear Cups, for Travel, Home Office', 'Anker Soundcore Life Q20 Hybrid Active Noise Cancelling Headphones, Wireless Over Ear Bluetooth Headphones, 40H Playtime, Hi-Res Audio, Deep Bass, Memory Foam Ear Cups, for Travel, Home Office', NULL, 110.00, 90.00, 100.00, 'product-45-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442207, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'anker-soundcore-life-q20-hybrid-active-noise-cancelling-headphones-wireless-over-ear-bluetooth-headphones-40h-playtime-hi-res-audio-deep-bass-memory-foam-ear-cups-for-travel-home-office'),
(88630156, 'Mama Mio Pregnancy Essentials Kit', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Featured', 'Mama Mio Pregnancy Essentials Kit', 'Mama Mio Pregnancy Essentials Kit', NULL, 110.00, 90.00, 100.00, 'product-46-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442208, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'mama-mio-pregnancy-essentials-kit'),
(88630157, 'Milky Chic Gift Box for New Moms- 10 Unique Postpartum Personal Care Items for Mothers-Mommy\'s Pampering Surprise Basket', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Milky Chic Gift Box for New Moms- 10 Unique Postpartum Personal Care Items for Mothers-Mommy\'s Pampering Surprise Basket', 'Milky Chic Gift Box for New Moms- 10 Unique Postpartum Personal Care Items for Mothers-Mommy\'s Pampering Surprise Basket', NULL, 110.00, 90.00, 100.00, 'product-47-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442208, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'milky-chic-gift-box-for-new-moms-10-unique-postpartum-personal-care-items-for-mothers-mommys-pampering-surprise-basket'),
(88630158, 'Stride Rite Unisex-Child Made2play Xander Athletic Sneaker', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'New', 'Stride Rite Unisex-Child Made2play Xander Athletic Sneaker', 'Stride Rite Unisex-Child Made2play Xander Athletic Sneaker', NULL, 110.00, 90.00, 100.00, 'product-48-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442208, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, 'stride-rite-unisex-child-made2play-xander-athletic-sneaker'),
(88630159, 'PUMA Women\'s Carina Sneaker', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'PUMA Women\'s Carina Sneaker', 'PUMA Women\'s Carina Sneaker', NULL, 110.00, 90.00, 100.00, 'product-49-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442208, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 2, 'puma-womens-carina-sneaker'),
(88630160, 'CangLong Velvet Seat Chair with Metal Legs for Kitchen Dining Room,set of 2. Beige', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', 'Featured', 'CangLong Velvet Seat Chair with Metal Legs for Kitchen Dining Room,set of 2. Beige', 'CangLong Velvet Seat Chair with Metal Legs for Kitchen Dining Room,set of 2. Beige', NULL, 110.00, 90.00, 100.00, 'product-50-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442210, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 2, 'canglong-velvet-seat-chair-with-metal-legs-for-kitchen-dining-roomset-of-2-beige'),
(88630161, 'Homesick New Home Reed Diffuser', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Homesick New Home Reed Diffuser', 'Homesick New Home Reed Diffuser', NULL, 110.00, 90.00, 100.00, 'product-51-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 9442210, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 2, 'homesick-new-home-reed-diffuser');
INSERT INTO `products` (`id`, `title`, `description`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `tags`, `selling`, `purchased`, `offered`, `image`, `video`, `video_thumb`, `status`, `category_id`, `subcategory_id`, `warranty`, `refundable`, `tax_rule_id`, `shipping_rule_id`, `review_count`, `rating`, `bundle_deal_id`, `brand_id`, `created_at`, `updated_at`, `admin_id`, `slug`) VALUES
(88630162, 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert, Healthy Chocolate Chip & Salted Caramel, 20 Oz, Pack of 20', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert, Healthy Chocolate Chip & Salted Caramel, 20 Oz, Pack of 20', 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert, Healthy Chocolate Chip & Salted Caramel, 20 Oz, Pack of 20', NULL, 110.00, 90.00, 100.00, 'product-52-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, NULL, 0, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 2, 'brownie-brittle-sheila-gs-low-calorie-thin-sweet-crispy-snack-and-treats-dessert-healthy-chocolate-chip-salted-caramel-20-oz-pack-of-20'),
(88630163, 'Non-Stick Sauté Pan, Rapid Noodles Cooker, 1.5L Mini Pot for Steak, Egg, Fried Rice, Ramen, Oatmeal, Soup with Power Adjustment, Seafoam Green', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '<ul><li>Is Discontinued ‏ : ‎&nbsp;No</li><li>Product Dimensions ‏ : ‎&nbsp;3 x 3 x 3 inches; 1.76 Ounces</li><li>Item model number ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'piece', NULL, 'Non-Stick Sauté Pan, Rapid Noodles Cooker, 1.5L Mini Pot for Steak, Egg, Fried Rice, Ramen, Oatmeal, Soup with Power Adjustment, Seafoam Green', 'Non-Stick Sauté Pan, Rapid Noodles Cooker, 1.5L Mini Pot for Steak, Egg, Fried Rice, Ramen, Oatmeal, Soup with Power Adjustment, Seafoam Green', NULL, 110.00, 90.00, 100.00, 'product-53-1.webp', NULL, NULL, 1, 0, NULL, NULL, 1, 1, 1, 0, 0, '1', 0, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 2, 'non-stick-saute-pan-rapid-noodles-cooker-15l-mini-pot-for-steak-egg-fried-rice-ramen-oatmeal-soup-with-power-adjustment-seafoam-green');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `primary` tinyint(1) NOT NULL DEFAULT 0,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `category_id`, `primary`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 63082111, 1, 88630111, NULL, NULL),
(2, 64273111, 0, 88630111, NULL, NULL),
(3, 63082111, 1, 88630112, NULL, NULL),
(4, 64273111, 0, 88630112, NULL, NULL),
(5, 63082111, 1, 88630113, NULL, NULL),
(6, 64273111, 0, 88630113, NULL, NULL),
(7, 63082111, 1, 88630114, NULL, NULL),
(8, 64273111, 0, 88630114, NULL, NULL),
(9, 63082111, 1, 88630115, NULL, NULL),
(10, 64273111, 0, 88630115, NULL, NULL),
(11, 63082111, 1, 88630116, NULL, NULL),
(12, 64273111, 0, 88630116, NULL, NULL),
(13, 63082111, 1, 88630117, NULL, NULL),
(14, 64273111, 0, 88630117, NULL, NULL),
(15, 63082111, 1, 88630118, NULL, NULL),
(16, 73294112, 0, 88630118, NULL, NULL),
(17, 63082111, 1, 88630119, NULL, NULL),
(18, 73294112, 0, 88630119, NULL, NULL),
(19, 63082111, 1, 88630120, NULL, NULL),
(20, 73294112, 0, 88630120, NULL, NULL),
(21, 63082111, 1, 88630121, NULL, NULL),
(22, 73294112, 0, 88630121, NULL, NULL),
(23, 63082111, 1, 88630122, NULL, NULL),
(24, 96323113, 0, 88630122, NULL, NULL),
(25, 63082111, 1, 88630123, NULL, NULL),
(26, 96323113, 0, 88630123, NULL, NULL),
(27, 63082111, 1, 88630124, NULL, NULL),
(28, 96765114, 0, 88630124, NULL, NULL),
(29, 63082112, 1, 88630125, NULL, NULL),
(30, 97373115, 0, 88630125, NULL, NULL),
(31, 63082112, 1, 88630126, NULL, NULL),
(32, 97373115, 0, 88630126, NULL, NULL),
(33, 63082112, 1, 88630127, NULL, NULL),
(34, 97373116, 0, 88630127, NULL, NULL),
(35, 63082112, 1, 88630128, NULL, NULL),
(36, 97373117, 0, 88630128, NULL, NULL),
(37, 63082112, 1, 88630129, NULL, NULL),
(38, 97373117, 0, 88630129, NULL, NULL),
(39, 63082112, 1, 88630130, NULL, NULL),
(40, 97373117, 0, 88630130, NULL, NULL),
(41, 63082112, 1, 88630131, NULL, NULL),
(42, 97373117, 0, 88630131, NULL, NULL),
(43, 72531155, 1, 88630132, NULL, NULL),
(44, 73294118, 0, 88630132, NULL, NULL),
(45, 72531155, 1, 88630133, NULL, NULL),
(46, 96323119, 0, 88630133, NULL, NULL),
(47, 72531155, 1, 88630134, NULL, NULL),
(48, 96765110, 0, 88630134, NULL, NULL),
(49, 72531153, 1, 88630135, NULL, NULL),
(50, 99585122, 0, 88630135, NULL, NULL),
(51, 72531153, 1, 88630136, NULL, NULL),
(52, 99585122, 0, 88630136, NULL, NULL),
(53, 72531153, 1, 88630137, NULL, NULL),
(54, 99585122, 0, 88630137, NULL, NULL),
(55, 61952111, 1, 88630138, NULL, NULL),
(56, 97373124, 0, 88630138, NULL, NULL),
(57, 61952111, 1, 88630139, NULL, NULL),
(58, 97373124, 0, 88630139, NULL, NULL),
(59, 61952111, 1, 88630140, NULL, NULL),
(60, 97373124, 0, 88630140, NULL, NULL),
(61, 61952111, 1, 88630141, NULL, NULL),
(62, 99585125, 0, 88630141, NULL, NULL),
(63, 61952111, 1, 88630142, NULL, NULL),
(64, 99585125, 0, 88630142, NULL, NULL),
(65, 61952111, 1, 88630143, NULL, NULL),
(66, 99585125, 0, 88630143, NULL, NULL),
(67, 61952111, 1, 88630144, NULL, NULL),
(68, 99585125, 0, 88630144, NULL, NULL),
(69, 61952111, 1, 88630145, NULL, NULL),
(70, 96765126, 0, 88630145, NULL, NULL),
(71, 61952111, 1, 88630146, NULL, NULL),
(72, 99585127, 0, 88630146, NULL, NULL),
(73, 61952111, 1, 88630147, NULL, NULL),
(74, 99585128, 0, 88630147, NULL, NULL),
(75, 61952111, 1, 88630148, NULL, NULL),
(76, 99585128, 0, 88630148, NULL, NULL),
(77, 61952111, 1, 88630149, NULL, NULL),
(78, 99585128, 0, 88630149, NULL, NULL),
(79, 96522110, 1, 88630150, NULL, NULL),
(80, 99585130, 0, 88630150, NULL, NULL),
(81, 96522110, 1, 88630151, NULL, NULL),
(82, 99585130, 0, 88630151, NULL, NULL),
(83, 72533143, 1, 88630152, NULL, NULL),
(84, 99585133, 0, 88630152, NULL, NULL),
(85, 72533143, 1, 88630153, NULL, NULL),
(86, 99585133, 0, 88630153, NULL, NULL),
(87, 72533143, 1, 88630154, NULL, NULL),
(88, 99585134, 0, 88630154, NULL, NULL),
(89, 72533143, 1, 88630155, NULL, NULL),
(90, 99585134, 0, 88630155, NULL, NULL),
(91, 96674111, 1, 88630156, NULL, NULL),
(92, 99585136, 0, 88630156, NULL, NULL),
(93, 96674111, 1, 88630157, NULL, NULL),
(94, 99585136, 0, 88630157, NULL, NULL),
(95, 96674111, 1, 88630158, NULL, NULL),
(96, 99585136, 0, 88630158, NULL, NULL),
(97, 91202114, 1, 88630159, NULL, NULL),
(98, 96765141, 0, 88630159, NULL, NULL),
(99, 92522115, 1, 88630160, NULL, NULL),
(100, 99585143, 0, 88630160, NULL, NULL),
(101, 92522115, 1, 88630161, NULL, NULL),
(102, 96765144, 0, 88630161, NULL, NULL),
(103, 92522115, 1, 88630162, NULL, NULL),
(104, 96765144, 0, 88630162, NULL, NULL),
(105, 91233119, 1, 88630163, NULL, NULL),
(106, 99585149, 0, 88630163, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_collections`
--

CREATE TABLE `product_collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 2,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_collections`
--

INSERT INTO `product_collections` (`id`, `title`, `status`, `admin_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Featured products', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'featured-products'),
(2, 'Trending products', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'trending-products'),
(3, 'Top selling products', 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:33', 'top-selling-products');

-- --------------------------------------------------------

--
-- Table structure for table `product_collection_langs`
--

CREATE TABLE `product_collection_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `product_collection_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_collection_langs`
--

INSERT INTO `product_collection_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `product_collection_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Özel Ürünler', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Trend olan ürünler', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'En çok satan ürünler', 'tr', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Produits populaires', 'fr', 1),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Produits tendance', 'fr', 2),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Produits les plus vendus', 'fr', 3),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'विशेष रुप से प्रदर्शित प्रोडक्टस', 'hi', 1),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ट्रेंडिंग उत्पाद', 'hi', 2),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'सबसे ज्यादा बिकने वाले उत्पाद', 'hi', 3),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'منتجات مميزة', 'ar', 1),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'المنتجات الرائجة', 'ar', 2),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'المنتجات الأكثر مبيعًا', 'ar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `product_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `image`, `product_id`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'product-14-2.webp', 88630114, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(2, 'product-14-3.webp', 88630114, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(3, 'product-14-4.webp', 88630114, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(4, 'product-16-2.webp', 88630116, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(5, 'product-16-3.webp', 88630116, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(6, 'product-16-4.webp', 88630116, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(7, 'product-18-2.webp', 88630118, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(8, 'product-18-3.webp', 88630118, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(9, 'product-21-2.webp', 88630121, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1),
(10, 'product-21-3.webp', 88630121, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_langs`
--

CREATE TABLE `product_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `overview` text DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `lang` text NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_langs`
--

INSERT INTO `product_langs` (`id`, `created_at`, `updated_at`, `description`, `title`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `lang`, `product_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadın Günlük Uzun Kollu Yaka Fermuarlı Sweatshirt İpli Gevşek Kazak Üstler', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', 'Kadın Günlük Uzun Kollu Yaka Fermuarlı Sweatshirt İpli Gevşek Kazak Üstler', 'Kadın Günlük Uzun Kollu Yaka Fermuarlı Sweatshirt İpli Gevşek Kazak Üstler', 'tr', 88630111),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Örgü Gömlek Tops Casual Fırfır Kısa Kollu Üst Yuvarlak Boyun Tunik Tank Kadınlar için Tee Bluz Tops', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Örgü Gömlek Tops Casual Fırfır Kısa Kollu Üst Yuvarlak Boyun Tunik Tank Kadınlar için Tee Bluz Tops', 'Örgü Gömlek Tops Casual Fırfır Kısa Kollu Üst Yuvarlak Boyun Tunik Tank Kadınlar için Tee Bluz Tops', 'tr', 88630112),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell Rahat Düz Renk Fırfırlı Yaka Uzun Kollu Fırfırlı Gömlek Bluz V Yaka Kısa Kollu Gömlek Üst', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Andongnywell Rahat Düz Renk Fırfırlı Yaka Uzun Kollu Fırfırlı Gömlek Bluz V Yaka Kısa Kollu Gömlek Üst', 'Andongnywell Rahat Düz Renk Fırfırlı Yaka Uzun Kollu Fırfırlı Gömlek Bluz V Yaka Kısa Kollu Gömlek Üst', 'tr', 88630113),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadın Waffle Örgü Bluz Balon Uzun Kollu Dantel Casual Gevşek T Shirt Tops', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Kadın Waffle Örgü Bluz Balon Uzun Kollu Dantel Casual Gevşek T Shirt Tops', 'Kadın Waffle Örgü Bluz Balon Uzun Kollu Dantel Casual Gevşek T Shirt Tops', 'tr', 88630114),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadın Fırfır Kollu Yaz Casual Bluz Bisiklet Yaka Katı Sevimli Tunik Gömlek Tops', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Featured', 'Kadın Fırfır Kollu Yaz Casual Bluz Bisiklet Yaka Katı Sevimli Tunik Gömlek Tops', 'Kadın Fırfır Kollu Yaz Casual Bluz Bisiklet Yaka Katı Sevimli Tunik Gömlek Tops', 'tr', 88630115),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadın Çiçekli Tunik Üstleri Günlük Bluz V Yaka Kısa Kollu Düğmeli T-Shirt', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Kadın Çiçekli Tunik Üstleri Günlük Bluz V Yaka Kısa Kollu Düğmeli T-Shirt', 'Kadın Çiçekli Tunik Üstleri Günlük Bluz V Yaka Kısa Kollu Düğmeli T-Shirt', 'tr', 88630116),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell kadın Casual Leopar Baskı T-Shirt Uzun Kollu Yumuşak Sıkı Kamuflaj Bluz Gömlek Tops', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Andongnywell kadın Casual Leopar Baskı T-Shirt Uzun Kollu Yumuşak Sıkı Kamuflaj Bluz Gömlek Tops', 'Andongnywell kadın Casual Leopar Baskı T-Shirt Uzun Kollu Yumuşak Sıkı Kamuflaj Bluz Gömlek Tops', 'tr', 88630117),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Amoretu Kadın Yaz Tunik Elbise V Yaka Rahat Gevşek Flowy Salıncak Shift Elbiseler', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Amoretu Kadın Yaz Tunik Elbise V Yaka Rahat Gevşek Flowy Salıncak Shift Elbiseler', 'Amoretu Kadın Yaz Tunik Elbise V Yaka Rahat Gevşek Flowy Salıncak Shift Elbiseler', 'tr', 88630118),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Basit Lezzet Kadın Çiçek Vintage Elbise Zarif Midi Abiye 3/4 Kollu', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Basit Lezzet Kadın Çiçek Vintage Elbise Zarif Midi Abiye 3/4 Kollu', 'Basit Lezzet Kadın Çiçek Vintage Elbise Zarif Midi Abiye 3/4 Kollu', 'tr', 88630119),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'BTFBM Kadınlar Casual Güz Elbiseler V Yaka Kravat Boyun Uzun Kollu Yüksek Bel Nokta Fırfır Katmanlı Bir Çizgi Katı Salıncak Mini Elbise', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'BTFBM Kadınlar Casual Güz Elbiseler V Yaka Kravat Boyun Uzun Kollu Yüksek Bel Nokta Fırfır Katmanlı Bir Çizgi Katı Salıncak Mini Elbise', 'BTFBM Kadınlar Casual Güz Elbiseler V Yaka Kravat Boyun Uzun Kollu Yüksek Bel Nokta Fırfır Katmanlı Bir Çizgi Katı Salıncak Mini Elbise', 'tr', 88630120),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'LYANER Kadın Tunik Yuvarlak Yaka Fırfırlı Gevşek Dökümlü Babydoll Salıncak Mini Elbise', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', 'LYANER Kadın Tunik Yuvarlak Yaka Fırfırlı Gevşek Dökümlü Babydoll Salıncak Mini Elbise', 'LYANER Kadın Tunik Yuvarlak Yaka Fırfırlı Gevşek Dökümlü Babydoll Salıncak Mini Elbise', 'tr', 88630121),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'PUMA Çocuk 6\'lı Paket Düşük Kesim Çorap', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'PUMA Çocuk 6\'lı Paket Düşük Kesim Çorap', 'PUMA Çocuk 6\'lı Paket Düşük Kesim Çorap', 'tr', 88630122),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '3 Çift Üçlü Çizgili Diz Üstü Çorap Ekstra Uzun Opak Uyluk Yüksek Çorap', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, '3 Çift Üçlü Çizgili Diz Üstü Çorap Ekstra Uzun Opak Uyluk Yüksek Çorap', '3 Çift Üçlü Çizgili Diz Üstü Çorap Ekstra Uzun Opak Uyluk Yüksek Çorap', 'tr', 88630123),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '4\'lü Paket Kadın Cepli Tayt, Yüksek Bel Karın Kontrol Egzersiz Yoga Pantolonu', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trending', '4\'lü Paket Kadın Cepli Tayt, Yüksek Bel Karın Kontrol Egzersiz Yoga Pantolonu', '4\'lü Paket Kadın Cepli Tayt, Yüksek Bel Karın Kontrol Egzersiz Yoga Pantolonu', 'tr', 88630124),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadın Büyütme Kiti Plus: Şampuan, Saç Kremi, %2 Minoksidil, Durulanmayan Köpürtücü. Kadınlar İçin Dökülme ve Seyrelme Karşıtı Saç Çözümü, 1 Ay', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Kadın Büyütme Kiti Plus: Şampuan, Saç Kremi, %2 Minoksidil, Durulanmayan Köpürtücü. Kadınlar İçin Dökülme ve Seyrelme Karşıtı Saç Çözümü, 1 Ay', 'Kadın Büyütme Kiti Plus: Şampuan, Saç Kremi, %2 Minoksidil, Durulanmayan Köpürtücü. Kadınlar İçin Dökülme ve Seyrelme Karşıtı Saç Çözümü, 1 Ay', 'tr', 88630125),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Daha Kalın, Daha Güçlü Saçlar İçin Nutrafol Kadın Saç Uzatma (Günde 4 Kapsül) (1 Aylık Arz)', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', 'Daha Kalın, Daha Güçlü Saçlar İçin Nutrafol Kadın Saç Uzatma (Günde 4 Kapsül) (1 Aylık Arz)', 'Daha Kalın, Daha Güçlü Saçlar İçin Nutrafol Kadın Saç Uzatma (Günde 4 Kapsül) (1 Aylık Arz)', 'tr', 88630126),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Vagisil Kaşıntı Önleyici İlaçlı Kadınsı Vajinal Mendil, Maksimum Güç, Anında Rahatlama, 3\'lü Paket - Toplam 60 Mendil (Ambalaj değişebilir)', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Vagisil Kaşıntı Önleyici İlaçlı Kadınsı Vajinal Mendil, Maksimum Güç, Anında Rahatlama, 3\'lü Paket - Toplam 60 Mendil (Ambalaj değişebilir)', 'Vagisil Kaşıntı Önleyici İlaçlı Kadınsı Vajinal Mendil, Maksimum Güç, Anında Rahatlama, 3\'lü Paket - Toplam 60 Mendil (Ambalaj değişebilir)', 'tr', 88630127),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Jet Set Nemlendirici Kit, Seyahat Dostu Cilt Bakım Seti, Temizleyici, Balsam, Nemlendirici, Göz Kremi ve Gece Kremi', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', 'Jet Set Nemlendirici Kit, Seyahat Dostu Cilt Bakım Seti, Temizleyici, Balsam, Nemlendirici, Göz Kremi ve Gece Kremi', 'Jet Set Nemlendirici Kit, Seyahat Dostu Cilt Bakım Seti, Temizleyici, Balsam, Nemlendirici, Göz Kremi ve Gece Kremi', 'tr', 88630128),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Büyü | Cilt Yenileyici Mikrodermabrazyon Ovalama | Doğrudan Spa\'dan | Gözenekleri Sıkılaştırır ve Cildi Aydınlatır | Paraben İçermez, Zulüm İçermez', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Büyü | Cilt Yenileyici Mikrodermabrazyon Ovalama | Doğrudan Spa\'dan | Gözenekleri Sıkılaştırır ve Cildi Aydınlatır | Paraben İçermez, Zulüm İçermez', 'Büyü | Cilt Yenileyici Mikrodermabrazyon Ovalama | Doğrudan Spa\'dan | Gözenekleri Sıkılaştırır ve Cildi Aydınlatır | Paraben İçermez, Zulüm İçermez', 'tr', 88630129),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '\'Günlük Nemlendirici\' Duo Cilt Bakımı Başlangıç Kiti (Biyo-Kompleks Nemlendirici ve Ferulik Asit + C ve E Vitaminleri) İnce Çizgiler, Nemlendirme ve Düzensiz Cilt Tonu İle İlgili Yardımcı Olur', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', '\'Günlük Nemlendirici\' Duo Cilt Bakımı Başlangıç Kiti (Biyo-Kompleks Nemlendirici ve Ferulik Asit + C ve E Vitaminleri) İnce Çizgiler, Nemlendirme ve Düzensiz Cilt Tonu İle İlgili Yardımcı Olur', '\'Günlük Nemlendirici\' Duo Cilt Bakımı Başlangıç Kiti (Biyo-Kompleks Nemlendirici ve Ferulik Asit + C ve E Vitaminleri) İnce Çizgiler, Nemlendirme ve Düzensiz Cilt Tonu İle İlgili Yardımcı Olur', 'tr', 88630130),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Image Skincare The Max Stem Cell Yüz Temizleyici, 4 Fl Oz', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Image Skincare The Max Stem Cell Yüz Temizleyici, 4 Fl Oz', 'Image Skincare The Max Stem Cell Yüz Temizleyici, 4 Fl Oz', 'tr', 88630131),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sling Çanta Kanvas Crossbody Sırt Çantası Omuz Seyahat Çantası Gündelik Sırt Çantaları', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Sling Çanta Kanvas Crossbody Sırt Çantası Omuz Seyahat Çantası Gündelik Sırt Çantaları', 'Sling Çanta Kanvas Crossbody Sırt Çantası Omuz Seyahat Çantası Gündelik Sırt Çantaları', 'tr', 88630132),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Nautica Diver Naylon Küçük Bayan Crossbody Çanta Ayarlanabilir Omuz Askılı Çanta', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Nautica Diver Naylon Küçük Bayan Crossbody Çanta Ayarlanabilir Omuz Askılı Çanta', 'Nautica Diver Naylon Küçük Bayan Crossbody Çanta Ayarlanabilir Omuz Askılı Çanta', 'tr', 88630133),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Anna by Anuschka Satchel El Çantası | Gerçek Deri', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Anna by Anuschka Satchel El Çantası | Gerçek Deri', 'Anna by Anuschka Satchel El Çantası | Gerçek Deri', 'tr', 88630134),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kendinden Katlanır Yaka Kartı Tutucu Anahtar Makarası, Ağır Hizmet Tipi Metal Gövde, 30 İnç Çelik Kordon, Kemer Klipsli Karabina Anahtarlık Anahtarlık, 15 Adede Kadar Tutabilen Anahtar ve Aletler', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Kendinden Katlanır Yaka Kartı Tutucu Anahtar Makarası, Ağır Hizmet Tipi Metal Gövde, 30 İnç Çelik Kordon, Kemer Klipsli Karabina Anahtarlık Anahtarlık, 15 Adede Kadar Tutabilen Anahtar ve Aletler', 'Kendinden Katlanır Yaka Kartı Tutucu Anahtar Makarası, Ağır Hizmet Tipi Metal Gövde, 30 İnç Çelik Kordon, Kemer Klipsli Karabina Anahtarlık Anahtarlık, 15 Adede Kadar Tutabilen Anahtar ve Aletler', 'tr', 88630135),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Airanes Kadın Erkek Güvenlik Gözlükleri', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Airanes Kadın Erkek Güvenlik Gözlükleri', 'Airanes Kadın Erkek Güvenlik Gözlükleri', 'tr', 88630136),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Legendary Whitetails Erkek Kalfa Gömlek Ceket', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Legendary Whitetails Erkek Kalfa Gömlek Ceket', 'Legendary Whitetails Erkek Kalfa Gömlek Ceket', 'tr', 88630137),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Wrangler Erkek Kovboy Kesim Batı Uzun Kollu Çıtçıt İş Gömleği Sert Kaplama', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Wrangler Erkek Kovboy Kesim Batı Uzun Kollu Çıtçıt İş Gömleği Sert Kaplama', 'Wrangler Erkek Kovboy Kesim Batı Uzun Kollu Çıtçıt İş Gömleği Sert Kaplama', 'tr', 88630138),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Dockers Erkek Uzun Kollu Signature Comfort Flex Gömlek', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trending', 'Dockers Erkek Uzun Kollu Signature Comfort Flex Gömlek', 'Dockers Erkek Uzun Kollu Signature Comfort Flex Gömlek', 'tr', 88630139),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Goodthreads Erkek Slim-Fit Uzun Kollu Ekose Oxford Gömlek', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Goodthreads Erkek Slim-Fit Uzun Kollu Ekose Oxford Gömlek', 'Goodthreads Erkek Slim-Fit Uzun Kollu Ekose Oxford Gömlek', 'tr', 88630140),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Dickies Sanded Duck Sherpa Astarlı Erkek Kapşonlu Ceket', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trend', 'Dickies Sanded Duck Sherpa Astarlı Erkek Kapşonlu Ceket', 'Dickies Sanded Duck Sherpa Astarlı Erkek Kapşonlu Ceket', 'tr', 88630141),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Carhartt Erkek Termal Astarlı Duck Active Ceket J131 (Normal ve Büyük & Uzun Bedenler)', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Carhartt Erkek Termal Astarlı Duck Active Ceket J131 (Normal ve Büyük & Uzun Bedenler)', 'Carhartt Erkek Termal Astarlı Duck Active Ceket J131 (Normal ve Büyük & Uzun Bedenler)', 'tr', 88630142),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Columbia Erkek Pudra Lite Ceketi', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Columbia Erkek Pudra Lite Ceket', 'Columbia Erkek Pudra Lite Ceket', 'tr', 88630143),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Jack Wolfskin Kadın Türbülans Ceketi', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trend', 'Jack Wolfskin Kadın Türbülans Ceketi', 'Jack Wolfskin Kadın Türbülans Ceketi', 'tr', 88630144),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Erkekler Survivor Iv Rahat Kalıp Kargo Pantolon-Reg ve Büyük ve Uzun Bedenler', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Erkekler Survivor Iv Rahat Kalıp Kargo Pantolon-Reg ve Büyük Bedenler', 'Erkek Survivor Iv Rahat Kalıp Kargo Pantolon-Reg ve Büyük ve Uzun Bedenler', 'tr', 88630145),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Id Pencere Cüzdanlı Fossil Erkek Deri Üç Katlı', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trend', 'Id Pencereli Fossil Erkek Deri Üç Katlı Cüzdan', 'Id Pencereli Fossil Erkek Deri Üç Katlı Cüzdan', 'tr', 88630146),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Carhartt Legacy Deluxe 17 İnç Dizüstü Bilgisayar Bölmeli Sırt Çantası, Carhartt Brown', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Carhartt Legacy Deluxe 17 İnç Dizüstü Bilgisayar Bölmeli Sırt Çantası, Carhartt Brown', 'Carhartt Legacy Deluxe 17 İnç Dizüstü Bilgisayar Bölmeli Sırt Çantası, Carhartt Brown', 'tr', 88630147),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Herschel Classic Sırt Çantası, Ash Rose, Mid-Volume 18.0L', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Trend', 'Herschel Classic Sırt Çantası, Ash Rose, Mid-Volume 18.0L', 'Herschel Classic Sırt Çantası, Ash Rose, Mid-Volume 18.0L', 'tr', 88630148),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Vera Bradley Pamuklu Kadın Kampüs Sırt Çantası', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Vera Bradley Pamuklu Kadın Kampüs Sırt Çantası', 'Vera Bradley Pamuklu Kadın Kampüs Sırt Çantası', 'tr', 88630149),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'EaseGave 17.3 Inç Kadın Evrak Çantası, Çok Cepli Çalışma Çantası Geniş Ofis Bilgisayar Çantaları İş Seyahati için Dizüstü Bilgisayar Messenger Çantası, kahve-17.3 Inç', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'EaseGave 17,3 İnç Kadın Evrak Çantası, Çok Cepli Çalışma Çantası Geniş Ofis Bilgisayar Çantaları İş Seyahati için Dizüstü Bilgisayar Messenger Çantası, kahve-17,3 İnç', 'EaseGave 17.3 Inç Kadın Evrak Çantası, Çok Cepli Çalışma Çantası Geniş Ofis Bilgisayar Çantaları İş Seyahati için Laptop Messenger Çanta, kahve-17.3 Inç', 'tr', 88630150),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Çevre Dostu Dizüstü Bilgisayar Sırt Çantası: Geri dönüştürülmüş PET şişelerden yapılmıştır', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Çevre Dostu Dizüstü Bilgisayar Sırt Çantası: Geri dönüştürülmüş PET şişelerden yapılmıştır', 'Çevre Dostu Dizüstü Bilgisayar Sırt Çantası: Geri dönüştürülmüş PET şişelerden yapılmıştır', 'tr', 88630151),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Solo Yeni York Bölgesi Laptop Sırt Çantası, Gri', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Solo Yeni York Bölgesi Laptop Sırt Çantası, Gri', 'Solo Yeni York Bölgesi Laptop Sırt Çantası, Gri', 'tr', 88630152),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kadınlar için Dizüstü Sırt Çantası İş Sırt Çantası Çanta Seyahat Bookbag Hemşire Okul Çantası', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Öne Çıkanlar', 'Kadınlar için Dizüstü Sırt Çantası İş Sırt Çantası Çanta Seyahat Bookbag Hemşire Okul Çantası', 'Kadınlar için Dizüstü Bilgisayar Sırt Çantası Çalışma Sırt Çantası Çanta Seyahat Bookbag Hemşire Okul Çantası', 'tr', 88630153),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Neutrogena Makeup Remover Yüz Temizleme Mendili Singles, Günlük Yüz Mendili Kiri, Yağı, Makyajı ve Suya Dayanıklı Maskarayı Giderir, Nazik, Tek Tek Sarılmış, %100 Bitki Bazlı Lifler, 20 ct', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Neutrogena Makeup Remover Yüz Temizleme Mendili Singles, Günlük Yüz Mendilleri Kiri, Yağı, Makyajı ve Suya Dayanıklı Maskarayı Giderir, Nazik, Tek Tek Sarılmış, %100 Bitki Bazlı Lifler, 20 ct', 'Neutrogena Makeup Remover Yüz Temizleme Mendili Singles, Günlük Yüz Mendilleri Kiri, Yağı, Makyajı ve Suya Dayanıklı Maskarayı Giderir, Nazik, Tek Tek Sarılmış, %100 Bitki Bazlı Lifler, 20 ct', 'tr', 88630154),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Anker Soundcore Life Q20 Hibrit Aktif Gürültü Önleyici Kulaklıklar, Kablosuz Kulak Üstü Bluetooth Kulaklıklar, 40 Saat Çalma Süresi, Yüksek Çözünürlüklü Ses, Derin Bas, Hafızalı Köpük Kulaklıklar, Seyahat, Ev Ofis için', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Anker Soundcore Life Q20 Hibrit Aktif Gürültü Önleyici Kulaklık, Kablosuz Kulak Üstü Bluetooth Kulaklık, 40 Saat Çalma Süresi, Yüksek Çözünürlüklü Ses, Derin Bas, Hafızalı Köpük Kulaklık, Seyahat, Ev Ofis için', 'Anker Soundcore Life Q20 Hibrit Aktif Gürültü Önleyici Kulaklık, Kablosuz Kulak Üstü Bluetooth Kulaklık, 40 Saat Çalma Süresi, Yüksek Çözünürlüklü Ses, Derin Bas, Hafızalı Köpük Kulaklıklar, Seyahat, Ev Ofis için', 'tr', 88630155),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Mama Mio Gebelik Temel Kiti', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Öne Çıkanlar', 'Mama Mio Gebelik Temel Kiti', 'Mama Mio Gebelik Temel Kiti', 'tr', 88630156),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Yeni Anneler İçin Sütlü Şık Hediye Kutusu- Anneler İçin 10 Eşsiz Doğum Sonrası Kişisel Bakım Ürünü-Annenin Şımartıcı Sürpriz Sepeti', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Yeni Anneler İçin Sütlü Şık Hediye Kutusu- Anneler için 10 Eşsiz Doğum Sonrası Kişisel Bakım Ürünü-Annenin Şımartıcı Sürpriz Sepeti', 'Yeni Anneler İçin Sütlü Şık Hediye Kutusu- Anneler İçin 10 Eşsiz Doğum Sonrası Kişisel Bakım Ürünü-Anneleri Şımartan Sürpriz Sepeti', 'tr', 88630157),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Stride Rite Unisex-Child Made2play Xander Athletic Sneaker', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Yeni', 'Stride Rite Unisex-Çocuk Made2play Xander Atletik Sneaker', 'Stride Rite Unisex-Çocuk Made2play Xander Atletik Sneaker', 'tr', 88630158),
(49, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'PUMA Kadın Carina Sneaker', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'PUMA Kadın Carina Sneaker', 'PUMA Kadın Carina Sneaker', 'tr', 88630159),
(50, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'CangUzun Mutfak Yemek Odası Metal Ayaklı Kadife Koltuk Sandalye 2\'li Set. Bej', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', 'Öne Çıkanlar', 'CangUzun Mutfak Yemek Odası Metal Ayaklı Kadife Koltuk Sandalye 2\'li Set. Bej', 'CangLong Mutfak Yemek Odası Metal Ayaklı Kadife Koltuk 2\'li Takım Bej', 'tr', 88630160),
(51, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Homesick Yeni Home Reed Difüzör', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Homesick Yeni Home Reed Difüzör', 'Homesick Yeni Home Reed Difüzör', 'tr', 88630161),
(52, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Brownie Brittle Sheila G\'s Düşük Kalorili, İnce Tatlı Çıtır Atıştırmalık ve İkramlı Tatlı, Sağlıklı Çikolata Parçacıklı ve Tuzlu Karamel, 20 Oz, 20\'li Paket', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Brownie Brittle Sheila G\'s Düşük Kalorili, İnce Tatlı Çıtır Atıştırmalık ve İkramlı Tatlı, Sağlıklı Çikolata Parçacıklı ve Tuzlu Karamel, 20 Oz, 20\'li Paket', 'Brownie Brittle Sheila G\'s Düşük Kalorili, İnce Tatlı Çıtır Atıştırmalık ve İkramlı Tatlı, Sağlıklı Çikolata Parçacıklı ve Tuzlu Karamel, 20 Oz, 20\'li Paket', 'tr', 88630162),
(53, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Yapışmaz Sote Tavası, Hızlı Erişte Pişirici, Biftek, Yumurta, Kızarmış Pilav, Ramen, Yulaf Ezmesi, Güç Ayarlı Çorba, Deniz Köpüğü Yeşili için 1,5 L Mini Tencere', '<ul><li>Üretilmiyor ‏ : ‎&nbsp;Hayır</li><li>Ürün Boyutları ‏ : ‎&nbsp;3 x 3 x 3 inç; 1,76 Ons</li><li>Ürün model numarası ‏ : ‎&nbsp;231171045</li></ul><p><br></p>', 'parça', NULL, 'Yapışmaz Sote Tavası, Hızlı Erişte Pişirici, Biftek, Yumurta, Kızarmış Pilav, Ramen, Yulaf Ezmesi, Güç Ayarlı Çorba, Deniz Köpüğü Yeşili için 1,5 L Mini Tencere', 'Yapışmaz Sote Tavası, Hızlı Erişte Pişirici, Biftek, Yumurta, Kızarmış Pilav, Ramen, Yulaf Ezmesi, Güç Ayarlı Çorba, Deniz Köpüğü Yeşili için 1,5 L Mini Tencere', 'tr', 88630163),
(54, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sweat-shirt décontracté à manches longues pour femmes avec cordon de serrage, pull ample', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'Sweat-shirt décontracté à manches longues avec revers et fermeture éclair pour femme', 'Sweat-shirt décontracté à manches longues avec revers et fermeture éclair pour femmes', 'fr', 88630111),
(55, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Tops Chemises en Tricot Décontracté à Volants Haut à Manches Courtes Col Rond Tunique Débardeurs Tee Blouse pour Femme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Tops Chemises en Tricot Décontracté à Volants Haut à Manches Courtes Col Rond Tunique Débardeurs Tee Blouse pour Femme', 'Tops Chemises en Tricot Décontracté à Volants Haut à Manches Courtes Col Rond Tunique Débardeurs Tee Blouse pour Femme', 'fr', 88630112),
(56, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell Chemise décontractée à col en V et à manches longues à col en V et à manches courtes', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Andongnywell Chemise décontractée à col en V et à manches longues à col en V et à manches courtes', 'Andongnywell Casual Couleur Unie Col À Volants À Manches Longues Chemise À Volants Blouse Col En V À Manches Courtes Chemise Top', 'fr', 88630113),
(57, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Chemisier en tricot gaufré pour femme Ballon à manches longues Tops en dentelle T-shirts amples décontractés', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Chemisier en maille gaufrée pour femme Ballon à manches longues Tops en dentelle T-shirts amples décontractés', 'Chemisier en maille gaufrée pour femme Ballon à manches longues Tops en dentelle T-shirts amples décontractés', 'fr', 88630114),
(58, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Tops à manches à volants pour femmes Chemisier décontracté d\'été à col rond Solid Cute Tunic Shirt', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'En vedette', 'Hauts à manches volantées pour femmes Chemisier décontracté d\'été à col rond Chemise tunique mignonne unie', 'Tops à manches à volants pour femmes Chemisier décontracté d\'été à col rond Chemise tunique mignonne unie', 'fr', 88630115),
(59, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Tops tuniques à fleurs pour femmes Chemisier décontracté Col en V Manches courtes T-shirts boutonnés', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Tunique à fleurs pour femme Chemisier décontracté Col en V Manches courtes T-shirts boutonnés', 'Tunique à fleurs pour femme Chemisier décontracté Col en V Manches courtes T-shirts boutonnés', 'fr', 88630116),
(60, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell Hauts décontractés pour femmes T-shirt imprimé léopard à manches longues Chemises de camouflage extensibles et douces', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Andongnywell Hauts décontractés pour femmes T-shirt imprimé léopard à manches longues Chemises chemisier camouflage doux et extensible', 'Andongnywell Hauts décontractés pour femmes T-shirt imprimé léopard à manches longues Chemises chemisier camouflage extensible doux', 'fr', 88630117),
(61, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Amoretu Femmes Robe Tunique D\'été Col En V Décontracté Lâche Flowy Swing Shift Robes', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Amoretu Femmes Robe Tunique D\'été Col V Décontracté Lâche Flowy Swing Shift Robes', 'Amoretu Femmes Robe Tunique D\'été Col En V Décontracté Lâche Flowy Swing Shift Robes', 'fr', 88630118),
(62, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Robe vintage florale pour femme à saveur simple Robe de soirée midi élégante à manches 3/4', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Robe vintage à fleurs pour femmes Simple Flavor Robe de soirée mi-longue élégante à manches 3/4', 'Robe vintage florale pour femme à saveur simple Robe de soirée midi élégante à manches 3/4', 'fr', 88630119),
(63, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'BTFBM Femmes Casual Automne Robes Col V Cravate Cou Manches Longues Taille Haute Dot Ruffle Tiered A Line Solid Swing Mini Dress', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'BTFBM Femmes Casual Automne Robes Col V Cravate Cou Manches Longues Taille Haute Dot Ruffle Tiered A Line Solid Swing Mini Dress', 'BTFBM Robes d\'automne décontractées pour femmes Col en V Cravate Manches longues Taille haute Dot Ruffle Tiered A Line Solid Swing Mini Dress', 'fr', 88630120);
INSERT INTO `product_langs` (`id`, `created_at`, `updated_at`, `description`, `title`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `lang`, `product_id`) VALUES
(64, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'LYANER Tunique Femme Col Rond Volants Lâche Flowy Babydoll Swing Mini Robes', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'LYANER Tunique Femme Col Rond Volants Lâche Flowy Babydoll Swing Mini Robes', 'LYANER Tunique Femme Col Rond Volants Lâche Flowy Babydoll Swing Mini Robes', 'fr', 88630121),
(65, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Lot de 6 paires de chaussettes basses PUMA pour enfant', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Lot de 6 paires de chaussettes basses PUMA pour enfant', 'Lot de 6 paires de chaussettes basses PUMA pour enfant', 'fr', 88630122),
(66, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '3 paires de chaussettes à triple rayure sur les genoux bas extra longs opaques pour la cuisse', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, '3 Paires de Chaussettes Triple Rayures Cuissardes Extra Longues Opaques', '3 Paires de Chaussettes Triple Rayures Cuissardes Extra Longues Opaques', 'fr', 88630123),
(67, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Lot de 4 leggings avec poches pour femmes, pantalons de yoga d\'entraînement taille haute pour le contrôle du ventre', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Lot de 4 leggings avec poches pour femmes, pantalons de yoga taille haute pour le contrôle du ventre', 'Lot de 4 leggings avec poches pour femmes, pantalons de yoga taille haute pour le contrôle du ventre', 'fr', 88630124),
(68, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kit Plus pour la repousse des cheveux pour femmes : shampoing, après-shampooing, 2 % de minoxidil, mousse sans rinçage. Solution anti-chute et amincissement des cheveux pour femmes, 1 mois', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Kit Plus pour la repousse des cheveux pour femmes : shampooing, après-shampooing, 2 % de minoxidil, mousse sans rinçage. Solution anti-chute et amincissement des cheveux pour femmes, 1 mois', 'Kit Plus pour la repousse des cheveux pour femmes : shampooing, après-shampooing, 2 % de minoxidil, mousse sans rinçage. Solution anti-chute et cheveux clairsemés pour femmes, 1 mois', 'fr', 88630125),
(69, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Nutrafol Women Hair Growth For Plus Thick, Stronger Hair (4 capsules par jour) (1 mois d\'approvisionnement)', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'Nutrafol Women Hair Growth For Plus Thick, Stronger Hair (4 capsules par jour) (1 mois d\'approvisionnement)', 'Nutrafol Femmes Croissance des cheveux pour des cheveux plus épais et plus forts (4 capsules par jour) (1 mois d\'approvisionnement)', 'fr', 88630126),
(70, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Lingettes vaginales médicamenteuses anti-démangeaisons Vagisil, force maximale, soulagement instantané, paquet de 3 - 60 lingettes au total (l\'emballage peut varier)', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Lingettes vaginales médicamenteuses anti-démangeaisons Vagisil, force maximale, soulagement instantané, paquet de 3 - 60 lingettes au total (l\'emballage peut varier)', 'Lingettes vaginales médicamenteuses anti-démangeaisons Vagisil, force maximale, soulagement instantané, paquet de 3 - 60 lingettes au total (l\'emballage peut varier)', 'fr', 88630127),
(71, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kit d\'hydratation Jet Set, kit de soins de la peau adapté aux voyages, nettoyant, baume, hydratant, crème pour les yeux et crème de nuit', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'Kit d\'hydratation Jet Set, kit de soins de la peau adapté aux voyages, nettoyant, baume, hydratant, crème pour les yeux et crème de nuit', 'Kit d\'hydratation Jet Set, kit de soins de la peau adapté aux voyages, nettoyant, baume, hydratant, crème pour les yeux et crème de nuit', 'fr', 88630128),
(72, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Magic | Gommage microdermabrasion régénérant pour la peau | Tout droit sorti du spa | Resserre les pores et illumine la peau | Sans paraben, sans cruauté envers les animaux', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Magic | Gommage microdermabrasion régénérant pour la peau | Tout droit sorti du spa | Resserre les pores et illumine la peau | Sans paraben, sans cruauté envers les animaux', 'Magic | Gommage microdermabrasion rénovateur pour la peau | Directement sorti du spa | Resserre les pores et illumine la peau | Sans paraben, sans cruauté envers les animaux', 'fr', 88630129),
(73, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kit de démarrage duo de soins de la peau \'Daily Hydrating\' (hydratant bio-complexe et acide férulique + vitamines C et E) aide à lutter contre les ridules, l\'hydratation et le teint irrégulier', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'Kit de démarrage duo de soins de la peau \'Daily Hydrating\' (hydratant bio-complexe et acide férulique + vitamines C et E) aide à lutter contre les ridules, l\'hydratation et le teint irrégulier', 'Kit de démarrage duo de soins de la peau \'Daily Hydrating\' (hydratant bio-complexe et acide férulique + vitamines C et E) aide à lutter contre les ridules, l\'hydratation et le teint irrégulier', 'fr', 88630130),
(74, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Image Skincare Le nettoyant pour le visage Max Stem Cell, 4 Fl Oz', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Image Skincare Le nettoyant pour le visage Max Stem Cell, 4 Fl Oz', 'Image Skincare Le nettoyant pour le visage Max Stem Cell, 4 Fl Oz', 'fr', 88630131),
(75, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à bandoulière en toile Sac à dos à bandoulière Sac de voyage décontracté Daypacks', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à bandoulière en toile Sac à dos à bandoulière Sac de voyage à bandoulière Sacs à dos décontractés', 'Sac à bandoulière en toile Sac à dos à bandoulière Sac de voyage à bandoulière Sacs à dos décontractés', 'fr', 88630132),
(76, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Petit sac à bandoulière Nautica Diver en nylon pour femme avec bandoulière réglable', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Petit sac à bandoulière Nautica Diver en nylon pour femme avec bandoulière réglable', 'Petit sac à bandoulière Nautica Diver en nylon pour femme avec bandoulière réglable', 'fr', 88630133),
(77, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à main Anna by Anuschka Satchel | Cuir véritable', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à main Anna by Anuschka Satchel | Cuir véritable', 'Sac à main Anna by Anuschka Satchel | Cuir véritable', 'fr', 88630134),
(78, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Bobine de clé porte-badge d\'identification auto-rétractable, corps en métal robuste, cordon en acier de 30 pouces, porte-clés porte-clés mousqueton avec clip ceinture, peut contenir jusqu\'à 15 clés et outils', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Bobine porte-badge d\'identification auto-rétractable, corps en métal robuste, cordon en acier de 30 pouces, mousqueton porte-clés avec clip de ceinture, peut contenir jusqu\'à 15 clés et outils', 'Bobine porte-badge d\'identification auto-rétractable, corps en métal robuste, cordon en acier de 30 pouces, mousqueton porte-clés avec clip de ceinture, peut contenir jusqu\'à 15 clés et outils', 'fr', 88630135),
(79, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Lunettes de sécurité anti-buée Airanes pour femmes hommes', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Lunettes de sécurité antibuée Airanes pour femmes hommes', 'Lunettes de sécurité antibuée Airanes pour femmes hommes', 'fr', 88630136),
(80, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Veste-chemise Journeyman Legendary Whitetails pour homme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Veste-chemise Journeyman Legendary Whitetails pour homme', 'Veste-chemise Journeyman Legendary Whitetails pour homme', 'fr', 88630137),
(81, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Chemise de travail Wrangler Cowboy Western à manches longues avec bouton-pression, finition ferme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Chemise de travail Wrangler Cowboy Western à manches longues et boutons-pression Finition ferme', 'Chemise de travail Wrangler Cowboy Western à manches longues avec bouton-pression Finition ferme', 'fr', 88630138),
(82, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Chemise à manches longues Signature Comfort Flex Dockers pour homme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Chemise à manches longues Signature Comfort Flex Dockers pour homme', 'Chemise à manches longues Signature Comfort Flex Dockers pour homme', 'fr', 88630139),
(83, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Chemise Oxford à carreaux à manches longues coupe slim Goodthreads pour homme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Chemise Oxford coupe slim à carreaux à manches longues pour homme Goodthreads', 'Chemise Oxford coupe slim à carreaux à manches longues pour homme Goodthreads', 'fr', 88630140),
(84, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Veste à capuche doublée Sherpa Sanded Duck pour homme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Veste à capuche Dickies Sanded Duck Sherpa pour homme', 'Veste à capuche Dickies Sanded Duck Sherpa pour homme', 'fr', 88630141),
(85, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Veste Active en canard doublé thermique pour homme J131 de Carhartt (tailles régulières et grandes et grandes)', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Veste Active en canard doublé thermique pour homme J131 de Carhartt (tailles régulières et grandes et grandes)', 'Veste Carhartt Thermal Lined Duck Active J131 (Tailles régulières et grandes et grandes)', 'fr', 88630142),
(86, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Veste Columbia Powder Lite pour homme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Veste Columbia Powder Lite pour homme', 'Veste Columbia Powder Lite pour homme', 'fr', 88630143),
(87, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Veste Turbulence Femme Jack Wolfskin', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Veste Jack Wolfskin Turbulence pour femme', 'Veste Jack Wolfskin Turbulence pour femme', 'fr', 88630144),
(88, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Pantalon cargo coupe décontractée Survivor Iv pour homme - Tailles régulières et grandes et grandes', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Pantalon cargo Survivor Iv Relaxed Fit pour homme - Tailles régulières et grandes et grandes', 'Pantalon cargo Survivor Iv Relaxed Fit pour homme - Tailles régulières et grandes et grandes', 'fr', 88630145),
(89, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Portefeuille Fossil en cuir à trois volets avec fenêtre d\'identité', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Portefeuille Fossil en cuir à trois volets avec fenêtre d\'identité', 'Portefeuille Fossil en cuir à trois volets avec fenêtre d\'identification pour homme', 'fr', 88630146),
(90, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos de travail Carhartt Legacy Deluxe avec compartiment pour ordinateur portable 17 pouces, Carhartt Brown', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à dos de travail Carhartt Legacy Deluxe avec compartiment pour ordinateur portable 17 pouces, Carhartt Brown', 'Sac à dos de travail Carhartt Legacy Deluxe avec compartiment pour ordinateur portable 17 pouces, Carhartt Brown', 'fr', 88630147),
(91, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos classique Herschel, Rose cendré, Volume moyen 18,0 L', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Tendance', 'Sac à dos classique Herschel, rose cendré, volume moyen 18,0 L', 'Sac à dos classique Herschel, rose cendré, volume moyen 18,0 L', 'fr', 88630148),
(92, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos Campus en coton pour femme Vera Bradley', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à dos Campus en coton pour femme Vera Bradley', 'Sac à dos Campus en coton pour femme Vera Bradley', 'fr', 88630149),
(93, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'EaseGave Mallette 17,3 Pouces pour Femme, Sac de Travail Multi-Poches Sacs pour Ordinateur de Bureau Spacieux Sacoche pour Ordinateur', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'EaseGave 17,3 Pouces Porte-Documents pour Femmes, Sac de Travail Multi-Poches Spacieux Bureau Ordinateurs', 'EaseGave 17,3 Pouces Mallette pour Femme, Sac de Travail Multi-Poches Spacieux Bureau Ordinateur', 'fr', 88630150),
(94, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos pour ordinateur portable écologique : fabriqué à partir de bouteilles en PET recyclées', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à dos pour ordinateur portable écologique : fabriqué à partir de bouteilles en PET recyclées', 'Sac à dos pour ordinateur portable écologique : fabriqué à partir de bouteilles en PET recyclées', 'fr', 88630151),
(95, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos pour ordinateur portable Solo New York Region, Gris', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sac à dos pour ordinateur portable Solo New York Region, Gris', 'Sac à dos pour ordinateur portable Solo New York Region, Gris', 'fr', 88630152),
(96, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sac à dos pour ordinateur portable pour femmes travail sac à dos sac à main voyage Bookbag infirmière sac d\'école', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'En vedette', 'Sac à dos pour ordinateur portable pour femmes Work Backpack Purse Travel Bookbag Nurse School Bag', 'Sac à dos pour ordinateur portable pour femmes Work Backpack Purse Travel Bookbag Nurse School Bag', 'fr', 88630153),
(97, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Washings Remove Dirt, Oil', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Wipes Remove Dirt, Oil', 'Neutrogena Makeup Remover Facial Cleansing Towelette Singles, Daily Face Washings Remove Dirt, Oil', 'fr', 88630154),
(98, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Écouteurs hybrides à réduction de bruit active Soundcore Life Q20 d\'Anker, écouteurs Bluetooth', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Écouteurs hybrides à réduction de bruit active Soundcore Life Q20 d\'Anker, écouteurs Bluetooth', 'Casque hybride antibruit actif Soundcore Life Q20 d\'Anker, casque Bluetooth', 'fr', 88630155),
(99, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Kit Essentiels de Grossesse Mama Mio', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'En vedette', 'Kit Essentiels de Grossesse Mama Mio', 'Kit Essentiels de Grossesse Mama Mio', 'fr', 88630156),
(100, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Coffret cadeau Milky Chic pour les nouvelles mamans - 10 articles de soins personnels', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Coffret cadeau Milky Chic pour les nouvelles mamans - 10 articles de soins personnels', 'Coffret cadeau Milky Chic pour les nouvelles mamans - 10 articles de soins personnels', 'fr', 88630157),
(101, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Sneaker de sport unisexe pour enfant Made2play Xander de Stride Rite', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'Nouveau', 'Sneaker de sport unisexe pour enfant Made2play Xander de Stride Rite', 'Sneaker de sport unisexe pour enfant Made2play Xander de Stride Rite', 'fr', 88630158),
(102, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Basket PUMA Carina pour femme', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Basket PUMA Carina pour femme', 'Basket PUMA Carina pour femme', 'fr', 88630159),
(103, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Chaise de siège en velours CangLong avec pieds en métal pour cuisine salle à manger, lot de 2. Beige', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', 'En vedette', 'Chaise CangLong en velours avec pieds en métal pour cuisine salle à manger, lot de 2. Beige', 'Chaise CangLong en velours avec pieds en métal pour cuisine salle à manger, lot de 2. Beige', 'fr', 88630160),
(104, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Diffuseur à roseaux Homesick New Home', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Diffuseur à roseaux Homesick New Home', 'Diffuseur à roseaux Homesick New Home', 'fr', 88630161),
(105, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert', 'Brownie Brittle Sheila G\'s Low Calorie, Thin Sweet Crispy Snack and Treats Dessert', 'fr', 88630162),
(106, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Poêle à Sauter Antiadhésive, Cuiseur Rapide de Nouilles, Mini Marmite de 1,5 L pour Steak, Oeuf, Riz Frit, Ramen', '<ul><li>Discontinued ‏ : ‎&nbsp;No</li><li>Dimensions du produit ‏ : ‎&nbsp;3 x 3 x 3 pouces ; 1,76 onces</li><li>Numéro de modèle de l\'article : ‎&nbsp;231171045</li></ul><p><br></p>', 'pièce', NULL, 'Sauté Antiadhésive, Cuiseur Rapide de Nouilles, Mini Marmite 1.5L pour Steak, Oeuf, Riz Frit, Ramen', 'Sauté Antiadhésive, Cuiseur Rapide de Nouilles, Mini Marmite 1.5L pour Steak, Oeuf, Riz Frit, Ramen', 'fr', 88630163),
(107, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं की कैज़ुअल लंबी बाजू की लैपल ज़िपर स्वेटशर्ट ड्रॉस्ट्रिंग लूज़ पुलओवर टॉप्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', 'महिलाओं की कैज़ुअल लंबी बाजू वाली लैपल ज़िपर स्वेटशर्ट ड्रॉस्ट्रिंग लूज़ पुलओवर टॉप्स', 'महिलाओं की कैज़ुअल लंबी बाजू वाली लैपल ज़िपर स्वेटशर्ट ड्रॉस्ट्रिंग लूज़ पुलओवर टॉप्स', 'hi', 88630111),
(108, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं के लिए निट शर्ट्स कैज़ुअल रफ़ल शॉर्ट स्लीव टॉप राउंड नेक ट्यूनिक टैंक टॉप टी ब्लाउज़', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'महिलाओं के लिए निट शर्ट्स कैज़ुअल रफ़ल शॉर्ट स्लीव टॉप राउंड नेक ट्यूनिक टैंक टॉप टी ब्लाउज़', 'महिलाओं के लिए निट शर्ट्स कैज़ुअल रफ़ल शॉर्ट स्लीव टॉप राउंड नेक ट्यूनिक टैंक टॉप टी ब्लाउज़', 'hi', 88630112),
(109, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell कैज़ुअल सॉलिड कलर का रफ़ल कॉलर लॉन्ग स्लीव रफ़ल शर्ट ब्लाउज वी नेक शॉर्ट स्लीव शर्ट टॉप', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Andongnywell कैज़ुअल सॉलिड कलर का रफ़ल कॉलर लॉन्ग स्लीव रफ़ल शर्ट ब्लाउज वी नेक शॉर्ट स्लीव शर्ट टॉप', 'Andongnywell कैज़ुअल सॉलिड कलर का रफ़ल कॉलर लॉन्ग स्लीव रफ़ल शर्ट ब्लाउज वी नेक शॉर्ट स्लीव शर्ट टॉप', 'hi', 88630113),
(110, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं की वफ़ल निट ब्लाउज बैलोन लंबी बाजू वाली लेस टॉप कैज़ुअल लूज़ टी शर्ट्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'महिलाओं की वफ़ल निट ब्लाउज बैलोन लंबी बाजू वाली लेस टॉप कैजुअल लूज़ टी शर्ट्स', 'महिलाओं की वफ़ल निट ब्लाउज बैलोन लंबी बाजू वाली लेस टॉप कैजुअल लूज़ टी शर्ट्स', 'hi', 88630114),
(111, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं की रफ़ल स्लीव टॉप समर कैज़ुअल ब्लाउज क्रू नेक सॉलिड क्यूट ट्यूनिक शर्ट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'फीचर्ड', 'महिलाओं की रफ़ल स्लीव टॉप समर कैजुअल ब्लाउज़ क्रू नेक सॉलिड क्यूट ट्यूनिक शर्ट', 'महिलाओं की रफ़ल स्लीव टॉप समर कैजुअल ब्लाउज़ क्रू नेक सॉलिड क्यूट ट्यूनिक शर्ट', 'hi', 88630115),
(112, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं के लिए फ्लोरल ट्यूनिक टॉप कैजुअल ब्लाउज वी नेक शॉर्ट स्लीव बटन अप टी-शर्ट्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'महिलाओं का फ्लोरल ट्यूनिक टॉप कैजुअल ब्लाउज वी नेक शॉर्ट स्लीव बटन अप टी-शर्ट्स', 'महिलाओं के लिए फ्लोरल ट्यूनिक टॉप कैजुअल ब्लाउज वी नेक शॉर्ट स्लीव बटन अप टी-शर्ट्स', 'hi', 88630116),
(113, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Andongnywell महिलाओं के कैज़ुअल टॉप लेपर्ड प्रिंट वाली टी-शर्ट लंबी बाजू की मुलायम खिंचाव वाली छलावरण ब्लाउज़ शर्ट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Andongnywell महिलाओं के कैज़ुअल टॉप लेपर्ड प्रिंट वाली टी-शर्ट लंबी बाजू की मुलायम खिंचाव वाली छलावरण ब्लाउज़ शर्ट', 'Andongnywell महिलाओं के कैज़ुअल टॉप लेपर्ड प्रिंट वाली टी-शर्ट लंबी बाजू की मुलायम खिंचाव वाली छलावरण ब्लाउज़ शर्ट', 'hi', 88630117),
(114, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Amoretu महिलाओं के लिए समर ट्यूनिक ड्रेस वी नेक कैजुअल लूज फ्लोई स्विंग शिफ्ट ड्रेसेस', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Amoretu महिलाओं के लिए समर ट्यूनिक ड्रेस वी नेक कैजुअल लूज फ्लोई स्विंग शिफ्ट ड्रेसेस', 'Amoretu महिलाओं के लिए समर ट्यूनिक ड्रेस वी नेक कैजुअल लूज फ्लोई स्विंग शिफ्ट ड्रेसेस', 'hi', 88630118),
(115, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'सिंपल फ़्लेवर महिलाओं की फ्लोरल विंटेज ड्रेस एलिगेंट मिडी इवनिंग ड्रेस 3/4 स्लीव्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'सिंपल फ़्लेवर महिलाओं की फ्लोरल विंटेज ड्रेस एलिगेंट मिडी इवनिंग ड्रेस 3/4 स्लीव्स', 'महिलाओं के लिए सिंपल फ़्लेवर फ्लोरल विंटेज ड्रेस एलिगेंट मिडी इवनिंग ड्रेस 3/4 स्लीव्स', 'hi', 88630119),
(116, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'बीटीएफबीएम वीमेन कैजुअल फॉल ड्रेसेस वी नेक टाई नेक लॉन्ग स्लीव हाई वेस्ट डॉट रफल टियर्ड ए लाइन सॉलिड स्विंग मिनी ड्रेस', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'BTFBM महिलाओं के लिए कैजुअल फॉल ड्रेस V नेक टाई नेक लॉन्ग स्लीव हाई वेस्ट डॉट रफ़ल टियर्ड A लाइन सॉलिड स्विंग मिनी ड्रेस', 'BTFBM महिलाओं के लिए कैजुअल फॉल ड्रेसेज़ V नेक टाई नेक लॉन्ग स्लीव हाई वेस्ट डॉट रफ़ल टियर्ड ए लाइन सॉलिड स्विंग मिनी ड्रेस', 'hi', 88630120),
(117, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'LYANER महिलाओं का ट्यूनिक राउंड नेक रफ़ल लूज़ फ्लोई बेबीडॉल स्विंग मिनी ड्रेसेस', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', 'LYANER महिलाओं का ट्यूनिक राउंड नेक रफ़ल लूज़ फ्लोई बेबीडॉल स्विंग मिनी ड्रेसेस', 'LYANER महिलाओं के लिए ट्यूनिक राउंड नेक रफ़ल लूज़ फ्लोई बेबीडॉल स्विंग मिनी ड्रेसेस', 'hi', 88630121),
(118, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'प्यूमा किड्स के 6 पैक लो कट सॉक्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'PUMA Kids\' 6 पैक लो कट सॉक्स', 'PUMA Kids\' 6 पैक लो कट सॉक्स', 'hi', 88630122),
(119, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '3 पेयर ट्रिपल स्ट्राइप ओवर द नी सॉक्स एक्स्ट्रा लॉन्ग ओपेक थाई हाई स्टॉकिंग्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, '3 जोड़े ट्रिपल स्ट्राइप ओवर द नी सॉक्स एक्स्ट्रा लॉन्ग ओपेक थाई हाई स्टॉकिंग्स', '3 जोड़े ट्रिपल स्ट्राइप ओवर द नी सॉक्स एक्स्ट्रा लॉन्ग ओपेक थाई हाई स्टॉकिंग्स', 'hi', 88630123),
(120, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं के लिए पॉकेट के साथ 4 पैक लेगिंग्स, हाई वेस्ट टमी कंट्रोल वर्कआउट योगा पैन्ट्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'महिलाओं के लिए पॉकेट के साथ 4 पैक लेगिंग्स, हाई वेस्ट टमी कंट्रोल वर्कआउट योगा पैन्ट्स', 'महिलाओं के लिए पॉकेट के साथ 4 पैक लेगिंग्स, हाई वेस्ट टमी कंट्रोल वर्कआउट योगा पैन्ट्स', 'hi', 88630124),
(121, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'वूमेन्स रेग्रोथ किट प्लस: शैम्पू, कंडीशनर, 2% मिनोक्सिडिल, लीव-इन फ़ोमर। महिलाओं के लिए बालों का झड़ना रोकने वाला और पतला करने वाला हेयर सॉल्यूशन, 1 महीना', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'महिलाओं की वृद्धि किट प्लस: शैम्पू, कंडीशनर, 2% मिनोक्सिडिल, लीव-इन फ़ोमर। महिलाओं के लिए बालों का झड़ना रोकने वाला और पतला करने वाला समाधान, 1 महीना', 'वूमेन्स रेग्रोथ किट प्लस: शैम्पू, कंडीशनर, 2% मिनोक्सिडिल, लीव-इन फ़ोमर। महिलाओं के लिए बालों का झड़ना रोकने वाला और पतला करने वाला हेयर सॉल्यूशन, 1 महीना', 'hi', 88630125),
(122, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Nutrafol वीमेन हेयर ग्रोथ फॉर थिक, स्ट्रांग हेयर (4 कैप्सूल प्रति दिन) (1 महीने की सप्लाई)', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', 'Nutrafol महिलाओं के बालों का विकास मोटे, मजबूत बालों के लिए (4 कैप्सूल प्रति दिन) (1 महीने की आपूर्ति)', 'Nutrafol महिलाओं के बालों की ग्रोथ मोटे, मजबूत बालों के लिए (4 कैप्सूल प्रति दिन) (1 महीने की सप्लाई)', 'hi', 88630126),
(123, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'वाजिसिल एंटी-इच मेडिकेटेड फेमिनिन वेजाइनल वाइप्स, अधिकतम शक्ति, तुरंत राहत, कुल 3 - 60 वाइप्स का पैक (पैकेजिंग भिन्न हो सकती है)', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'वैजिसिल एंटी-इच मेडिकेटेड फेमिनिन वेजाइनल वाइप्स, अधिकतम शक्ति, तुरंत राहत, कुल 3 - 60 वाइप्स का पैक (पैकेजिंग भिन्न हो सकती है)', 'वैजिसिल एंटी-इच मेडिकेटेड फेमिनिन वेजाइनल वाइप्स, अधिकतम शक्ति, तुरंत राहत, कुल 3 - 60 वाइप्स का पैक (पैकेजिंग भिन्न हो सकती है)', 'hi', 88630127),
(124, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'जेट सेट हाइड्रेशन किट, ट्रैवल फ्रेंडली स्किनकेयर सेट, क्लींजर, बाम, मॉइस्चराइजर, आई क्रीम और नाइट क्रीम', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', 'जेट सेट हाइड्रेशन किट, ट्रैवल फ्रेंडली स्किनकेयर सेट, क्लींजर, बाम, मॉइस्चराइजर, आई क्रीम और नाइट क्रीम', 'जेट सेट हाइड्रेशन किट, यात्रा के अनुकूल स्किनकेयर सेट, क्लींजर, बाम, मॉइस्चराइजर, आई क्रीम और नाइट क्रीम', 'hi', 88630128),
(125, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'मैजिक | स्किन-रिन्यूइंग माइक्रोडर्माब्रेशन स्क्रब | स्ट्रेट-फ्रॉम-द-स्पा | पोर्स को टाइट करता है और स्किन को चमकदार बनाता है। पैराबेन फ्री, क्रुएल्टी फ्री', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'मैजिक | स्किन-रिन्यूइंग माइक्रोडर्माब्रेशन स्क्रब | स्पा से सीधा | पोर्स को टाइट करता है और स्किन को चमकदार बनाता है | पैराबेन फ्री, क्रुएल्टी फ्री', 'मैजिक | स्किन-रिन्यूइंग माइक्रोडर्माब्रेशन स्क्रब | स्पा से सीधा | पोर्स को टाइट करता है और स्किन को चमकदार बनाता है | पैराबेन फ्री, क्रुएल्टी फ्री', 'hi', 88630129);
INSERT INTO `product_langs` (`id`, `created_at`, `updated_at`, `description`, `title`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `lang`, `product_id`) VALUES
(126, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '\'डेली हाइड्रेटिंग\' डुओ स्किन केयर स्टार्टर किट (बायो-कॉम्प्लेक्स मॉइस्चराइजर और फेरुलिक एसिड + विटामिन सी और ई) फाइन लाइन्स, हाइड्रेशन और असमान स्किन टोन के साथ मदद करता है', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', '\'डेली हाइड्रेटिंग\' डुओ स्किन केयर स्टार्टर किट (बायो-कॉम्प्लेक्स मॉइस्चराइजर और फेरुलिक एसिड + विटामिन सी और ई) फाइन लाइन्स, हाइड्रेशन और असमान स्किन टोन के साथ मदद करता है', '\'डेली हाइड्रेटिंग\' डुओ स्किन केयर स्टार्टर किट (बायो-कॉम्प्लेक्स मॉइस्चराइज़र और फेरुलिक एसिड + विटामिन सी और ई) फाइन लाइन्स, हाइड्रेशन और असमान स्किन टोन के साथ मदद करता है', 'hi', 88630130),
(127, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'इमेज स्किनकेयर द मैक्स स्टेम सेल फेशियल क्लींजर, 4 फ्लो ओज', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'इमेज स्किनकेयर द मैक्स स्टेम सेल फेशियल क्लींजर, 4 फ्लो ओज', 'इमेज स्किनकेयर द मैक्स स्टेम सेल फेशियल क्लींजर, 4 फ्लो ओज', 'hi', 88630131),
(128, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'स्लिंग बैग कैनवस क्रॉसबॉडी बैकपैक शोल्डर ट्रैवल बैग कैजुअल डेपैक्स', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'स्लिंग बैग कैनवस क्रॉसबॉडी बैकपैक शोल्डर ट्रैवल बैग कैजुअल डेपैक', 'स्लिंग बैग कैनवास क्रॉसबॉडी बैकपैक शोल्डर ट्रैवल बैग कैजुअल डेपैक', 'hi', 88630132),
(129, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'नॉटिका डाइवर नायलॉन स्मॉल वुमन क्रॉसबॉडी बैग पर्स एडजस्टेबल शोल्डर स्ट्रैप के साथ', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'नॉटिका डाइवर नायलॉन स्मॉल वुमन क्रॉसबॉडी बैग पर्स एडजस्टेबल शोल्डर स्ट्रैप के साथ', 'नॉटिका डाइवर नायलॉन छोटा वुमेंस क्रॉसबॉडी बैग पर्स एडजस्टेबल शोल्डर स्ट्रैप के साथ', 'hi', 88630133),
(130, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Anna by Anuschka Satchel Handbag | असली लेदर', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Anna by Anuschka Satchel Handbag | असली लेदर', 'Anna by Anuschka Satchel Handbag | असली लेदर', 'hi', 88630134),
(131, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'सेल्फ रिट्रेक्टेबल आईडी badge होल्डर की रील, हैवी ड्यूटी मेटल बॉडी, 30 इंच स्टील कॉर्ड, बेल्ट क्लिप के साथ कैरबिनर की चेन कीचेन, 15 चाबियां और टूल्स तक होल्ड करें', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'सेल्फ रिट्रेक्टेबल आईडी badge होल्डर की रील, हैवी ड्यूटी मेटल बॉडी, 30 इंच स्टील कॉर्ड, बेल्ट क्लिप के साथ कैरबिनर की चेन कीचेन, 15 चाबियां और टूल्स तक पकड़ें', 'सेल्फ रिट्रेक्टेबल आईडी badge होल्डर की रील, हेवी ड्यूटी मेटल बॉडी, 30 इंच स्टील कॉर्ड, बेल्ट क्लिप के साथ कैरबिनर की चेन कीचेन, 15 चाबियां और टूल्स तक पकड़ें', 'hi', 88630135),
(132, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिला पुरुषों के लिए एयरेन्स एंटी फॉग सुरक्षा चश्मा', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'पुरुषों के लिए एयरेन्स एंटी फॉग सुरक्षा चश्मा', 'पुरुषों के लिए एयरेन्स एंटी फॉग सुरक्षा चश्मा', 'hi', 88630136),
(133, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'लेजेंडरी व्हाइटटेल मेन्स जर्नीमैन शर्ट जैकेट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'लेजेंडरी व्हाइटटेल मेन्स जर्नीमैन शर्ट जैकेट', 'लेजेंडरी व्हाइटटेल मेन्स जर्नीमैन शर्ट जैकेट', 'hi', 88630137),
(134, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'रैंगलर मेन्स काउबॉय कट वेस्टर्न लॉन्ग स्लीव स्नैप वर्क शर्ट फर्म फ़िनिश', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'रैंगलर मेन्स काउबॉय कट वेस्टर्न लॉन्ग स्लीव स्नैप वर्क शर्ट फर्म फ़िनिश', 'रैंगलर मेन्स काउबॉय कट वेस्टर्न लॉन्ग स्लीव स्नैप वर्क शर्ट फर्म फ़िनिश', 'hi', 88630138),
(135, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'डॉकर्स मेन्स लॉन्ग स्लीव सिग्नेचर कम्फर्ट फ्लेक्स शर्ट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'डॉकर्स मेन्स लॉन्ग स्लीव सिग्नेचर कम्फर्ट फ्लेक्स शर्ट', 'डॉकर्स मेन्स लॉन्ग स्लीव सिग्नेचर कम्फर्ट फ्लेक्स शर्ट', 'hi', 88630139),
(136, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'गुडथ्रेड्स मेन्स स्लिम-फिट लॉन्ग-स्लीव प्लेड ऑक्सफ़ोर्ड शर्ट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'गुडथ्रेड्स मेन्स स्लिम-फिट लॉन्ग-स्लीव प्लेड ऑक्सफोर्ड शर्ट', 'गुडथ्रेड्स मेन्स स्लिम-फिट लॉन्ग-स्लीव प्लेड ऑक्सफोर्ड शर्ट', 'hi', 88630140),
(137, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'डिकीज़ मेन्स सैंडेड डक शेरपा लाइनेड हूडेड जैकेट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'डिकीज़ मेन्स सैंडेड डक शेरपा लाइनेड हूडेड जैकेट', 'डिकीज़ मेन्स सैंडेड डक शेरपा लाइनेड हूडेड जैकेट', 'hi', 88630141),
(138, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Carhartt पुरुषों की थर्मल लाइन्ड डक एक्टिव जैकेट J131 (नियमित और बड़े और लंबे आकार)', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Carhartt पुरुषों की थर्मल लाइन्ड डक एक्टिव जैकेट J131 (नियमित और बड़े और लंबे आकार)', 'Carhartt पुरुषों की थर्मल लाइन्ड डक एक्टिव जैकेट J131 (नियमित और बड़े और लंबे आकार)', 'hi', 88630142),
(139, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'कोलंबिया मेन्स पाउडर लाइट जैकेट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'कोलंबिया मेन्स पाउडर लाइट जैकेट', 'कोलंबिया मेन्स पाउडर लाइट जैकेट', 'hi', 88630143),
(140, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'जैक वोल्फस्किन विमेंस टर्बुलेंस जैकेट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'जैक वोल्फस्किन महिला टर्बुलेंस जैकेट', 'जैक वोल्फस्किन महिला टर्बुलेंस जैकेट', 'hi', 88630144),
(141, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'मेन्स सर्वाइवर आइवी रिलैक्स्ड फ़िट कार्गो पैंट-रेग और बड़े और लंबे आकार', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'मेन्स सर्वाइवर आईवी रिलैक्स्ड फ़िट कार्गो पैंट-रेग और बड़े और लंबे आकार', 'मेन्स सर्वाइवर आइवी रिलैक्स्ड फ़िट कार्गो पैंट-रेग और बड़े और लंबे आकार', 'hi', 88630145),
(142, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Fossil Men\'s लेदर Trifold with Id Window Wallet', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'फॉसिल मेन्स लेदर ट्राइफोल्ड विथ आईडी विंडो वॉलेट', 'फॉसिल मेन्स लेदर ट्राइफोल्ड विथ आईडी विंडो वॉलेट', 'hi', 88630146),
(143, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Carhartt लिगेसी डीलक्स वर्क बैकपैक 17-इंच लैपटॉप कम्पार्टमेंट के साथ, Carhartt Brown', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Carhartt Legacy Deluxe Work Backpack with 17-Inch Laptop Compartment, Carhartt Brown', 'Carhartt लीगेसी डीलक्स वर्क बैकपैक 17-इंच लैपटॉप कम्पार्टमेंट के साथ, Carhartt भूरा', 'hi', 88630147),
(144, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'हर्शल क्लासिक बैकपैक, ऐश रोज़, मिड-वॉल्यूम 18.0L', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'ट्रेंडिंग', 'हर्शेल क्लासिक बैकपैक, ऐश रोज़, मिड-वॉल्यूम 18.0L', 'हर्शेल क्लासिक बैकपैक, ऐश रोज़, मिड-वॉल्यूम 18.0L', 'hi', 88630148),
(145, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'वेरा ब्राडली महिलाओं के लिए कॉटन कैंपस बैकपैक', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'वेरा ब्रैडली महिलाओं का कॉटन कैम्पस बैकपैक', 'वेरा ब्रैडली महिलाओं का कॉटन कैम्पस बैकपैक', 'hi', 88630149),
(146, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'EaseGave 17.3 इंच ब्रीफकेस महिलाओं के लिए, मल्टी-पॉकेट वर्क बैग जगहदार ऑफिस कंप्यूटर बैग लैपटॉप मेसेंजर बैग वर्क बिजनेस ट्रैवल के लिए, कॉफी-17.3 इंच', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'EaseGave 17.3 इंच का ब्रीफ़केस महिलाओं के लिए, मल्टी-पॉकेट वर्क बैग जगहदार ऑफिस कंप्यूटर बैग लैपटॉप मेसेंजर बैग, वर्क बिज़नेस ट्रेवल के लिए, कॉफ़ी-17.3 इंच', 'EaseGave 17.3 इंच का ब्रीफ़केस महिलाओं के लिए, मल्टी-पॉकेट वर्क बैग जगहदार ऑफिस कंप्यूटर बैग लैपटॉप मेसेंजर बैग, वर्क बिज़नेस ट्रेवल के लिए, कॉफ़ी-17.3 इंच', 'hi', 88630150),
(147, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'पर्यावरण के अनुकूल लैपटॉप बैकपैक: पुनर्चक्रित पीईटी बोतलों से निर्मित', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'पर्यावरण के अनुकूल लैपटॉप बैकपैक: पुनर्चक्रित पीईटी बोतलों से निर्मित', 'पर्यावरण के अनुकूल लैपटॉप बैकपैक: पुनर्नवीनीकरण पीईटी बोतलों से निर्मित', 'hi', 88630151),
(148, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'सोलो न्यूयॉर्क रीजन लैपटॉप बैकपैक, ग्रे', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'न्यूयॉर्क क्षेत्र का सोलो लैपटॉप बैकपैक, ग्रे (धूसर)', 'न्यूयॉर्क क्षेत्र का सोलो लैपटॉप बैकपैक, ग्रे (धूसर)', 'hi', 88630152),
(149, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'महिलाओं के लिए लैपटॉप बैकपैक वर्क बैकपैक पर्स ट्रैवल बुकबैग नर्स स्कूल बैग', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'फीचर्ड', 'महिलाओं के लिए लैपटॉप बैकपैक वर्क बैकपैक पर्स ट्रैवल बुकबैग नर्स स्कूल बैग', 'महिलाओं के काम के लिए लैपटॉप बैकपैक बैकपैक पर्स ट्रैवल बुकबैग नर्स स्कूल बैग', 'hi', 88630153),
(150, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'न्यूट्रोजेना मेकअप रिमूवर फेशियल क्लींजिंग टॉवेलेट सिंगल, डेली फेस वाइप्स गंदगी, तेल, मेकअप और वाटरप्रूफ मस्कारा हटाते हैं, सौम्य, व्यक्तिगत रूप से लपेटा हुआ, 100% प्लांट-आधारित फाइबर, 20 ct', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'न्यूट्रोजेना मेकअप रिमूवर फेशियल क्लींजिंग टॉवेलेट सिंगल, डेली फेस वाइप्स गंदगी, तेल, मेकअप और वाटरप्रूफ मस्कारा हटाते हैं, कोमल, व्यक्तिगत रूप से लपेटा हुआ, 100% प्लांट-आधारित फाइबर, 20 ct', 'न्यूट्रोजेना मेकअप रिमूवर फेशियल क्लींजिंग टॉवेल सिंगल, डेली फेस वाइप्स गंदगी, तेल, मेकअप और वाटरप्रूफ मस्कारा हटाते हैं, कोमल, व्यक्तिगत रूप से लपेटा हुआ, 100% प्लांट-बेस्ड फाइबर, 20 ct', 'hi', 88630154),
(151, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'Anker Soundcore Life Q20 हाईब्रिड एक्टिव नॉइज़ कैंसिलिंग हेडफ़ोन, वायरलेस ओवर ईयर ब्लूटूथ हेडफ़ोन, 40H प्लेटाइम, Hi-Res ऑडियो, डीप बास, मेमोरी फ़ोम ईयर कप, यात्रा, गृह कार्यालय के लिए', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'Anker Soundcore Life Q20 हाईब्रिड एक्टिव नॉइज़ कैंसलिंग हेडफ़ोन, वायरलेस ओवर ईयर ब्लूटूथ हेडफ़ोन, 40H Playtime, Hi-Res ऑडियो, डीप बास, मेमोरी फ़ोम ईयर कप, यात्रा, गृह कार्यालय के लिए', 'Anker Soundcore Life Q20 हाईब्रिड एक्टिव नॉइज़ कैंसलिंग हेडफ़ोन, वायरलेस ओवर ईयर ब्लूटूथ हेडफ़ोन, 40H प्लेटाइम, Hi-Res ऑडियो, डीप बास, मेमोरी फ़ोम ईयर कप, यात्रा, गृह कार्यालय के लिए', 'hi', 88630155),
(152, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'मामा मियो प्रेग्नेंसी एसेंशियल्स किट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'फीचर्ड', 'मामा मियो प्रेग्नेंसी एसेंशियल्स किट', 'मामा मियो प्रेग्नेंसी एसेंशियल्स किट', 'hi', 88630156),
(153, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'नई मांओं के लिए मिल्की चिक गिफ्ट बॉक्स- मांओं के लिए 10 यूनिक पोस्टपार्टम पर्सनल केयर आइटम्स-मम्मी का लाड़ प्यार सरप्राइज बास्केट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'नई माँओं के लिए मिल्की चिक गिफ्ट बॉक्स- माताओं के लिए 10 अनोखे पोस्टपार्टम पर्सनल केयर आइटम-माँ की लाड़ प्यार सरप्राइज़ बास्केट', 'नई मांओं के लिए मिल्की चिक गिफ्ट बॉक्स- माताओं के लिए 10 अनोखे पोस्टपार्टम पर्सनल केयर आइटम-माँ की लाड़ प्यार सरप्राइज बास्केट', 'hi', 88630157),
(154, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'स्ट्राइड राइट यूनीसेक्स-चाइल्ड मेड2प्ले ज़ेंडर एथलेटिक स्नीकर', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'नया', 'स्ट्राइड राइट यूनीसेक्स-चाइल्ड मेड2प्ले ज़ेंडर एथलेटिक स्नीकर', 'स्ट्राइड राइट यूनीसेक्स-चाइल्ड मेड2प्ले ज़ेंडर एथलेटिक स्नीकर', 'hi', 88630158),
(155, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'प्यूमा वीमेंस कैरिना स्नीकर', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'प्यूमा महिला कैरिना स्नीकर', 'प्यूमा महिला कैरिना स्नीकर', 'hi', 88630159),
(156, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'किचन डाइनिंग रूम के लिए धातु की टांगों वाली कैंगलॉन्ग वेलवेट सीट चेयर, 2. बेज का सेट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', 'फीचर्ड', 'किचन डाइनिंग रूम के लिए धातु की टांगों वाली कांगलोंग वेलवेट सीट कुर्सी, 2. बेज रंग का सेट', 'किचन डाइनिंग रूम के लिए धातु की टांगों वाली कांगलोंग वेलवेट सीट चेयर, 2. बेज का सेट', 'hi', 88630160),
(157, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'होमसिक न्यू होम रीड डिफ्यूज़र', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'होमसिक न्यू होम रीड डिफ्यूज़र', 'होमसिक न्यू होम रीड डिफ्यूज़र', 'hi', 88630161),
(158, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'ब्राउनी ब्रेटल शीला जी की लो कैलोरी, थिन स्वीट क्रिस्पी स्नैक एंड ट्रीट्स डेज़र्ट, हेल्दी चॉकलेट चिप और सॉल्टेड कारमेल, 20 ऑउंस, 20 का पैक', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'ब्राउनी ब्रेटल शीला जी की लो कैलोरी, थिन स्वीट क्रिस्पी स्नैक एंड ट्रीट्स डेजर्ट, हेल्दी चॉकलेट चिप और सॉल्टेड कैरेमल, 20 ऑउंस, 20 का पैक', 'ब्राउनी ब्रिटल शीला जी की लो कैलोरी, थिन स्वीट क्रिस्पी स्नैक एंड ट्रीट्स डेजर्ट, हेल्दी चॉकलेट चिप और सॉल्टेड कैरमेल, 20 ऑउंस, 20 का पैक', 'hi', 88630162),
(159, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'नॉन-स्टिक सौते पैन, रैपिड नूडल्स कुकर, स्टेक, अंडा, फ्राइड राइस, रेमन, ओटमील, पावर एडजस्टमेंट वाला सूप, सीफोम ग्रीन के लिए 1.5 लीटर मिनी पॉट', '<ul><li>बंद हो गया है: ‎&nbsp;नहीं</li><li>उत्पाद के आयाम: ‎3 x 3 x 3 इंच; 1.76 आउंस</li><li>आइटम मॉडल नंबर : ‎&nbsp;231171045</li></ul><p><br></p>', 'टुकड़ा', NULL, 'नॉन-स्टिक सौते पैन, रैपिड नूडल्स कुकर, स्टेक, अंडा, फ्राइड राइस, रेमन, ओटमील, पावर एडजस्टमेंट वाला सूप, सीफोम ग्रीन के लिए 1.5 लीटर मिनी पॉट', 'नॉन-स्टिक सौते पैन, रैपिड नूडल्स कुकर, स्टीक, अंडा, फ्राइड राइस, रेमन, ओटमील, पावर एडजस्टमेंट वाला सूप, सीफोम ग्रीन के लिए 1.5 लीटर मिनी पॉट', 'hi', 88630163),
(160, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'كنزة صوفية فضفاضة للنساء بأكمام طويلة وسحّاب ورباط', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'كنزة صوفية فضفاضة للنساء بأكمام طويلة وسحّاب ورباط', 'كنزة صوفية فضفاضة للنساء بأكمام طويلة وسحّاب ورباط', 'ar', 88630111),
(161, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'بلايز قمصان متماسكة عادية كشكش بأكمام قصيرة بلوزة مستديرة الرقبة تونك تانك توب تي شيرت للنساء', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'بلايز قمصان متماسكة عادية كشكش بأكمام قصيرة بلوزة مستديرة الرقبة تونك تانك توب تي شيرت للنساء', 'بلايز قمصان متماسكة عادية كشكش بأكمام قصيرة بلوزة مستديرة الرقبة تونك تانك توب تي شيرت للنساء', 'ar', 88630112),
(162, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'أندون بلوزة قميص بأكمام طويلة وياقة مكشكشة بلون سادة ورقبة على شكل V وأكمام قصيرة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'أندون بلوزة قميص بأكمام طويلة وياقة مكشكشة بلون سادة ورقبة على شكل V وأكمام قصيرة', 'أندون بلوزة قميص بأكمام طويلة وياقة مكشكشة بلون سادة ورقبة على شكل V وأكمام قصيرة', 'ar', 88630113),
(163, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'المرأة المتماسكة الهراء بلوزة بالون طويلة الأكمام الدانتيل قمم عارضة فضفاض تي شيرت', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'المرأة المتماسكة الهراء بلوزة بالون طويلة الأكمام الدانتيل قمم عارضة فضفاض تي شيرت', 'المرأة المتماسكة الهراء بلوزة بالون طويلة الأكمام الدانتيل قمم عارضة فضفاض تي شيرت', 'ar', 88630114),
(164, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'المرأة الكشكشة الأكمام قمم الصيف عارضة بلوزة طاقم الرقبة الصلبة لطيف تونك القميص', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'متميز', 'المرأة الكشكشة الأكمام قمم الصيف عارضة بلوزة طاقم الرقبة الصلبة لطيف تونك القميص', 'المرأة الكشكشة الأكمام قمم الصيف عارضة بلوزة طاقم الرقبة الصلبة لطيف تونك القميص', 'ar', 88630115),
(165, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'تونيك الأزهار النسائية بلوزة عادية الخامس الرقبة قصيرة الأكمام أزرار حتى القمصان', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'تونيك الأزهار النسائية بلوزة عادية الخامس الرقبة قصيرة الأكمام أزرار حتى القمصان', 'تونيك الأزهار النسائية بلوزة عادية الخامس الرقبة قصيرة الأكمام أزرار حتى القمصان', 'ar', 88630116),
(166, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'المرأة عارضة بلايز ليوبارد طباعة تي شيرت طويلة الأكمام لينة بسط التمويه بلوزة القمصان', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'المرأة عارضة بلايز ليوبارد طباعة تي شيرت طويلة الأكمام لينة بسط التمويه بلوزة القمصان', 'المرأة عارضة بلايز ليوبارد طباعة تي شيرت طويلة الأكمام لينة بسط التمويه بلوزة القمصان', 'ar', 88630117),
(167, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', 'ar', 88630118),
(168, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', 'فستان تونك صيفي للسيدات من أموري برقبة على شكل حرف V فساتين متغيرة فضفاضة غير رسمية', 'ar', 88630119),
(169, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'فساتين نسائية غير رسمية للخريف برقبة على شكل حرف V وربطة عنق وأكمام طويلة وخصر عالٍ ومنقط مكشكش متدرج على شكل حرف A فستان قصير سوينغ سادة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'فساتين نسائية غير رسمية للخريف برقبة على شكل حرف V وربطة عنق وأكمام طويلة وخصر عالٍ ومنقط مكشكش متدرج على شكل حرف A فستان قصير سوينغ سادة', 'فساتين نسائية غير رسمية للخريف برقبة على شكل حرف V وربطة عنق وأكمام طويلة وخصر عالٍ ومنقط مكشكش متدرج على شكل حرف A فستان قصير سوينغ سادة', 'ar', 88630120),
(170, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'طبقة نسائية تونك بياقة دائرية مكشكشة فضفاضة منفوشة بيبي دول سوينغ ميني الفساتين', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'طبقة نسائية تونك بياقة دائرية مكشكشة فضفاضة منفوشة بيبي دول سوينغ ميني الفساتين', 'طبقة نسائية تونك بياقة دائرية مكشكشة فضفاضة منفوشة بيبي دول سوينغ ميني الفساتين', 'ar', 88630121),
(171, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '6 ازواج من الجوارب المنخفضة قطع من بوما للاطفال', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, '6 ازواج من الجوارب المنخفضة قطع من بوما للاطفال', '6 ازواج من الجوارب المنخفضة قطع من بوما للاطفال', 'ar', 88630122),
(172, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '3 أزواج من الجوارب ثلاثية المخططة فوق الركبة ، جوارب طويلة جدًا غير شفافة فوق الفخذ', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, '3 أزواج من الجوارب ثلاثية المخططة فوق الركبة ، جوارب طويلة جدًا غير شفافة فوق الفخذ', '3 أزواج من الجوارب ثلاثية المخططة فوق الركبة ، جوارب طويلة جدًا غير شفافة فوق الفخذ', 'ar', 88630123),
(173, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', '4 عبوات طماق مع جيوب للنساء ، سروال يوجا للتمارين الرياضية بخصر مرتفع للتحكم في البطن', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', '4 عبوات طماق مع جيوب للنساء ، سروال يوجا للتمارين الرياضية بخصر مرتفع للتحكم في البطن', '4 عبوات طماق مع جيوب للنساء ، سروال يوجا للتمارين الرياضية بخصر مرتفع للتحكم في البطن', 'ar', 88630124),
(174, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مجموعة إعادة نمو المرأة بالإضافة إلى: شامبو ، بلسم ، 2٪ مينوكسيديل ، رغوة تترك على الشعر. محلول مضاد لتساقط الشعر وترقق الشعر للنساء ، لمدة شهر', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'مجموعة إعادة نمو المرأة بالإضافة إلى: شامبو ، بلسم ، 2٪ مينوكسيديل ، رغوة تترك على الشعر. محلول مضاد لتساقط الشعر وترقق الشعر للنساء ، لمدة شهر', 'مجموعة إعادة نمو المرأة بالإضافة إلى: شامبو ، بلسم ، 2٪ مينوكسيديل ، رغوة تترك على الشعر. محلول مضاد لتساقط الشعر وترقق الشعر للنساء ، لمدة شهر', 'ar', 88630125),
(175, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'نمو شعر طبيعي للنساء لشعر أقوى وأسمك (4 كبسولات في اليوم) (تكفي لمدة شهر)', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'نمو شعر طبيعي للنساء لشعر أقوى وأسمك (4 كبسولات في اليوم) (تكفي لمدة شهر)', 'نمو شعر طبيعي للنساء لشعر أقوى وأسمك (4 كبسولات في اليوم) (تكفي لمدة شهر)', 'ar', 88630126),
(176, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مناديل مبللة مهبلية طبية مضادة للحكة من فاجيسيل ، قوة قصوى ، راحة فورية ، عبوة من 3 إلى 60 مناديل مبللة (قد تختلف العبوة)', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'مناديل مبللة مهبلية طبية مضادة للحكة من فاجيسيل ، قوة قصوى ، راحة فورية ، عبوة من 3 إلى 60 مناديل مبللة (قد تختلف العبوة)', 'مناديل مبللة مهبلية طبية مضادة للحكة من فاجيسيل ، قوة قصوى ، راحة فورية ، عبوة من 3 إلى 60 مناديل مبللة (قد تختلف العبوة)', 'ar', 88630127),
(177, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مجموعة ترطيب جيت سيت ، مجموعة العناية بالبشرة سهلة السفر ، منظف ، بلسم ، مرطب ، كريم للعين وكريم ليلي', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'مجموعة ترطيب جيت سيت ، مجموعة العناية بالبشرة سهلة السفر ، منظف ، بلسم ، مرطب ، كريم للعين وكريم ليلي', 'مجموعة ترطيب جيت سيت ، مجموعة العناية بالبشرة سهلة السفر ، منظف ، بلسم ، مرطب ، كريم للعين وكريم ليلي', 'ar', 88630128),
(178, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'السحر | مقشر لتجديد الجلد | مباشرة من السبا | يشد المسام ويفتح البشرة | خالي من البارابين ، خالي من القسوة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'السحر | مقشر لتجديد الجلد | مباشرة من السبا | يشد المسام ويفتح البشرة | خالي من البارابين ، خالي من القسوة', 'السحر | مقشر لتجديد الجلد | مباشرة من السبا | يشد المسام ويفتح البشرة | خالي من البارابين ، خالي من القسوة', 'ar', 88630129),
(179, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مجموعة المبتدئين للعناية اليومية بالترطيب الثنائي (مرطب حيوي وحمض الفيروليك + فيتامينات C و E) يساعد في الحفاظ على الخطوط الدقيقة والترطيب وتفاوت لون البشرة.', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'مجموعة المبتدئين للعناية اليومية بالترطيب الثنائي (مرطب حيوي وحمض الفيروليك + فيتامينات C و E) يساعد في الحفاظ على الخطوط الدقيقة والترطيب وتفاوت لون البشرة.', 'مجموعة المبتدئين للعناية اليومية بالترطيب الثنائي (مرطب حيوي وحمض الفيروليك + فيتامينات C و E) يساعد في الحفاظ على الخطوط الدقيقة والترطيب وتفاوت لون البشرة.', 'ar', 88630130),
(180, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'منظف الوجه بالخلايا الجذعية من إيمج سكين كير ، 4 أونصة سائلة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'منظف الوجه بالخلايا الجذعية من إيمج سكين كير ، 4 أونصة سائلة', 'منظف الوجه بالخلايا الجذعية من إيمج سكين كير ، 4 أونصة سائلة', 'ar', 88630131),
(181, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة حبال قماش كروس بودي حقيبة كتف حقيبة سفر حقائب نهارية عادية', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة حبال قماش كروس بودي حقيبة كتف حقيبة سفر حقائب نهارية عادية', 'حقيبة حبال قماش كروس بودي حقيبة كتف حقيبة سفر حقائب نهارية عادية', 'ar', 88630132),
(182, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'نوتيكا دايفر نايلون للنساء حقيبة كروسبودي صغيرة مع حزام كتف قابل للتعديل', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'نوتيكا دايفر نايلون للنساء حقيبة كروسبودي صغيرة مع حزام كتف قابل للتعديل', 'نوتيكا دايفر نايلون للنساء حقيبة كروسبودي صغيرة مع حزام كتف قابل للتعديل', 'ar', 88630133),
(183, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'آنا من أنوشكا حقيبة يد | جلدية حقيقية', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'آنا من أنوشكا حقيبة يد | جلدية حقيقية', 'آنا من أنوشكا حقيبة يد | جلدية حقيقية', 'ar', 88630134),
(184, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حامل شارة الهوية قابل للسحب ذاتيًا ، هيكل معدني شديد التحمل ، سلك فولاذي 30 بوصة ، سلسلة مفاتيح من سلسلة مع مشبك حزام ، تحمل ما يصل إلى 15 مفتاحًا وأدوات', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حامل شارة الهوية قابل للسحب ذاتيًا ، هيكل معدني شديد التحمل ، سلك فولاذي 30 بوصة ، سلسلة مفاتيح من سلسلة مع مشبك حزام ، تحمل ما يصل إلى 15 مفتاحًا وأدوات', 'حامل شارة الهوية قابل للسحب ذاتيًا ، هيكل معدني شديد التحمل ، سلك فولاذي 30 بوصة ، سلسلة مفاتيح من سلسلة مع مشبك حزام ، تحمل ما يصل إلى 15 مفتاحًا وأدوات', 'ar', 88630135),
(185, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'نظارات حماية من الضباب للرجال والنساء', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'نظارات حماية من الضباب للرجال والنساء', 'نظارات حماية من الضباب للرجال والنساء', 'ar', 88630136),
(186, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جاكيت قميص جيرني مان الأسطوري للرجال', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'جاكيت قميص جيرني مان الأسطوري للرجال', 'جاكيت قميص جيرني مان الأسطوري للرجال', 'ar', 88630137),
(187, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'قميص رانجلر الرجالي ذو قصة كاوبوي الغربية بأكمام طويلة المفاجئة بتصميم متين', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'قميص رانجلر الرجالي ذو قصة كاوبوي الغربية بأكمام طويلة المفاجئة بتصميم متين', 'قميص رانجلر الرجالي ذو قصة كاوبوي الغربية بأكمام طويلة المفاجئة بتصميم متين', 'ar', 88630138),
(188, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'قميص رجالي طويل الأكمام سيغنتشر كومفورت فليكس', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', 'قميص رجالي طويل الأكمام سيغنتشر كومفورت فليكس', 'قميص رجالي طويل الأكمام سيغنتشر كومفورت فليكس', 'ar', 88630139),
(189, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'قميص أكسفورد منقوش بأكمام طويلة ونحيف للرجال', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'قميص أكسفورد منقوش بأكمام طويلة ونحيف للرجال', 'قميص أكسفورد منقوش بأكمام طويلة ونحيف للرجال', 'ar', 88630140),
(190, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جاكيت شيربا مبطن بقلنسوة للرجال من ديكييس', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', 'جاكيت شيربا مبطن بقلنسوة للرجال من ديكييس', 'جاكيت شيربا مبطن بقلنسوة للرجال من ديكييس', 'ar', 88630141),
(191, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جاكيت كارهارت مبطّن حراريًا للرجال J131 (مقاسات عادية وكبيرة وطويلة)', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'جاكيت كارهارت مبطّن حراريًا للرجال J131 (مقاسات عادية وكبيرة وطويلة)', 'جاكيت كارهارت مبطّن حراريًا للرجال J131 (مقاسات عادية وكبيرة وطويلة)', 'ar', 88630142),
(192, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جاكيت باودر لايت من كولومبيا للرجال', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'جاكيت باودر لايت من كولومبيا للرجال', 'جاكيت باودر لايت من كولومبيا للرجال', 'ar', 88630143);
INSERT INTO `product_langs` (`id`, `created_at`, `updated_at`, `description`, `title`, `overview`, `unit`, `badge`, `meta_title`, `meta_description`, `lang`, `product_id`) VALUES
(193, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جاك وولفسكين المرأة المضطربة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', 'جاك وولفسكين المرأة المضطربة', 'جاك وولفسكين المرأة المضطربة', 'ar', 88630144),
(194, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مقاس IV مريح للرجال ومقاسات كبيرة وطويلة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'مقاس IV مريح للرجال ومقاسات كبيرة وطويلة', 'مقاس IV مريح للرجال ومقاسات كبيرة وطويلة', 'ar', 88630145),
(195, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'جلد ثلاثي الطي للرجال مع محفظة نافذة الهوية', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', 'جلد ثلاثي الطي للرجال مع محفظة نافذة الهوية', 'جلد ثلاثي الطي للرجال مع محفظة نافذة الهوية', 'ar', 88630146),
(196, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة ظهر كارهارت ليجاسي ديلوكس للعمل مع حجرة كمبيوتر محمول مقاس 17 بوصة ، كارهارت براون', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة ظهر كارهارت ليجاسي ديلوكس للعمل مع حجرة كمبيوتر محمول مقاس 17 بوصة ، كارهارت براون', 'حقيبة ظهر كارهارت ليجاسي ديلوكس للعمل مع حجرة كمبيوتر محمول مقاس 17 بوصة ، كارهارت براون', 'ar', 88630147),
(197, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة ظهر هيرشل كلاسيك ، آش روز ، حجم متوسط 18.0 لتر', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'الشائع', 'حقيبة ظهر هيرشل كلاسيك ، آش روز ، حجم متوسط 18.0 لتر', 'حقيبة ظهر هيرشل كلاسيك ، آش روز ، حجم متوسط 18.0 لتر', 'ar', 88630148),
(198, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة ظهر نسائية من القطن في الحرم الجامعي', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة ظهر نسائية من القطن في الحرم الجامعي', 'حقيبة ظهر نسائية من القطن في الحرم الجامعي', 'ar', 88630149),
(199, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة 17.3 بوصة للنساء ، حقيبة عمل متعددة الجيوب ، حقائب كمبيوتر مكتبية واسعة ، حقيبة كمبيوتر محمول ، حقيبة سفر للعمل ، قهوة - 17.3 بوصة', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة 17.3 بوصة للنساء ، حقيبة عمل متعددة الجيوب ، حقائب كمبيوتر مكتبية واسعة ، حقيبة كمبيوتر محمول ، حقيبة سفر للعمل ، قهوة - 17.3 بوصة', 'حقيبة 17.3 بوصة للنساء ، حقيبة عمل متعددة الجيوب ، حقائب كمبيوتر مكتبية واسعة ، حقيبة كمبيوتر محمول ، حقيبة سفر للعمل ، قهوة - 17.3 بوصة', 'ar', 88630150),
(200, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة ظهر للكمبيوتر المحمول صديقة للبيئة: مصنوعة من زجاجات بلاستيك بولي ايثيلين تيريفثالات معاد تدويرها', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة ظهر للكمبيوتر المحمول صديقة للبيئة: مصنوعة من زجاجات بلاستيك بولي ايثيلين تيريفثالات معاد تدويرها', 'حقيبة ظهر للكمبيوتر المحمول صديقة للبيئة: مصنوعة من زجاجات بلاستيك بولي ايثيلين تيريفثالات معاد تدويرها', 'ar', 88630151),
(201, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة ظهر للكمبيوتر المحمول من سولو نيو يورك ريجن ، رمادي', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حقيبة ظهر للكمبيوتر المحمول من سولو نيو يورك ريجن ، رمادي', 'حقيبة ظهر للكمبيوتر المحمول من سولو نيو يورك ريجن ، رمادي', 'ar', 88630152),
(202, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حقيبة كمبيوتر محمول للنساء حقيبة ظهر للعمل محفظة سفر حقيبة كتب حقيبة مدرسية للممرضات', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'متميز', 'حقيبة كمبيوتر محمول للنساء حقيبة ظهر للعمل محفظة سفر حقيبة كتب حقيبة مدرسية للممرضات', 'حقيبة كمبيوتر محمول للنساء حقيبة ظهر للعمل محفظة سفر حقيبة كتب حقيبة مدرسية للممرضات', 'ar', 88630153),
(203, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مناديل تنظيف الوجه لإزالة المكياج من نيوتروجينا ، مناديل يومية للوجه تزيل الأوساخ والزيوت والمكياج وماسكارا مقاومة للماء ، لطيفة ، ملفوفة بشكل فردي ، ألياف نباتية 100٪ ، 20 قيراطًا', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'مناديل تنظيف الوجه لإزالة المكياج من نيوتروجينا ، مناديل يومية للوجه تزيل الأوساخ والزيوت والمكياج وماسكارا مقاومة للماء ، لطيفة ، ملفوفة بشكل فردي ، ألياف نباتية 100٪ ، 20 قيراطًا', 'مناديل تنظيف الوجه لإزالة المكياج من نيوتروجينا ، مناديل يومية للوجه تزيل الأوساخ والزيوت والمكياج وماسكارا مقاومة للماء ، لطيفة ، ملفوفة بشكل فردي ، ألياف نباتية 100٪ ، 20 قيراطًا', 'ar', 88630154),
(204, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'سماعات رأس لايف كيو 20 هايبرد بخاصية إلغاء الضوضاء النشطة ، سماعات رأس لاسلكية تعمل بالبلوتوث ، وقت تشغيل 40 ساعة ، صوت عالي الدقة ، جهير عميق ، أكواب أذن ميموري فوم ، للسفر ، والمكتب المنزلي', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'سماعات رأس لايف كيو 20 هايبرد بخاصية إلغاء الضوضاء النشطة ، سماعات رأس لاسلكية تعمل بالبلوتوث ، وقت تشغيل 40 ساعة ، صوت عالي الدقة ، جهير عميق ، أكواب أذن ميموري فوم ، للسفر ، والمكتب المنزلي', 'سماعات رأس لايف كيو 20 هايبرد بخاصية إلغاء الضوضاء النشطة ، سماعات رأس لاسلكية تعمل بالبلوتوث ، وقت تشغيل 40 ساعة ، صوت عالي الدقة ، جهير عميق ، أكواب أذن ميموري فوم ، للسفر ، والمكتب المنزلي', 'ar', 88630155),
(205, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مجموعة أساسيات الحمل من ماما ميو', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'متميز', 'مجموعة أساسيات الحمل من ماما ميو', 'مجموعة أساسيات الحمل من ماما ميو', 'ar', 88630156),
(206, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'صندوق هدايا أنيق للأمهات الجدد - 10 عناصر فريدة للعناية الشخصية بعد الولادة للأمهات - سلة مفاجآت التدليل للأم', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'صندوق هدايا أنيق للأمهات الجدد - 10 عناصر فريدة للعناية الشخصية بعد الولادة للأمهات - سلة مفاجآت التدليل للأم', 'صندوق هدايا أنيق للأمهات الجدد - 10 عناصر فريدة للعناية الشخصية بعد الولادة للأمهات - سلة مفاجآت التدليل للأم', 'ar', 88630157),
(207, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حذاء رياضي سترايد رايت للجنسين للأطفال', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'جديد', 'حذاء رياضي سترايد رايت للجنسين للأطفال', 'حذاء رياضي سترايد رايت للجنسين للأطفال', 'ar', 88630158),
(208, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'حذاء كارينا الرياضي من بوما للنساء', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'حذاء كارينا الرياضي من بوما للنساء', 'حذاء كارينا الرياضي من بوما للنساء', 'ar', 88630159),
(209, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'كرسي مقعد مخملي مع أرجل معدنية لغرفة طعام المطبخ ، طقم من 2. بيج', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', 'متميز', 'كرسي مقعد مخملي مع أرجل معدنية لغرفة طعام المطبخ ، طقم من 2. بيج', 'كرسي مقعد مخملي مع أرجل معدنية لغرفة طعام المطبخ ، طقم من 2. بيج', 'ar', 88630160),
(210, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'المنزل الجديد ريد الناشر', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'المنزل الجديد ريد الناشر', 'المنزل الجديد ريد الناشر', 'ar', 88630161),
(211, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'سعرات حرارية قليلة هش شيلا جي ، وجبة خفيفة مقرمشة رفيعة ورائعة وحلوى ، رقائق شوكولاتة صحية وكراميل مملح ، 20 أونصة ، عبوة من 20', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'سعرات حرارية قليلة هش شيلا جي ، وجبة خفيفة مقرمشة رفيعة ورائعة وحلوى ، رقائق شوكولاتة صحية وكراميل مملح ، 20 أونصة ، عبوة من 20', 'سعرات حرارية قليلة هش شيلا جي ، وجبة خفيفة مقرمشة رفيعة ورائعة وحلوى ، رقائق شوكولاتة صحية وكراميل مملح ، 20 أونصة ، عبوة من 20', 'ar', 88630162),
(212, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-1.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-2.webp\'></p><p><img src=\'https://ishop.iti-if.my.id/uploads/product-description-3.webp\'></p>', 'مقلاة غير لاصقة ، طباخ نودلز سريع ، وعاء صغير 1.5 لتر للستيك ، بيض ، أرز مقلي ، رامين ، دقيق الشوفان ، شوربة مع تعديل الطاقة ، أخضر', '<ul> <li> توقف: لا </ li> <li> أبعاد المنتج: & nbsp ؛ 3 × 3 × 3 بوصات ؛ 1.76 أونصة </li> <li> رقم موديل السلعة: & nbsp؛ 231171045 </li> </ul> <p> <br> </p>', 'قطعة', NULL, 'مقلاة غير لاصقة ، طباخ نودلز سريع ، وعاء صغير 1.5 لتر للستيك ، بيض ، أرز مقلي ، رامين ، دقيق الشوفان ، شوربة مع تعديل الطاقة ، أخضر', 'مقلاة غير لاصقة ، طباخ نودلز سريع ، وعاء صغير 1.5 لتر للستيك ، بيض ، أرز مقلي ، رامين ، دقيق الشوفان ، شوربة مع تعديل الطاقة ، أخضر', 'ar', 88630163);

-- --------------------------------------------------------

--
-- Table structure for table `rating_reviews`
--

CREATE TABLE `rating_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `user_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating_reviews`
--

INSERT INTO `rating_reviews` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`, `order_id`, `rating`, `review`, `user_token`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630111, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630111, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630111, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630111, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630111, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630112, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630112, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630112, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630112, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630113, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630113, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630113, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630114, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630114, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630115, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(16, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630116, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(17, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630117, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(18, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630117, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(19, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630118, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(20, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630118, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(21, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630118, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(22, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630119, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(23, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630119, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(24, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630119, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(25, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630119, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(26, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630120, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(27, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630120, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(28, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630120, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(29, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630120, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(30, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630120, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(31, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630121, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(32, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630121, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(33, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630121, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(34, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630121, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(35, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630122, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(36, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630122, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(37, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630122, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(38, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630123, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(39, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630123, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(40, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630124, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(41, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630125, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(42, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630126, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(43, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630126, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(44, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630127, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(45, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630127, 1, 1, 2, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(46, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630127, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630128, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630128, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(49, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630128, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(50, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630128, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(51, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630129, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(52, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630129, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(53, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630129, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(54, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630129, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(55, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630129, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(56, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630130, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(57, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630130, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(58, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630130, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(59, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630130, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(60, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630131, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(61, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630131, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(62, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630131, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(63, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630132, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(64, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630132, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(65, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630133, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(66, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630134, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(67, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630135, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(68, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630135, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(69, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630136, 1, 1, 2, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(70, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630136, 1, 1, 2, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(71, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630136, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(72, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630137, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(73, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630137, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(74, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630137, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(75, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630137, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(76, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630138, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(77, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630138, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(78, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630138, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(79, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630138, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(80, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630138, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(81, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630139, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(82, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630139, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(83, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630139, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(84, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630139, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(85, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630140, 1, 1, 2, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(86, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630140, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(87, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630140, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(88, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630141, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(89, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630141, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(90, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630142, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(91, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630142, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(92, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630143, 1, 1, 3, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(93, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630144, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(94, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630145, 1, 1, 1, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(95, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630145, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(96, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630146, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(97, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630146, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(98, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630146, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(99, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630147, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(100, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630147, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(101, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630147, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(102, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630147, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(103, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630148, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(104, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630148, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(105, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630148, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(106, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630148, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(107, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630148, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(108, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630149, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(109, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630149, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(110, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630149, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(111, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630149, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(112, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630150, 1, 1, 5, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(113, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630150, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL),
(114, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630150, 1, 1, 4, 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `review_images`
--

CREATE TABLE `review_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating_review_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `review_images`
--

INSERT INTO `review_images` (`id`, `created_at`, `updated_at`, `rating_review_id`, `image`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 1, 'review-1.webp'),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 1, 'review-2.webp'),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 2, 'review-3.webp'),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 2, 'review-4.webp'),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 2, 'review-5.webp'),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 3, 'review-6.webp'),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 3, 'review-7.webp'),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 4, 'review-8.webp'),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 5, 'review-9.webp'),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 5, 'review-10.webp'),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 6, 'review-11.webp'),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 6, 'review-12.webp'),
(13, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 7, 'review-13.webp'),
(14, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 8, 'review-14.webp'),
(15, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 9, 'review-15.webp');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29'),
(2, 'vendor', 'admin', '2024-05-02 00:43:29', '2024-05-02 00:43:29');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2),
(16, 1),
(16, 2),
(17, 1),
(17, 2),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(30, 2),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(49, 2),
(50, 1),
(50, 2),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(89, 2),
(90, 1),
(90, 2),
(91, 1),
(92, 1),
(93, 1),
(93, 2),
(94, 1),
(94, 2),
(95, 1),
(95, 2),
(96, 1),
(96, 2),
(97, 1),
(97, 2),
(98, 1),
(99, 1),
(99, 2),
(100, 1),
(101, 1),
(101, 2),
(102, 2),
(103, 1),
(104, 1),
(104, 2),
(105, 1),
(106, 1),
(106, 2),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(115, 2),
(116, 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency` varchar(255) DEFAULT 'USD',
  `currency_icon` varchar(255) DEFAULT '$',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(255) DEFAULT '',
  `address_1` varchar(255) DEFAULT '',
  `address_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `zip` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `currency_position` varchar(255) DEFAULT '1',
  `decimal_format` varchar(255) DEFAULT NULL,
  `google_login` tinyint(1) NOT NULL DEFAULT 1,
  `facebook_login` tinyint(1) NOT NULL DEFAULT 1,
  `attach_pdf` tinyint(1) NOT NULL DEFAULT 1,
  `guest_checkout` tinyint(1) NOT NULL DEFAULT 1,
  `send_seller_email` tinyint(1) NOT NULL DEFAULT 0,
  `enable_ga` tinyint(1) NOT NULL DEFAULT 0,
  `ga_id` varchar(255) DEFAULT NULL,
  `vendor_registration` tinyint(1) NOT NULL DEFAULT 1,
  `cookie_banner` tinyint(1) NOT NULL DEFAULT 1,
  `enable_pixel` tinyint(1) NOT NULL DEFAULT 0,
  `pixel_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `currency`, `currency_icon`, `email`, `phone`, `address_1`, `address_2`, `city`, `state`, `zip`, `country`, `created_at`, `updated_at`, `admin_id`, `currency_position`, `decimal_format`, `google_login`, `facebook_login`, `attach_pdf`, `guest_checkout`, `send_seller_email`, `enable_ga`, `ga_id`, `vendor_registration`, `cookie_banner`, `enable_pixel`, `pixel_id`) VALUES
(1, 'IDR', 'Rp', 'webzedcontact@gmail.com', '4534345656', 'House 4/3, Road: 34, Bronx, NY', NULL, 'New York', 'New York', '78947', 'USA', '2024-05-02 00:43:32', '2024-05-02 00:50:15', 1, '1', 'id-ID', 1, 1, 1, 1, 0, 0, NULL, 1, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_places`
--

CREATE TABLE `shipping_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `day_needed` int(11) NOT NULL,
  `pickup_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `pickup_point` int(11) NOT NULL DEFAULT 0,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `pickup_phone` varchar(255) DEFAULT NULL,
  `pickup_address_line_1` varchar(255) DEFAULT NULL,
  `pickup_address_line_2` varchar(255) DEFAULT NULL,
  `pickup_zip` varchar(255) DEFAULT NULL,
  `pickup_state` varchar(255) DEFAULT NULL,
  `pickup_city` varchar(255) DEFAULT NULL,
  `pickup_country` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_places`
--

INSERT INTO `shipping_places` (`id`, `country`, `state`, `price`, `day_needed`, `pickup_price`, `pickup_point`, `shipping_rule_id`, `created_at`, `updated_at`, `admin_id`, `pickup_phone`, `pickup_address_line_1`, `pickup_address_line_2`, `pickup_zip`, `pickup_state`, `pickup_city`, `pickup_country`) VALUES
(1, 'ALL', '', 10.00, 3, 5.00, 1, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, '6469806576', '9400 GLACIER HWY SUITE 1', 'JUNEAU JUNEAU AK', '99803', 'New York', 'New York', 'USA'),
(2, 'AL', '09', 7.00, 4, 5.00, 0, 1, '2024-05-02 00:43:32', '2024-05-02 00:43:34', 1, '698757912', 'Bulevardi Zhan D’Ark, Prona nr. 33', 'ish-Shtëpia e Ushtarakëve', '1001', 'Tirana', 'Tirana', 'Albania');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `single_price` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `title`, `created_at`, `updated_at`, `admin_id`, `single_price`) VALUES
(1, 'Default', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rule_langs`
--

CREATE TABLE `shipping_rule_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `shipping_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_rule_langs`
--

INSERT INTO `shipping_rule_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `shipping_rule_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Varsayılan', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'تقصير', 'ar', 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Défaut', 'fr', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'गलती करना', 'hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `site_features`
--

CREATE TABLE `site_features` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default-image.webp',
  `status` int(11) NOT NULL DEFAULT 1,
  `detail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_features`
--

INSERT INTO `site_features` (`id`, `created_at`, `updated_at`, `image`, `status`, `detail`) VALUES
(1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'site-feature-1.webp', 1, '<h4><strong>Rapid shipping</strong></h4><p>With a short period of time</p>'),
(2, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'site-feature-2.webp', 1, '<h4><strong>Secure transaction</strong></h4><p>Checkout securely</p>'),
(3, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'site-feature-3.webp', 1, '<h4><strong>24/7 support</strong></h4><p>Ready to pickup calls</p>'),
(4, '2024-05-02 00:43:34', '2024-05-02 00:43:34', 'site-feature-4.webp', 1, '<h4><strong>Bundle offer</strong></h4><p>On many products</p>');

-- --------------------------------------------------------

--
-- Table structure for table `site_feature_langs`
--

CREATE TABLE `site_feature_langs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `lang` text NOT NULL,
  `site_feature_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_feature_langs`
--

INSERT INTO `site_feature_langs` (`id`, `created_at`, `updated_at`, `detail`, `lang`, `site_feature_id`) VALUES
(1, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Hızlı kargo</strong></h4><p>Kısa bir süre ile</p>', 'tr', 1),
(2, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Güvenli işlem</strong></h4><p>Güvenli ödeme</p>', 'tr', 2),
(3, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>7/24 destek</strong></h4><p>Çağrıları almaya hazır</p>', 'tr', 3),
(4, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Paket teklifi</strong></h4><p>Birçok üründe</p>', 'tr', 4),
(5, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>रैपिड शिपिंग</strong></h4><p>कम समय के साथ</p>', 'hi', 1),
(6, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>सुरक्षित लेनदेन</strong></h4><p>सुरक्षित रूप से चेकआउट करें</p>', 'hi', 2),
(7, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>24/7 समर्थन</strong></h4><p>कॉल लेने के लिए तैयार</p>', 'hi', 3),
(8, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>बंडल ऑफर</strong></h4><p>कई उत्पादों पर</p>', 'hi', 4),
(9, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Expédition rapide</strong></h4><p>Avec une courte période de temps</p>', 'fr', 1),
(10, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Transaction sécurisée</strong></h4><p>Commander en toute sécurité</p>', 'fr', 2),
(11, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Assistance 24/7</strong></h4><p>Prêt à prendre des appels</p>', 'fr', 3),
(12, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>Offre groupée</strong></h4><p>Sur de nombreux produits</p>', 'fr', 4),
(13, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>الشحن السريع </h4><p>بفترة زمنية قصيرة</p>', 'ar', 1),
(14, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>معاملة آمنة</strong></h4><p>تسجيل الخروج بأمان</p>', 'ar', 2),
(15, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>دعم على مدار الساعة طوال أيام الأسبوع</strong></h4><p>جاهز لاستلام المكالمات</p>', 'ar', 3),
(16, '2024-05-02 00:43:34', '2024-05-02 00:43:34', '<h4><strong>عرض الحزمة</strong></h4><p>في العديد من المنتجات</p>', 'ar', 4);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `email_logo` varchar(255) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `primary_color` varchar(255) DEFAULT NULL,
  `primary_hover_color` varchar(255) DEFAULT NULL,
  `styling` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `admin_id`, `created_at`, `updated_at`, `site_name`, `site_url`, `meta_title`, `meta_description`, `copyright_text`, `email_logo`, `header_logo`, `footer_logo`, `primary_color`, `primary_hover_color`, `styling`) VALUES
(1, 1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Íshop', 'https://ishop.cholobangla.com', 'Online Shopping for Men, Electronics, Apparel, Computers, Books, DVDs & more', 'USA\'s #1 shopping platform for baby & kids essentials, toys, fashion & electronic items, and more! Lowest Price Guaranteed | Cashback Deals', 'All rights reserved by Ishop', 'email-logo.png', 'header-logo.svg', 'footer-logo.svg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_setting_langs`
--

CREATE TABLE `site_setting_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `lang` text NOT NULL,
  `site_setting_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_setting_langs`
--

INSERT INTO `site_setting_langs` (`id`, `created_at`, `updated_at`, `site_name`, `meta_title`, `meta_description`, `copyright_text`, `lang`, `site_setting_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'Erkekler, Elektronik, Giyim, Bilgisayar, Kitap, DVD ve daha fazlası için Online Alışveriş', 'ABD\'nin bebek ve çocuk temel malzemeleri, oyuncakları, moda ve elektronik ürünleri ve daha fazlası için 1 numaralı alışveriş platformu! En Düşük Fiyat Garantisi | Geri Ödeme Fırsatları', 'Tüm hakları saklıdır Ishop', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'Achats en ligne pour hommes, électronique, vêtements, ordinateurs, livres, DVD et plus', 'La plate-forme d\'achat n°1 aux États-Unis pour les articles essentiels pour bébés et enfants, les jouets, la mode et les articles électroniques, et plus encore! Prix le plus bas garanti | Offres de remboursement', 'Tous droits réservés par Ishop', 'fr', 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'التسوق عبر الإنترنت للرجال والإلكترونيات والملابس وأجهزة الكمبيوتر والكتب وأقراص DVD والمزيد', 'منصة التسوق رقم 1 في الولايات المتحدة الأمريكية لمستلزمات الأطفال والرضع والألعاب والأزياء والأدوات الإلكترونية والمزيد! أقل سعر مضمون | صفقات استرداد النقود', 'Ishop جميع الحقوق محفوظة', 'ar', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'पुरुषों, इलेक्ट्रॉनिक्स, परिधान, कंप्यूटर, किताबें, डीवीडी और बहुत कुछ के लिए ऑनलाइन खरीदारी', 'बच्चे और बच्चों के आवश्यक सामान, खिलौने, फैशन और इलेक्ट्रॉनिक आइटम, और बहुत कुछ के लिए यूएसए का #1 शॉपिंग प्लेटफॉर्म! सबसे कम कीमत की गारंटी | कैशबैक सौदे', 'द्वारा सर्वाधिकार सुरक्षित Ishop', 'hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `whatsapp_btn` tinyint(1) NOT NULL DEFAULT 1,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `whatsapp_default_msg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `image`, `name`, `slug`, `meta_title`, `meta_description`, `created_at`, `updated_at`, `admin_id`, `whatsapp_btn`, `whatsapp_number`, `whatsapp_default_msg`) VALUES
(1, 'logo-ishop.png', 'Ishop', 'ishop', 'Ishop Mega Mall | Ishop', 'Shop online with Ishop Mega Mall now! Visit Ishop Mega Mall on Ishop.', '2024-05-02 00:43:33', '2024-05-02 00:43:34', 1, 1, '1234567890', 'I have a question'),
(2, 'logo-jshop.png', 'Jshop', 'jshop', 'Jshop Mega Mall | Jshop', 'Shop online with Jshop Mega Mall now! Visit Jshop Mega Mall on Jshop.', '2024-05-02 00:43:33', '2024-05-02 00:43:34', 2, 1, '1234567891', 'I have a question');

-- --------------------------------------------------------

--
-- Table structure for table `store_langs`
--

CREATE TABLE `store_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `lang` text NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `store_langs`
--

INSERT INTO `store_langs` (`id`, `created_at`, `updated_at`, `name`, `meta_title`, `meta_description`, `lang`, `store_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop Büyük alışveriş merkezi | Ishop', 'Ishop Büyük alışveriş merkezi | Ishop', 'Şimdi Ishop Mega Mall ile çevrimiçi alışveriş yapın! Ishop\'ta Ishop Mega Mall\'u ziyaret edin.', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Jshop', 'Jshop Büyük alışveriş merkezi | Jshop', 'Şimdi Jshop Mega Mall ile çevrimiçi alışveriş yapın! Jshop\'ta Jshop Mega Mall\'u ziyaret edin.', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'Ishop मेगा मॉल | Ishop', 'ईशॉप मेगा मॉल के साथ अभी ऑनलाइन खरीदारी करें! ईशॉप पर ईशॉप मेगा मॉल जाएँ।', 'hi', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Jshop', 'Jshop मेगा मॉल | Jshop', 'जेशॉप मेगा मॉल के साथ अभी ऑनलाइन खरीदारी करें! Jshop पर Jshop मेगा मॉल पर जाएँ।', 'hi', 2),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'Ishop Méga centre commercial | Ishop', 'Achetez en ligne avec Ishop Mega Mall maintenant ! Visitez Ishop Mega Mall sur Ishop.', 'fr', 1),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Jshop', 'Jshop Méga centre commercial | Jshop', 'Achetez en ligne avec Jshop Mega Mall maintenant ! Visitez Jshop Mega Mall sur Jshop.', 'fr', 2),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Ishop', 'Ishop ميجا مول | Ishop', 'تسوق عبر الإنترنت مع Ishop Mega Mall الآن! قم بزيارة Ishop Mega Mall في Ishop.', 'ar', 1),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Jshop', 'Jshop ميجا مول | Jshop', 'تسوق عبر الإنترنت مع Jshop Mega Mall الآن! قم بزيارة Jshop Mega Mall في Jshop.', 'ar', 2);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_emails`
--

CREATE TABLE `subscription_emails` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_email_formats`
--

CREATE TABLE `subscription_email_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `body` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subscription_email_formats`
--

INSERT INTO `subscription_email_formats` (`id`, `created_at`, `updated_at`, `body`, `title`, `subject`, `admin_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '<div style=\"padding: 30px 0;\"><h4>Free shipping for you</h4>\r\n                        <h1 style=\"margin: 20px 0;\"><b>GET YOUR SHIPPING FREE PRODUCTS</b></h1>\r\n                        <p style=\"padding: 0 0 30px;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. </p>\r\n\r\n                        <a style=\"background: #4380F3; padding: 15px 30px; color:#ffffff; text-decoration:none;\" href=\"https://ishop.cholobangla.com/all-products/products\" target=\"_blank\">CLAIM SHIPPING FREE PRODUCTS</a>\r\n                        </div>', 'Flash week', 'Best deals for you', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 2,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_category_langs`
--

CREATE TABLE `sub_category_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `lang` text NOT NULL,
  `sub_category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rules`
--

CREATE TABLE `tax_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `price` double(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rules`
--

INSERT INTO `tax_rules` (`id`, `title`, `type`, `price`, `created_at`, `updated_at`, `admin_id`) VALUES
(1, 'Default', 2, 3.00, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rule_langs`
--

CREATE TABLE `tax_rule_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `tax_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tax_rule_langs`
--

INSERT INTO `tax_rule_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `tax_rule_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Varsayılan', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'تقصير', 'ar', 1),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Défaut', 'fr', 1),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'गलती करना', 'hi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `updated_inventories`
--

CREATE TABLE `updated_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT 0,
  `price` decimal(10,2) DEFAULT 0.00,
  `sku` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `updated_inventories`
--

INSERT INTO `updated_inventories` (`id`, `created_at`, `updated_at`, `product_id`, `quantity`, `price`, `sku`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630111, 10000, 0.00, NULL),
(2, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630112, 10000, 0.00, NULL),
(3, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630113, 10000, 0.00, NULL),
(4, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630114, 10000, 0.00, NULL),
(5, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630115, 10000, 0.00, NULL),
(6, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630116, 10000, 0.00, NULL),
(7, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630117, 10000, 0.00, NULL),
(8, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630118, 10000, 0.00, NULL),
(9, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630119, 10000, 0.00, NULL),
(10, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630120, 10000, 0.00, NULL),
(11, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630121, 10000, 0.00, NULL),
(12, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630122, 10000, 0.00, NULL),
(13, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630123, 10000, 0.00, NULL),
(14, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630124, 10000, 0.00, NULL),
(15, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630125, 10000, 0.00, NULL),
(16, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630126, 10000, 0.00, NULL),
(17, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630127, 10000, 0.00, NULL),
(18, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630128, 10000, 0.00, NULL),
(19, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630129, 10000, 0.00, NULL),
(20, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630130, 10000, 0.00, NULL),
(21, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630131, 10000, 0.00, NULL),
(22, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630132, 10000, 0.00, NULL),
(23, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630133, 10000, 0.00, NULL),
(24, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630134, 10000, 0.00, NULL),
(25, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630135, 10000, 0.00, NULL),
(26, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630136, 10000, 0.00, NULL),
(27, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630137, 10000, 0.00, NULL),
(28, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630138, 10000, 0.00, NULL),
(29, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630139, 10000, 0.00, NULL),
(30, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630140, 10000, 0.00, NULL),
(31, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630141, 10000, 0.00, NULL),
(32, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630142, 10000, 0.00, NULL),
(33, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630143, 10000, 0.00, NULL),
(34, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630144, 10000, 0.00, NULL),
(35, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630145, 10000, 0.00, NULL),
(36, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630146, 10000, 0.00, NULL),
(37, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630147, 10000, 0.00, NULL),
(38, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630148, 10000, 0.00, NULL),
(39, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630149, 10000, 0.00, NULL),
(40, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630150, 10000, 0.00, NULL),
(41, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630151, 10000, 0.00, NULL),
(42, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630152, 10000, 0.00, NULL),
(43, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630153, 10000, 0.00, NULL),
(44, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630154, 10000, 0.00, NULL),
(45, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630155, 10000, 0.00, NULL),
(46, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 88630156, 10000, 0.00, NULL),
(47, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630157, 10000, 0.00, NULL),
(48, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630158, 10000, 0.00, NULL),
(49, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630159, 10000, 0.00, NULL),
(50, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630160, 10000, 0.00, NULL),
(51, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630161, 10000, 0.00, NULL),
(52, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630162, 10000, 0.00, NULL),
(53, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 88630163, 10000, 0.00, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `password` text NOT NULL,
  `code` int(11) DEFAULT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` tinyint(1) NOT NULL DEFAULT 0,
  `default_address` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `viewed` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `code`, `google_id`, `facebook_id`, `verified`, `remember_token`, `default_address`, `phone`, `created_at`, `updated_at`, `viewed`) VALUES
(1, 'John Doe', 'john@mail.com', 'test', NULL, '453972431532227638935', NULL, 1, 0, NULL, NULL, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_addresses`
--

CREATE TABLE `user_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `zip` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `delivery_instruction` varchar(255) DEFAULT NULL,
  `default` int(11) NOT NULL DEFAULT 2,
  `user_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_addresses`
--

INSERT INTO `user_addresses` (`id`, `created_at`, `updated_at`, `country`, `state`, `user_id`, `city`, `zip`, `address_1`, `address_2`, `name`, `phone`, `delivery_instruction`, `default`, `user_token`, `email`) VALUES
(1, '2024-05-02 00:43:32', '2024-05-02 00:43:32', 'AF', 'BDS', 1, 'Khulna', '9100', 'Address line 1', 'Address line 2', 'Roman Ahmed', '3435676546', NULL, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_follow_stores`
--

CREATE TABLE `user_follow_stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `store_id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_wishlists`
--

CREATE TABLE `user_wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `usage_limit` int(11) NOT NULL,
  `limit_per_customer` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `min_spend` double(8,2) NOT NULL,
  `code` varchar(255) NOT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `end_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `capped_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `title`, `type`, `status`, `usage_limit`, `limit_per_customer`, `price`, `min_spend`, `code`, `start_time`, `end_time`, `created_at`, `updated_at`, `admin_id`, `capped_price`) VALUES
(1, 'Black friday offer', 1, 1, 100, 100, 10.00, 100.00, 'BLACKFRIDAY10', '2024-04-17 00:43:32', '2024-05-17 00:43:32', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, NULL),
(2, '15% off special Christmas offer', 2, 1, 100, 100, 15.00, 100.00, 'CHRISTMASOFFER15', '2024-04-17 00:43:32', '2024-05-17 00:43:32', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, 150),
(3, 'First order offer', 1, 1, 100, 1, 15.00, 100.00, 'FIRSTOFFER', '2024-04-17 00:43:32', '2024-05-17 00:43:32', '2024-05-02 00:43:32', '2024-05-02 00:43:32', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `voucher_langs`
--

CREATE TABLE `voucher_langs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `lang` text NOT NULL,
  `voucher_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `voucher_langs`
--

INSERT INTO `voucher_langs` (`id`, `created_at`, `updated_at`, `title`, `lang`, `voucher_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'kara cuma teklifi', 'tr', 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Noel\'e özel %15 indirim fırsatı', 'tr', 2),
(3, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'İlk sipariş teklifi', 'tr', 3),
(4, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Offre Black Friday', 'fr', 1),
(5, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '15% de réduction sur l\'offre spéciale Noël', 'fr', 2),
(6, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'Offre de première commande', 'fr', 3),
(7, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'ब्लैक फ्राइडे ऑफर', 'hi', 1),
(8, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'विशेष क्रिसमस ऑफर पर 15% की छूट', 'hi', 2),
(9, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'पहला ऑर्डर ऑफर', 'hi', 3),
(10, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'عرض الجمعة السوداء', 'ar', 1),
(11, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'خصم 15٪ على عرض الكريسماس الخاص', 'ar', 2),
(12, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 'عرض من الدرجة الأولى', 'ar', 3);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` decimal(8,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 2,
  `message` text DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `approved_by` int(10) UNSIGNED DEFAULT NULL,
  `withdrawal_account_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `created_at`, `updated_at`, `amount`, `status`, `message`, `admin_id`, `approved_by`, `withdrawal_account_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 10.00, 2, NULL, 2, 1, 1),
(2, '2024-05-02 00:43:33', '2024-05-02 00:43:33', 10.00, 1, NULL, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_accounts`
--

CREATE TABLE `withdrawal_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_number` varchar(255) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 2,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `withdrawal_accounts`
--

INSERT INTO `withdrawal_accounts` (`id`, `created_at`, `updated_at`, `account_number`, `account_name`, `bank_name`, `branch_name`, `title`, `default`, `admin_id`) VALUES
(1, '2024-05-02 00:43:33', '2024-05-02 00:43:33', '1212334454', 'John Doe', 'State Bank', 'Quebec', 'Default', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wysiwyg_images`
--

CREATE TABLE `wysiwyg_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `attribute_langs`
--
ALTER TABLE `attribute_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_langs_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`),
  ADD KEY `attribute_values_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `attribute_value_langs`
--
ALTER TABLE `attribute_value_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_value_langs_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `banners_slug_unique` (`slug`),
  ADD KEY `banners_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `banner_langs`
--
ALTER TABLE `banner_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_langs_banner_id_foreign` (`banner_id`);

--
-- Indexes for table `banner_source_brands`
--
ALTER TABLE `banner_source_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_source_brands_banner_id_foreign` (`banner_id`),
  ADD KEY `banner_source_brands_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `banner_source_categories`
--
ALTER TABLE `banner_source_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_source_categories_banner_id_foreign` (`banner_id`),
  ADD KEY `banner_source_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `banner_source_products`
--
ALTER TABLE `banner_source_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_source_products_product_id_foreign` (`product_id`),
  ADD KEY `banner_source_products_banner_id_foreign` (`banner_id`);

--
-- Indexes for table `banner_source_sub_categories`
--
ALTER TABLE `banner_source_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banner_source_sub_categories_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `banner_source_sub_categories_banner_id_foreign` (`banner_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`),
  ADD KEY `brands_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `brand_langs`
--
ALTER TABLE `brand_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_langs_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `bundle_deals`
--
ALTER TABLE `bundle_deals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_deals_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `bundle_deal_langs`
--
ALTER TABLE `bundle_deal_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bundle_deal_langs_bundle_deal_id_foreign` (`bundle_deal_id`);

--
-- Indexes for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cancellations_user_id_foreign` (`user_id`),
  ADD KEY `cancellations_order_id_foreign` (`order_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_shipping_place_id_foreign` (`shipping_place_id`),
  ADD KEY `carts_inventory_id_foreign` (`inventory_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `category_langs`
--
ALTER TABLE `category_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_langs_category_id_foreign` (`category_id`);

--
-- Indexes for table `collection_with_products`
--
ALTER TABLE `collection_with_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `collection_with_products_product_id_foreign` (`product_id`),
  ADD KEY `collection_with_products_product_collection_id_foreign` (`product_collection_id`);

--
-- Indexes for table `compare_lists`
--
ALTER TABLE `compare_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `compare_lists_user_id_foreign` (`user_id`),
  ADD KEY `compare_lists_product_id_foreign` (`product_id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_scripts`
--
ALTER TABLE `custom_scripts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature_wysiwyg_images`
--
ALTER TABLE `feature_wysiwyg_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sales_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `flash_sale_langs`
--
ALTER TABLE `flash_sale_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_langs_flash_sale_id_foreign` (`flash_sale_id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flash_sale_products_product_id_foreign` (`product_id`),
  ADD KEY `flash_sale_products_flash_sale_id_foreign` (`flash_sale_id`),
  ADD KEY `flash_sale_products_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `footer_image_links`
--
ALTER TABLE `footer_image_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_image_links_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `footer_links_page_id_foreign` (`page_id`),
  ADD KEY `footer_links_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `guest_users`
--
ALTER TABLE `guest_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guest_users_user_token_unique` (`user_token`);

--
-- Indexes for table `header_links`
--
ALTER TABLE `header_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `header_links_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `header_link_langs`
--
ALTER TABLE `header_link_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `header_link_langs_header_link_id_foreign` (`header_link_id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `home_sliders_slug_unique` (`slug`),
  ADD KEY `home_sliders_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `home_slider_langs`
--
ALTER TABLE `home_slider_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_slider_langs_home_slider_id_foreign` (`home_slider_id`);

--
-- Indexes for table `home_slider_source_brands`
--
ALTER TABLE `home_slider_source_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_slider_source_brands_home_slider_id_foreign` (`home_slider_id`),
  ADD KEY `home_slider_source_brands_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `home_slider_source_categories`
--
ALTER TABLE `home_slider_source_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_slider_source_categories_category_id_foreign` (`category_id`),
  ADD KEY `home_slider_source_categories_home_slider_id_foreign` (`home_slider_id`);

--
-- Indexes for table `home_slider_source_products`
--
ALTER TABLE `home_slider_source_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_slider_source_products_product_id_foreign` (`product_id`),
  ADD KEY `home_slider_source_products_home_slider_id_foreign` (`home_slider_id`);

--
-- Indexes for table `home_slider_source_sub_categories`
--
ALTER TABLE `home_slider_source_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_slider_source_sub_categories_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `home_slider_source_sub_categories_home_slider_id_foreign` (`home_slider_id`);

--
-- Indexes for table `inventory_attributes`
--
ALTER TABLE `inventory_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_attributes_inventory_id_foreign` (`inventory_id`),
  ADD KEY `inventory_attributes_attribute_value_id_foreign` (`attribute_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_code_unique` (`code`),
  ADD KEY `languages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `licences`
--
ALTER TABLE `licences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ordered_products_inventory_id_foreign` (`inventory_id`),
  ADD KEY `ordered_products_order_id_foreign` (`order_id`),
  ADD KEY `ordered_products_product_id_foreign` (`product_id`),
  ADD KEY `ordered_products_shipping_place_id_foreign` (`shipping_place_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_voucher_id_foreign` (`voucher_id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_user_address_id_foreign` (`user_address_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `page_langs`
--
ALTER TABLE `page_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_langs_page_id_foreign` (`page_id`);

--
-- Indexes for table `page_wysiwyg_images`
--
ALTER TABLE `page_wysiwyg_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_wysiwyg_images_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_tax_rule_id_foreign` (`tax_rule_id`),
  ADD KEY `products_shipping_rule_id_foreign` (`shipping_rule_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_collections`
--
ALTER TABLE `product_collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_collections_slug_unique` (`slug`),
  ADD KEY `product_collections_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `product_collection_langs`
--
ALTER TABLE `product_collection_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_collection_langs_product_collection_id_foreign` (`product_collection_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`),
  ADD KEY `product_images_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `product_langs`
--
ALTER TABLE `product_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_langs_product_id_foreign` (`product_id`);

--
-- Indexes for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_reviews_product_id_foreign` (`product_id`),
  ADD KEY `rating_reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `review_images`
--
ALTER TABLE `review_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_images_rating_review_id_foreign` (`rating_review_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `shipping_places`
--
ALTER TABLE `shipping_places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_places_shipping_rule_id_foreign` (`shipping_rule_id`),
  ADD KEY `shipping_places_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_rules_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `shipping_rule_langs`
--
ALTER TABLE `shipping_rule_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_rule_langs_shipping_rule_id_foreign` (`shipping_rule_id`);

--
-- Indexes for table `site_features`
--
ALTER TABLE `site_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_feature_langs`
--
ALTER TABLE `site_feature_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_feature_langs_site_feature_id_foreign` (`site_feature_id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_settings_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `site_setting_langs`
--
ALTER TABLE `site_setting_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_setting_langs_site_setting_id_foreign` (`site_setting_id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stores_slug_unique` (`slug`),
  ADD KEY `stores_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `store_langs`
--
ALTER TABLE `store_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `store_langs_store_id_foreign` (`store_id`);

--
-- Indexes for table `subscription_emails`
--
ALTER TABLE `subscription_emails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_emails_email_unique` (`email`);

--
-- Indexes for table `subscription_email_formats`
--
ALTER TABLE `subscription_email_formats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_email_formats_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`),
  ADD KEY `sub_categories_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `sub_category_langs`
--
ALTER TABLE `sub_category_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_category_langs_sub_category_id_foreign` (`sub_category_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_title_unique` (`title`);

--
-- Indexes for table `tax_rules`
--
ALTER TABLE `tax_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rules_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `tax_rule_langs`
--
ALTER TABLE `tax_rule_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rule_langs_tax_rule_id_foreign` (`tax_rule_id`);

--
-- Indexes for table `updated_inventories`
--
ALTER TABLE `updated_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `updated_inventories_product_id_foreign` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_addresses_user_id_foreign` (`user_id`),
  ADD KEY `user_addresses_user_token_foreign` (`user_token`);

--
-- Indexes for table `user_follow_stores`
--
ALTER TABLE `user_follow_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_follow_stores_store_id_foreign` (`store_id`),
  ADD KEY `user_follow_stores_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_wishlists`
--
ALTER TABLE `user_wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_wishlists_user_id_foreign` (`user_id`),
  ADD KEY `user_wishlists_product_id_foreign` (`product_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vouchers_code_unique` (`code`),
  ADD KEY `vouchers_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `voucher_langs`
--
ALTER TABLE `voucher_langs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `voucher_langs_voucher_id_foreign` (`voucher_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_withdrawal_account_id_foreign` (`withdrawal_account_id`),
  ADD KEY `withdrawals_admin_id_foreign` (`admin_id`),
  ADD KEY `withdrawals_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `withdrawal_accounts`
--
ALTER TABLE `withdrawal_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawal_accounts_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `wysiwyg_images`
--
ALTER TABLE `wysiwyg_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wysiwyg_images_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_langs`
--
ALTER TABLE `attribute_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `attribute_value_langs`
--
ALTER TABLE `attribute_value_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `banner_langs`
--
ALTER TABLE `banner_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `banner_source_brands`
--
ALTER TABLE `banner_source_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `banner_source_categories`
--
ALTER TABLE `banner_source_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_source_products`
--
ALTER TABLE `banner_source_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_source_sub_categories`
--
ALTER TABLE `banner_source_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9442213;

--
-- AUTO_INCREMENT for table `brand_langs`
--
ALTER TABLE `brand_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bundle_deals`
--
ALTER TABLE `bundle_deals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bundle_deal_langs`
--
ALTER TABLE `bundle_deal_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cancellations`
--
ALTER TABLE `cancellations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99585151;

--
-- AUTO_INCREMENT for table `category_langs`
--
ALTER TABLE `category_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `collection_with_products`
--
ALTER TABLE `collection_with_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `compare_lists`
--
ALTER TABLE `compare_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_scripts`
--
ALTER TABLE `custom_scripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feature_wysiwyg_images`
--
ALTER TABLE `feature_wysiwyg_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_langs`
--
ALTER TABLE `flash_sale_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `footer_image_links`
--
ALTER TABLE `footer_image_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `guest_users`
--
ALTER TABLE `guest_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header_links`
--
ALTER TABLE `header_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `header_link_langs`
--
ALTER TABLE `header_link_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_slider_langs`
--
ALTER TABLE `home_slider_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `home_slider_source_brands`
--
ALTER TABLE `home_slider_source_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_slider_source_categories`
--
ALTER TABLE `home_slider_source_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `home_slider_source_products`
--
ALTER TABLE `home_slider_source_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_slider_source_sub_categories`
--
ALTER TABLE `home_slider_source_sub_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventory_attributes`
--
ALTER TABLE `inventory_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `licences`
--
ALTER TABLE `licences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ordered_products`
--
ALTER TABLE `ordered_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page_langs`
--
ALTER TABLE `page_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `page_wysiwyg_images`
--
ALTER TABLE `page_wysiwyg_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88630164;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `product_collections`
--
ALTER TABLE `product_collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_collection_langs`
--
ALTER TABLE `product_collection_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_langs`
--
ALTER TABLE `product_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `review_images`
--
ALTER TABLE `review_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_places`
--
ALTER TABLE `shipping_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping_rule_langs`
--
ALTER TABLE `shipping_rule_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_features`
--
ALTER TABLE `site_features`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `site_feature_langs`
--
ALTER TABLE `site_feature_langs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_setting_langs`
--
ALTER TABLE `site_setting_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `store_langs`
--
ALTER TABLE `store_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `subscription_emails`
--
ALTER TABLE `subscription_emails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_email_formats`
--
ALTER TABLE `subscription_email_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99585150;

--
-- AUTO_INCREMENT for table `sub_category_langs`
--
ALTER TABLE `sub_category_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rules`
--
ALTER TABLE `tax_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tax_rule_langs`
--
ALTER TABLE `tax_rule_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `updated_inventories`
--
ALTER TABLE `updated_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_addresses`
--
ALTER TABLE `user_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_follow_stores`
--
ALTER TABLE `user_follow_stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_wishlists`
--
ALTER TABLE `user_wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vouchers`
--
ALTER TABLE `vouchers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `voucher_langs`
--
ALTER TABLE `voucher_langs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `withdrawal_accounts`
--
ALTER TABLE `withdrawal_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wysiwyg_images`
--
ALTER TABLE `wysiwyg_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `attribute_langs`
--
ALTER TABLE `attribute_langs`
  ADD CONSTRAINT `attribute_langs_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- Constraints for table `attribute_value_langs`
--
ALTER TABLE `attribute_value_langs`
  ADD CONSTRAINT `attribute_value_langs_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`);

--
-- Constraints for table `banners`
--
ALTER TABLE `banners`
  ADD CONSTRAINT `banners_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `banner_langs`
--
ALTER TABLE `banner_langs`
  ADD CONSTRAINT `banner_langs_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`);

--
-- Constraints for table `banner_source_brands`
--
ALTER TABLE `banner_source_brands`
  ADD CONSTRAINT `banner_source_brands_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`),
  ADD CONSTRAINT `banner_source_brands_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `banner_source_categories`
--
ALTER TABLE `banner_source_categories`
  ADD CONSTRAINT `banner_source_categories_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`),
  ADD CONSTRAINT `banner_source_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `banner_source_products`
--
ALTER TABLE `banner_source_products`
  ADD CONSTRAINT `banner_source_products_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`),
  ADD CONSTRAINT `banner_source_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `banner_source_sub_categories`
--
ALTER TABLE `banner_source_sub_categories`
  ADD CONSTRAINT `banner_source_sub_categories_banner_id_foreign` FOREIGN KEY (`banner_id`) REFERENCES `banners` (`id`),
  ADD CONSTRAINT `banner_source_sub_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `brand_langs`
--
ALTER TABLE `brand_langs`
  ADD CONSTRAINT `brand_langs_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `bundle_deals`
--
ALTER TABLE `bundle_deals`
  ADD CONSTRAINT `bundle_deals_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `bundle_deal_langs`
--
ALTER TABLE `bundle_deal_langs`
  ADD CONSTRAINT `bundle_deal_langs_bundle_deal_id_foreign` FOREIGN KEY (`bundle_deal_id`) REFERENCES `bundle_deals` (`id`);

--
-- Constraints for table `cancellations`
--
ALTER TABLE `cancellations`
  ADD CONSTRAINT `cancellations_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `cancellations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `updated_inventories` (`id`),
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_shipping_place_id_foreign` FOREIGN KEY (`shipping_place_id`) REFERENCES `shipping_places` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `category_langs`
--
ALTER TABLE `category_langs`
  ADD CONSTRAINT `category_langs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `collection_with_products`
--
ALTER TABLE `collection_with_products`
  ADD CONSTRAINT `collection_with_products_product_collection_id_foreign` FOREIGN KEY (`product_collection_id`) REFERENCES `product_collections` (`id`),
  ADD CONSTRAINT `collection_with_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `compare_lists`
--
ALTER TABLE `compare_lists`
  ADD CONSTRAINT `compare_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `compare_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD CONSTRAINT `flash_sales_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `flash_sale_langs`
--
ALTER TABLE `flash_sale_langs`
  ADD CONSTRAINT `flash_sale_langs_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`);

--
-- Constraints for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD CONSTRAINT `flash_sale_products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `flash_sale_products_flash_sale_id_foreign` FOREIGN KEY (`flash_sale_id`) REFERENCES `flash_sales` (`id`),
  ADD CONSTRAINT `flash_sale_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `footer_image_links`
--
ALTER TABLE `footer_image_links`
  ADD CONSTRAINT `footer_image_links_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD CONSTRAINT `footer_links_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `footer_links_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `header_links`
--
ALTER TABLE `header_links`
  ADD CONSTRAINT `header_links_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `header_link_langs`
--
ALTER TABLE `header_link_langs`
  ADD CONSTRAINT `header_link_langs_header_link_id_foreign` FOREIGN KEY (`header_link_id`) REFERENCES `header_links` (`id`);

--
-- Constraints for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD CONSTRAINT `home_sliders_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `home_slider_langs`
--
ALTER TABLE `home_slider_langs`
  ADD CONSTRAINT `home_slider_langs_home_slider_id_foreign` FOREIGN KEY (`home_slider_id`) REFERENCES `home_sliders` (`id`);

--
-- Constraints for table `home_slider_source_brands`
--
ALTER TABLE `home_slider_source_brands`
  ADD CONSTRAINT `home_slider_source_brands_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `home_slider_source_brands_home_slider_id_foreign` FOREIGN KEY (`home_slider_id`) REFERENCES `home_sliders` (`id`);

--
-- Constraints for table `home_slider_source_categories`
--
ALTER TABLE `home_slider_source_categories`
  ADD CONSTRAINT `home_slider_source_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `home_slider_source_categories_home_slider_id_foreign` FOREIGN KEY (`home_slider_id`) REFERENCES `home_sliders` (`id`);

--
-- Constraints for table `home_slider_source_products`
--
ALTER TABLE `home_slider_source_products`
  ADD CONSTRAINT `home_slider_source_products_home_slider_id_foreign` FOREIGN KEY (`home_slider_id`) REFERENCES `home_sliders` (`id`),
  ADD CONSTRAINT `home_slider_source_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `home_slider_source_sub_categories`
--
ALTER TABLE `home_slider_source_sub_categories`
  ADD CONSTRAINT `home_slider_source_sub_categories_home_slider_id_foreign` FOREIGN KEY (`home_slider_id`) REFERENCES `home_sliders` (`id`),
  ADD CONSTRAINT `home_slider_source_sub_categories_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `inventory_attributes`
--
ALTER TABLE `inventory_attributes`
  ADD CONSTRAINT `inventory_attributes_attribute_value_id_foreign` FOREIGN KEY (`attribute_value_id`) REFERENCES `attribute_values` (`id`),
  ADD CONSTRAINT `inventory_attributes_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `updated_inventories` (`id`);

--
-- Constraints for table `languages`
--
ALTER TABLE `languages`
  ADD CONSTRAINT `languages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_inventory_id_foreign` FOREIGN KEY (`inventory_id`) REFERENCES `updated_inventories` (`id`),
  ADD CONSTRAINT `ordered_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `ordered_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `ordered_products_shipping_place_id_foreign` FOREIGN KEY (`shipping_place_id`) REFERENCES `shipping_places` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_address_id_foreign` FOREIGN KEY (`user_address_id`) REFERENCES `user_addresses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `page_langs`
--
ALTER TABLE `page_langs`
  ADD CONSTRAINT `page_langs_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `pages` (`id`);

--
-- Constraints for table `page_wysiwyg_images`
--
ALTER TABLE `page_wysiwyg_images`
  ADD CONSTRAINT `page_wysiwyg_images_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `products_shipping_rule_id_foreign` FOREIGN KEY (`shipping_rule_id`) REFERENCES `shipping_rules` (`id`),
  ADD CONSTRAINT `products_tax_rule_id_foreign` FOREIGN KEY (`tax_rule_id`) REFERENCES `tax_rules` (`id`);

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_collections`
--
ALTER TABLE `product_collections`
  ADD CONSTRAINT `product_collections_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `product_collection_langs`
--
ALTER TABLE `product_collection_langs`
  ADD CONSTRAINT `product_collection_langs_product_collection_id_foreign` FOREIGN KEY (`product_collection_id`) REFERENCES `product_collections` (`id`);

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_langs`
--
ALTER TABLE `product_langs`
  ADD CONSTRAINT `product_langs_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `rating_reviews`
--
ALTER TABLE `rating_reviews`
  ADD CONSTRAINT `rating_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `rating_reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `review_images`
--
ALTER TABLE `review_images`
  ADD CONSTRAINT `review_images_rating_review_id_foreign` FOREIGN KEY (`rating_review_id`) REFERENCES `rating_reviews` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `shipping_places`
--
ALTER TABLE `shipping_places`
  ADD CONSTRAINT `shipping_places_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `shipping_places_shipping_rule_id_foreign` FOREIGN KEY (`shipping_rule_id`) REFERENCES `shipping_rules` (`id`);

--
-- Constraints for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD CONSTRAINT `shipping_rules_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `shipping_rule_langs`
--
ALTER TABLE `shipping_rule_langs`
  ADD CONSTRAINT `shipping_rule_langs_shipping_rule_id_foreign` FOREIGN KEY (`shipping_rule_id`) REFERENCES `shipping_rules` (`id`);

--
-- Constraints for table `site_feature_langs`
--
ALTER TABLE `site_feature_langs`
  ADD CONSTRAINT `site_feature_langs_site_feature_id_foreign` FOREIGN KEY (`site_feature_id`) REFERENCES `site_features` (`id`);

--
-- Constraints for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD CONSTRAINT `site_settings_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `site_setting_langs`
--
ALTER TABLE `site_setting_langs`
  ADD CONSTRAINT `site_setting_langs_site_setting_id_foreign` FOREIGN KEY (`site_setting_id`) REFERENCES `site_settings` (`id`);

--
-- Constraints for table `stores`
--
ALTER TABLE `stores`
  ADD CONSTRAINT `stores_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `store_langs`
--
ALTER TABLE `store_langs`
  ADD CONSTRAINT `store_langs_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`);

--
-- Constraints for table `subscription_email_formats`
--
ALTER TABLE `subscription_email_formats`
  ADD CONSTRAINT `subscription_email_formats_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sub_category_langs`
--
ALTER TABLE `sub_category_langs`
  ADD CONSTRAINT `sub_category_langs_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `tax_rules`
--
ALTER TABLE `tax_rules`
  ADD CONSTRAINT `tax_rules_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `tax_rule_langs`
--
ALTER TABLE `tax_rule_langs`
  ADD CONSTRAINT `tax_rule_langs_tax_rule_id_foreign` FOREIGN KEY (`tax_rule_id`) REFERENCES `tax_rules` (`id`);

--
-- Constraints for table `updated_inventories`
--
ALTER TABLE `updated_inventories`
  ADD CONSTRAINT `updated_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `user_addresses`
--
ALTER TABLE `user_addresses`
  ADD CONSTRAINT `user_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `user_addresses_user_token_foreign` FOREIGN KEY (`user_token`) REFERENCES `guest_users` (`user_token`);

--
-- Constraints for table `user_follow_stores`
--
ALTER TABLE `user_follow_stores`
  ADD CONSTRAINT `user_follow_stores_store_id_foreign` FOREIGN KEY (`store_id`) REFERENCES `stores` (`id`),
  ADD CONSTRAINT `user_follow_stores_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_wishlists`
--
ALTER TABLE `user_wishlists`
  ADD CONSTRAINT `user_wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD CONSTRAINT `vouchers_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `voucher_langs`
--
ALTER TABLE `voucher_langs`
  ADD CONSTRAINT `voucher_langs_voucher_id_foreign` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `withdrawals_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `withdrawals_withdrawal_account_id_foreign` FOREIGN KEY (`withdrawal_account_id`) REFERENCES `withdrawal_accounts` (`id`);

--
-- Constraints for table `withdrawal_accounts`
--
ALTER TABLE `withdrawal_accounts`
  ADD CONSTRAINT `withdrawal_accounts_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);

--
-- Constraints for table `wysiwyg_images`
--
ALTER TABLE `wysiwyg_images`
  ADD CONSTRAINT `wysiwyg_images_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
