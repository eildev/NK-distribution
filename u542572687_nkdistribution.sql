-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 04, 2024 at 09:49 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u542572687_nkdistribution`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` bigint(20) DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `debit` decimal(12,2) DEFAULT NULL,
  `credit` decimal(12,2) DEFAULT NULL,
  `balance` decimal(12,2) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_transactions`
--

INSERT INTO `account_transactions` (`id`, `account_id`, `branch_id`, `reference_id`, `purpose`, `debit`, `credit`, `balance`, `note`, `created_at`, `updated_at`) VALUES
(1, 5, 1, NULL, 'Bank', NULL, 800000.00, 800000.00, NULL, '2024-11-21 13:08:00', '2024-11-21 13:08:00'),
(2, 5, 1, 1, 'Purchase', 300000.00, NULL, 500000.00, NULL, '2024-11-21 13:09:27', '2024-11-21 13:09:27'),
(3, 5, 1, 2, 'Purchase', 500000.00, NULL, 0.00, NULL, '2024-11-21 13:16:33', '2024-11-21 13:16:33'),
(4, 5, 1, 2, 'Purchase Delete', NULL, 500000.00, 500000.00, NULL, '2024-11-21 13:17:51', '2024-11-21 13:17:51'),
(5, 5, 1, 2, 'Purchase Delete', NULL, 500000.00, 1000000.00, NULL, '2024-11-23 06:27:10', '2024-11-23 06:27:10'),
(6, 5, 1, 2, 'Purchase Delete', NULL, 500000.00, 1500000.00, NULL, '2024-11-23 06:27:17', '2024-11-23 06:27:17'),
(7, 5, 1, 2, 'Purchase Delete', NULL, 500000.00, 2000000.00, NULL, '2024-11-23 06:27:23', '2024-11-23 06:27:23'),
(8, 5, 1, 2, 'Purchase Delete', NULL, 500000.00, 2500000.00, NULL, '2024-11-23 06:27:56', '2024-11-23 06:27:56'),
(9, 5, 1, 1, 'Purchase Delete', NULL, 300000.00, 2800000.00, NULL, '2024-11-23 06:28:41', '2024-11-23 06:28:41'),
(10, 5, 1, 3, 'Purchase', 300000.00, NULL, 2500000.00, NULL, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(11, 5, 1, 4, 'Purchase', 500000.00, NULL, 2000000.00, NULL, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(12, 1, 1, 1, 'Sale', NULL, 1460.00, 1460.00, NULL, '2024-11-24 07:02:22', '2024-11-24 07:02:22'),
(13, 1, 1, 2, 'Sale', NULL, 4900.00, 6360.00, NULL, '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(14, 1, 1, 3, 'Sale', NULL, 43860.00, 50220.00, NULL, '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(15, 1, 1, 4, 'Sale', NULL, 3700.00, 53920.00, NULL, '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(16, 1, 1, 5, 'Sale', NULL, 5470.00, 59390.00, NULL, '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(17, 1, 1, 6, 'Sale', NULL, 17540.00, 76930.00, NULL, '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(18, 1, 1, 7, 'Sale', NULL, 9260.00, 86190.00, NULL, '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(19, 1, 1, 8, 'Sale', NULL, 17810.00, 104000.00, NULL, '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(20, 1, 1, 9, 'Sale', NULL, 9870.00, 113870.00, NULL, '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(21, 1, 1, 10, 'Sale', NULL, 8140.00, 122010.00, NULL, '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(22, 1, 1, 11, 'Sale', NULL, 5500.00, 127510.00, NULL, '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(23, 1, 1, 12, 'Sale', NULL, 3850.00, 131360.00, NULL, '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(24, 1, 1, 13, 'Sale', NULL, 3930.00, 135290.00, NULL, '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(25, 1, 1, 14, 'Sale', NULL, 0.00, 135290.00, NULL, '2024-11-24 07:23:59', '2024-11-24 07:23:59'),
(26, 1, 1, 15, 'Sale', NULL, 3950.00, 139240.00, NULL, '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(30, 1, 1, 17, 'Sale', NULL, 1460.00, 140700.00, NULL, '2024-11-24 10:41:07', '2024-11-24 10:41:07'),
(31, 1, 1, 18, 'Sale', NULL, 53500.00, 194200.00, NULL, '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(32, 1, 1, 19, 'Sale', NULL, 11000.00, 205200.00, NULL, '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(33, 1, 1, 20, 'Sale', NULL, 27300.00, 232500.00, NULL, '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(34, 1, 1, 21, 'Sale', NULL, 14550.00, 247050.00, NULL, '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(35, 1, 1, 22, 'Sale', NULL, 16800.00, 263850.00, NULL, '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(36, 1, 1, 23, 'Sale', NULL, 1760.00, 265610.00, NULL, '2024-11-25 13:50:17', '2024-11-25 13:50:17'),
(37, 1, 1, 24, 'Sale', NULL, 3630.00, 269240.00, NULL, '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(38, 1, 1, 25, 'Sale', NULL, 0.00, 269240.00, NULL, '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(39, 1, 1, 26, 'Sale', NULL, 20000.00, 289240.00, NULL, '2024-11-25 14:04:00', '2024-11-25 14:04:00'),
(40, 1, 1, 27, 'Sale', NULL, 2050.00, 291290.00, NULL, '2024-11-25 14:06:55', '2024-11-25 14:06:55'),
(41, 1, 1, 1, 'Expanse', 100.00, NULL, 291190.00, NULL, '2024-11-25 14:42:46', '2024-11-25 14:42:46'),
(42, 1, 1, 2, 'Expanse', 350.00, NULL, 290840.00, NULL, '2024-11-25 14:43:28', '2024-11-25 14:43:28'),
(43, 1, 1, 3, 'Expanse', 280.00, NULL, 290560.00, NULL, '2024-11-25 14:44:30', '2024-11-25 14:44:30'),
(44, 1, 1, 1, 'Employee Salary', 2000.00, NULL, 288560.00, NULL, '2024-11-25 14:46:06', '2024-11-25 14:46:06'),
(45, 1, 1, 28, 'Sale', NULL, 14850.00, 303410.00, NULL, '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(46, 1, 1, 29, 'Sale', NULL, 8210.00, 311620.00, NULL, '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(47, 1, 1, 30, 'Sale', NULL, 6120.00, 317740.00, NULL, '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(48, 1, 1, 31, 'Sale', NULL, 3800.00, 321540.00, NULL, '2024-11-26 08:46:28', '2024-11-26 08:46:28'),
(49, 1, 1, 32, 'Sale', NULL, 6540.00, 328080.00, NULL, '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(50, 1, 1, 33, 'Sale', NULL, 12460.00, 340540.00, NULL, '2024-11-30 12:10:23', '2024-11-30 12:10:23'),
(51, 1, 1, 34, 'Sale', NULL, 500.00, 341040.00, NULL, '2024-11-30 12:16:59', '2024-11-30 12:16:59'),
(52, 5, 1, 6, 'Purchase', 150000.00, NULL, 1850000.00, NULL, '2024-12-02 06:03:45', '2024-12-02 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `actual_payments`
--

CREATE TABLE `actual_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` enum('receive','pay') NOT NULL,
  `payment_method` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` decimal(12,2) NOT NULL,
  `date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actual_payments`
--

