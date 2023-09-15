-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2023 at 04:52 AM
-- Server version: 10.3.38-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sassolut_getitdone`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_bank`
--

CREATE TABLE `add_bank` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `iban_number` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_bank`
--

INSERT INTO `add_bank` (`bank_id`, `bank_name`, `iban_number`, `created_at`) VALUES
(1, 'UBL Ltd', 'PK65BAHL0000001123456702', '2023-01-04 10:03:40'),
(2, 'Bank Al-Habib Ltd', 'PK14 2004 1010 0505 0001 3M02 606 ', '2023-01-05 09:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `add_bank_details`
--

CREATE TABLE `add_bank_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `iban_number` text NOT NULL,
  `account_holder_name` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_bank_details`
--

INSERT INTO `add_bank_details` (`id`, `user_id`, `bank_name`, `iban_number`, `account_holder_name`, `created_at`) VALUES
(20, 145, 'test bank', '1111111111111111', 'test bank', '2023-02-22 08:20:27');

-- --------------------------------------------------------

--
-- Table structure for table `extras`
--

CREATE TABLE `extras` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `cost` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `extras`
--

INSERT INTO `extras` (`id`, `title`, `cost`) VALUES
(3, 'Delivery Charges', 50);

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) NOT NULL,
  `icon_name` varchar(255) NOT NULL,
  `icon_type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `icon_name`, `icon_type`, `title`) VALUES
