-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 18, 2024 at 03:33 PM
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
  `level` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `id_category_parent`, `level`, `created_at`, `updated_at`) VALUES
(1, 'Igloo Product', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(2, 'Cooking Equipment', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(3, 'Refrigeration Equipment', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(4, 'Beverage Equipment', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(5, 'Dough Preparation', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(6, 'Meat Preparation', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(7, 'Food Preparation', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(8, 'Heated & Holding Equipment', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(9, 'Dishwashing', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(10, 'Sinks, Shelvs & S/S Products', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(11, 'Ice Machines', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(12, 'Smallwares', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(13, 'Certified Used Equipment', NULL, 1, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(14, 'Pastry Display Case', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(15, 'Deli Meat & Fish Display Case', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(16, 'Open Merchandisers', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(17, 'Display Freezers', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(18, 'Cold Display Cases', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(19, 'Heated Display Cases', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(20, 'Counter-top Display Cases', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(21, 'Counters', 1, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(22, 'Ranges', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(23, 'Burners & Inductions', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(24, ' Fryers', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(25, 'Griddles', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(26, ' Charbroilers', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(27, 'Broilers, Panini Press & Toasters', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(28, 'Commercial Ovens', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(29, 'Steamers', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(30, 'Smokers', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(31, 'Outdoor Equipment', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(32, 'Kettles & Cookers', 2, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(33, 'Reach-in Refrigerators', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(34, 'Reach-in Freezers', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(35, 'Glass Door Merchandisers', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(36, 'Undercounters', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(37, 'Bar Fridges & Chillers', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(38, 'Salad Preparation Tables', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(39, 'Open Merchandisers', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(40, 'Chef Base', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(41, 'Ice Cream/Gelato Freezers', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(42, 'Refrigerated Display Cases', 3, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(43, 'Coffee Machines & Accessories', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(44, 'Espresso Machines', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(45, 'Slush Machines', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(46, 'Beer Dispensers', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(47, 'Cold Beverage Dispensers & Juicers', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(48, 'Hot Beverage Dispenser & Urn', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(49, 'Beverage Blenders', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(50, 'Coffee Grinders', 4, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(51, 'Dough Mixers', 5, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(52, 'Dough Sheeters', 5, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(53, 'Dough Dividers', 5, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(54, 'Dough Rounders', 5, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(55, 'Proofers', 5, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(56, 'Meat Slicers', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(57, 'Meat Saws', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(58, ' Meat Grinders & Dicers', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(59, 'Meat Mixers', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(60, 'Vacuum Tumblers', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(61, 'Sausage Stuffers', 6, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(62, 'Food Processors', 7, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(63, 'Blenders', 7, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(64, 'Immersion Blenders', 7, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(65, 'Scales', 7, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(66, 'Packaging & Vacuum Sealers', 7, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(67, 'Steam Tables', 8, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(68, 'Food Warmers', 8, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(69, 'Heated/Holding Cabinets & Carts', 8, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(70, 'Strip Heaters', 8, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(71, 'Non-Refrigerated Merchandisers & Cases', 8, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(72, 'Dishwashers', 9, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(73, 'Glass Washers', 9, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(74, 'Booster Heaters', 9, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(75, 'Dish Tables', 9, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(76, 'Work Tables', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(77, 'Pot Sinks', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(78, 'Cabinets', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(79, 'Shelves', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(80, 'Equipment Stands', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(81, 'Hand Sinks', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(82, 'Faucet & Sink Accessories', 10, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(83, 'Ice Machines', 11, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(84, 'Ice Bins and Storages', 11, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(85, 'Kitchenwares', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(86, 'Bakeware', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(87, 'Beverage & Bar Supplies', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(88, 'Textile & Clothing', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(89, 'Janitorial', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(90, 'Cutlery & Tableware', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(91, 'Signage', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(92, 'Serving & Buffet Supplies', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(93, 'Furniture', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(94, 'Transportation & Storage', 12, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(95, 'Cooking Equipment - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(96, 'Beverage Equipment - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(97, 'Refrigeration - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(98, 'Displays - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(99, 'Food Preparation - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(100, 'Dish & Glass Washer - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(101, 'S/S Products & Others - Used', 13, 2, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(102, 'Refrigerated', 14, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(103, 'Dry', 14, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(104, 'Deli Display Case', 15, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(105, 'Meat Display Case', 15, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(106, 'Fish Display Case', 15, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(107, 'Gelato Freezers', 17, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(108, 'Island/Bunker Freezers', 17, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(109, 'Broiler & Shawarma Machine', 27, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(110, 'Panini Grill & Press', 27, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(111, 'Toaster', 27, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(112, 'Salamanders & Cheese Melter', 27, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(113, 'Convection Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(114, 'Deck Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(115, 'Combi Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(116, 'Rotisserie Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(117, 'Rotary & Revolving Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(118, 'Cook & Holding Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(119, 'Microwave Oven', 28, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(120, 'Gas Smokers', 30, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(121, 'Electric Smokers', 30, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(122, 'Outdoor Smokers', 30, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(123, 'Sliding Door Refrigerator', 35, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(124, 'Swing Door Refrigerator', 35, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(125, 'Swing Door Freezer', 35, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(126, 'Standard Sandwich Table', 38, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(127, 'Mega-Top Sandwich Table', 38, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00'),
(128, 'Pizza Preparation', 38, 3, '2020-09-23 04:00:00', '0000-00-00 00:00:00');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `business_name`, `phone`, `email`, `address`, `created_at`, `updated_at`) VALUES
(2, 'Antenor de Oliveira Queiroz', 'Hooka Bruvs', '6587468989', 'antenor@asdasdas.com', '145 kjhas das, kjaskdas', '2020-09-10 04:00:00', '2020-09-10 04:00:00'),
(3, 'Mary Silva', 'Business Name', '99999999', 'mary@gmail.com', '15 Mary Street, A5S 5DT', '2020-09-11 19:41:44', '2020-09-29 18:56:45'),
(5, 'Patrycja', 'Paty Restaurant', '9887546', 'patrycja@restaurant.com', '158 Eglinton West, M25 1O8', '2020-09-11 22:14:51', '2020-09-29 18:55:43'),
(6, 'John Carl Suang Ford', 'Kabob Delicious', '+16478048099', 'johncarl@gmail.com', '1985 Shaughnessy Boulevard Drive, Toronto, M2J 1k8', '2020-09-23 18:21:50', '2020-09-23 18:21:50'),
(7, 'Pitter schruch Lafaiettee', 'Restaurant Greek', '+1987564288', 'pitter2@gmail.com', '185 name of stree, Toronto, MKU 14S', '2020-09-23 19:05:53', '2020-09-23 19:49:09');

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
('antenor@igloo400.com', '$2y$10$fZungFOEvoCwNOrxgyUsiucgNfbVUJXeWSSuk5UvNnb/gm3LyJLKq', '2023-06-23 21:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) DEFAULT NULL,
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
(6, 16, '1OM', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers IGLO O 27\" D Slim Line M ulti-Deck Open Mer chandisers IGLO O 27\"D Slim Line Multi-Deck Open Merchandisers', '15000.00', '12000.00', '/storage/1OM.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_1OM.pdf', 'IGLOO 27\"D Slim Line Multi-Deck Open Merchandisers', '2020-08-20 00:48:02', '2020-09-28 22:49:03'),
(8, 87, 'M2SCD', 'IGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', 'IGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', '12000.00', '11000.00', '/storage/M2SCD.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_M2SCD.pdf', 'GlassIGLOO 33\"D Deli Meat Cheese & Salad, Straight Glass', '2020-08-20 20:21:47', '2020-09-28 22:51:04'),
(9, 36, 'JMDWP', 'IGLOO Dry Pastry Cases, Wood Finish', 'Cherry wood finish\r\nBack sliding door with double insulated glass (JMDWP3, JMDWP4)\r\nBack door with double insulated glass (JMDWP2)\r\nCurved, high-movable front glass\r\nDisplay shelves (height/angle adjustable)\r\nLED lights on each shelf\r\nAdjustable legs', '12000.00', '8000.00', '/storage/JMDWP.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_JMDWP.pdf', 'Cherry wood finish Back sliding door with do asdja jdja djad kajdl', '2020-08-21 18:53:06', '2020-09-28 22:52:36'),
(10, 96, 'JMDTP', 'IGLOO Dry Pastry Cases, Painted Enamel Finish', 'IGLOO Dry Pastry Cases, Painted Enamel Finish IGLOO Dry Pastry Cases, Painted Enamel Finish IGLOO Dry Pastry Cases, Painted Enamel Finish', '15000.00', '12000.00', '/storage/JMDTP.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_JMDTP.pdf', 'IGLOO Dry Pastry Cases, Painted Enamel FinishIGLOO Dry Pastry Cases, Painted Enamel Finish', '2020-08-21 19:00:43', '2020-09-28 22:52:25'),
(11, 13, 'BSCD', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', '8500.10', '7500.10', '/storage/BSCD.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_BSCD.pdf', 'IGLOO 46\"D Deli Meat Cheese & Salad Case, Curved Glass', '2020-08-21 19:03:07', '2020-09-28 22:52:04'),
(12, 124, 'SANFID', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front GlassIGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', '15000.00', '14000.00', '/storage/SANFID.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_SANFID.pdf', 'IGLOO 47\"D Fresh Fish Cases, Lift-up Front Glass', '2020-08-21 19:04:54', '2020-09-28 22:52:14'),
(13, 63, '2OM', 'IGLOO 33\"D High Profile Multi-Deck Open Merchandisers', 'IGLOO 33\"D High Profile Multi-Deck Open MerchandisersIGLOO 33\"D High Profile Multi-Deck Open MerchandisersIGLOO 33\"D High Profile Multi-Deck Open Merchandisers', '20000.00', '19000.00', '/storage/2OM.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_2OM.pdf', 'IGLOO 33\"D High Profile Multi-Deck Open Merchandisers', '2020-08-21 19:06:29', '2020-09-28 22:51:47'),
(14, 78, '2582', 'PITCO Tube Fired Gas Fryer', 'PITCO Tube Fired Gas FryerPITCO Tube Fired Gas FryerPITCO Tube Fired Gas FryerPITCO Tube Fired Gas Fryer', '3000.00', '2500.00', '/storage/2582.jpeg', 'https://www.igloofoodequipment.com/files/20171130124655_Pitco_VF35.pdf', 'PITCO Tube Fired Gas FryerPITCO Tube Fired Gas Fryer', '2020-08-21 21:31:39', '2020-09-28 22:54:14'),
(15, 111, 'KBSR-3', 'KOOL-IT Triple Door Bottom Mount Refrigerators', 'KOOL-IT Triple Door Bottom Mount RefrigeratorsKOOL-IT Triple Door Bottom Mount RefrigeratorsKOOL-IT Triple Door Bottom Mount Refrigerators', '17500.00', '15500.00', '/storage/KBSR-3.png', 'https://www.igloofoodequipment.com/files/20180406115438_KBSR3-KBSF3-spec%20(1).pdf', 'KOOL-IT Triple Door Bottom Mount Refrigerators', '2020-08-21 21:46:47', '2020-09-28 22:53:29'),
(16, 12, 'KGF-23', 'KOOL-IT Single Glass Door Freezers', 'KOOL-IT Single Glass Door FreezersKOOL-IT Single Glass Door Freezers', '14000.00', '11000.00', '/storage/KGF-23.jpeg', 'https://www.igloofoodequipment.com/files/20180409100525_20180328160740_KGF-spec.pdf', 'KOOL-IT Single Glass Door FreezersKOOL-IT Single Glass Door Freezers', '2020-08-21 21:51:56', '2020-09-28 22:53:40'),
(17, 49, '2612', 'PITCO Drop-in Gas Fryers', 'PITCO Drop-in Gas Fryers PITCO Drop-in Gas Fryers PITCO Drop-in Gas FryersPITCO Drop-in Gas Fryers', '7500.00', '5000.00', '/storage/2612.jpeg', 'https://www.igloofoodequipment.com/files/20171130120937_PIT0274.pdf', 'PITCO Drop-in Gas FryersPITCO Drop-in Gas Fryers', '2020-08-21 21:55:01', '2020-09-28 22:54:03'),
(27, 85, 'Test', 'Test Open Merchandiser', 'Test Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open Merchandiser', '12000.00', '10000.00', '/storage/Test.jpeg', 'https://www.igloofoodequipment.com/files/IGLOO_1OM.pdf', 'Test Open MerchandiserTest Open MerchandiserTest Open MerchandiserTest Open Merchandiser', '2020-09-16 00:12:34', '2020-09-28 22:55:34');

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
(15, 2, 2, 1, '2020-09-11', 1, '2020-09-17 23:52:04', '2020-09-17 23:52:04'),
(16, 3, 2, 1, '2020-09-12', 3, '2020-09-18 00:00:16', '2020-09-18 00:00:16'),
(18, 2, 2, 1, '2020-09-18', 1, '2020-09-18 16:47:40', '2020-09-18 16:47:40'),
(20, 3, 2, 2, '2020-09-11', 1, '2020-09-21 22:18:27', '2020-09-21 22:18:27'),
(21, 5, 2, 2, '2020-09-11', 1, '2020-09-21 22:25:27', '2020-09-21 22:25:27'),
(23, 6, 5, 9, '2020-09-12', 1, '2020-10-02 20:46:36', '2020-10-02 20:46:36'),
(26, 3, 1, 3, '2023-02-02', 1, '2023-06-23 20:50:19', '2023-06-23 20:50:19'),
(27, 3, 3, 1, '2023-02-02', 1, '2023-06-23 21:00:31', '2023-06-23 21:00:31'),
(28, 6, 5, 9, '2023-02-02', 1, '2023-08-25 18:08:11', '2023-08-25 18:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `sales_people`
--

CREATE TABLE `sales_people` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_people`
--

INSERT INTO `sales_people` (`id`, `name`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Mike', '99999999999', 'mike@igloo400.com', '2020-09-10 04:00:00', '2020-09-29 00:10:00'),
(2, 'Amir', '99999999999', 'amir@igloo400.com', '2020-09-11 04:00:00', '2020-09-29 00:10:05'),
(3, 'Morteza', '999999999', 'morteza@igloo400.com', '2020-09-25 22:25:36', '2020-09-29 00:09:54'),
(4, 'Yueqi', '6478049999', 'yueqi@igloo400.com', '2020-09-28 23:15:04', '2020-09-29 00:09:47'),
(5, 'Edward', '99999999999', 'edward@igloo400.com', '2020-09-29 00:10:20', '2020-09-29 00:10:20'),
(6, 'Mohamed', '9999999999', 'mohamed@igloo400.com', '2020-09-29 00:10:33', '2020-09-29 00:10:33'),
(7, 'Peter', '9999999999', 'peter@igloo400.com', '2020-09-29 00:11:05', '2020-09-29 00:11:05'),
(8, 'Mary', '999999999999', 'mary@igloo400.com', '2020-09-29 00:12:44', '2020-09-29 00:12:44'),
(9, 'Hun Park', '99999999999', 'admin@igloo400.com', '2020-09-29 00:13:16', '2020-09-29 00:13:16');

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
(12, 21, 13, 10),
(15, 23, 13, 1),
(16, 23, 15, 1),
(17, 23, 27, 1),
(18, 26, 15, 1),
(19, 26, 16, 1),
(20, 27, 6, 2),
(21, 27, 8, 1),
(22, 27, 13, 1),
(23, 28, 6, 2),
(24, 28, 8, 2),
(25, 28, 13, 2);

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
(4, 'Antenor Queiroz', 'antenor@igloo400.com', NULL, '$2y$10$/Eogk0cNeTstPZqDna9.tu3O3CNiDuLyGd6IyUiVAWF3V4cirksrW', 1, '71yVcfTHPZoCc7T3oYBgZb3gIsPmUbEpOaFU6GpPMVo5j8Wz4JCEMQvkuJw3', '2020-08-18 21:02:24', '2020-08-18 21:02:24'),
(5, 'Amir', 'amir@igloo400.com', NULL, '$2y$10$U9toCpwR02MCZCYGWn8J1.Hf/6GtW/nJsXtlFSXJyMzd87dEbJtw2', 1, NULL, '2020-08-21 19:16:53', '2020-08-21 19:16:53'),
(6, 'Hun Park', 'admin@igloo400.com', NULL, '$2y$10$nzRWHlGA9pAUZGj/9TQIqeVx9UVJK83LsW7TiGduPQyhZLn./HM0K', 1, NULL, '2020-08-25 20:37:05', '2020-08-25 20:37:05'),
(17, 'Mike', 'mike@igloo400.com', NULL, '$2y$10$0VTfr8zlUULkxF6q79C6/upofyvXhkcZk4aCSIxQM2Eio2TkWnpgi', NULL, NULL, '2020-09-28 22:59:09', '2020-09-29 21:26:40'),
(18, 'Morteza', 'morteza@igloo400.com', NULL, '$2y$10$jPO6EEidBcxfBLOywb743ubvNJXXpClEtcXJboxT7Dw1f7jyAlCMy', NULL, NULL, '2020-09-28 23:03:25', '2020-09-28 23:03:25'),
(19, 'Yuqui', 'yueqi@igloo400.com', NULL, '$2y$10$86ukMiDNC6iqzsRhZCc0p.50J8E8sHzU0Z05LgzjsnY7DmPXlHHEG', NULL, NULL, '2020-09-28 23:05:38', '2020-09-28 23:05:38'),
(20, 'Edward', 'edward@igloo400.com', NULL, '$2y$10$VlT/VlCELpipLOtx5Y7aAOaFGIkarSVAPxumAOXa.SlucxoP0kfXO', NULL, NULL, '2020-09-28 23:08:30', '2020-09-29 00:11:34'),
(21, 'Mohamed', 'mohamed@igloo400.com', NULL, '$2y$10$sB9LDONInibDofqa/J0ONu7rKb7nvwCEIq1DWqwemcKuwbN6kIK9G', NULL, NULL, '2020-09-28 23:09:38', '2020-09-28 23:09:38'),
(22, 'Peter', 'peter@igloo400.com', NULL, '$2y$10$SQaEkbarQ4LWlFlHm7mWq.TzMPUTT9QNJiY/bvkwmgt3R8XTFYEgC', NULL, NULL, '2020-09-29 00:11:54', '2020-09-29 00:11:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category_parent` (`id_category_parent`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sales_people`
--
ALTER TABLE `sales_people`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales_products`
--
ALTER TABLE `sales_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

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
