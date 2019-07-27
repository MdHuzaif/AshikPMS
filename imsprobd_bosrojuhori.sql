-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 08:18 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imsprobd_bosrojuhori`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `expenses_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenses_name`, `party_name`, `totalamount`, `paidamount`, `dueamount`, `product_name`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(2, 'Transport', 'Hanif', 500, 200, 300, 'Bus', 'owner', NULL, '2019-04-21 19:45:03', '2019-04-21 19:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `expensestitles`
--

CREATE TABLE `expensestitles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expensestitles`
--

INSERT INTO `expensestitles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Transport', '2019-04-21 19:04:51', '2019-04-21 19:04:51'),
(3, 'Jersy', '2019-04-21 23:06:39', '2019-04-21 23:06:39'),
(4, 'Tea', '2019-04-28 20:55:33', '2019-04-28 20:55:33'),
(5, 'Tea', '2019-04-28 20:55:42', '2019-04-28 20:55:42');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `id` int(10) UNSIGNED NOT NULL,
  `shopname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double NOT NULL,
  `run` double NOT NULL,
  `damage` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`id`, `shopname`, `total`, `run`, `damage`, `created_at`, `updated_at`) VALUES
(1, 'Machinaries-1', 100, 50, 50, NULL, '2019-07-24 11:39:14'),
(2, 'Machinaries-2', 150, 80, 70, NULL, '2019-07-22 12:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_28_124228_create_roles_table', 1),
(4, '2017_05_28_124417_create_user_roles_table', 1),
(5, '2017_05_28_124654_create_permissions_table', 1),
(6, '2017_05_28_124806_create_role_permissions_table', 1),
(7, '2017_05_28_125406_create_modules_table', 1),
(8, '2017_05_28_125428_create_role_modules_table', 1),
(9, '2017_06_07_103849_create_productcategories_table', 1),
(10, '2017_06_07_103917_create_products_table', 1),
(11, '2017_06_09_071114_create_sales_table', 1),
(12, '2017_06_26_093722_create_expenses_table', 1),
(13, '2017_07_06_132245_create_salescarts_table', 1),
(14, '2017_07_06_141913_create_expensestitles_table', 1),
(15, '2017_07_07_125933_create_purchases_table', 1),
(16, '2017_07_17_084213_create_transactions_table', 1),
(18, '2019_07_22_013638_create_machines_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_url` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_icon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_rank` int(11) NOT NULL,
  `view_sidebar` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `module_key`, `module_url`, `module_icon`, `module_rank`, `view_sidebar`, `created_at`, `updated_at`) VALUES
(1, 'Dashboard', 'testdashboard-panel', 'dashboard-panel', NULL, 1, 1, NULL, NULL),
(2, 'Product Category', 'productcategory-list', 'productcategory-list', NULL, 2, 1, NULL, NULL),
(3, 'Product Management', 'product-list', 'product-list', NULL, 3, 1, NULL, NULL),
(4, 'Sales Management', 'sales-list', 'sales-list', NULL, 4, 1, '2019-04-21 10:13:52', '2019-04-21 10:13:52'),
(12, 'Module Management', 'module-list', 'module-list', NULL, 12, 1, '2019-04-21 10:18:00', '2019-04-21 10:18:00'),
(6, 'Expense Management', 'expenses-list', 'expenses-list', NULL, 6, 1, '2019-04-21 10:21:09', '2019-04-21 10:21:09'),
(7, 'User Management', 'user-register', 'user-register', NULL, 7, 1, '2019-04-21 10:24:53', '2019-04-21 10:24:53'),
(8, 'Role Management', 'role-list', 'role-list', NULL, 8, 1, '2019-04-21 10:34:52', '2019-04-21 10:34:52'),
(9, 'Permission Management', 'permission-list', 'permission-list', NULL, 9, 1, '2019-04-21 10:36:32', '2019-04-21 10:36:32'),
(10, 'Purchases Management', 'purchases-list', 'purchase-list', NULL, 10, 1, '2019-04-21 10:42:47', '2019-04-21 10:42:47'),
(11, 'Expenses', 'expenses-create', 'expenses-create', NULL, 11, 1, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(5, 'Transaction', 'transaction-list', 'transaction-list', NULL, 5, 1, NULL, NULL),
(14, 'Machineries Management', 'machine', 'machine', NULL, 13, 1, '2019-07-21 17:55:43', '2019-07-21 17:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `permission_key`, `created_at`, `updated_at`) VALUES
(1, 'product-list', 'product-list', NULL, NULL),
(2, 'user-register', 'user-register', NULL, NULL),
(3, 'user-save', 'user-save', NULL, NULL),
(4, 'change-password', 'change-password', NULL, NULL),
(5, 'change-save', 'change-save', NULL, NULL),
(6, 'module-list', 'module-list', NULL, NULL),
(7, 'reset-password', 'reset-password', NULL, NULL),
(8, 'password/email', 'password/email', NULL, NULL),
(9, 'password/reset/token', 'password-change', NULL, NULL),
(10, 'password/reset', 'password-reset', NULL, NULL),
(11, 'module-create', 'module-create', NULL, NULL),
(12, 'module-store', 'module-store', NULL, NULL),
(13, 'module-edit', 'module-edit', NULL, NULL),
(14, 'module-delete', 'module-delete', NULL, NULL),
(15, 'role-create', 'role-create', NULL, NULL),
(16, 'role-store', 'role-store', NULL, NULL),
(17, 'role-list', 'role-list', NULL, NULL),
(18, 'permission-create', 'permission-create', NULL, NULL),
(19, 'permission-store', 'permission-store', NULL, NULL),
(20, 'permission-list', 'permission-list', NULL, NULL),
(23, 'productcategory-create', 'productcategory-create', NULL, NULL),
(24, 'productcategory-list', 'productcategory-list', NULL, NULL),
(25, 'productcategory-save', 'productcategory-save', NULL, NULL),
(26, 'productcategory-delete', 'productcategory-delete', NULL, NULL),
(27, 'productcategory-edit', 'productcategory-edit', NULL, NULL),
(28, 'productcategory-update', 'productcategory-update', NULL, NULL),
(29, 'product-create', 'product-create', NULL, NULL),
(30, 'product-save', 'product-save', NULL, NULL),
(31, 'product-delete', 'product-delete', NULL, NULL),
(32, 'product-edit', 'product-edit', NULL, NULL),
(33, 'product-update', 'product-update', NULL, NULL),
(34, 'stock-edit', 'stock-edit', NULL, NULL),
(35, 'stock-update', 'stock-update', NULL, NULL),
(36, 'sales-create', 'sales-create', NULL, NULL),
(37, 'sales-store', 'sales-store', NULL, NULL),
(38, 'sales-list', 'sales-list', NULL, NULL),
(39, 'ajaxsales-list', 'ajaxsales-list', NULL, NULL),
(40, 'ajax-form', 'ajax-form', NULL, NULL),
(41, 'refresh-product', 'refresh-product', NULL, NULL),
(42, 'sales-allpdf', 'sales-allpdf', NULL, NULL),
(67, 'user-list', 'user-list', NULL, NULL),
(43, 'custom-report', 'custom-report', NULL, NULL),
(44, 'getquantity', 'getquantity', NULL, NULL),
(45, 'savetosales', 'savetosales', NULL, NULL),
(46, 'delete-salescart', 'delete-salescart', NULL, NULL),
(47, 'expenses-create', 'expenses-create', NULL, NULL),
(48, 'expenses-list', 'expenses-list', NULL, NULL),
(49, 'expenses-save', 'expenses-save', NULL, NULL),
(50, 'expenses-delete', 'expenses-delete', NULL, NULL),
(51, 'expenses-edit', 'expenses-edit', NULL, NULL),
(52, 'expenses-updat', 'expenses-updat', NULL, NULL),
(53, 'expensesheading-create', 'expenses-heading', NULL, NULL),
(54, 'expensesheading-save', 'expensesheading-save', NULL, NULL),
(55, 'expenses-report', 'expenses-report', NULL, NULL),
(56, 'purchase-create', 'purchase-create', NULL, NULL),
(57, 'purchase-list', 'purchase-list', NULL, NULL),
(58, 'purchase-save', 'purchase-save', NULL, NULL),
(59, 'purchase-update', 'purchase-update', NULL, NULL),
(60, 'purchase-report', 'purchase-report', NULL, NULL),
(61, 'transaction-create', 'transaction-create', NULL, NULL),
(62, 'transaction-list', 'transaction-list', NULL, NULL),
(63, 'transaction-update', 'transaction-update', NULL, NULL),
(64, 'transaction-report', 'transaction-report', NULL, NULL),
(65, 'purchase-delete', 'purchase-delete', NULL, NULL),
(66, 'purchase-edit', 'purchase-edit', NULL, NULL),
(21, 'permission-delete', 'permission-delete', NULL, NULL),
(22, 'permission-edit', 'permission-edit', NULL, NULL),
(70, 'permission-update', 'permission-update', NULL, NULL),
(71, 'permission/asign', 'permission-asign', NULL, NULL),
(72, 'permission/permissionasign', 'permission-permissionasign', '2019-04-21 10:40:25', '2019-04-21 10:40:25'),
(73, 'sales-edit', 'sales-edit', NULL, NULL),
(74, 'sales-update', 'sales-update', NULL, NULL),
(75, 'module_permission', '80', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE `productcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `name`, `slug`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(4, 'Jersy', 'jersy', 1, 'Owner', NULL, '2019-04-21 19:06:44', '2019-04-21 19:06:44'),
(5, 'Jeans Pant', 'jeans-pant', 1, 'Owner', NULL, '2019-04-22 11:01:14', '2019-04-22 11:01:14'),
(6, 'Girls shirt', 'girls-shirt', 1, 'Owner', NULL, '2019-04-28 20:52:11', '2019-04-28 20:52:11'),
(7, 'Milan jeans pan', 'mjp', 1, 'Owner', NULL, '2019-04-28 21:12:38', '2019-04-28 21:12:38'),
(8, 'Stealtech Industries ltd', 'stealtech-industries-ltd', 1, 'Admin', NULL, '2019-07-13 22:29:02', '2019-07-13 22:29:02'),
(9, 'panjabi', 'panjabi', 1, 'Admin', 'Admin', '2019-07-16 06:28:37', '2019-07-16 06:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `productcategory_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productcategory_id`, `name`, `code`, `unit`, `stock`, `price`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(3, 4, 'Bangladesh Jersy', 'BJY', '1', 98, 250, 1, 'Owner', 'Admin', '2019-04-21 19:07:42', '2019-07-24 05:20:05'),
(4, 4, 'England Jersy', 'EJY', '1', 158, 350, 1, 'Salesman', NULL, '2019-04-21 22:49:15', '2019-07-24 11:38:14'),
(5, 4, 'Jermany Jersy', 'jj', '1', 43, 200, 1, 'Salesman', NULL, '2019-04-22 00:44:11', '2019-07-18 08:40:40'),
(6, 4, 'India', 'ij', '1', 63, 250, 1, 'Owner', NULL, '2019-04-23 14:18:30', '2019-07-17 09:09:07'),
(7, 6, 'Milan Girls Shirt XX', 'MGXGD_2', '1', 196, 450, 1, 'Owner', NULL, '2019-04-28 20:53:05', '2019-04-30 06:24:50'),
(11, 9, 'short-panjabi', '9087766', '1', 130, 80, 1, 'Admin', 'Admin', '2019-07-19 05:45:59', '2019-07-19 05:46:22'),
(10, 9, 'short-panjabi', '345656783', '1', 548, 25.6, 1, 'Admin', 'Admin', '2019-07-18 17:38:21', '2019-07-20 13:56:51');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) UNSIGNED NOT NULL,
  `goods_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `totalamount` double NOT NULL,
  `paidamount` double NOT NULL,
  `dueamount` double NOT NULL,
  `status` enum('vat','pan','normal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_date` date NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `goods_name`, `party_name`, `totalamount`, `paidamount`, `dueamount`, `status`, `purchase_date`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(5, 'Jersy', 'Sultana Bosraloy', 2000, 2000, 0, 'normal', '2019-04-22', 'Salesman', NULL, '2019-04-21 18:16:54', '2019-04-22 00:40:58'),