(1, 'shopping-cart', 'Entypo', 'Pick Grocery'),
(4, 'cocktail', 'FontAwesome5', 'Pick Cocktail'),
(5, 'coffee', 'Feather', 'Pick Coffee'),
(7, 'capsules', 'FontAwesome5', 'Pick Medicine'),
(8, 'fast-food', 'Ionicons', 'Pick Food'),
(9, 'mobile', 'Fontisto', 'Pick Mobile'),
(11, 'book', 'Entypo', 'Pick Book'),
(12, 'truck', 'truck', 'Goods Transport ');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `m_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `reciever_id` int(11) DEFAULT NULL,
  `Data` text DEFAULT NULL,
  `last_message` text DEFAULT NULL,
  `is_read` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `user_id`, `title`, `description`, `date`, `time`) VALUES
(134, 130, '1662053052_202301142302', 'Dear customer your account has been debited with $52 for your order.', '2023-01-14', '11:23:02'),
(135, 131, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '11:23:02'),
(136, 130, '2074807351_202301142745', 'Dear customer your account has been debited with $64 for your order.', '2023-01-14', '11:27:45'),
(137, 133, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '11:27:45'),
(138, 130, '746312971_202301143041', 'Dear customer your account has been debited with $54 for your order.', '2023-01-14', '11:30:41'),
(139, 133, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '11:30:41'),
(140, 130, '825259723_202301145240', 'Dear customer your account has been debited with $52 for your order.', '2023-01-14', '11:52:40'),
(141, 133, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '11:52:41'),
(142, 130, '1707935804_202301145714', 'Dear customer your account has been debited with $52 for your order.', '2023-01-14', '11:57:14'),
(143, 134, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '11:57:14'),
(144, 135, '1586666387_202301141350', 'Dear customer your account has been debited with $72 for your order.', '2023-01-14', '12:13:50'),
(145, 136, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '12:13:50'),
(146, 135, '1368102367_202301140210', 'Dear customer your account has been debited with $52 for your order.', '2023-01-14', '13:02:10'),
(147, 136, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '13:02:10'),
(148, 135, '683615528_202301140215', 'Dear customer your account has been debited with $83 for your order.', '2023-01-14', '13:02:15'),
(149, 131, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '13:02:15'),
(150, 130, '356547191_202301140919', 'Dear customer your account has been debited with $51 for your order.', '2023-01-14', '16:09:19'),
(151, 138, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '16:09:20'),
(152, 130, '677765340_202301142530', 'Dear customer your account has been debited with $182 for your order.', '2023-01-14', '16:25:30'),
(153, 138, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '16:25:30'),
(154, 130, '2003653189_202301143027', 'Dear customer your account has been debited with $60 for your order.', '2023-01-14', '17:30:27'),
(155, 138, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '17:30:27'),
(156, 130, '2013625967_202301143443', 'Dear customer your account has been debited with $62 for your order.', '2023-01-14', '17:34:43'),
(157, 138, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-14', '17:34:43'),
(158, 141, '615500785_202301164356', 'Dear customer your account has been debited with $150 for your order.', '2023-01-16', '09:43:56'),
(159, 142, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '09:43:56'),
(160, 139, '1449649640_202301164813', 'Dear customer your account has been debited with $61 for your order.', '2023-01-16', '10:48:13'),
(161, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '10:48:13'),
(162, 139, '1011589411_202301165502', 'Dear customer your account has been debited with $51 for your order.', '2023-01-16', '10:55:02'),
(163, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '10:55:03'),
(164, 139, '412369251_202301164000', 'Dear customer your account has been debited with $70 for your order.', '2023-01-16', '11:40:00'),
(165, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '11:40:00'),
(166, 139, '449192076_202301164315', 'Dear customer your account has been debited with $51 for your order.', '2023-01-16', '11:43:15'),
(167, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '11:43:15'),
(168, 139, '1884398418_202301164518', 'Dear customer your account has been debited with $62 for your order.', '2023-01-16', '11:45:18'),
(169, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '11:45:18'),
(170, 139, '1295691595_202301165025', 'Dear customer your account has been debited with $62 for your order.', '2023-01-16', '11:50:25'),
(171, 140, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '11:50:25'),
(172, 143, '2084495730_202301160516', 'Dear customer your account has been debited with $280 for your order.', '2023-01-16', '13:05:16'),
(173, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '13:05:17'),
(174, 143, '1640369876_202301161704', 'Dear customer your account has been debited with $70 for your order.', '2023-01-16', '13:17:04'),
(175, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '13:17:04'),
(176, 143, '2139912396_202301163044', 'Dear customer your account has been debited with $100 for your order.', '2023-01-16', '13:30:44'),
(177, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '13:30:44'),
(178, 143, '1892511222_202301163808', 'Dear customer your account has been debited with $200 for your order.', '2023-01-16', '13:38:08'),
(179, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '13:38:08'),
(180, 143, '1595834646_202301163833', 'Dear customer your account has been debited with $130 for your order.', '2023-01-16', '13:38:33'),
(181, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '13:38:33'),
(182, 143, '1826576768_202301160026', 'Dear customer your account has been debited with $62 for your order.', '2023-01-16', '14:00:26'),
(183, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:00:26'),
(184, 143, '1317263908_202301164305', 'Dear customer your account has been debited with $160 for your order.', '2023-01-16', '14:43:05'),
(185, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:43:05'),
(186, 143, '1161649324_202301164521', 'Dear customer your account has been debited with $62 for your order.', '2023-01-16', '14:45:21'),
(187, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:45:22'),
(188, 143, '73680768_202301165024', 'Dear customer your account has been debited with $130 for your order.', '2023-01-16', '14:50:24'),
(189, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:50:25'),
(190, 143, '1436389677_202301165250', 'Dear customer your account has been debited with $65 for your order.', '2023-01-16', '14:52:50'),
(191, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:52:50'),
(192, 143, '2097450861_202301165454', 'Dear customer your account has been debited with $70 for your order.', '2023-01-16', '14:54:54'),
(193, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:54:54'),
(194, 143, '1598765831_202301165628', 'Dear customer your account has been debited with $60 for your order.', '2023-01-16', '14:56:28'),
(195, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '14:56:29'),
(196, 143, '1485978522_202301160439', 'Dear customer your account has been debited with $60 for your order.', '2023-01-16', '15:04:39'),
(197, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:04:40'),
(198, 143, '1400863406_202301160822', 'Dear customer your account has been debited with $62 for your order.', '2023-01-16', '15:08:22'),
(199, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:08:22'),
(200, 143, '244615344_202301160925', 'Dear customer your account has been debited with $90 for your order.', '2023-01-16', '15:09:25'),
(201, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:09:25'),
(202, 143, '2002717386_202301161416', 'Dear customer your account has been debited with $80 for your order.', '2023-01-16', '15:14:16'),
(203, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:14:16'),
(204, 143, '1109833437_202301161416', 'Dear customer your account has been debited with $80 for your order.', '2023-01-16', '15:14:16'),
(205, 144, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:14:17'),
(206, 146, '2099264350_202301162427', 'Dear customer your account has been debited with $70 for your order.', '2023-01-16', '15:24:27'),
(207, 145, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:24:27'),
(208, 149, '395649131_202301165252', 'Dear customer your account has been debited with $150 for your order.', '2023-01-16', '15:52:52'),
(209, 148, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '15:52:52'),
(210, 149, '386226425_202301164219', 'Dear customer your account has been debited with $105 for your order.', '2023-01-16', '16:42:19'),
(211, 150, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '16:42:19'),
(212, 149, '1686138623_202301164733', 'Dear customer your account has been debited with $100 for your order.', '2023-01-16', '16:47:33'),
(213, 150, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '16:47:34'),
(214, 149, '940143579_202301164457', 'Dear customer your account has been debited with $150 for your order.', '2023-01-16', '17:44:57'),
(215, 150, 'Order Completion', 'Dear rider, customer has marked your job as completed.', '2023-01-16', '17:44:58'),
(216, 145, 'Withdraw Request', 'You have successfully requested to withdraw funds of $10. Let the App admin to approve your request.', '2023-02-22', '07:20:42');

-- --------------------------------------------------------

--
-- Table structure for table `revenue`
--

CREATE TABLE `revenue` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `revenue`
--

INSERT INTO `revenue` (`id`, `rider_id`, `amount`, `created_at`) VALUES
(32, 134, '52', '2023-01-14 12:57:14'),
(33, 136, '72', '2023-01-14 13:13:50'),
(34, 136, '52', '2023-01-14 14:02:10'),
(35, 131, '83', '2023-01-14 14:02:15'),
(36, 138, '51', '2023-01-14 17:09:19'),
(37, 138, '182', '2023-01-14 17:25:30'),
(38, 138, '60', '2023-01-14 18:30:27'),
(39, 138, '62', '2023-01-14 18:34:43'),
(40, 142, '150', '2023-01-16 10:43:56'),
(41, 140, '61', '2023-01-16 11:48:13'),
(42, 140, '51', '2023-01-16 11:55:02'),
(43, 140, '70', '2023-01-16 12:40:00'),
(44, 140, '51', '2023-01-16 12:43:15'),
(45, 140, '62', '2023-01-16 12:45:18'),
(46, 140, '62', '2023-01-16 12:50:25'),
(47, 144, '280', '2023-01-16 14:05:16'),
(48, 144, '70', '2023-01-16 14:17:04'),
(49, 144, '100', '2023-01-16 14:30:44'),
(50, 144, '200', '2023-01-16 14:38:08'),
(51, 144, '130', '2023-01-16 14:38:33'),
(52, 144, '62', '2023-01-16 15:00:26'),
(53, 144, '160', '2023-01-16 15:43:05'),
(54, 144, '62', '2023-01-16 15:45:21'),
(55, 144, '130', '2023-01-16 15:50:24'),
(56, 144, '65', '2023-01-16 15:52:50'),
(57, 144, '70', '2023-01-16 15:54:54'),
(58, 144, '60', '2023-01-16 15:56:28'),
(59, 144, '60', '2023-01-16 16:04:39'),
(60, 144, '62', '2023-01-16 16:08:22'),
(61, 144, '90', '2023-01-16 16:09:25'),
(62, 144, '80', '2023-01-16 16:14:16'),
(63, 144, '80', '2023-01-16 16:14:16'),
(64, 145, '70', '2023-01-16 16:24:27'),
(65, 148, '150', '2023-01-16 16:52:52'),
(66, 150, '105', '2023-01-16 17:42:19'),
(67, 150, '100', '2023-01-16 17:47:33'),
(68, 150, '150', '2023-01-16 18:44:57');

-- --------------------------------------------------------

--
-- Table structure for table `rider_earning`
--

CREATE TABLE `rider_earning` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rider_earning`
--

