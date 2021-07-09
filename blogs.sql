-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 09, 2021 lúc 05:58 AM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blogs`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `category_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `category_post`
--

INSERT INTO `category_post` (`id_category`, `title`, `category_status`, `created_at`, `updated_at`) VALUES
(10, 'Kinh nghiệm du lịch', '1', NULL, NULL),
(11, 'Dụng cụ du lịch', '1', NULL, NULL),
(12, 'Cẩm nang du lịch', '1', NULL, NULL),
(13, 'Ẩm thực', '1', NULL, NULL),
(14, 'Khách sạn', '1', NULL, NULL),
(15, 'Tin tức du lịch', '1', NULL, NULL),
(16, 'Danh lam thắng cảnh', '1', NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_07_06_094137_category_post', 2),
(5, '2021_07_06_094457_post', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `id_post` bigint(20) UNSIGNED NOT NULL,
  `title_post` varchar(255) NOT NULL,
  `image_post` varchar(100) NOT NULL,
  `content_post` longtext NOT NULL,
  `summary_post` text NOT NULL,
  `id_category` int(11) DEFAULT NULL,
  `status_post` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`id_post`, `title_post`, `image_post`, `content_post`, `summary_post`, `id_category`, `status_post`, `created_at`, `updated_at`) VALUES
(5, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 1, NULL, NULL),
(6, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 10, 0, NULL, NULL),
(8, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 10, 1, NULL, NULL),
(9, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 11, 0, NULL, NULL),
(10, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 11, 1, NULL, NULL),
(11, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 11, 0, NULL, NULL),
(12, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 12, 1, NULL, NULL),
(13, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 12, 0, NULL, NULL),
(14, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 12, 1, NULL, NULL),
(15, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 13, 0, NULL, NULL),
(16, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 13, 1, NULL, NULL),
(17, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 13, 0, NULL, NULL),
(18, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 14, 1, NULL, NULL),
(19, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 14, 0, NULL, NULL),
(20, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 14, 1, NULL, NULL),
(21, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 15, 0, NULL, NULL),
(22, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 15, 0, NULL, NULL),
(23, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 15, 1, NULL, NULL),
(24, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 16, 0, NULL, NULL),
(25, 'Du lịch Thiên đường với người yêu', 'strawberry.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 16, 1, NULL, NULL),
(26, 'Du lịch Huế 1 mình vào nửa đêm', 'love.png', 'Du lịch Huế 1 mình vào nửa đêm', 'Du lịch Huế 1 mình vào nửa đêm', 16, 0, NULL, NULL),
(27, 'Review tour Hà Giang 2 ngày – Công ty Hà Giang trẻ', 'du lịch thiên đường.jpg', '<h2>Trải nghiệm độc đ&aacute;o trong chuyến đi</h2>\r\n\r\n<ul>\r\n	<li>Điểm thăm quan đặc sắc, ti&ecirc;u biểu cho vẻ đẹp của thi&ecirc;n nhi&ecirc;n v&agrave; con người H&agrave; Giang</li>\r\n	<li>Hướng dẫn vi&ecirc;n bản địa am hiểu phong tục tập qu&aacute;n địa phương</li>\r\n</ul>\r\n\r\n<h2>Những ưu điểm của tour H&agrave; Giang so với đi tự t&uacute;c</h2>\r\n\r\n<ul>\r\n	<li>Kh&ocirc;ng phải tự l&aacute;i xe căng thẳng tr&ecirc;n đường đ&egrave;o dốc</li>\r\n	<li>Tiết kiệm chi ph&iacute; (v&igrave; tour đ&atilde; được sắp xếp tối ưu)</li>\r\n	<li>Tiết kiệm thời gian chuẩn bị lịch tr&igrave;nh ăn ở đi lại cho chuyến đi</li>\r\n	<li>Lịch tr&igrave;nh 2 ng&agrave;y hợp l&yacute; với những người bận rộn, chỉ sắp xếp đi được v&agrave;o cuối tuần</li>\r\n	<li>Hướng dẫn vi&ecirc;n giới thiệu chi tiết về c&aacute;c điểm đến, lịch sử, văn h&oacute;a v&ugrave;ng miền</li>\r\n	<li>Được giao lưu kết bạn với nhiều người mới</li>\r\n</ul>\r\n\r\n<h2>Tại sao m&igrave;nh chọn H&agrave; Giang Trẻ</h2>\r\n\r\n<p>Sau qu&aacute; tr&igrave;nh t&igrave;m hiểu m&igrave;nh đ&atilde; quyết định chọn tour của H&agrave; Giang Trẻ v&igrave; những th&ocirc;ng điệp bảo vệ m&ocirc;i trường, bảo vệ văn h&oacute;a bản địa, cũng như c&aacute;c hướng dẫn vi&ecirc;n người d&acirc;n tộc được H&agrave; Giang Trẻ đ&agrave;o tạo theo hướng chuy&ecirc;n nghiệp.</p>\r\n\r\n<p>Th&ocirc;ng tin chi tiết về c&aacute;c tour của H&agrave; Giang Trẻ c&aacute;c bạn c&oacute; thể tham khảo tại fanpage:</p>\r\n\r\n<p><a href=\"https://hagiangtre.vn/tour-ha-giang-2-ngay-1-dem/\">https://hagiangtre.vn/tour-ha-giang-2-ngay-1-dem/</a></p>\r\n\r\n<p><a href=\"https://www.facebook.com/phontooctourist/\" rel=\"nofollow\">https://www.facebook.com/phontooctourist/</a></p>\r\n\r\n<h2>Lịch tr&igrave;nh chi tiết&nbsp;du lịch H&agrave; Giang&nbsp;2 ng&agrave;y</h2>\r\n\r\n<h3>Ng&agrave;y 1: H&agrave; Nội &ndash; H&agrave; Giang &ndash; Quản Bạ &ndash;&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/6-ly-do-ban-nen-den-cot-co-lung-cu-1-lan-trong-doi.html\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">Lũng C&uacute;</a>&nbsp;&ndash; Đồng Văn</h3>\r\n\r\n<p>Chuyến xe của m&igrave;nh xuất ph&aacute;t l&uacute;c 9h tối từ bến xe Mỹ Đ&igrave;nh, nếu ở trung t&acirc;m th&agrave;nh phố sẽ c&oacute; xe trung chuyển tới đ&oacute;n tận nh&agrave;.&nbsp;<strong><em>(Ngo&agrave;i ra nếu bạn n&agrave;o hạ c&aacute;nh tại s&acirc;n bay Nội B&agrave;i c&oacute; thể bắt xe &ocirc;m hoặc taxi ra Ng&atilde; 3 Kim Anh c&aacute;ch đ&oacute; khoảng 2km để đ&oacute;n xe l&ecirc;n H&agrave; Giang)</em></strong>.</p>\r\n\r\n<p>Đ&uacute;ng 5h s&aacute;ng ng&agrave;y h&ocirc;m sau xe đ&atilde; tới th&agrave;nh phố H&agrave; Giang. C&ocirc;ng ty tour rất chu đ&aacute;o sắp xếp cho đo&agrave;n ph&ograve;ng kh&aacute;ch sạn để mọi người c&oacute; thể nghỉ ngơi, tắm rửa trước chuyến đi.</p>\r\n\r\n<p>Do cả đo&agrave;n đ&atilde; thống nhất xuất ph&aacute;t từ sớm n&ecirc;n 6h xe tới đ&oacute;n mọi người để bắt đầu h&agrave;nh tr&igrave;nh. Sau khi d&ugrave;ng bữa s&aacute;ng, cả đo&agrave;n di chuyển về l&agrave;ng văn h&oacute;a dệt thổ cẩm Lũng T&aacute;m của người T&agrave;y. Tại đ&acirc;y mọi người được thực tế chứng kiến sự kỳ c&ocirc;ng để c&oacute; được những bộ quần &aacute;o từ vải lanh, cả đo&agrave;n cũng được trải nghiệm c&aacute;c c&ocirc;ng đoạn nhỏ trong qu&aacute; tr&igrave;nh dệt hay trang tr&iacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/02/du-lich-ha-giang.jpg\" /></p>\r\n\r\n<p>L&agrave;ng Dệt thổ cẩm &ndash; Ảnh b&agrave;i : review tour h&agrave; giang</p>\r\n\r\n<p>Sau đ&oacute; cả đo&agrave;n gh&eacute; thăm nh&agrave; trưng b&agrave;y v&agrave; giới thiệu sản phẩm từ vải lanh. Mọi người được thử những bộ quần &aacute;o với m&agrave;u sắc ấn tượng, đặc trưng cho c&aacute;c d&acirc;n tộc ở H&agrave; Giang, kh&ocirc;ng chỉ thu h&uacute;t kh&aacute;ch du lịch Việt Nam m&agrave; c&aacute;c bạn nước ngo&agrave;i cũng rất y&ecirc;u th&iacute;ch c&aacute;c mẫu m&atilde; n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/05/nha-pao-du-lich-ha-giang-533x800.jpg\" /></p>\r\n\r\n<p>Đo&agrave;n tiếp tục di chuyển tr&ecirc;n con đường Hạnh Ph&uacute;c, bạn HDV tranh thủ giới thiệu về lịch sử của con đường n&agrave;y.</p>\r\n\r\n<p>&ldquo;Với chiều d&agrave;i 185 km, con đường mang t&ecirc;n Hạnh Ph&uacute;c được nối từ th&agrave;nh phố H&agrave; Giang xuy&ecirc;n cao nguy&ecirc;n đ&aacute; Đồng Văn l&agrave; con đường được khởi đầu v&agrave; th&agrave;nh h&igrave;nh từ c&ocirc;ng sức v&agrave; cả m&aacute;u xương của h&agrave;ng vạn thanh ni&ecirc;n xung phong từ những năm 50- 60 thế kỷ trước. Con đường đ&atilde; đem lại cuộc sống no ấm cho đồng b&agrave;o c&aacute;c d&acirc;n tộc tr&ecirc;n cao nguy&ecirc;n đ&aacute; H&agrave; Giang, thể hiện sức mạnh của con người trước những khắc nghiệt của thi&ecirc;n nhi&ecirc;n.&rdquo;</p>\r\n\r\n<p>B&aacute;c t&agrave;i cũng rất t&acirc;m l&yacute; khi cho cả đo&agrave;n được dừng tại những điểm c&oacute; view đẹp như cổng trời Quản Bạ, dốc Thẩm M&atilde;,&hellip; để mọi người được tận hưởng khung cảnh thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ tuyệt vời của H&agrave; Giang. Đặc biệt ở dốc Thẩm M&atilde; c&oacute; rất nhiều em nhỏ kho&aacute;c g&ugrave;i hoa xinh xắn, vui vẻ chụp h&igrave;nh với du kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"https://b-f34-zpg.zdn.vn/782802556598724845/aab0324a5a50ab0ef241.jpg\" /></p>\r\n\r\n<p><em>Những em b&eacute; tr&ecirc;n dốc Thẩm M&atilde;</em>&nbsp;&ndash; Ảnh b&agrave;i : review tour h&agrave; giang</p>\r\n\r\n<p>Một trong những điểm nhấn của h&agrave;nh tr&igrave;nh trong ng&agrave;y h&ocirc;m nay ch&iacute;nh l&agrave; những c&aacute;nh đồng&nbsp;<strong>hoa Tam gi&aacute;c mạch</strong>. V&agrave;o th&aacute;ng 11 hằng năm hoa Tam gi&aacute;c mạch t&ocirc; sắc khắp c&aacute;c nẻo đường của miền cực Bắc lu&ocirc;n thu h&uacute;t h&agrave;ng ngh&igrave;n du kh&aacute;ch từ khắp nơi tới thưởng thức. Tr&ecirc;n đường c&oacute; rất nhiều c&aacute;nh đồng hoa, nhưng thời điểm m&igrave;nh đi th&igrave; c&aacute;nh đồng ở S&ugrave;ng Lả đang nở rộ nhất. Cả đo&agrave;n đ&atilde; c&oacute; những tấm ảnh đ&aacute;ng nhớ tại đ&acirc;y.</p>\r\n\r\n<p>Gần những vườn hoa Tam gi&aacute;c mạch trong thung lũng S&ugrave;ng Lả c&ograve;n c&oacute; một điểm thăm quan th&uacute; vị kh&aacute;ch, đ&oacute; l&agrave; nh&agrave; của Pao. Năm b&ecirc;n trong l&agrave;ng văn h&oacute;a Lũng Cẩm, nơi đ&acirc;y đ&atilde; từng l&agrave; phim trường của bộ phim &ldquo;Chuyện của Pao&rdquo;. Đ&acirc;y l&agrave; ng&ocirc;i nh&agrave; của &ocirc;ng Mua S&uacute;a P&aacute;o. Đ&acirc;y l&agrave; một t&agrave;i sản thuộc tầng lớp qu&yacute; tộc xưa của đồng b&agrave;o M&ocirc;ng c&oacute; tuổi đời gần 100 năm. Nhờ bạn HDV bản địa, cả đo&agrave;n đ&atilde; được n&oacute;i chuyện với chủ nh&agrave; v&agrave; đi v&agrave;o ph&iacute;a b&ecirc;n trong c&aacute;c ph&ograve;ng để hiểu r&otilde; hơn về cuộc sống cũng như c&aacute;c tập tục của người M&ocirc;ng!</p>\r\n\r\n<p>Xe tiếp tục tiến thẳng về&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/6-ly-do-ban-nen-den-cot-co-lung-cu-1-lan-trong-doi.html\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">cột cờ Lũng C&uacute;,</a>&nbsp;địa điểm thi&ecirc;ng li&ecirc;ng ở cực Bắc đối với mỗi người Việt Nam. Tuy l&uacute;c n&agrave;y trời đ&atilde; m&ugrave; sương nhưng b&aacute;c t&agrave;i vẫn vững tay l&aacute;i đưa cả đo&agrave;n kịp tới cột cờ trước khi trời tối.</p>\r\n\r\n<p><img alt=\"\" src=\"https://b-f23-zpg.zdn.vn/3752183016759010394/3cf3daa3c9b338ed61a2.jpg\" /></p>\r\n\r\n<p><em>Bạn Thiện của&nbsp;<a href=\"https://hiquynhon.com/\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">hiquynhon.com</a>&nbsp;c&ugrave;ng đo&agrave;n chụp h&igrave;nh tại cột cờ Lũng C&uacute;</em>&nbsp;&ndash; Ảnh b&agrave;i : review tour H&agrave; Giang</p>\r\n\r\n<p>Buổi tối về tới&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/pho-co-dong-van-an-gi-choi-gi-trong-2-ngay-day.html\" rel=\"noreferrer noopener\" target=\"_blank\">thị trấn Đồng Văn</a>, sau khi check in ở kh&aacute;ch sạn L&acirc;m T&ugrave;ng v&agrave; nghỉ ngơi một l&uacute;c. Cả đo&agrave;n đ&atilde; được thưởng thức một bữa tối v&ocirc; c&ugrave;ng đ&aacute;ng nhớ tại nh&agrave; h&agrave;ng Ethnic House ngay trung t&acirc;m phố cổ Đồng Văn, với những m&oacute;n ăn đặc trưng của v&ugrave;ng đất n&agrave;y như lẩu g&agrave; đen, thắng cố, m&egrave;n m&eacute;n,&hellip; được chế biến rất hợp khẩu vị với du kh&aacute;ch. Đặc biệt c&ograve;n c&oacute; chương tr&igrave;nh biểu diễn m&uacute;a kết hợp thổi kh&egrave;n của c&aacute;c nghệ nh&acirc;n người M&ocirc;ng khiến tất cả đo&agrave;n đều cảm thấy m&atilde;n nh&atilde;n v&agrave; v&ocirc; c&ugrave;ng ấn tượng.</p>\r\n\r\n<p><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/02/ha-giang-tre-tour.jpg\" /><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/02/ha-giang-tre-tour.jpg\" /></p>\r\n\r\n<p>Đo&agrave;n giao lưu với người d&acirc;n địa phương &ndash; Ảnh b&agrave;i : review tour H&agrave; Giang</p>\r\n\r\n<p>Sau bữa tối cả đo&agrave;n dạo quanh phố cổ thưởng thức 1 số m&oacute;n địa phương như thắng dền, khoai mật nướng,&hellip;</p>\r\n\r\n<h3>Ng&agrave;y 2: M&atilde; P&igrave; L&egrave;ng &ndash;&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/song-nho-que-3-goc-chup-anh-sieu-chat.html\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">S&ocirc;ng Nho Quế</a>&nbsp;&ndash; Dinh nh&agrave; Vương &ndash; H&agrave; Giang &ndash; H&agrave; Nội</h3>\r\n\r\n<p>Cả đo&agrave;n dậy sớm để kịp để săn m&acirc;y tr&ecirc;n đỉnh đ&egrave;o M&atilde; P&igrave; L&egrave;ng. C&ocirc;ng ty tour đ&atilde; chuẩn bị chu đ&aacute;o cho mỗi người một suất x&ocirc;i ngũ sắc cho bữa s&aacute;ng. Từ&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/pho-co-dong-van-an-gi-choi-gi-trong-2-ngay-day.html\" rel=\"noreferrer noopener\" target=\"_blank\">Đồng Văn</a>&nbsp;l&ecirc;n đỉnh đ&egrave;o khoảng gần 20km, nhiều l&uacute;c cả đo&agrave;n phải ồ l&ecirc;n v&igrave; khung cảnh h&ugrave;ng vĩ đến cho&aacute;ng ngợp của một trong tứ đại đỉnh đ&egrave;o của Việt Nam.</p>\r\n\r\n<p><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/02/nhat-rac-o-ha-giang.jpg\" /></p>\r\n\r\n<p>Sau đ&oacute; cả đo&agrave;n đi xuống s&ocirc;ng Nho Quế bằng lối đi bộ. Một trong những điểm m&igrave;nh cảm thấy ấn tượng trong tour của H&agrave; Giang Trẻ ch&iacute;nh l&agrave; th&ocirc;ng điệp bảo vệ m&ocirc;i trường, ngo&agrave;i việc kh&ocirc;ng sử dụng t&uacute;i nylon trong suốt qu&aacute; tr&igrave;nh tham gia tour, cả đo&agrave;n c&ograve;n c&oacute; hoạt động nhặt r&aacute;c tr&ecirc;n đường xuống s&ocirc;ng Nho Quế, hi vọng việc n&agrave;y gi&uacute;p cho du kh&aacute;ch c&oacute; &yacute; thức bảo vệ m&ocirc;i trường hơn!</p>\r\n\r\n<p><a href=\"https://toidi.net/diem-den-trong-nuoc/song-nho-que-3-goc-chup-anh-sieu-chat.html\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">D&ograve;ng s&ocirc;ng Nho Quế</a>&nbsp;trong xanh v&agrave; hẻm Tu Sản h&ugrave;ng vĩ l&agrave; một điểm đến m&agrave; chắc chắn ai tới H&agrave; Giang cũng phải trải nghiệm. Tại đ&acirc;y mọi người c&oacute; thể chụp ở bất cứ g&oacute;c n&agrave;o cũng sẽ c&oacute; một bức ảnh đẹp. Cả đo&agrave;n c&ograve;n được leo l&ecirc;n mỏm đ&aacute; để chứng kiến sự h&ugrave;ng vĩ của d&ograve;ng s&ocirc;ng v&agrave; thưởng thức tiếng s&aacute;o tuyệt vời của bạn HDV Ly M&iacute; S&igrave;nh.</p>\r\n\r\n<p>Sau đ&oacute; xe m&aacute;y của d&acirc;n bản địa đ&oacute;n mọi người trong đo&agrave;n về lại đ&egrave;o M&atilde; P&igrave; L&egrave;ng. Đi qua những kh&uacute;c cua ngoằn ngo&egrave;o đầy ngoạn mục d&agrave;i hơn 7km, ai cũng cảm thấy hưng phấn v&agrave; th&uacute; vị.</p>\r\n\r\n<p>Cả đo&agrave;n về lại&nbsp;<a href=\"https://toidi.net/diem-den-trong-nuoc/pho-co-dong-van-an-gi-choi-gi-trong-2-ngay-day.html\" rel=\"noreferrer noopener\" target=\"_blank\">phố cổ Đồng Văn</a>&nbsp;để thưởng thức bữa trưa ở nh&agrave; h&agrave;ng Hải Hiền. C&aacute;c m&oacute;n tại đ&acirc;y cũng rất vừa miệng v&agrave; đặc trưng hương vị miền n&uacute;i ph&iacute;a Bắc như lạp xưởng, măng tr&uacute;c x&agrave;o, c&aacute; suối chi&ecirc;n,&hellip;</p>\r\n\r\n<p>Sau bữa trưa xe đưa đo&agrave;n di chuyển tới dinh nh&agrave; Vương. Dinh thự c&oacute; tuổi đời gần 100 năm do vua M&egrave;o Vương Ch&iacute;nh Đức thu&ecirc; thợ giỏi v&agrave; h&agrave;ng vạn nh&acirc;n c&ocirc;ng x&acirc;y dựng trong 9 năm, tốn 15 vạn đồng bạc trắng Đ&ocirc;ng Dương, tương đương 150 tỷ đồng. Đ&acirc;y l&agrave; một trong những c&ocirc;ng tr&igrave;nh kiến tr&uacute;c đặc sắc nhất của tỉnh H&agrave; Giang. Bạn HDV cũng gi&uacute;p m&igrave;nh hiểu hơn nhiều về sự kỳ vĩ của dinh v&agrave; sự nghiệp d&ograve;ng họ Vương.</p>\r\n\r\n<p><img alt=\"\" src=\"https://toidi.net/wp-content/uploads/2021/02/nha-ho-vuong.jpg\" /></p>\r\n\r\n<p>Nh&agrave; Họ Vương</p>\r\n\r\n<p>Kết th&uacute;c chuyến thăm quan dinh Nh&agrave; Vương cả đo&agrave;n di chuyển về lại th&agrave;nh phố H&agrave; Giang để thưởng thức bữa tối với c&aacute;c m&oacute;n mới lạ như canh c&aacute; lăng, ếch chi&ecirc;n gi&ograve;n,&hellip; cũng những lời cảm ơn ấm &aacute;p t&igrave;nh người v&agrave; hẹn gặp lại nhau trong chuyến đi gần nhất!!!</p>\r\n\r\n<p>Đ&uacute;ng 9h tối xe tới đ&oacute;n mọi người về lại H&agrave; Nội, cả đo&agrave;n ai cũng lưu luyến về cảnh sắc cũng như con người H&agrave; Giang. Đặc biệt l&agrave; những trải nghiệm độc đ&aacute;o m&agrave; chỉ H&agrave; Giang Trẻ mới c&oacute; thể đem lại!!!</p>\r\n\r\n<p>C&aacute;c bạn c&oacute; thể xem th&ecirc;m một số th&ocirc;ng tin về tour H&agrave; Giang tại c&ocirc;ng ty H&agrave; Giang Trẻ :&nbsp;<a href=\"https://hagiangtre.vn/tour-ha-giang-2-ngay-1-dem/\">https://hagiangtre.vn/tour-ha-giang-2-ngay-1-dem/</a></p>', '<p>Review tour H&agrave; Giang l&agrave; b&agrave;i viết chia sẻ lại 1 số trải nghiệm trong qu&aacute; tr&igrave;nh đi tour H&agrave; Giang do c&ocirc;ng ty H&agrave; Giang trẻ tổ chức. H&agrave; Giang l&agrave; một v&ugrave;ng đất tuyệt vời để kh&aacute;m ph&aacute; tr&ecirc;n những cung đường thi&ecirc;n nhi&ecirc;n h&ugrave;ng vĩ. M&igrave;nh đ&atilde; c&oacute; cơ hội tới H&agrave; Giang trong c&aacute;c chuyến đi tự t&uacute;c, tuy nhi&ecirc;n lần n&agrave;y m&igrave;nh quyết định chọn dịch vụ tour của<strong>&nbsp;H&agrave; Giang Trẻ&nbsp;</strong>để c&oacute; th&ecirc;m trải nghiệm v&agrave; chia sẻ từ những người địa phương, gi&uacute;p m&igrave;nh hiểu s&acirc;u sắc hơn về văn h&oacute;a, phong tục của H&agrave; Giang.</p>', 10, 1, NULL, NULL),
(28, 'dsnbsahjdshjhshjahdshjkad', 'gấu 2.jpg', '<p>hjgsdhjgasjhdgashjkdgshjkagdhjkasgd</p>', '<p>sdjkghdhajgshjagdhjasgdkhjsaghjkdghjkasgjkhdghjksdgshjkagdh jsdhhjsadhjsad</p>\r\n\r\n<p>sdkshdjksahdjkhsdak</p>\r\n\r\n<p>sdksajdklsjdklasd</p>\r\n\r\n<p>sdashdjksadklm</p>', 10, 1, NULL, NULL),
(29, 'sdasdassd', 'du lịch 3.jpg', '<p>H&ocirc;m nay trời nắng qu&aacute;</p>', '<p>djasghdhjgsajdgashjgdsa</p>', 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Buahodinh', 'tranvannhantchl@gmail.com', NULL, '$2y$10$HEyIbg/xkPuKe1xgQcNni.H31Z7U7pd5GwI4Q6jgiHQS39kpxgOQu', 'lnEnJzLsMSmQcT7re4QHC6Oz2KLJ0xhfT9otTNUMCCGZ75OL7IrgPYB5sjG8', '2021-07-07 18:35:51', '2021-07-07 18:35:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`id_category`);

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
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_post`
--
ALTER TABLE `category_post`
  MODIFY `id_category` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `id_post` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
