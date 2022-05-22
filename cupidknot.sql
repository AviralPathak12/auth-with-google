-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: May 22, 2022 at 08:34 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cupidknot`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(8, '2014_10_12_000000_create_users_table', 2),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manglik` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `is_admin`, `dob`, `gender`, `income`, `occupation`, `family`, `manglik`, `google_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Irma Roob', 'growe@example.com', '$2y$10$RAMrq9oj2XvJuMk8Iuf7L.sbgvAcEd5/5qgPnxcyvGKkiXVxOs.G.', 0, '50', 'Male', '9916', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(2, 'Maegan Rath', 'yemard@example.com', '$2y$10$6vdY6DF.ufdZ3iJYwE0gWup5qmrXdv2IWL6N3vA8M4IOnmpPnQu/u', 0, '28', 'Male', '7200', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(3, 'Greta Wolff', 'birdie.rowe@example.org', '$2y$10$fvwHKWpWiXoy6oozixGOzOGmyIq.OlVCkVEbE5aP.wG3XGcY88wHi', 0, '33', 'Male', '2244', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(4, 'Giovanni Durgan', 'zweissnat@example.com', '$2y$10$NbvVICHXnmmhvKgL3H/LvuQ0jJeXU3/3cAzJ5b5j4tFx8aZA..ntm', 0, '29', 'Male', '8724', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(5, 'Dr. Eduardo Schimmel DDS', 'schumm.veronica@example.com', '$2y$10$2yVD6L41BZpXNoKCEdSh/.yXExj/NXB6uA4VMc6N/N1dVqvYY8aGG', 0, '32', 'Male', '7853', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(6, 'Nolan Wyman', 'olen.lebsack@example.net', '$2y$10$YMdXazkXJp85.CNEMmP1SOmwmuvjJdYUUAGoJURd/6mexVljw1yse', 0, '48', 'Male', '8508', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(7, 'Athena O\'Kon', 'santos.bartoletti@example.org', '$2y$10$QbM1lTvaL.YxriSwgd9L5.bcqcuuy5gh44WcVAewdV1gMKrjNsu3e', 0, '35', 'Male', '4283', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(8, 'Brooks Jaskolski', 'yrolfson@example.com', '$2y$10$YepySV20CdBO99W2w5l7ju/R3uR8UQgGSf2vkqbENJ/yby8TfzA2O', 0, '23', 'Male', '0333', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(9, 'Domenick Wiza', 'fdickens@example.com', '$2y$10$aAtmwcd74yYF/MH.lSrhg.xmFzdQ5k9ExJmniyn5Cy7HODRa46vH6', 0, '30', 'Male', '8176', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(10, 'Alda Reilly', 'lance38@example.org', '$2y$10$rVgAWOo9eKtZbXWrwX28dOZx7A1ZcMksgR/qzOshxzry1eSwIAlSa', 0, '27', 'Male', '9933', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(11, 'Gillian Mann', 'sawayn.wilmer@example.org', '$2y$10$qkat7qtfbEpxPgtkVBMGruWo03.jDkmGbiKm/U04pnaF/WaAe/SUi', 0, '39', 'Male', '7493', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(12, 'Mr. Deven Padberg III', 'remington53@example.net', '$2y$10$7HcalRQjnRqiN4D/ZVImZ.iUCQeje5TFbgjZfJyyIIMSyTFxc4fiy', 0, '37', 'Male', '8674', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(13, 'Dayna Boehm V', 'dominique49@example.net', '$2y$10$X1FIoFqdigQ4UouODRFGK.OL9D.MvnjJB1.86sq1y48bcUMMchuSO', 0, '31', 'Male', '5994', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(14, 'Otis Ratke', 'lina43@example.net', '$2y$10$cMHcrGG3GgSYFgCUimB9bOZulKUlHw4IoOU1rDbQsKOFA3gOBlWOG', 0, '26', 'Male', '2248', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(15, 'Prof. Eileen Bauch', 'sim.leffler@example.net', '$2y$10$3Wdb.I9RKUTt7LB.gVsrKOjSJv9fYRp4mwEGCbificMayxP7D3FYq', 0, '49', 'Male', '2993', 'Private Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(16, 'Admin', 'admin@gmail.com', '$2y$10$02ARog7wTk37Vkw6w7X5WuBdkgN7QNsfbyWQB4rcDJNgi7WFuR9Ii', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Aviral Pathak', 'aviralpathak.ap@gmail.com', 'eyJpdiI6Ink3aDZDNGhzZWRUeE0vSEQ0TytpM0E9PSIsInZhbHVlIjoiZnFzVnUxQTVld2d2V0IxOGJ6bzBHMHB6S3V0M0tMN1RPVVlCN3AySHhOVT0iLCJtYWMiOiJmMDhhYjhkZWFiZTY0YzUwY2M5NzRiMTc3NWIwYTFiYWQ0ZWNjNTUzYmNiZTFiODFiMzA3Yjc0ZjQ1MzFiYzljIn0=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '103351625101423665489', NULL, '2022-05-22 01:24:47', '2022-05-22 01:24:47'),
(18, 'Guiseppe Greenholt DVM', 'skiles.randal@example.org', '$2y$10$lAVniTwpTqs1F2qzTLcJBe54iQu7NoHqR87n/LRDQOufHRiED5YxO', 0, '37', 'Male', '8254', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(19, 'Prof. Brandyn Kihn', 'vincenzo.wehner@example.com', '$2y$10$L62wVt4W2CjXrNkhGEpM6ubpQqb7U5yURlKD6OWdxn14VEUUnorxu', 0, '37', 'Male', '8054', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(20, 'Mr. Felipe Brekke IV', 'ashtyn24@example.org', '$2y$10$F.v9LpzHc0uy9eiGIcXq6OI0LHAF0SMJkqzd/wDncrCzBOMSQ/4d6', 0, '29', 'Male', '9146', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(21, 'Mr. Lamar Jacobs', 'javier76@example.org', '$2y$10$Oga3bSXVzlyVhXY0bM9.xuFex9O/Pemr55ne9yySBrBAKQxx53tui', 0, '50', 'Male', '5398', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(22, 'Patience Treutel Jr.', 'effertz.gustave@example.com', '$2y$10$Ba7G7luXlQO4W17IBISxkus2IMpnwvK4EfR4LXUJVBuA.DQxLkhuK', 0, '45', 'Male', '8926', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(23, 'Branson Christiansen', 'maxime.bergnaum@example.org', '$2y$10$ObYGgNy3IgJ/BlZQc4EWweosbHFBXCQrXMI7fAaaXEcMvbaYXmE6O', 0, '48', 'Male', '7148', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(24, 'Jada Satterfield MD', 'williamson.annabell@example.com', '$2y$10$QKx3Tb.8.8dl2g7y/XhCiesml/P5hm7I.r3t1EDc3j8f8DK30LnUK', 0, '26', 'Male', '6870', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(25, 'Zechariah Mitchell', 'jbauch@example.net', '$2y$10$e9PYrmfACsWvkQp2.BsnQOjshHQGWeuoYFi5.DyEbI1G6GaCj0Qw6', 0, '37', 'Male', '5400', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(26, 'Reva Langosh', 'umosciski@example.com', '$2y$10$.cszQ.p6qMgbvxEZooQBTe.Iap9v5li36tjz.62ysN8Vjd3mpMLN6', 0, '27', 'Male', '2041', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(27, 'Dr. Pierce Hackett', 'tatum.kihn@example.com', '$2y$10$PeYOAQ.tPclS9mHGMv168OWDsyZ1cBNbezyjDJQS4MJqWzASQP.dy', 0, '44', 'Male', '6083', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(28, 'Bridie Kling', 'hodkiewicz.maggie@example.net', '$2y$10$H11Z75oBth8gv5lnQItrreRDq/UxgTa9hzmtooHk0KgCbxYs.MA.y', 0, '29', 'Male', '2839', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(29, 'Garfield Von DVM', 'abbott.mack@example.com', '$2y$10$A7fzlp7CbNfa/9JIsuvG4enq13429ve4DfHEOKMQi663CvL7O0iWe', 0, '32', 'Male', '8443', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(30, 'Dave Anderson', 'jacinthe42@example.net', '$2y$10$tQ4.9zDglwF7YHk1uFLY9.DlNjLwZ.8/pp0frDgLiUy47LRWWAHGa', 0, '42', 'Male', '5846', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(31, 'Tiana O\'Keefe DDS', 'mschaden@example.com', '$2y$10$rKsMLNzdZxnADCtBOQLzE.bOiZEV6oYGL3HodvDSgG9ORujxTsSGq', 0, '27', 'Male', '7198', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(32, 'Dennis Macejkovic', 'renee38@example.com', '$2y$10$r59L9rLLdqeUOGm8EBs9keflnTjKSTsOPb1BguMBx8zflcVtXQjwW', 0, '46', 'Male', '0454', 'Business', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(33, 'Ms. Tia Lowe DVM', 'cruickshank.dylan@example.com', '$2y$10$HJchgt8j2P6QP0MG8VNtFu2e/yBRMNMcbvQ9zWCQiACBZaMeeteqO', 0, '48', 'Female', '2090', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(34, 'Rosalee Schulist', 'zcassin@example.org', '$2y$10$xiwJjG0s1qnbuu8K1SmfnOYxM.TZje1Vnbr3KDcTiyTuMsBGgj21O', 0, '28', 'Female', '6632', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(35, 'Ardella Lakin', 'devonte.beer@example.org', '$2y$10$Iakk2CW8Rp0XRq.NtwvA4ejN25KDC.AJOnvPTD1Itj7KazGwitlXe', 0, '25', 'Female', '4953', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(36, 'Garnett Smitham', 'stracke.raymundo@example.net', '$2y$10$4yVNhH7sYBXiCsWy1MZ2yOA0mh4FFJBszPtF2Vh8R2iLRB0zJY29m', 0, '29', 'Female', '5624', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(37, 'Margaret Medhurst', 'hauck.napoleon@example.com', '$2y$10$sDM1OwqBC8AQcOEOG4xsKuvlpTV3KKtA9/6QfdJX..uYewVsSoO8m', 0, '48', 'Female', '0243', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(38, 'Jamar Wolf', 'bbogan@example.net', '$2y$10$1EGW0CgE3XaTsG8pdf8M4.rEEBtW0ZX/.RGkT4kOiJM68w8.9AOZ6', 0, '35', 'Female', '9637', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(39, 'Dr. Armand Koss', 'dannie.botsford@example.org', '$2y$10$S6yQa6mAguJf8AD4g4GPWui9pSLV05Z/FmCVrA7CAVWUWaz1EVF/e', 0, '36', 'Female', '9328', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(40, 'Domenic Rau', 'gabe66@example.net', '$2y$10$gh/puFtTdL.vR3sioQrJy.xkXLeXxGJkwYlkXrcepvFhL53PGcxOy', 0, '34', 'Female', '8142', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(41, 'Blake Hodkiewicz MD', 'aoconnell@example.org', '$2y$10$4/VssOcgucRQSBst3YsqmuEC2PZSd0tcpG9zAuODBQX12NUhBdbW2', 0, '50', 'Female', '2182', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(42, 'Kacey Reilly IV', 'oreilly.jovan@example.net', '$2y$10$WV09/xIOlWAMzX3QeFJZiu82Blscc8i7LgVLfCV9rkW6I2/z7hOim', 0, '49', 'Female', '5834', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(43, 'Price Schiller', 'zboncak.jan@example.com', '$2y$10$cDmR3.n5.y/t2ylwNAqsk.lXkgkDkoMATmzZSNluTYIxlThs7azJu', 0, '24', 'Female', '0547', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(44, 'Marina Cremin V', 'chelsie.connelly@example.com', '$2y$10$/ZesoDaOI8/SZ6cZK2U9MOfL3xIbPDxbREAkmppo/gW86yOF.nCQW', 0, '45', 'Female', '2297', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(45, 'Green Rippin', 'hilpert.tierra@example.net', '$2y$10$FPce1TMwpFidCLG.HKtUUOrERCfJ7jZoI514VqkKf6cc7jXWB8/km', 0, '45', 'Female', '1642', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(46, 'Virginie Lesch', 'ehand@example.net', '$2y$10$cf.nioAqAm4yTAq1pLX3WeEucZWlGpgV1x0d5KJMBWrqBfrNsTBxS', 0, '45', 'Female', '7873', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(47, 'Dr. Mireya Harris', 'yoshiko.wehner@example.net', '$2y$10$Nm54Ow8NpqX4BwBF01IiYeIURCfmlfPU6HXQDl7xD5SYLDTt6uz4O', 0, '49', 'Female', '7787', 'Government Job', 'Joint Family', 'No', NULL, NULL, NULL, NULL),
(48, 'Mr. Dante Shields DVM', 'trohan@example.net', '$2y$10$rxWhDXbDAF0fNfEZXu42zuC82mhNuDJMIo/jOIqVynN/ANvS36hdu', 0, '33', 'Male', '0025', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(49, 'Luz Fisher', 'cummerata.felicita@example.net', '$2y$10$HQau1rU2GBNUf6CFwU5HBO.q7ANLCj1TaFrl3m.ZzVujfYCM.e7Ta', 0, '46', 'Male', '7211', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(50, 'Ms. Dixie O\'Conner', 'rath.alexie@example.com', '$2y$10$l/IZxLMNV..paIwszbHid.5xF4Sg1eZh3xdFcADh4YXUutctyIyMq', 0, '22', 'Male', '6045', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(51, 'Eleazar Reichel DDS', 'armstrong.nikki@example.com', '$2y$10$St.ffTAC5dqsMsCbznQLzehoVwvroG6IuywLyJD/YqXrlZ2npp1M.', 0, '38', 'Male', '1441', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(52, 'Ms. Carley Kuhic DVM', 'konopelski.lilliana@example.net', '$2y$10$4ycFcDY89nwF7CvrdxIvueapitePu4bpylUXOeGLfFYheFOzvixHK', 0, '33', 'Male', '9117', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(53, 'Dr. Santos Stark Jr.', 'lauretta31@example.com', '$2y$10$80TKDs0EOdmvt8rAn1RNDOKSN4fXvrzxrnVWxdNa6OSiMhAJvCoLu', 0, '22', 'Male', '2334', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(54, 'Jon Simonis', 'russel.darion@example.com', '$2y$10$8jH/WDSw38rrd6YGJjgdrOTAB.hgpJ1MtbyGvoENuVoo1Lvc68eXa', 0, '46', 'Male', '8634', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(55, 'Mr. Jayme Kilback DDS', 'ystroman@example.com', '$2y$10$EpWKVWMzUKvF2Y8CkPNgW.Pz6U.VLp1hbm.BxzCDvEFM7EtGq/I0.', 0, '46', 'Male', '8932', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(56, 'Ms. Pat Kuvalis', 'btrantow@example.com', '$2y$10$t5zDLZ/yRDTX1vjkeeG85eGVQZoBSchgqNRzmfBCImXpgRVZnlabm', 0, '39', 'Male', '7469', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(57, 'Germaine Runolfsson', 'botsford.westley@example.com', '$2y$10$yAhfkqVwaEWEb8CJoxSkiOoorEf1fzpmEkbjqBaKBCOeEbIag.cm6', 0, '37', 'Male', '5809', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(58, 'Rafaela Lubowitz', 'jhill@example.net', '$2y$10$IvfNG5.emYv.QD9cI7XJBOLkBQ1cYMnJGgHWEUNG/MP8B0apRWHtC', 0, '37', 'Male', '2909', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(59, 'Monty Crist IV', 'kiera32@example.org', '$2y$10$f2ALfaRtWcogZxeWm2cnL..VqjTgs1Wkx9RRZv5rVt0rdeyhSxGvO', 0, '41', 'Male', '3589', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(60, 'Prof. Ethan Beer V', 'wlang@example.com', '$2y$10$dJ13TO2WIoZoDFY0GM823OWrRFOfYY2LnVBER5gG9k7/WUCVmPnY.', 0, '38', 'Male', '9174', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(61, 'Prof. Sadie Berge IV', 'mlemke@example.org', '$2y$10$fIss65N37UJx.FnWgVpKlutBfPHCV9RBKU3ZPLNnJkqRQbRX980R6', 0, '48', 'Male', '7920', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL),
(62, 'Telly Swift', 'schamberger.robb@example.com', '$2y$10$QLN/K9b.7XKClDm1MpXwzufWNgVXacT3P600/OPbK2ESAbQlji6Fm', 0, '44', 'Male', '9521', 'Government Job', 'Nuclear Family', 'No', NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