(6, 'Jersy', 'Sobur', 2000, 2000, 0, 'normal', '2019-04-22', 'Salesman', NULL, '2019-04-21 23:08:56', '2019-04-21 23:08:56'),
(7, 'Jersy', 'Harun', 20000, 20000, 0, 'normal', '2019-04-22', 'Salesman', NULL, '2019-04-22 00:46:13', '2019-04-28 20:51:36'),
(8, 'India Jersy', 'Abdul', 2000, 2000, 0, 'normal', '2019-04-23', 'Owner', NULL, '2019-04-23 14:16:46', '2019-04-27 01:22:37'),
(9, 'EXample', 'Example', 5000, 2000, 3000, 'normal', '2019-04-28', 'Owner', NULL, '2019-04-28 21:11:20', '2019-04-28 21:11:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', NULL, NULL),
(3, 'admin', NULL, NULL),
(4, 'Owner', NULL, NULL),
(5, 'Manager', NULL, NULL),
(6, 'Seller', NULL, NULL),
(7, 'General Stuff', NULL, NULL),
(8, 'Purchase Man', NULL, NULL),
(9, 'Accountant', NULL, NULL),
(10, 'Salesman', '2019-04-28 20:57:27', '2019-04-28 20:57:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_modules`
--

CREATE TABLE `role_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `module_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_modules`
--

INSERT INTO `role_modules` (`id`, `role_id`, `module_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, '2019-04-21 10:13:52', '2019-04-21 10:13:52'),
(5, 4, 4, '2019-04-21 10:13:52', '2019-04-21 10:13:52'),
(6, 3, 5, '2019-04-21 10:18:00', '2019-04-21 10:18:00'),
(7, 3, 6, '2019-04-21 10:21:09', '2019-04-21 10:21:09'),
(8, 3, 7, '2019-04-21 10:24:53', '2019-04-21 10:24:53'),
(9, 3, 8, '2019-04-21 10:34:52', '2019-04-21 10:34:52'),
(10, 3, 9, '2019-04-21 10:36:32', '2019-04-21 10:36:32'),
(11, 2, 10, '2019-04-21 10:42:47', '2019-04-21 10:42:47'),
(12, 3, 10, '2019-04-21 10:42:47', '2019-04-21 10:42:47'),
(13, 4, 10, '2019-04-21 10:42:47', '2019-04-21 10:42:47'),
(14, 4, 11, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(15, 5, 11, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(16, 6, 4, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(17, 7, 11, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(18, 8, 11, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(19, 9, 11, '2019-04-21 10:59:53', '2019-04-21 10:59:53'),
(20, 4, 1, NULL, NULL),
(21, 4, 2, NULL, NULL),
(22, 4, 3, NULL, NULL),
(24, 4, 7, NULL, NULL),
(25, 4, 6, NULL, NULL),
(26, 6, 1, NULL, NULL),
(27, 4, 8, NULL, NULL),
(28, 4, 5, NULL, NULL),
(29, 3, 12, NULL, NULL),
(30, 5, 5, NULL, NULL),
(31, 1, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(32, 3, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(33, 4, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(34, 5, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(35, 6, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(36, 7, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(37, 8, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(38, 9, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43'),
(39, 10, 14, '2019-07-21 17:55:43', '2019-07-21 17:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `role_permissions`
--

CREATE TABLE `role_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_permissions`
--

INSERT INTO `role_permissions` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(520, 3, 73, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(519, 3, 72, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(518, 3, 71, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(517, 3, 70, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(516, 3, 22, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(515, 3, 21, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(514, 3, 66, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(513, 3, 65, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(512, 3, 64, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(511, 3, 63, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(510, 3, 62, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(509, 3, 61, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(508, 3, 60, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(507, 3, 59, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(506, 3, 58, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(505, 3, 57, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(504, 3, 56, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(503, 3, 55, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(502, 3, 54, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(501, 3, 53, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(500, 3, 52, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(499, 3, 51, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(498, 3, 50, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(497, 3, 49, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(496, 3, 48, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(495, 3, 47, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(494, 3, 46, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(493, 3, 45, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(492, 3, 44, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(491, 3, 43, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(490, 3, 67, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(489, 3, 42, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(488, 3, 41, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(487, 3, 40, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(486, 3, 39, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(485, 3, 38, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(484, 3, 37, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(483, 3, 36, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(482, 3, 35, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(481, 3, 34, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(480, 3, 33, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(479, 3, 32, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(478, 3, 31, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(477, 3, 30, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(476, 3, 29, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(475, 3, 28, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(474, 3, 27, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(473, 3, 26, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(472, 3, 25, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(471, 3, 24, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(470, 3, 23, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(469, 3, 20, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(468, 3, 19, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(679, 5, 54, '2019-04-28 06:23:50', '2019-04-28 06:23:50'),
(467, 3, 18, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(466, 3, 17, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(465, 3, 16, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(464, 3, 15, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(463, 3, 14, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(462, 3, 13, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(461, 3, 12, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(460, 3, 11, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(459, 3, 10, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(458, 3, 9, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(457, 3, 8, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(456, 3, 7, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(455, 3, 6, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(454, 3, 5, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(453, 3, 4, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(452, 3, 3, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(451, 3, 2, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(450, 3, 1, '2019-04-21 23:15:08', '2019-04-21 23:15:08'),
(602, 1, 72, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(601, 1, 71, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(600, 1, 70, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(599, 1, 22, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(598, 1, 21, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(753, 4, 72, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(752, 4, 71, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(751, 4, 70, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(750, 4, 22, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(749, 4, 64, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(748, 4, 63, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(747, 4, 62, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(746, 4, 61, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(745, 4, 60, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(744, 4, 59, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(743, 4, 58, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(742, 4, 57, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(741, 4, 56, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(740, 4, 55, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(739, 4, 54, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(738, 4, 53, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(737, 4, 52, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(736, 4, 51, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(735, 4, 50, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(734, 4, 49, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(733, 4, 48, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(732, 4, 47, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(731, 4, 46, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(730, 4, 45, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(729, 4, 44, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(728, 4, 43, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(727, 4, 67, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(726, 4, 42, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(725, 4, 41, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(724, 4, 40, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(723, 4, 39, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(722, 4, 38, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(721, 4, 37, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(720, 4, 36, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(719, 4, 35, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(718, 4, 34, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(717, 4, 33, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(716, 4, 32, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(715, 4, 31, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(714, 4, 30, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(713, 4, 29, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(712, 4, 28, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(597, 1, 66, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(596, 1, 65, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(595, 1, 64, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(594, 1, 63, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(593, 1, 62, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(592, 1, 61, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(591, 1, 60, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(590, 1, 59, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(589, 1, 58, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(588, 1, 57, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(587, 1, 56, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(586, 1, 55, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(585, 1, 54, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(584, 1, 53, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(583, 1, 52, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(582, 1, 51, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(581, 1, 50, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(580, 1, 49, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(579, 1, 48, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(578, 1, 47, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(577, 1, 46, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(576, 1, 45, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(575, 1, 44, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(574, 1, 43, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(573, 1, 67, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(572, 1, 42, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(571, 1, 41, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(570, 1, 40, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(569, 1, 39, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(568, 1, 38, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(567, 1, 37, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(566, 1, 36, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(565, 1, 35, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(564, 1, 34, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(563, 1, 33, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(562, 1, 32, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(561, 1, 31, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(560, 1, 30, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(559, 1, 29, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(558, 1, 28, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(557, 1, 27, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(556, 1, 26, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(555, 1, 25, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(554, 1, 24, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(553, 1, 23, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(552, 1, 20, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(551, 1, 19, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(550, 1, 18, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(549, 1, 17, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(548, 1, 16, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(547, 1, 15, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(546, 1, 14, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(545, 1, 13, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(544, 1, 12, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(543, 1, 11, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(542, 1, 10, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(541, 1, 9, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(540, 1, 8, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(539, 1, 7, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(538, 1, 6, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(537, 1, 5, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(536, 1, 4, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(535, 1, 3, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(534, 1, 2, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(533, 1, 1, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(530, 6, 42, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(529, 6, 41, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(528, 6, 40, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(527, 6, 39, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(526, 6, 38, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(525, 6, 37, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(524, 6, 36, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(523, 6, 35, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(522, 6, 34, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(521, 3, 74, '2019-04-21 23:15:09', '2019-04-21 23:15:09'),
(531, 6, 73, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(532, 6, 74, '2019-04-23 14:26:48', '2019-04-23 14:26:48'),
(603, 1, 73, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(604, 1, 74, '2019-04-28 04:22:07', '2019-04-28 04:22:07'),
(605, 3, 80, NULL, NULL),
(711, 4, 27, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(710, 4, 26, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(709, 4, 25, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(708, 4, 24, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(707, 4, 23, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(706, 4, 20, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(705, 4, 19, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(704, 4, 18, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(703, 4, 17, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(702, 4, 16, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(701, 4, 15, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(700, 4, 14, '2019-07-16 06:32:09', '2019-07-16 06:32:09'),
(699, 4, 13, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(698, 4, 12, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(697, 4, 11, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(696, 4, 10, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(695, 4, 9, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(694, 4, 8, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(693, 4, 7, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(692, 4, 6, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(691, 4, 5, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(690, 4, 4, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(689, 4, 3, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(688, 4, 2, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(687, 4, 1, '2019-07-16 06:32:08', '2019-07-16 06:32:08'),
(680, 5, 62, '2019-04-28 06:23:50', '2019-04-28 06:23:50'),
(681, 10, 36, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(682, 10, 37, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(683, 10, 38, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(684, 10, 39, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(685, 10, 40, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(686, 10, 42, '2019-04-28 20:58:04', '2019-04-28 20:58:04');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `saller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT '1',
  `sales_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_paid` double DEFAULT NULL,
  `sales_due` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `price`, `saller_name`, `sales_status`, `sales_date`, `created_at`, `updated_at`, `sales_paid`, `sales_due`) VALUES
(12, 3, 2, 500, 'Owner', 1, '2019-04-22', '2019-04-20 19:19:04', '2019-04-20 19:19:04', 50, 450),
(13, 3, 5, 1250, 'Owner', 1, '2019-04-22', '2019-04-21 19:19:04', '2019-04-22 00:18:03', NULL, 0),
(73, 7, 1, 450, 'Owner', 1, '2019-04-28', '2019-04-28 20:54:50', '2019-04-28 20:54:50', NULL, NULL),
(72, 4, 2, 600, 'Seller', 1, '2019-04-28', '2019-04-28 18:31:00', '2019-04-28 18:31:00', NULL, NULL),
(71, 6, 5, 1250, 'Seller', 1, '2019-04-28', '2019-04-28 18:31:00', '2019-04-28 18:31:00', NULL, NULL),
(19, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-21 22:57:46', '2019-04-22 00:39:49', NULL, 0),
(20, 3, 1, 250, 'Seller', 1, '2019-04-22', '2019-04-21 22:57:46', '2019-04-21 22:57:46', NULL, 0),
(21, 4, 3, 1050, 'Owner', 1, '2019-04-22', '2019-04-21 22:59:36', '2019-04-21 22:59:36', NULL, 0),
(22, 5, 2, 400, 'Seller', 1, '2019-04-22', '2019-04-22 11:09:20', '2019-04-22 11:09:20', NULL, NULL),
(23, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 11:09:20', '2019-04-22 11:09:20', NULL, NULL),
(24, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 13:33:08', '2019-04-22 13:33:08', NULL, NULL),
(25, 4, 1, 350, 'Seller', 0, '2019-04-22', '2019-04-22 13:34:52', '2019-04-22 13:34:52', NULL, NULL),
(26, 5, 1, 200, 'Seller', 0, '2019-04-22', '2019-04-22 13:37:47', '2019-04-22 13:37:47', NULL, NULL),
(27, 5, 1, 200, 'Seller', 1, '2019-04-22', '2019-04-22 13:50:37', '2019-04-22 13:50:37', NULL, NULL),
(28, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 13:50:37', '2019-04-22 13:50:37', NULL, NULL),
(29, 5, 1, 200, 'Seller', 0, '2019-04-22', '2019-04-22 14:09:20', '2019-04-22 14:09:20', NULL, NULL),
(30, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:09:20', '2019-04-22 14:09:20', NULL, NULL),
(31, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:15:06', '2019-04-22 14:15:06', NULL, NULL),
(32, 3, 1, 250, 'Seller', 1, '2019-04-22', '2019-04-22 14:16:22', '2019-04-22 14:16:22', NULL, NULL),
(33, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:17:48', '2019-04-22 14:17:48', NULL, NULL),
(34, 5, 1, 200, 'Seller', 0, '2019-04-22', '2019-04-22 14:20:25', '2019-04-22 14:20:25', NULL, NULL),
(35, 5, 1, 200, 'Seller', 1, '2019-04-22', '2019-04-22 14:21:29', '2019-04-23 19:35:07', NULL, NULL),
(36, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:24:50', '2019-04-22 14:24:50', NULL, NULL),
(37, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:25:34', '2019-04-22 14:25:34', NULL, NULL),
(38, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:27:48', '2019-04-22 14:27:48', NULL, NULL),
(39, 3, 1, 250, 'Seller', 1, '2019-04-22', '2019-04-22 14:29:28', '2019-04-22 14:29:28', NULL, NULL),
(40, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:29:48', '2019-04-22 14:29:48', NULL, NULL),
(41, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:32:33', '2019-04-23 14:26:58', NULL, NULL),
(42, 5, 1, 200, 'Seller', 1, '2019-04-22', '2019-04-22 14:33:12', '2019-04-22 14:33:12', NULL, NULL),
(43, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:42:04', '2019-04-22 14:42:04', NULL, NULL),
(44, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:42:21', '2019-04-22 14:42:21', NULL, NULL),
(45, 5, 1, 200, 'Seller', 1, '2019-04-22', '2019-04-22 14:43:02', '2019-04-23 14:26:11', NULL, NULL),
(46, 4, 1, 350, 'Seller', 1, '2019-04-22', '2019-04-22 14:44:20', '2019-04-23 14:25:07', NULL, NULL),
(47, 5, 3, 600, 'Owner', 1, '2019-04-22', '2019-04-22 15:17:56', '2019-04-22 15:17:56', NULL, NULL),
(48, 6, 3, 750, 'Seller', 1, '2019-04-23', '2019-04-23 14:22:00', '2019-04-23 14:22:00', NULL, NULL),
(49, 3, 1, 250, 'Seller', 1, '2019-04-23', '2019-04-23 14:22:00', '2019-04-23 14:22:00', NULL, NULL),
(50, 4, 1, 350, 'Seller', 1, '2019-04-23', '2019-04-23 14:22:29', '2019-04-23 14:22:29', NULL, NULL),
(51, 3, 1, 250, 'Seller', 1, '2019-04-23', '2019-04-23 14:28:50', '2019-04-23 14:28:50', NULL, NULL),
(70, 3, 1, 250, 'Seller', 1, '2019-04-28', '2019-04-28 18:31:00', '2019-04-28 18:31:00', NULL, NULL),
(55, 4, 1, 350, 'Owner', 1, '2019-04-26', '2019-04-26 23:57:09', '2019-04-26 23:57:09', NULL, NULL),
(56, 4, 1, 350, 'Owner', 1, '2019-04-26', '2019-04-27 00:07:20', '2019-04-27 00:07:20', NULL, NULL),
(57, 4, 1, 350, 'Owner', 1, '2019-04-26', '2019-04-27 00:07:20', '2019-04-27 00:07:20', NULL, NULL),
(58, 5, 1, 200, 'Owner', 1, '2019-04-26', '2019-04-27 00:15:27', '2019-04-27 00:15:27', NULL, NULL),
(59, 5, 1, 200, 'Owner', 1, '2019-04-26', '2019-04-27 00:15:55', '2019-04-27 00:15:55', NULL, NULL),
(60, 4, 1, 350, 'Owner', 1, '2019-04-26', '2019-04-27 00:20:32', '2019-04-27 00:20:32', NULL, NULL),
(61, 6, 1, 250, 'Owner', 1, '2019-04-26', '2019-04-27 00:23:05', '2019-04-27 00:23:05', NULL, NULL),
(69, 5, 1, 200, 'Seller', 1, '2019-04-28', '2019-04-28 17:16:23', '2019-04-28 17:16:23', NULL, NULL),
(63, 5, 1, 200, 'Owner', 1, '2019-04-26', '2019-04-27 00:26:45', '2019-04-27 00:26:45', NULL, NULL),
(64, 3, 1, 250, 'Owner', 1, '2019-04-26', '2019-04-27 03:15:49', '2019-04-27 03:15:49', NULL, NULL),
(65, 3, 1, 250, 'Owner', 1, '2019-04-26', '2019-04-27 03:15:49', '2019-04-27 03:15:49', NULL, NULL),
(66, 6, 5, 1250, 'Owner', 1, '2019-04-27', '2019-04-27 20:36:27', '2019-04-27 20:36:27', NULL, NULL),
(67, 6, 7, 1750, 'Owner', 1, '2019-04-27', '2019-04-28 01:16:32', '2019-04-28 01:16:32', NULL, NULL),
(68, 6, 1, 250, 'Seller', 1, '2019-04-27', '2019-04-28 01:58:23', '2019-04-28 01:58:23', NULL, NULL),
(74, 5, 5, 1250, 'Seller', 1, '2019-04-28', '2019-04-28 20:59:46', '2019-04-28 20:59:46', NULL, NULL),
(75, 7, 3, 1350, 'Owner', 1, '2019-04-28', '2019-04-28 21:08:50', '2019-04-28 21:08:50', NULL, NULL),
(76, 4, 3, 990, 'Owner', 1, '2019-04-28', '2019-04-28 21:08:50', '2019-04-28 21:08:50', NULL, NULL),
(77, 5, 1, 200, 'Owner', 1, '2019-05-02', '2019-05-03 02:11:54', '2019-05-03 02:11:54', NULL, NULL),
(78, 3, 1, 250, 'Owner', 1, '2019-05-02', '2019-05-03 02:11:54', '2019-05-03 02:11:54', NULL, NULL),
(79, 4, 1, 350, 'Seller', 1, '2019-05-02', '2019-05-03 02:14:52', '2019-05-03 02:14:52', NULL, NULL),
(80, 3, 1, 250, 'Seller', 1, '2019-05-02', '2019-05-03 02:14:52', '2019-05-03 02:14:52', NULL, NULL),
(81, 6, 1, 250, 'Owner', 1, '2019-05-02', '2019-05-03 03:12:25', '2019-05-03 03:12:25', NULL, NULL),
(82, 3, 1, 250, 'Md Rakibul Hasan', 1, '2019-05-02', '2019-05-03 03:45:38', '2019-05-03 03:45:38', NULL, NULL),
(83, 5, 1, 200, 'Gazi Kalam', 0, '2019-05-07', '2019-05-07 10:01:41', '2019-05-07 10:01:41', NULL, NULL),
(84, 4, 1, 350, 'Gazi Kalam', 1, '2019-05-07', '2019-05-07 10:06:07', '2019-07-16 09:23:38', NULL, NULL),
(85, 6, 1, 250, 'Gazi Kalam', 1, '2019-07-07', '2019-07-08 04:20:29', '2019-07-08 04:20:29', NULL, NULL),
(86, 4, 1, 350, 'Gazi Kalam', 1, '2019-07-07', '2019-07-08 04:20:29', '2019-07-08 04:20:29', NULL, NULL),
(87, 4, 1, 350, 'Rakibul hasan', 1, '2019-07-13', '2019-07-13 22:18:12', '2019-07-13 22:18:12', NULL, NULL),
(88, 6, 10, 2500, 'Rakibul hasan', 1, '2019-07-13', '2019-07-13 22:18:12', '2019-07-13 22:18:12', NULL, NULL),
(89, 8, 1, 50, 'seller', 1, '2019-07-13', '2019-07-13 23:00:21', '2019-07-13 23:00:21', NULL, NULL),
(90, 8, 10, 440, 'seller', 1, '2019-07-13', '2019-07-13 23:00:21', '2019-07-13 23:00:21', NULL, NULL),
(91, 8, 12, 480, 'seller', 1, '2019-07-13', '2019-07-13 23:00:21', '2019-07-13 23:00:21', NULL, NULL),
(92, 4, 1, 350, 'Rakibul hasan', 1, '2019-07-16', '2019-07-16 06:27:22', '2019-07-16 06:27:22', NULL, NULL),
(93, 6, 2, 51.2, 'Rakibul hasan', 1, '2019-07-18', '2019-07-18 08:31:36', '2019-07-18 08:31:36', NULL, NULL),
(94, 5, 1, 200, 'Rakibul hasan', 1, '2019-07-18', '2019-07-18 15:14:21', '2019-07-18 15:14:21', NULL, NULL),
(95, 5, 1, 200.3, 'Rakibul hasan', 1, '2019-07-18', '2019-07-18 15:14:21', '2019-07-18 15:14:21', NULL, NULL),
(96, 3, 1, 250, 'Rakibul hasan', 1, '2019-07-18', '2019-07-18 15:14:21', '2019-07-18 15:14:21', NULL, NULL),
(97, 10, 4, 102.4, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:32:39', '2019-07-19 05:32:39', NULL, NULL),
(98, 10, 5, 128, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:33:38', '2019-07-19 05:33:38', NULL, NULL),
(99, 10, 10, 256, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:37:30', '2019-07-19 05:37:30', NULL, NULL),
(100, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:38:03', '2019-07-19 05:38:03', NULL, NULL),
(101, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(102, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(103, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(104, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(105, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(106, 10, 1, 25.6, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(107, 10, 5, 128, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(108, 10, 5, 128, 'Rakibul hasan', 1, '2019-07-19', '2019-07-19 05:48:32', '2019-07-19 05:48:32', NULL, NULL),
(109, 3, 1, 125, 'Rakibul hasan', 1, '2019-07-23', '2019-07-23 16:58:41', '2019-07-23 16:58:41', NULL, NULL),
(110, 4, 1, 175, 'Rakibul hasan', 1, '2019-07-23', '2019-07-23 16:58:41', '2019-07-23 16:58:41', NULL, NULL),
(111, 4, 1, 175, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 05:19:50', '2019-07-24 05:19:50', NULL, NULL),
(112, 4, 1, 315, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 05:19:50', '2019-07-24 05:19:50', NULL, NULL),
(113, 4, 1, 350, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 05:19:50', '2019-07-24 05:19:50', NULL, NULL),
(114, 3, 1, 232.5, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 05:20:12', '2019-07-24 05:20:12', NULL, NULL),
(115, 4, 1, 325.5, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 05:26:34', '2019-07-24 05:26:34', NULL, NULL),
(116, 4, 1, 325.5, 'Rakibul hasan', 1, '2019-07-24', '2019-07-24 11:38:26', '2019-07-24 11:38:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salescarts`
--

CREATE TABLE `salescarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `saller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT '1',
  `sales_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `totalamount` double NOT NULL,
  `depositeamount` double NOT NULL,
  `remainingamount` double NOT NULL,
  `deposite_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposite_date` date NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `totalamount`, `depositeamount`, `remainingamount`, `deposite_by`, `deposite_date`, `bank_name`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(3, 5000, 5000, 0, 'Rakibul Hasan', '2019-04-29', 'Janata Bank', 'Admin', NULL, '2019-04-28 06:17:48', '2019-07-13 22:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `last_login`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rakibul Hasan', 'rakib06', 'six.rakib@gmail.com', '$2y$10$MyhJ3n8YyFL2QL6OUZ0Iq.lJYl3gcR/WGAMZknulBpzBVZU4002oC', '2019-04-21 16:48:41', 1, 'nO9Nn5qUhjCn0Wn1VlLj2PuKPcb4GOAJTMYZVfAGHlWO3Z2qjQlnGmE3AVxm', '2019-04-20 20:57:21', '2019-04-21 10:48:41'),
(2, 'Gazi Kalam', 'Owner', 'a@b.com', '$2y$10$B9FemXLXk13YwaHJVDSWaen.gPyhpNBDwA8zZYSN0/uS65LSnvxou', '2019-07-07 23:26:17', 1, 'AfedmeH4DhjDABNStwVYfeImSFbtpnwvV5BTX3gGMZGHBKhnKHD04wDoBKSB', '2019-04-20 21:59:55', '2019-07-08 04:26:17'),
(4, 'Sujon Khan', 'sujon', 's@k.com', '$2y$10$PmvvSo8gEsGZVItxFxYn9.sIW7aEM87e9Z06YZ6e.zcLS.eVKa7tq', NULL, 1, NULL, '2019-04-20 22:02:05', '2019-04-20 22:02:05'),
(5, 'Sagor Biswas', 'sagor', 's@b.com', '$2y$10$xFdrAHPF7.Z2S6mkNku97..wCv60sBlyPaETPQ6DoPQC8MscUzsti', NULL, 1, NULL, '2019-04-20 22:02:51', '2019-04-20 22:02:51'),
(6, 'Safowan Sarkar', 'Manager', 's@s.com', '$2y$10$BQBN5WBWFdJLjKxrRsCXt.pA.pzvx26IKCCSiY9Voz/wV17iwHHDS', '2019-04-28 01:24:11', 1, '2H7YUdk8AP5eTxwm5EOsSectMqQuBLU5Y68TUKGPlkQGn6s0Bx3LVxIqCnDq', '2019-04-20 22:03:34', '2019-04-28 06:24:11'),
(7, 'Bimol Das', 'bimol', 'b@d.com', '$2y$10$7twoCdyE6bASs.0Cx3864eH.2mD3EzawOUer9z/a7hbBuLEdpXFLi', NULL, 1, NULL, '2019-04-20 22:05:36', '2019-04-20 22:05:36'),
(8, 'Rakibul hasan', 'Admin', 'r@h.com', '$2y$10$B9FemXLXk13YwaHJVDSWaen.gPyhpNBDwA8zZYSN0/uS65LSnvxou', '2019-07-27 11:53:49', 1, 'zW3yoYmYTYGLCuTLg7NqnPcKbJ788CJ8vf1GwI3rU94hBb6sBqwfbOiHYT9M', '2019-04-20 22:06:58', '2019-07-27 05:53:49'),
(9, 'Haidar Ali', 'haidar', 'a@aa.com', '$2y$10$Ld/toyyA6287OcDePvKLy.qkXCtylvAJJfBHbBLAYnHAOaBN3GvRa', NULL, 1, NULL, '2019-04-20 22:08:10', '2019-04-20 22:08:10'),
(10, 'seller', 'Seller', 'sddsf@s.com', '$2y$10$UKPsWDbwU5GtKOQaTSpfFeBCKHV7VhttPl.hZjS4UcUQWLXLMLBHK', '2019-07-13 17:58:26', 1, 'k9fHG2YAInDfNHNUr9EUzTUUpNnMB9YlwWkwzGWYbedhfOvmY115vIkhqb1Y', '2019-04-21 21:50:51', '2019-07-13 22:58:26'),
(11, 'Munzur Morshed', 'mmr87', 'munzu87@yahoo.com', '$2y$10$EktSc4f71k5MyId1wfzvaOL5q8y8yNIN0wnJBdGS4e4ungr1Of6sa', '2019-05-02 21:14:16', 1, 'vJPHNmW0zzR872l3svsNaG4ROUjq0ddPUzIEYhSWx7UnlH6G3wJEA9O0IbTO', '2019-05-03 02:13:47', '2019-05-03 02:14:16'),
(12, 'khulna It park', 'kitp1234', 'khulnait@gmail.com', '$2y$10$Eaw0wFFwkJEabheDCJd1GeULAHJJCcGqvFDC0B0ihY6XOPfmIUs6e', '2019-05-02 23:38:43', 1, 'tLt1vUqrSQLFjXwVET2jxwuvnSJ1BPht9VO1ks5aUzio5YpWw81U3XMtD9W2', '2019-05-03 02:19:23', '2019-05-03 04:38:43'),
(13, 'Md Rakibul Hasan', 'Rakib', 'six.rakib1234@gmail.com', '$2y$10$Y33WQak1lhZKEGjkcDTfYO5rq3JOee3lRKKIKKvDqAw299hflYCCW', '2019-05-02 22:29:26', 1, 'sLI2a8zBXeoIz9pSo9q3GIYaaDjCBQXDhFzT4mQH5tYSGpsGsmfGAyZtIVfZ', '2019-05-03 03:28:42', '2019-05-03 03:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2019-04-20 20:57:21', '2019-04-20 20:57:21'),
(2, 4, 2, '2019-04-20 21:59:55', '2019-04-20 21:59:55'),
(3, 2, 3, '2019-04-20 22:01:24', '2019-04-20 22:01:24'),
(4, 1, 4, '2019-04-20 22:02:05', '2019-04-20 22:02:05'),
(5, 6, 5, '2019-04-20 22:02:51', '2019-04-20 22:02:51'),
(6, 5, 6, '2019-04-20 22:03:34', '2019-04-20 22:03:34'),
(7, 8, 7, '2019-04-20 22:05:36', '2019-04-20 22:05:36'),
(8, 3, 8, '2019-04-20 22:06:58', '2019-04-20 22:06:58'),
(9, 9, 9, '2019-04-20 22:08:10', '2019-04-20 22:08:10'),
(10, 6, 10, '2019-04-21 21:50:51', '2019-04-21 21:50:51'),
(11, 6, 11, '2019-05-03 02:13:47', '2019-05-03 02:13:47'),
(12, 4, 12, '2019-05-03 02:19:23', '2019-05-03 02:19:23'),
(13, 4, 13, '2019-05-03 03:28:42', '2019-05-03 03:28:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_created_by_foreign` (`created_by`),
  ADD KEY `expenses_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `expensestitles`
--
ALTER TABLE `expensestitles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modules_name_unique` (`name`),
  ADD UNIQUE KEY `modules_module_key_unique` (`module_key`),
  ADD UNIQUE KEY `modules_module_url_unique` (`module_url`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_permission_key_unique` (`permission_key`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productcategories_slug_unique` (`slug`),
  ADD KEY `productcategories_created_by_foreign` (`created_by`),
  ADD KEY `productcategories_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD KEY `products_productcategory_id_foreign` (`productcategory_id`),
  ADD KEY `products_created_by_foreign` (`created_by`),
  ADD KEY `products_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_created_by_foreign` (`created_by`),
  ADD KEY `purchases_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_modules`
--
ALTER TABLE `role_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_modules_role_id_foreign` (`role_id`),
  ADD KEY `role_modules_module_id_foreign` (`module_id`);

--
-- Indexes for table `role_permissions`
--
ALTER TABLE `role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_product_id_foreign` (`product_id`);

--
-- Indexes for table `salescarts`
--
ALTER TABLE `salescarts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salescarts_product_id_foreign` (`product_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_created_by_foreign` (`created_by`),
  ADD KEY `transactions_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expensestitles`
--
ALTER TABLE `expensestitles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `machines`
--
ALTER TABLE `machines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role_modules`
--
ALTER TABLE `role_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=754;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `salescarts`
--
ALTER TABLE `salescarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
