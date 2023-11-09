-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 09, 2023 lúc 05:07 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_web`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `validation` varchar(255) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `code`, `name`, `type`, `validation`, `is_required`, `is_unique`, `is_filterable`, `is_configurable`, `created_at`, `updated_at`) VALUES
(1, 'ima', 'Phạm Khắc Tưởng', 'Text', NULL, 1, 1, 1, 1, '2023-05-23 02:30:07', '2023-05-24 22:00:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attribute_options`
--

CREATE TABLE `attribute_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attribute_options`
--

INSERT INTO `attribute_options` (`id`, `name`, `attribute_id`, `created_at`, `updated_at`) VALUES
(1, 'Tưởng', 1, '2023-05-24 23:29:20', '2023-05-24 23:29:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tiểu thuyết', 'tieu-thuyet', 3, '2023-05-23 02:27:58', '2023-05-25 19:41:18'),
(2, 'Truyện tranh', 'truyen-tranh', NULL, '2023-05-23 02:29:11', '2023-05-25 21:17:03'),
(3, 'Văn học', 'van-hoc', NULL, '2023-05-25 19:41:11', '2023-05-25 19:41:11'),
(4, 'Kinh tế', 'kinh-te', NULL, '2023-05-25 21:07:36', '2023-05-25 21:07:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_08_003606_create_categories_table', 1),
(7, '2023_03_08_003938_create_products_table', 1),
(8, '2023_03_08_011102_create_attributes_table', 1),
(9, '2023_03_08_011524_create_product_attribute_values_table', 1),
(10, '2023_03_08_012756_create_product_inventories_table', 1),
(11, '2023_03_08_013422_create_product_categories_table', 1),
(12, '2023_03_08_013611_create_product_images_table', 1),
(13, '2023_03_08_013906_create_attribute_options_table', 1),
(14, '2023_03_08_014314_create_orders_table', 1),
(15, '2023_03_08_015219_create_order_items_table', 1),
(16, '2023_03_08_015501_create_payments_table', 1),
(17, '2023_03_08_015812_create_wish_lists_table', 1),
(18, '2023_03_13_070603_create_shipments_table', 1),
(19, '2023_03_22_154139_create_slides_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_token` varchar(255) DEFAULT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_address1` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city_id` varchar(255) DEFAULT NULL,
  `customer_province_id` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) DEFAULT NULL,
  `shipping_service_name` varchar(255) DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `code`, `status`, `order_date`, `payment_due`, `payment_status`, `payment_token`, `payment_url`, `base_total_price`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `shipping_cost`, `grand_total`, `note`, `customer_first_name`, `customer_last_name`, `customer_address1`, `customer_address2`, `customer_phone`, `customer_email`, `customer_city_id`, `customer_province_id`, `customer_postcode`, `shipping_courier`, `shipping_service_name`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `cancellation_note`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'INV/20230525/V/XXV/00002', 'Đã hoàn tất', '2023-05-25 11:20:25', '2023-06-01 11:20:25', 'Đã thanh toán', NULL, NULL, 150000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 180000.00, NULL, 'admin', '1', 'quảng nam', '21-5-2002', '0962367145', 'admin@admin.com', NULL, '0', 123, 'Viettel POST', 'GHN', 1, '2023-05-25 15:00:45', NULL, NULL, NULL, 1, '2023-05-25 04:20:25', '2023-05-26 01:12:59', '2023-05-26 01:12:59'),
