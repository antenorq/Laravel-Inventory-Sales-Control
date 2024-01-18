-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 21, 2020 at 10:57 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igloocontrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category_parent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `id_category_parent`, `created_at`, `updated_at`) VALUES
(1, 'Pastry Display Case', 4, '2020-09-03 04:00:00', '2020-09-22 00:21:12'),
(2, 'Meat Display Case', 4, '0000-00-00 00:00:00', '2020-09-22 00:21:27'),
(3, 'Open Merchandiser', 4, '0000-00-00 00:00:00', '2020-09-22 00:21:39'),
(4, 'Igloo Products', NULL, '2020-09-22 00:12:43', '2020-09-22 00:12:43'),
(5, 'Cooking Equipment', NULL, '2020-09-22 00:22:56', '2020-09-22 00:22:56'),
(6, 'Ranges', 5, '2020-09-22 00:23:15', '2020-09-22 00:23:15'),
(7, 'Fryers', 5, '2020-09-22 00:23:47', '2020-09-22 00:23:47'),
(8, 'Griddles', 5, '2020-09-22 00:31:57', '2020-09-22 00:31:57'),
(9, 'Burners & Inductions', 5, '2020-09-22 00:32:26', '2020-09-22 00:32:26'),
(10, 'Refrigeration Equipment', NULL, '2020-09-22 00:33:29', '2020-09-22 00:33:29'),
(12, 'Refrigerated', 1, '2020-09-22 00:35:27', '2020-09-22 00:35:27'),
(13, 'Dry', 1, '2020-09-22 00:35:34', '2020-09-22 00:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contact` date DEFAULT NULL,
  `id_form_contact` int(11) DEFAULT NULL,
  `id_mode_payment` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `id_sales_person` int(11) DEFAULT NULL,
  `id_assisted_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `business_name`, `phone`, `email`, `address`, `date_contact`, `id_form_contact`, `id_mode_payment`, `delivery_date`, `id_sales_person`, `id_assisted_by`, `created_at`, `updated_at`) VALUES
(2, 'Antenor de Oliveira Queiroz', 'Hooka Bruvs', '6587468989', 'antenor@asdasdas.com', '145 kjhas das, kjaskdas', '2020-09-09', 1, 1, '2020-09-10', 1, 2, '2020-09-10 04:00:00', '2020-09-10 04:00:00'),
(3, 'Mary Silva', 'busine asassaa', '99999999', 'mary@gmail.com', 'aderss ajshahsksas', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 19:41:44', '2020-09-11 19:41:44'),
(4, 'Mauro Brandao', 'busine popopopop', '98989898989', 'mauro@igloo400.com', 'address popopopop', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 19:42:17', '2020-09-11 19:42:17'),
(5, 'Patrycja', 'PatyBeijo', '9887546', 'patrycja@igloo400.com', 'adress kjahs kdhadooui quiwuqiwe  qhwjek qwjeqkw eqjwekqjw', NULL, NULL, NULL, NULL, NULL, NULL, '2020-09-11 22:14:51', '2020-09-11 22:14:51');

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
(5, '2020_08_17_151611_create_products_table', 3),
(6, '2020_09_03_194343_create_categories_table', 4),
(7, '2020_09_09_200114_create_customers_table', 5),
(8, '2020_09_10_161904_create_sales_people_table', 6),
(9, '2020_09_11_160257_create_sales_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('antenor@igloo400.com', '$2y$10$zoa7dZTy7zoJFJQWJ6kA3uuhvIKBb4rLQURVPIuJWjRobZYHt7Ep2', '2020-08-18 01:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `sale_price` decimal(10,2) NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specsheet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `specs` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `model`, `name`, `description`, `list_price`, `sale_price`, `picture`, `specsheet`, `specs`, `created_at`, `updated_at`) VALUES
(6, 1, '1OM', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers IGLO O 27\" D Slim Line M ulti-Deck Open Mer chandisers IGLO O 27\"D Slim Line Multi-Deck Open Merchandisers', '15000.00', '12000.00', '1OM.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_1OM.pdf', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers', '2020-08-20 00:48:02', '2020-08-21 20:37:53'),
(8, 1, 'M2SCD', 'IGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', 'IGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', '12000.00', '11000.00', 'M2SCD.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_M2SCD.pdf', 'GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', '2020-08-20 20:21:47', '2020-08-21 18:57:17'),
(9, 1, 'JMDWP', 'IGLOO Dry Pastry Cases, Wood Finish', 'Cherry wood finish\r\nBack sliding door with double insulated glass (JMDWP3, JMDWP4)\r\nBack door with double insulated glass (JMDWP2)\r\nCurved, high-movable front glass\r\nDisplay shelves (height/angle adjustable)\r\nLED lights on each shelf\r\nAdjustable legs', '12000.00', '8000.00', 'JMDWP.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_JMDWP.pdf', 'Cherry wood finish Back sliding door with do asdja jdja djad kajdl', '2020-08-21 18:53:06', '2020-08-21 18:54:27'),
(10, 1, 'JMDTP', 'IGLOO Dry Pastry Cases, Painted Enamel Finish', 'IGLOO Dry Pastry Cases, Painted Enamel Finish IGLOO Dry Pastry Cases, Painted Enamel Finish IGLOO Dry Pastry Cases, Painted Enamel Finish', '15000.00', '12000.00', 'JMDTP.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_JMDTP.pdf', 'IGLOO Dry Pastry Cases, Painted Enamel FinishIGLOO Dry Pastry Cases, Painted Enamel Finish', '2020-08-21 19:00:43', '2020-08-21 19:00:43'),
(11, 1, 'BSCD', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', '8500.10', '7500.10', 'BSCD.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_BSCD.pdf', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', '2020-08-21 19:03:07', '2020-09-18 20:46:48'),
(12, 1, 'SANFID', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front GlassIGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', '15000.00', '14000.00', 'SANFID.JPG', 'https://www.igloofoodequipment.com/files/IGLOO_SANFID.pdf', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', '2020-08-21 19:04:54', '2020-08-21 19:04:54'),
(13, 1, '2OM', 'IGLOO 33\"D High Profile Multi-Deck Open Merchandisers', 'IGLOO 33\"D High Profile Multi-Deck Open MerchandisersIGLOO 33\"D High Profile Multi-Deck Open MerchandisersIGLOO 33\"D High Profile Multi-Deck Open Merchandisers', '20000.00', '19000.00', '2OM.JPG', 'https://www.igloofoodequipment.com/files/IGLOO_2OM.pdf', 'IGLOO 33\"D High Profile Multi-Deck Open Merchandisers', '2020-08-21 19:06:29', '2020-08-21 19:06:29'),
(14, 1, '2582', 'PITCO Tube Fired Gas Fryer', 'PITCO Tube Fired Gas FryerPITCO Tube Fired Gas FryerPITCO Tube Fired Gas FryerPITCO Tube Fired Gas Fryer', '3000.00', '2500.00', '2582.jpg', 'https://www.igloofoodequipment.com/files/20171130124655_Pitco_VF35.pdf', 'PITCO Tube Fired Gas FryerPITCO Tube Fired Gas Fryer', '2020-08-21 21:31:39', '2020-08-21 21:31:39'),
(15, 1, 'KBSR-3', 'KOOL-IT Triple Door Bottom Mount Refrigerators', 'KOOL-IT Triple Door Bottom Mount RefrigeratorsKOOL-IT Triple Door Bottom Mount RefrigeratorsKOOL-IT Triple Door Bottom Mount Refrigerators', '17500.00', '15500.00', 'KBSR-3.png', 'https://www.igloofoodequipment.com/files/20180406115438_KBSR3-KBSF3-spec%20(1).pdf', 'KOOL-IT Triple Door Bottom Mount Refrigerators', '2020-08-21 21:46:47', '2020-08-21 21:46:47'),
(16, 1, 'KGF-23', 'KOOL-IT Single Glass Door Freezers', 'KOOL-IT Single Glass Door FreezersKOOL-IT Single Glass Door Freezers', '14000.00', '11000.00', 'KGF-23.jpg', 'https://www.igloofoodequipment.com/files/20180409100525_20180328160740_KGF-spec.pdf', 'KOOL-IT Single Glass Door FreezersKOOL-IT Single Glass Door Freezers', '2020-08-21 21:51:56', '2020-08-21 21:51:56'),
(17, 1, '2612', 'PITCO Drop-in Gas Fryers', 'PITCO Drop-in Gas Fryers PITCO Drop-in Gas Fryers PITCO Drop-in Gas FryersPITCO Drop-in Gas Fryers', '7500.00', '5000.00', '2612.jpg', 'https://www.igloofoodequipment.com/files/20171130120937_PIT0274.pdf', 'PITCO Drop-in Gas FryersPITCO Drop-in Gas Fryers', '2020-08-21 21:55:01', '2020-08-21 21:56:01'),
(27, 3, 'Test', 'Test Open Merchandiser', 'Test Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open Merchandiser', '12000.00', '10000.00', '1OM.jpg', 'https://www.igloofoodequipment.com/files/IGLOO_1OM.pdf', 'Test Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open Merchandiser', '2020-09-16 00:12:34', '2020-09-16 00:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_sales_person` int(11) NOT NULL,
  `id_assisted_by` int(11) DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `id_mode_payment` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `id_customer`, `id_sales_person`, `id_assisted_by`, `delivery_date`, `id_mode_payment`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 1, '2020-09-11', 3, '2020-09-11 22:07:32', '2020-09-11 22:07:32'),