INSERT INTO `actual_payments` (`id`, `branch_id`, `payment_type`, `payment_method`, `customer_id`, `supplier_id`, `amount`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 'pay', 5, NULL, 1, 300000.00, '2024-11-21', NULL, '2024-11-21 13:09:27', '2024-11-21 13:09:27'),
(2, 1, 'pay', 5, NULL, 2, 500000.00, '2024-11-21', NULL, '2024-11-21 13:16:33', '2024-11-21 13:16:33'),
(3, 1, 'pay', 5, NULL, 3, 300000.00, '2024-11-21', NULL, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(4, 1, 'pay', 5, NULL, 4, 500000.00, '2024-11-24', NULL, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(5, 1, 'receive', 1, 2, NULL, 1460.00, '2024-11-24', NULL, '2024-11-24 07:02:22', '2024-11-24 07:02:22'),
(6, 1, 'receive', 1, 3, NULL, 4900.00, '2024-11-24', NULL, '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(7, 1, 'receive', 1, 4, NULL, 43860.00, '2024-11-24', NULL, '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(8, 1, 'receive', 1, 5, NULL, 3700.00, '2024-11-24', NULL, '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(9, 1, 'receive', 1, 6, NULL, 5470.00, '2024-11-24', NULL, '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(10, 1, 'receive', 1, 7, NULL, 17540.00, '2024-11-24', NULL, '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(11, 1, 'receive', 1, 8, NULL, 9260.00, '2024-11-24', NULL, '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(12, 1, 'receive', 1, 9, NULL, 17810.00, '2024-11-24', NULL, '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(13, 1, 'receive', 1, 10, NULL, 9870.00, '2024-11-24', NULL, '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(14, 1, 'receive', 1, 11, NULL, 8140.00, '2024-11-24', NULL, '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(15, 1, 'receive', 1, 12, NULL, 5500.00, '2024-11-24', NULL, '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(16, 1, 'receive', 1, 13, NULL, 3850.00, '2024-11-24', NULL, '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(17, 1, 'receive', 1, 14, NULL, 3930.00, '2024-11-24', NULL, '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(18, 1, 'receive', 1, 15, NULL, 0.00, '2024-11-24', NULL, '2024-11-24 07:23:59', '2024-11-24 07:23:59'),
(19, 1, 'receive', 1, 16, NULL, 3950.00, '2024-11-24', NULL, '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(20, 1, 'pay', 6, NULL, 5, 500.00, '2024-11-24', NULL, '2024-11-24 09:22:17', '2024-11-24 09:22:17'),
(21, 1, 'receive', 6, 19, NULL, 80.00, '2024-11-24', NULL, '2024-11-24 09:24:24', '2024-11-24 09:24:24'),
(22, 1, 'receive', 1, 2, NULL, 1460.00, '2024-11-24', NULL, '2024-11-24 10:41:07', '2024-11-24 10:41:07'),
(23, 1, 'receive', 1, 20, NULL, 53500.00, '2024-11-24', NULL, '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(24, 1, 'receive', 1, 21, NULL, 11000.00, '2024-11-24', NULL, '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(25, 1, 'receive', 1, 22, NULL, 27300.00, '2024-11-25', NULL, '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(26, 1, 'receive', 1, 23, NULL, 14550.00, '2024-11-24', NULL, '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(27, 1, 'receive', 1, 24, NULL, 16800.00, '2024-11-24', NULL, '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(28, 1, 'receive', 1, 10, NULL, 1760.00, '2024-11-24', NULL, '2024-11-25 13:50:17', '2024-11-25 13:50:17'),
(29, 1, 'receive', 1, 25, NULL, 3630.00, '2024-11-24', NULL, '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(30, 1, 'receive', 1, 26, NULL, 0.00, '2024-11-24', NULL, '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(31, 1, 'receive', 1, 27, NULL, 20000.00, '2024-11-24', NULL, '2024-11-25 14:04:00', '2024-11-25 14:04:00'),
(32, 1, 'receive', 1, 28, NULL, 2050.00, '2024-11-24', NULL, '2024-11-25 14:06:55', '2024-11-25 14:06:55'),
(33, 1, 'receive', 1, 29, NULL, 14850.00, '2024-11-25', NULL, '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(34, 1, 'receive', 1, 31, NULL, 8210.00, '2024-11-25', NULL, '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(35, 1, 'receive', 1, 32, NULL, 6120.00, '2024-11-26', NULL, '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(36, 1, 'receive', 1, 33, NULL, 3800.00, '2024-11-26', NULL, '2024-11-26 08:46:28', '2024-11-26 08:46:28'),
(37, 1, 'receive', 1, 34, NULL, 6540.00, '2024-11-25', NULL, '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(38, 1, 'receive', 1, 35, NULL, 12460.00, '2024-11-25', NULL, '2024-11-30 12:10:23', '2024-11-30 12:10:23'),
(39, 1, 'receive', 1, 36, NULL, 500.00, '2024-11-25', NULL, '2024-11-30 12:16:59', '2024-11-30 12:16:59'),
(40, 1, 'pay', 5, NULL, 3, 150000.00, '2024-11-28', NULL, '2024-12-02 06:03:45', '2024-12-02 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch_name` varchar(150) DEFAULT NULL,
  `manager_name` varchar(150) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `opening_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `update_balance` decimal(12,2) NOT NULL DEFAULT 0.00,
  `purpose` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `branch_id`, `name`, `branch_name`, `manager_name`, `phone_number`, `account`, `email`, `opening_balance`, `update_balance`, `purpose`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cash', 'Dhaka', 'No Name', '0111113333', '343535', 'demo@gmail.com', 0.00, 0.00, 'Cash', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 1, 'BKash', 'Dhaka', 'No Name', '0111113333', '343535', 'demo@gmail.com', 0.00, 0.00, 'bKash', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(3, 1, 'Nagad', 'Dhaka', 'No Name', '0111113333', '343535', 'demo@gmail.com', 0.00, 0.00, 'Nagad', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(4, 1, 'Rocket', 'Dhaka', 'No Name', '0111113333', '343535', 'demo@gmail.com', 0.00, 0.00, 'rocket', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(5, 1, 'Nurul Mubarak', 'Hathazari', 'Mubarak', '01829621424', '1131010206150', NULL, 800000.00, 0.00, NULL, '2024-11-21 13:08:00', '2024-11-21 13:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `email`, `logo`, `manager_id`, `created_at`, `updated_at`) VALUES
(1, 'Eclipse Electro POS', 'House 41, Road 6, Block E, Banasree, Rampura, Dhaka, Bangladesh', '01917344267', 'eclipse.electro@gmail.com', NULL, NULL, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `description`, `created_at`, `updated_at`) VALUES
(51, 'ITEL MOBILE', 'itel-mobile', '2131835691.jpg', 'ismartu bd', '2024-11-20 10:02:04', '2024-11-20 10:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smart phone', 'smart-phone', NULL, 1, '2024-11-04 06:43:15', '2024-11-19 10:16:07'),
(3, 'feature phone', 'feature-phone', NULL, 1, '2024-11-19 10:16:38', '2024-11-19 10:16:38');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `logo` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Eclipse Electro POS', 'eclipse-electro-pos', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `company_balances`
--

CREATE TABLE `company_balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deposit` decimal(12,2) NOT NULL,
  `withdraw` decimal(12,2) NOT NULL,
  `current_balance` decimal(12,2) NOT NULL,
  `closing_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `opening_receivable` decimal(12,2) DEFAULT NULL,
  `opening_payable` decimal(12,2) DEFAULT NULL,
  `wallet_balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_receivable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `branch_id`, `name`, `email`, `phone`, `address`, `opening_receivable`, `opening_payable`, `wallet_balance`, `total_receivable`, `total_payable`, `created_at`, `updated_at`) VALUES
(1, 1, 'AB Tech Center', 'kamal', '01882823523, 01816607628, 016100565567', 'Jalilnagar Bus stand,Raozan', 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-19 10:26:33', '2024-11-19 10:26:33'),
(2, 1, 'Friends Zone mobile Care', 'Md Parvej Mahruf', '01874782078', 'SiddikMarket, Hathazari', 0.00, 0.00, 0.00, 2920.00, 2920.00, '2024-11-24 06:19:02', '2024-11-24 10:41:07'),
(3, 1, 'Chowdury Telecom', 'Chowdury', '01835808365', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 4900.00, 4900.00, '2024-11-24 06:20:49', '2024-11-24 07:04:46'),
(4, 1, 'R.K Telecom', 'Abdul Kayum', '01815860484', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 43860.00, 43860.00, '2024-11-24 06:21:55', '2024-11-24 07:10:52'),
(5, 1, 'Smart tech', NULL, '0180000000', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 3700.00, 3700.00, '2024-11-24 06:22:38', '2024-11-24 07:12:10'),
(6, 1, 'Basundara Telecom', NULL, '0100000000', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 5470.00, 5470.00, '2024-11-24 06:23:23', '2024-11-24 07:13:09'),
(7, 1, 'S.R Telecom', NULL, '018', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 17540.00, 17540.00, '2024-11-24 06:24:11', '2024-11-24 07:14:18'),
(8, 1, 'Fatema Telecom', NULL, '018', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 9260.00, 9260.00, '2024-11-24 06:24:44', '2024-11-24 07:15:05'),
(9, 1, 'Shahjalal Telecom', 'Md Rahim', '01616724609', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 17810.00, 17810.00, '2024-11-24 06:25:31', '2024-11-24 07:16:05'),
(10, 1, 'Sim Corner', 'Shem Da', '01818220840', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 11630.00, 11630.00, '2024-11-24 06:26:40', '2024-11-25 13:50:17'),
(11, 1, 'S.S Mobile Shop', 'Md Bablu', '01825471147', 'Siddik Market, Hathazari', 0.00, 0.00, 0.00, 8140.00, 8140.00, '2024-11-24 06:27:26', '2024-11-24 07:20:49'),
(12, 1, 'Sell Mart', NULL, '0', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 5500.00, 5500.00, '2024-11-24 06:28:19', '2024-11-24 07:21:51'),
(13, 1, 'Mobile City', NULL, '01818', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 3850.00, 3850.00, '2024-11-24 06:29:30', '2024-11-24 07:22:36'),
(14, 1, 'Mobile Plus', 'Md Talat', '0', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 3930.00, 3930.00, '2024-11-24 06:30:05', '2024-11-24 07:23:19'),
(15, 1, 'AL Modina', NULL, '0', 'Idris Tower, Hathazari', 0.00, 0.00, 1460.00, 1460.00, 0.00, '2024-11-24 06:31:16', '2024-11-24 07:23:59'),
(16, 1, 'Classic Telecom', 'Juwel Babu', '0', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 3950.00, 3950.00, '2024-11-24 06:33:16', '2024-11-24 07:24:53'),
(17, 1, 'Classic Telecom', 'Juwel Babu', '0', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-24 06:33:16', '2024-11-24 06:33:16'),
(18, 1, 'Classic Telecom', 'Juwel Babu', '0', 'Idris Tower, Hathazari', 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-24 06:33:16', '2024-11-24 06:33:16'),
(20, 1, 'Bagdad Enterprise', 'Md Lukman', '01734866876', 'Nazirhat, Fatikchari', 0.00, 0.00, 0.00, 53500.00, 53500.00, '2024-11-25 13:21:40', '2024-11-25 13:27:40'),
(21, 1, 'Brothers Telelcom', NULL, '01', 'Madrasa Gate', 0.00, 0.00, 0.00, 11000.00, 11000.00, '2024-11-25 13:29:58', '2024-11-25 13:31:28'),
(22, 1, 'Phone Connect', NULL, '01', 'Nazirhat Fatikchori', 0.00, 0.00, 0.00, 27300.00, 27300.00, '2024-11-25 13:32:32', '2024-11-25 13:34:18'),
(23, 1, 'Al Mocca Telecom', 'Mr Mahin', '01629051027', 'SorkarHat Hathazari', 0.00, 0.00, 0.00, 14550.00, 14550.00, '2024-11-25 13:35:49', '2024-11-25 13:37:39'),
(24, 1, 'Brothers Telecom', NULL, '01779060805', 'Nazirhat', 0.00, 0.00, 0.00, 16800.00, 16800.00, '2024-11-25 13:41:16', '2024-11-25 13:45:48'),
(25, 1, 'Sumaiya Telecom', 'Russel', '017', 'Siddik Market Hathazari', 0.00, 0.00, 0.00, 3630.00, 3630.00, '2024-11-25 13:53:32', '2024-11-25 13:54:28'),
(26, 1, 'Friends Telecom', 'Jasim Uddin Ariyan', '01837702308', 'Idris Tower, Hathazari', 0.00, 0.00, 117830.00, 117830.00, 0.00, '2024-11-25 13:56:10', '2024-11-25 14:01:22'),
(27, 1, 'Mobile Zone', 'Saiful/Arfan', '01860119092', 'Raojan Bus-Stand', 0.00, 0.00, 20980.00, 40980.00, 20000.00, '2024-11-25 14:03:04', '2024-11-25 14:04:00'),
(28, 1, 'abid telecom', 'md mahin', '01881269955', 'idris tower. hatahazari', 0.00, 0.00, 0.00, 2050.00, 2050.00, '2024-11-25 14:05:59', '2024-11-25 14:06:55'),
(29, 1, 'chowdhury telecom', 'chowdhury', '0', 'idris tower', 0.00, 0.00, 0.00, 14850.00, 14850.00, '2024-11-26 08:36:14', '2024-11-26 08:39:24'),
(30, 1, 'chowdhury telecom', 'chowdhury', '0', 'idris tower', 0.00, 0.00, 0.00, 0.00, 0.00, '2024-11-26 08:36:15', '2024-11-26 08:36:15'),
(31, 1, 'ab tech centre', 'rikson', '01866794383', 'raozan', 0.00, 0.00, 0.00, 8210.00, 8210.00, '2024-11-26 08:40:43', '2024-11-26 08:42:52'),
(32, 1, 'mobile gallary', NULL, '0', 'azadibazar', 0.00, 0.00, 0.00, 6120.00, 6120.00, '2024-11-26 08:43:59', '2024-11-26 08:45:01'),
(33, 1, 'sa telle', NULL, '0', 'raozan', 0.00, 0.00, 0.00, 3800.00, 3800.00, '2024-11-26 08:45:58', '2024-11-26 08:46:28'),
(34, 1, 'Robin telecom', NULL, '01813701648', 'raozan bus stand', 0.00, 0.00, 0.00, 6540.00, 6540.00, '2024-11-30 12:06:51', '2024-11-30 12:08:04'),
(35, 1, 'anisha telecom', NULL, '01643952672', 'paharthali raozan', 0.00, 0.00, 0.00, 12460.00, 12460.00, '2024-11-30 12:09:21', '2024-11-30 12:10:23'),
(36, 1, 'aparupa telecom', 'kazi liton', '01779459191', 'gohira raozan', 0.00, 0.00, 20300.00, 20800.00, 500.00, '2024-11-30 12:12:23', '2024-11-30 12:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `damages`
--

CREATE TABLE `damages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `damage_cost` decimal(12,2) NOT NULL COMMENT 'cost_price * qty',
  `sub_unit_qty` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_identifier` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `mobile_permission` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `salary` decimal(12,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `branch_id`, `full_name`, `address`, `phone`, `email`, `nid`, `pic`, `designation`, `salary`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Biplop', 'CTG', '01829133726', 'FF2@GMAI', NULL, '', 'SALES EXECUTIVE', 14500.00, '0', '2024-11-25 14:38:28', '2024-11-25 14:38:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salaries`
--

CREATE TABLE `employee_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `debit` decimal(12,2) DEFAULT NULL COMMENT 'Submit Salary',
  `creadit` decimal(12,2) DEFAULT NULL COMMENT 'Employee Salary on Employee Salary Table',
  `balance` decimal(12,2) NOT NULL COMMENT 'creadit - debit',
  `payment_method` bigint(20) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_salaries`
--

INSERT INTO `employee_salaries` (`id`, `branch_id`, `employee_id`, `date`, `debit`, `creadit`, `balance`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2024-11-24', 2000.00, 14500.00, 12500.00, 1, 'advance salary for the month of november', '2024-11-25 14:46:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `expense_date` date NOT NULL,
  `expense_category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `amount` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `spender` varchar(255) DEFAULT NULL,
  `bank_account_id` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `branch_id`, `expense_date`, `expense_category_id`, `purpose`, `amount`, `image`, `spender`, `bank_account_id`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-23', 5, 'Route Cost', 100.00, NULL, 'Biplob', 1, 'Hathazari area', '2024-11-25 14:42:46', '2024-11-25 14:42:46'),
(2, 1, '2024-11-24', 5, 'Route Cost', 350.00, NULL, 'Biplob', 1, 'nazirhat', '2024-11-25 14:43:28', '2024-11-25 14:43:28'),
(3, 1, '2024-11-25', 5, 'Route Cost', 280.00, NULL, 'Biplob', 1, 'raozan', '2024-11-25 14:44:30', '2024-11-25 14:44:30');

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Rent', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 'Electricity', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(3, 'Paper Bill', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(4, 'Net Bill', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(5, 'TA/DA Bill', '2024-11-25 14:40:28', '2024-11-25 14:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investors`
--

CREATE TABLE `investors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `debit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `credit` decimal(12,2) NOT NULL DEFAULT 0.00,
  `wallet_balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_21_060106_create_categories_table', 1),
(6, '2024_03_23_041120_create_sub_categories_table', 1),
(7, '2024_03_24_040653_create_brands_table', 1),
(8, '2024_03_24_041239_create_branches_table', 1),
(9, '2024_03_24_045439_create_customers_table', 1),
(10, '2024_03_25_034000_create_suppliers_table', 1),
(11, '2024_03_27_040311_create_units_table', 1),
(12, '2024_03_27_050102_create_psizes_table', 1),
(13, '2024_03_30_062219_create_banks_table', 1),
(14, '2024_03_30_070215_create_employees_table', 1),
(15, '2024_03_31_035725_create_expense_categories_table', 1),
(16, '2024_03_31_035749_create_expenses_table', 1),
(17, '2024_03_31_075613_create_products_table', 1),
(18, '2024_04_02_043320_create_purchases_table', 1),
(19, '2024_04_02_044525_create_promotions_table', 1),
(20, '2024_04_02_045010_create_purchase_items_table', 1),
(21, '2024_04_02_051218_create_payment_methods_table', 1),
(22, '2024_04_02_051435_create_actual_payments_table', 1),
(23, '2024_04_02_051856_create_taxes_table', 1),
(24, '2024_04_02_062515_create_promotion_details_table', 1),
(25, '2024_04_03_051500_create_transactions_table', 1),
(26, '2024_04_18_084751_create_sales_table', 1),
(27, '2024_04_18_090501_create_sale_items_table', 1),
(28, '2024_04_18_091047_create_pos_settings_table', 1),
(29, '2024_04_18_091250_create_damages_table', 1),
(30, '2024_04_24_063523_create_employee_salaries_table', 1),
(31, '2024_04_30_042330_create_sms_table', 1),
(32, '2024_04_30_043422_create_sms_categories_table', 1),
(33, '2024_04_30_085908_create_jobs_table', 1),
(34, '2024_05_05_094007_create_account_transactions_table', 1),
(35, '2024_05_20_084233_create_permission_tables', 1),
(36, '2024_05_29_044927_create_returns_table', 1),
(37, '2024_05_29_045256_create_return_items_table', 1),
(38, '2024_06_20_063121_create_company_balances_table', 1),
(39, '2024_06_27_045531_create_via_sales_table', 1),
(40, '2024_07_04_063816_create_investors_table', 1),
(41, '2024_07_31_060534_create_companies_table', 1),
(42, '2024_07_31_060543_create_user_limits_table', 1),
(43, '2024_07_31_060610_create_devices_table', 1),
(44, '2024_07_31_060650_add_company_id_to_users_table', 1),
(45, '2024_09_08_055127_create_stocks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(1, 'pos.menu', 'web', 'pos', NULL, NULL),
(2, 'pos-manage.menu', 'web', 'pos-manage', NULL, NULL),
(3, 'pos-manage.invoice', 'web', 'pos-manage', NULL, NULL),
(4, 'pos-manage.edit', 'web', 'pos-manage', NULL, NULL),
(5, 'pos-manage.delete', 'web', 'pos-manage', NULL, NULL),
(6, 'products.menu', 'web', 'products', NULL, NULL),
(7, 'products.list', 'web', 'products', NULL, NULL),
(8, 'products.edit', 'web', 'products', NULL, NULL),
(9, 'products.delete', 'web', 'products', NULL, NULL),
(10, 'category.menu', 'web', 'category', NULL, NULL),
(11, 'category.edit', 'web', 'category', NULL, NULL),
(12, 'category.delete', 'web', 'category', NULL, NULL),
(13, 'subcategory.menu', 'web', 'sub-category', NULL, NULL),
(14, 'subcategory.edit', 'web', 'sub-category', NULL, NULL),
(15, 'subcategory.delete', 'web', 'sub-category', NULL, NULL),
(16, 'brand.menu', 'web', 'brand', NULL, NULL),
(17, 'brand.edit', 'web', 'brand', NULL, NULL),
(18, 'brand.delete', 'web', 'brand', NULL, NULL),
(19, 'unit.menu', 'web', 'unit', NULL, NULL),
(20, 'unit.edit', 'web', 'unit', NULL, NULL),
(21, 'unit.delete', 'web', 'unit', NULL, NULL),
(22, 'products-size.menu', 'web', 'product-size', NULL, NULL),
(23, 'products-size.add', 'web', 'product-size', NULL, NULL),
(24, 'products-size.edit', 'web', 'product-size', NULL, NULL),
(25, 'products-size.delete', 'web', 'product-size', NULL, NULL),
(26, 'tax.menu', 'web', 'taxes', NULL, NULL),
(27, 'tax.edit', 'web', 'taxes', NULL, NULL),
(28, 'tax.delete', 'web', 'taxes', NULL, NULL),
(29, 'products.add', 'web', 'products', NULL, NULL),
(30, 'supplier.menu', 'web', 'supplier', NULL, NULL),
(31, 'supplier.edit', 'web', 'supplier', NULL, NULL),
(32, 'supplier.delete', 'web', 'supplier', NULL, NULL),
(33, 'purchase.menu', 'web', 'purchase', NULL, NULL),
(34, 'purchase.add', 'web', 'purchase', NULL, NULL),
(35, 'purchase.list', 'web', 'purchase', NULL, NULL),
(36, 'purchase.edit', 'web', 'purchase', NULL, NULL),
(37, 'purchase.delete', 'web', 'purchase', NULL, NULL),
(38, 'promotion.menu', 'web', 'promotion', NULL, NULL),
(39, 'promotion.add', 'web', 'promotion', NULL, NULL),
(40, 'promotion.edit', 'web', 'promotion', NULL, NULL),
(41, 'promotion.delete', 'web', 'promotion', NULL, NULL),
(42, 'promotion-details.menu', 'web', 'promotion-details', NULL, NULL),
(43, 'promotion-details.add', 'web', 'promotion-details', NULL, NULL),
(44, 'promotion-details.edit', 'web', 'promotion-details', NULL, NULL),
(45, 'promotion-details.delete', 'web', 'promotion-details', NULL, NULL),
(46, 'damage.menu', 'web', 'damage', NULL, NULL),
(47, 'damage.add', 'web', 'damage', NULL, NULL),
(48, 'damage.edit', 'web', 'damage', NULL, NULL),
(49, 'damage.delete', 'web', 'damage', NULL, NULL),
(50, 'bank.menu', 'web', 'bank', NULL, NULL),
(51, 'bank.edit', 'web', 'bank', NULL, NULL),
(52, 'bank..delete', 'web', 'bank', NULL, NULL),
(53, 'expense.menu', 'web', 'expense', NULL, NULL),
(54, 'expense.edit', 'web', 'expense', NULL, NULL),
(55, 'expense.delete', 'web', 'expense', NULL, NULL),
(56, 'transaction.menu', 'web', 'transaction', NULL, NULL),
(57, 'transaction.history', 'web', 'transaction', NULL, NULL),
(58, 'transaction.delete', 'web', 'transaction', NULL, NULL),
(59, 'customer.menu', 'web', 'customer', NULL, NULL),
(60, 'customer.add', 'web', 'customer', NULL, NULL),
(61, 'customer.edit', 'web', 'customer', NULL, NULL),
(62, 'customer.delete', 'web', 'customer', NULL, NULL),
(63, 'employee.menu', 'web', 'employee', NULL, NULL),
(64, 'employee.add', 'web', 'employee', NULL, NULL),
(65, 'employee.edit', 'web', 'employee', NULL, NULL),
(66, 'employee.delete', 'web', 'employee', NULL, NULL),
(67, 'employee-salary.menu', 'web', 'employee-salary', NULL, NULL),
(68, 'employee-salary.add', 'web', 'employee-salary', NULL, NULL),
(69, 'employee-salary.edit', 'web', 'employee-salary', NULL, NULL),
(70, 'employee-salary.delete', 'web', 'employee-salary', NULL, NULL),
(71, 'employee-salary.list', 'web', 'employee-salary', NULL, NULL),
(72, 'advanced-employee-salary.menu', 'web', 'advanced-employee-salary', NULL, NULL),
(73, 'crm.menu', 'web', 'crm', NULL, NULL),
(74, 'crm.customize-customer', 'web', 'crm', NULL, NULL),
(75, 'crm.email-marketing', 'web', 'crm', NULL, NULL),
(76, 'crm.sms-marketing', 'web', 'crm', NULL, NULL),
(77, 'role-and-permission.menu', 'web', 'role-and-permissions', NULL, NULL),
(78, 'role-and-permission.all-permission', 'web', 'role-and-permissions', NULL, NULL),
(79, 'role-and-permission.all-permission.add', 'web', 'role-and-permissions', NULL, NULL),
(80, 'role-and-permission.all-permission.edit', 'web', 'role-and-permissions', NULL, NULL),
(81, 'role-and-permission.all-permission.delete', 'web', 'role-and-permissions', NULL, NULL),
(82, 'role-and-permission.all-role', 'web', 'role-and-permissions', NULL, NULL),
(83, 'role-and-permission.all-role.add', 'web', 'role-and-permissions', NULL, NULL),
(84, 'role-and-permission.all-role.edit', 'web', 'role-and-permissions', NULL, NULL),
(85, 'role-and-permission.all-role.delete', 'web', 'role-and-permissions', NULL, NULL),
(86, 'role-and-permission.role-in-permission', 'web', 'role-and-permissions', NULL, NULL),
(87, 'role-and-permission-check-role-permission', 'web', 'role-and-permissions', NULL, NULL),
(88, 'role-and-permission-check-role-permission.edit', 'web', 'role-and-permissions', NULL, NULL),
(89, 'role-and-permission-check-role-permission.delete', 'web', 'role-and-permissions', NULL, NULL),
(90, 'admin-manage.menu', 'web', 'admin-manage', NULL, NULL),
(91, 'admin-manage.add', 'web', 'admin-manage', NULL, NULL),
(92, 'admin-manage.edit', 'web', 'admin-manage', NULL, NULL),
(93, 'admin-manage.delete', 'web', 'admin-manage', NULL, NULL),
(94, 'admin-manage.list', 'web', 'admin-manage', NULL, NULL),
(95, 'settings.menu', 'web', 'settings', NULL, NULL),
(96, 'branch.menu', 'web', 'branch', NULL, NULL),
(97, 'branch.add', 'web', 'branch', NULL, NULL),
(98, 'branch.edit', 'web', 'branch', NULL, NULL),
(99, 'branch.delete', 'web', 'branch', NULL, NULL),
(100, 'report.menu', 'web', 'report', NULL, NULL),
(101, 'return.menu', 'web', 'return', NULL, NULL),
(102, 'limit.user', 'web', 'limit', NULL, NULL),
(103, 'limit.device', 'web', 'limit', NULL, NULL),
(104, 'via.purchase', 'web', 'purchase', NULL, NULL),
(105, 'Inventory.menu', 'web', 'inventory', NULL, NULL),
(106, 'Inventory.stock.report', 'web', 'inventory', NULL, NULL),
(107, 'Inventory.low.stock.report', 'web', 'inventory', NULL, NULL),
(108, 'Inventory.damage', 'web', 'inventory', NULL, NULL),
(109, 'setting.manage', 'web', 'settings', NULL, NULL),
(110, 'excel.file.import', 'web', 'other', NULL, NULL),
(111, 'bank.add', 'web', 'bank', NULL, NULL),
(112, 'category.add', 'web', 'category', NULL, NULL),
(113, 'subcategory.add', 'web', 'subcategory', NULL, NULL),
(114, 'brand.add', 'web', 'brand', NULL, NULL),
(115, 'unit.add', 'web', 'unit', NULL, NULL),
(116, 'tax.add', 'web', 'taxes', NULL, NULL),
(117, 'supplier.add', 'web', 'supplier', NULL, NULL),
(118, 'damage.list', 'web', 'damage', NULL, NULL),
(119, 'via.purchase.payment', 'web', 'purchase', NULL, NULL),
(120, 'via.purchase.delete', 'web', 'purchase', NULL, NULL),
(121, 'toady.report', 'web', 'report', NULL, NULL),
(122, 'product.info.report', 'web', 'report', NULL, NULL),
(123, 'summary.report', 'web', 'report', NULL, NULL),
(124, 'customer.due.report', 'web', 'report', NULL, NULL),
(125, 'supplier.due.report', 'web', 'report', NULL, NULL),
(126, 'top.products.report', 'web', 'report', NULL, NULL),
(127, 'purchase.report', 'web', 'report', NULL, NULL),
(128, 'customer.ledger.report', 'web', 'report', NULL, NULL),
(129, 'supplier.ledger.report', 'web', 'report', NULL, NULL),
(130, 'account.transaction.report', 'web', 'report', NULL, NULL),
(131, 'expense.report', 'web', 'report', NULL, NULL),
(132, 'employee.salary.report', 'web', 'report', NULL, NULL),
(133, 'sms.report', 'web', 'report', NULL, NULL),
(134, 'monthly.report', 'web', 'report', NULL, NULL),
(135, 'yearly.report', 'web', 'report', NULL, NULL),
(136, 'inventory.report', 'web', 'report', NULL, NULL),
(137, 'Make.Items', 'web', 'make-menu-and-item', NULL, NULL),
(138, 'make.items.manage', 'web', 'make-menu-and-item', NULL, NULL),
(139, 'make.category', 'web', 'make-menu-and-item', NULL, NULL),
(140, 'set.menu', 'web', 'make-menu-and-item', NULL, NULL),
(141, 'set.items', 'web', 'make-menu-and-item', NULL, NULL),
(142, 'set.items.manage', 'web', 'make-menu-and-item', NULL, NULL),
(143, 'top.sale.set.menu', 'web', 'inventory', NULL, NULL),
(144, 'top.sale.make.item', 'web', 'inventory', NULL, NULL),
(145, 'make.menu.and.item.menu', 'web', 'make-menu-and-item', NULL, NULL),
(146, 'ingredient.audit', 'web', 'ingredient-audit', NULL, NULL),
(147, 'audit.report', 'web', 'ingredient-audit', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos_settings`
--

CREATE TABLE `pos_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company` varchar(255) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `header_text` varchar(255) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `invoice_type` enum('a4','a5','pos') NOT NULL,
  `invoice_logo_type` enum('Logo','Name','Both') NOT NULL DEFAULT 'Logo',
  `barcode_type` enum('single','a4') NOT NULL,
  `low_stock` int(11) NOT NULL DEFAULT 10,
  `dark_mode` tinyint(1) NOT NULL DEFAULT 0,
  `discount` tinyint(1) NOT NULL DEFAULT 0,
  `tax` tinyint(1) NOT NULL DEFAULT 0,
  `barcode` tinyint(1) NOT NULL DEFAULT 0,
  `via_sale` tinyint(1) NOT NULL DEFAULT 0,
  `selling_price_edit` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos_settings`
--

INSERT INTO `pos_settings` (`id`, `company`, `logo`, `address`, `email`, `facebook`, `phone`, `header_text`, `footer_text`, `invoice_type`, `invoice_logo_type`, `barcode_type`, `low_stock`, `dark_mode`, `discount`, `tax`, `barcode`, `via_sale`, `selling_price_edit`, `created_at`, `updated_at`) VALUES
(1, 'EIL POS', NULL, 'Banasree,Dhaka,Bangladesh', 'ebbdemo@gmail.com', 'https:/www.ebb.com', '017..', 'Demo Header', 'Demo Footer', 'a4', 'Logo', 'single', 5, 2, 0, 0, 0, 0, 0, '2024-11-04 06:43:15', '2024-11-19 10:31:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `barcode` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cost` decimal(8,2) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `main_unit_stock` int(11) DEFAULT NULL,
  `total_sold` int(11) NOT NULL DEFAULT 0,
  `color` varchar(255) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `branch_id`, `barcode`, `category_id`, `subcategory_id`, `brand_id`, `cost`, `price`, `details`, `image`, `main_unit_stock`, `total_sold`, `color`, `size_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(30, 'S23 128+4', 1, '21785994', 1, NULL, 51, 8905.44, 9150.00, NULL, '1850282870.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:49:04', '2024-11-20 10:49:04'),
(31, 'S23 128+8', 1, '72127661', 1, NULL, 51, 9815.44, 10080.00, NULL, '1894298838.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:50:31', '2024-11-20 10:50:31'),
(32, 'S23 256+8', 1, '37057420', 1, NULL, 51, 10977.91, 11300.00, NULL, '2013196338.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:51:29', '2024-11-20 10:51:29'),
(33, 'A70 128+4', 1, '13651126', 1, NULL, 51, 9161.76, 9410.00, NULL, '749877748.jpg', NULL, 3, '#000000', NULL, 1, '2024-11-20 10:53:02', '2024-11-25 14:01:22'),
(34, 'A70 64+4', 1, '66257247', 1, NULL, 51, 8210.31, 8450.00, NULL, '194352488.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:54:19', '2024-11-20 10:54:19'),
(35, 'P55 128+8', 1, '48620351', 1, NULL, 51, 11006.14, 11310.00, NULL, '712544649.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:55:10', '2024-11-20 10:55:10'),
(36, 'P55 128+4', 1, '93136523', 1, NULL, 51, 9112.26, 9390.00, NULL, '1396595566.jpg', NULL, 2, '#000000', NULL, 1, '2024-11-20 10:56:16', '2024-11-25 14:01:22'),
(37, 'P55+ 256+8', 1, '64274976', 1, NULL, 51, 12322.38, 12690.00, NULL, '185214090.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 10:56:59', '2024-11-20 10:56:59'),
(38, 'S24 128+8', 1, '85489156', 1, NULL, 51, 12833.25, 13150.00, NULL, '1821488191.jpg', NULL, 1, '#000000', NULL, 1, '2024-11-20 10:58:06', '2024-11-25 14:01:22'),
(39, 'A50 64+2', 1, '35433459', 1, NULL, 51, 7058.54, 7250.00, NULL, '566938580.jpg', NULL, 7, '#000000', NULL, 1, '2024-11-20 10:59:09', '2024-11-25 14:01:22'),
(40, 'RS4 256+12', 1, '88892018', 1, NULL, 51, 15482.93, 15970.00, NULL, '167306865.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-20 11:00:08', '2024-11-20 11:00:08'),
(41, 'A50 64+4', 1, '24408024', 1, NULL, 51, 8210.71, 8450.00, NULL, '1295290338.jpg', NULL, 12, '#000000', NULL, 1, '2024-11-20 11:00:52', '2024-11-30 12:10:23'),
(42, 'A50C 32+2', 1, '5879523', 1, NULL, 51, 6497.10, 6640.00, NULL, '949568526.jpg', NULL, 9, '#000000', NULL, 1, '2024-11-20 11:01:53', '2024-11-25 14:01:22'),
(43, 'it2171', 1, '1268745', 3, NULL, 51, 902.38, 920.00, '1.77 \" ,1000 mAh', NULL, NULL, 52, '#000000', NULL, 1, '2024-11-20 11:08:53', '2024-11-30 12:16:59'),
(44, 'it5617', 1, '5672078', 3, NULL, 51, 1368.57, 1405.00, '2.4 \" ,2500 mAh', NULL, NULL, 4, '#000000', NULL, 1, '2024-11-20 11:10:26', '2024-11-30 12:16:59'),
(45, 'it5618N', 1, '59580545', 3, NULL, 51, 1368.18, 1405.00, NULL, NULL, NULL, 3, '#000000', NULL, 1, '2024-11-20 11:11:04', '2024-11-30 12:16:59'),
(46, 'it6350', 1, '14226541', 3, NULL, 51, 1804.48, 2160.00, NULL, NULL, NULL, 0, '#000000', NULL, 1, '2024-11-20 11:11:46', '2024-11-20 11:56:48'),
(47, 'it5621', 1, '29752822', 3, NULL, 51, 1418.37, 1460.00, NULL, NULL, NULL, 6, '#000000', NULL, 1, '2024-11-20 11:12:31', '2024-11-30 12:16:59'),
(48, 'it5027', 1, '45858832', 3, NULL, 51, 1122.98, 1150.00, NULL, NULL, NULL, 10, '#000000', NULL, 1, '2024-11-20 11:13:09', '2024-11-30 12:16:59'),
(49, 'P110S', 1, '40534070', 3, NULL, 51, 1137.70, 1170.00, NULL, NULL, NULL, 7, '#000000', NULL, 1, '2024-11-20 11:13:51', '2024-11-30 12:16:59'),
(51, 'it5261', 1, '53278194', 3, NULL, 51, 1232.93, 1270.00, NULL, NULL, NULL, 5, '#000000', NULL, 1, '2024-11-20 11:15:39', '2024-11-26 08:39:24'),
(52, 'it2165', 1, '21523154', 3, NULL, 51, 862.05, 880.00, NULL, NULL, NULL, 47, '#000000', NULL, 1, '2024-11-20 11:16:20', '2024-11-30 12:16:59'),
(53, 'it2166', 1, '6352401', 3, NULL, 51, 932.70, 950.00, NULL, NULL, NULL, 56, '#000000', NULL, 1, '2024-11-20 11:16:56', '2024-11-30 12:16:59'),
(54, 'it2176', 1, '42091584', 3, 2, 51, 1012.50, 1030.00, NULL, NULL, NULL, 7, '#000000', 1, 1, '2024-11-20 11:17:29', '2024-11-30 12:16:59'),
(55, 'it6360', 1, '55383316', 3, NULL, 51, 1984.81, 2050.00, NULL, NULL, NULL, 7, '#000000', NULL, 1, '2024-11-20 11:18:02', '2024-11-25 14:06:55'),
(56, 'it5200', 1, '46586710', 3, NULL, 51, 1152.74, 1180.00, NULL, NULL, NULL, 13, '#000000', NULL, 1, '2024-11-20 11:19:01', '2024-11-30 12:16:59'),
(57, 'it5031', 1, '47477699', 3, 1, 51, 1197.85, 1230.00, NULL, '330345724.jpg', NULL, 0, '#000000', 1, 1, '2024-11-20 11:19:44', '2024-11-21 10:13:29'),
(58, 'it5361', 1, '57842904', 3, 1, 51, 1423.38, 1460.00, NULL, '1372414455.jpg', NULL, 2, '#000000', 1, 1, '2024-11-20 11:20:20', '2024-11-30 12:16:59'),
(59, 'it5262', 1, '4957642', 3, 1, 51, 1403.33, 1440.00, NULL, '1375686253.jpg', NULL, 3, '#000000', 1, 1, '2024-11-20 11:20:53', '2024-11-30 12:16:59'),
(60, 'P450', 1, '46318787', 3, 1, 51, 1343.19, 1380.00, NULL, '1099804257.jpg', NULL, 0, '#000000', 1, 1, '2024-11-20 11:21:27', '2024-11-21 10:01:34'),
(61, 'it6360N', 1, '61726145', 3, 1, 51, 1985.23, 2050.00, NULL, '123061318.jpg', NULL, 0, '#000000', 1, 1, '2024-11-20 11:22:13', '2024-11-21 09:56:41'),
(62, 'it9310', 1, '16072799', 3, 1, 51, 2285.43, 2350.00, NULL, '1969420432.jpg', NULL, 4, '#000000', 1, 1, '2024-11-20 11:22:54', '2024-11-25 14:01:22'),
(63, 'A50 64+2', 1, '31127691', 1, NULL, 51, 7058.54, 7250.00, NULL, '2046286543.jpg', NULL, 0, '#000000', NULL, 1, '2024-11-23 07:01:18', '2024-11-23 07:01:18');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `discount_type` enum('percentage','fixed_amount') NOT NULL,
  `discount_value` int(11) NOT NULL,
  `status` enum('active','expired','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotion_details`
--

CREATE TABLE `promotion_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_type` enum('wholesale','products','customers','branch') NOT NULL,
  `logic` text NOT NULL,
  `additional_conditions` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `psizes`
--

CREATE TABLE `psizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `size` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `psizes`
--

INSERT INTO `psizes` (`id`, `category_id`, `size`, `created_at`, `updated_at`) VALUES
(1, 1, 'S', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 1, 'M', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(3, 1, 'L', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(4, 1, 'XL', '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(5, 1, 'XXL', '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` date NOT NULL,
  `total_quantity` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `discount_amount` decimal(12,2) DEFAULT NULL,
  `sub_total` decimal(12,2) NOT NULL,
  `tax` int(11) DEFAULT NULL,
  `grand_total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `paid` decimal(12,2) NOT NULL DEFAULT 0.00,
  `due` decimal(12,2) NOT NULL DEFAULT 0.00,
  `carrying_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `branch_id`, `supplier_id`, `purchase_date`, `total_quantity`, `total_amount`, `invoice`, `discount_amount`, `sub_total`, `tax`, `grand_total`, `paid`, `due`, `carrying_cost`, `payment_method`, `note`, `document`, `created_at`, `updated_at`) VALUES
(3, 1, 3, '2024-11-21', 160.00, 280126.60, '2', NULL, 280126.60, NULL, 280126.60, 300000.00, 0.00, 0.00, 5, NULL, NULL, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(4, 1, 4, '2024-11-24', 1023.00, 1449951.35, '1', NULL, 1449951.35, NULL, 1449951.35, 500000.00, 949951.35, 0.00, 5, NULL, NULL, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(6, 1, 3, '2024-11-28', 70.00, 158891.30, '3702612740', NULL, 158891.30, NULL, 158891.30, 150000.00, 8891.30, 0.00, 5, NULL, NULL, '2024-12-02 06:03:45', '2024-12-02 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_items`
--

CREATE TABLE `purchase_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchase_items`
--

INSERT INTO `purchase_items` (`id`, `purchase_id`, `product_id`, `unit_price`, `quantity`, `total_price`, `created_at`, `updated_at`) VALUES
(4, 3, 53, 932.70, 40, 37308.00, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(5, 3, 49, 1137.70, 20, 22754.00, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(6, 3, 44, 1368.57, 20, 27371.40, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(7, 3, 42, 6497.10, 10, 64971.00, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(8, 3, 63, 7058.54, 10, 70585.40, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(9, 4, 63, 7058.54, 9, 63526.86, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(10, 4, 41, 8210.71, 14, 114949.94, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(11, 4, 42, 6497.10, 17, 110450.70, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(12, 4, 33, 9161.76, 4, 36647.04, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(13, 4, 36, 9112.26, 2, 18224.52, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(14, 4, 37, 12322.38, 5, 61611.90, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(15, 4, 38, 12833.25, 5, 64166.25, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(16, 4, 52, 862.05, 232, 199995.60, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(17, 4, 54, 1012.50, 14, 14175.00, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(18, 4, 48, 1122.98, 27, 30320.46, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(19, 4, 56, 1152.74, 51, 58789.74, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(20, 4, 51, 1232.93, 29, 35754.97, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(21, 4, 59, 1403.33, 8, 11226.64, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(22, 4, 58, 1423.38, 2, 2846.76, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(23, 4, 44, 1368.57, 48, 65691.36, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(24, 4, 45, 1368.18, 5, 6840.90, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(25, 4, 47, 1418.37, 6, 8510.22, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(26, 4, 55, 1984.81, 23, 45650.63, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(27, 4, 62, 2285.43, 10, 22854.30, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(28, 4, 49, 1137.70, 47, 53471.90, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(29, 4, 53, 932.70, 153, 142703.10, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(30, 4, 43, 902.38, 312, 281542.56, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(32, 6, 54, 1012.50, 20, 20250.00, '2024-12-02 06:03:45', '2024-12-02 06:03:45'),
(33, 6, 58, 1423.38, 20, 28467.60, '2024-12-02 06:03:45', '2024-12-02 06:03:45'),
(34, 6, 59, 1403.33, 20, 28066.60, '2024-12-02 06:03:45', '2024-12-02 06:03:45'),
(35, 6, 41, 8210.71, 10, 82107.10, '2024-12-02 06:03:45', '2024-12-02 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `return_invoice_number` varchar(255) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `return_date` datetime NOT NULL,
  `refund_amount` decimal(8,2) NOT NULL,
  `return_reason` varchar(255) DEFAULT NULL,
  `total_return_profit` decimal(8,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `processed_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_items`
--

CREATE TABLE `return_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `return_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `return_price` decimal(8,2) NOT NULL,
  `product_total` decimal(8,2) NOT NULL,
  `return_profit` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'web', '2024-11-04 06:43:15', NULL),
(2, 'Admin', 'web', '2024-11-04 06:43:15', NULL),
(3, 'SalesAdmin', 'web', '2024-11-04 06:43:15', '2024-11-04 06:44:32'),
(4, 'TecAdmin', 'web', '2024-11-04 06:43:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(17, 1),
(17, 2),
(17, 3),
(17, 4),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(19, 1),
(19, 3),
(19, 4),
(20, 1),
(20, 3),
(20, 4),
(21, 1),
(21, 3),
(21, 4),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(25, 1),
(25, 2),
(25, 3),
(25, 4),
(26, 1),
(26, 4),
(27, 1),
(27, 4),
(28, 1),
(28, 4),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 1),
(30, 2),
(30, 4),
(31, 1),
(31, 2),
(31, 4),
(32, 1),
(32, 2),
(32, 4),
(33, 1),
(33, 2),
(33, 3),
(33, 4),
(34, 1),
(34, 2),
(34, 3),
(34, 4),
(35, 1),
(35, 2),
(35, 3),
(35, 4),
(36, 1),
(36, 2),
(36, 3),
(36, 4),
(37, 1),
(37, 2),
(37, 3),
(37, 4),
(38, 1),
(38, 4),
(39, 1),
(39, 4),
(40, 1),
(40, 4),
(41, 1),
(41, 4),
(42, 1),
(42, 4),
(43, 1),
(43, 4),
(44, 1),
(44, 4),
(45, 1),
(45, 4),
(46, 1),
(46, 2),
(46, 4),
(47, 1),
(47, 2),
(47, 4),
(48, 1),
(48, 2),
(48, 4),
(49, 1),
(49, 2),
(49, 4),
(50, 1),
(50, 2),
(50, 4),
(51, 1),
(51, 2),
(51, 4),
(52, 1),
(52, 2),
(52, 4),
(53, 1),
(53, 2),
(53, 4),
(54, 1),
(54, 2),
(54, 4),
(55, 1),
(55, 2),
(55, 4),
(56, 1),
(56, 2),
(56, 4),
(57, 1),
(57, 2),
(57, 4),
(58, 1),
(58, 2),
(58, 4),
(59, 1),
(59, 2),
(59, 3),
(59, 4),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(61, 1),
(61, 2),
(61, 3),
(61, 4),
(62, 1),
(62, 2),
(62, 3),
(62, 4),
(63, 1),
(63, 2),
(63, 4),
(64, 1),
(64, 2),
(64, 4),
(65, 1),
(65, 2),
(65, 4),
(66, 1),
(66, 2),
(66, 4),
(67, 1),
(67, 2),
(67, 4),
(68, 1),
(68, 2),
(68, 4),
(69, 1),
(69, 2),
(69, 4),
(70, 1),
(70, 2),
(70, 4),
(71, 1),
(71, 2),
(71, 4),
(72, 1),
(72, 2),
(72, 4),
(73, 1),
(73, 4),
(74, 1),
(74, 4),
(75, 1),
(75, 4),
(76, 1),
(76, 4),
(77, 1),
(77, 4),
(78, 1),
(78, 4),
(79, 1),
(79, 4),
(80, 1),
(80, 4),
(81, 1),
(81, 4),
(82, 1),
(82, 4),
(83, 1),
(83, 4),
(84, 1),
(84, 4),
(85, 1),
(85, 4),
(86, 1),
(86, 4),
(87, 1),
(87, 4),
(88, 1),
(88, 4),
(89, 1),
(89, 4),
(90, 1),
(90, 4),
(91, 1),
(91, 4),
(92, 1),
(92, 4),
(93, 1),
(93, 4),
(94, 1),
(94, 4),
(95, 1),
(95, 2),
(95, 3),
(95, 4),
(96, 1),
(96, 4),
(97, 1),
(97, 4),
(98, 1),
(98, 4),
(99, 1),
(99, 4),
(100, 1),
(100, 2),
(100, 4),
(101, 1),
(101, 2),
(101, 4),
(102, 4),
(103, 4),
(104, 1),
(104, 2),
(104, 3),
(104, 4),
(105, 1),
(105, 2),
(105, 4),
(106, 1),
(106, 2),
(106, 4),
(107, 1),
(107, 2),
(107, 4),
(108, 1),
(108, 2),
(108, 4),
(109, 1),
(109, 2),
(109, 3),
(109, 4),
(110, 1),
(110, 4),
(111, 1),
(111, 2),
(111, 4),
(112, 1),
(112, 2),
(112, 3),
(112, 4),
(113, 1),
(113, 2),
(113, 3),
(113, 4),
(114, 1),
(114, 2),
(114, 3),
(114, 4),
(115, 1),
(115, 3),
(115, 4),
(116, 1),
(116, 4),
(117, 1),
(117, 2),
(117, 4),
(118, 1),
(118, 2),
(118, 4),
(119, 1),
(119, 2),
(119, 3),
(119, 4),
(120, 1),
(120, 2),
(120, 3),
(120, 4),
(121, 1),
(121, 2),
(121, 4),
(122, 1),
(122, 2),
(122, 4),
(123, 1),
(123, 2),
(123, 4),
(124, 1),
(124, 2),
(124, 4),
(125, 1),
(125, 2),
(125, 4),
(126, 1),
(126, 2),
(126, 4),
(127, 1),
(127, 2),
(127, 4),
(128, 1),
(128, 2),
(128, 4),
(129, 1),
(129, 2),
(129, 4),
(130, 1),
(130, 2),
(130, 4),
(131, 1),
(131, 2),
(131, 4),
(132, 1),
(132, 2),
(132, 4),
(133, 1),
(133, 2),
(133, 4),
(134, 1),
(134, 2),
(134, 4),
(135, 1),
(135, 2),
(135, 4),
(136, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` date DEFAULT NULL,
  `sale_by` int(11) DEFAULT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `order_type` enum('general','online') NOT NULL DEFAULT 'general',
  `delivery_charge` decimal(8,2) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `total` decimal(12,2) NOT NULL DEFAULT 0.00,
  `discount` varchar(255) DEFAULT NULL,
  `change_amount` decimal(12,2) DEFAULT NULL,
  `actual_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `tax` int(11) DEFAULT NULL,
  `receivable` decimal(12,2) DEFAULT NULL,
  `paid` decimal(12,2) NOT NULL DEFAULT 0.00,
  `returned` decimal(12,2) NOT NULL DEFAULT 0.00,
  `final_receivable` decimal(12,2) NOT NULL DEFAULT 0.00,
  `due` decimal(12,2) NOT NULL DEFAULT 0.00,
  `total_purchase_cost` decimal(12,2) DEFAULT NULL,
  `profit` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment_method` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `branch_id`, `customer_id`, `sale_date`, `sale_by`, `invoice_number`, `order_type`, `delivery_charge`, `quantity`, `total`, `discount`, `change_amount`, `actual_discount`, `tax`, `receivable`, `paid`, `returned`, `final_receivable`, `due`, `total_purchase_cost`, `profit`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-11-24', 2, '107644', 'general', NULL, 1, 1460.00, NULL, 1460.00, 0.00, NULL, 1460.00, 1460.00, 0.00, 1460.00, 0.00, NULL, 41.63, 1, NULL, '2024-11-24 07:02:22', '2024-11-24 07:02:22'),
(2, 1, 3, '2024-11-24', 2, '106406', 'general', NULL, 5, 4920.00, NULL, 4900.00, 20.00, NULL, 4900.00, 4900.00, 0.00, 4900.00, 0.00, NULL, 77.10, 1, NULL, '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(3, 1, 4, '2024-11-24', 2, '103976', 'general', NULL, 16, 44930.00, NULL, 43860.00, 1070.00, NULL, 43860.00, 43860.00, 0.00, 43860.00, 0.00, NULL, 29.22, 1, NULL, '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(4, 1, 5, '2024-11-24', 2, '110363', 'general', NULL, 4, 3700.00, NULL, 3700.00, 0.00, NULL, 3700.00, 3700.00, 0.00, 3700.00, 0.00, NULL, 70.17, 1, NULL, '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(5, 1, 6, '2024-11-24', 2, '118068', 'general', NULL, 6, 5470.00, NULL, 5470.00, 0.00, NULL, 5470.00, 5470.00, 0.00, 5470.00, 0.00, NULL, 106.06, 1, NULL, '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(6, 1, 7, '2024-11-24', 2, '103927', 'general', NULL, 5, 17840.00, NULL, 17540.00, 300.00, NULL, 17540.00, 17540.00, 0.00, 17540.00, 0.00, NULL, 135.06, 1, NULL, '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(7, 1, 8, '2024-11-24', 2, '104029', 'general', NULL, 10, 9360.00, NULL, 9260.00, 100.00, NULL, 9260.00, 9260.00, 0.00, 9260.00, 0.00, NULL, 74.30, 1, NULL, '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(8, 1, 9, '2024-11-24', 2, '100101', 'general', NULL, 6, 18240.00, NULL, 17810.00, 430.00, NULL, 17810.00, 17810.00, 0.00, 17810.00, 0.00, NULL, 22.76, 1, NULL, '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(9, 1, 10, '2024-11-24', 2, '119207', 'general', NULL, 9, 9875.00, NULL, 9870.00, 5.00, NULL, 9870.00, 9870.00, 0.00, 9870.00, 0.00, NULL, 220.37, 1, NULL, '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(10, 1, 11, '2024-11-24', 2, '114342', 'general', NULL, 6, 8140.00, NULL, 8140.00, 0.00, NULL, 8140.00, 8140.00, 0.00, 8140.00, 0.00, NULL, 199.60, 1, NULL, '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(11, 1, 12, '2024-11-24', 2, '115269', 'general', NULL, 6, 5540.00, NULL, 5500.00, 40.00, NULL, 5500.00, 5500.00, 0.00, 5500.00, 0.00, NULL, 65.41, 1, NULL, '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(12, 1, 13, '2024-11-24', 2, '107644', 'general', NULL, 3, 3850.00, NULL, 3850.00, 0.00, NULL, 3850.00, 3850.00, 0.00, 3850.00, 0.00, NULL, 100.76, 1, NULL, '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(13, 1, 14, '2024-11-24', 2, '122748', 'general', NULL, 4, 3930.00, NULL, 3930.00, 0.00, NULL, 3930.00, 3930.00, 0.00, 3930.00, 0.00, NULL, 79.57, 1, NULL, '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(15, 1, 16, '2024-11-24', 2, '119150', 'general', NULL, 4, 3960.00, NULL, 3950.00, 10.00, NULL, 3950.00, 3950.00, 0.00, 3950.00, 0.00, NULL, 69.81, 1, NULL, '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(17, 1, 2, '2024-11-24', 2, '115600', 'general', NULL, 1, 1460.00, NULL, 1460.00, 0.00, NULL, 1460.00, 1460.00, 0.00, 1460.00, 0.00, NULL, 41.63, 1, NULL, '2024-11-24 10:41:07', '2024-11-24 10:41:07'),
(18, 1, 20, '2024-11-24', 2, '108774', 'general', NULL, 11, 54840.00, NULL, 53500.00, 1340.00, NULL, 53500.00, 53500.00, 0.00, 53500.00, 0.00, NULL, 22.00, 1, NULL, '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(19, 1, 21, '2024-11-24', 2, '102194', 'general', NULL, 10, 11060.00, NULL, 11000.00, 60.00, NULL, 11000.00, 11000.00, 0.00, 11000.00, 0.00, NULL, 202.71, 1, NULL, '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(20, 1, 22, '2024-11-25', 2, '116331', 'general', NULL, 8, 27760.00, NULL, 27300.00, 460.00, NULL, 27300.00, 27300.00, 0.00, 27300.00, 0.00, NULL, 241.19, 1, NULL, '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(21, 1, 23, '2024-11-24', 2, '121016', 'general', NULL, 15, 14700.00, NULL, 14550.00, 150.00, NULL, 14550.00, 14550.00, 0.00, 14550.00, 0.00, NULL, 157.78, 1, NULL, '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(22, 1, 24, '2024-11-24', 2, '117505', 'general', NULL, 16, 16825.00, NULL, 16800.00, 25.00, NULL, 16800.00, 16800.00, 0.00, 16800.00, 0.00, NULL, 332.12, 1, NULL, '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(23, 1, 10, '2024-11-24', 2, '103069', 'general', NULL, 2, 1760.00, NULL, 1760.00, 0.00, NULL, 1760.00, 1760.00, 0.00, 1760.00, 0.00, NULL, 35.90, 1, NULL, '2024-11-25 13:50:17', '2024-11-25 13:50:17'),
(24, 1, 25, '2024-11-24', 2, '108092', 'general', NULL, 4, 3630.00, NULL, 3630.00, 0.00, NULL, 3630.00, 3630.00, 0.00, 3630.00, 0.00, NULL, 70.82, 1, NULL, '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(25, 1, 26, '2024-11-24', 2, '103523', 'general', NULL, 39, 120410.00, NULL, 117830.00, 2580.00, NULL, 117830.00, 0.00, 0.00, 117830.00, 117830.00, NULL, 448.73, 1, NULL, '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(26, 1, 27, '2024-11-24', 2, '122710', 'general', NULL, 5, 42250.00, NULL, 40980.00, 1270.00, NULL, 40980.00, 20000.00, 0.00, 40980.00, 20980.00, NULL, -73.55, 1, NULL, '2024-11-25 14:04:00', '2024-11-25 14:04:00'),
(27, 1, 28, '2024-11-24', 2, '102364', 'general', NULL, 1, 2050.00, NULL, 2050.00, 0.00, NULL, 2050.00, 2050.00, 0.00, 2050.00, 0.00, NULL, 65.19, 1, NULL, '2024-11-25 14:06:55', '2024-11-25 14:06:55'),
(28, 1, 29, '2024-11-25', 2, '107259', 'general', NULL, 14, 15045.00, NULL, 14850.00, 195.00, NULL, 14850.00, 14850.00, 0.00, 14850.00, 0.00, NULL, 152.77, 1, NULL, '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(29, 1, 31, '2024-11-25', 2, '100659', 'general', NULL, 8, 8210.00, NULL, 8210.00, 0.00, NULL, 8210.00, 8210.00, 0.00, 8210.00, 0.00, NULL, 179.87, 1, NULL, '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(30, 1, 32, '2024-11-26', 2, '121035', 'general', NULL, 6, 6120.00, NULL, 6120.00, 0.00, NULL, 6120.00, 6120.00, 0.00, 6120.00, 0.00, NULL, 124.64, 1, NULL, '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(31, 1, 33, '2024-11-26', 2, '119047', 'general', NULL, 4, 3800.00, NULL, 3800.00, 0.00, NULL, 3800.00, 3800.00, 0.00, 3800.00, 0.00, NULL, 69.20, 1, NULL, '2024-11-26 08:46:28', '2024-11-26 08:46:28'),
(32, 1, 34, '2024-11-25', 2, '119594', 'general', NULL, 6, 6540.00, NULL, 6540.00, 0.00, NULL, 6540.00, 6540.00, 0.00, 6540.00, 0.00, NULL, 148.80, 1, NULL, '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(33, 1, 35, '2024-11-25', 2, '106328', 'general', NULL, 5, 12710.00, NULL, 12460.00, 250.00, NULL, 12460.00, 12460.00, 0.00, 12460.00, 0.00, NULL, 78.41, 1, NULL, '2024-11-30 12:10:23', '2024-11-30 12:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `wa_status` enum('yes','no') DEFAULT NULL,
  `wa_duration` varchar(255) DEFAULT NULL,
  `wa_exp_date` date DEFAULT NULL,
  `main_unit_qty` int(11) DEFAULT NULL,
  `sub_unit_qty` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` decimal(12,2) NOT NULL,
  `total_purchase_cost` decimal(12,2) DEFAULT NULL,
  `total_profit` decimal(12,2) DEFAULT NULL,
  `sell_type` enum('via sell','normal sell') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `sale_id`, `product_id`, `rate`, `discount`, `wa_status`, `wa_duration`, `wa_exp_date`, `main_unit_qty`, `sub_unit_qty`, `qty`, `sub_total`, `total_purchase_cost`, `total_profit`, `sell_type`, `created_at`, `updated_at`) VALUES
(1, 1, 47, 1460.00, 0, 'yes', '1 Year', NULL, NULL, NULL, 1, 1460.00, 1418.37, 41.63, 'normal sell', '2024-11-24 07:02:22', '2024-11-24 07:02:22'),
(2, 2, 43, 920.00, 0, 'yes', '1 Year', NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(3, 2, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(4, 2, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 1, 1180.00, 1152.74, 27.26, 'normal sell', '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(5, 3, 42, 6640.00, 0, '', NULL, NULL, NULL, NULL, 2, 13280.00, 12994.20, 285.80, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(6, 3, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 1, 8450.00, 8210.71, 239.29, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(7, 3, 33, 9410.00, 0, '', NULL, NULL, NULL, NULL, 1, 9410.00, 9161.76, 248.24, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(8, 3, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 2, 4100.00, 3969.62, 130.38, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(9, 3, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(10, 3, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 3, 2640.00, 2586.15, 53.85, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(11, 3, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 3, 2850.00, 2798.10, 51.90, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(12, 3, 56, 1180.00, 0, 'yes', '1 Year', NULL, NULL, NULL, 2, 2360.00, 2305.48, 54.52, 'normal sell', '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(13, 4, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(14, 4, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 1, 920.00, 902.38, 17.62, 'normal sell', '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(15, 4, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(16, 5, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(17, 5, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(18, 5, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 1, 950.00, 932.70, 17.30, 'normal sell', '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(19, 6, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 1, 8450.00, 8210.71, 239.29, 'normal sell', '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(20, 6, 42, 6640.00, 0, '', NULL, NULL, NULL, NULL, 1, 6640.00, 6497.10, 142.90, 'normal sell', '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(21, 6, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 1, 950.00, 932.70, 17.30, 'normal sell', '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(22, 6, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 1, 920.00, 902.38, 17.62, 'normal sell', '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(23, 6, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(24, 7, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 8, 7600.00, 7461.60, 138.40, 'normal sell', '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(25, 7, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(26, 8, 39, 7250.00, 0, '', NULL, NULL, NULL, NULL, 2, 14500.00, 14117.08, 382.92, 'normal sell', '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(27, 8, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(28, 8, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(29, 9, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(30, 9, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(31, 9, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(32, 9, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 1, 2050.00, 1984.81, 65.19, 'normal sell', '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(33, 9, 45, 1405.00, 0, '', NULL, NULL, NULL, NULL, 1, 1405.00, 1368.18, 36.82, 'normal sell', '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(34, 10, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(35, 10, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(36, 10, 62, 2350.00, 0, '', NULL, NULL, NULL, NULL, 1, 2350.00, 2285.43, 64.57, 'normal sell', '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(37, 10, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 1, 2050.00, 1984.81, 65.19, 'normal sell', '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(38, 11, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(39, 11, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(40, 11, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(41, 12, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 1, 920.00, 902.38, 17.62, 'normal sell', '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(42, 12, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(43, 12, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 1, 2050.00, 1984.81, 65.19, 'normal sell', '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(44, 13, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(45, 13, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(46, 13, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 1, 1150.00, 1122.98, 27.02, 'normal sell', '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(48, 15, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(49, 15, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 1, 1180.00, 1152.74, 27.26, 'normal sell', '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(50, 15, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 1, 880.00, 862.05, 17.95, 'normal sell', '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(52, 17, 47, 1460.00, 0, '', NULL, NULL, NULL, NULL, 1, 1460.00, 1418.37, 41.63, 'normal sell', '2024-11-24 10:41:07', '2024-11-24 10:41:07'),
(53, 18, 42, 6640.00, 0, '', NULL, NULL, NULL, NULL, 3, 19920.00, 19491.30, 428.70, 'normal sell', '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(54, 18, 39, 7250.00, 0, '', NULL, NULL, NULL, NULL, 2, 14500.00, 14117.08, 382.92, 'normal sell', '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(55, 18, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 2, 16900.00, 16421.42, 478.58, 'normal sell', '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(56, 18, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 4, 3520.00, 3448.20, 71.80, 'normal sell', '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(57, 19, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 3, 2850.00, 2798.10, 51.90, 'normal sell', '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(58, 19, 51, 1270.00, 0, '', NULL, NULL, NULL, NULL, 3, 3810.00, 3698.79, 111.21, 'normal sell', '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(59, 19, 54, 1030.00, 0, '', NULL, NULL, NULL, NULL, 2, 2060.00, 2025.00, 35.00, 'normal sell', '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(60, 19, 49, 1170.00, 0, '', NULL, NULL, NULL, NULL, 2, 2340.00, 2275.40, 64.60, 'normal sell', '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(61, 20, 42, 6640.00, 0, '', NULL, NULL, NULL, NULL, 1, 6640.00, 6497.10, 142.90, 'normal sell', '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(62, 20, 39, 7250.00, 0, '', NULL, NULL, NULL, NULL, 1, 7250.00, 7058.54, 191.46, 'normal sell', '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(63, 20, 36, 9390.00, 0, '', NULL, NULL, NULL, NULL, 1, 9390.00, 9112.26, 277.74, 'normal sell', '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(64, 20, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 3, 2640.00, 2586.15, 53.85, 'normal sell', '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(65, 20, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(66, 21, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 4, 3680.00, 3609.52, 70.48, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(67, 21, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 4, 3520.00, 3448.20, 71.80, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(68, 21, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 3, 2850.00, 2798.10, 51.90, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(69, 21, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 2, 2300.00, 2245.96, 54.04, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(70, 21, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 1, 1180.00, 1152.74, 27.26, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(71, 21, 49, 1170.00, 0, '', NULL, NULL, NULL, NULL, 1, 1170.00, 1137.70, 32.30, 'normal sell', '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(72, 22, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 5, 4600.00, 4511.90, 88.10, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(73, 22, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 4, 3520.00, 3448.20, 71.80, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(74, 22, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 4, 3800.00, 3730.80, 69.20, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(75, 22, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 1, 1150.00, 1122.98, 27.02, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(76, 22, 44, 1405.00, 0, '', NULL, NULL, NULL, NULL, 1, 1405.00, 1368.57, 36.43, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(77, 22, 62, 2350.00, 0, '', NULL, NULL, NULL, NULL, 1, 2350.00, 2285.43, 64.57, 'normal sell', '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(78, 23, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-25 13:50:17', '2024-11-25 13:50:17'),
(79, 24, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(80, 24, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 1, 950.00, 932.70, 17.30, 'normal sell', '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(81, 24, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 1, 920.00, 902.38, 17.62, 'normal sell', '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(82, 25, 38, 13150.00, 0, '', NULL, NULL, NULL, NULL, 1, 13150.00, 12833.25, 316.75, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(83, 25, 39, 7250.00, 0, '', NULL, NULL, NULL, NULL, 2, 14500.00, 14117.08, 382.92, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(84, 25, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 2, 16900.00, 16421.42, 478.58, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(85, 25, 42, 6640.00, 0, '', NULL, NULL, NULL, NULL, 2, 13280.00, 12994.20, 285.80, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(86, 25, 36, 9390.00, 0, '', NULL, NULL, NULL, NULL, 1, 9390.00, 9112.26, 277.74, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(87, 25, 33, 9410.00, 0, '', NULL, NULL, NULL, NULL, 2, 18820.00, 18323.52, 496.48, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(88, 25, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 5, 4600.00, 4511.90, 88.10, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(89, 25, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 5, 4400.00, 4310.25, 89.75, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(90, 25, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 5, 4750.00, 4663.50, 86.50, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(91, 25, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 2, 2300.00, 2245.96, 54.04, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(92, 25, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 1, 2050.00, 1984.81, 65.19, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(93, 25, 62, 2350.00, 0, '', NULL, NULL, NULL, NULL, 2, 4700.00, 4570.86, 129.14, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(94, 25, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 2, 2360.00, 2305.48, 54.52, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(95, 25, 59, 1440.00, 0, '', NULL, NULL, NULL, NULL, 2, 2880.00, 2806.66, 73.34, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(96, 25, 44, 1405.00, 0, '', NULL, NULL, NULL, NULL, 1, 1405.00, 1368.57, 36.43, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(97, 25, 47, 1460.00, 0, '', NULL, NULL, NULL, NULL, 1, 1460.00, 1418.37, 41.63, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(98, 25, 45, 1405.00, 0, '', NULL, NULL, NULL, NULL, 1, 1405.00, 1368.18, 36.82, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(99, 25, 54, 1030.00, 0, '', NULL, NULL, NULL, NULL, 2, 2060.00, 2025.00, 35.00, 'normal sell', '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(100, 26, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 5, 42250.00, 41053.55, 1196.45, 'normal sell', '2024-11-25 14:04:00', '2024-11-25 14:04:00'),
(101, 27, 55, 2050.00, 0, '', NULL, NULL, NULL, NULL, 1, 2050.00, 1984.81, 65.19, 'normal sell', '2024-11-25 14:06:55', '2024-11-25 14:06:55'),
(102, 28, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(103, 28, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(104, 28, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(105, 28, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 2, 2360.00, 2305.48, 54.52, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(106, 28, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 1, 1150.00, 1122.98, 27.02, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(107, 28, 49, 1170.00, 0, '', NULL, NULL, NULL, NULL, 1, 1170.00, 1137.70, 32.30, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(108, 28, 51, 1270.00, 0, '', NULL, NULL, NULL, NULL, 2, 2540.00, 2465.86, 74.14, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(109, 28, 44, 1405.00, 0, '', NULL, NULL, NULL, NULL, 1, 1405.00, 1368.57, 36.43, 'normal sell', '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(110, 29, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 2, 1840.00, 1804.76, 35.24, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(111, 29, 47, 1460.00, 0, '', NULL, NULL, NULL, NULL, 1, 1460.00, 1418.37, 41.63, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(112, 29, 49, 1170.00, 0, '', NULL, NULL, NULL, NULL, 1, 1170.00, 1137.70, 32.30, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(113, 29, 52, 880.00, 0, '', NULL, NULL, NULL, NULL, 2, 1760.00, 1724.10, 35.90, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(114, 29, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 1, 950.00, 932.70, 17.30, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(115, 29, 54, 1030.00, 0, '', NULL, NULL, NULL, NULL, 1, 1030.00, 1012.50, 17.50, 'normal sell', '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(116, 30, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(117, 30, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 1, 1150.00, 1122.98, 27.02, 'normal sell', '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(118, 30, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 1, 1180.00, 1152.74, 27.26, 'normal sell', '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(119, 30, 54, 1030.00, 0, '', NULL, NULL, NULL, NULL, 1, 1030.00, 1012.50, 17.50, 'normal sell', '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(120, 31, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 4, 3800.00, 3730.80, 69.20, 'normal sell', '2024-11-26 08:46:28', '2024-11-26 08:46:28'),
(121, 32, 43, 920.00, 0, '', NULL, NULL, NULL, NULL, 3, 2760.00, 2707.14, 52.86, 'normal sell', '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(122, 32, 49, 1170.00, 0, '', NULL, NULL, NULL, NULL, 1, 1170.00, 1137.70, 32.30, 'normal sell', '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(123, 32, 58, 1460.00, 0, '', NULL, NULL, NULL, NULL, 1, 1460.00, 1423.38, 36.62, 'normal sell', '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(124, 32, 48, 1150.00, 0, '', NULL, NULL, NULL, NULL, 1, 1150.00, 1122.98, 27.02, 'normal sell', '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(125, 33, 56, 1180.00, 0, '', NULL, NULL, NULL, NULL, 2, 2360.00, 2305.48, 54.52, 'normal sell', '2024-11-30 12:10:23', '2024-11-30 12:10:23'),
(126, 33, 53, 950.00, 0, '', NULL, NULL, NULL, NULL, 2, 1900.00, 1865.40, 34.60, 'normal sell', '2024-11-30 12:10:23', '2024-11-30 12:10:23'),
(127, 33, 41, 8450.00, 0, '', NULL, NULL, NULL, NULL, 1, 8450.00, 8210.71, 239.29, 'normal sell', '2024-11-30 12:10:23', '2024-11-30 12:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `number` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_categories`
--

CREATE TABLE `sms_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `branch_id`, `product_id`, `stock_quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 39, 11, '2024-11-21 13:09:27', '2024-11-25 14:01:22'),
(3, 1, 53, 137, '2024-11-24 05:44:59', '2024-11-30 12:16:59'),
(4, 1, 49, 60, '2024-11-24 05:44:59', '2024-11-30 12:16:59'),
(5, 1, 44, 64, '2024-11-24 05:44:59', '2024-11-30 12:16:59'),
(6, 1, 42, 18, '2024-11-24 05:44:59', '2024-11-25 14:01:22'),
(7, 1, 63, 19, '2024-11-24 05:44:59', '2024-11-24 06:14:56'),
(8, 1, 41, 12, '2024-11-24 06:14:56', '2024-12-02 06:03:45'),
(9, 1, 33, 1, '2024-11-24 06:14:56', '2024-11-25 14:01:22'),
(10, 1, 36, 0, '2024-11-24 06:14:56', '2024-11-25 14:01:22'),
(11, 1, 37, 5, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(12, 1, 38, 4, '2024-11-24 06:14:56', '2024-11-25 14:01:22'),
(13, 1, 52, 185, '2024-11-24 06:14:56', '2024-11-30 12:16:59'),
(14, 1, 54, 27, '2024-11-24 06:14:56', '2024-12-02 06:03:45'),
(15, 1, 48, 17, '2024-11-24 06:14:56', '2024-11-30 12:16:59'),
(16, 1, 56, 38, '2024-11-24 06:14:56', '2024-11-30 12:16:59'),
(17, 1, 51, 24, '2024-11-24 06:14:56', '2024-11-26 08:39:24'),
(18, 1, 59, 25, '2024-11-24 06:14:56', '2024-12-02 06:03:45'),
(19, 1, 58, 20, '2024-11-24 06:14:56', '2024-12-02 06:03:45'),
(20, 1, 45, 2, '2024-11-24 06:14:56', '2024-11-30 12:16:59'),
(21, 1, 47, 0, '2024-11-24 06:14:56', '2024-11-30 12:16:59'),
(22, 1, 55, 16, '2024-11-24 06:14:56', '2024-11-25 14:06:55'),
(23, 1, 62, 6, '2024-11-24 06:14:56', '2024-11-25 14:01:22'),
(24, 1, 43, 260, '2024-11-24 06:14:56', '2024-11-30 12:16:59');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gaming Phones', 'gaming-phones', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 1, 'Feature Phones', 'feature-phones', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(3, 1, 'Foldable Phones', 'foldable-phones', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(4, 1, 'Smartphones', 'Smartphones', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(5, 1, 'Bluetooth Speakers', 'bluetooth-speakers', NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `opening_receivable` decimal(12,2) DEFAULT NULL,
  `opening_payable` decimal(12,2) DEFAULT NULL,
  `wallet_balance` decimal(14,2) NOT NULL DEFAULT 0.00,
  `total_receivable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_payable` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `branch_id`, `name`, `email`, `phone`, `address`, `opening_receivable`, `opening_payable`, `wallet_balance`, `total_receivable`, `total_payable`, `created_at`, `updated_at`) VALUES
(3, 1, 'iSMARTU Technology BD Ltd.', NULL, '01700711156', 'Dhaka', 0.00, 0.00, -10982.10, 439017.90, 450000.00, '2024-11-23 06:52:28', '2024-12-02 06:03:45'),
(4, 1, 'M/S Sajia Enterprise', NULL, '01731473989', 'Chittagong', 0.00, 0.00, 949951.35, 1449951.35, 500000.00, '2024-11-23 06:54:53', '2024-11-24 06:14:56'),
(5, 1, 'test supplier', NULL, '21413414123213', NULL, 0.00, 0.00, 0.00, 500.00, 500.00, '2024-11-24 09:21:30', '2024-11-24 09:22:17');

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `percentage` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `payment_type` enum('receive','pay') NOT NULL COMMENT 'Recieve or Pay',
  `particulars` varchar(255) DEFAULT NULL COMMENT 'Purchase #12 or Paid to Supplyer/Sale #10 Received from Customer',
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `others_id` int(11) DEFAULT NULL,
  `debit` decimal(12,2) DEFAULT NULL,
  `credit` decimal(12,2) DEFAULT NULL,
  `balance` decimal(14,2) NOT NULL,
  `payment_method` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `branch_id`, `date`, `payment_type`, `particulars`, `customer_id`, `supplier_id`, `others_id`, `debit`, `credit`, `balance`, `payment_method`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-11-21', 'pay', 'Purchase#1', NULL, 1, NULL, 300000.00, 63526.86, 236473.14, 5, NULL, '2024-11-21 13:09:27', '2024-11-21 13:09:27'),
(2, 1, '2024-11-21', 'pay', 'Purchase#2', NULL, 2, NULL, 500000.00, 63526.86, 436473.14, 5, NULL, '2024-11-21 13:16:33', '2024-11-21 13:16:33'),
(3, 1, '2024-11-21', 'pay', 'Purchase#3', NULL, 3, NULL, 300000.00, 280126.60, 19873.40, 5, NULL, '2024-11-24 05:44:59', '2024-11-24 05:44:59'),
(4, 1, '2024-11-24', 'pay', 'Purchase#4', NULL, 4, NULL, 500000.00, 1449951.35, -949951.35, 5, NULL, '2024-11-24 06:14:56', '2024-11-24 06:14:56'),
(5, 1, '2024-11-24', 'receive', 'Sale#1', 2, NULL, NULL, 1460.00, 1460.00, 0.00, 1, NULL, '2024-11-24 07:02:22', '2024-11-24 07:02:22'),
(6, 1, '2024-11-24', 'receive', 'Sale#2', 3, NULL, NULL, 4900.00, 4900.00, 0.00, 1, NULL, '2024-11-24 07:04:46', '2024-11-24 07:04:46'),
(7, 1, '2024-11-24', 'receive', 'Sale#3', 4, NULL, NULL, 43860.00, 43860.00, 0.00, 1, NULL, '2024-11-24 07:10:52', '2024-11-24 07:10:52'),
(8, 1, '2024-11-24', 'receive', 'Sale#4', 5, NULL, NULL, 3700.00, 3700.00, 0.00, 1, NULL, '2024-11-24 07:12:10', '2024-11-24 07:12:10'),
(9, 1, '2024-11-24', 'receive', 'Sale#5', 6, NULL, NULL, 5470.00, 5470.00, 0.00, 1, NULL, '2024-11-24 07:13:09', '2024-11-24 07:13:09'),
(10, 1, '2024-11-24', 'receive', 'Sale#6', 7, NULL, NULL, 17540.00, 17540.00, 0.00, 1, NULL, '2024-11-24 07:14:18', '2024-11-24 07:14:18'),
(11, 1, '2024-11-24', 'receive', 'Sale#7', 8, NULL, NULL, 9260.00, 9260.00, 0.00, 1, NULL, '2024-11-24 07:15:05', '2024-11-24 07:15:05'),
(12, 1, '2024-11-24', 'receive', 'Sale#8', 9, NULL, NULL, 17810.00, 17810.00, 0.00, 1, NULL, '2024-11-24 07:16:05', '2024-11-24 07:16:05'),
(13, 1, '2024-11-24', 'receive', 'Sale#9', 10, NULL, NULL, 9870.00, 9870.00, 0.00, 1, NULL, '2024-11-24 07:19:11', '2024-11-24 07:19:11'),
(14, 1, '2024-11-24', 'receive', 'Sale#10', 11, NULL, NULL, 8140.00, 8140.00, 0.00, 1, NULL, '2024-11-24 07:20:49', '2024-11-24 07:20:49'),
(15, 1, '2024-11-24', 'receive', 'Sale#11', 12, NULL, NULL, 5500.00, 5500.00, 0.00, 1, NULL, '2024-11-24 07:21:51', '2024-11-24 07:21:51'),
(16, 1, '2024-11-24', 'receive', 'Sale#12', 13, NULL, NULL, 3850.00, 3850.00, 0.00, 1, NULL, '2024-11-24 07:22:36', '2024-11-24 07:22:36'),
(17, 1, '2024-11-24', 'receive', 'Sale#13', 14, NULL, NULL, 3930.00, 3930.00, 0.00, 1, NULL, '2024-11-24 07:23:19', '2024-11-24 07:23:19'),
(18, 1, '2024-11-24', 'receive', 'Sale#14', 15, NULL, NULL, 0.00, 1460.00, 1460.00, 1, NULL, '2024-11-24 07:23:59', '2024-11-24 07:23:59'),
(19, 1, '2024-11-24', 'receive', 'Sale#15', 16, NULL, NULL, 3950.00, 3950.00, 0.00, 1, NULL, '2024-11-24 07:24:53', '2024-11-24 07:24:53'),
(22, 1, '2024-11-24', 'receive', 'Sale#17', 2, NULL, NULL, 1460.00, 1460.00, 0.00, 1, NULL, '2024-11-24 10:41:07', '2024-11-24 10:41:07'),
(23, 1, '2024-11-24', 'receive', 'Sale#18', 20, NULL, NULL, 53500.00, 53500.00, 0.00, 1, NULL, '2024-11-25 13:27:40', '2024-11-25 13:27:40'),
(24, 1, '2024-11-24', 'receive', 'Sale#19', 21, NULL, NULL, 11000.00, 11000.00, 0.00, 1, NULL, '2024-11-25 13:31:28', '2024-11-25 13:31:28'),
(25, 1, '2024-11-25', 'receive', 'Sale#20', 22, NULL, NULL, 27300.00, 27300.00, 0.00, 1, NULL, '2024-11-25 13:34:18', '2024-11-25 13:34:18'),
(26, 1, '2024-11-24', 'receive', 'Sale#21', 23, NULL, NULL, 14550.00, 14550.00, 0.00, 1, NULL, '2024-11-25 13:37:39', '2024-11-25 13:37:39'),
(27, 1, '2024-11-24', 'receive', 'Sale#22', 24, NULL, NULL, 16800.00, 16800.00, 0.00, 1, NULL, '2024-11-25 13:45:48', '2024-11-25 13:45:48'),
(28, 1, '2024-11-24', 'receive', 'Sale#23', 10, NULL, NULL, 1760.00, 1760.00, 0.00, 1, NULL, '2024-11-25 13:50:17', '2024-11-25 13:50:17'),
(29, 1, '2024-11-24', 'receive', 'Sale#24', 25, NULL, NULL, 3630.00, 3630.00, 0.00, 1, NULL, '2024-11-25 13:54:28', '2024-11-25 13:54:28'),
(30, 1, '2024-11-24', 'receive', 'Sale#25', 26, NULL, NULL, 0.00, 117830.00, 117830.00, 1, NULL, '2024-11-25 14:01:22', '2024-11-25 14:01:22'),
(31, 1, '2024-11-24', 'receive', 'Sale#26', 27, NULL, NULL, 20000.00, 40980.00, 20980.00, 1, NULL, '2024-11-25 14:04:00', '2024-11-25 14:04:00'),
(32, 1, '2024-11-24', 'receive', 'Sale#27', 28, NULL, NULL, 2050.00, 2050.00, 0.00, 1, NULL, '2024-11-25 14:06:55', '2024-11-25 14:06:55'),
(33, 1, '2024-11-25', 'receive', 'Sale#28', 29, NULL, NULL, 14850.00, 14850.00, 0.00, 1, NULL, '2024-11-26 08:39:24', '2024-11-26 08:39:24'),
(34, 1, '2024-11-25', 'receive', 'Sale#29', 31, NULL, NULL, 8210.00, 8210.00, 0.00, 1, NULL, '2024-11-26 08:42:52', '2024-11-26 08:42:52'),
(35, 1, '2024-11-26', 'receive', 'Sale#30', 32, NULL, NULL, 6120.00, 6120.00, 0.00, 1, NULL, '2024-11-26 08:45:01', '2024-11-26 08:45:01'),
(36, 1, '2024-11-26', 'receive', 'Sale#31', 33, NULL, NULL, 3800.00, 3800.00, 0.00, 1, NULL, '2024-11-26 08:46:28', '2024-11-26 08:46:28'),
(37, 1, '2024-11-25', 'receive', 'Sale#32', 34, NULL, NULL, 6540.00, 6540.00, 0.00, 1, NULL, '2024-11-30 12:08:04', '2024-11-30 12:08:04'),
(38, 1, '2024-11-25', 'receive', 'Sale#33', 35, NULL, NULL, 12460.00, 12460.00, 0.00, 1, NULL, '2024-11-30 12:10:23', '2024-11-30 12:10:23'),
(39, 1, '2024-11-25', 'receive', 'Sale#34', 36, NULL, NULL, 500.00, 20800.00, 20300.00, 1, NULL, '2024-11-30 12:16:59', '2024-11-30 12:16:59'),
(40, 1, '2024-11-28', 'pay', 'Purchase#6', NULL, 3, NULL, 150000.00, 158891.30, -8891.30, 5, NULL, '2024-12-02 06:03:45', '2024-12-02 06:03:45');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `related_to_unit` varchar(40) DEFAULT NULL,
  `related_sign` varchar(20) DEFAULT NULL,
  `related_by` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `related_to_unit`, `related_sign`, `related_by`, `created_at`, `updated_at`) VALUES
(1, 'Piece', NULL, NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 'Packet', NULL, NULL, 0, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `name`, `email`, `phone`, `photo`, `address`, `email_verified_at`, `branch_id`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Super Admin', 'superadmin@gmail.com', '12345656', NULL, NULL, NULL, 1, '$2y$10$u4477ATEvDQAv6Gi/82W1.kApxW.owVyBIFj99sw5pwlvlmcx0yvq', NULL, '2024-11-04 06:43:15', '2024-11-04 06:43:15'),
(2, 1, 'ITEL MOBILE', 'admin@gmail.com', '01829621424', '891074177.jpg', 'IBRAHIM MANSON ,BARI PARA ROAD, HATHAZARI BUS STAND, HATHAZARI, CHITTAGONG', NULL, 1, '$2y$10$olZh7bS5uglXwyERIcPpD.b6SbfY3r6e8TG3MQzhBv4KnsRWegyHO', NULL, '2024-11-04 06:43:15', '2024-11-19 10:30:02'),
(3, 1, 'Sales Man', 'salesadmin@gmail.com', '1234538', NULL, NULL, NULL, 1, '$2y$10$2PK6du3pjDKW1rzi.FxMX.9xKDCap2zhx/ZHIPmkUxLHCeRwaWmgy', NULL, '2024-11-04 06:43:15', '2024-11-04 06:45:15'),
(4, 1, 'TecAdmin', 'tecadmin@gmail.com', '1234538', NULL, NULL, NULL, 1, '$2y$10$I9Z3WzOE47nHvQx1juK.OuAr9yZkoCLoMnFffbZiEe9tONHo1vz1m', NULL, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_limits`
--

CREATE TABLE `user_limits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_limit` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_limits`
--

INSERT INTO `user_limits` (`id`, `company_id`, `user_limit`, `created_at`, `updated_at`) VALUES
(1, 1, 5, '2024-11-04 06:43:15', '2024-11-04 06:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `via_sales`
--

CREATE TABLE `via_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_number` bigint(20) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `cost_price` decimal(8,2) DEFAULT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `sub_total` decimal(8,2) DEFAULT NULL,
  `paid` decimal(8,2) DEFAULT NULL,
  `due` decimal(8,2) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_account_id_foreign` (`account_id`),
  ADD KEY `account_transactions_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `actual_payments`
--
ALTER TABLE `actual_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actual_payments_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `banks_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_balances`
--
ALTER TABLE `company_balances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_balances_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `damages`
--
ALTER TABLE `damages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `damages_branch_id_foreign` (`branch_id`),
  ADD KEY `damages_product_id_foreign` (`product_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `devices_user_id_foreign` (`user_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_salaries_branch_id_foreign` (`branch_id`),
  ADD KEY `employee_salaries_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_branch_id_foreign` (`branch_id`),
  ADD KEY `expenses_expense_category_id_foreign` (`expense_category_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `investors`
--
ALTER TABLE `investors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investors_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_group_name_unique` (`name`,`guard_name`,`group_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pos_settings`
--
ALTER TABLE `pos_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_barcode_unique` (`barcode`),
  ADD KEY `products_branch_id_foreign` (`branch_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `promotion_details`
--
ALTER TABLE `promotion_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotion_details_branch_id_foreign` (`branch_id`),
  ADD KEY `promotion_details_promotion_id_foreign` (`promotion_id`);

--
-- Indexes for table `psizes`
--
ALTER TABLE `psizes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `psizes_category_id_foreign` (`category_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_branch_id_foreign` (`branch_id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_items_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchase_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `returns_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `return_items`
--
ALTER TABLE `return_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `return_items_return_id_foreign` (`return_id`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_branch_id_foreign` (`branch_id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_items_sale_id_foreign` (`sale_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sms_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `sms_categories`
--
ALTER TABLE `sms_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_branch_id_foreign` (`branch_id`),
  ADD KEY `stocks_product_id_foreign` (`product_id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `suppliers_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_branch_id_foreign` (`branch_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_company_id_foreign` (`company_id`);

--
-- Indexes for table `user_limits`
--
ALTER TABLE `user_limits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_limits_company_id_foreign` (`company_id`);

--
-- Indexes for table `via_sales`
--
ALTER TABLE `via_sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `via_sales_branch_id_foreign` (`branch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `actual_payments`
--
ALTER TABLE `actual_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_balances`
--
ALTER TABLE `company_balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `damages`
--
ALTER TABLE `damages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investors`
--
ALTER TABLE `investors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos_settings`
--
ALTER TABLE `pos_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotion_details`
--
ALTER TABLE `promotion_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `psizes`
--
ALTER TABLE `psizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `purchase_items`
--
ALTER TABLE `purchase_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_items`
--
ALTER TABLE `return_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_categories`
--
ALTER TABLE `sms_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_limits`
--
ALTER TABLE `user_limits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `via_sales`
--
ALTER TABLE `via_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `banks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `account_transactions_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `actual_payments`
--
ALTER TABLE `actual_payments`
  ADD CONSTRAINT `actual_payments_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `banks`
--
ALTER TABLE `banks`
  ADD CONSTRAINT `banks_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `company_balances`
--
ALTER TABLE `company_balances`
  ADD CONSTRAINT `company_balances_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `damages`
--
ALTER TABLE `damages`
  ADD CONSTRAINT `damages_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `damages_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_salaries`
--
ALTER TABLE `employee_salaries`
  ADD CONSTRAINT `employee_salaries_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_salaries_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `investors`
--
ALTER TABLE `investors`
  ADD CONSTRAINT `investors_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `sub_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promotion_details`
--
ALTER TABLE `promotion_details`
  ADD CONSTRAINT `promotion_details_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotion_details_promotion_id_foreign` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `psizes`
--
ALTER TABLE `psizes`
  ADD CONSTRAINT `psizes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_items`
--
ALTER TABLE `purchase_items`
  ADD CONSTRAINT `purchase_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_items_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `return_items`
--
ALTER TABLE `return_items`
  ADD CONSTRAINT `return_items_return_id_foreign` FOREIGN KEY (`return_id`) REFERENCES `returns` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sms`
--
ALTER TABLE `sms`
  ADD CONSTRAINT `sms_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `stocks_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `suppliers_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_limits`
--
ALTER TABLE `user_limits`
  ADD CONSTRAINT `user_limits_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `via_sales`
--
ALTER TABLE `via_sales`
  ADD CONSTRAINT `via_sales_branch_id_foreign` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
