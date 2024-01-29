-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th1 29, 2024 lúc 02:15 PM
-- Phiên bản máy phục vụ: 5.7.39
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ttech`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_super_admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'TuanDev', 'admin@gmail.com', '$2y$10$43nCdO7eVrJ57CYXpsohxOAef1MsZxLjmsr3eY6L7lCbAw06fBRBy', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(3, 'Đăng Thuận', 'icity@gmail.com', '$2y$10$Wf9gDmf9BboJzXcc/.BpK.e0L4rPnyIChLBE6K/13whIKL9YnoLhW', 2, NULL, 0, 'active', NULL, NULL, NULL, '2022-12-31 04:55:34', '2024-01-27 03:05:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `toolbar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 99, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-03-02 19:35:52'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 98, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-03-02 19:35:45'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục', NULL, 'cms_taxonomys', NULL, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2024-01-04 03:42:31'),
(53, 51, 'Quản lý sản phẩm', NULL, 'cms_products', 2, 'active', NULL, 1, 1, '2022-05-30 09:56:47', '2024-01-04 03:42:58'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký bản tin', NULL, 'call_request', 2, 'deactive', NULL, 1, 1, '2022-06-10 03:01:44', '2023-03-07 02:04:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(73, 51, 'Quản lý dự án', NULL, 'cms_resources', 0, 'deactive', NULL, 1, 1, '2022-10-08 03:23:29', '2024-01-04 03:42:38'),
(75, 51, 'Quản lý nhân sự', NULL, 'branchs', 6, 'deactive', NULL, 1, 1, '2022-12-02 10:55:27', '2024-01-04 04:18:29'),
(76, NULL, 'For DEV', 'fa fa-setting', NULL, 1000, 'active', NULL, 1, 1, '2022-12-14 03:08:17', '2022-12-14 03:08:17'),
(77, 76, 'Khai báo Module Functions', NULL, 'module_functions', 1, 'active', NULL, 1, 1, '2022-12-14 03:09:23', '2022-12-14 03:11:18'),
(78, 76, 'Khai báo Modules', NULL, 'modules', 2, 'active', NULL, 1, 1, '2022-12-14 03:10:13', '2022-12-14 03:11:50'),
(79, 76, 'Khai báo Blocks', NULL, 'blocks', 3, 'active', NULL, 1, 1, '2022-12-14 03:12:28', '2022-12-14 03:12:54'),
(80, 76, 'Khai báo tham số', NULL, 'options', 4, 'active', NULL, 1, 1, '2022-12-14 03:13:35', '2022-12-14 03:13:35'),
(81, 72, 'Quản lý đặt hàng', NULL, 'order_products', NULL, 'active', NULL, 1, 1, '2022-12-28 06:41:55', '2024-01-06 10:01:04'),
(82, 72, 'Quản lý đánh giá', NULL, 'call_review', NULL, 'deactive', NULL, 1, 1, '2023-02-03 07:52:13', '2023-03-07 02:03:25'),
(83, 51, 'Quản lý Bài viết', NULL, 'cms_posts', 4, 'active', NULL, 1, 1, '2023-03-07 01:54:04', '2024-01-04 04:18:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_percent` double(20,2) NOT NULL DEFAULT '0.00',
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"branch\",\r\n                \"logo_partner\",\r\n                \"benifit\",\r\n                \"static\" \r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2022-12-29 03:47:05'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n                 \"about_client\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2023-03-06 08:44:25'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'deactive', 1, 1, '2022-05-31 07:25:43', '2023-03-06 04:02:59'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2024-01-04 09:34:16'),
(24, 'Khối Video và hình ảnh nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n	\"style\":[\r\n		\"video\",\r\n		\"image\"\r\n	]\r\n}', 1, 6, 'deactive', 1, 1, '2022-06-01 08:38:54', '2023-03-06 04:03:11'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n                \"introduce.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2023-02-03 08:59:20'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'active', 1, 1, '2022-09-13 09:23:28', '2022-12-21 02:42:58'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n        \"layout\":[\r\n                \"today\",\r\n                \"default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2024-01-04 09:36:35'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `block_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_link_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 'Khối danh mục và sản phẩm', NULL, NULL, 'cms_product', '{\"layout\":\"default\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2021-10-12 10:29:41', '2024-01-04 09:15:31'),
(74, NULL, 'Khối hình ảnh banner đầu trang', NULL, NULL, 'banner', '{\"layout\":\"slide\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2022-03-18 17:50:28', '2024-01-04 02:52:01'),
(94, NULL, 'Khối hiển thị nội dung chính', NULL, NULL, 'main', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2022-06-02 11:24:21', '2022-12-19 09:33:10'),
(326, NULL, 'Khối banner tĩnh', NULL, NULL, 'banner', '{\"layout\":\"static\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'delete', 1, 1, '2022-12-29 03:03:07', '2023-03-06 08:05:59'),
(331, 74, '#1', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/24_Jan0f30da34dcbd96f8ef0a22590787a883 (1).webp', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-02-01 04:59:40', '2024-01-26 03:52:05'),
(332, 74, '#2', NULL, NULL, 'header', '{\"layout\":null,\"style\":null}', 'https://haycafe.vn/wp-content/uploads/2022/01/Hinh-anh-cau-thang-gia-go-dep-800x533.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-01 05:00:27', '2023-02-06 02:45:03'),
(333, NULL, 'Khối video', NULL, NULL, 'cms_resource', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:45:55', '2023-03-06 08:06:04'),
(334, 333, 'Cầu thang kính 01', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'https://www.youtube.com/embed/Z5TeoXCGoMs', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:52:00', '2023-02-04 01:43:24'),
(335, 333, 'Cầu thang kính 02', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, 'https://www.youtube.com/embed/wwJtVa_IaWs', NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:52:21', '2023-02-04 01:44:29'),
(336, 333, 'Câu thang 03', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-01 06:54:47', '2023-02-01 06:55:01'),
(337, 326, 'ĐỘI NGŨ TƯ VẤN NHIỆT TÌNH', NULL, 'Với nhiều nhân viên có kinh nghiệm lâu năm trong công việc sẽ giúp khách hàng lựa chọn những mẫu cầu thang phù hợp nhất cho ngôi nhà.', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-users', NULL, NULL, NULL, NULL, 1, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 08:32:27'),
(338, 326, 'TINH THẦN TRÁCH NHIỆM', NULL, 'Mỗi người thợ khi được giao công việc đều phải có tâm và có tầm để công trình đên tay khách hàng được hài lòng nhất', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-like', NULL, NULL, NULL, NULL, 3, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(339, 326, 'UY TÍN TẠO NÊN THƯƠNG HIỆU', NULL, 'Mục tiệu hàng đầu là giữ vững niềm tin của khách hàng để tạo nên 1 thương hiệu bền chắc và vững mạnh.', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-money', NULL, NULL, NULL, NULL, 4, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(340, 326, 'CÔNG NGHỆ MỚI HIỆN ĐẠI', 'fgs', 'Muốn làm ra những sản phẩm bền vững yếu tố máy móc quyết định rất quan trong trong việc hình thành sản phẩm đó', 'banner', '{\"layout\":null,\"style\":null}', NULL, NULL, 'icon-magnet', NULL, NULL, NULL, NULL, 2, 'delete', 1, 1, '2023-02-01 08:19:55', '2023-02-28 03:55:40'),
(341, 74, '#3', NULL, NULL, 'banner', '{\"layout\":null,\"style\":null}', '/data/cms-image/banner/24_Jan0f30da34dcbd96f8ef0a22590787a883.webp', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-02-03 02:44:08', '2024-01-26 03:50:36'),
(342, 340, 'thanh an l', 'sdfgv', NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'delete', 1, 1, '2023-02-28 03:05:27', '2023-02-28 08:32:33'),
(343, NULL, 'Danh mục sản phẩm', NULL, NULL, 'custom', '{\"layout\":\"about_us\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2023-03-06 04:06:13', '2024-01-04 03:18:33'),
(344, NULL, 'Danh mục nổi bật', NULL, NULL, 'custom', '{\"layout\":\"about_client\",\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-03-06 08:44:57', '2024-01-04 04:41:13'),
(347, NULL, 'GỢI Ý HÔM NAY', NULL, NULL, 'cms_product', '{\"layout\":\"today\",\"style\":null}', NULL, NULL, NULL, '#', NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-01-04 09:37:13', '2024-01-04 10:26:00'),
(348, NULL, 'TIN TỨC MỚI NHẤT', NULL, NULL, 'cms_post', '{\"layout\":null,\"style\":null}', NULL, NULL, NULL, '/tin-tuc', NULL, NULL, NULL, NULL, 'active', 1, 1, '2024-01-04 09:45:29', '2024-01-04 10:18:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  `name` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `is_featured`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(4, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"brief\":{\"vi\":null,\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:45:27'),
(5, NULL, 1, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:45:40'),
(6, NULL, 1, 'Pham Thuy Chi', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Chi Thuy Pham\"},\"brief\":{\"vi\":\"Th\\u01b0 k\\u00fd\",\"en\":\"Secretary\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/8.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:50:14'),
(7, NULL, 1, 'Nhất Thành', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Thanh Nhat Nguyen\"},\"brief\":{\"vi\":\"Ph\\u00f3 Gi\\u00e1m \\u0110\\u1ed1c\",\"en\":\"manager\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:49:04'),
(8, NULL, 1, 'Ngọc Nhất', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nhat Ngoc Do\"},\"brief\":{\"vi\":\"Ch\\u1ee7 t\\u1ecbch\",\"en\":\"president\"},\"facebook\":null,\"instagram\":null,\"email\":null,\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/2.jpg\"}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 06:50:03'),
(9, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 04:19:29'),
(10, NULL, 0, 'Pham Nhất Nam', NULL, NULL, NULL, NULL, NULL, NULL, '{\"name\":{\"en\":\"Nam Nhat Pham\"},\"image\":\"\\/data\\/cms-image\\/Nh\\u00e2n s\\u1ef1\\/3.jpg\",\"brief\":{\"vi\":\"Gi\\u00e1m \\u0111\\u1ed1c\",\"en\":\"Leader\"},\"facebook\":null,\"instagram\":null,\"email\":null}', 'active', 1, 1, '2023-03-10 04:19:29', '2023-03-10 04:19:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `resources_id` int(11) DEFAULT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_thumb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `count_visited` int(11) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(282, 46, NULL, 'post', 'Về chúng tôi', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<h2><b>Gi\\u1edbi thi\\u1ec7u<\\/b><\\/h2>\\r\\n\\r\\n<p>N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng l\\u00e0 Website ph\\u00e2n ph\\u1ed1i ch\\u00ednh h\\u00e3ng c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ea7u thang \\u0111\\u1eb9p, ph\\u00f9 h\\u1ee3p v\\u1edbi nhi\\u1ec1u gia \\u0111\\u00ecnh. Ch\\u00fang t\\u00f4i tin ch\\u1eafc r\\u1eb1ng t\\u00e0i s\\u1ea3n qu\\u00fd gi\\u00e1 nh\\u1ea5t c\\u1ee7a ch\\u00fang t\\u00f4i l\\u00e0 kh\\u00e1ch h\\u00e0ng. Kh\\u00e1ch h\\u00e0ng kh\\u00f4ng ch\\u1ec9 cung c\\u1ea5p cho ch\\u00fang t\\u00f4i nh\\u1eefng ph\\u1ea3n h\\u1ed3i c\\u00f3 gi\\u00e1 tr\\u1ecb v\\u1ec1 c\\u00e1c s\\u1ea3n ph\\u1ea9m c\\u1ee7a ch\\u00fang t\\u00f4i, m\\u00e0 h\\u1ecd c\\u00f2n truy\\u1ec1n c\\u1ea3m h\\u1ee9ng cho ch\\u00fang t\\u00f4i \\u0111\\u1ec3 ti\\u1ebfp t\\u1ee5c t\\u00ecm ki\\u1ebfm c\\u00e1c s\\u1ea3n ph\\u1ea9m t\\u1ed1t h\\u01a1n.<\\/p>\\r\\n\\r\\n<p>N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng v\\u1edbi c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf th\\u00f4ng minh nh\\u1eb1m t\\u1ed1i \\u01b0u h\\u00f3a ch\\u00fang cho m\\u1ee5c \\u0111\\u00edch s\\u1eed d\\u1ee5ng c\\u1ee7a con ng\\u01b0\\u1eddi nh\\u1eb1m t\\u1ea1o ra m\\u1ed9t kh\\u00f4ng gian l\\u00e0m vi\\u1ec7c an to\\u00e0n, tho\\u1ea3i m\\u00e1i v\\u00e0 hi\\u1ec7u qu\\u1ea3. Trong \\u0111\\u00f3, \\u0111\\u1ea3m b\\u1ea3o ph\\u00f9 h\\u1ee3p v\\u1edbi c\\u00e1c \\u0111\\u1eb7c \\u0111i\\u1ec3m c\\u1ee7a con ng\\u01b0\\u1eddi. \\u0110\\u00f3 ch\\u00ednh l\\u00e0 t\\u00e2m nguy\\u1ec7n m\\u00e0 ch\\u00fang t\\u00f4i mu\\u1ed1n \\u0111em \\u0111\\u1ebfn.<\\/p>\\r\\n\\r\\n<h2><b>T\\u1ea6M NH\\u00ccN<\\/b><\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/noithatnhagon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-602x400.jpg\\\" data-srcset=\\\"https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-602x400.jpg 602w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-247x164.jpg 247w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-510x339.jpg 510w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-768x511.jpg 768w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin.jpg 1000w\\\" sizes=\\\"(max-width: 602px) 100vw, 602px\\\" src=\\\"https:\\/\\/noithatnhagon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-602x400.jpg\\\" srcset=\\\"https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-602x400.jpg 602w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-247x164.jpg 247w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-510x339.jpg 510w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin-768x511.jpg 768w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/tam-nhin.jpg 1000w\\\" \\/><\\/p>\\r\\n\\r\\n<p>Tr\\u1edf th\\u00e0nh nh\\u00e0 ph\\u00e1t tri\\u1ec3n l\\u1edbn nh\\u1ea5t t\\u1ea1i Vi\\u1ec7t Nam trong l\\u0129nh v\\u1ef1c n\\u1ed9i th\\u1ea5t th\\u00f4ng minh ph\\u1ee5c v\\u1ee5 cho s\\u1ee9c kh\\u1ecfe.<\\/p>\\r\\n\\r\\n<h2><b>S\\u1ee8 M\\u1ec6NH<\\/b><\\/h2>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/noithatnhagon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-711x400.webp\\\" data-srcset=\\\"https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-711x400.webp 711w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-247x139.webp 247w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-510x287.webp 510w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-768x432.webp 768w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1.webp 1024w\\\" sizes=\\\"(max-width: 711px) 100vw, 711px\\\" src=\\\"https:\\/\\/noithatnhagon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-711x400.webp\\\" srcset=\\\"https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-711x400.webp 711w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-247x139.webp 247w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-510x287.webp 510w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1-768x432.webp 768w, https:\\/\\/noithatgon.com\\/wp-content\\/uploads\\/2022\\/10\\/home_col1_img1.webp 1024w\\\" \\/><\\/p>\\r\\n\\r\\n<p>Mang \\u0111\\u1ebfn cu\\u1ed9c s\\u1ed1ng t\\u1ed1t \\u0111\\u1eb9p h\\u01a1n cho ng\\u01b0\\u1eddi Vi\\u1ec7t th\\u00f4ng qua c\\u00e1c gi\\u1ea3i ph\\u00e1p v\\u00e0 s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t th\\u00f4ng minh.<\\/p>\\r\\n\\r\\n<h2><b>GI\\u00c1 TR\\u1eca C\\u1ed0T L\\u00d5I&nbsp;<\\/b><\\/h2>\\r\\n\\r\\n<h3><b>+ Th\\u00e2n thi\\u1ec7n<\\/b><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng kh\\u00f4ng ch\\u1ec9 mang \\u0111\\u1ebfn nh\\u1eefng s\\u1ea3n ph\\u1ea9m th\\u00e2n thi\\u1ec7n v\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng m\\u00e0 c\\u00f2n mang \\u0111\\u1ebfn b\\u1ea1n nh\\u1eefng d\\u1ecbch v\\u1ee5 tho\\u1ea3i m\\u00e1i nh\\u1ea5t b\\u1eb1ng t\\u1ea5t c\\u1ea3 c\\u00e1i t\\u00e2m.<\\/p>\\r\\n\\r\\n<h3><b>+ \\u0110\\u1ec1 cao gi\\u00e1 tr\\u1ecb con ng\\u01b0\\u1eddi<\\/b><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng t\\u00e2m nguy\\u1ec7n mang \\u0111\\u1ebfn nh\\u1eefng s\\u00e1ng t\\u1ea1o c\\u00f3 \\u00fd ngh\\u0129a l\\u00e0m t\\u0103ng th\\u00eam gi\\u00e1 tr\\u1ecb cho cu\\u1ed9c s\\u1ed1ng h\\u00e0ng ng\\u00e0y c\\u1ee7a m\\u1ed7i ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<h3><b>+ Ch\\u1ea5t l\\u01b0\\u1ee3ng<\\/b><\\/h3>\\r\\n\\r\\n<p>N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng lu\\u00f4n c\\u1ed1 g\\u1eafng nghi\\u00ean c\\u1ee9u v\\u00e0 t\\u00ecm ki\\u1ebfm nh\\u1eefng s\\u1ea3n ph\\u1ea9m ch\\u1ea5t l\\u01b0\\u1ee3ng k\\u00e8m theo d\\u1ecbch v\\u1ee5 h\\u1eadu m\\u00e3i t\\u1eadn t\\u00ecnh, mang \\u0111\\u1ebfn cho kh\\u00e1ch h\\u00e0ng s\\u1ef1 an t\\u00e2m khi s\\u1eed d\\u1ee5ng s\\u1ea3n ph\\u1ea9m.<\\/p>\\r\\n\\r\\n<h2><b>DANH M\\u1ee4C S\\u1ea2N PH\\u1ea8M<\\/b><\\/h2>\\r\\n\\r\\n<p>C\\u00e1c s\\u1ea3n ph\\u1ea9m do N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng s\\u1ea3n xu\\u1ea5t, nh\\u1eadp kh\\u1ea9u v\\u00e0 ph\\u00e2n ph\\u1ed1i \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf theo ti\\u00eau chu\\u1ea9n Ergonomics (c\\u00f4ng th\\u00e1i h\\u1ecdc) ti\\u00ean ti\\u1ebfn nh\\u1ea5t tr\\u00ean th\\u1ebf gi\\u1edbi, \\u0111\\u1ed3ng th\\u1eddi \\u0111\\u00e1p \\u1ee9ng c\\u00e1c ti\\u00eau chu\\u1ea9n d\\u00e0nh cho n\\u1ed9i th\\u1ea5t kh\\u1eaft khe li\\u00ean quan \\u0111\\u1ebfn s\\u1ee9c kh\\u1ecfe c\\u1ee7a ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng.<\\/p>\\r\\n\\r\\n<h2><b>CAM K\\u1ebeT V\\u1ec0 CH\\u1ea4T L\\u01af\\u1ee2NG D\\u1ecaCH V\\u1ee4 B\\u00c1N H\\u00c0NG<\\/b><\\/h2>\\r\\n\\r\\n<p>\\u2013 N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng cam k\\u1ebft ch\\u1ec9 b\\u00e1n h\\u00e0ng ch\\u00ednh h\\u00e3ng \\u0111\\u00fang ti\\u00eau chu\\u1ea9n ch\\u1ea5t l\\u01b0\\u1ee3ng c\\u1ee7a nh\\u00e0 s\\u1ea3n xu\\u1ea5t, kh\\u00f4ng b\\u00e1n h\\u00e0ng h\\u00e0ng nh\\u00e1i, h\\u00e0ng kh\\u00f4ng r\\u00f5 ngu\\u1ed3n g\\u1ed1c.<\\/p>\\r\\n\\r\\n<p>\\u2013 Cung c\\u1ea5p \\u0111a d\\u1ea1ng c\\u00e1c thi\\u1ebft b\\u1ecb, gi\\u1ea3i ph\\u00e1p c\\u00f4ng ngh\\u1ec7, li\\u00ean t\\u1ee5c thay \\u0111\\u1ed5i v\\u00e0 t\\u1ed1i \\u01b0u h\\u00f3a m\\u1ecdi nhu c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u00e1p \\u1ee9ng \\u0111\\u01b0\\u1ee3c nh\\u1eefng y\\u00eau c\\u1ea7u \\u0111a d\\u1ea1ng c\\u1ee7a kh\\u00e1ch h\\u00e0ng v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 c\\u1ea3 s\\u1ed1 l\\u01b0\\u1ee3ng trong th\\u1eddi gian nhanh nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p>\\u2013 \\u0110\\u1ed9i ng\\u0169 t\\u01b0 v\\u1ea5n cho kh\\u00e1ch h\\u00e0ng nhi\\u1ec7t t\\u00ecnh v\\u00e0 mi\\u1ec5n ph\\u00ed v\\u1ec1 c\\u00e1c s\\u1ea3n ph\\u1ea9m v\\u00e0 d\\u1ecbch v\\u1ee5 c\\u1ee7a ch\\u00fang t\\u00f4i.<\\/p>\\r\\n\\r\\n<p>\\u2013 M\\u1ecdi s\\u1ea3n ph\\u1ea9m c\\u00f4ng ty ch\\u00fang t\\u00f4i cung c\\u1ea5p \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c \\u0111i k\\u00e8m v\\u1edbi nhi\\u1ec1u \\u01b0u \\u0111\\u00e3i v\\u00e0 ch\\u1ebf \\u0111\\u1ed9 b\\u1ea3o h\\u00e0nh \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>\\u2013 S\\u1eb5n s\\u00e0ng ch\\u1ecbu tr\\u00e1ch nhi\\u1ec7m v\\u00e0 x\\u1eed l\\u00fd \\u0111\\u1ebfn c\\u00f9ng v\\u1edbi c\\u00e1c thi\\u1ebfu s\\u00f3t c\\u1ee7a c\\u00f4ng ty trong qu\\u00e1 tr\\u00ecnh b\\u00e1n h\\u00e0ng.<\\/p>\\r\\n\\r\\n<h4>T\\u1ea5t c\\u1ea3 nh\\u1eefng gi\\u00e1 tr\\u1ecb tr\\u00ean l\\u00e0 nh\\u1eefng g\\u00ec m\\u00e0 N\\u1ed9i th\\u1ea5t \\u0110\\u1ee9c T\\u00f9ng mu\\u1ed1n mang \\u0111\\u1ebfn cho b\\u1ea1n. Ch\\u00fang t\\u00f4i \\u0111\\u1eb7t m\\u00ecnh v\\u00e0o nh\\u1eefng g\\u00ec m\\u00e0 b\\u1ea1n mong mu\\u1ed1n, \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c s\\u1ef1 \\u0111\\u1ed3ng c\\u1ea3m c\\u1ee7a b\\u1ea1n!<\\/h4>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/Danh mục sản phẩm/1653.jpg', NULL, 0, 30, NULL, 'delete', 1, 1, '2023-02-05 21:08:40', '2023-03-10 07:07:56', 've-chung-toi'),
(381, 59, NULL, 'product', 'HP Alienware M18 R1 (2023)', '{\"price\":\"26990000\",\"price_old\":\"32990000\",\"brief\":{\"vi\":\"<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>CPU:&nbsp;<\\/strong>Intel\\u00ae Core\\u2122 i9-13900HX (36 MB cache, 24 cores, 32 threads, up to 5.60 GHz Turbo)<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>Ram:&nbsp;<\\/strong>32GB DDR5 5600MHz<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>\\u1ed4 c\\u1ee9ng:&nbsp;<\\/strong>1TB PCIe Gen4 M.2 SSD<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>M\\u00e0n h\\u00ecnh:&nbsp;<\\/strong>18\\\" FHD+ (1920 x 1200) 480Hz, 3ms, ComfortView Plus, NVIDIA G-SYNC + DDS, 100% DCI-P3, FHD IR Camera<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>Card \\u0111\\u1ed3 ho\\u1ea1:&nbsp;<\\/strong>NVIDIA\\u00ae GeForce RTX\\u2122 4080 12GB GDDR6<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>B\\u00e0n ph\\u00edm:&nbsp;<\\/strong>Ph\\u00edm th\\u01b0\\u1eddng (English US AlienFX RGB backlit (per-key) Alienware M Series keyboard)<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>T\\u00ecnh tr\\u1ea1ng:&nbsp;<\\/strong>H\\u00e0ng New, Nh\\u1eadp Kh\\u1ea9u<\\/p>\"},\"content\":{\"vi\":\"<p dir=\\\"ltr\\\"><a href=\\\"https:\\/\\/lapvip.vn\\/dell-alienware-m18-r1-gen-13th\\\" target=\\\"_blank\\\"><strong>Dell Alienware M18<\\/strong><\\/a>&nbsp;v\\u1edbi form d\\u00e1ng \\u201ch\\u1ea7m h\\u1ed1\\u201d \\u0111\\u1ea7y \\u1ea5n t\\u01b0\\u1ee3ng t\\u1eeb c\\u00e1i nh\\u00ecn \\u0111\\u1ea7u ti\\u00ean. \\u1ede phi\\u00ean b\\u1ea3n n\\u00e0y Dell \\u0111\\u00e3 h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng l\\u00e0 game th\\u1ee7 khi m\\u00e1y \\u0111\\u01b0\\u1ee3c trang b\\u1ecb b\\u1ed9 m\\u00e0n h\\u00ecnh l\\u1edbn, h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng v\\u00e0 s\\u1eafc n\\u00e9t t\\u1edbi t\\u1eebng khung h\\u00ecnh, \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u01b0\\u1ee3c n\\u00e2ng c\\u1ea5p v\\u1edbi&nbsp;<em>b\\u1ed9 x\\u1eed l\\u00fd i9 13900HX<\\/em>&nbsp;m\\u1ea1nh m\\u1ebd. V\\u1eady d\\u00e0n m\\u00e1y&nbsp;&nbsp;<em>Laptop Alienware M18 gaming<\\/em>&nbsp; n\\u00e0y c\\u00f3 \\u0111\\u00e1ng \\u0111\\u1ec3 s\\u1edf h\\u1eefu? H\\u00e3y c\\u00f9ng theo ch\\u00e2n Lapvip t\\u00ecm hi\\u1ec3u ngay sau \\u0111\\u00e2y nh\\u00e9!&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Dell&amp;nbsp; Alienware M18 chinh chi\\u1ebfn m\\u1ecdi t\\u1ef1a game d\\u1ec5 d\\u00e0ng&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-2-1681660809.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Nh\\u1eefng \\u0111i\\u1ec3m ch\\u00fa \\u00fd tr\\u01b0\\u1edbc khi r\\u01b0\\u1edbc&nbsp; Alienware m18 Gaming Laptop v\\u1ec1 nh\\u00e0<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Sau \\u0111\\u00e2y l\\u00e0 nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m c\\u0169ng nh\\u01b0 nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m m\\u00e0 con m\\u00e1y \\u0111ang s\\u1edf h\\u1eefu. H\\u00e3y d\\u00e0nh ra 5 ph\\u00fat \\u0111\\u1ec3 \\u0111\\u1ecdc h\\u1ebft s\\u1ebd gi\\u00fap b\\u1ea1n hi\\u1ec3u r\\u00f5 h\\u01a1n v\\u1ec1 si\\u00eau ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/lapvip.vn\\/laptop-dell-alienware.html\\\" target=\\\"_blank\\\"><strong>laptop Dell Alienware<\\/strong><\\/a>&nbsp;n\\u00e0y.&nbsp;<\\/p>\\r\\n\\r\\n<h3 dir=\\\"ltr\\\"><strong>\\u01afu \\u0111i\\u1ec3m c\\u1ee7a s\\u1ea3n ph\\u1ea9m Alienware m18 Gaming Laptop<\\/strong><\\/h3>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Lu\\u00f4n h\\u1ebft h\\u00e0ng sau m\\u1ed7i l\\u1ea7n xu\\u1ea5t hi\\u1ec7n, v\\u1eady m\\u1eabu m\\u00e1y \\u0111ang \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi s\\u0103n \\u0111\\u00f3n n\\u00e0y s\\u1edf h\\u1eefu cho m\\u00ecnh nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m g\\u00ec?&nbsp;<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\"><strong>Alienware m18 Gaming Laptop<\\/strong>&nbsp;b\\u1ec1 ngo\\u00e0i l\\u1ed9ng l\\u1eaby, \\u0111\\u1eadm ch\\u1ea5t chi\\u1ebfn h\\u1ea1m.<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">Hi\\u1ec7u n\\u0103ng m\\u1ea1nh m\\u1ebd v\\u00e0 \\u1ed5n \\u0111\\u1ecbnh v\\u1edbi b\\u1ea3n n\\u00e2ng c\\u1ea5p&nbsp;<em>i9 13900HX&nbsp;<\\/em><\\/li>\\r\\n\\t<li role=\\\"presentation\\\">S\\u1ee9c m\\u1ea1nh \\u0111\\u00e1ng n\\u1ec3 \\u0111\\u1ebfn t\\u1eeb h\\u00e0ng lo\\u1ea1t nh\\u1eefng linh ki\\u1ec7n ph\\u1ea7n c\\u1ee9ng chu\\u1ea9n m\\u1ef1c \\u1edf th\\u1eddi \\u0111i\\u1ec3m hi\\u1ec7n t\\u1ea1i.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3 dir=\\\"ltr\\\"><strong>Nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a s\\u1ea3n ph\\u1ea9m Alienware m18 Gaming Laptop<\\/strong><\\/h3>\\r\\n\\r\\n<p dir=\\\"ltr\\\">D\\u01b0\\u1edbi \\u0111\\u00e2y l\\u00e0 nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m m\\u00e0 m\\u00e1y t\\u00ednh x\\u00e1ch tay&nbsp;<strong>Dell Alienware M18<\\/strong>&nbsp;\\u0111ang s\\u1edf h\\u1eefu m\\u00e0 b\\u1ea1n n\\u00ean bi\\u1ebft tr\\u01b0\\u1edbc khi quy\\u1ebft \\u0111\\u1ecbnh mua\\/&nbsp;<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\">Kh\\u1ed1i l\\u01b0\\u1ee3ng l\\u1edbn, g\\u00e2y kh\\u00f3 kh\\u0103n cho vi\\u1ec7c x\\u00e1ch tay di chuy\\u1ec3n&nbsp;<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">Chi ph\\u00ed s\\u1edf h\\u1eefu kh\\u00f4ng h\\u1ec1 r\\u1ebb v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi&nbsp;<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>M18 Gaming Laptop: Tinh ch\\u1ec9nh thi\\u1ebft k\\u1ebf, \\u0111\\u1eadm ch\\u1ea5t chi\\u1ebfn h\\u1ea1m<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">H\\u1ea7m h\\u1ed1 v\\u00e0 m\\u1ea1nh m\\u1ebd l\\u00e0 nh\\u1eefng \\u0111i\\u1ec1u m\\u00e0 c\\u1ee7a d\\u00f2ng Dell ch\\u1eafc ch\\u1eafn \\u00edt khi h\\u01b0\\u1edbng t\\u1edbi nh\\u01b0ng v\\u1edbi&nbsp;<strong>Laptop Alienware m18 R1<\\/strong>&nbsp;th\\u00ec l\\u1ea1i ho\\u00e0n to\\u00e0n kh\\u00e1c. \\u0110\\u00fang nh\\u01b0 t\\u00ednh ch\\u1ea5t c\\u1ee7a m\\u1ed9t chi\\u1ebfc laptop gaming, d\\u00f2ng s\\u1ea3n ph\\u1ea9m n\\u00e0y \\u0111\\u00e3 c\\u1ef1c k\\u1ef3 thu h\\u00fat v\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng b\\u1edfi th\\u00e2n h\\u00ecnh to c\\u00f3 ph\\u1ea7n to b\\u1ea3n c\\u00f9ng ch\\u1ea5t l\\u01b0\\u1ee3ng ho\\u00e0n thi\\u1ec7n cao c\\u1ea5p. V\\u1edbi l\\u1edbp m\\u00e0u \\u0111\\u01b0\\u1ee3c bao b\\u1ecdc to\\u00e0n m\\u00e1y l\\u00e0 ch\\u1ee7 \\u0111\\u1ea1o m\\u00e0u \\u0111en, logo \\u201cng\\u01b0\\u1eddi ngo\\u00e0i h\\u00e0nh tinh\\u201d quen thu\\u1ed9c \\u0111\\u01b0\\u1ee3c g\\u1eafn m\\u1ed9t c\\u00e1ch tinh t\\u1ebf l\\u00e0m n\\u1ed5i b\\u1eadt c\\u1ee7a l\\u1edbp v\\u1ecf, t\\u1ea1o n\\u00ean v\\u1ebb \\u0111\\u1eb9p ri\\u00eang bi\\u1ec7t m\\u00e0 kh\\u00f4ng m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u n\\u00e0o c\\u00f3.&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Thi\\u1ebft k\\u1ebf b\\u1ec1n b\\u1ec9, ngo\\u1ea1i h\\u00ecnh cu\\u1ed1n h\\u00fat&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-3-1681660828.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">\\u0110\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf to\\u00e0n b\\u1ed9 ph\\u1ea7n th\\u00e2n l\\u00e0 ch\\u1ea5t li\\u1ec7u nh\\u00f4m c\\u1ee9ng c\\u00e1p, nh\\u1eefng hi\\u1ec7n t\\u01b0\\u1ee3ng th\\u01b0\\u1eddng g\\u1eb7p c\\u1ee7a m\\u1ed9t chi\\u1ebfc m\\u00e1y t\\u00ednh m\\u00e0 hay g\\u1eb7p ph\\u1ea3i l\\u00e0 hi\\u1ec7n t\\u01b0\\u1ee3ng flex hay \\u1ecdp \\u1eb9p khi nh\\u1ea5n m\\u1ea1nh tay v\\u00e0o l\\u00e0 \\u0111i\\u1ec1u \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ch\\u1ec9nh s\\u1eeda v\\u00e0 h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a tr\\u00ean &nbsp;&nbsp;<strong>Laptop Gaming Alienware m18<\\/strong>. Tuy v\\u1eady m\\u00e1y t\\u00ednh s\\u1edf h\\u1eefu cho m\\u00ecnh kh\\u1ed1i l\\u01b0\\u1ee3ng 4,04 kg v\\u00e0 k\\u00edch th\\u01b0\\u1edbc l\\u1ea7n l\\u01b0\\u1ee3t l\\u00e0 26,7 mm x 410,3 mm x 319,9 mm m\\u1ed9t con s\\u1ed1 c\\u00f3 th\\u1ec3 ch\\u1ea5p nh\\u1eadn \\u0111\\u01b0\\u1ee3c khi ph\\u1ea3i g\\u00e1nh v\\u00e1c b\\u1ed9 m\\u00e0n h\\u00ecnh l\\u00ean t\\u1edbi 18 inch. V\\u00ec v\\u1eady nh\\u1eefng b\\u1ea1n theo \\u201cch\\u1ee7 ngh\\u0129a x\\u00ea d\\u1ecbch\\u201d c\\u1ea7n c\\u00e2n nh\\u1eafc k\\u1ef9 l\\u01b0\\u1ee1ng tr\\u01b0\\u1edbc khi mua.&nbsp;<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>M\\u00e0n h\\u00ecnh ho\\u00e0n h\\u1ea3o, gi\\u1ea3i tr\\u00ed \\u201cm\\u00e3n nh\\u00e3n\\u201d<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">N\\u1ebfu b\\u1ea1n l\\u00e0 m\\u1ed9t game th\\u1ee7 chuy\\u00ean nghi\\u1ec7p th\\u01b0\\u1eddng xuy\\u00ean \\u201cchinh chi\\u1ebfn\\u201d tr\\u00ean nh\\u1eefng t\\u1ef1a game ESports, th\\u00ec vi\\u1ec7c c\\u00f3 cho m\\u00ecnh m\\u1ed9t m\\u00e0n h\\u00ecnh c\\u1ef1c k\\u1ef3 t\\u1ed1i t\\u00e2n l\\u00e0 \\u0111i\\u1ec1u ch\\u1eafc ch\\u1eafn ph\\u1ea3i c\\u00f3, \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t qua t\\u1eebng kho\\u1ea3nh kh\\u1eafc.&nbsp;<em>M18 Laptop Dell Alienware&nbsp;<\\/em>c\\u00f3 k\\u00edch th\\u01b0\\u1edbc l\\u00e0 18 inch, QHD+ (2560 x 1600), \\u0111\\u1ed9 ph\\u1ee7 m\\u00e0u 100% DCL-P3, t\\u1ea7n s\\u1ed1 qu\\u00e9t 165Hz. V\\u1edbi nh\\u1eefng linh ki\\u1ec7n c\\u1ef1c k\\u1ef3 hi\\u1ec7n \\u0111\\u1ea1i \\u0111i\\u1ec1u n\\u00e0y \\u0111\\u00e3 n\\u00e2ng c\\u1ea5p m\\u00e0n h\\u00ecnh l\\u00ean m\\u1ed9t t\\u1ea7m cao m\\u1edbi, nh\\u1eefng t\\u1ef1a game ESport kh\\u00f4ng th\\u1ec3 l\\u00e0m kh\\u00f3 v\\u1edbi si\\u00eau ph\\u1ea9m&nbsp;<strong>Alienware m18 Gaming Laptop.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"Hi\\u1ec3n th\\u1ecb ch\\u00e2n th\\u1ef1c v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng tr\\u00ean t\\u1eebng m\\u00e0n \\u1ea3nh&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-5-1681660842.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Kh\\u00f4ng ch\\u1ec9 d\\u1eebng l\\u1ea1i \\u1edf \\u0111\\u00f3 m\\u00e1y c\\u00f2n \\u0111\\u01b0\\u1ee3c trang b\\u1ecb t\\u00f9y ch\\u1ecdn m\\u00e0n h\\u00ecnh FHD+ (1920 x 1600), k\\u00e8m \\u0111\\u00f3 l\\u00e0 NVIDIA G-SYNC + DDS, \\u0111\\u1ed9 ph\\u1ee7 m\\u00e0u l\\u00e0 100% DCl-P3 - \\u0111\\u1ee7 ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ec3 chi\\u1ec1u l\\u00f2ng nh\\u1eefng v\\u1ecb kh\\u00e1ch kh\\u00f3 t\\u00ednh nh\\u1ea5t. \\u0110\\u1ebfn v\\u1edbi&nbsp;<strong>Alienware m18 Gaming Laptop<\\/strong>&nbsp;ng\\u01b0\\u1eddi d\\u00f9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c tr\\u1ea3i nghi\\u1ec7m v\\u1ec1 th\\u1ecb gi\\u00e1c v\\u00e0 m\\u00e0u s\\u1eafc ch\\u00e2n th\\u1ef1c s\\u1ed1ng \\u0111\\u1ed9ng nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Linh ki\\u1ec7n \\u201cchu\\u1ea9n m\\u1ef1c\\u201d hi\\u1ec7u n\\u0103ng \\u0111\\u1ec9nh cao&nbsp;<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\"><strong>Alienware m18 I9 Gaming<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c trang b\\u1ecb b\\u1ed9 vi Intel gen 13 m\\u1edbi nh\\u1ea5t hi\\u1ec7n nay v\\u1edbi r\\u1ea5t nhi\\u1ec1u c\\u1ea3i ti\\u1ebfn v\\u1ec1 hi\\u1ec7u n\\u0103ng cho t\\u1ed1c \\u0111\\u1ed9 x\\u1eed l\\u00fd v\\u00f4 c\\u00f9ng \\u1ea5n t\\u01b0\\u1ee3ng d\\u00f9 l\\u00e0 l\\u00e0m vi\\u1ec7c hay ch\\u01a1i game. Ng\\u01b0\\u1eddi d\\u00f9ng s\\u1ebd c\\u00f3 nh\\u1eefng s\\u1ef1 l\\u1ef1a ch\\u1ecdn t\\u00f9y \\u00fd b\\u1ed9 vi x\\u1eed l\\u00fd l\\u00e0 Core\\u2122i7 13700HX s\\u1edf h\\u1eefu 16 l\\u00f5i, 24 lu\\u1ed3ng mang t\\u1edbi xung nh\\u1ecbp t\\u1ed1i \\u0111a 5Ghz&nbsp; gi\\u00fap ng\\u01b0\\u1eddi d\\u00f9ng d\\u1ec5 d\\u00e0ng \\u201cc\\u00e2n\\u201d \\u0111\\u01b0\\u1ee3c m\\u1ecdi t\\u1ef1a game AAA \\u0111\\u00ecnh \\u0111\\u00e1m nh\\u1ea5t tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n nay nh\\u01b0 GTA 5, FIFA 4, CS:GO m\\u1ed9t c\\u00e1ch tr\\u01a1n tru v\\u00e0 m\\u01b0\\u1ee3t m\\u00e0 nh\\u1ea5t \\u1edf m\\u1ee9c Full setting.&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Hi\\u1ec7u n\\u0103ng m\\u1ea1nh m\\u1ebd c\\u00e2n \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u t\\u1ef1a game AA n\\u1eb7ng k\\u00fd&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-1-1681660857.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">\\u0110\\u00e1ng ch\\u00fa \\u00fd h\\u01a1n c\\u1ea3, \\u1edf t\\u1ed5 h\\u1ee3p ph\\u1ea7n c\\u1ee9ng bao g\\u1ed3m Core\\u2122i9 13700HX (24 l\\u00f5i),&nbsp; b\\u1ed9 \\u0111\\u1ec7m \\u0111\\u01b0\\u1ee3c t\\u00edch h\\u1ee3p s\\u0103n 36MB, b\\u1ed9 t\\u0103ng \\u00e1p l\\u00ean \\u0111\\u1ebfn 5.0GHz khi\\u1ebfn hi\\u1ec7u su\\u1ea5t gaming \\u201cv\\u01b0\\u1ee3t tr\\u1ed9i\\u201d \\u0111\\u00e1nh b\\u1ea1i m\\u1ecdi \\u0111\\u1ed1i th\\u1ee7 trong c\\u00f9ng b\\u1ea5t kh\\u00fac. kh\\u00f4ng b\\u1ea5t ng\\u1edd ng\\u1edd khi l\\u00e0 m\\u1ed9t s\\u1ea3n ph\\u1ea9m cao c\\u1ea5p v\\u1edbi h\\u00e0ng lo\\u1ea1t nh\\u1eefng linh ki\\u1ec7n ph\\u1ea7n c\\u1ee9ng \\u201cx\\u1ecbn s\\u00f2\\u201d h\\u00e0ng \\u0111\\u1ea7u \\u1edf th\\u1eddi \\u0111i\\u1ec3m hi\\u1ec7n nay, b\\u1edfi v\\u1eady khi chi\\u1ebfc nh\\u1eefng t\\u1ef1a game y\\u00eau c\\u1ea7u b\\u1ed9 x\\u1eed l\\u00fd m\\u1ea1nh t\\u1edbi \\u0111\\u00e2u th\\u00ec&nbsp; m\\u1ee9c FPS c\\u1ee7a m\\u00e1y cho ra v\\u1eabn l\\u00e0 v\\u00f4 c\\u00f9ng \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>K\\u1ebft n\\u1ed1i d\\u1ec5 d\\u00e0ng m\\u1ecdi thi\\u1ebft b\\u1ecb, \\u0111a d\\u1ea1ng c\\u00e1c c\\u1ed5ng<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Vi\\u1ec7c \\u0111\\u1ec3 ng\\u01b0\\u1eddi d\\u00f9ng c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i k\\u1ebft n\\u1ed1i th\\u00ec nh\\u00e0 ph\\u00e1t h\\u00e0nh \\u0111\\u00e3 t\\u00edch h\\u1ee3p tr\\u00ean&nbsp;<strong>Alienware m18 Gaming Dell<\\/strong>&nbsp;nh\\u1eefng c\\u1ed5ng k\\u1ebft n\\u1ed1i v\\u1eadt l\\u00fd nh\\u01b0:<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\">1 USB 3.2 Gen 1 port with PowerShare<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">3 USB 3.2 Gen 1 ports<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">2 Thunderbolt\\u2122 4 Gen 2 Type-C\\u00ae ports with DisplayPort Alt Mode\\/USB4<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 RJ45 Ethernet port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 Universal audio port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 HDMI 2.1 port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 power-adapter port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 mini-Display port<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Vi\\u1ec7c \\u0111a d\\u1ea1ng c\\u1ed5ng k\\u1ebft n\\u1ed1i tr\\u00ean&nbsp;<em>Alienware m18 Gaming Laptop<\\/em>&nbsp;th\\u00ec m\\u1ecdi ng\\u01b0\\u1eddi h\\u00e3y y\\u00ean t\\u00e2m k\\u1ebft n\\u1ed1i ngo\\u1ea1i vi v\\u00e0 truy\\u1ec1n t\\u1ea3i d\\u1eef li\\u1ec7u v\\u1edbi c\\u00e1c thi\\u1ebft b\\u1ecb nh\\u01b0 chu\\u1ed9t hay b\\u00e0n ph\\u00edm\\u2026Gi\\u00fap n\\u00e2ng cao v\\u00e0 \\u0111\\u1ea1t t\\u1ed1i \\u0111a hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Th\\u1eddi l\\u01b0\\u1ee3ng pin t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u1ed5n, kh\\u00f4ng qu\\u00e1 n\\u1ed5i tr\\u1ed9i<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Dung l\\u01b0\\u1ee3ng pin c\\u1ee7a&nbsp;<strong>M18 Alienware<\\/strong>&nbsp;l\\u00e0 97Whr. \\u0110\\u00e1ng bu\\u1ed3n l\\u00e0 th\\u1eddi l\\u01b0\\u1ee3ng s\\u1eed d\\u1ee5ng pin th\\u1ef1c t\\u1ebf ch\\u01b0a tuy\\u1ec7t v\\u1eddi l\\u1eafm. M\\u1eb7c d\\u00f9 kh\\u00f4ng s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 ch\\u01a1i game v\\u00e0 c\\u00e1c c\\u00e0i \\u0111\\u1eb7t \\u0111\\u1ec1u \\u0111\\u01b0a v\\u1ec1 m\\u1ee9c trung b\\u00ecnh. Nh\\u01b0ng chi\\u1ebfc Laptop n\\u00e0y c\\u0169ng ch\\u1ec9 tr\\u1ee5 \\u0111\\u01b0\\u1ee3c 6-7 ti\\u1ebfng \\u0111\\u1ed3ng h\\u1ed3. C\\u1ee5c s\\u1ea1c theo m\\u00e1y kh\\u00e1 n\\u1eb7ng n\\u00ean ch\\u1eafc ch\\u1eafn nhi\\u1ec1u b\\u1ea1n c\\u0169ng ph\\u1ea3i c\\u00e2n nh\\u1eafc \\u0111i\\u1ec1u n\\u00e0y.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Dung l\\u01b0\\u1ee3ng pin \\u0111\\u1ee7 d\\u00f9ng cho c\\u00f4ng vi\\u1ec7c&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-6-1681660875.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Laptop Dell&nbsp; Alienware M18 c\\u00f3 th\\u1ef1c s\\u1ef1 t\\u1ed1t kh\\u00f4ng?<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">C\\u00f3 th\\u1ec3 n\\u00f3i&nbsp;<strong>Dell&nbsp; Alienware M18<\\/strong>&nbsp;l\\u00e0 m\\u1ed9t m\\u1eabu m\\u00e1y gaming ch\\u01a1i game m\\u1eabu m\\u1ef1c hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. C\\u00f3 th\\u1ec3 c\\u00f9ng b\\u1ea1n chinh chi\\u1ebfn m\\u1ecdi t\\u1ef1a game AAA n\\u1eb7ng k\\u00fd hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. T\\u1eeb thi\\u1ebft k\\u1ebf sang tr\\u1ecdng, \\u0111\\u1ea7y \\u1ea5n t\\u01b0\\u1ee3ng cho t\\u1edbi m\\u00e0n h\\u00ecnh l\\u1edbn, h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng v\\u00e0 s\\u1eafc n\\u00e9t h\\u1ee9a h\\u1eb9n s\\u1ebd cho ng\\u01b0\\u1eddi d\\u00f9ng m\\u1ed9t tr\\u1ea3i nghi\\u1ec7m \\u0111\\u1ec9nh cao nh\\u1ea5t. Khi\\u1ebfn m\\u00e1y lu\\u00f4n gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u201cv\\u1ecb tr\\u00ed ng\\u00f4i v\\u01b0\\u01a1ng\\u201d khi \\u0111\\u1eb7t l\\u00ean b\\u00e0n c\\u00e2n v\\u1edbi nh\\u1eefng s\\u1ea3n ph\\u1ea9m c\\u00f9ng ph\\u00e2n kh\\u00fac.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Laptop Dell&amp;nbsp; Alienware M18 tr\\u1ee3 th\\u1ee7 \\u0111\\u1eafc l\\u1ef1c cho game th\\u1ee7&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-4-1681660889.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"gallery_image\":{\"1704355924987\":\"\\/data\\/cms-image\\/Lap Gaming\\/dell-alienware-m18-lapip-6-1679622163.jpg\",\"1704355925499\":\"\\/data\\/cms-image\\/Lap Gaming\\/dell-alienware-m18-r1-gen-13th-1679622998.jpg\",\"1704355925883\":\"\\/data\\/cms-image\\/Lap Gaming\\/dell-alienware-m18-lapip-2-1679622163.jpg\"}}', '/data/cms-image/Lap Gaming/lenovo-legion-5-pro-16iah7h-1661499805.jpg', NULL, 1, 2, NULL, 'active', 1, 1, '2024-01-04 08:11:53', '2024-01-29 03:26:45', 'hp-alienware-m18-r1-2023'),
(387, 1, NULL, 'post', 'Tổng hợp góc Setup bàn làm việc đẹp nhất năm 2024', '{\"brief\":{\"vi\":\"Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0 50m2 c\\u00f3 di\\u1ec7n t\\u00edch kh\\u00f4ng l\\u1edbn l\\u00e0 m\\u1ed9t b\\u00e0i to\\u00e1n kh\\u00f3 m\\u00e0 c\\u00e1c ki\\u1ebfn tr\\u00fac s\\u01b0 c\\u1ea7n gi\\u1ea3i \\u0111\\u00e1p. Thi\\u1ebft k\\u1ebf kh\\u00f4ng ch\\u1ec9 \\u0111\\u00f2i h\\u1ecfi ph\\u1ea3i \\u0111\\u00e1p \\u1ee9ng \\u0111\\u01b0\\u1ee3c s\\u1edf th\\u00edch, mong mu\\u1ed1n c\\u1ee7a kh\\u00e1ch h\\u00e0ng m\\u00e0 c\\u00f2n c\\u1ea7n t\\u1ed1i \\u01b0u h\\u00f3a \\u0111\\u01b0\\u1ee3c di\\u1ec7n t\\u00edch \\u0111\\u1ec3 \\u0111\\u1ea3m b\\u1ea3o ti\\u1ec7n nghi v\\u1ec1 c\\u00f4ng n\\u0103ng v\\u00e0 th\\u1ea9m m\\u1ef9. C\\u00e1c ki\\u1ebfn tr\\u00fac s\\u01b0 \\u0111\\u00e3 d\\u00e0nh t\\u00e2m huy\\u1ebft v\\u00e0 s\\u1ef1 s\\u00e1ng t\\u1ea1o c\\u1ee7a m\\u00ecnh \\u0111\\u1ec3 mang \\u0111\\u1ebfn cho kh\\u00e1ch h\\u00e0ng nh\\u1eefng kh\\u00f4ng gian n\\u1ed9i th\\u1ea5t h\\u00e0i l\\u00f2ng nh\\u1ea5t.\"},\"content\":{\"vi\":\"<h2>M\\u1eabu thi\\u1ebft k\\u1ebf c\\u0103n h\\u1ed9 chung c\\u01b0 50m2 Hot nh\\u1ea5t 2022<\\/h2>\\r\\n\\r\\n<p>Ph\\u00f2ng kh\\u00e1ch li\\u1ec1n b\\u1ebfp \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf d\\u1ea1ng m\\u1edf kh\\u00e1 \\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng v\\u00e0 tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn hi\\u1ec7n nay \\u1edf h\\u1ea7u h\\u1ebft phong c\\u00e1ch&nbsp;<a href=\\\"https:\\/\\/noithattugia.com\\/thiet-ke-noi-that-chung-cu\\/\\\"><strong>thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0<\\/strong><\\/a>. \\u0110\\u00e2y l\\u00e0 gi\\u1ea3i ph\\u00e1p ho\\u00e0n h\\u1ea3o t\\u1ea1o n\\u00ean s\\u1ef1 th\\u00f4ng tho\\u00e1ng, tho\\u1ea3i m\\u00e1i v\\u00e0 r\\u1ed9ng r\\u00e3i h\\u01a1n. \\u0110\\u1ec3 kh\\u00f4ng gian ph\\u00e1t huy t\\u1ed1i \\u0111a hi\\u1ec7u qu\\u1ea3, c\\u00e1c ki\\u1ebfn tr\\u00fac s\\u01b0 \\u0111\\u00e3 kh\\u00e9o l\\u00e9o \\u0111\\u01b0a \\u00e1nh s\\u00e1ng t\\u1ef1 nhi\\u00ean v\\u00e0o trong c\\u0103n h\\u1ed9.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"M\\u1eabu thi\\u1ebft k\\u1ebf c\\u0103n h\\u1ed9 chung c\\u01b0 50m2 v\\u1edbi kh\\u00f4ng gian m\\u1edf hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 \\u0111\\u1ea7y \\u0111\\u1ee7 ti\\u1ec7n nghi\\\" aria-describedby=\\\"caption-attachment-26359\\\" height=\\\"800\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1.jpg\\\" srcset=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1.jpg 1200w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1-600x400.jpg 600w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1-768x512.jpg 768w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1-510x340.jpg 510w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-chung-cu-50m2-voi-khong-gian-mo-hien-dai-va-day-du-tien-nghi-noi-that-tu-gia_1632976945-1-247x165.jpg 247w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p id=\\\"caption-attachment-26359\\\">M\\u1eabu thi\\u1ebft k\\u1ebf c\\u0103n h\\u1ed9 chung c\\u01b0 50m2 v\\u1edbi kh\\u00f4ng gian m\\u1edf hi\\u1ec7n \\u0111\\u1ea1i v\\u00e0 \\u0111\\u1ea7y \\u0111\\u1ee7 ti\\u1ec7n nghi<\\/p>\\r\\n\\r\\n<h3>Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0 50m2 \\u0111\\u1eb9p, hi\\u1ec7n \\u0111\\u1ea1i, t\\u1ef1 nhi\\u00ean<\\/h3>\\r\\n\\r\\n<p><strong>Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0 50m2&nbsp;<\\/strong>hi\\u1ec7n \\u0111\\u1ea1i, t\\u1ef1 nhi\\u00ean&nbsp;\\u0111\\u01b0\\u1ee3c \\u01b0a chu\\u1ed9ng v\\u00e0 \\u1ee9ng d\\u1ee5ng r\\u1ea5t ph\\u1ed5 bi\\u1ebfn hi\\u1ec7n nay. \\u0110\\u00fang nh\\u01b0 t\\u00ean g\\u1ecdi, xu h\\u01b0\\u1edbng thi\\u1ebft k\\u1ebf n\\u00e0y mang \\u0111\\u1ebfn kh\\u00f4ng gian s\\u1ed1ng ti\\u1ec7n nghi nh\\u1edd v\\u00e0o nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t \\u0111a n\\u0103ng, c\\u00f3 t\\u00ednh th\\u1ea9m m\\u1ef9 cao. \\u0110\\u1ec3 t\\u0103ng kh\\u00f4ng gian l\\u01b0u tr\\u1eef, ng\\u01b0\\u1eddi ta th\\u01b0\\u1eddng s\\u1eed d\\u1ee5ng: t\\u1ee7 b\\u1ebfp k\\u1ecbch tr\\u1ea7n, t\\u1ee7 qu\\u1ea7n \\u00e1o k\\u1ecbch tr\\u1ea7n\\u2026<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-noi-that-chung-cu-50m2-dep-hien-dai-va-thoai-mai-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-noi-that-chung-cu-50m2-dep-hien-dai-va-thoai-mai-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-ngu-voi-tone-mau-trang-va-xam-mat-me-dem-lai-su-thoai-mai-binh-yen-cho-gia-chu-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/ban-trang-diem-hien-dai-dat-canh-cua-so-tao-su-thu-thai-thoai-mai-va-dong-thoi-day-du-anh-sang-tu-nhien-noi-that-tu-gia_1632996135-1.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-ngu-nhe-nhang-gon-gang-va-thoai-mai-cho-be-gai-noi-that-tu-gia_1632996135.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p>Kh\\u00f4ng gian c\\u0103n h\\u1ed9 b\\u1ed1 tr\\u00ed ph\\u00f2ng kh\\u00e1ch li\\u1ec1n b\\u1ebfp li\\u00ean th\\u00f4ng v\\u1edbi nhau t\\u1ea1o s\\u1ef1 li\\u1ec1n m\\u1ea1ch, chi\\u1ec1u s\\u00e2u cho c\\u0103n nh\\u00e0. Ph\\u00f2ng ng\\u1ee7 \\u0111\\u01b0\\u1ee3c \\u1ed1p s\\u00e0n g\\u1ed7 v\\u00f4 c\\u00f9ng g\\u1ea7n g\\u0169i, sang tr\\u1ecdng.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Thi\\u1ebft k\\u1ebf c\\u0103n ph\\u00f2ng kh\\u00e1ch theo phong c\\u00e1ch hi\\u1ec7n \\u0111\\u1ea1i, sang tr\\u1ecdng v\\u00e0 tinh t\\u1ebf\\\" aria-describedby=\\\"caption-attachment-26430\\\" height=\\\"800\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135.jpg\\\" srcset=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135.jpg 1200w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135-600x400.jpg 600w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135-768x512.jpg 768w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135-510x340.jpg 510w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-can-phong-khach-theo-phong-cach-hien-dai-sang-trong-va-tinh-te-noi-that-tu-gia_1632996135-247x165.jpg 247w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p id=\\\"caption-attachment-26430\\\">Thi\\u1ebft k\\u1ebf c\\u0103n ph\\u00f2ng kh\\u00e1ch c\\u0103n h\\u1ed9 50m2 theo phong c\\u00e1ch hi\\u1ec7n \\u0111\\u1ea1i, sang tr\\u1ecdng v\\u00e0 tinh t\\u1ebf<\\/p>\\r\\n\\r\\n<p>Thi\\u1ebft k\\u1ebf m\\u1ed9t c\\u1eeda s\\u1ed5 l\\u1edbn t\\u1ea1i ph\\u00f2ng kh\\u00e1ch gi\\u00fap ng\\u00f4i nh\\u00e0 tr\\u00e0n ng\\u1eadp \\u00e1nh s\\u00e1ng v\\u00e0 n\\u0103ng l\\u01b0\\u1ee3ng t\\u1eeb thi\\u00ean nhi\\u00ean. K\\u1ec7 s\\u00e1ch \\u0111\\u01b0\\u1ee3c b\\u1ed1 tr\\u00ed ngay t\\u1ea1i ph\\u00f2ng kh\\u00e1ch v\\u1eeba trang tr\\u00ed v\\u1eeba t\\u1ea1o kh\\u00f4ng gian \\u0111a n\\u0103ng \\u0111\\u1ec3 gia \\u0111\\u00ecnh c\\u00f3 th\\u1ec3 vui ch\\u01a1i, th\\u01b0 gi\\u00e3n, \\u0111\\u1ecdc s\\u00e1ch.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"G\\u00f3c b\\u1ebfp g\\u1ecdn g\\u00e0ng, \\u0111\\u1ea7y \\u0111\\u1ee7 ti\\u1ec7n nghi v\\u1edbi thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t th\\u00f4ng minh, hi\\u1ec7n \\u0111\\u1ea1i\\\" aria-describedby=\\\"caption-attachment-26433\\\" height=\\\"800\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135.jpg\\\" srcset=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135.jpg 1200w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135-600x400.jpg 600w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135-768x512.jpg 768w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135-510x340.jpg 510w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/goc-bep-gon-gang-day-du-tien-nghi-voi-thiet-ke-noi-that-thong-minh-hien-dai-noi-that-tu-gia_1632996135-247x165.jpg 247w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p id=\\\"caption-attachment-26433\\\">G\\u00f3c b\\u1ebfp g\\u1ecdn g\\u00e0ng, \\u0111\\u1ea7y \\u0111\\u1ee7 ti\\u1ec7n nghi v\\u1edbi thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t th\\u00f4ng minh, hi\\u1ec7n \\u0111\\u1ea1i<\\/p>\\r\\n\\r\\n<p>T\\u1ee7 b\\u1ebfp ch\\u1eef I v\\u1edbi ch\\u1ea5t li\\u1ec7u g\\u1ed7 MDF ch\\u1ed1ng \\u1ea9m cao c\\u1ea5p v\\u1edbi c\\u00e1c thi\\u1ebft b\\u1ecb b\\u1ebfp hi\\u1ec7n \\u0111\\u1ea1i mang \\u0111\\u1ebfn kh\\u00f4ng gian s\\u1ed1ng \\u1ea5m c\\u00fang v\\u00e0 ti\\u1ec7n nghi gi\\u00fap mang l\\u1ea1i m\\u1ed9t cu\\u1ed9c s\\u1ed1ng gia \\u0111\\u00ecnh th\\u00eam h\\u1ea1nh ph\\u00fac.<\\/p>\\r\\n\\r\\n<h3>M\\u1eabu thi\\u1ebft k\\u1ebf c\\u0103n h\\u1ed9 chung c\\u01b0 50m2 2 ph\\u00f2ng ng\\u1ee7 \\u1ea5m c\\u00fang theo phong c\\u00e1ch hi\\u1ec7n \\u0111\\u1ea1i<\\/h3>\\r\\n\\r\\n<p>V\\u1edbi&nbsp;<strong>thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chung c\\u01b0 50m2 2 ph\\u00f2ng ng\\u1ee7,&nbsp;<\\/strong>b\\u1ea1n c\\u1ea7n \\u0111\\u1ebfn s\\u1ef1 tinh t\\u1ebf, kh\\u00e9o l\\u00e9o trong vi\\u1ec7c s\\u1eafp x\\u1ebfp v\\u00e0 b\\u1ed1 tr\\u00ed n\\u1ed9i th\\u1ea5t l\\u00e0 \\u0111\\u00e3 c\\u00f3 th\\u1ec3 mang \\u0111\\u1ebfn m\\u1ed9t c\\u0103n h\\u1ed9 ho\\u00e0n h\\u1ea3o cho gia \\u0111\\u00ecnh 2 th\\u1ebf h\\u1ec7. L\\u1ef1a ch\\u1ecdn gam m\\u00e0u trung t\\u00ednh, nh\\u1eb9 nh\\u00e0ng l\\u00e0m tone m\\u00e0u ch\\u1ee7 \\u0111\\u1ea1o t\\u1ea1o c\\u1ea3m gi\\u00e1c nh\\u1eb9 nh\\u00e0ng, th\\u01b0 th\\u00e1i cho kh\\u00f4ng gian.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-50m2-2-phong-ngu-phong-cach-hien-dai-ket-hop-voi-cay-xanh-tao-su-thoai-mai-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/mau-thiet-ke-can-ho-50m2-2-phong-ngu-phong-cach-hien-dai-ket-hop-voi-cay-xanh-tao-su-thoai-mai-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/vach-tuong-sau-tivi-su-dung-da-van-may-dep-sang-trong-phoi-hop-an-y-voi-tong-the-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/ban-an-nhe-nhang-hien-dai-va-vo-cung-am-ap-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/thiet-ke-phong-ngu-nhe-nhang-mem-mai-tao-su-thu-gian-va-thoai-mai-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/tu-quan-ao-cao-kich-tran-giup-chu-nhan-can-phong-thoai-mai-luu-tru-do-dac-va-tiet-kiem-dien-tich-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/ban-trang-diem-thiet-ke-hien-dai-duoc-bo-tri-hop-ly-va-vua-van-khoang-trong-noi-that-tu-gia_1632995775.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p>Khi thi\\u1ebft k\\u1ebf ph\\u00f2ng ng\\u1ee7, b\\u00ean c\\u1ea1nh y\\u1ebfu t\\u1ed1 k\\u00edn \\u0111\\u00e1o, ri\\u00eang t\\u01b0, c\\u1ea7n \\u0111\\u1ea3m b\\u1ea3o kh\\u00f4ng gian y\\u00ean t\\u0129nh \\u0111\\u1ec3 ngh\\u1ec9 ng\\u01a1i, th\\u01b0 gi\\u00e3n.&nbsp;Nh\\u1ea5t l\\u00e0 \\u0111\\u1ed1i v\\u1edbi ng\\u01b0\\u1eddi l\\u1edbn tu\\u1ed5i, ph\\u00f2ng ng\\u1ee7 \\u0111\\u00f2i h\\u1ecfi s\\u1ef1 \\u0111\\u01a1n gi\\u1ea3n, g\\u1ecdn g\\u00e0ng, th\\u00f4ng tho\\u00e1ng \\u0111\\u1ec3 thu\\u1eadn ti\\u1ec7n sinh ho\\u1ea1t v\\u00e0 ngh\\u1ec9 ng\\u01a1i.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"\\u0110\\u00e8n ng\\u1ee7 ngay \\u0111\\u1ea7u gi\\u01b0\\u1eddng nh\\u1eb9 nh\\u00e0ng v\\u00e0 t\\u1ea1o \\u0111i\\u1ec3m nh\\u1ea5n cho c\\u0103n ph\\u00f2ng\\\" aria-describedby=\\\"caption-attachment-26425\\\" height=\\\"800\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775.jpg\\\" srcset=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775.jpg 1200w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775-600x400.jpg 600w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775-768x512.jpg 768w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775-510x340.jpg 510w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/den-ngu-ngay-dau-giuong-nhe-nhang-va-tao-diem-nhan-cho-can-phong-noi-that-tu-gia_1632995775-247x165.jpg 247w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p id=\\\"caption-attachment-26425\\\">\\u0110\\u00e8n ng\\u1ee7 ngay \\u0111\\u1ea7u gi\\u01b0\\u1eddng nh\\u1eb9 nh\\u00e0ng v\\u00e0 t\\u1ea1o \\u0111i\\u1ec3m nh\\u1ea5n cho c\\u0103n ph\\u00f2ng<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Ph\\u00f2ng kh\\u00e1ch th\\u00f4ng tho\\u00e1ng v\\u1edbi c\\u1eeda ban c\\u00f4ng l\\u1edbn v\\u00e0 \\u0111\\u00e8n th\\u1ea3 \\u0111\\u1ed9c \\u0111\\u00e1o\\\" aria-describedby=\\\"caption-attachment-26423\\\" height=\\\"800\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775.jpg\\\" srcset=\\\"https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775.jpg 1200w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775-600x400.jpg 600w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775-768x512.jpg 768w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775-510x340.jpg 510w, https:\\/\\/noithattugia.com\\/wp-content\\/uploads\\/phong-khach-thong-thoang-voi-cua-ban-cong-lon-va-den-tha-doc-dao-noi-that-tu-gia_1632995775-247x165.jpg 247w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p id=\\\"caption-attachment-26423\\\">Ph\\u00f2ng kh\\u00e1ch th\\u00f4ng tho\\u00e1ng v\\u1edbi c\\u1eeda ban c\\u00f4ng l\\u1edbn v\\u00e0 \\u0111\\u00e8n th\\u1ea3 \\u0111\\u1ed9c \\u0111\\u00e1o<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Máy Tính PC/2744-man-hinh-gaming-duoi-4-trieu-1.jpg', NULL, 1, 18, NULL, 'active', 1, 1, '2023-02-03 01:35:34', '2024-01-27 08:26:11', '55-mau-thiet-ke-noi-that-chung-cu-50m2-dep-nhat-2023');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `resources_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(388, 1, NULL, 'post', 'TOP 4 màn hình chơi game dưới 4 triệu không thể bỏ qua đầu năm 2024', '{\"brief\":{\"vi\":null},\"content\":{\"vi\":\"<p data-sourcepos=\\\"3:3-3:309\\\"><em>V\\u1edbi s\\u1ef1 ph\\u00e1t tri\\u1ec3n c\\u1ee7a c\\u00f4ng ngh\\u1ec7 game, nhu c\\u1ea7u s\\u1eed d\\u1ee5ng&nbsp;<a href=\\\"https:\\/\\/nguyencongpc.vn\\/man-hinh-may-tinh\\\">m\\u00e0n h\\u00ecnh m\\u00e1y t\\u00ednh<\\/a>&nbsp;ch\\u01a1i game c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng c\\u00e0ng ng\\u00e0y c\\u00e0ng cao h\\u01a1n. Tuy nhi\\u00ean, kh\\u00f4ng ph\\u1ea3i ai c\\u0169ng c\\u00f3 \\u0111\\u1ee7 chi ph\\u00ed \\u0111\\u1ec3 s\\u1edf h\\u1eefu m\\u1ed9t chi\\u1ebfc m\\u00e0n h\\u00ecnh ch\\u01a1i game cao c\\u1ea5p. N\\u1ebfu b\\u1ea1n \\u0111ang t\\u00ecm ki\\u1ebfm m\\u1ed9t chi\\u1ebfc m\\u00e0n h\\u00ecnh ch\\u01a1i game ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t v\\u1edbi m\\u1ee9c gi\\u00e1 d\\u01b0\\u1edbi 4 tri\\u1ec7u \\u0111\\u1ed3ng, th\\u00ec \\u0111\\u00e2y s\\u1ebd l\\u00e0 b\\u00e0i vi\\u1ebft d\\u00e0nh cho b\\u1ea1n.<\\/em><\\/p>\\r\\n\\r\\n<p data-sourcepos=\\\"3:3-3:309\\\"><em>Trong b\\u00e0i vi\\u1ebft n\\u00e0y, ch\\u00fang ta s\\u1ebd c\\u00f9ng t\\u00ecm hi\\u1ec3u TOP 4 m\\u00e0n h\\u00ecnh ch\\u01a1i game d\\u01b0\\u1edbi 4 tri\\u1ec7u \\u0111\\u1ed3ng kh\\u00f4ng th\\u1ec3 b\\u1ecf qua \\u0111\\u1ea7u n\\u0103m 2024 t\\u1ea1i Nguy\\u1ec5n C\\u00f4ng PC. Nh\\u1eefng chi\\u1ebfc m\\u00e0n h\\u00ecnh n\\u00e0y \\u0111\\u1ec1u c\\u00f3 nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m n\\u1ed5i b\\u1eadt v\\u1ec1 ch\\u1ea5t l\\u01b0\\u1ee3ng hi\\u1ec3n th\\u1ecb, t\\u1ed1c \\u0111\\u1ed9 ph\\u1ea3n h\\u1ed3i v\\u00e0 gi\\u00e1 c\\u1ea3, ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u c\\u1ee7a nhi\\u1ec1u \\u0111\\u1ed1i t\\u01b0\\u1ee3ng ng\\u01b0\\u1eddi d\\u00f9ng t\\u1ea1i th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam.<\\/em><\\/p>\\r\\n\\r\\n<p data-sourcepos=\\\"3:3-3:309\\\">&nbsp;<\\/p>\\r\\n\\r\\n<h2 id=\\\"man-hinh-vsp-v2205h-2145-inch-fhd-ips-75hz-5ms\\\">M\\u00e0n H\\u00ecnh VSP V2205H 21.45 Inch \\/FHD\\/ IPS\\/ 75Hz\\/ 5ms<\\/h2>\\r\\n\\r\\n<p><a href=\\\"https:\\/\\/nguyencongpc.vn\\/man-hinh-vsp-v2205h-2145-inch-fhd-ips-75hz-5ms\\\">M\\u00e0n h\\u00ecnh VSP V2205H<\\/a>&nbsp;l\\u00e0 m\\u1ed9t gi\\u1ea3i ph\\u00e1p hi\\u1ec7u qu\\u1ea3 v\\u1edbi gi\\u00e1 tr\\u1ecb kh\\u00f4ng th\\u1ec3 tin \\u0111\\u01b0\\u1ee3c cho c\\u00e1c game th\\u1ee7 b\\u00ecnh d\\u00e2n. V\\u1edbi \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i Full HD, m\\u1ee9c t\\u1ea7n s\\u1ed1 l\\u00e0m m\\u1edbi 75Hz, v\\u00e0 kh\\u1ea3 n\\u0103ng hi\\u1ec3n th\\u1ecb m\\u00e0u s\\u1eafc ch\\u00e2n th\\u1ef1c, VSP V2205H kh\\u00f4ng ch\\u1ec9 mang \\u0111\\u1ebfn tr\\u1ea3i nghi\\u1ec7m ch\\u01a1i game tuy\\u1ec7t v\\u1eddi m\\u00e0 c\\u00f2n \\u0111\\u1ea3m b\\u1ea3o ti\\u1ebft ki\\u1ec7m ng\\u00e2n s\\u00e1ch.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/nguyencongpc.vn\\/media\\/news\\/2001_man-hinh-gaming-duoi-4-trieu-2.jpg\\\" style=\\\"height: 204px; width: 400px;\\\" \\/><\\/p>\\r\\n\\r\\n<p>V\\u1edbi k\\u00edch th\\u01b0\\u1edbc m\\u00e0n h\\u00ecnh l\\u00fd t\\u01b0\\u1edfng, ng\\u01b0\\u1eddi ch\\u01a1i c\\u00f3 th\\u1ec3 \\u0111\\u1eafm ch\\u00ecm trong th\\u1ebf gi\\u1edbi game m\\u00e0 kh\\u00f4ng ph\\u1ea3i lo l\\u1eafng v\\u1ec1 hi\\u1ec7u su\\u1ea5t h\\u00ecnh \\u1ea3nh. Thi\\u1ebft k\\u1ebf m\\u1ecfng nh\\u1eb9 v\\u00e0 kh\\u1ea3 n\\u0103ng \\u0111i\\u1ec1u ch\\u1ec9nh linh ho\\u1ea1t gi\\u00fap t\\u1ed1i \\u01b0u h\\u00f3a kh\\u00f4ng gian l\\u00e0m vi\\u1ec7c.<\\/p>\\r\\n\\r\\n<p>V\\u1edbi m\\u1ee9c gi\\u00e1 ph\\u00f9 h\\u1ee3p, m\\u00e0n h\\u00ecnh VSP V2205H l\\u00e0 s\\u1ef1 l\\u1ef1a ch\\u1ecdn th\\u00f4ng minh cho nh\\u1eefng ng\\u01b0\\u1eddi mu\\u1ed1n tr\\u1ea3i nghi\\u1ec7m game ch\\u1ea5t l\\u01b0\\u1ee3ng m\\u00e0 kh\\u00f4ng l\\u00e0m r\\u01a1i v\\u00e0o t\\u00ecnh tr\\u1ea1ng c\\u0103ng th\\u1eb3ng v\\u1ec1 t\\u00e0i ch\\u00ednh.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Máy Tính PC/2744-man-hinh-gaming-duoi-4-trieu-1.jpg', NULL, 1, 17, NULL, 'active', 1, 1, '2023-02-03 01:37:14', '2024-01-27 08:21:51', 'top-4-man-hinh-choi-game-duoi-4-trieu-khong-the-bo-qua-dau-nam-2024'),
(389, 1, NULL, 'post', 'TOP 5 bộ máy tính văn phòng Core i5 chất lượng đáng mua nhất 2024', '{\"brief\":{\"vi\":\"Trong b\\u00e0i vi\\u1ebft n\\u00e0y, ch\\u00fang ta s\\u1ebd kh\\u00e1m ph\\u00e1 \\\"Top 5 b\\u1ed9 m\\u00e1y t\\u00ednh v\\u0103n ph\\u00f2ng Core i5 ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u00e1ng mua nh\\u1ea5t 2024\\\" t\\u1ea1i TTECH PC, \\u0111\\u1ec3 gi\\u00fap b\\u1ea1n c\\u00f3 c\\u00e1i nh\\u00ecn t\\u1ed5ng quan v\\u00e0 \\u0111\\u01b0a ra quy\\u1ebft \\u0111\\u1ecbnh \\u0111\\u00fang \\u0111\\u1eafn khi l\\u1ef1a ch\\u1ecdn thi\\u1ebft b\\u1ecb cho c\\u00f4ng vi\\u1ec7c h\\u00e0ng ng\\u00e0y.\"},\"content\":{\"vi\":\"<p><em>Trong th\\u1ebf gi\\u1edbi c\\u00f4ng ngh\\u1ec7 ng\\u00e0y nay, s\\u1ef1 ph\\u00e1t tri\\u1ec3n kh\\u00f4ng ng\\u1eebng c\\u1ee7a m\\u00e1y t\\u00ednh v\\u0103n ph\\u00f2ng \\u0111\\u1eb7t ra nhi\\u1ec1u l\\u1ef1a ch\\u1ecdn cho ng\\u01b0\\u1eddi d\\u00f9ng. V\\u1edbi nhu c\\u1ea7u s\\u1eed d\\u1ee5ng m\\u1ea1nh m\\u1ebd v\\u00e0 hi\\u1ec7u su\\u1ea5t \\u1ed5n \\u0111\\u1ecbnh, c\\u00e1c b\\u1ed9 m\\u00e1y t\\u00ednh v\\u0103n ph\\u00f2ng s\\u1eed d\\u1ee5ng vi x\\u1eed l\\u00fd Core i5 tr\\u1edf n\\u00ean ng\\u00e0y c\\u00e0ng ph\\u1ed5 bi\\u1ebfn.<\\/em><\\/p>\\r\\n\\r\\n<p><em>Trong b\\u00e0i vi\\u1ebft n\\u00e0y, ch\\u00fang ta s\\u1ebd kh\\u00e1m ph\\u00e1 \\\"Top 5 b\\u1ed9 m\\u00e1y t\\u00ednh v\\u0103n ph\\u00f2ng Core i5 ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u00e1ng mua nh\\u1ea5t 2024\\\" t\\u1ea1i Nguy\\u1ec5n C\\u00f4ng PC, \\u0111\\u1ec3 gi\\u00fap b\\u1ea1n c\\u00f3 c\\u00e1i nh\\u00ecn t\\u1ed5ng quan v\\u00e0 \\u0111\\u01b0a ra quy\\u1ebft \\u0111\\u1ecbnh \\u0111\\u00fang \\u0111\\u1eafn khi l\\u1ef1a ch\\u1ecdn thi\\u1ebft b\\u1ecb cho c\\u00f4ng vi\\u1ec7c h\\u00e0ng ng\\u00e0y.<\\/em><\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/nguyencongpc.vn\\/media\\/news\\/1701_top-pc-van-phong-core-i5-2024-1.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h3 id=\\\"tai-sao-nen-chon-cac-bo-pc-chay-cpu-core-i5-de-lam-viec-van-phong\\\"><strong>T\\u1ea1i sao n\\u00ean ch\\u1ecdn c\\u00e1c b\\u1ed9 PC ch\\u1ea1y CPU Core i5 \\u0111\\u1ec3 l\\u00e0m vi\\u1ec7c v\\u0103n ph\\u00f2ng?<\\/strong><\\/h3>\\r\\n\\r\\n<p>Vi\\u1ec7c&nbsp;<a href=\\\"https:\\/\\/nguyencongpc.vn\\/buildpc\\\">build&nbsp;PC<\\/a>&nbsp;ch\\u1ea1y CPU Core i5 cho c\\u00f4ng vi\\u1ec7c v\\u0103n ph\\u00f2ng mang \\u0111\\u1ebfn nhi\\u1ec1u l\\u1ee3i \\u00edch \\u0111\\u00e1ng k\\u1ec3. Core i5 kh\\u00f4ng ch\\u1ec9 \\u0111\\u1ea3m b\\u1ea3o hi\\u1ec7u su\\u1ea5t x\\u1eed l\\u00fd m\\u1ea1nh m\\u1ebd m\\u00e0 c\\u00f2n gi\\u1eef cho m\\u00e1y t\\u00ednh \\u1ed5n \\u0111\\u1ecbnh v\\u00e0 linh ho\\u1ea1t trong qu\\u00e1 tr\\u00ecnh th\\u1ef1c hi\\u1ec7n c\\u00e1c c\\u00f4ng vi\\u1ec7c v\\u0103n ph\\u00f2ng h\\u00e0ng ng\\u00e0y. V\\u1edbi kh\\u1ea3 n\\u0103ng x\\u1eed l\\u00fd \\u0111a nhi\\u1ec7m t\\u1ed1t, Core i5 cho ph\\u00e9p m\\u1edf nhi\\u1ec1u \\u1ee9ng d\\u1ee5ng c\\u00f9ng l\\u00fac m\\u00e0 kh\\u00f4ng g\\u1eb7p tr\\u1edf ng\\u1ea1i, t\\u0103ng c\\u01b0\\u1eddng hi\\u1ec7u qu\\u1ea3 l\\u00e0m vi\\u1ec7c.<\\/p>\\r\\n\\r\\n<p><img src=\\\"https:\\/\\/nguyencongpc.vn\\/media\\/news\\/1701_top-pc-van-phong-core-i5-2024-2.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 960.5px; left: 1642.3px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 921.5px; left: 1642.3px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 957px; left: 1340.64px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/Máy Tính PC/2744-man-hinh-gaming-duoi-4-trieu-1.jpg', NULL, 1, 34, NULL, 'active', 1, 1, '2023-02-03 01:39:10', '2024-01-27 08:26:30', 'top-5-bo-may-tinh-van-phong-core-i5-chat-luong-dang-mua-2024'),
(390, 81, NULL, 'product', 'Case máy tính TP1 – chạy phần mềm Autocad', '{\"price\":\"8500000\",\"price_old\":\"9000000\",\"brief\":{\"vi\":\"<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>CPU:&nbsp;<\\/strong>Intel\\u00ae Core\\u2122 i9-13900HX (36 MB cache, 24 cores, 32 threads, up to 5.60 GHz Turbo)<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>Ram:&nbsp;<\\/strong>32GB DDR5 5600MHz<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>\\u1ed4 c\\u1ee9ng:&nbsp;<\\/strong>1TB PCIe Gen4 M.2 SSD<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>M\\u00e0n h\\u00ecnh:&nbsp;<\\/strong>18\\\" FHD+ (1920 x 1200) 480Hz, 3ms, ComfortView Plus, NVIDIA G-SYNC + DDS, 100% DCI-P3, FHD IR Camera<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>Card \\u0111\\u1ed3 ho\\u1ea1:&nbsp;<\\/strong>NVIDIA\\u00ae GeForce RTX\\u2122 4080 12GB GDDR6<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>B\\u00e0n ph\\u00edm:&nbsp;<\\/strong>Ph\\u00edm th\\u01b0\\u1eddng (English US AlienFX RGB backlit (per-key) Alienware M Series keyboard)<\\/p>\\r\\n\\r\\n<p><img alt=\\\"xxx\\\" src=\\\"https:\\/\\/lapvip.vn\\/html-viettech\\/images\\/iconproductinfo.png\\\" \\/>&nbsp;<strong>T\\u00ecnh tr\\u1ea1ng:&nbsp;<\\/strong>H\\u00e0ng New, Nh\\u1eadp Kh\\u1ea9u<\\/p>\"},\"content\":{\"vi\":\"<p dir=\\\"ltr\\\"><a href=\\\"https:\\/\\/lapvip.vn\\/dell-alienware-m18-r1-gen-13th\\\" target=\\\"_blank\\\"><strong>Dell Alienware M18<\\/strong><\\/a>&nbsp;v\\u1edbi form d\\u00e1ng \\u201ch\\u1ea7m h\\u1ed1\\u201d \\u0111\\u1ea7y \\u1ea5n t\\u01b0\\u1ee3ng t\\u1eeb c\\u00e1i nh\\u00ecn \\u0111\\u1ea7u ti\\u00ean. \\u1ede phi\\u00ean b\\u1ea3n n\\u00e0y Dell \\u0111\\u00e3 h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng l\\u00e0 game th\\u1ee7 khi m\\u00e1y \\u0111\\u01b0\\u1ee3c trang b\\u1ecb b\\u1ed9 m\\u00e0n h\\u00ecnh l\\u1edbn, h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng v\\u00e0 s\\u1eafc n\\u00e9t t\\u1edbi t\\u1eebng khung h\\u00ecnh, \\u0111\\u1eb7c bi\\u1ec7t \\u0111\\u01b0\\u1ee3c n\\u00e2ng c\\u1ea5p v\\u1edbi&nbsp;<em>b\\u1ed9 x\\u1eed l\\u00fd i9 13900HX<\\/em>&nbsp;m\\u1ea1nh m\\u1ebd. V\\u1eady d\\u00e0n m\\u00e1y&nbsp;&nbsp;<em>Laptop Alienware M18 gaming<\\/em>&nbsp; n\\u00e0y c\\u00f3 \\u0111\\u00e1ng \\u0111\\u1ec3 s\\u1edf h\\u1eefu? H\\u00e3y c\\u00f9ng theo ch\\u00e2n Lapvip t\\u00ecm hi\\u1ec3u ngay sau \\u0111\\u00e2y nh\\u00e9!&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Dell&amp;nbsp; Alienware M18 chinh chi\\u1ebfn m\\u1ecdi t\\u1ef1a game d\\u1ec5 d\\u00e0ng&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-2-1681660809.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Nh\\u1eefng \\u0111i\\u1ec3m ch\\u00fa \\u00fd tr\\u01b0\\u1edbc khi r\\u01b0\\u1edbc&nbsp; Alienware m18 Gaming Laptop v\\u1ec1 nh\\u00e0<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Sau \\u0111\\u00e2y l\\u00e0 nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m c\\u0169ng nh\\u01b0 nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m m\\u00e0 con m\\u00e1y \\u0111ang s\\u1edf h\\u1eefu. H\\u00e3y d\\u00e0nh ra 5 ph\\u00fat \\u0111\\u1ec3 \\u0111\\u1ecdc h\\u1ebft s\\u1ebd gi\\u00fap b\\u1ea1n hi\\u1ec3u r\\u00f5 h\\u01a1n v\\u1ec1 si\\u00eau ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/lapvip.vn\\/laptop-dell-alienware.html\\\" target=\\\"_blank\\\"><strong>laptop Dell Alienware<\\/strong><\\/a>&nbsp;n\\u00e0y.&nbsp;<\\/p>\\r\\n\\r\\n<h3 dir=\\\"ltr\\\"><strong>\\u01afu \\u0111i\\u1ec3m c\\u1ee7a s\\u1ea3n ph\\u1ea9m Alienware m18 Gaming Laptop<\\/strong><\\/h3>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Lu\\u00f4n h\\u1ebft h\\u00e0ng sau m\\u1ed7i l\\u1ea7n xu\\u1ea5t hi\\u1ec7n, v\\u1eady m\\u1eabu m\\u00e1y \\u0111ang \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi s\\u0103n \\u0111\\u00f3n n\\u00e0y s\\u1edf h\\u1eefu cho m\\u00ecnh nh\\u1eefng \\u01b0u \\u0111i\\u1ec3m g\\u00ec?&nbsp;<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\"><strong>Alienware m18 Gaming Laptop<\\/strong>&nbsp;b\\u1ec1 ngo\\u00e0i l\\u1ed9ng l\\u1eaby, \\u0111\\u1eadm ch\\u1ea5t chi\\u1ebfn h\\u1ea1m.<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">Hi\\u1ec7u n\\u0103ng m\\u1ea1nh m\\u1ebd v\\u00e0 \\u1ed5n \\u0111\\u1ecbnh v\\u1edbi b\\u1ea3n n\\u00e2ng c\\u1ea5p&nbsp;<em>i9 13900HX&nbsp;<\\/em><\\/li>\\r\\n\\t<li role=\\\"presentation\\\">S\\u1ee9c m\\u1ea1nh \\u0111\\u00e1ng n\\u1ec3 \\u0111\\u1ebfn t\\u1eeb h\\u00e0ng lo\\u1ea1t nh\\u1eefng linh ki\\u1ec7n ph\\u1ea7n c\\u1ee9ng chu\\u1ea9n m\\u1ef1c \\u1edf th\\u1eddi \\u0111i\\u1ec3m hi\\u1ec7n t\\u1ea1i.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h3 dir=\\\"ltr\\\"><strong>Nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a s\\u1ea3n ph\\u1ea9m Alienware m18 Gaming Laptop<\\/strong><\\/h3>\\r\\n\\r\\n<p dir=\\\"ltr\\\">D\\u01b0\\u1edbi \\u0111\\u00e2y l\\u00e0 nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m m\\u00e0 m\\u00e1y t\\u00ednh x\\u00e1ch tay&nbsp;<strong>Dell Alienware M18<\\/strong>&nbsp;\\u0111ang s\\u1edf h\\u1eefu m\\u00e0 b\\u1ea1n n\\u00ean bi\\u1ebft tr\\u01b0\\u1edbc khi quy\\u1ebft \\u0111\\u1ecbnh mua\\/&nbsp;<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\">Kh\\u1ed1i l\\u01b0\\u1ee3ng l\\u1edbn, g\\u00e2y kh\\u00f3 kh\\u0103n cho vi\\u1ec7c x\\u00e1ch tay di chuy\\u1ec3n&nbsp;<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">Chi ph\\u00ed s\\u1edf h\\u1eefu kh\\u00f4ng h\\u1ec1 r\\u1ebb v\\u1edbi nhi\\u1ec1u ng\\u01b0\\u1eddi&nbsp;<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>M18 Gaming Laptop: Tinh ch\\u1ec9nh thi\\u1ebft k\\u1ebf, \\u0111\\u1eadm ch\\u1ea5t chi\\u1ebfn h\\u1ea1m<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">H\\u1ea7m h\\u1ed1 v\\u00e0 m\\u1ea1nh m\\u1ebd l\\u00e0 nh\\u1eefng \\u0111i\\u1ec1u m\\u00e0 c\\u1ee7a d\\u00f2ng Dell ch\\u1eafc ch\\u1eafn \\u00edt khi h\\u01b0\\u1edbng t\\u1edbi nh\\u01b0ng v\\u1edbi&nbsp;<strong>Laptop Alienware m18 R1<\\/strong>&nbsp;th\\u00ec l\\u1ea1i ho\\u00e0n to\\u00e0n kh\\u00e1c. \\u0110\\u00fang nh\\u01b0 t\\u00ednh ch\\u1ea5t c\\u1ee7a m\\u1ed9t chi\\u1ebfc laptop gaming, d\\u00f2ng s\\u1ea3n ph\\u1ea9m n\\u00e0y \\u0111\\u00e3 c\\u1ef1c k\\u1ef3 thu h\\u00fat v\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng b\\u1edfi th\\u00e2n h\\u00ecnh to c\\u00f3 ph\\u1ea7n to b\\u1ea3n c\\u00f9ng ch\\u1ea5t l\\u01b0\\u1ee3ng ho\\u00e0n thi\\u1ec7n cao c\\u1ea5p. V\\u1edbi l\\u1edbp m\\u00e0u \\u0111\\u01b0\\u1ee3c bao b\\u1ecdc to\\u00e0n m\\u00e1y l\\u00e0 ch\\u1ee7 \\u0111\\u1ea1o m\\u00e0u \\u0111en, logo \\u201cng\\u01b0\\u1eddi ngo\\u00e0i h\\u00e0nh tinh\\u201d quen thu\\u1ed9c \\u0111\\u01b0\\u1ee3c g\\u1eafn m\\u1ed9t c\\u00e1ch tinh t\\u1ebf l\\u00e0m n\\u1ed5i b\\u1eadt c\\u1ee7a l\\u1edbp v\\u1ecf, t\\u1ea1o n\\u00ean v\\u1ebb \\u0111\\u1eb9p ri\\u00eang bi\\u1ec7t m\\u00e0 kh\\u00f4ng m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u n\\u00e0o c\\u00f3.&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Thi\\u1ebft k\\u1ebf b\\u1ec1n b\\u1ec9, ngo\\u1ea1i h\\u00ecnh cu\\u1ed1n h\\u00fat&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-3-1681660828.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">\\u0110\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf to\\u00e0n b\\u1ed9 ph\\u1ea7n th\\u00e2n l\\u00e0 ch\\u1ea5t li\\u1ec7u nh\\u00f4m c\\u1ee9ng c\\u00e1p, nh\\u1eefng hi\\u1ec7n t\\u01b0\\u1ee3ng th\\u01b0\\u1eddng g\\u1eb7p c\\u1ee7a m\\u1ed9t chi\\u1ebfc m\\u00e1y t\\u00ednh m\\u00e0 hay g\\u1eb7p ph\\u1ea3i l\\u00e0 hi\\u1ec7n t\\u01b0\\u1ee3ng flex hay \\u1ecdp \\u1eb9p khi nh\\u1ea5n m\\u1ea1nh tay v\\u00e0o l\\u00e0 \\u0111i\\u1ec1u \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c ch\\u1ec9nh s\\u1eeda v\\u00e0 h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a tr\\u00ean &nbsp;&nbsp;<strong>Laptop Gaming Alienware m18<\\/strong>. Tuy v\\u1eady m\\u00e1y t\\u00ednh s\\u1edf h\\u1eefu cho m\\u00ecnh kh\\u1ed1i l\\u01b0\\u1ee3ng 4,04 kg v\\u00e0 k\\u00edch th\\u01b0\\u1edbc l\\u1ea7n l\\u01b0\\u1ee3t l\\u00e0 26,7 mm x 410,3 mm x 319,9 mm m\\u1ed9t con s\\u1ed1 c\\u00f3 th\\u1ec3 ch\\u1ea5p nh\\u1eadn \\u0111\\u01b0\\u1ee3c khi ph\\u1ea3i g\\u00e1nh v\\u00e1c b\\u1ed9 m\\u00e0n h\\u00ecnh l\\u00ean t\\u1edbi 18 inch. V\\u00ec v\\u1eady nh\\u1eefng b\\u1ea1n theo \\u201cch\\u1ee7 ngh\\u0129a x\\u00ea d\\u1ecbch\\u201d c\\u1ea7n c\\u00e2n nh\\u1eafc k\\u1ef9 l\\u01b0\\u1ee1ng tr\\u01b0\\u1edbc khi mua.&nbsp;<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>M\\u00e0n h\\u00ecnh ho\\u00e0n h\\u1ea3o, gi\\u1ea3i tr\\u00ed \\u201cm\\u00e3n nh\\u00e3n\\u201d<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">N\\u1ebfu b\\u1ea1n l\\u00e0 m\\u1ed9t game th\\u1ee7 chuy\\u00ean nghi\\u1ec7p th\\u01b0\\u1eddng xuy\\u00ean \\u201cchinh chi\\u1ebfn\\u201d tr\\u00ean nh\\u1eefng t\\u1ef1a game ESports, th\\u00ec vi\\u1ec7c c\\u00f3 cho m\\u00ecnh m\\u1ed9t m\\u00e0n h\\u00ecnh c\\u1ef1c k\\u1ef3 t\\u1ed1i t\\u00e2n l\\u00e0 \\u0111i\\u1ec1u ch\\u1eafc ch\\u1eafn ph\\u1ea3i c\\u00f3, \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c nh\\u1eefng tr\\u1ea3i nghi\\u1ec7m t\\u1ed1t nh\\u1ea5t qua t\\u1eebng kho\\u1ea3nh kh\\u1eafc.&nbsp;<em>M18 Laptop Dell Alienware&nbsp;<\\/em>c\\u00f3 k\\u00edch th\\u01b0\\u1edbc l\\u00e0 18 inch, QHD+ (2560 x 1600), \\u0111\\u1ed9 ph\\u1ee7 m\\u00e0u 100% DCL-P3, t\\u1ea7n s\\u1ed1 qu\\u00e9t 165Hz. V\\u1edbi nh\\u1eefng linh ki\\u1ec7n c\\u1ef1c k\\u1ef3 hi\\u1ec7n \\u0111\\u1ea1i \\u0111i\\u1ec1u n\\u00e0y \\u0111\\u00e3 n\\u00e2ng c\\u1ea5p m\\u00e0n h\\u00ecnh l\\u00ean m\\u1ed9t t\\u1ea7m cao m\\u1edbi, nh\\u1eefng t\\u1ef1a game ESport kh\\u00f4ng th\\u1ec3 l\\u00e0m kh\\u00f3 v\\u1edbi si\\u00eau ph\\u1ea9m&nbsp;<strong>Alienware m18 Gaming Laptop.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"Hi\\u1ec3n th\\u1ecb ch\\u00e2n th\\u1ef1c v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng tr\\u00ean t\\u1eebng m\\u00e0n \\u1ea3nh&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-5-1681660842.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Kh\\u00f4ng ch\\u1ec9 d\\u1eebng l\\u1ea1i \\u1edf \\u0111\\u00f3 m\\u00e1y c\\u00f2n \\u0111\\u01b0\\u1ee3c trang b\\u1ecb t\\u00f9y ch\\u1ecdn m\\u00e0n h\\u00ecnh FHD+ (1920 x 1600), k\\u00e8m \\u0111\\u00f3 l\\u00e0 NVIDIA G-SYNC + DDS, \\u0111\\u1ed9 ph\\u1ee7 m\\u00e0u l\\u00e0 100% DCl-P3 - \\u0111\\u1ee7 ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ec3 chi\\u1ec1u l\\u00f2ng nh\\u1eefng v\\u1ecb kh\\u00e1ch kh\\u00f3 t\\u00ednh nh\\u1ea5t. \\u0110\\u1ebfn v\\u1edbi&nbsp;<strong>Alienware m18 Gaming Laptop<\\/strong>&nbsp;ng\\u01b0\\u1eddi d\\u00f9ng s\\u1ebd \\u0111\\u01b0\\u1ee3c tr\\u1ea3i nghi\\u1ec7m v\\u1ec1 th\\u1ecb gi\\u00e1c v\\u00e0 m\\u00e0u s\\u1eafc ch\\u00e2n th\\u1ef1c s\\u1ed1ng \\u0111\\u1ed9ng nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Linh ki\\u1ec7n \\u201cchu\\u1ea9n m\\u1ef1c\\u201d hi\\u1ec7u n\\u0103ng \\u0111\\u1ec9nh cao&nbsp;<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\"><strong>Alienware m18 I9 Gaming<\\/strong>&nbsp;\\u0111\\u01b0\\u1ee3c trang b\\u1ecb b\\u1ed9 vi Intel gen 13 m\\u1edbi nh\\u1ea5t hi\\u1ec7n nay v\\u1edbi r\\u1ea5t nhi\\u1ec1u c\\u1ea3i ti\\u1ebfn v\\u1ec1 hi\\u1ec7u n\\u0103ng cho t\\u1ed1c \\u0111\\u1ed9 x\\u1eed l\\u00fd v\\u00f4 c\\u00f9ng \\u1ea5n t\\u01b0\\u1ee3ng d\\u00f9 l\\u00e0 l\\u00e0m vi\\u1ec7c hay ch\\u01a1i game. Ng\\u01b0\\u1eddi d\\u00f9ng s\\u1ebd c\\u00f3 nh\\u1eefng s\\u1ef1 l\\u1ef1a ch\\u1ecdn t\\u00f9y \\u00fd b\\u1ed9 vi x\\u1eed l\\u00fd l\\u00e0 Core\\u2122i7 13700HX s\\u1edf h\\u1eefu 16 l\\u00f5i, 24 lu\\u1ed3ng mang t\\u1edbi xung nh\\u1ecbp t\\u1ed1i \\u0111a 5Ghz&nbsp; gi\\u00fap ng\\u01b0\\u1eddi d\\u00f9ng d\\u1ec5 d\\u00e0ng \\u201cc\\u00e2n\\u201d \\u0111\\u01b0\\u1ee3c m\\u1ecdi t\\u1ef1a game AAA \\u0111\\u00ecnh \\u0111\\u00e1m nh\\u1ea5t tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n nay nh\\u01b0 GTA 5, FIFA 4, CS:GO m\\u1ed9t c\\u00e1ch tr\\u01a1n tru v\\u00e0 m\\u01b0\\u1ee3t m\\u00e0 nh\\u1ea5t \\u1edf m\\u1ee9c Full setting.&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Hi\\u1ec7u n\\u0103ng m\\u1ea1nh m\\u1ebd c\\u00e2n \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u t\\u1ef1a game AA n\\u1eb7ng k\\u00fd&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-1-1681660857.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<p dir=\\\"ltr\\\">\\u0110\\u00e1ng ch\\u00fa \\u00fd h\\u01a1n c\\u1ea3, \\u1edf t\\u1ed5 h\\u1ee3p ph\\u1ea7n c\\u1ee9ng bao g\\u1ed3m Core\\u2122i9 13700HX (24 l\\u00f5i),&nbsp; b\\u1ed9 \\u0111\\u1ec7m \\u0111\\u01b0\\u1ee3c t\\u00edch h\\u1ee3p s\\u0103n 36MB, b\\u1ed9 t\\u0103ng \\u00e1p l\\u00ean \\u0111\\u1ebfn 5.0GHz khi\\u1ebfn hi\\u1ec7u su\\u1ea5t gaming \\u201cv\\u01b0\\u1ee3t tr\\u1ed9i\\u201d \\u0111\\u00e1nh b\\u1ea1i m\\u1ecdi \\u0111\\u1ed1i th\\u1ee7 trong c\\u00f9ng b\\u1ea5t kh\\u00fac. kh\\u00f4ng b\\u1ea5t ng\\u1edd ng\\u1edd khi l\\u00e0 m\\u1ed9t s\\u1ea3n ph\\u1ea9m cao c\\u1ea5p v\\u1edbi h\\u00e0ng lo\\u1ea1t nh\\u1eefng linh ki\\u1ec7n ph\\u1ea7n c\\u1ee9ng \\u201cx\\u1ecbn s\\u00f2\\u201d h\\u00e0ng \\u0111\\u1ea7u \\u1edf th\\u1eddi \\u0111i\\u1ec3m hi\\u1ec7n nay, b\\u1edfi v\\u1eady khi chi\\u1ebfc nh\\u1eefng t\\u1ef1a game y\\u00eau c\\u1ea7u b\\u1ed9 x\\u1eed l\\u00fd m\\u1ea1nh t\\u1edbi \\u0111\\u00e2u th\\u00ec&nbsp; m\\u1ee9c FPS c\\u1ee7a m\\u00e1y cho ra v\\u1eabn l\\u00e0 v\\u00f4 c\\u00f9ng \\u1ea5n t\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>K\\u1ebft n\\u1ed1i d\\u1ec5 d\\u00e0ng m\\u1ecdi thi\\u1ebft b\\u1ecb, \\u0111a d\\u1ea1ng c\\u00e1c c\\u1ed5ng<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Vi\\u1ec7c \\u0111\\u1ec3 ng\\u01b0\\u1eddi d\\u00f9ng c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i k\\u1ebft n\\u1ed1i th\\u00ec nh\\u00e0 ph\\u00e1t h\\u00e0nh \\u0111\\u00e3 t\\u00edch h\\u1ee3p tr\\u00ean&nbsp;<strong>Alienware m18 Gaming Dell<\\/strong>&nbsp;nh\\u1eefng c\\u1ed5ng k\\u1ebft n\\u1ed1i v\\u1eadt l\\u00fd nh\\u01b0:<\\/p>\\r\\n\\r\\n<ul dir=\\\"ltr\\\">\\r\\n\\t<li role=\\\"presentation\\\">1 USB 3.2 Gen 1 port with PowerShare<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">3 USB 3.2 Gen 1 ports<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">2 Thunderbolt\\u2122 4 Gen 2 Type-C\\u00ae ports with DisplayPort Alt Mode\\/USB4<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 RJ45 Ethernet port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 Universal audio port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 HDMI 2.1 port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 power-adapter port<\\/li>\\r\\n\\t<li role=\\\"presentation\\\">1 mini-Display port<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Vi\\u1ec7c \\u0111a d\\u1ea1ng c\\u1ed5ng k\\u1ebft n\\u1ed1i tr\\u00ean&nbsp;<em>Alienware m18 Gaming Laptop<\\/em>&nbsp;th\\u00ec m\\u1ecdi ng\\u01b0\\u1eddi h\\u00e3y y\\u00ean t\\u00e2m k\\u1ebft n\\u1ed1i ngo\\u1ea1i vi v\\u00e0 truy\\u1ec1n t\\u1ea3i d\\u1eef li\\u1ec7u v\\u1edbi c\\u00e1c thi\\u1ebft b\\u1ecb nh\\u01b0 chu\\u1ed9t hay b\\u00e0n ph\\u00edm\\u2026Gi\\u00fap n\\u00e2ng cao v\\u00e0 \\u0111\\u1ea1t t\\u1ed1i \\u0111a hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Th\\u1eddi l\\u01b0\\u1ee3ng pin t\\u01b0\\u01a1ng \\u0111\\u1ed1i \\u1ed5n, kh\\u00f4ng qu\\u00e1 n\\u1ed5i tr\\u1ed9i<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">Dung l\\u01b0\\u1ee3ng pin c\\u1ee7a&nbsp;<strong>M18 Alienware<\\/strong>&nbsp;l\\u00e0 97Whr. \\u0110\\u00e1ng bu\\u1ed3n l\\u00e0 th\\u1eddi l\\u01b0\\u1ee3ng s\\u1eed d\\u1ee5ng pin th\\u1ef1c t\\u1ebf ch\\u01b0a tuy\\u1ec7t v\\u1eddi l\\u1eafm. M\\u1eb7c d\\u00f9 kh\\u00f4ng s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 ch\\u01a1i game v\\u00e0 c\\u00e1c c\\u00e0i \\u0111\\u1eb7t \\u0111\\u1ec1u \\u0111\\u01b0a v\\u1ec1 m\\u1ee9c trung b\\u00ecnh. Nh\\u01b0ng chi\\u1ebfc Laptop n\\u00e0y c\\u0169ng ch\\u1ec9 tr\\u1ee5 \\u0111\\u01b0\\u1ee3c 6-7 ti\\u1ebfng \\u0111\\u1ed3ng h\\u1ed3. C\\u1ee5c s\\u1ea1c theo m\\u00e1y kh\\u00e1 n\\u1eb7ng n\\u00ean ch\\u1eafc ch\\u1eafn nhi\\u1ec1u b\\u1ea1n c\\u0169ng ph\\u1ea3i c\\u00e2n nh\\u1eafc \\u0111i\\u1ec1u n\\u00e0y.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Dung l\\u01b0\\u1ee3ng pin \\u0111\\u1ee7 d\\u00f9ng cho c\\u00f4ng vi\\u1ec7c&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-6-1681660875.jpg\\\" \\/><\\/p>\\r\\n\\r\\n<h2 dir=\\\"ltr\\\"><strong>Laptop Dell&nbsp; Alienware M18 c\\u00f3 th\\u1ef1c s\\u1ef1 t\\u1ed1t kh\\u00f4ng?<\\/strong><\\/h2>\\r\\n\\r\\n<p dir=\\\"ltr\\\">C\\u00f3 th\\u1ec3 n\\u00f3i&nbsp;<strong>Dell&nbsp; Alienware M18<\\/strong>&nbsp;l\\u00e0 m\\u1ed9t m\\u1eabu m\\u00e1y gaming ch\\u01a1i game m\\u1eabu m\\u1ef1c hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. C\\u00f3 th\\u1ec3 c\\u00f9ng b\\u1ea1n chinh chi\\u1ebfn m\\u1ecdi t\\u1ef1a game AAA n\\u1eb7ng k\\u00fd hi\\u1ec7n nay tr\\u00ean th\\u1ecb tr\\u01b0\\u1eddng. T\\u1eeb thi\\u1ebft k\\u1ebf sang tr\\u1ecdng, \\u0111\\u1ea7y \\u1ea5n t\\u01b0\\u1ee3ng cho t\\u1edbi m\\u00e0n h\\u00ecnh l\\u1edbn, h\\u00ecnh \\u1ea3nh s\\u1ed1ng \\u0111\\u1ed9ng v\\u00e0 s\\u1eafc n\\u00e9t h\\u1ee9a h\\u1eb9n s\\u1ebd cho ng\\u01b0\\u1eddi d\\u00f9ng m\\u1ed9t tr\\u1ea3i nghi\\u1ec7m \\u0111\\u1ec9nh cao nh\\u1ea5t. Khi\\u1ebfn m\\u00e1y lu\\u00f4n gi\\u1eef \\u0111\\u01b0\\u1ee3c \\u201cv\\u1ecb tr\\u00ed ng\\u00f4i v\\u01b0\\u01a1ng\\u201d khi \\u0111\\u1eb7t l\\u00ean b\\u00e0n c\\u00e2n v\\u1edbi nh\\u1eefng s\\u1ea3n ph\\u1ea9m c\\u00f9ng ph\\u00e2n kh\\u00fac.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"Laptop Dell&amp;nbsp; Alienware M18 tr\\u1ee3 th\\u1ee7 \\u0111\\u1eafc l\\u1ef1c cho game th\\u1ee7&amp;nbsp;\\\" src=\\\"https:\\/\\/lapvip.vn\\/upload\\/file\\/original\\/dell-alienware-m18-lapip-4-1681660889.jpg\\\" \\/><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null,\"related_post\":[\"381\"]}', '/data/cms-image/Máy Tính PC/250-23496-ncpc-amd-05ncpc-amd-05ncpc-amd-05.jpg', NULL, 1, 7, NULL, 'active', 1, 1, '2024-01-12 09:42:38', '2024-01-29 03:22:56', 'case-may-tinh-tp1-chay-phan-mem-autocad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_show_home` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`, `is_show_home`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"image\":null,\"image_background\":\"https:\\/\\/jcgroup.vn\\/wp-content\\/uploads\\/2022\\/09\\/01-3.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2021-10-15 03:19:10', '2024-01-12 09:12:39', 'tin-tuc', 0),
(57, 'product', NULL, 'Laptop Gaming', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/icon5.webp\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_3_tab.webp\",\"brief\":{\"vi\":\"Gi\\u1ea3m ngay khi mua online\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'delete', 1, 1, '2024-01-04 03:31:21', '2024-01-12 08:08:23', 'laptop-gaming', 0),
(58, 'product', NULL, 'Phụ kiện & thiết bị', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/icon2.webp\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-04 03:38:55', '2024-01-04 09:30:57', 'phu-kien-thiet-bi', 0),
(59, 'product', NULL, 'Camera', '{\"image\":\"\\/data\\/cms-image\\/Camera\\/camera-ip-wifi-than-2mp-uniarch-uho-boa-m2f3-300x300.jpg\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_1.webp\",\"brief\":{\"vi\":\"Gi\\u1ea3m ngay khi mua online\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 3, 'active', 1, 1, '2024-01-04 03:39:13', '2024-01-29 03:14:26', 'camera', 1),
(60, 'product', NULL, 'Macbook', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/macbook-image-show-home-1624856863.png\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_1_tab.jpg\",\"brief\":{\"vi\":\"Gi\\u1ea3m ngay khi mua online\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, NULL, 'delete', 1, 1, '2024-01-04 04:34:19', '2024-01-12 08:08:29', 'macbook', 0),
(61, 'product', NULL, 'Laptop HP', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/laptop-moi-image-show-home-1624951313.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-04 07:17:14', '2024-01-12 08:08:47', 'laptop-hp', 0),
(62, 'product', NULL, 'Surface', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/surface-image-show-home-1624951565.jpg\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_2_tab.webp\",\"brief\":{\"vi\":\"Gi\\u1ea3m ngay khi mua online\"},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 1, 'delete', 1, 1, '2024-01-04 07:17:54', '2024-01-12 08:08:18', 'surface', 0),
(63, 'product', 61, 'Laptop Hp Victus', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/laptop-moi-image-show-home-1624951313.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-05 04:44:14', '2024-01-12 08:08:47', 'laptop-hp-victus', 0),
(64, 'product', 61, 'Laptop Hp Omen', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/laptop-moi-image-show-home-1624951313.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-05 04:44:14', '2024-01-12 08:08:47', 'laptop-hp-omen', 0),
(65, 'product', 61, 'Laptop HP Pavilion', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/laptop-moi-image-show-home-1624951313.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-05 04:44:14', '2024-01-12 08:08:47', 'laptop-hp-pavilion', 0),
(66, 'product', 61, 'Laptop HP Spectre', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/laptop-moi-image-show-home-1624951313.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-05 04:44:14', '2024-01-12 08:08:47', 'laptop-hp-spectre', 0),
(67, 'product', 60, 'iMac - Mac Pro - Mini', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/macbook-image-show-home-1624856863.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-06 03:48:22', '2024-01-12 08:08:29', 'imac-mac-pro-mini', 0),
(68, 'product', 60, 'Macbook Air', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/macbook-image-show-home-1624856863.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-06 03:48:22', '2024-01-12 08:08:29', 'macbook-air', 0),
(69, 'product', 60, 'Macbook Pro', '{\"image\":\"\\/data\\/cms-image\\/thumb\\/macbook-image-show-home-1624856863.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'delete', 1, 1, '2024-01-06 03:48:22', '2024-01-12 08:08:29', 'macbook-pro', 0),
(70, 'post', NULL, 'Tin công nghệ', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-07 13:34:11', '2024-01-07 13:34:11', 'tin-cong-nghe', 0),
(71, 'post', 70, 'Laptop mới nhất', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-07 13:35:03', '2024-01-07 13:35:15', 'laptop-moi-nhat', 0),
(72, 'post', 70, 'Điện thoại mới nhất', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-07 13:35:44', '2024-01-07 13:35:44', 'dien-thoai-moi-nhat', 0),
(73, 'product', NULL, 'Máy Tính PC', '{\"image\":\"\\/data\\/cms-image\\/M\\u00e1y T\\u00ednh PC\\/manhinh-80x80.png\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_1_tab.jpg\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 1, 'active', 1, 1, '2024-01-12 08:16:27', '2024-01-29 03:13:43', 'may-tinh-pc', 1),
(74, 'product', NULL, 'Laptop', '{\"image\":\"\\/data\\/cms-image\\/Lap Gaming\\/dell-alienware-m18-lapip-2-1679622163.jpg\",\"image_background\":\"\\/data\\/cms-image\\/banner\\/banner_1.webp\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 2, 'active', 1, 1, '2024-01-12 08:20:57', '2024-01-29 03:14:15', 'laptop', 1),
(75, 'product', NULL, 'Máy in', '{\"image\":\"\\/data\\/cms-image\\/M\\u00e1y in\\/Mayin2x-80x80-9.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 7, 'active', 1, 1, '2024-01-12 08:38:52', '2024-01-12 09:16:58', 'may-in', 0),
(76, 'product', NULL, 'Linh phụ kiện', '{\"image\":\"\\/data\\/cms-image\\/Linh ph\\u1ee5 ki\\u1ec7n\\/250_45490_vga_asu_gt730sl2gd5brk_a.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 5, 'active', 1, 1, '2024-01-12 08:43:27', '2024-01-12 09:17:41', 'linh-phu-kien', 0),
(77, 'product', NULL, 'Thiết bị mạng', '{\"image\":\"\\/data\\/cms-image\\/Thi\\u1ebft b\\u1ecb m\\u1ea1ng\\/20774_6254_tp-link-300m-wireless-router-tl-wr841n.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 4, 'active', 1, 1, '2024-01-12 08:51:02', '2024-01-12 09:14:56', 'thiet-bi-mang', 0),
(78, 'product', NULL, 'Đồ chơi công nghệ', '{\"image\":\"\\/data\\/cms-image\\/\\u0110\\u1ed3 ch\\u01a1i c\\u00f4ng ngh\\u1ec7\\/Loa-90x110.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 6, 'active', 1, 1, '2024-01-12 08:54:47', '2024-01-12 09:17:55', 'do-choi-cong-nghe', 0),
(79, 'product', NULL, 'Máy chấm công', '{\"image\":\"\\/data\\/cms-image\\/M\\u00e1y ch\\u1ea5m c\\u00f4ng\\/1661965200-bf1851180868c12dadb831152b37c5f2.300.jpg\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 8, 'active', 1, 1, '2024-01-12 09:00:24', '2024-01-27 03:07:10', 'may-cham-cong', 0),
(80, 'product', NULL, 'Máy đếm tiền', '{\"image\":\"\\/data\\/cms-image\\/M\\u00e1y \\u0111\\u1ebfm ti\\u1ec1n\\/208.png\",\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 9, 'active', 1, 1, '2024-01-12 09:02:39', '2024-01-12 09:13:12', 'may-dem-tien', 0),
(81, 'product', 73, 'Máy văn phòng', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-12 09:28:19', '2024-01-12 09:28:19', 'may-van-phong', 0),
(82, 'product', 73, 'Máy thiết kế', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-12 09:29:09', '2024-01-12 09:29:09', 'may-thiet-ke', 0),
(83, 'product', 73, 'Máy gaming', '{\"image\":null,\"image_background\":null,\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, NULL, 'active', 1, 1, '2024-01-12 09:29:33', '2024-01-12 09:29:33', 'may-gaming', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `component_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'contact',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(19, 'call_request', 'Thắng Nguyễn 2', 'thangnh.edu@gmail.com', '0912 568 999', NULL, 'Thử chức năng trên fhm', NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-08 07:14:54', '2022-10-08 07:14:54'),
(53, 'newsletter', NULL, 'manh@fmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2023-02-20 07:44:54', '2023-02-20 07:44:54'),
(54, 'newsletter', NULL, 'fsd@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2023-02-20 08:19:02', '2023-02-20 08:19:02'),
(56, 'call_request', 'BrandonMug', 'no.reply.Miple@gmail.com', '89175535951', NULL, 'Hi!  cauthangductung.com \r\n \r\nDid yоu knоw thаt it is pоssiblе tо sеnd mеssаgе аbsоlutеly lеgаlly? \r\nWе prеsеntаtiоn а nеw mеthоd оf sеnding аppеаl thrоugh fееdbасk fоrms. Suсh fоrms аrе lосаtеd оn mаny sitеs. \r\nWhеn suсh prоpоsаls аrе sеnt, nо pеrsоnаl dаtа is usеd, аnd mеssаgеs аrе sеnt tо fоrms spесifiсаlly dеsignеd tо rесеivе mеssаgеs аnd аppеаls. \r\nаlsо, mеssаgеs sеnt thrоugh fееdbасk Fоrms dо nоt gеt intо spаm bесаusе suсh mеssаgеs аrе соnsidеrеd impоrtаnt. \r\nWе оffеr yоu tо tеst оur sеrviсе fоr frее. Wе will sеnd up tо 50,000 mеssаgеs fоr yоu. \r\nThе соst оf sеnding оnе milliоn mеssаgеs is 59 USD. \r\n \r\nThis lеttеr is сrеаtеd аutоmаtiсаlly. Plеаsе usе thе соntасt dеtаils bеlоw tо соntасt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', NULL, NULL, NULL, 'new', NULL, NULL, '2023-02-21 09:35:04', '2023-02-21 09:35:04'),
(57, 'contact', 'Đăng ký mới', 'tuannguyenduy0111@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2024-01-12 02:09:07', '2024-01-12 02:09:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  `logged_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `url_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `system_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-12-14 04:18:48'),
(26, 26, 'Tin tức', NULL, '/tin-tuc', 'main', 'public', '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2021-12-08 02:51:06', '2022-12-14 04:23:22'),
(34, 33, 'SHOP', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-12-29 09:14:44'),
(35, 33, 'SINGLE', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-12-29 09:14:51'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'WHO ARE WE', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-12-29 09:15:03'),
(58, 24, 'Trang chủ', NULL, '/', NULL, NULL, '{\"name\":{\"en\":\"Home\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2024-01-12 09:25:50'),
(64, NULL, 'Về chúng tôi', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"About Us\"}}', 2, 'delete', 1, 1, '2022-10-17 07:19:46', '2024-01-06 04:21:16'),
(86, 65, 'yh', NULL, '/i', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-19 10:43:57', '2022-12-19 10:43:57'),
(93, 92, 'NICHE DEMOS', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-29 09:15:56', '2022-12-29 09:15:56'),
(114, 24, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"name\":{\"en\":\"Contact\"},\"target\":\"_self\"}', 8, 'active', 1, 1, '2023-03-06 09:19:37', '2024-01-12 09:25:50'),
(118, 64, 'Nhân sự', NULL, '/#teammate', NULL, NULL, '{\"name\":{\"en\":\"People\"},\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-03-06 09:32:12', '2023-03-09 03:33:02'),
(119, 64, 'Về chúng tôi', NULL, '/#introduce', NULL, NULL, '{\"name\":{\"en\":\"About Us\"},\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-03-06 09:32:25', '2023-03-09 03:35:18'),
(121, NULL, 'Dự án', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"Project\"}}', 3, 'delete', 1, 1, '2023-03-06 09:40:52', '2024-01-06 04:21:18'),
(122, 121, 'Quy hoạch', NULL, 'quy-hoach', NULL, NULL, '{\"name\":{\"en\":\"Planning\"},\"target\":\"_self\"}', 3, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:28:37'),
(123, 121, 'Cảnh quan', NULL, 'thiet-ke-canh-quan', NULL, NULL, '{\"name\":{\"en\":\"Landscape\"},\"target\":\"_self\"}', 2, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:29:12'),
(124, 121, 'Công trình', NULL, 'kien-truc-cong-trinh', NULL, NULL, '{\"name\":{\"en\":\"Architecture\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-03-06 09:41:06', '2023-03-09 03:28:55'),
(125, NULL, 'Hoạt động', NULL, NULL, 'footer', NULL, NULL, 4, 'delete', 1, 1, '2023-03-06 09:41:27', '2023-03-06 09:42:37'),
(126, NULL, 'Hoạt động', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"SOCIAL\"}}', 5, 'delete', 1, 1, '2023-03-06 09:41:27', '2024-01-06 04:21:21'),
(127, 126, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"name\":{\"en\":\"Contact\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2023-03-06 09:41:41', '2023-03-09 03:30:41'),
(128, 24, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\"}', 7, 'active', 1, 1, '2023-03-07 04:14:06', '2024-01-12 09:25:50'),
(136, NULL, 'Máy Tính PC', NULL, NULL, 'header', NULL, NULL, 2, 'delete', 1, 1, '2024-01-12 03:17:01', '2024-01-12 03:17:19'),
(138, 24, 'Máy Tính PC', NULL, 'may-tinh-pc', NULL, NULL, NULL, 2, 'active', 1, 1, '2024-01-12 09:21:15', '2024-01-12 09:25:50'),
(139, 24, 'Camera', NULL, 'camera', NULL, NULL, NULL, 4, 'active', 1, 1, '2024-01-12 09:21:23', '2024-01-12 09:25:50'),
(141, 24, 'Linh phụ kiện', NULL, 'linh-phu-kien', NULL, NULL, NULL, 6, 'active', 1, 1, '2024-01-12 09:21:47', '2024-01-12 09:25:50'),
(142, 24, 'Laptop', NULL, 'laptop', NULL, NULL, NULL, 3, 'active', 1, 1, '2024-01-12 09:21:58', '2024-01-12 09:25:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý dịch vụ', NULL, 5, 'deactive', 1, 1, '2022-03-04 05:22:40', '2022-12-07 02:40:50'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'active', 1, 1, '2022-03-04 05:22:52', '2022-11-06 09:15:07'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, NULL, 'active', 1, 1, '2022-08-08 06:42:19', '2022-08-08 06:42:34'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2022-12-07 02:40:37'),
(25, 'call_review', 'Quản lý đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-04 03:00:25', '2023-02-04 03:00:53'),
(26, 'order_products', 'Quản lý đặt hàng', NULL, NULL, 'active', 1, 1, '2023-02-04 03:01:12', '2023-02-04 03:01:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(133, 26, 'order_products.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2023-02-06 07:35:39', '2023-02-06 07:35:50'),
(134, 26, 'order_products.show', 'Xem chi tiết đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:44:12', '2023-02-06 07:44:12'),
(135, 26, 'order_products.update', 'Chỉnh sửa đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:45:55', '2023-02-06 07:45:55'),
(136, 26, 'order_details.update', 'Chỉnh sửa chi tiết đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:46:47', '2023-02-06 07:46:47'),
(137, 26, 'order_products.destroy', 'Xóa đơn hàng', NULL, NULL, 'active', 1, 1, '2023-02-06 07:48:10', '2023-03-10 07:48:04'),
(138, 25, 'call_review.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2023-02-06 07:50:51', '2023-02-06 07:50:51'),
(139, 25, 'call_review.show', 'Xem chi tiết đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:51:10', '2023-02-06 07:51:10'),
(140, 25, 'call_review.update', 'Cập nhật đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:51:38', '2023-02-06 07:51:38'),
(141, 25, 'call_review.destroy', 'Xóa đánh giá', NULL, NULL, 'active', 1, 1, '2023-02-06 07:52:00', '2023-02-06 07:52:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_system_param` tinyint(1) DEFAULT '1',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"C\\u00f4ng Ty TNHH TTECH PC\",\"phone\":\"0368221386\",\"hotline\":\"0368221386\",\"email\":\"ttechpc@gmail.com\",\"address\":\"32 Ph\\u1ed1 V\\u0169, \\u0110\\u1ea1i Ph\\u00fac , Th\\u00e0nh Ph\\u1ed1 B\\u1eafc Ninh\",\"seo_title\":\"TTECH PC\",\"seo_keyword\":\"TTECH PC\",\"seo_description\":\"TTECH PC\"}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2024-01-17 03:56:05'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/REFMM 1.png\",\"logo_footer\":\"\\/data\\/cms-image\\/REFMM 1.png\",\"favicon\":\"\\/data\\/cms-image\\/favicon.png\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/REFMM 1.png\",\"seo_og_image\":\"\\/data\\/cms-image\\/REFMM 1.png\",\"Image_home_sidebar\":\"\\/data\\/cms-image\\/banner\\/banner_1.webp\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2024-01-09 09:49:17'),
(6, 'social', '{\"facebook\":\"#\",\"youtube\":\"#\",\"gmail\":\"#\",\"twitter\":\"#\",\"call_now\":\"0368221386\",\"zalo\":\"https:\\/\\/zalo.me\\/0368221386\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2024-01-09 09:54:06'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3720.418417123192!2d106.07496187572761!3d21.17553108051065!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31350c08c1977ec3%3A0xf6f6df6fa71e3b2d!2zMzIgVHLhuqduIEjGsG5nIMSQ4bqhbywgxJDhuqFpIFBow7pjLCBC4bqvYyBOaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1705463786285!5m2!1svi!2s\\\" width=\\\"600\\\" height=\\\"450\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2024-01-17 03:56:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_cv` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `image_cv`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text COLLATE utf8mb4_unicode_ci,
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(9, 8, 52, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 22, 53, 1, 500.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 25, 53, 4, 270000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 26, 53, 1, 270000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 27, 193, 5, 5.00, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, '2023-02-06 07:47:21'),
(29, 28, 153, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 36, 361, 1, 52990001.00, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2024-01-06 10:04:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `route_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[74,343,344,19,347,348]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2024-01-04 09:45:41', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[\"94\"]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2023-03-10 04:45:23', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[\"112\",\"94\",\"93\"]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2023-03-10 04:45:33', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[\"112\",\"94\",\"243\",\"93\"]}', 11, 'delete', 1, 1, '2022-06-07 07:35:49', '2024-01-04 10:21:54', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[94]}', 17, 'active', 1, 1, '2022-07-18 08:36:34', '2024-01-09 09:34:03', 1),
(31, 'Giỏ hàng', NULL, NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-27 10:01:57', '2023-03-10 04:45:18', 1),
(33, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-05 09:09:28', '2024-01-04 10:21:44', 1),
(34, 'Giỏ Hàng', 'Giở hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[94]}', NULL, 'active', 1, 1, '2024-01-06 07:43:49', '2024-01-06 07:43:49', 1),
(35, 'Thanh toán', 'Thanh toán', NULL, NULL, NULL, 'frontend.branch', 'thanh-toan', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[94]}', NULL, 'active', 1, 1, '2024-01-06 09:13:38', '2024-01-06 09:13:38', 1),
(36, 'Liên Hệ', NULL, NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[94]}', NULL, 'active', 1, 1, '2024-01-09 09:31:15', '2024-01-09 09:31:15', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_reviews`
--

CREATE TABLE `tb_reviews` (
  `id` bigint(20) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `comment` longtext,
  `rating` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"82\",\"81\",\"59\",\"51\",\"52\",\"53\",\"73\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"order_details.update\",\"order_products.update\",\"order_products.show\",\"order_products.index\",\"call_review.update\",\"call_review.show\",\"call_review.index\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2023-02-06 07:53:59'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"81\",\"59\",\"51\",\"52\",\"73\",\"53\",\"83\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"order_products.destroy\",\"order_details.update\",\"order_products.update\",\"order_products.show\",\"order_products.index\",\"call_review.destroy\",\"call_review.update\",\"call_review.show\",\"call_review.index\",\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2023-03-10 07:48:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `widget_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_config` tinyint(1) NOT NULL DEFAULT '1',
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT '0',
  `total_money` double NOT NULL DEFAULT '0',
  `total_payment` double NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `email_verification_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT '0',
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_reviews`
--
ALTER TABLE `tb_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_reviews`
--
ALTER TABLE `tb_reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