(2, 2, 2, 1, '2020-09-11', 1, '2020-09-11 22:13:23', '2020-09-11 22:13:23'),
(3, 2, 1, 2, '2020-09-11', 2, '2020-09-12 00:01:50', '2020-09-12 00:01:50'),
(4, 2, 2, 1, '2020-09-11', 2, '2020-09-12 00:02:07', '2020-09-12 00:02:07'),
(5, 4, 2, 1, '2020-09-11', 1, '2020-09-15 00:45:45', '2020-09-15 00:45:45'),
(6, 3, 2, 1, '2020-09-11', 2, '2020-09-15 00:48:02', '2020-09-15 00:48:02'),
(15, 2, 2, 1, '2020-09-11', 1, '2020-09-17 23:52:04', '2020-09-17 23:52:04'),
(16, 3, 2, 1, '2020-09-12', 3, '2020-09-18 00:00:16', '2020-09-18 00:00:16'),
(18, 2, 2, 1, '2020-09-18', 1, '2020-09-18 16:47:40', '2020-09-18 16:47:40'),
(20, 3, 2, 2, '2020-09-11', 1, '2020-09-21 22:18:27', '2020-09-21 22:18:27'),
(21, 5, 2, 2, '2020-09-11', 1, '2020-09-21 22:25:27', '2020-09-21 22:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `sales_people`
--

CREATE TABLE `sales_people` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_people`
--

INSERT INTO `sales_people` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mike', 'mike@igloo400.com', '2020-09-10 04:00:00', '2020-09-10 04:00:00'),
(2, 'Amir', 'amir@igloo400.com', '2020-09-11 04:00:00', '2020-09-11 04:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sales_products`
--

CREATE TABLE `sales_products` (
  `id` int(11) NOT NULL,
  `id_sale` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sales_products`
--

INSERT INTO `sales_products` (`id`, `id_sale`, `id_product`, `quantity`) VALUES
(1, 15, 6, 10),
(2, 15, 8, 20),
(3, 16, 6, 7),
(4, 16, 8, 8),
(5, 16, 14, 9),
(6, 18, 11, 8),
(7, 18, 13, 9),
(8, 20, 6, 10),
(9, 20, 8, 10),
(10, 20, 27, 10),
(11, 21, 11, 10),
(12, 21, 13, 10);

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
  `permission` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `permission`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Maryyy2', 'mary@gmail.com', NULL, '$2y$10$V.W8XtUC0/woT03LBChD1OuffSnvlFZcu0By84KgVRnJeXhJfLSOe', NULL, NULL, '2020-08-14 22:44:35', '2020-08-17 22:03:47'),
(3, 'test1', 'test1@gmail.com', NULL, '$2y$10$d1wvKRXFQ80/Nl.FgbJLO.duh9RBgE29Wcre.rwHIxViPl1AZxG4K', NULL, NULL, '2020-08-18 01:03:49', '2020-08-18 17:47:11'),
(4, 'Antenor Queiroz', 'antenor@igloo400.com', NULL, '$2y$10$/Eogk0cNeTstPZqDna9.tu3O3CNiDuLyGd6IyUiVAWF3V4cirksrW', 1, 'RAiD4AaRZYjtTMIjda5otlXiGEjFad7QQbe7QvskG5ZiCiz1LL2FZEHg4PWG', '2020-08-18 21:02:24', '2020-08-18 21:02:24'),
(5, 'Amir', 'amir@igloo400.com', NULL, '$2y$10$U9toCpwR02MCZCYGWn8J1.Hf/6GtW/nJsXtlFSXJyMzd87dEbJtw2', 1, NULL, '2020-08-21 19:16:53', '2020-08-21 19:16:53'),
(6, 'Hun Park', 'admin@igloo400.com', NULL, '$2y$10$nzRWHlGA9pAUZGj/9TQIqeVx9UVJK83LsW7TiGduPQyhZLn./HM0K', 1, NULL, '2020-08-25 20:37:05', '2020-08-25 20:37:05'),
(7, 'Test3', 'test3@gmail.com', NULL, '$2y$10$XYvdBvzVbtZfl3pupUpqY.U0luFKb6lWxQbkhzUR7O.RNUEWA2B5O', NULL, NULL, '2020-09-21 19:53:16', '2020-09-21 19:57:50'),
(15, 'test5', 'test5@gmail.com', NULL, '$2y$10$g1tPsParM1ey9arp4JbNSu/pObQ5llCi5DJLZIEeF2l7yDtIu5DNe', NULL, NULL, '2020-09-21 20:50:28', '2020-09-21 20:50:28'),
(16, 'test6', 'test6@gmail.com', NULL, '$2y$10$/hw.yhtbRnc7tL7bo/.8FOXPN30HOqlmeKTaZT3nLdDybqG.6cyi2', NULL, NULL, '2020-09-21 20:51:15', '2020-09-21 20:51:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `id_category_parent` (`id_category_parent`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sales_person` (`id_sales_person`),
  ADD KEY `id_assisted_by` (`id_assisted_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model` (`model`),
  ADD KEY `product_category` (`id_category`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sales_person` (`id_sales_person`),
  ADD KEY `id_assisted_by` (`id_assisted_by`),
  ADD KEY `id_mode_payment` (`id_mode_payment`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `sales_people`
--
ALTER TABLE `sales_people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `sales_products`
--
ALTER TABLE `sales_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sale` (`id_sale`),
  ADD KEY `id_product` (`id_product`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sales_people`
--
ALTER TABLE `sales_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_category_parent`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_category` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`id_sales_person`) REFERENCES `sales_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`id_assisted_by`) REFERENCES `sales_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sales_ibfk_4` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sales_products`
--
ALTER TABLE `sales_products`
  ADD CONSTRAINT `sales_products_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `sales_products_ibfk_2` FOREIGN KEY (`id_sale`) REFERENCES `sales` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