INSERT INTO `rider_earning` (`id`, `rider_id`, `amount`, `created_at`) VALUES
(59, 144, '25', '2023-01-16 16:09:25'),
(60, 144, '25', '2023-01-16 16:14:16'),
(61, 144, '25', '2023-01-16 16:14:17'),
(62, 145, '25', '2023-01-16 16:24:27'),
(63, 148, '25', '2023-01-16 16:52:52'),
(64, 150, '25', '2023-01-16 17:42:19'),
(65, 150, '25', '2023-01-16 17:47:34'),
(66, 150, '25', '2023-01-16 18:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `rider_share`
--

CREATE TABLE `rider_share` (
  `id` int(11) NOT NULL,
  `share_percentage` varchar(255) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rider_share`
--

INSERT INTO `rider_share` (`id`, `share_percentage`, `created_at`) VALUES
(2, '0.5', '2023-01-13');

-- --------------------------------------------------------

--
-- Table structure for table `rider_status`
--

CREATE TABLE `rider_status` (
  `id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'idle',
  `tracking` varchar(255) NOT NULL DEFAULT 'no',
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rider_status`
--

INSERT INTO `rider_status` (`id`, `rider_id`, `status`, `tracking`, `latitude`, `longitude`) VALUES
(171, 145, 'idle', 'no', '24.9050486', '67.0784773'),
(172, 148, 'idle', 'no', '24.9097713', '67.085494'),
(173, 150, 'idle', 'no', '24.863132', '67.0538196'),
(174, 153, 'idle', 'no', NULL, NULL),
(175, 154, 'engaged', 'no', '24.9097702', '67.0854782'),
(176, 160, 'idle', 'no', NULL, NULL),
(177, 161, 'engaged', 'no', '24.9050336', '67.0784863');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dropoff_location` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'pending',
  `created_at` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `user_id`, `dropoff_location`, `latitude`, `longitude`, `status`, `created_at`) VALUES
(234, 146, 'Osofo Street Accra, Ghana', '5.569549599999999', '-0.211524', 'completed', '2023-01-16 16:22:26'),
(235, 149, 'SMCHS Block A Block A Sindhi Muslim CHS (SMCHS), Karachi, Pakistan', '24.8614224', '67.0546506', 'completed', '2023-01-16 16:45:17'),
(236, 149, 'SMCHS Block A Block A Sindhi Muslim CHS (SMCHS), Karachi, Pakistan', '24.8614224', '67.0546506', 'completed', '2023-01-16 17:37:22'),
(237, 149, 'Downtown Houston Houston, TX, USA', '29.7559698', '-95.3573194', 'completed', '2023-01-16 17:46:49'),
(238, 149, 'Downtown Houston Houston, TX, USA', '29.7559698', '-95.3573194', 'completed', '2023-01-16 18:40:10'),
(239, 147, 'MALIOBORO JOGJAKARTA Jalan Malioboro, Sosromenduran, Yogyakarta City, Special Region of Yogyakarta, Indonesia', '-7.7925764', '110.365843', 'inprogress', '2023-02-12 18:54:41'),
(240, 159, 'Costco Wholesale Haleakala Highway, Kahului, HI, USA', '20.887121', '-156.4507725', 'inprogress', '2023-02-25 09:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `task_details`
--

CREATE TABLE `task_details` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `estimated_cost` varchar(255) NOT NULL,
  `additional_cost` varchar(255) NOT NULL DEFAULT '0',
  `pickup_location` varchar(255) NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `menu_item_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task_details`
--

INSERT INTO `task_details` (`id`, `task_id`, `title`, `name`, `description`, `estimated_cost`, `additional_cost`, `pickup_location`, `latitude`, `longitude`, `menu_item_id`, `status`) VALUES
(283, 234, 'Pick Grocery', 'Grocery', 'test', '10', '10', 'Imtiaz Supermarket Shaheed-e-Millat Road, Bahadurabad Bahadur Yar Jang CHS, Karachi, Pakistan', '24.8831438', '67.0703903', 1, 'completed'),
(284, 235, 'Pick Medicine', 'Panadol ', 'Panadol extra ', '100', '0', 'Gulshan-e-Iqbal Karachi, Pakistan', '24.9180271', '67.0970916', 7, 'completed'),
(285, 236, 'Pick Book', 'Abc', 'Text book', '50', '5', 'SMCHS Sindhi Muslim CHS (SMCHS), Karachi, Pakistan', '24.8582833', '67.0568846', 11, 'completed'),
(286, 237, 'Pick Grocery', 'Big C', 'Milkpack', '50', '0', 'Houston TX, USA', '29.7604267', '-95.3698028', 1, 'completed'),
(287, 238, 'Pick Food', 'Cake ', 'Birthday ', '100', '0', 'Houston TX, USA', '29.7604267', '-95.3698028', 8, 'completed'),
(288, 239, 'Pick Grocery', 'test', 'text', '120', '0', 'Sydney NSW, Australia', '-33.8688197', '151.2092955', 1, 'inprogress'),
(289, 240, 'Pick Grocery', 'rice', 'brown rice', '12', '0', 'Walmart Showers Drive, Mountain View, CA, USA', '37.4010201', '-122.1092052', 1, 'inprogress');

-- --------------------------------------------------------

--
-- Table structure for table `task_log`
--

CREATE TABLE `task_log` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `rider_id` int(11) NOT NULL,
  `total_cost` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `task_log`
--

INSERT INTO `task_log` (`id`, `task_id`, `customer_id`, `rider_id`, `total_cost`, `created_at`) VALUES
(411, 234, 146, 145, '0', '2023-01-16 16:22:31'),
(412, 235, 149, 148, '0', '2023-01-16 16:45:58'),
(413, 236, 149, 150, '0', '2023-01-16 17:37:45'),
(414, 237, 149, 150, '0', '2023-01-16 17:47:13'),
(415, 238, 149, 150, '0', '2023-01-16 18:40:56'),
(416, 239, 147, 154, '0', '2023-02-21 18:09:25'),
(417, 240, 159, 161, '0', '2023-02-25 09:17:37');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `amount` float NOT NULL,
  `transaction_id` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `user_id`, `amount`, `transaction_id`, `type`, `created`) VALUES
(152, '158', 300, '2086269084_2313012212', 'credit', '2023-01-13 21:22:12'),
(153, '118', 72, '438132890_202301132323', 'debit', '2023-01-13 21:23:23'),
(154, '119', 25, '25923295_202301132324', 'credit', '2023-01-13 21:23:24'),
(155, '118', 55, '605469469_202301132551', 'debit', '2023-01-13 21:25:51'),
(156, '119', 25, '95621920_202301132552', 'credit', '2023-01-13 21:25:52'),
(157, '121', 1000, '1287475054_2313013958', 'credit', '2023-01-13 21:39:58'),
(158, '121', 75, '978025579_202301134532', 'debit', '2023-01-13 21:45:32'),
(159, '120', 25, '1289214177_202301134532', 'credit', '2023-01-13 21:45:32'),
(160, '115', 10, '1534532125_2314011736', 'credit', '2023-01-14 08:17:36'),
(161, '115', 72, '467354580_202301143057', 'debit', '2023-01-14 08:30:57'),
(162, '114', 25, '494344266_202301143057', 'credit', '2023-01-14 08:30:57'),
(163, '115', 73, '1955691975_202301143802', 'debit', '2023-01-14 08:38:02'),
(164, '115', 73, '251971887_202301143803', 'debit', '2023-01-14 08:38:03'),
(165, '115', 73, '1154301718_202301143818', 'debit', '2023-01-14 08:38:18'),
(166, '115', 73, '942812951_202301143821', 'debit', '2023-01-14 08:38:21'),
(167, '115', 73, '1792132011_202301143845', 'debit', '2023-01-14 08:38:45'),
(168, '115', 73, '1998823369_202301143852', 'debit', '2023-01-14 08:38:52'),
(169, '115', 73, '1373168352_202301144014', 'debit', '2023-01-14 08:40:14'),
(170, '115', 73, '63940129_202301144341', 'debit', '2023-01-14 08:43:41'),
(171, '150', 25, '909018054_202301144341', 'credit', '2023-01-14 08:43:41'),
(172, '115', 162, '688556276_202301144608', 'debit', '2023-01-14 08:46:08'),
(173, '114', 25, '1581633841_202301144608', 'credit', '2023-01-14 08:46:08'),
(174, '123', 1000, '186629829_2314015946', 'credit', '2023-01-14 08:59:46'),
(175, '123', 74, '817059258_202301140411', 'debit', '2023-01-14 09:04:11'),
(176, '122', 25, '808174127_202301140411', 'credit', '2023-01-14 09:04:11'),
(177, '123', 60, '1522364865_202301140729', 'debit', '2023-01-14 09:07:29'),
(178, '122', 25, '1543580596_202301140729', 'credit', '2023-01-14 09:07:29'),
(179, '123', 60, '57022794_202301141537', 'debit', '2023-01-14 09:15:37'),
(180, '122', 25, '1428042893_202301141538', 'credit', '2023-01-14 09:15:38'),
(181, '123', 60, '1626445849_202301141844', 'debit', '2023-01-14 09:18:44'),
(182, '122', 25, '1044268366_202301141844', 'credit', '2023-01-14 09:18:44'),
(183, '124', 100, '1102383951_2314012057', 'credit', '2023-01-14 09:21:00'),
(184, '124', 76, '892380158_202301142253', 'debit', '2023-01-14 09:22:53'),
(185, '125', 25, '657663436_202301142254', 'credit', '2023-01-14 09:22:54'),
(186, '124', 100, '1013934661_2314012627', 'credit', '2023-01-14 09:26:27'),
(187, '124', 76, '2110536594_202301142632', 'debit', '2023-01-14 09:26:32'),
(188, '125', 25, '1915639298_202301142632', 'credit', '2023-01-14 09:26:32'),
(189, '124', 100, '1899968092_2314012906', 'credit', '2023-01-14 09:29:07'),
(190, '124', 51, '483774225_202301142909', 'debit', '2023-01-14 09:29:09'),
(191, '125', 25, '1760767439_202301142909', 'credit', '2023-01-14 09:29:09'),
(192, '126', 1000, '2000726913_2314011804', 'credit', '2023-01-14 10:18:04'),
(193, '126', 10, '2133348656_2314012104', 'credit', '2023-01-14 10:21:04'),
(194, '126', 10, '1736634750_2314012147', 'credit', '2023-01-14 10:21:47'),
(195, '126', 10, '410919154_2314012512', 'credit', '2023-01-14 10:25:12'),
(196, '126', 140, '364891974_2314012801', 'credit', '2023-01-14 10:28:01'),
(197, '126', 173, '1601014491_202301143006', 'debit', '2023-01-14 10:30:06'),
(198, '127', 25, '489608954_202301143007', 'credit', '2023-01-14 10:30:07'),
(199, '130', 1000, '623908681_2314012031', 'credit', '2023-01-14 11:20:31'),
(200, '130', 60, '246084836_202301142748', 'debit', '2023-01-14 11:27:48'),
(201, '129', 25, '1101902433_202301142748', 'credit', '2023-01-14 11:27:48'),
(202, '130', 60, '726520593_202301143147', 'debit', '2023-01-14 11:31:47'),
(203, '129', 25, '480496207_202301143147', 'credit', '2023-01-14 11:31:47'),
(204, '130', 52, '547779497_202301141736', 'debit', '2023-01-14 12:17:36'),
(205, '131', 25, '1411671674_202301141736', 'credit', '2023-01-14 12:17:36'),
(206, '130', 52, '1662053052_202301142302', 'debit', '2023-01-14 12:23:02'),
(207, '131', 25, '1452765162_202301142302', 'credit', '2023-01-14 12:23:02'),
(208, '130', 64, '2074807351_202301142745', 'debit', '2023-01-14 12:27:45'),
(209, '133', 25, '1771004227_202301142745', 'credit', '2023-01-14 12:27:45'),
(210, '130', 54, '746312971_202301143041', 'debit', '2023-01-14 12:30:41'),
(211, '133', 25, '1654302777_202301143041', 'credit', '2023-01-14 12:30:41'),
(212, '130', 52, '825259723_202301145240', 'debit', '2023-01-14 12:52:40'),
(213, '133', 25, '668732466_202301145241', 'credit', '2023-01-14 12:52:41'),
(214, '130', 52, '1707935804_202301145714', 'debit', '2023-01-14 12:57:14'),
(215, '134', 25, '1871830033_202301145714', 'credit', '2023-01-14 12:57:14'),
(216, '135', 2000, '1888173052_2314015922', 'credit', '2023-01-14 12:59:22'),
(217, '135', 72, '1586666387_202301141350', 'debit', '2023-01-14 13:13:50'),
(218, '136', 25, '345806689_202301141350', 'credit', '2023-01-14 13:13:50'),
(219, '135', 52, '1368102367_202301140210', 'debit', '2023-01-14 14:02:10'),
(220, '136', 25, '1815512477_202301140210', 'credit', '2023-01-14 14:02:10'),
(221, '135', 83, '683615528_202301140215', 'debit', '2023-01-14 14:02:15'),
(222, '131', 25, '12413424_202301140215', 'credit', '2023-01-14 14:02:15'),
(223, '137', 100, '1043463348_2314014925', 'credit', '2023-01-14 15:49:25'),
(224, '130', 51, '356547191_202301140919', 'debit', '2023-01-14 17:09:19'),
(225, '138', 25, '732671427_202301140920', 'credit', '2023-01-14 17:09:20'),
(226, '130', 182, '677765340_202301142530', 'debit', '2023-01-14 17:25:30'),
(227, '138', 25, '667729954_202301142530', 'credit', '2023-01-14 17:25:30'),
(228, '130', 60, '2003653189_202301143027', 'debit', '2023-01-14 18:30:27'),
(229, '138', 85, '283600967_202301143027', 'credit', '2023-01-14 18:30:27'),
(230, '130', 62, '2013625967_202301143443', 'debit', '2023-01-14 18:34:43'),
(231, '138', 25, '1025151041_202301143443', 'credit', '2023-01-14 18:34:43'),
(232, '139', 1000, '1204625543_2316015740', 'credit', '2023-01-16 09:57:40'),
(233, '141', 500, '240329232_2316012630', 'credit', '2023-01-16 10:26:30'),
(234, '141', 150, '615500785_202301164356', 'debit', '2023-01-16 10:43:56'),
(235, '142', 25, '1577688268_202301164356', 'credit', '2023-01-16 10:43:56'),
(236, '139', 61, '1449649640_202301164813', 'debit', '2023-01-16 11:48:13'),
(237, '140', 25, '1396509008_202301164813', 'credit', '2023-01-16 11:48:13'),
(238, '139', 51, '1011589411_202301165502', 'debit', '2023-01-16 11:55:02'),
(239, '140', 25, '1823460415_202301165503', 'credit', '2023-01-16 11:55:03'),
(240, '139', 70, '412369251_202301164000', 'debit', '2023-01-16 12:40:00'),
(241, '140', 25, '418253222_202301164000', 'credit', '2023-01-16 12:40:00'),
(242, '139', 51, '449192076_202301164315', 'debit', '2023-01-16 12:43:15'),
(243, '140', 25, '1847898908_202301164315', 'credit', '2023-01-16 12:43:15'),
(244, '139', 62, '1884398418_202301164518', 'debit', '2023-01-16 12:45:18'),
(245, '140', 25, '690481466_202301164518', 'credit', '2023-01-16 12:45:18'),
(246, '139', 62, '1295691595_202301165025', 'debit', '2023-01-16 12:50:25'),
(247, '140', 25, '1518036702_202301165025', 'credit', '2023-01-16 12:50:25'),
(248, '143', 2000, '413546654_2316015714', 'credit', '2023-01-16 13:57:14'),
(249, '143', 280, '2084495730_202301160516', 'debit', '2023-01-16 14:05:16'),
(250, '144', 25, '705606591_202301160517', 'credit', '2023-01-16 14:05:17'),
(251, '143', 70, '1640369876_202301161704', 'debit', '2023-01-16 14:17:04'),
(252, '144', 25, '1067319775_202301161704', 'credit', '2023-01-16 14:17:04'),
(253, '143', 100, '2139912396_202301163044', 'debit', '2023-01-16 14:30:44'),
(254, '144', 25, '866363065_202301163044', 'credit', '2023-01-16 14:30:44'),
(255, '143', 200, '1892511222_202301163808', 'debit', '2023-01-16 14:38:08'),
(256, '144', 25, '715520522_202301163808', 'credit', '2023-01-16 14:38:08'),
(257, '143', 130, '1595834646_202301163833', 'debit', '2023-01-16 14:38:33'),
(258, '144', 25, '754177580_202301163833', 'credit', '2023-01-16 14:38:33'),
(259, '143', 62, '1826576768_202301160026', 'debit', '2023-01-16 15:00:26'),
(260, '144', 25, '2047513984_202301160026', 'credit', '2023-01-16 15:00:26'),
(261, '143', 160, '1317263908_202301164305', 'debit', '2023-01-16 15:43:05'),
(262, '144', 25, '469399205_202301164305', 'credit', '2023-01-16 15:43:05'),
(263, '143', 62, '1161649324_202301164521', 'debit', '2023-01-16 15:45:21'),
(264, '144', 25, '38040708_202301164521', 'credit', '2023-01-16 15:45:21'),
(265, '143', 130, '73680768_202301165024', 'debit', '2023-01-16 15:50:24'),
(266, '144', 25, '1782743273_202301165025', 'credit', '2023-01-16 15:50:25'),
(267, '143', 65, '1436389677_202301165250', 'debit', '2023-01-16 15:52:50'),
(268, '144', 25, '792798815_202301165250', 'credit', '2023-01-16 15:52:50'),
(269, '143', 70, '2097450861_202301165454', 'debit', '2023-01-16 15:54:54'),
(270, '144', 25, '1533542567_202301165454', 'credit', '2023-01-16 15:54:54'),
(271, '143', 60, '1598765831_202301165628', 'debit', '2023-01-16 15:56:28'),
(272, '144', 25, '339577947_202301165629', 'credit', '2023-01-16 15:56:29'),
(273, '143', 60, '1485978522_202301160439', 'debit', '2023-01-16 16:04:39'),
(274, '144', 25, '644858267_202301160440', 'credit', '2023-01-16 16:04:40'),
(275, '143', 62, '1400863406_202301160822', 'debit', '2023-01-16 16:08:22'),
(276, '144', 25, '634785087_202301160822', 'credit', '2023-01-16 16:08:22'),
(277, '143', 90, '244615344_202301160925', 'debit', '2023-01-16 16:09:25'),
(278, '144', 25, '892323288_202301160925', 'credit', '2023-01-16 16:09:25'),
(279, '143', 80, '2002717386_202301161416', 'debit', '2023-01-16 16:14:16'),
(280, '144', 25, '274583638_202301161416', 'credit', '2023-01-16 16:14:16'),
(281, '143', 80, '1109833437_202301161416', 'debit', '2023-01-16 16:14:16'),
(282, '144', 25, '357539026_202301161417', 'credit', '2023-01-16 16:14:17'),
(283, '146', 100, '292143862_2316012200', 'credit', '2023-01-16 16:22:01'),
(284, '146', 70, '2099264350_202301162427', 'debit', '2023-01-16 16:24:27'),
(285, '145', 25, '2027973889_202301162427', 'credit', '2023-01-16 16:24:27'),
(286, '149', 500, '1438416552_2316014419', 'credit', '2023-01-16 16:44:19'),
(287, '149', 150, '395649131_202301165252', 'debit', '2023-01-16 16:52:52'),
(288, '148', 25, '1306814990_202301165252', 'credit', '2023-01-16 16:52:52'),
(289, '149', 105, '386226425_202301164219', 'debit', '2023-01-16 17:42:19'),
(290, '150', 25, '964316705_202301164219', 'credit', '2023-01-16 17:42:19'),
(291, '149', 100, '1686138623_202301164733', 'debit', '2023-01-16 17:47:33'),
(292, '150', 25, '1349705303_202301164733', 'credit', '2023-01-16 17:47:33'),
(293, '149', 500, '1956981349_2316014848', 'credit', '2023-01-16 17:48:48'),
(294, '149', 150, '940143579_202301164457', 'debit', '2023-01-16 18:44:57'),
(295, '150', 25, '131501558_202301164458', 'credit', '2023-01-16 18:44:58'),
(296, '147', 1000, '578537091_2312025406', 'credit', '2023-02-12 18:54:06'),
(297, '156', 100, '1074958211_2322021355', 'credit', '2023-02-22 08:13:55'),
(298, '159', 1000, '1271088726_2325020609', 'credit', '2023-02-25 09:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `role_id` int(11) DEFAULT NULL COMMENT '0 for admin 1 for customer and 2 for rider 3 for sub admin',
  `social_id` varchar(255) DEFAULT NULL,
  `notification_token` varchar(255) DEFAULT NULL,
  `Wallaet_Balance` double DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `password`, `img`, `address`, `address_line_2`, `city`, `state`, `zipcode`, `status`, `role_id`, `social_id`, `notification_token`, `Wallaet_Balance`, `created_at`) VALUES
(80, 'Admin', 'admin', NULL, 'admin@gmail.com', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, 'active', 0, NULL, NULL, 0, '2023-01-09 10:18:39'),
(146, 'Mick', 'Taylor', '1234567890', 'micktaylor589@gmail.com', 'demo1234', NULL, 'bsh hshchsjcjdjsvhsjc', NULL, 'Kansas', 'Ohio', '55555', 'active', 1, '117080010988484759216', '706797fe-3da0-4453-9662-52b7fd59e95d', 30, '2023-01-16 16:20:48'),
(147, 'Harry ', 'potter ', '3333333333', 'harry@gmail.com', '11111111', '202302161555_Profile.png', 'NY', NULL, 'NY', 'NY', '0005', 'active', 1, NULL, '', 1000, '2023-01-16 16:25:39'),
(148, 'daniel', 'smirh', '8989898989', 'daniel@gmail.com', 'Test1234', NULL, 'Test', NULL, 'test', 'test', '65659', 'active', 2, NULL, '', 25, '2023-01-16 16:41:00'),
(149, 'Donald', 'Smith', '3025258192', 'donald@techlabsteam.com', 'demo1234', NULL, 'Houston ', NULL, 'Houston', 'Tx', '33334', 'active', 1, '112623238782516086190', '81756129-214b-401b-8fd9-c454cf531dcc', 495, '2023-01-16 16:42:55'),
(150, 'Fizy', 'Bey', '3025258192', 'Fizy@gmail.com', 'demo1234', NULL, 'Houston ', NULL, 'Houston ', 'Tx', '33334', 'active', 2, '110455497833449727532', '78c0902b-4432-41bb-a3ad-b7136d4f1185', 75, '2023-01-16 17:35:33'),
(151, 'james', 'smith', '2266566559', 'james@gmail.com', 'Test1234', NULL, 'Test', NULL, 'test', 'test', '68898', 'active', 1, NULL, '148d4dec-fc9e-4fa0-a0bc-d8d7fa9334fe', 0, '2023-01-16 17:41:55'),
(152, 'Ayan', 'Ahmed', '0323335924', 'ayan.ali25508@gmail.com', 'demo1234', '202302103738_Profile.png', 'Pakistan', NULL, 'Karachi', 'Sindh', '7800', 'active', 1, '117335770514908547859', 'd06650e9-35bb-4d90-bcfc-2cac63fc478b', 0, '2023-02-04 13:51:01'),
(153, 'Hassaan', 'khemani', '0313494664', 'hassaankhemani@gmail.com', 'demo1234', NULL, 'Karachi ', NULL, 'Karachi ', 'Karachi ', '31848', 'active', 2, '111491749106287669443', 'e39a6f8c-51e9-46f4-9ee3-422abbd5dd1c', 0, '2023-02-06 14:16:19'),
(154, 'Shaheer', 'Choudhry', '0349202772', 'shaheerchoudhry64@gmail.com', 'demo1234', NULL, 'Gulshan e iqbal', NULL, 'Karachi', 'Karachi City, Sindh', '74100', 'active', 2, '108668043351515115059', 'f0dd68a0-9386-414e-8274-427edee4e45f', 0, '2023-02-21 18:07:18'),
(155, 'Carter', 'Otrig', '3025258192', 'carter.otrig@gmail.com', 'demo1234', NULL, 'Downtown ', NULL, 'Houston ', 'Texas', '77001', 'active', 1, '100684191030885332269', '1624efa1-f143-4001-87e9-833298727c36', 0, '2023-02-22 01:43:18'),
(156, 'BilL', 'Raza', '0315247051', 'xuni19274@gmail.com', 'demo1234', '202302221321_Profile.png', 'Nahi bataraha', NULL, 'Karachi', 'Karachi', '12345', 'active', 1, 'undefined', '', 100, '2023-02-22 08:11:09'),
(158, 'Shahbaz', 'Alam', '0000000000', 's.shahbaz.51200@gmail.com', 'demo1234', NULL, 'test', NULL, 'test', 'test', '00000', 'active', 1, '101046513007072496047', '', 0, '2023-02-22 09:30:06'),
(159, 'Bruce', 'Taylor', '0000000000', 'bruce@gmail.com', '11111111', NULL, 'test', NULL, 'test ', 'test', '00000', 'active', 1, NULL, '', 1000, '2023-02-22 09:31:14'),
(160, 'MUHAMMAD', 'ARSALAN', '0348589526', 'akberarsalan163@gmail.com', '123456', NULL, 'Unnamed Road', NULL, 'Karachi', 'Karachi ', '74600', 'active', 2, NULL, '', 0, '2023-02-23 18:48:25'),
(161, 'Test ', 'Rider', '8000000000', 'rider@gmail.com', 'asdfghjk', '202302253634_Profile.png', 'test', NULL, 'test', 'test ', '00000', 'active', 2, NULL, '966a3720-3585-49f8-b97d-5c21ffb27c10', 0, '2023-02-25 09:17:14'),
(162, 'Fameer', 'Fuddi', '3423242324', 'fameerfuddi589@gmail.com', 'demo1234', NULL, 'Cascas dvdsfsdfdsad', NULL, 'Khii', '23213', '44544', 'active', 1, '116327352933737136922', '', 0, '2023-02-27 16:00:30'),
(163, 'John', 'Vernon', '3214232227', 'getitdoneerrandrunner@gmail.com', 'demo1234', NULL, '2561 Palomar Ave SE', NULL, 'Palm Bay', 'Fl', '32909', 'active', 1, '103271236065830418321', '3e4c27c1-b4c7-4a5e-9b95-7b66b18855a0', 0, '2023-03-07 02:02:38'),
(164, 'dnaile', 'test', '5464959959', 'mm.sodais@gmail.com', 'demo1234', NULL, 'test', NULL, 'test', 'tet', '24995', 'active', 1, '117874634517330110442', '8af4e8ec-a66a-4a31-a70b-1a2ce76b965b', 0, '2023-03-31 12:33:13');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_requests`
--

CREATE TABLE `withdraw_requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `withdraw_requests`
--

INSERT INTO `withdraw_requests` (`id`, `user_id`, `amount`, `status`, `created_at`) VALUES
(30, 145, '10', 'pending', '2023-02-22 08:20:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_bank`
--
ALTER TABLE `add_bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `add_bank_details`
--
ALTER TABLE `add_bank_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extras`
--
ALTER TABLE `extras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revenue`
--
ALTER TABLE `revenue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_earning`
--
ALTER TABLE `rider_earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_share`
--
ALTER TABLE `rider_share`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rider_status`
--
ALTER TABLE `rider_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_details`
--
ALTER TABLE `task_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_log`
--
ALTER TABLE `task_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_bank`
--
ALTER TABLE `add_bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `add_bank_details`
--
ALTER TABLE `add_bank_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `extras`
--
ALTER TABLE `extras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `revenue`
--
ALTER TABLE `revenue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `rider_earning`
--
ALTER TABLE `rider_earning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `rider_share`
--
ALTER TABLE `rider_share`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rider_status`
--
ALTER TABLE `rider_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `task_details`
--
ALTER TABLE `task_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `task_log`
--
ALTER TABLE `task_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=418;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `withdraw_requests`
--
ALTER TABLE `withdraw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
