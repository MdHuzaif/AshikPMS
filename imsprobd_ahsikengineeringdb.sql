-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2019 at 08:46 AM
-- Server version: 10.2.26-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imsprobd_ahsikengineeringdb`
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
  `shopName` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `machineName` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issueDate` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `view_sidebar` tinyint(1) NOT NULL DEFAULT 0,
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
(14, 'Machineries Management', 'machine-list', 'machine-list', NULL, 13, 1, '2019-07-21 17:55:43', '2019-07-21 17:55:43');

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
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`id`, `name`, `slug`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(26, 'Spiral pipe 201', 'spiral-pipe-201', 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:33:14', '2019-08-03 20:33:14'),
(25, 'UAS BOX', 'uas-box', 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:31:33', '2019-08-03 20:31:33'),
(23, 'BOX 201', 'box-201', 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 01:08:34', '2019-08-01 01:08:34'),
(24, 'USA PIPE', 'usa-pipe', 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:31:01', '2019-08-03 20:31:01'),
(22, 'Round Pipe 201', 'Round-pipe-201', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 13:58:44', '2019-07-31 14:37:58'),
(27, 'Half Round Pipe 201', 'half-round-pipe-201', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-03 20:33:57', '2019-08-03 20:34:15'),
(28, 'Food Grade', 'food-grade', 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:34:56', '2019-08-03 20:34:56'),
(29, 'Round Design', 'round-design', 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:52:30', '2019-08-08 22:52:30'),
(30, 'Spiral Design', 'spiral-design', 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:53:14', '2019-08-08 22:53:14'),
(31, 'Square Design', 'square-design', 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:54:06', '2019-08-08 22:54:06'),
(32, 'S.S Design Pipe(USA)', 's.s-design-pipe(usa)', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-08 22:54:59', '2019-08-08 22:55:16'),
(33, 'Albo', 'albo', 1, 'ashikengineering@gmail.com', NULL, '2019-09-02 21:15:46', '2019-09-02 21:15:46'),
(34, 'Pipe sobati', 'pipe-sobati', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-02 21:16:09', '2019-09-02 21:16:32'),
(35, 'Box sobati', 'box-sobati', 1, 'ashikengineering@gmail.com', NULL, '2019-09-02 21:16:51', '2019-09-02 21:16:51'),
(36, 'Half bol (D)', 'half-bol-(d)', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-02 21:17:50', '2019-09-02 21:18:41'),
(37, 'Half Boll (k)', 'half-boll-(k)', 1, 'ashikengineering@gmail.com', NULL, '2019-09-02 21:18:28', '2019-09-02 21:18:28'),
(38, 'Roal bold SS', 'roal-bold-ss', 1, 'ashikengineering@gmail.com', NULL, '2019-09-03 20:21:46', '2019-09-03 20:21:46'),
(39, 'Roal bold MS', 'roal-bold-ms', 1, 'ashikengineering@gmail.com', NULL, '2019-09-03 20:22:07', '2019-09-03 20:22:07'),
(40, 'Boll', 'boll', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 21:38:51', '2019-09-05 21:38:51'),
(41, 'Joyin cap', 'joyin-cap', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:08:27', '2019-09-05 22:08:27'),
(42, 'plen ring', 'plen-ring', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:09:41', '2019-09-05 22:09:41'),
(43, 'Chan Tara', 'chan-tara-', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:10:24', '2019-09-05 22:10:24'),
(44, 'Vorat Allahu', 'vorat-allahu', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:11:12', '2019-09-05 22:11:12'),
(45, 'Ring Muhammad', 'ring-muhammad', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:11:42', '2019-09-05 22:13:28'),
(46, 'Ring full', 'ring-full', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:12:02', '2019-09-05 22:13:44'),
(47, 'vorat  muhammad', 'vorat-muhammad', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:15:03', '2019-09-05 22:15:03'),
(48, 'vorat full', 'vorat-full', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:15:21', '2019-09-05 22:15:21'),
(49, 'Ring allahu', 'ring-allahu', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:15:36', '2019-09-05 22:15:36'),
(50, 'Mut / Kolos', 'mut-/-kolos', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:16:34', '2019-09-05 22:16:34'),
(51, 'Mocha/TIrchul', 'mocha/tirchul', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:17:02', '2019-09-05 22:17:24'),
(52, 'Holl boll', 'holl-boll', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:18:32', '2019-09-05 22:18:32'),
(53, 'Ar top', 'ar-top', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:19:06', '2019-09-05 22:19:06'),
(54, 'Minar tap', 'minar-tap', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:19:26', '2019-09-05 22:19:26'),
(55, 'Hafe boll', 'hafe-boll', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:19:43', '2019-09-05 22:19:43'),
(56, 'S full', 's-full', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:20:02', '2019-09-05 22:20:02'),
(57, 'Ruton', 'ruton', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:20:20', '2019-09-05 22:20:20'),
(58, 'Noyka Dig.', 'noyka-dig.', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:20:54', '2019-09-05 22:20:54'),
(59, 'SS Lok', 'ss-lok', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:21:37', '2019-09-05 22:21:37'),
(60, 'SS Jiba', 'ss-jiba', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:21:52', '2019-09-05 22:21:52'),
(61, 'SS sikol', 'ss-sikol', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:24:09', '2019-09-05 22:24:09'),
(62, 'SS kobja', 'ss-kobja', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:24:39', '2019-09-05 22:24:39'),
(63, 'Bus kobja', 'bus-kobja', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:26:07', '2019-09-05 22:26:07'),
(64, 'Glass nop', 'glass-nop', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:26:30', '2019-09-05 22:26:30'),
(65, 'SS nat bold', 'ss-nat-bold', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:27:48', '2019-09-05 22:27:48'),
(66, 'MS nat bold', 'ms-nat-bold', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:28:10', '2019-09-05 22:28:10'),
(67, 'SS fola', 'ss-fola', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:28:33', '2019-09-05 22:28:33'),
(68, 'MS fola', 'ms-fola', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:28:42', '2019-09-05 22:28:42'),
(69, 'Lailon chaka', 'lailon-chaka', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:29:08', '2019-09-05 22:29:08'),
(70, 'Biskut full', 'biskut-full', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:29:50', '2019-09-05 22:29:50'),
(71, 'Pach pata full', 'pach-pata-full', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:30:08', '2019-09-05 22:30:08'),
(72, 'Incap', 'incap', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:30:23', '2019-09-05 22:30:23'),
(73, '6 BOll noycha', '6-boll-noycha', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:30:53', '2019-09-05 22:30:53'),
(74, 'Argon  chuis', 'argon-chuis', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:31:43', '2019-09-05 22:31:43'),
(75, 'Argon kolom', 'argon-kolom', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:32:06', '2019-09-05 22:32:06'),
(76, 'Argon nojel', 'argon-nojel', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:32:53', '2019-09-05 22:32:53'),
(77, 'pipe Paya', '-pipe-paya', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:33:38', '2019-09-06 00:10:05'),
(78, 'Tj katin 4\"', 'tj-katin-4\"', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:37:11', '2019-09-05 22:37:11'),
(79, 'Falap Dic.', 'falap-dic.', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:37:34', '2019-09-05 22:37:34'),
(80, 'SS Gosa', 'ss-gosa', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:37:50', '2019-09-05 22:37:50'),
(81, 'Ms Gosa', 'ms-gosa', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:38:01', '2019-09-05 22:38:01'),
(82, 'MS gosa 7\"', 'ms-gosa-7\"', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:38:19', '2019-09-05 22:38:19'),
(83, 'Saban TJ', 'saban-tj', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:38:33', '2019-09-05 22:38:33'),
(84, 'Saban Hati', 'saban-hati', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:38:45', '2019-09-05 22:38:45'),
(85, 'CEC Fome 4\"', '-cec-fome-4\"', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:39:09', '2019-09-05 23:11:17'),
(86, 'Bobe kapur USA  6\"', 'bobe-kapur-usa-6\"', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-05 22:39:26', '2019-09-06 00:02:33'),
(87, 'Bobe Kapur 5\"', 'bobe-kapur-5\"', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:40:00', '2019-09-05 22:40:00'),
(88, 'Bobe kapur 4\"', 'bobe-kapur-4\"', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 22:40:23', '2019-09-05 22:40:23'),
(89, 'TJ Fome', 'tj-fome-', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:12:37', '2019-09-05 23:12:37'),
(90, 'savan', 'savan', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:16:10', '2019-09-05 23:16:10'),
(91, 'Flap dic 2', 'flap-dic-2', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:38:00', '2019-09-05 23:38:00'),
(92, 'Lal SS gosa', 'lal-ss-gosa', 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:38:32', '2019-09-05 23:38:32'),
(93, 'Box paya', 'box-paya', 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:10:19', '2019-09-06 00:10:19'),
(94, 'SSy katin', 'ssy-katin', 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-09-06 00:10:53', '2019-09-06 00:11:17'),
(95, 'A46', 'a46-', 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:14:48', '2019-09-06 00:14:48');

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
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modified_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productcategory_id`, `name`, `code`, `unit`, `stock`, `price`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(34, 22, '3/8\" 0.8mm', 'TH8', '3', 0, 14, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:01:22', '2019-07-31 16:01:22'),
(32, 22, '3/8\"0.6mm', 'TH6', '3', 0, 11, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 15:55:13', '2019-07-31 15:59:00'),
(33, 22, '3/8\"0.7mm', 'TH7', '3', 0, 12, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 15:56:03', '2019-07-31 16:00:37'),
(30, 22, '3/8\" 0.4mm', 'TH4', '3', 0, 8, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 15:06:14', '2019-07-31 15:53:24'),
(31, 22, '3/8\"0.5mm', 'TH5', '3', 0, 10, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 15:54:11', '2019-07-31 16:00:48'),
(26, 18, '1/2', 'M1', '1', 0, 15, 1, 'ashikengineering@gmail.com', NULL, '2019-07-30 16:25:42', '2019-07-30 16:25:42'),
(35, 22, '3/8\"1.0mm', 'TH1', '3', 0, 17, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:02:15', '2019-07-31 16:02:15'),
(36, 22, '3/8\"1.2mm', 'TH2', '3', 0, 20.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:03:38', '2019-07-31 16:03:38'),
(37, 22, '3/8\"1.5', 'TH1.5', '3', 0, 26.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 16:05:45', '2019-08-01 00:56:43'),
(38, 22, '1/2\"0.4', 'HF4', '3', 0, 10.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:09:32', '2019-07-31 16:09:32'),
(39, 22, '1/2\"0.5', 'HF5', '3', 0, 11.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:10:34', '2019-07-31 16:10:34'),
(40, 22, '1/2\"0.6mm', 'HF6', '3', 0, 13.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:11:56', '2019-07-31 16:11:56'),
(41, 22, '1/2\"0.7mm', 'HF7', '3', 0, 16, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:12:49', '2019-07-31 16:12:49'),
(42, 22, '1/2\"0.8mm', 'HF8', '3', 0, 19, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:14:08', '2019-07-31 16:14:08'),
(43, 22, '1/2\"1.0mm', 'HF1', '3', 0, 24.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:14:40', '2019-07-31 16:14:40'),
(44, 22, '1/2\"1.2mm', 'HF2', '3', 0, 27.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:15:20', '2019-07-31 16:15:20'),
(45, 22, '1/2\"1.5mm', 'HF1.5', '3', 0, 34, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:16:30', '2019-07-31 16:16:30'),
(46, 22, '5/8\"0.4mm', 'FH4', '3', 0, 13.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:19:53', '2019-07-31 16:19:53'),
(47, 22, '5/8\"0.5mm', 'FH5', '3', 0, 15.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:21:10', '2019-07-31 16:21:10'),
(48, 22, '5/8\"0.6mm', 'FH6', '3', 0, 18, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:24:45', '2019-07-31 16:24:45'),
(49, 22, '5/8\"0.7', 'FH7', '3', 0, 22, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:25:39', '2019-07-31 16:25:39'),
(50, 22, '5/8\"0.8mm', 'FH8', '3', 0, 24.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:26:26', '2019-07-31 16:26:26'),
(51, 22, '5/8\"1.0mm', 'FH1', '3', 0, 30, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 16:27:03', '2019-07-31 16:27:19'),
(52, 22, '5/8\"1.2mm', 'FH2', '3', 0, 36.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:28:09', '2019-07-31 16:28:09'),
(53, 22, '5/8\"1.5mm', 'FH1.5', '3', 0, 43.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:29:02', '2019-07-31 16:29:02'),
(54, 22, '3/4\"0.4mm', 'TF4', '3', 0, 16, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:33:49', '2019-07-31 16:33:49'),
(55, 22, '3/4\"0.5mm', 'TF5', '3', 0, 19, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:34:34', '2019-07-31 16:34:34'),
(56, 22, '3/4\"0.6mm', 'TF6', '3', 0, 22, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:35:13', '2019-07-31 16:35:13'),
(57, 22, '3/4\"0.7mm', 'TF7', '3', 0, 25.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:36:17', '2019-07-31 16:36:17'),
(58, 22, '3/4\"0.8mm', 'TF8', '3', 0, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:42:31', '2019-07-31 16:42:31'),
(59, 22, '3/8\"1.0mm', 'TF1', '3', 0, 36.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:44:00', '2019-07-31 16:44:00'),
(60, 22, '3/4\"1.2mm', 'TF2', '3', 0, 43.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:44:46', '2019-07-31 16:44:46'),
(61, 22, '3/4\"1.5mm', 'TF1.5', '3', 0, 52.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:46:00', '2019-07-31 16:46:00'),
(62, 22, '3/4\"2.0mm', 'TF2.0', '3', 0, 63.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:47:45', '2019-07-31 16:47:45'),
(63, 22, '7/8\"0.6mm', 'SE6', '3', 0, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:51:56', '2019-07-31 16:51:56'),
(64, 22, '7/8\"0.7mm', 'SE7', '3', 0, 31, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:52:53', '2019-07-31 16:52:53'),
(65, 22, '7/8\"0.8mm', 'SE8', '3', 0, 35.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:54:07', '2019-07-31 16:54:07'),
(66, 22, '7/8\"1.0', 'SE1', '3', 0, 43.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:55:41', '2019-07-31 16:55:41'),
(67, 22, '7/8\"1.2mm', 'SE2', '3', 0, 51.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:56:46', '2019-07-31 16:56:46'),
(68, 22, '7/8\"2.0mm', 'SE2.0', '3', 0, 87, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 16:59:30', '2019-07-31 16:59:30'),
(69, 22, '1\"', 'On4', '3', 0, 20.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 17:02:48', '2019-07-31 17:07:05'),
(70, 22, '1\"0.5mm', 'On5', '3', 0, 24, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 17:05:46', '2019-07-31 17:07:52'),
(71, 22, '1\"0.6', 'On6', '3', 0, 29.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:08:31', '2019-07-31 17:08:31'),
(72, 22, '1\"0.7mm', 'On7', '3', 0, 35, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:09:28', '2019-07-31 17:09:28'),
(73, 22, '1\"0.8mm', 'On8', '3', 0, 40, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:10:40', '2019-07-31 17:10:40'),
(74, 22, '1\"1.0mm', 'On1', '3', 0, 49, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 17:13:01', '2019-07-31 17:32:14'),
(75, 22, '1\"1.2mm', 'On2', '3', 0, 60, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:31:48', '2019-07-31 17:31:48'),
(76, 22, '1\"1.5mm', 'On1.5', '3', 0, 75, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:35:37', '2019-07-31 17:35:37'),
(77, 22, '1\"2.0', 'On2.0', '3', 0, 95, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:36:43', '2019-07-31 17:36:43'),
(78, 22, '1\"2.5', 'On2.5', '3', 0, 118, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 17:47:29', '2019-07-31 17:47:29'),
(79, 22, '11/4\"0.6mm', 'SA6', '3', 0, 38, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:06:27', '2019-07-31 23:06:27'),
(80, 22, '11/4\"0.7', 'SA7', '3', 0, 43.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-07-31 23:07:51', '2019-07-31 23:32:08'),
(81, 22, '11/4\"0.8MM', 'SA8', '3', 0, 51, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:09:03', '2019-07-31 23:09:03'),
(82, 22, '11/4\"1.0MM', 'SA1', '3', 0, 63, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:09:58', '2019-07-31 23:09:58'),
(83, 22, '11/4\"1.2MM', 'SA2', '3', 0, 75, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:10:47', '2019-07-31 23:10:47'),
(84, 22, '11/4\"1.5MM', 'SA1.5', '3', 0, 93, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:12:07', '2019-07-31 23:12:07'),
(85, 22, '11/4\"2.0MM', 'SA2.0', '3', 0, 120, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:22:22', '2019-07-31 23:22:22'),
(86, 22, '11/4\"2.5', 'SA2.5', '3', 0, 150, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:23:45', '2019-07-31 23:23:45'),
(87, 22, '11/4\"3.0MM', 'SA3.0', '3', 0, 180, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:25:32', '2019-07-31 23:25:32'),
(88, 22, '11/2\"0.6MM', 'DR6', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:30:55', '2019-07-31 23:30:55'),
(89, 22, '11/2\"0.7MM', 'DR7', '3', 0, 49, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:33:28', '2019-07-31 23:33:28'),
(90, 22, '11/2\"0.8MM', 'DE8', '3', 0, 61, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:34:18', '2019-07-31 23:34:18'),
(91, 22, '11/2\"1.0', 'DR1', '3', 0, 74, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:35:11', '2019-07-31 23:35:11'),
(92, 22, '11/4\"2MM', 'DE2', '3', 0, 91.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:36:01', '2019-07-31 23:36:01'),
(93, 22, '11/4\"1.5MM', 'DE1.5', '3', 0, 113, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:37:30', '2019-07-31 23:37:30'),
(94, 22, '11/4\"2.0MM', 'DR2.0', '3', 0, 148, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:38:32', '2019-07-31 23:38:32'),
(95, 22, '11/4\"2.5MM', 'DR2.5', '3', 0, 186, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:39:36', '2019-07-31 23:39:36'),
(96, 22, '11/2\"3.0MM', 'DR3.0', '3', 0, 227, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:40:56', '2019-07-31 23:40:56'),
(97, 22, '2\"0.5MM', 'T05', '1', 0, 53, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:46:00', '2019-07-31 23:46:00'),
(98, 22, '2\"0.6MM', 'TO6', '3', 0, 61, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:47:29', '2019-07-31 23:47:29'),
(99, 22, '2\"0.7MM', 'TO7', '3', 0, 72, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:54:16', '2019-07-31 23:54:16'),
(100, 22, '2\"0.8MM', 'TO8', '3', 0, 82.5, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:56:43', '2019-07-31 23:56:43'),
(101, 22, '2\"1.0MM', 'TP1', '3', 0, 101, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:57:14', '2019-07-31 23:57:14'),
(102, 22, '2\"1.2MM', 'TO2', '3', 0, 124, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:57:59', '2019-07-31 23:57:59'),
(103, 22, '2\"1.5MM', 'TO1.5', '3', 200, 150, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:58:31', '2019-08-09 06:10:12'),
(104, 22, '2\"2.0', 'TO2.0', '3', 0, 197, 1, 'ashikengineering@gmail.com', NULL, '2019-07-31 23:59:17', '2019-07-31 23:59:18'),
(105, 22, '2\"2.5MM', 'TO2.5', '3', 0, 245, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:08:19', '2019-08-01 00:08:19'),
(106, 22, '2\"3.0MM', 'TO3.0', '3', 0, 296, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:09:10', '2019-08-01 00:09:10'),
(107, 22, '21/2\"0.8', 'RI8', '3', 0, 102, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:26:36', '2019-08-01 00:26:36'),
(108, 22, '21/2\'\'1.0', 'RI1', '3', 0, 124, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:32:54', '2019-08-01 00:32:54'),
(109, 22, '21/2\"1.2MM', 'RI2', '3', 0, 150, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:34:31', '2019-08-01 00:34:31'),
(110, 22, '21/2\"1.5MM', 'RI1.5', '3', 0, 183, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:35:45', '2019-08-01 00:35:45'),
(111, 22, '21/2\"2.0MM', 'RI2.0', '3', 0, 248, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:36:44', '2019-08-01 00:36:44'),
(112, 22, '21/2\"2.5MM', 'RI2.5', '3', 0, 310, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:39:02', '2019-08-01 00:39:02'),
(113, 22, '21/2\"3.0MM', 'RI3.0', '3', 0, 372, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:39:44', '2019-08-01 00:39:44'),
(114, 22, '3\"0.8', 'TR8', '3', 0, 121, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:40:40', '2019-08-01 00:40:40'),
(115, 22, '3\"1.0', 'TR1', '3', 0, 147, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:41:39', '2019-08-01 00:41:39'),
(116, 22, '3\"1.2MM', 'TR2', '3', 0, 185, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:43:31', '2019-08-01 00:43:31'),
(117, 22, '3\"1.5MM', 'TR1.5', '3', 0, 223, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:44:12', '2019-08-01 00:44:12'),
(118, 22, '3\"2.0MM', 'TR2.0', '3', 0, 297.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:45:28', '2019-08-01 00:45:28'),
(119, 22, '3\"2.5MM', 'TR2.5', '3', 0, 375, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:46:39', '2019-08-01 00:46:39'),
(120, 22, '3\"3.0MM', 'TR3.0', '3', 0, 438, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:47:26', '2019-08-01 00:47:26'),
(121, 22, '4\"1.2MM', 'FR2', '3', 0, 245, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:48:56', '2019-08-01 00:48:56'),
(122, 22, '4\"1.5MM', 'FR1.5', '3', 0, 305, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:49:48', '2019-08-01 00:49:48'),
(123, 22, '4\"2.0', 'FR2.0', '3', 0, 410, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:50:33', '2019-08-01 00:50:33'),
(124, 22, '4\"2.5MM', 'FR2.5', '3', 0, 510, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:51:11', '2019-08-01 00:51:11'),
(125, 22, '4\"3.0', 'FR3.0', '3', 0, 613, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 00:52:35', '2019-08-01 00:52:35'),
(127, 23, '3/8×3/8\"1.0', 'B2', '3', 0, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:02:20', '2019-08-01 04:02:20'),
(128, 23, '1/2×1/2\"0.8MM', 'B3', '3', 0, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:03:08', '2019-08-01 04:03:08'),
(129, 23, '1/2\"×1/2\"1.0MM', 'B4', '3', 0, 31, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:13:00', '2019-08-01 04:13:00'),
(130, 23, '1/2\"×1/2\"1.2MM', 'B5', '3', 0, 37, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:14:19', '2019-08-01 04:14:19'),
(131, 23, '1/2\"×1/2\"1.5MM', 'B6', '3', 0, 46, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:15:59', '2019-08-01 04:15:59'),
(132, 23, '5/8\"×5/8\"0.8MM', 'B7', '3', 0, 31, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:16:53', '2019-08-01 04:16:53'),
(133, 23, '5/8\"×5/8\"1.0', 'B8', '3', 0, 37.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-01 04:18:28', '2019-08-01 04:22:57'),
(195, 23, '1/2\"×21/2\"MM', 'BNB18', '3', 0, 105, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:05:03', '2019-08-04 19:05:03'),
(134, 23, '5/8\"×5/8\"1.5MM', 'B10', '3', 0, 55, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:23:53', '2019-08-01 04:23:53'),
(135, 23, '3/4\"×3/4\"0.8MM', 'B11', '3', 0, 41.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:26:08', '2019-08-01 04:26:08'),
(136, 23, '3/4\"×3/4\"1.0', 'B12', '3', 0, 51, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:27:03', '2019-08-01 04:27:03'),
(137, 23, '3/4\"×3/4\"1.2MM', 'B13', '3', 0, 61, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:28:18', '2019-08-01 04:28:18'),
(138, 23, '3/4\"×3/4\"1.5MM', 'B14', '3', 0, 77, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:29:27', '2019-08-01 04:29:27'),
(139, 23, '3/4\"×3/4\"1.5MM', 'B15', '3', 0, 95, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:30:28', '2019-08-01 04:30:28'),
(140, 23, '1\"×1\"0.8MM', 'B16', '3', 0, 52.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-01 04:33:20', '2019-08-01 04:33:20'),
(141, 23, '1\"×1\"1.0MM', 'B17', '3', 0, 65, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:23:11', '2019-08-03 17:23:11'),
(142, 23, '1\"×1\"1.2MM', 'B18', '3', 0, 78, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:24:10', '2019-08-03 17:24:10'),
(143, 23, '1\"×1\"1.5MM', 'B19', '3', 1222, 97.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-03 17:24:57', '2019-09-07 21:06:18'),
(144, 23, '1\"×1\"2.0MM', 'B20', '3', 0, 121, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:25:38', '2019-08-03 17:25:38'),
(145, 23, '11/4\"×11/4\"0.8MM', 'B21', '3', 0, 66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:27:22', '2019-08-03 17:27:22'),
(146, 23, '11/4\"×11/4\"1.0MM', 'B22', '3', 0, 77, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:28:12', '2019-08-03 17:28:12'),
(147, 23, '11/4\"×11/4\"1.2MM', 'B23', '3', 0, 92.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:29:07', '2019-08-03 17:29:07'),
(148, 23, '11/4\"×11/4\"1.5MM', 'B24', '3', 0, 115, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:29:55', '2019-08-03 17:29:55'),
(149, 23, '11/2\"×11/2\"0.8MM', 'B25', '3', 0, 84, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:30:50', '2019-08-03 17:30:50'),
(150, 23, '11/2\"×11/2\"1.0', 'B26', '3', 0, 103, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:32:02', '2019-08-03 17:32:02'),
(151, 23, '11/2\"11/2\"1.2MM', 'B27', '3', 0, 126, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:32:39', '2019-08-03 17:32:39'),
(152, 23, '11/2\"×11/2\"1.5MM', 'B28', '3', 0, 150, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:33:26', '2019-08-03 17:33:26'),
(153, 23, '11/2\"×11/2\"2.0MM', 'B29', '3', 0, 195, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:34:13', '2019-08-03 17:34:13'),
(154, 23, '11/2\"×11/2\"2.5MM', 'B30', '3', 0, 245, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:35:01', '2019-08-03 17:35:01'),
(155, 23, '2\"×2\"0.8MM', 'B31', '3', 0, 105, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:38:31', '2019-08-03 17:38:31'),
(156, 23, '2\"×2\"1.0MM', 'B32', '3', 0, 125, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:40:10', '2019-08-03 17:40:10'),
(157, 23, '2\"×2\"1.2MM', 'B33', '3', 0, 155, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:43:39', '2019-08-03 17:43:39'),
(158, 23, '2\"×2\"1.5MM', 'B34', '3', 0, 190, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:44:46', '2019-08-03 17:44:46'),
(159, 23, '2\"×2\"2.0MM', 'B35', '3', 0, 250, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:46:03', '2019-08-03 17:46:03'),
(160, 23, '21/2\"×21/2\"1.2MM', 'B36', '3', 0, 190, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:47:47', '2019-08-03 17:47:47'),
(161, 23, '21/2\"×21/2\"1.5MM', 'B37', '3', 0, 233, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:48:59', '2019-08-03 17:48:59'),
(162, 23, '21/2\"×21/2\"2.0MM', 'B38', '3', 0, 330, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:51:09', '2019-08-03 17:51:09'),
(163, 23, '3\"×3\"1.2MM', 'B39', '3', 0, 250, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:55:09', '2019-08-03 17:55:09'),
(164, 23, '3\'×3\"1.5MM', 'B40', '3', 0, 305, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:55:51', '2019-08-03 17:55:51'),
(165, 23, '3/8\"×3/8\"0.6MM', 'B41', '3', 0, 16, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:58:08', '2019-08-03 17:58:08'),
(166, 23, '1/2\"×1/2\"0.5MM', 'B42', '3', 0, 17.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:59:11', '2019-08-03 17:59:11'),
(167, 23, '1/2\"×1/2\"0.6MM', 'B43', '3', 0, 19.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 17:59:53', '2019-08-03 17:59:53'),
(168, 23, '1/2\"×1/2\"0.7MM', 'B44', '3', 0, 24, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:01:14', '2019-08-03 18:01:14'),
(169, 23, '3/4\"×3/4\"0.5MM', 'B45', '3', 0, 28, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:02:07', '2019-08-03 18:02:07'),
(170, 23, '3/4\"×3/4\"0.6MM', 'B46', '3', 0, 31, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:03:21', '2019-08-03 18:03:21'),
(171, 23, '1\"×1\"0.5', 'B47', '3', 0, 34, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:04:13', '2019-08-03 18:04:13'),
(172, 23, '1\"×1\"0.6MM', 'B48', '3', 0, 40, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:05:35', '2019-08-03 18:05:35'),
(173, 23, '1\"×1\"0.7MM', 'B49', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:07:23', '2019-08-03 18:07:23'),
(174, 23, '11/2\"×11/2\"MM', 'B50', '3', 0, 70, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:09:01', '2019-08-03 18:09:01'),
(175, 23, '2\"×2\"0.6MM', 'B51', '3', 0, 80, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:09:42', '2019-08-03 18:09:42'),
(176, 23, '2\"×2\"0.7MM', 'B52', '3', 0, 92, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 18:10:15', '2019-08-03 18:10:15'),
(177, 23, '1/2\"×3/4\"0.8', 'BB1', '3', 0, 31, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-03 20:09:38', '2019-08-03 20:10:17'),
(178, 23, '1/2\"×3/4\"1.0MM', 'BB2', '3', 0, 38, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:11:01', '2019-08-03 20:11:01'),
(179, 23, '1/2\"×3/4\"1.2MM', 'BB3', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:13:15', '2019-08-03 20:13:15'),
(180, 23, '1/2\"×3/4\"1.5MM', 'BB4', '3', 0, 56, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:14:10', '2019-08-03 20:14:10'),
(181, 23, '1/2\"×1\"0.8MM', 'BB5', '3', 0, 41, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:15:03', '2019-08-03 20:15:03'),
(182, 23, '1/2\"×1\"1.0MM', 'BB6', '3', 0, 50, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:16:04', '2019-08-03 20:16:04'),
(183, 23, '1/2\"×1\"1.2MM', 'BB7', '3', 0, 60, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:16:40', '2019-08-03 20:16:40'),
(184, 23, '1/2\"×1\"1.5MM', 'BB8', '3', 0, 75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:17:33', '2019-08-03 20:17:33'),
(185, 23, '1/2\"×11/2\"0.8MM', 'BB9', '3', 0, 52, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:18:16', '2019-08-03 20:18:16'),
(186, 23, '1/2\"×11/2\"1.0MM', 'BB10', '3', 0, 64, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:19:34', '2019-08-03 20:19:34'),
(187, 23, '1/2\"×11/2\"1.2MM', 'BB11', '3', 0, 76, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:21:49', '2019-08-03 20:21:49'),
(188, 23, '1/2\"×11/2\"1.5MM', 'BB12', '3', 0, 96, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:22:28', '2019-08-03 20:22:28'),
(189, 23, '1/2\"×2\"0.8MM', 'BB13', '3', 0, 64, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:23:18', '2019-08-03 20:23:18'),
(190, 23, '1/2\"×2\"1.0MM', 'BB14', '3', 0, 79, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:24:13', '2019-08-03 20:24:13'),
(191, 23, '1/2\"×2\"1.2MM', 'BB15', '3', 0, 95, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:24:56', '2019-08-03 20:24:56'),
(192, 23, '1/2\"×2\"1.5', 'BB16', '3', 0, 117, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:25:42', '2019-08-03 20:25:42'),
(193, 23, '1/2\"×21/2\"0.8MM', 'BB17', '3', 0, 87, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:27:29', '2019-08-03 20:27:29'),
(194, 23, '1/2\"×21/2\"1.0MM', 'BB18', '3', 0, 105, 1, 'ashikengineering@gmail.com', NULL, '2019-08-03 20:29:06', '2019-08-03 20:29:06'),
(196, 23, '5/8\"×21/2\"1.0MM', 'BB19', '3', 0, 102, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-04 19:06:35', '2019-08-04 19:07:57'),
(197, 23, '5/8\"×21/2\"1.5MM', 'BB20', '3', 0, 152, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:09:18', '2019-08-04 19:09:18'),
(198, 23, '3/4\"×11/2\"1.0MM', 'BB21', '3', 0, 75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:10:18', '2019-08-04 19:10:18'),
(199, 23, '3/4\"×11/2\"1.2MM', 'BB22', '3', 0, 92, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:11:19', '2019-08-04 19:11:19'),
(200, 23, '3/4\"×11/2\"1.5MM', 'BB23', '3', 0, 113, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:12:23', '2019-08-04 19:12:23'),
(201, 23, '1\"×11/2\"0.8MM', 'BB24', '3', 0, 67, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:14:25', '2019-08-04 19:14:25'),
(202, 23, '1\"×11/2\"1.0MM', 'BB25', '3', 0, 79, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:19:24', '2019-08-04 19:19:24'),
(203, 23, '1\"×11/2\"1.2MM', 'BB26', '3', 0, 95, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:20:12', '2019-08-04 19:20:12'),
(204, 23, '1\"×11/2\"1.5MM', 'BB27', '3', 0, 120, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:21:09', '2019-08-04 19:21:09'),
(205, 23, '1\"×11/2\"2.0MM', 'BB28', '3', 0, 158, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:21:46', '2019-08-04 19:21:46'),
(206, 23, '1\"×2\"0.8MM', 'BB29', '3', 0, 84, 1, 'ashikengineering@gmail.com', NULL, '2019-08-04 19:22:42', '2019-08-04 19:22:42'),
(207, 23, '1\"×2\"1.0mm', 'BB30', '3', 0, 100, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:28:05', '2019-08-06 16:28:05'),
(208, 23, '1\"×2\"1.2MM', 'BB31', '3', 0, 125, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:28:55', '2019-08-06 16:28:55'),
(209, 23, '1\"×2\"1.5MM', 'BB32', '3', 0, 150, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:29:58', '2019-08-06 16:29:58'),
(210, 23, '1\"×2\"2.0MM', 'BB33', '3', 0, 200, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:30:29', '2019-08-06 16:30:29'),
(211, 23, '11/2\"×2\"1.0MM', 'BB34', '3', 0, 110, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:31:18', '2019-08-06 16:31:18'),
(212, 23, '11/2\"×2\"1.2MM', 'BB35', '3', 0, 135, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:33:28', '2019-08-06 16:33:28'),
(213, 23, '11/2\"×2\"1.5MM', 'BB36', '3', 0, 167, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:34:09', '2019-08-06 16:34:09'),
(214, 23, '1\"×3\"0.8MM', 'BB37', '3', 0, 103, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:34:58', '2019-08-06 16:34:58'),
(215, 23, '1\"×3\"1.0MM', 'BB38', '3', 0, 125, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-06 16:39:43', '2019-08-06 16:41:53'),
(216, 23, '1\"×3\"1.2MM', 'BB39', '3', 0, 151, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:42:56', '2019-08-06 16:42:56'),
(217, 23, '1\"×3\"1.5MM', 'BB40', '3', 0, 190, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:43:33', '2019-08-06 16:43:33'),
(218, 23, '2\"×3\"1.2MM', 'BB41', '3', 0, 188, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:44:59', '2019-08-06 16:44:59'),
(219, 23, '2\"×3\"1.5MM', 'BB42', '3', 0, 233, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:46:13', '2019-08-06 16:46:13'),
(220, 23, '2\"×3\"2.0MM', 'BB43', '3', 0, 325, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:46:54', '2019-08-06 16:46:54'),
(221, 23, '2\"×4\"1.2MM', 'BB44', '3', 0, 250, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:47:26', '2019-08-06 16:47:26'),
(222, 23, '2\"×4\"1.5MM', 'BB45', '3', 0, 310, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:47:54', '2019-08-06 16:47:54'),
(223, 23, '2\"×4\"2.0MM', 'BB46', '3', 0, 415, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:48:33', '2019-08-06 16:48:33'),
(224, 23, '1/2\"×1\"0.6MM', 'BB47', '3', 0, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:49:51', '2019-08-06 16:49:51'),
(225, 23, '1/2\"×1\"0.7MM', 'BB48', '3', 0, 35, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:50:31', '2019-08-06 16:50:31'),
(226, 23, '1/2\"×11/2\"0.7MM', 'BB49', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:51:28', '2019-08-06 16:51:28'),
(227, 23, '1/2\"×2\"0.6', 'BB50', '3', 0, 48, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:52:11', '2019-08-06 16:52:11'),
(228, 23, '1/2\"×2\"0.7MM', 'BB51', '3', 0, 54, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:55:13', '2019-08-06 16:55:13'),
(229, 23, '1\"×2\"0.6MM', 'BB52', '3', 0, 62, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:56:00', '2019-08-06 16:56:00'),
(230, 23, '1\"×2\"0.7MM', 'BB53', '3', 0, 73, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:57:02', '2019-08-06 16:57:02'),
(231, 23, '1\"×3\"0.7MM', 'BB54', '3', 0, 92, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 16:57:40', '2019-08-06 16:57:40'),
(232, 24, '1/2\"1.0MM', 'UP*1', '3', 0, 38, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:03:49', '2019-08-06 18:03:49'),
(233, 24, '1/2\"1.2MM', 'UP*2', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:04:51', '2019-08-06 18:04:51'),
(234, 24, '1/2\"1.5MM', 'UP*3', '3', 0, 55.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:06:14', '2019-08-06 18:06:14'),
(235, 24, '5/8\"1.0MM', 'UP*4', '3', 0, 48, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:07:20', '2019-08-06 18:07:20'),
(236, 24, '5/8\"1.2MM', 'UP*5', '3', 0, 58, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:08:10', '2019-08-06 18:08:10'),
(237, 24, '5/8\"1.5MM', 'UP*6', '3', 0, 69.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:09:03', '2019-08-06 18:09:03'),
(238, 24, '3/4\"1.0', 'UP*7', '3', 0, 58.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:09:55', '2019-08-06 18:09:55'),
(239, 24, '3/4\"1.2MM', 'UP*8', '3', 0, 69.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:11:01', '2019-08-06 18:11:01'),
(240, 24, '3/4\"1.5MM', 'UP*9', '3', 0, 83.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:12:04', '2019-08-06 18:12:04'),
(241, 24, '1\"1.0MM', 'UP*10', '3', 0, 79.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:13:13', '2019-08-06 18:13:13'),
(242, 24, '1\"1.2MM', 'UP*11', '3', 0, 94.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:13:51', '2019-08-06 18:13:51'),
(243, 24, '1\"1.5MM', 'UP*12', '3', 0, 118, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:14:32', '2019-08-06 18:14:32'),
(244, 24, '11/4\"1.0MM', 'UP*13', '3', 0, 98.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:15:27', '2019-08-06 18:15:27'),
(245, 24, '11/4\"1.2MM', 'UP*14', '3', 0, 118.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:16:16', '2019-08-06 18:16:16'),
(246, 24, '11/4\"1.5MM', 'UP*15', '3', 0, 146.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:17:02', '2019-08-06 18:17:02'),
(247, 24, '11/2\"1.0MM', 'UP*16', '3', 0, 119, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-06 18:17:56', '2019-08-06 18:18:31'),
(248, 24, '11/2\"1.2MM', 'UP*17', '3', 0, 143.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:19:31', '2019-08-06 18:19:31'),
(249, 24, '11/2\"1.5MM', 'UP*18', '3', 0, 178.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:21:24', '2019-08-06 18:21:24'),
(250, 24, '2\"1.0MM', 'UP*19', '3', 0, 161.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:22:05', '2019-08-06 18:22:05'),
(251, 24, '2\"1.2MM', 'UP*20', '3', 0, 192.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:23:37', '2019-08-06 18:23:37'),
(252, 24, '2\"1.5MM', 'UP*21', '3', 0, 239.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:24:16', '2019-08-06 18:24:16'),
(253, 24, '21/2\"1.2MM', 'UP*22', '3', 0, 238.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:26:12', '2019-08-06 18:26:12'),
(254, 24, '21/2\"1.5MM', 'UP*23', '3', 0, 319.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:27:18', '2019-08-06 18:27:18'),
(255, 24, '4\"1.2MM', 'UP*24', '3', 0, 380.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:27:56', '2019-08-06 18:27:56'),
(256, 24, '4\"1.5MM', 'UP*25', '3', 0, 489.5, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-06 18:28:59', '2019-08-06 18:29:50'),
(257, 24, '4\"2.0MM', 'UP*26', '3', 0, 652, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:29:36', '2019-08-06 18:29:36'),
(258, 25, '1/2\"×1/2\"1.0MM', 'UB*1', '3', 0, 50, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:32:01', '2019-08-06 18:32:01'),
(259, 25, '1/2\"×1/2\"1.2MM', 'UB*2', '3', 0, 60.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:33:00', '2019-08-06 18:33:00'),
(260, 25, '1/2\"×1/2\"1.5MM', 'UB*3', '3', 0, 75.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:33:58', '2019-08-06 18:33:58'),
(261, 25, '3/4\"×3/4\"1.0MM', 'UB*4', '3', 0, 79.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:34:52', '2019-08-06 18:34:52'),
(262, 25, '3/4\"×3/4\"1.2MM', 'UB*5', '3', 0, 94.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:36:12', '2019-08-06 18:36:12'),
(263, 25, '3/4\"3/4\"1.5MM', 'UB*6', '3', 0, 117.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:37:20', '2019-08-06 18:37:20'),
(264, 25, '5/8\"×5/8\"1.0MM', 'UB*7', '3', 0, 67, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:38:11', '2019-08-06 18:38:11'),
(265, 25, '5/8:\"×5/8\"1.2MM', 'UB*8', '3', 0, 79.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:39:16', '2019-08-06 18:39:16'),
(266, 25, '11/2\"×11/2\"1.0MM', 'UB*9', '3', 0, 159.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:40:36', '2019-08-06 18:40:36'),
(267, 25, '11/2\"×11/2\"1.2MM', 'UB*10', '3', 0, 192.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:41:40', '2019-08-06 18:41:40'),
(268, 25, '11/2\"×11/2\"1.5MM', 'UB*11', '3', 0, 243, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:42:19', '2019-08-06 18:42:19'),
(269, 25, '2\"×2\"1.2MM', 'UB*12', '3', 0, 149.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:43:27', '2019-08-06 18:43:27'),
(270, 25, '2\"×2\"1.5MM', 'UB*13', '3', 0, 325, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:44:19', '2019-08-06 18:44:19'),
(271, 25, '1\"×1\"1.0MM', 'UB*14', '3', 0, 101.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:45:13', '2019-08-06 18:45:13'),
(272, 25, '1\"×1\"1.2MM', 'UB*15', '3', 0, 123.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:46:19', '2019-08-06 18:46:19'),
(273, 25, '1\"×1\"1.5MM', 'UB*16', '3', 0, 153, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-06 18:47:09', '2019-08-06 18:47:40'),
(274, 25, '11/4\"×11/4\"1.0MM', 'UB*17', '3', 0, 133.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:48:31', '2019-08-06 18:48:31'),
(275, 25, '11/4\"×11/4\"1.2MM', 'UB*18', '3', 0, 159.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:50:47', '2019-08-06 18:50:47'),
(276, 25, '11/4\"11/4\"1.5MM', 'UB*19', '3', 0, 198, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:51:28', '2019-08-06 18:51:28'),
(277, 25, '1/2\"×1\"1.0MM', 'UB*20', '3', 0, 79.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 18:53:45', '2019-08-06 18:53:45'),
(278, 25, '1/2\"×1\"1.2MM', 'UB*21', '3', 0, 94.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:26:58', '2019-08-06 23:26:58'),
(279, 25, '1/2\"×1\"1.5MM', 'UB*22', '3', 0, 117.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:27:46', '2019-08-06 23:27:46'),
(280, 25, '1/2\"×11/2\"1.0MM', 'UB*23', '3', 0, 104.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:30:48', '2019-08-06 23:30:48'),
(281, 25, '1/2\"×11/2\"1.2MM', 'UB*24', '3', 0, 123.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:32:49', '2019-08-06 23:32:49'),
(282, 25, '1/2\"×11/2\"1.5MM', 'UB*25', '3', 0, 153, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:34:59', '2019-08-06 23:34:59'),
(283, 25, '1/2\"×2\"1.0MM', 'UB*26', '3', 0, 132.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:36:24', '2019-08-06 23:36:24'),
(284, 25, '1/2\"×2\"1.2MM', 'UB*27', '3', 0, 160.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:38:51', '2019-08-06 23:38:51'),
(285, 25, '1/2\"×2\"1.5MM', 'UB*28', '3', 0, 198, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:39:52', '2019-08-06 23:39:52'),
(286, 25, '5/8\"×21/2\"1.0MM', 'UB*29', '3', 0, 166.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:42:33', '2019-08-06 23:42:33'),
(287, 25, '5/8\"×21/2\"1.5MM', 'UB*30', '3', 0, 248.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:43:54', '2019-08-06 23:43:54'),
(288, 25, '3/4\"×1/2\"1.0MM', 'UB*31', '3', 0, 65.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:46:00', '2019-08-06 23:46:00'),
(289, 25, '3/4\"×1/2\"1.2MM', 'UB*32', '3', 0, 78.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:46:55', '2019-08-06 23:46:55'),
(290, 25, '3/4\"×1/2\"1.5MM', 'UB*33', '3', 0, 96.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:52:37', '2019-08-06 23:52:37'),
(291, 25, '3/4\"×11/2\"1.0MM', 'UB*34', '3', 0, 119.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:55:28', '2019-08-06 23:55:28'),
(292, 25, '3/4\"×11/2\"1.2MM', 'UB*35', '3', 0, 143.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:56:26', '2019-08-06 23:56:26'),
(293, 25, '3/4\"×11/2\"1.5MM', 'UB*36', '3', 0, 177.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:57:56', '2019-08-06 23:57:56'),
(294, 25, '1\"×11/2\"1.0MM', 'UB*37', '3', 0, 132.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-06 23:59:11', '2019-08-06 23:59:11'),
(295, 25, '1\"×11/2\"1.2MM', 'UB*38', '3', 0, 160.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:03:43', '2019-08-07 00:03:43'),
(296, 25, '1\"×11/2\"1.5MM', 'UB*39', '3', 0, 198, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:06:50', '2019-08-07 00:06:50'),
(297, 25, '11/2\"×2\"1.2MM', 'UB*40', '3', 0, 225, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:08:02', '2019-08-07 00:08:02'),
(298, 25, '11/2\"×2\"1.5MM', 'UB*41', '3', 0, 280.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:09:12', '2019-08-07 00:09:12'),
(299, 25, '2\"×1\"1.0MM', 'UB*42', '3', 0, 164.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:10:43', '2019-08-07 00:10:43'),
(300, 25, '2\"×1\"1.2MM', 'UB*43', '3', 0, 191, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 00:21:17', '2019-08-07 00:21:17'),
(301, 25, '2\"×1\"1.5MM', 'UB*44', '3', 0, 242.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 14:58:21', '2019-08-07 14:58:21'),
(302, 25, '3\"×1\"1.2MM', 'UB*45', '3', 0, 248.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 14:59:30', '2019-08-07 14:59:30'),
(303, 25, '3\"×1\"1.5MM', 'UB*46', '3', 0, 325.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 15:14:37', '2019-08-07 15:14:37'),
(304, 25, '3\"×2\"1.2MM', 'UB*47', '3', 0, 320.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 15:17:45', '2019-08-07 15:17:45'),
(305, 25, '3\"×2\"1.5MM', 'UB*48', '3', 0, 401.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 15:19:07', '2019-08-07 15:19:07'),
(306, 25, '4\"×2\"1.5MM', 'UB*49', '3', 0, 480, 1, 'ashikengineering@gmail.com', NULL, '2019-08-07 15:20:11', '2019-08-07 15:20:11'),
(307, 26, '5/8\"0.8mm', 'SP*1', '3', 0, 32.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:13:43', '2019-08-08 22:13:43'),
(308, 26, '3/4\"0.8MM', 'SP*2', '3', 0, 38.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:17:19', '2019-08-08 22:17:19'),
(309, 26, '3/4\"1.0MM', 'SP*3', '3', 0, 48, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:18:01', '2019-08-08 22:18:01'),
(310, 26, '3/4\"1.2MM', 'SP*4', '3', 0, 56.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:18:48', '2019-08-08 22:18:48'),
(311, 26, '3/4\"1.5MM', 'SP*5', '3', 0, 59, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:19:34', '2019-08-08 22:19:34'),
(312, 26, '1\"0.8MM', 'SP*6', '3', 0, 52.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:20:33', '2019-08-08 22:20:33'),
(313, 26, '1\"1.0MM', 'SP*7', '3', 0, 64.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:21:20', '2019-08-08 22:21:20'),
(314, 26, '1\"1.2MM', 'SP*8', '3', 0, 78.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:22:00', '2019-08-08 22:22:00'),
(315, 26, '1\"1.5MM', 'SP*9', '3', 0, 97, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:22:48', '2019-08-08 22:22:48'),
(316, 26, '11/4\"1.0MM', 'SP*10MM', '3', 0, 82.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:24:17', '2019-08-08 22:24:17'),
(317, 26, '11/4\"1.2MM', 'SP*11', '3', 0, 98.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:25:08', '2019-08-08 22:25:08'),
(318, 26, '11/2\"0.8MM', 'SP*12', '3', 0, 80, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:25:46', '2019-08-08 22:25:46'),
(319, 26, '11/2\"1.0MM', 'SP*13', '3', 0, 97.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:26:27', '2019-08-08 22:26:27'),
(320, 26, '11/2\"1.2MM', 'SP*14', '3', 0, 119, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:27:04', '2019-08-08 22:27:04'),
(321, 26, '11/2\"1.5MM', 'SP*15', '3', 0, 149, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:27:41', '2019-08-08 22:27:41'),
(322, 26, '2\"0.8MM', 'SP*16', '3', 0, 108.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:31:30', '2019-08-08 22:31:30'),
(323, 26, '2\"1.0MM', 'SP*17', '3', 0, 130, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:32:23', '2019-08-08 22:32:23'),
(324, 26, '2\"1.2MM', 'SP*18', '3', 0, 158.75, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:33:58', '2019-08-08 22:33:58'),
(325, 27, '21/2\"0.8MM', 'HP*1', '3', 0, 103.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:40:54', '2019-08-08 22:40:54'),
(326, 27, '21/2\"1.0MM', 'HP*2', '3', 0, 125, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:41:54', '2019-08-08 22:41:54'),
(327, 27, '21/2\"1.2MM', 'HP*3', '3', 0, 153.5, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:43:23', '2019-08-08 22:43:23'),
(328, 27, '21/2\"1.5MM', 'HP*4', '3', 0, 188.25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 22:44:02', '2019-08-08 22:44:02'),
(329, 29, '1/2\"0.6mm', 'RD*1(0.6)', '3', 0, 20, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-08 22:59:55', '2019-08-17 17:50:39'),
(330, 29, '1/2\"0.7MM', 'RD*1(0.7)', '3', 0, 23.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:06:53', '2019-08-08 23:06:53'),
(331, 29, '1/2\"0.8MM', 'RD*1.(0.8)', '3', 0, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:09:11', '2019-08-08 23:09:11'),
(332, 29, '1/2\"1.0MM', 'RD*1(1.0)', '3', 0, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:10:00', '2019-08-08 23:10:00'),
(333, 29, '1/2\"1.2MM', 'RD*1(1.2)', '3', 0, 33.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:10:51', '2019-08-08 23:10:51'),
(334, 29, '1/2\"1.5MM', 'RD*1(1.5)', '3', 0, 40, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:14:34', '2019-08-08 23:14:34'),
(335, 29, '5/8\"0.6MM', 'RD*2(0.6)', '3', 0, 23.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:16:43', '2019-08-08 23:16:43'),
(336, 29, '5/8\"0.7MM', 'RD*2(0.7)', '3', 0, 28.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:20:04', '2019-08-08 23:20:04'),
(337, 29, '5/8\"0.8MM', 'RD*2(0.8)', '3', 0, 36.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:22:26', '2019-08-08 23:22:26'),
(338, 29, '5/8\"1.2MM', 'RD*2(1.2)', '3', 0, 43.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:26:49', '2019-08-08 23:26:49'),
(339, 29, '5/8\"1.5MM', 'RD*2(1.5)', '3', 0, 50, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:28:23', '2019-08-08 23:28:23'),
(340, 29, '3/4\"0.6MM', 'RD*3(0.6)', '3', 0, 28.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:31:46', '2019-08-08 23:31:46'),
(341, 29, '3/4\"0.7MM', 'RD*3(0.7)', '3', 0, 31.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-08 23:39:41', '2019-08-08 23:39:41'),
(342, 29, '3/4\"*0.8mm', 'RD*3(0.8)', '3', 0, 37, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-17 17:49:15', '2019-08-17 17:53:01'),
(343, 29, '3/4\"1.0MM', 'RD*3(1.0)', '3', 0, 44, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-17 17:50:03', '2019-08-17 17:53:48'),
(344, 29, '3/4\"1.2MM', 'RD*3(1.2)', '3', 0, 50, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 17:54:55', '2019-08-17 17:54:55'),
(345, 29, '3/4\"1.5MM', 'RD*3(1.5)', '3', 0, 58.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 17:55:45', '2019-08-17 17:55:45'),
(346, 29, '1\"(0.6)MM', 'RD*4(0.6)', '3', 0, 36.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 17:57:07', '2019-08-17 17:57:07'),
(347, 29, '1\"(0.7)MM', 'RD*4(0.7)', '3', 0, 41.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 17:58:23', '2019-08-17 17:58:23'),
(348, 29, '1\"(0.8)MM', 'RD*4(0.8)', '3', 0, 46.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 17:59:39', '2019-08-17 17:59:39'),
(349, 29, '1\"(1.0)MM', 'RD*4(1.0)', '3', 0, 55, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:00:36', '2019-08-17 18:00:36'),
(350, 29, '1\"(1.2)MM', 'RD*4(1.2)', '3', 0, 66.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:01:26', '2019-08-17 18:01:26'),
(351, 29, '1\"(1.5)MM', 'RD*4(1.5)', '3', 0, 81.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:02:25', '2019-08-17 18:02:25'),
(352, 29, '11/4\"(0.6)MM', 'RD*5(0.6)', '3', 0, 43.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:05:01', '2019-08-17 18:05:01'),
(353, 29, '11/4\"(0.7)MM', 'RD*5(0.7)', '3', 0, 50, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:05:48', '2019-08-17 18:05:48'),
(354, 29, '11/4\"(0.8)MM', 'RD*5(0.8)', '3', 0, 56.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:11:24', '2019-08-17 18:11:24'),
(355, 29, '11/4\"(1.0)MM', 'RD*(1.0)', '3', 0, 70, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:12:12', '2019-08-17 18:12:12'),
(356, 29, '11/4\"(1.2)MM', 'RD*5(1.2)', '3', 0, 81.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:13:22', '2019-08-17 18:13:22'),
(357, 29, '11/4\"(1.5)MM', 'RD*(1.5)', '3', 0, 100, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:14:21', '2019-08-17 18:14:21'),
(358, 29, '11/2\"(0.6)MM', 'RD*6(0.6)', '3', 0, 51.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:15:48', '2019-08-17 18:15:48'),
(359, 29, '11/2\"(0.7)MM', 'RD*6(0.7)', '3', 0, 55, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:18:00', '2019-08-17 18:18:00'),
(360, 29, '11/2\"(0.8)MM', 'RD*6(0.8)', '3', 0, 66.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:18:59', '2019-08-17 18:18:59'),
(361, 29, '11/2\"(1.0)MM', 'RD*6(1.0)', '3', 0, 80, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:20:22', '2019-08-17 18:20:22'),
(362, 29, '11?4\"(1.2)MM', 'RD*6(1.2)', '3', 0, 98.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:23:22', '2019-08-17 18:23:22'),
(363, 29, '11/2\"(1.5)MM', 'RD*6(1.5)', '3', 0, 120, 1, 'ashikengineering@gmail.com', NULL, '2019-08-17 18:26:25', '2019-08-17 18:26:25'),
(364, 29, '2\"(0.6)mm', 'RD*7(0.6)', '3', 0, 73.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:38:05', '2019-08-20 15:38:05'),
(365, 29, '2\"(0.7)MM', 'RD*7(0.7)', '3', 0, 85, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:39:34', '2019-08-20 15:39:34'),
(366, 29, '2\"(0.8)MM', 'RD*7(0.8)', '3', 0, 96.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:41:17', '2019-08-20 15:41:17'),
(367, 29, '2\"(1.0)MM', 'RD*7(1.0)', '3', 0, 116.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:42:55', '2019-08-20 15:42:55'),
(368, 29, '2\"1.2MM', 'RD*7(1.2)', '3', 0, 14166, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:46:56', '2019-08-20 15:46:56'),
(369, 29, '2\"1.5MM', 'RD*7(1.5)', '3', 0, 170, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:48:02', '2019-08-20 15:48:02'),
(370, 29, '21/2\"0.6MM', 'RD*8(0.6)', '3', 0, 90, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:50:23', '2019-08-20 15:50:23'),
(371, 29, '21/2\"0.7MM', 'RD*8(0.7)', '3', 0, 105, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:51:48', '2019-08-20 15:51:48'),
(372, 29, '21/2\"0.8MM', 'RD*8(0.8)', '3', 0, 118.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:53:03', '2019-08-20 15:53:03'),
(373, 29, '21/2\"1.0MM', 'RD*8(1.0)', '3', 0, 141.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:54:13', '2019-08-20 15:54:13'),
(374, 29, '21/2\"1.2MM', 'RD*8(1.2)', '3', 0, 170, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:55:14', '2019-08-20 15:55:14'),
(375, 29, '21/2\"1.5MM', 'RD*8(1.5)', '3', 0, 206.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:56:26', '2019-08-20 15:56:26'),
(376, 29, '3\"0.8MM', 'RD*9(0.8)', '3', 0, 138.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 15:58:23', '2019-08-20 15:58:23'),
(377, 29, '3\"1.0MM', 'RD*9(1.0)', '3', 0, 166.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:00:41', '2019-08-20 16:00:41'),
(378, 29, '3\"1.2MM', 'RD*9(1.2)', '3', 0, 208.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:01:41', '2019-08-20 16:01:41'),
(379, 29, '3\"1.5MM', 'RD*9(1.5)', '3', 0, 250, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:02:33', '2019-08-20 16:02:33'),
(380, 29, '4\"1.0MM', 'RD*10(1.0)', '3', 0, 228.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:03:46', '2019-08-20 16:03:46'),
(381, 29, '4\"1.2MM', 'RD*10(1.2)', '3', 0, 273.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:05:08', '2019-08-20 16:05:08'),
(382, 29, '4\"1.5MM', 'RD*10(1.5)', '3', 0, 340, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:06:10', '2019-08-20 16:06:10'),
(383, 30, '3/4\"0.8MM', 'SD*1(0.8)', '3', 0, 45, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:09:51', '2019-08-20 16:09:51'),
(384, 30, '3/4\"1.0MM', 'SD*1(1.0)', '3', 0, 53.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:11:00', '2019-08-20 16:11:00'),
(385, 30, '3/4\"1.2MM', 'SD*1(1.2)', '3', 0, 63.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:12:24', '2019-08-20 16:12:24'),
(386, 30, '3/4\"1.5MM', 'SD*1(1.5)', '3', 0, 65, 1, 'ashikengineering@gmail.com', NULL, '2019-08-20 16:13:30', '2019-08-20 16:13:30'),
(387, 30, '1\"0.8m', 'SD*2(0.8)', '3', 0, 58.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:10:52', '2019-08-21 00:10:52'),
(388, 30, '1\"1.0MM', 'SD*2(1.0)', '3', 0, 71.66, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:11:52', '2019-08-21 00:11:52'),
(389, 30, '1\"1.2MM', 'SD*2(1.2)', '3', 0, 85, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:12:50', '2019-08-21 00:12:50'),
(390, 30, '1\"1.5MM', 'SD*2(1.5)', '3', 0, 103.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:14:38', '2019-08-21 00:14:38'),
(391, 30, '11/4\"1.0MM', 'SD*3(1.0)', '3', 0, 90, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:16:18', '2019-08-21 00:16:18'),
(392, 30, '11/4\"1.2MM', 'SD*3(1.2)', '3', 0, 105, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:17:32', '2019-08-21 00:17:32'),
(393, 30, '11/2\"0.8MM', 'SD*4(0.8)', '3', 0, 86.66, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-21 00:19:48', '2019-08-21 00:22:40'),
(394, 30, '11/2\"1.0MM', 'SD*4(1.0)', '3', 0, 103.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:28:02', '2019-08-21 00:28:02'),
(395, 30, '11/2\"1.2MM', 'SD*4(1.2)', '3', 0, 125, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:29:21', '2019-08-21 00:29:21'),
(396, 30, '112/\"1.5MM', 'SD*4(1.5)', '3', 0, 155, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:30:14', '2019-08-21 00:30:14'),
(397, 30, '2\"0.8MM', 'SD*5(0.8)', '3', 0, 125, 1, 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '2019-08-21 00:32:07', '2019-08-21 00:34:25'),
(398, 30, '2\"1.0MM', 'SD*5(1.0)', '3', 0, 148.33, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:35:10', '2019-08-21 00:35:10'),
(399, 30, '2\"1.2MM', 'SD*5(1.2)', '3', 0, 180, 1, 'ashikengineering@gmail.com', NULL, '2019-08-21 00:35:52', '2019-08-21 00:35:52'),
(400, 78, 'Tj katin 4\"', 'TJ4', '1', 777, 15, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:09:02', '2019-09-05 23:09:02'),
(401, 80, 'SS gosa', 'SS gosa', '1', 99, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:10:08', '2019-09-05 23:10:08'),
(402, 85, 'CEC fome', 'CEC Fome', '1', 6, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:12:14', '2019-09-05 23:12:14');
INSERT INTO `products` (`id`, `productcategory_id`, `name`, `code`, `unit`, `stock`, `price`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(403, 89, 'TJ FOME', 'TJ Fome', '1', 168, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:13:42', '2019-09-06 00:53:51'),
(404, 83, 'TJ savan', 'tj savan', '1', 37, 160, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:19:16', '2019-09-06 00:55:03'),
(405, 82, 'MS Gosa 7\"', 'MS Gosa 7\"', '1', 52, 95, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:23:52', '2019-09-05 23:23:52'),
(406, 79, 'Falap Dic.', 'Falap Dic.', '1', 318, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:29:27', '2019-09-06 00:19:21'),
(407, 81, 'Ms Gosa', 'Ms Gosa', '1', 152, 32, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:30:48', '2019-09-05 23:30:48'),
(408, 92, 'Lal SS gosa', 'Lal SS gosa', '1', 30, 25, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:39:30', '2019-09-05 23:39:30'),
(409, 91, 'Flap dic 2', 'Flap dic 2', '1', 23, 30, 1, 'ashikengineering@gmail.com', NULL, '2019-09-05 23:40:37', '2019-09-06 00:54:13'),
(410, 86, 'Bobe kapur USA  6\"', 'Bobe kapur USA  6\"', '1', 322, 160, 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:05:59', '2019-09-06 00:05:59'),
(411, 88, 'Bobe kapur 4\"', 'Bobe kapur 4', '1', 34, 70, 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:07:24', '2019-09-06 00:08:25'),
(412, 94, 'SSy katin', 'SSy katin', '1', 427, 16, 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:16:31', '2019-09-06 00:19:43'),
(413, 95, 'A46', 'A46', '1', 9, 16, 1, 'ashikengineering@gmail.com', NULL, '2019-09-06 00:18:20', '2019-09-06 00:18:20');

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
(10, 'Pipe and Box', 'Steeltech Factory', 209669, 209669, 0, 'normal', '2019-07-30', 'ashikengineering@gmail.com', NULL, '2019-07-30 23:58:07', '2019-07-30 23:58:43');

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
(13, 'Manager', '2019-07-29 06:44:44', '2019-07-29 06:44:44'),
(12, 'Accountant', '2019-07-29 06:43:08', '2019-07-29 06:43:08'),
(10, 'Salesman', '2019-04-28 20:57:27', '2019-04-28 20:57:27'),
(4, 'Owner ', '2019-07-29 06:41:10', '2019-07-29 06:41:10');

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
(899, 4, 75, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(898, 4, 74, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(897, 4, 73, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(896, 4, 72, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(895, 4, 71, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(894, 4, 70, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(893, 4, 22, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(892, 4, 21, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(891, 4, 66, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(890, 4, 65, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(889, 4, 64, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(888, 4, 63, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(887, 4, 62, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(886, 4, 61, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(885, 4, 60, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(884, 4, 59, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(883, 4, 58, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(882, 4, 57, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(881, 4, 56, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(880, 4, 55, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(879, 4, 54, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(878, 4, 53, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(877, 4, 52, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(876, 4, 51, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(875, 4, 50, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(874, 4, 49, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(873, 4, 48, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(872, 4, 47, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(871, 4, 46, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(870, 4, 45, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(869, 4, 44, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(868, 4, 43, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(867, 4, 67, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(866, 4, 42, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(865, 4, 41, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(864, 4, 40, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(863, 4, 39, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(862, 4, 38, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(861, 4, 37, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(860, 4, 36, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(859, 4, 35, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(858, 4, 34, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
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
(857, 4, 33, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(856, 4, 32, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(855, 4, 31, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(854, 4, 30, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(853, 4, 29, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(852, 4, 28, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(851, 4, 27, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(850, 4, 26, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(849, 4, 25, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(848, 4, 24, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(847, 4, 23, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(846, 4, 20, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(845, 4, 19, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(844, 4, 18, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(843, 4, 17, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(842, 4, 16, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(841, 4, 15, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(840, 4, 14, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(839, 4, 13, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(838, 4, 12, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(837, 4, 11, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(836, 4, 10, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(835, 4, 9, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(834, 4, 8, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(833, 4, 7, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(680, 5, 62, '2019-04-28 06:23:50', '2019-04-28 06:23:50'),
(681, 10, 36, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(682, 10, 37, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(683, 10, 38, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(684, 10, 39, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(685, 10, 40, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(686, 10, 42, '2019-04-28 20:58:04', '2019-04-28 20:58:04'),
(832, 4, 6, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(831, 4, 5, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(830, 4, 4, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(829, 4, 3, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(828, 4, 2, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(827, 4, 1, '2019-07-29 06:14:08', '2019-07-29 06:14:08'),
(900, 13, 34, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(901, 13, 35, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(902, 13, 37, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(903, 13, 38, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(904, 13, 66, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(905, 13, 22, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(906, 13, 70, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(907, 13, 73, '2019-07-29 14:14:33', '2019-07-29 14:14:33'),
(908, 13, 74, '2019-07-29 14:14:33', '2019-07-29 14:14:33');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `saller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT 1,
  `sales_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sales_paid` double DEFAULT NULL,
  `sales_due` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `product_id`, `quantity`, `price`, `discount`, `saller_name`, `sales_status`, `sales_date`, `created_at`, `updated_at`, `sales_paid`, `sales_due`) VALUES
(131, 404, 4, 640, 0, 'Ashik', 1, '2019-09-05', '2019-09-06 00:55:08', '2019-09-06 00:55:08', NULL, NULL),
(130, 409, 10, 300, 0, 'Ashik', 1, '2019-09-05', '2019-09-06 00:55:08', '2019-09-06 00:55:08', NULL, NULL),
(129, 403, 50, 1500, 0, 'Ashik', 1, '2019-09-05', '2019-09-06 00:55:08', '2019-09-06 00:55:08', NULL, NULL),
(128, 412, 25, 400, 0, 'Ashik', 1, '2019-09-05', '2019-09-06 00:20:25', '2019-09-06 00:20:25', NULL, NULL),
(127, 406, 10, 300, 0, 'Ashik', 1, '2019-09-05', '2019-09-06 00:20:25', '2019-09-06 00:20:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salescarts`
--

CREATE TABLE `salescarts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL DEFAULT 0,
  `saller_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sales_status` tinyint(1) NOT NULL DEFAULT 1,
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
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `last_login`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rakibul Hasan', 'rakib06', 'six.rakib@gmail.com', '$2y$10$MyhJ3n8YyFL2QL6OUZ0Iq.lJYl3gcR/WGAMZknulBpzBVZU4002oC', '2019-04-21 16:48:41', 1, 'nO9Nn5qUhjCn0Wn1VlLj2PuKPcb4GOAJTMYZVfAGHlWO3Z2qjQlnGmE3AVxm', '2019-04-20 20:57:21', '2019-04-21 10:48:41'),
(12, 'backup', 'ashik password', 'khulnait@gmail.com', '$2y$10$pQZh2ze4.MR0NRTZyaMwDu54bhqrNZszkJsPvIuuRUdcaqWXxzVfu', '2019-05-02 23:38:43', 1, 'tLt1vUqrSQLFjXwVET2jxwuvnSJ1BPht9VO1ks5aUzio5YpWw81U3XMtD9W2', '2019-05-03 02:19:23', '2019-05-03 04:38:43'),
(13, 'Md Rakibul Hasan', 'Rakib', 'six.rakib1234@gmail.com', '$2y$10$Y33WQak1lhZKEGjkcDTfYO5rq3JOee3lRKKIKKvDqAw299hflYCCW', '2019-05-02 22:29:26', 1, 'sLI2a8zBXeoIz9pSo9q3GIYaaDjCBQXDhFzT4mQH5tYSGpsGsmfGAyZtIVfZ', '2019-05-03 03:28:42', '2019-05-03 03:29:26'),
(14, 'Ashik', 'ashikengineering@gmail.com', 'ashikengineering@gmail.com', '$2y$10$pQZh2ze4.MR0NRTZyaMwDu54bhqrNZszkJsPvIuuRUdcaqWXxzVfu', '2019-09-07 18:26:21', 1, 'GEPyokJJ2MzF1WVxUVoHGYGr5F094BEbXKJ17aoU3qHCRI4nymU6Tn6ax2N4', '2019-07-29 06:26:54', '2019-09-07 23:26:21'),
(15, 'Bhuban Adhikary', 'bhuban@gmail.com', 'bhuban@gmail.com', '$2y$10$JfwvNDiIbKDUpwyzqIi8aecc7l2RATfo9NKRFBh/QlFt.Rta24Qtq', '2019-07-29 15:34:05', 0, 'hct3wK25yltpn2MbpaNO9Jum9Gpiwt6uTdgWtLmLGLHcGMk2gfCzgrSLLooC', '2019-07-29 13:57:41', '2019-07-29 20:34:05'),
(16, 'Aslam', 'aslam@gmail.com', 'aslam@gmail.com', '$2y$10$tcZtKFIDMTrCyj1cU1KtFO9Q/FheNjYux19tenuBmhUlkYW5HC9Ei', NULL, 0, NULL, '2019-07-29 14:12:51', '2019-07-29 14:12:51');

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
(13, 4, 13, '2019-05-03 03:28:42', '2019-05-03 03:28:42'),
(14, 4, 14, '2019-07-29 06:26:54', '2019-07-29 06:26:54'),
(15, 10, 15, '2019-07-29 13:57:41', '2019-07-29 13:57:41'),
(16, 13, 16, '2019-07-29 14:12:51', '2019-07-29 14:12:51');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `role_modules`
--
ALTER TABLE `role_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `role_permissions`
--
ALTER TABLE `role_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `salescarts`
--
ALTER TABLE `salescarts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