(17, 'INV20230525VXXV00001', 'Đã hoàn tất', '2023-05-25 14:33:30', '2023-06-01 14:33:30', 'Đã thanh toán', NULL, NULL, 20000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 50000.00, NULL, 'tuong', 'Pham Khac Tuong', 'quảng nam', NULL, '0962364523', 'tuong@gmail.com', NULL, '0', 243242, 'Viettel POST', 'GHN', 1, '2023-05-25 15:01:29', NULL, NULL, NULL, 2, '2023-05-25 07:33:30', '2023-05-25 08:01:29', NULL),
(18, 'INV20230525VXXV00002', 'Đã hoàn tất', '2023-05-25 15:05:09', '2023-06-01 15:05:09', 'Đã thanh toán', NULL, NULL, 150000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 180000.00, NULL, 'tuong', 'Pham Khac Tuong', 'quảng nam', NULL, '0962364523', 'tuong@gmail.com', NULL, '0', 243242, 'Viettel POST', 'GHN', 1, '2023-05-25 15:18:03', NULL, NULL, NULL, 2, '2023-05-25 08:05:09', '2023-05-25 08:18:03', NULL),
(19, 'INV20230525VXXV00003', 'Đã hoàn tất', '2023-05-25 15:22:16', '2023-06-01 15:22:16', 'Đã thanh toán', NULL, NULL, 20000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 50000.00, NULL, 'tuong', 'Pham Khac Tuong', 'quảng nam', NULL, '0962364523', 'tuong@gmail.com', NULL, '0', 243242, 'Viettel POST', 'GHN', 1, '2023-05-25 16:17:31', NULL, NULL, NULL, 2, '2023-05-25 08:22:16', '2023-05-25 09:17:31', NULL),
(20, 'INV20230525VXXV00004', 'Đã hủy', '2023-05-25 15:24:14', '2023-06-01 15:24:14', 'Đã thanh toán', NULL, NULL, 450000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 480000.00, NULL, 'tuong', 'Pham Khac Tuong', 'quảng nam', NULL, '0962364523', 'tuong@gmail.com', NULL, '0', 243242, 'Viettel POST', 'GHN', NULL, NULL, 1, '2023-05-25 15:25:05', 'sorry', 2, '2023-05-25 08:24:14', '2023-05-25 08:36:03', NULL),
(21, 'INV20230525VXXV00005', 'Đã tạo', '2023-05-25 15:26:32', '2023-06-01 15:26:32', 'Đã thanh toán', NULL, NULL, 320000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 350000.00, NULL, 'tuong', 'Pham Khac Tuong', 'quảng nam', NULL, '0962364523', 'tuong@gmail.com', NULL, '0', 243242, 'Viettel POST', 'GHN', NULL, NULL, NULL, NULL, NULL, 2, '2023-05-25 08:26:32', '2023-05-25 08:26:32', NULL),
(22, 'INV20230526VXXVI00001', 'Đã hoàn tất', '2023-05-26 03:28:59', '2023-06-02 03:28:59', 'Đã thanh toán', NULL, NULL, 150000.00, 0.00, 0.00, 0.00, 0.00, 30000.00, 180000.00, NULL, 'admin', 'Quản trị viên', 'quảng nam', '21-5-2002', '0962367145', 'admin@admin.com', NULL, '0', 123, 'Viettel POST', 'GHN', 1, '2023-05-26 03:29:37', NULL, NULL, NULL, 1, '2023-05-25 20:28:59', '2023-05-25 20:29:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `qty`, `base_price`, `base_total`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `sub_total`, `sku`, `type`, `name`, `weight`, `attributes`, `order_id`, `product_id`, `created_at`, `updated_at`) VALUES
(7, 1, 150000.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 150000.00, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', '1056.00', '{\"options\":[]}', 5, 1, '2023-05-25 04:20:26', '2023-05-25 04:20:26'),
(16, 1, 20000.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 20000.00, '34324243242', 'simple', 'Bai tap Activity', '50.00', '{\"options\":[]}', 17, 12, '2023-05-25 07:33:30', '2023-05-25 07:33:30'),
(17, 1, 150000.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 150000.00, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', '1056.00', '{\"options\":[]}', 18, 1, '2023-05-25 08:05:09', '2023-05-25 08:05:09'),
(18, 1, 20000.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 20000.00, '34324243242', 'simple', 'Bai tap Activity', '50.00', '{\"options\":[]}', 19, 12, '2023-05-25 08:22:16', '2023-05-25 08:22:16'),
(19, 3, 150000.00, 450000.00, 0.00, 0.00, 0.00, 0.00, 450000.00, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', '1056.00', '{\"options\":[]}', 20, 1, '2023-05-25 08:24:14', '2023-05-25 08:24:14'),
(20, 2, 150000.00, 300000.00, 0.00, 0.00, 0.00, 0.00, 300000.00, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', '1056.00', '{\"options\":[]}', 21, 1, '2023-05-25 08:26:32', '2023-05-25 08:26:32'),
(21, 1, 20000.00, 20000.00, 0.00, 0.00, 0.00, 0.00, 20000.00, '34324243242', 'simple', 'Bai tap Activity', '50.00', '{\"options\":[]}', 21, 12, '2023-05-25 08:26:32', '2023-05-25 08:26:32'),
(22, 1, 150000.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 150000.00, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', '1056.00', '{\"options\":[]}', 22, 1, '2023-05-25 20:28:59', '2023-05-25 20:28:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('tuongdang297@gmail.com', '$2y$10$DnAFW3xF8bKNtsITKI6olu2lIyQ2WsD28YZ6VAZGwj2bfCbWQvEY.', '2023-05-26 00:11:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) DEFAULT NULL,
  `va_number` varchar(255) DEFAULT NULL,
  `vendor_name` varchar(255) DEFAULT NULL,
  `biller_code` varchar(255) DEFAULT NULL,
  `bill_key` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `length` decimal(10,2) DEFAULT NULL,
  `width` decimal(10,2) DEFAULT NULL,
  `height` decimal(10,2) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `sku`, `type`, `name`, `slug`, `price`, `weight`, `length`, `width`, `height`, `short_description`, `description`, `status`, `user_id`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '8935212310123', 'simple', 'Sherlock Holmes Toàn Tập - Tập 2', 'sherlock-holmes-toan-tap-tap-2', 150000.00, 1056.00, 696.00, 2017.00, 1624.00, 'Arthur Conan Doyle', 'Sherlock Holmes Toàn Tập - Tập 2\r\n\r\nTừ khi xuất hiện lần đầu tiên vào năm 1887, thám tử Sherlock Holmes đã trở thành một trong những nhân vật hư cấu được yêu thích nhất. Là bậc thầy về khoa học suy luận, có thể làm sáng tỏ ngay cả những vụ án khó và phức tạp nhất bằng cách phát hiện ra những manh mối mà với người khác là quá mơ hồ và không thể nhận biết, thám tử Sherlock Holmes là nhân vật chính trong bộ tác phẩm gồm sáu mươi câu chuyện được viết bởi Sir Arthur Conan Doyle từ năm 1887 đến năm 1927. Với sự giúp đỡ của người bạn tận tụy và trung thành là bác sĩ Watson, thám tử Sherlock Holmes đã khiến vô số những kẻ lừa đảo, kẻ cướp và kẻ sát nhân bị đưa ra truy tố trước pháp luật. Nhiều câu chuyện về Sherlock Holmes đã được xếp vào hàng những tác phẩm trinh thám hư cấu hay nhất mọi thời đại, trong số đó có “Chiếc nhẫn tình cờ”, “Vụ bê bối ở Bohemia”, “Dải băng lốm đốm” và “Con chó săn của dòng họ Baskerville”.\r\n\r\nBộ Sherlock Holmes toàn tập này sẽ giới thiệu với bạn đọc trọn bộ tác phẩm gồm 56 truyện ngắn và 4 tiểu thuyết, được sắp xếp theo trình tự thời gian xuất bản. Tập một: Chiếc nhẫn tình cờ (tiểu thuyết), Dấu bộ tứ (tiểu thuyết), Những cuộc phiêu lưu của Sherlock Holmes (12 truyện ngắn). Tập hai: Hồi ức của Sherlock Holmes (11 truyện ngắn), Sherlock Holmes trở về (13 truyện ngắn), Con chó săn của dòng họ Baskerville (tiểu thuyết). Tập ba: Thung lũng khủng khiếp (tiểu thuyết), Cung đàn sau cuối (18 truyện ngắn), Tàng thư của Sherlock Holmes (12 truyện ngắn). Hy vọng bộ sách này sẽ mang đến cho độc giả những giờ phút thư giãn thú vị và trở thành một phần không thể thiếu trong tủ sách của mỗi gia đình.', 1, 1, NULL, '2023-05-23 02:31:10', '2023-05-25 09:44:42'),
(12, '34324243242', 'simple', 'Tôi Thấy Hoa Vàng Trên Cỏ Xanh', 'toi-thay-hoa-vang-tren-co-xanh', 100000.00, 360.00, 378.00, 2022.00, NULL, 'Nguyễn Nhật Ánh', 'Những câu chuyện nhỏ xảy ra ở một ngôi làng nhỏ: chuyện người, chuyện cóc, chuyện ma, chuyện công chúa và hoàng tử , rồi chuyện đói ăn, cháy nhà, lụt lội,... Bối cảnh là trường học, nhà trong xóm, bãi tha ma. Dẫn chuyện là cậu bé 15 tuổi tên Thiều. Thiều có chú ruột là chú Đàn, có bạn thân là cô bé Mận. Nhưng nhân vật đáng yêu nhất lại là Tường, em trai Thiều, một cậu bé học không giỏi. Thiều, Tường và những đứa trẻ sống trong cùng một làng, học cùng một trường, có biết bao chuyện chung. Chúng nô đùa, cãi cọ rồi yêu thương nhau, cùng lớn lên theo năm tháng, trải qua bao sự kiện biến cố của cuộc đời.\r\nTác giả vẫn giữ cách kể chuyện bằng chính giọng trong sáng hồn nhiên của trẻ con. 81 chương ngắn là 81 câu chuyện hấp dẫn với nhiều chi tiết thú vị, cảm động, có những tình tiết bất ngờ, từ đó lộ rõ tính cách người. Cuốn sách, vì thế, có sức ám ảnh.', 1, 1, NULL, '2023-05-25 03:05:14', '2023-05-25 19:43:27'),
(13, '3432424324223432', 'simple', 'Người Thầy', 'nguoi-thay', 200000.00, 665.00, 491.00, 2023.00, NULL, 'Thượng Tướng Nguyễn Chí Vịnh Nguyên Thứ Trưởng Bộ Quốc Phòng', 'Nhà tình báo siêu hạng. Còn nhớ vào năm 2004, Báo Thanh Niên đăng loạt ký sự 36 kỳ “Ông tướng tình báo bí ẩn và những điệp vụ siêu hạng”. Ông là thiếu tướng – Anh hùng quân đội nhân dân VN tên Đặng Trần Đức, đồng đội gọi ông là Ba Quốc, đó chính là người thầy của tướng Nguyễn Chí Vịnh. Ông là vị tướng tình báo bí ẩn nhất. Ngoài những cán bộ có trách nhiệm trong ngành tình báo và một số ít vị lãnh đạo cấp cao phụ trách quốc phòng và an ninh, không ai biết gì về ông. Lần đầu tiên công chúng biết về ông là từ loạt ký sự trên.\r\n\r\nHơn 20 năm hoạt động “trong lòng” đối phương, ông là điệp viên duy nhất thâm nhập được vào cơ quan tình báo cao cấp nhất của chính quyền Sài Gòn, với tư cách là sĩ quan tình báo làm việc tại cơ quan mật vụ Phủ tổng thống và Phủ đặc ủy Trung ương tình báo. Trong những điệp vụ siêu hạng đó, ông đã giải cứu Bí thư Nguyễn Văn Linh (sau này là Tổng bí thư) và 9 Đặc khu ủy viên Sài Gòn – Gia Định thoát khỏi sự truy bắt của mật vụ, đã cứu quốc vương Norodom Sihanouk thoát chết trong một vụ ám sát, đã xóa sạch tất cả các ổ gián điệp mà đối phương cài ở miền Bắc, đã cung cấp về tổng hành dinh những báo cáo quân sự quan trọng của Bộ tổng tham mưu quân đội Sài Gòn, phát hiện nhiều kẻ phản bội trong hàng ngũ của ta…', 1, 1, NULL, '2023-05-25 20:09:20', '2023-05-25 20:14:04'),
(14, '8935212310', 'simple', 'Nam Cao - Sống Mòn (Tái Bản 2022)', 'nam-cao-song-mon-tai-ban-2022', 62000.00, 300.00, 304.00, 2022.00, NULL, 'Nam Cao', 'Nam Cao có bút danh là Thúy Rư, Xuân Du, Nguyệt, Nhiêu Khê...\r\n\r\nTên khai sinh: Trần Hữu Tri, sinh ngày 29 tháng 10 năm 1917. Quê quán: làng Đại Hoàng, phủ Lý Nhân, tỉnh Hà Nam (nay là xã Hòa Hậu, huyện Lý Nhân, Hà Nam).\r\n\r\nNăm 1951, ông tham gia đoàn công tác thuế nông nghiệp ở khu III. Nhà văn bị địch phục kích và hy sinh tại Hoàng Đan (Ninh Bình) ngày 30 tháng 11 năm 1951.\r\n\r\nKhi còn nhỏ Nam Cao học ở làng và thành phố Nam Định. Từ 1936, bắt đầu viết văn in trên các báo: Tiểu thuyết thứ bảy, Ích hữu... Năm 1938, dạy học tư ở Hà Nội và viết báo. Năm 1941, ông dạy học tư ở Thái Bình. Năm 1942, ông trở về quê, tiếp tục viết văn. Năm 1943, Nam Cao gia nhập Hội Văn hóa Cứu quốc. Cách mạng Tháng Tám (1945), ông tham gia giành chính quyền ở phủ Lý Nhân, và được cử làm Chủ tịch xã. Năm 1946, ra Hà Nội, hoạt động trong Hội Văn hóa Cứu quốc và là Thư ký tòa soạn tạp chí Tiên phong của Hội. Cùng năm đó, ông tham gia đoàn quân Nam tiến với tư cách phóng viên, hoạt động ở Nam Bộ. Sau đó lại trở về nhận công tác ở Ty Văn hóa Hà Nam. Mùa thu 1947, Nam Cao lên Việt Bắc, làm phóng viên báo Cứu quốc, cùng phụ trách báo Cứu quốc và là Thư ký tòa soạn báo Cứu quốc Việt Bắc. Năm 1950, ông nhận công tác ở tạp chí Văn nghệ (thuộc Hội Văn nghệ Việt Nam) và là Ủy viên Tiểu ban Văn nghệ Trung ương. Năm 1951, ông tham gia đoàn công tác thuế nông nghiệp ở khu III. Nhà văn bị địch phục kích và hy sinh tại Hoàng Đan (Ninh Bình) cuối tháng 11 năm 1951.\r\n\r\n“Cuối năm 1944, Nam Cao viết xong Sống mòn. Tập tiểu thuyết ấy quăng đi, ném lại, không lọt qua được lưới kiểm duyệt để xuất bản, tuy rằng soi từng chữ không có chỗ nào bắt bẻ được. Sống mòn tả cuộc sống thiểu não, quẩn quanh, nhỏ nhen của mấy người trí thức tiểu tư sản nghèo, một cuộc sống mù xám cứ \"mốc lên, rỉ đi, mòn ra, mục ra\", không có lối thoát. Rộng hơn là vận mệnh mấy con người ấy, ta thấy đặt ra một cách ám ảnh vấn đề vận mệnh chung của cả một xã hội chua xót, đau đớn, buồn thảm, tủi nhục, trong đó, đời sống không còn ý nghĩa, quay về phía nào cũng thấy dựng lên những bức tường bế tắc.”', 0, 1, NULL, '2023-05-25 20:15:27', '2023-05-25 20:25:00'),
(15, '534324243242', 'simple', 'Chí Phèo (Tái Bản 2020)', 'chi-pheo-tai-ban-2020', 68000.00, 320.00, 331.00, 2020.00, NULL, 'Nam Cao', 'Khái quát một hiện tượng xã hội ở nông thôn Việt Nam trước năm 1945, một bộ phận nông dân lao động lương thiện bị đẩy vào con đường tha hóa, lưu manh hóa. Nhà văn đã kết án đanh thép cái xã hội tàn bạo tàn phá cả thể xác và tâm hồn người nông dân lao động, đồng thời khẳng định bản chất lương thiện của họ, ngay trong khi họ bị vùi dập mất cả nhân hình, nhân tính. Chí Phèo là một tác phẩm có giá trị hiện thực và giá trị nhân đạo sâu sắc, mới mẻ.\r\n\r\nChủ đề chính của câu chuyện này là phê phán xã hội phong kiến ngày xưa. Trong truyện, có những sự xuất hiện của con người và nhân vật. Hơn nữa, nhà văn Nam Cao đã đề cao và khẳng định những phẩm chất tốt đẹp, cao quý của Chí Phèo – Thị Nở. Câu chuyện này đã nói lên sự xung đột vô cùng quyết liệt của các tầng lớp khác nhau trong xã hội phong kiến.', 1, 1, NULL, '2023-05-25 20:22:46', '2023-05-25 20:24:53'),
(16, '34324242343', 'simple', 'NFT - Cuộc Cách Mạng Công Nghệ Tiếp Nối Blockchain Và Kỷ Nguyên Tiền Điện Tử', 'nft-cuoc-cach-mang-cong-nghe-tiep-noi-blockchain-va-ky-nguyen-tien-dien-tu', 135000.00, 350.00, 296.00, 2021.00, NULL, 'Marc Beckman', 'NFT, tức Non-Fungible Token (token không thể thay thế), là cách tân kỹ thuật số quan trọng nhất kể từ sau sự xuất hiện của blockchain và tiền mã hóa. Và cũng giống như những người anh em đi trước của mình, NFT sở hữu tiềm lực thay đổi hoàn toàn thế giới, về tất cả mọi khía cạnh.\r\n\r\nNFT rốt cuộc là gì? Vì sao NFT lại trở thành làn sóng công nghệ đang được chờ đón nhất hiện nay? NFT sẽ thúc đẩy những biến chuyển mang tính cách mạng trong các mảng tài chính, đầu tư, y tế, văn hóa xã hội... như thế nào? Tất cả những câu hỏi này đều sẽ được giải đáp trong cuốn sách toàn diện và đặc biệt dễ hiểu của Marc Beckman.\r\n\r\nCuốn sách dẫn đường NFT đi sâu vào nền tảng của công nghệ NFT theo một khung nội dung mạch lạc, đi kèm với những giải thích chi tiết cùng ví dụ sinh động, giúp bất cứ ai cũng có thể hiểu được bản chất của NFT và tiềm năng của công nghệ mới này trong thời gian ngắn nhất.\r\n\r\nChúng ta sẽ khám phá cách mà NFT có thể tạo ra một loại tài sản hoàn toàn mới cũng như các cơ hội đầu tư chưa từng có. NFT đã và đang được ứng dụng trong giới mỹ thuật, lĩnh vực game, thể thao, âm nhạc... và khiến những nhóm người tưởng như không mấy quan tâm đến các cải tiến về công nghệ cũng sẵn sàng thay đổi để đón nhận làn gió mới. Bên cạnh những con số khổng lồ xoay quanh các thương vụ NFT, chúng ta sẽ còn phải choáng ngợp trước sự hữu ích không thể chối cãi mà NFT đem lại. Nếu như được sử dụng đúng cách, NFT sẽ là chiếc chìa khóa giải quyết vô số vấn đề về bảo mật và giả mạo, làm những rủi ro thường gắn liền với tài sản chỉ còn là câu chuyện quá khứ. Bên cạnh đó, NFT còn hứa hẹn sẽ cải thiện vượt bậc hiệu suất vận hành của chính phủ và các tổ chức, doanh nghiệp, cũng như cắt giảm được những khoản phí đắt đỏ, khi nó giúp các giao dịch có thể diễn ra nhanh chóng và đáng tin cậy, loại bỏ sự tham gia của các bên trung gian.\r\n\r\nVẫn còn rất nhiều điều thú vị nữa xoay quanh NFT, và nếu không muốn bị tụt hậu và trở thành kẻ chậm chân trong cuộc chơi này, hãy sớm tìm hiểu và trang bị cho mình những kiến thức cơ bản về làn sóng NFT. Cuốn sách của Marc Beckman chính là trợ thủ đắc lực của bạn.\r\n\r\nMột số nhận xét\r\n\r\n“Marc Beckman là một người có tầm nhìn xa, một cá nhân nhìn thấy được các cơ hội trong tương lai trước nhiều người khác. Kiến thức bao quát của anh ấy về NFT và các chiến lược dài hạn trong lĩnh vực đang phát triển này giúp anh tách biệt với những người chỉ tham gia để cố trục lợi nhất thời.”\r\n\r\n- Steven Cooper, Sony\r\n\r\n“Cuốn sách chi tiết và thiết yếu của Marc Beckman đã phác thảo quá khứ, hiện tại và tương lai nhiều tiềm năng sẽ xảy ra của NFT. Đây là một tài liệu giá trị cho các nghệ sĩ, nhà sưu tầm, nhà đầu tư và nhà tiếp thị.', 1, 1, NULL, '2023-05-25 21:08:08', '2023-05-25 21:09:34'),
(17, '9786043437881', 'simple', 'Chiến Tranh Tiền Tệ - Phần 1 - Ai Thực Sự Là Người Giàu Nhất Thế Giới? (Tái bản 2022)', 'chien-tranh-tien-te-phan-1-ai-thuc-su-la-nguoi-giau-nhat-the-gioi-tai-ban-2022', 112000.00, 570.00, 532.00, 2022.00, NULL, 'Song Hong Bing', 'Một khi đọc “Chiến tranh tiền tệ - Ai thật sự là người giàu nhất thế giới” bạn sẽ phải giật mình nhận ra một điều kinh khủng rằng, đằng sau những tờ giấy bạc chúng ta chi tiêu hàng ngày là cả một thế lực ngầm đáng sợ - một thế lực bí ẩn với quyền lực siêu nhiên có thể điều khiển cả thế giới rộng lớn này.\r\n\r\n“Chiến tranh tiền tệ - Ai thật sự là người giàu nhất thế giới” đề cập đến một cuộc chiến khốc liệt, không khoan nhượng và dai dẳng giữa một nhóm nhỏ các ông trùm tài chính – đứng đầu là gia tộc Rothschild – với các thể chế tài chính của nhiều quốc gia. Đó là một cuộc chiến mà đồng tiền là súng đạn và mức sát thương thật sự ghê gớm.\r\n\r\nĐồng thời, “Chiến tranh tiền tệ - Ai thật sự là người giàu nhất thế giới” còn giúp bạn hiểu thêm nhiều điều, rằng Bill Gates chưa phải là người giàu nhất hành tinh, rằng tỉ lệ tử vong của các tổng thống Mỹ lại cao hơn tỉ lệ tử trận của binh lính Mỹ ngoài chiến trường, hay vì sao phố Wall lại mạo hiểm đổ hết vốn liếng của mình cho việc “đầu tư” vào Hitler.\r\n\r\nLà một cuốn sách làm sửng sốt những ai muốn tìm hiểu về bản chất của tiền tệ, để từ đó nhận ra những hiểm họa tài chính tiềm ẩn nhằm chuẩn bị tâm lý cho một cuộc chiến tiền tệ “không đổ máu”, “Chiến tranh tiền tệ - Ai thật sự là người giàu nhất thế giới” còn phơi bày những âm mưu của các nhà tài phiệt thế giới trong việc tạo ra những cơn “hạn hán”, “bão lũ” về tiền tệ để thu lợi nhuận. Cuốn sách cũng đề cập đến sự phát triển của các định chế tài chính – những cơ cấu được xây dựng nhằm đáp ứng nhu cầu phát triển vũ bão của nền kinh tế toàn cầu.\r\n\r\nGấp cuốn sách lại, có thể bạn đọc sẽ có nhiều tâm trạng khác nhau. Đối với một số người, đó có thể là sự sợ hãi thế lực tài chính quốc tế và cảm giác bất an về sự chi phối của thế lực này. Với số khác thì đó có thể là một cảm giác thú vị khi khám phá ra sự thật trần trụi để từ đó có cách nhìn nhận khác nhằm xây dựng cho mình những kế hoạch đầu tư một cách hiệu quả nhất. Và cho dù bạn có lo sợ hay cảm thấy tò mò, thú vị thì “Chiến tranh tiền tệ - Ai thật sự là người giàu nhất thế giới” cũng là một cuốn sách đáng đọc. Một cuốn sách bổ ích cho các chuyên gia quản lý tài chính, các nhà quản trị doanh nghiệp, các nhà đầu tư nhỏ, các giáo viên giảng dạy về tài chính – ngân hàng cũng như sinh viên các trường kinh tế.', 1, 1, NULL, '2023-05-25 21:11:52', '2023-05-25 21:14:31'),
(18, '34364543242', 'simple', 'Chú Thuật Hồi Chiến - Tập 13: Biến Cố Shibuya - Sấm Rền', 'chu-thuat-hoi-chien-tap-13-bien-co-shibuya-sam-ren', 27000.00, 220.00, 192.00, 2023.00, NULL, 'Gege Akutami', 'Dagon đã biến thành một chú linh đáng sợ…! Dòng nước chảy xiết mang chú lực vô hạn dồn dập tấn công Naobito, Maki, Nanami!! Mặt khác, nhằm lấy lại thể xác Geto, nhóm chú nguyền sư sùng bái anh ta đã đánh thức kẻ không nên dây dưa nhất!?\r\n\r\nSiêu bom tấn JUJUTSU KAISEN tiếp tục bùng nổ tại Việt Nam!!!\r\n\r\nManga bán chạy nhất Nhà xuất bản Kim Đồng năm 2022!!!\r\n\r\n“Chú thuật hồi chiến” – Tác phẩm được kì vọng của dòng truyện SHONEN JUMP!\r\n\r\nSẽ được phát hành với 2 ấn bản song song cho mỗi kì!\r\n\r\nSách có bán tại các kênh online & hệ thống phát hành sách Kim Đồng các cửa hàng, đại lí lớn trên toàn quốc!!', 1, 1, NULL, '2023-05-25 21:19:03', '2023-05-25 21:21:20'),
(19, '343242555', 'simple', 'Thần Đồng Đất Việt 139 - Trạng Thánh Tương Tranh', 'than-dong-dat-viet-139-trang-thanh-tuong-tranh', 8500.00, 69.00, 112.00, 2021.00, NULL, 'Nhiều Tác Giả', 'Thần Đồng Đất Việt 139 - Trạng Thánh Tương Tranh\r\n\r\nTrong Thần Đồng Đất Việt 139 - Trạng Thánh Tương Tranh bộ tứ, kẻ cưỡi ngựa, người thúc ngựa cùng nhau đến làng Thông Thái. Nhưng gặp chuyện chi giữa đàng mà bộ tứ mệt bở hơi tai rồi tranh luận kịch liệt trước bàn thờ Thánh vậy? Các bạn nhớ đón xem Thần Đồng Đất Việt - 139 để biết bất đồng quan điểm chi mà Trạng Tí dám tranh luận với cả bậc thầy được tôn là Thánh nhé! Không chỉ thế, câu chuyện Trạng - Thánh tương tranh còn cho bạn biết thêm vụ “phá án” tuyệt tài của Trạng Tí nữa đó. Thần Đồng Đất Việt là một bộ truyện tranh thiếu nhi nhiều tập của Việt Nam. Truyện lấy bối cảnh là thời Hậu Lê, tuy nhiên những sự kiện diễn ra trong truyện không trùng lặp với những sự kiện xảy ra trên thực tế. Nhưng hầu hết những sự kiện chính xảy ra trong Thần Đồng Đất Việt đều dựa trên những câu truyện, điển tích lịch sử có thật của Việt Nam. Tác phẩm này kể lại những câu chuyện về cuộc đời của Lê Tí, một Trạng Nguyên của Đại Việt cùng với những người bạn thân của cậu là Sửu ẹo, Dần béo và Cả Mẹo. Sự ra đời của Trạng Tí cũng không bình thường. Kiếp trước cậu vốn là một bậc thần tiên có kiến thức uyên bác trên Thiên Đình, sau đó được đầu thai xuống trần gian để giúp đỡ Đại Việt. Mẹ của Tí là bà Hai hậu, sau khi đi cày về mệt mỏi đã ngồi lên một hòn đá để nghỉ ngơi và có mang và sau đó sinh ra cậu.\r\n\r\nTừ nhỏ, Tí đã thể hiện mình là một người con hiếu thảo, ham học và có trí thông minh hơn người. Ngay cả Đồ Kiết, thầy dạy của cậu cũng phải ngạc nhiên về kiến thức của cậu. Ở làng Phan Thị, với khả năng hơn người, cậu cũng đã giúp mẹ, các bạn của mình và những người dân trong làng giải quyết nhiều vấn đề khó khăn. Vượt qua ba kì thi Hương, Hội, Đình một cách xuất sắc, cậu trở thành trạng nguyên nhỏ tuổi nhất của Đại Việt. Sau đó, cậu cũng được Đại Minh công nhận là Lưỡng Quốc Trạng Nguyên. Tí cùng Sửu, Dần và Cả Mẹo cũng đã có công lớn trong việc phò trợ vua Lê chống lại sự xâm lược của Đại Minh và đối phó với các sứ thần mà Đại Minh cử sang. Trong triều đình, cậu là một vị quan thanh liêm chính trực nên được và được công chúa Phương Thìn yêu mến nhưng cũng vì thế mà cậu luôn bị Tể Tướng Tào Hống và những người trong gia đình là hai đứa con ông coi là cái gai trong mắt và tìm mọi cách để hạ nhục cậu, tuy nhiên trong phần lớn các câu chuyện cậu là người chiến thắng. Cũng nhờ tài trí vượt bậc, Trạng Tí được vua tin tưởng giao trọng trách đi sứ Bắc Quốc nhiều lần. Ở đó, Tí cũng gặp phải nhiều khó khăn do vua Bắc Quốc và Vương Thừa Tướng tạo ra nhằm ám hại cậu và làm tổn hại uy tín Đại Việt, thậm chí có lần suýt chút nữa thì thiệt mạng. Tuy đã ra làm quan nhưng đôi lúc cậu vẫn được vua cho phép về quê để chăm sóc mẹ và giúp đỡ dân làng. Và tất nhiên, tài trí và sự giúp đỡ nhiệt tình từ những người bạn tốt đã giúp cậu rất nhiều.', 1, 1, NULL, '2023-05-25 21:21:56', '2023-05-25 21:24:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_attribute_values`
--

CREATE TABLE `product_attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text DEFAULT NULL,
  `parent_product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `product_id`, `category_id`) VALUES
(2, 1, 1),
(16, 12, 1),
(17, 12, 3),
(18, 13, 1),
(19, 13, 3),
(20, 14, 1),
(21, 14, 3),
(22, 15, 1),
(23, 15, 3),
(24, 16, 4),
(25, 17, 4),
(26, 18, 2),
(27, 19, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` text NOT NULL,
  `extra_large` varchar(255) DEFAULT NULL,
  `large` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `small` varchar(255) DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `extra_large`, `large`, `medium`, `small`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 'product/images/so1du3XZs1bhoS4a46CX3kSlco4CXopcTcu2kUEi.jpg', NULL, NULL, NULL, NULL, 1, '2023-05-24 19:10:55', '2023-05-24 19:10:55'),
(4, 'product/images/cgHH8HdXsh4oywxW5UsmWN7wdoIpOESy8jO2tO7Q.jpg', NULL, NULL, NULL, NULL, 1, '2023-05-24 19:12:20', '2023-05-24 19:12:20'),
(9, 'product/images/3Vfj1kxBXD71FaiUYPkI63vLQwQFyQxQ6XDsyptF.jpg', NULL, NULL, NULL, NULL, 12, '2023-05-25 19:49:36', '2023-05-25 19:49:36'),
(10, 'product/images/VCNR548xMMvopqo4JaGZWaCd7kvXrWQi6R9Cfr1x.jpg', NULL, NULL, NULL, NULL, 12, '2023-05-25 19:49:51', '2023-05-25 19:49:51'),
(11, 'product/images/2DMvzHhnVRQMpb0yFgkE8vz5qM6asjVWK2bHiUN5.jpg', NULL, NULL, NULL, NULL, 12, '2023-05-25 19:49:58', '2023-05-25 19:49:58'),
(13, 'product/images/MmuNHvgRVWMwxGx2HLStGnCWqUi6j8SxhDtXPMnZ.jpg', NULL, NULL, NULL, NULL, 13, '2023-05-25 20:11:16', '2023-05-25 20:11:16'),
(14, 'product/images/3onlymekLKypn5BOmICHBr63qED0NPQjjQmlEHOl.jpg', NULL, NULL, NULL, NULL, 13, '2023-05-25 20:11:24', '2023-05-25 20:11:24'),
(15, 'product/images/xXWt21V2VvEZmDO1HBBLhPeZ3ALo1OW1wMPEweNC.jpg', NULL, NULL, NULL, NULL, 13, '2023-05-25 20:11:30', '2023-05-25 20:11:30'),
(16, 'product/images/9G0buLCuhq3KGoGDkFFdzx5BRPnlYxpK1zBTFJBH.jpg', NULL, NULL, NULL, NULL, 14, '2023-05-25 20:17:46', '2023-05-25 20:17:46'),
(17, 'product/images/crYbS653uTTf6BzQ2TNf0S9e3sHM3bkTYNJ0WONI.png', NULL, NULL, NULL, NULL, 14, '2023-05-25 20:17:52', '2023-05-25 20:17:52'),
(18, 'product/images/2t4u6zXR003Q9nqHZVZs1XHhZFKBmkRM4iG68jRp.jpg', NULL, NULL, NULL, NULL, 15, '2023-05-25 20:23:04', '2023-05-25 20:23:04'),
(19, 'product/images/QepNV6VIM9kgcjvwf7lM9qMs5X5yE0xYoBuZmzhV.jpg', NULL, NULL, NULL, NULL, 15, '2023-05-25 20:23:11', '2023-05-25 20:23:11'),
(20, 'product/images/pSU0d6Uklk4mW61gbt1oulLeAlRsXOTh4Hpr5ZvI.jpg', NULL, NULL, NULL, NULL, 15, '2023-05-25 20:23:19', '2023-05-25 20:23:19'),
(21, 'product/images/GyurOOLE3VAMGmGFBsIwAiPuivAkhKcF8LIc6tU5.jpg', NULL, NULL, NULL, NULL, 16, '2023-05-25 21:10:04', '2023-05-25 21:10:04'),
(22, 'product/images/Ruogurufssy6oqQMMY1XCdvAsv5mNQ831LJHUtl3.jpg', NULL, NULL, NULL, NULL, 16, '2023-05-25 21:10:09', '2023-05-25 21:10:09'),
(23, 'product/images/3IempYYIffzhO6sp97w2F1AFSDDvvpZKv6vkIb2w.jpg', NULL, NULL, NULL, NULL, 16, '2023-05-25 21:10:14', '2023-05-25 21:10:14'),
(24, 'product/images/eW60eKsWIgLSPfQrTRpsippH7p396Qy9kYW02evw.jpg', NULL, NULL, NULL, NULL, 17, '2023-05-25 21:12:14', '2023-05-25 21:12:14'),
(25, 'product/images/L1XzZjmn706sSquCNw5s9sO3vgvuBWXAF2cdgg1i.jpg', NULL, NULL, NULL, NULL, 17, '2023-05-25 21:12:19', '2023-05-25 21:12:19'),
(27, 'product/images/oxUgekl0X6hKkIlpm8JItJKEuG4eiy7a7xbeHxKg.jpg', NULL, NULL, NULL, NULL, 18, '2023-05-25 21:20:04', '2023-05-25 21:20:04'),
(28, 'product/images/MDoPWfsalopcey2iA1ZfWbIWUmv8wfR8Qh6UpOO7.jpg', NULL, NULL, NULL, NULL, 18, '2023-05-25 21:20:09', '2023-05-25 21:20:09'),
(29, 'product/images/2R6iDmPg3zyTw8pTdXnAjRSCzc84vutC8CSu0M4g.jpg', NULL, NULL, NULL, NULL, 19, '2023-05-25 21:22:57', '2023-05-25 21:22:57'),
(30, 'product/images/LFn6JfqVBRFaQdFTT7qSg1KXiYww4jqjzqYNPsSK.jpg', NULL, NULL, NULL, NULL, 19, '2023-05-25 21:23:03', '2023-05-25 21:23:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_inventories`
--

CREATE TABLE `product_inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_inventories`
--

INSERT INTO `product_inventories` (`id`, `qty`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 12, 1, '2023-05-23 02:33:13', '2023-05-26 01:12:59'),
(6, 50, 12, '2023-05-25 03:05:47', '2023-05-25 19:43:27'),
(7, 20, 13, '2023-05-25 20:14:05', '2023-05-25 20:14:05'),
(8, 20, 14, '2023-05-25 20:20:11', '2023-05-25 20:20:11'),
(9, 30, 15, '2023-05-25 20:24:53', '2023-05-25 20:24:53'),
(10, 20, 16, '2023-05-25 21:09:34', '2023-05-25 21:09:34'),
(11, 20, 17, '2023-05-25 21:14:31', '2023-05-25 21:14:31'),
(12, 50, 18, '2023-05-25 21:21:20', '2023-05-25 21:21:20'),
(13, 50, 19, '2023-05-25 21:24:15', '2023-05-25 21:24:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `track_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `province_id` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `shipments`
--

INSERT INTO `shipments` (`id`, `track_number`, `status`, `total_qty`, `total_weight`, `first_name`, `last_name`, `address1`, `address2`, `phone`, `email`, `city_id`, `province_id`, `postcode`, `shipped_at`, `user_id`, `order_id`, `shipped_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, '1313231', 'shipped', 1, 1056, 'admin', '1', 'quảng nam', '21-5-2002', '0962367145', 'admin@admin.com', NULL, '0', 123, '2023-05-25 15:00:41', 1, 5, 1, NULL, '2023-05-25 04:20:26', '2023-05-25 08:00:41'),
(7, '21331321', 'shipped', 1, 50, 'tuong', 'Pham Khac Tuong', 'quảng nam', 'fdsafsd', '0962364523', 'tuong@gmail.com', 'dfs', 'dsa', 243242, '2023-05-25 15:01:26', 2, 17, 1, NULL, '2023-05-25 07:33:30', '2023-05-25 08:01:26'),
(8, '324234234', 'shipped', 1, 1056, 'tuong', 'Pham Khac Tuong', 'quảng nam', 'fdsafsd', '0962364523', 'tuong@gmail.com', 'dfs', 'dsa', 243242, '2023-05-25 15:17:42', 2, 18, 1, NULL, '2023-05-25 08:05:09', '2023-05-25 08:17:42'),
(9, '1233455', 'shipped', 1, 50, 'tuong', 'Pham Khac Tuong', 'quảng nam', 'fdsafsd', '0962364523', 'tuong@gmail.com', 'dfs', 'dsa', 243242, '2023-05-25 16:03:54', 2, 19, 1, NULL, '2023-05-25 08:22:16', '2023-05-25 09:03:54'),
(10, NULL, 'pending', 3, 3168, 'tuong', 'Pham Khac Tuong', 'quảng nam', 'fdsafsd', '0962364523', 'tuong@gmail.com', 'dfs', 'dsa', 243242, NULL, 2, 20, NULL, NULL, '2023-05-25 08:24:14', '2023-05-25 08:24:14'),
(11, NULL, 'pending', 3, 2162, 'tuong', 'Pham Khac Tuong', 'quảng nam', 'fdsafsd', '0962364523', 'tuong@gmail.com', 'dfs', 'dsa', 243242, NULL, 2, 21, NULL, NULL, '2023-05-25 08:26:32', '2023-05-25 08:26:32'),
(12, '2312133', 'shipped', 1, 1056, 'admin', 'Quản trị viên', 'quảng nam', 'fdsafsd', '0962367145', 'admin@admin.com', 'dfs', 'dsa', 123, '2023-05-26 03:29:31', 1, 22, 1, NULL, '2023-05-25 20:29:00', '2023-05-25 20:29:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `body` text DEFAULT NULL,
  `path` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `title`, `url`, `position`, `status`, `body`, `path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mỗi ngày một cuốn sách', 'moingaymotcuonsach', 14, 'active', 'Tận hưởng hành trình khám phá tri thức hằng ngày với một cuốn sách mới, mở ra cánh cửa kiến thức đa dạng, sự phát triển cá nhân và niềm vui vô tận.', 'assets/slides/qCegTDSN1G4HZkI9JwIYr22IVTiPbJYuUUcp0t2Y.jpg', 1, '2023-05-23 02:18:28', '2023-05-24 23:06:16'),
(2, 'Tri thức vô tận', '#', 12, 'active', 'Đặt chân vào thế giới của tri thức vô tận, khám phá những khía cạnh mới, mở rộng tầm hiểu biết và tận hưởng sự thăng hoa trí tuệ.', 'assets/slides/XUeijK8WBu0D81tuNZpIWVkTJjCgT6fa84rYxbFo.jpg', 1, '2023-05-24 18:39:36', '2023-05-24 23:05:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `province_id` varchar(110) DEFAULT NULL,
  `city_id` varchar(110) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `phone`, `address1`, `address2`, `province_id`, `city_id`, `postcode`, `is_admin`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị viên', 'admin@admin.com', NULL, '$2y$10$Uo7M/4xPBOsAmNVWyqLEO.NxbmjFHpZ7a1/1a7odvnTIEXXDOLnQ.', 'Hh5gFOrfbYpys0eZwjKTErom8gHleNnUEmx6T8RC5LWWRWnhuyDtOlV6ERNO', '0962367145', 'quảng nam', '21-5-2002', '0', NULL, 123, 1, '2023-05-23 01:46:19', '2023-05-25 09:32:01'),
(2, 'tuong', 'Phạm Khắc Tưởng', 'tuong@gmail.com', NULL, '$2y$10$hJZqjlOwZcHkfke15muIPOdNoiPdDnR0IUCueaa7nNp3K4a790VSe', 'VtjC8hMb5Cxw5xKyVDz4ut6aUVM9vuzeeYy7hltR2eRdXWKdqkfWna8hgQkC', '0962364523', 'quảng nam', NULL, '0', '0', 243242, 0, '2023-05-24 21:35:48', '2023-05-25 09:07:27'),
(3, 'tuong', 'phtuong', 'tuongdang297@gmail.com', NULL, '$2y$10$cuxTGE3B6U0UyuVuNtYuROhUkAtdnLGHeiiml/DQ3w7oWS7UPXKnu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '2023-05-26 00:09:15', '2023-05-26 00:09:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wish_lists`
--

CREATE TABLE `wish_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `wish_lists`
--

INSERT INTO `wish_lists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 2, 1, '2023-05-25 10:09:08', '2023-05-25 10:09:08'),
(9, 1, 1, '2023-05-25 19:58:30', '2023-05-25 19:58:30'),
(12, 2, 13, '2023-05-25 23:43:12', '2023-05-25 23:43:12'),
(13, 1, 13, '2023-05-26 01:32:18', '2023-05-26 01:32:18'),
(14, 1, 12, '2023-05-26 01:41:34', '2023-05-26 01:41:34');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`),
  ADD KEY `orders_payment_token_index` (`payment_token`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_sku_index` (`sku`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);
ALTER TABLE `products` ADD FULLTEXT KEY `search` (`name`,`slug`,`short_description`,`description`);

--
-- Chỉ mục cho bảng `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_attribute_values_parent_product_id_foreign` (`parent_product_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_inventories_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slides_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wish_lists_product_id_foreign` (`product_id`),
  ADD KEY `wish_lists_user_id_product_id_index` (`user_id`,`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `product_inventories`
--
ALTER TABLE `product_inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `wish_lists`
--
ALTER TABLE `wish_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attribute_options`
--
ALTER TABLE `attribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `product_attribute_values`
--
ALTER TABLE `product_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`),
  ADD CONSTRAINT `product_attribute_values_parent_product_id_foreign` FOREIGN KEY (`parent_product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_inventories`
--
ALTER TABLE `product_inventories`
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `slides`
--
ALTER TABLE `slides`
  ADD CONSTRAINT `slides_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `wish_lists`
--
ALTER TABLE `wish_lists`
  ADD CONSTRAINT `wish_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `wish_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
