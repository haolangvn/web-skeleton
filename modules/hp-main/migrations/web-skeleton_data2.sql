-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 07:59 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web-skeleton_git`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '2', 1552922965),
('admin', '3', 1552971389),
('supper_admin', '1', 1552922821);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1552899563, 1552899563),
('/main/*', 2, NULL, NULL, NULL, 1552923631, 1552923631),
('/main/default/*', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/default/index', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/*', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/create', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/delete', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/index', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/update', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/language/view', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/translate/*', 2, NULL, NULL, NULL, 1552968824, 1552968824),
('/main/translate/create', 2, NULL, NULL, NULL, 1552968824, 1552968824),
('/main/translate/delete', 2, NULL, NULL, NULL, 1552968824, 1552968824),
('/main/translate/index', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/main/translate/update', 2, NULL, NULL, NULL, 1552968824, 1552968824),
('/main/translate/view', 2, NULL, NULL, NULL, 1552968823, 1552968823),
('/rbac/*', 2, NULL, NULL, NULL, 1552899981, 1552899981),
('/rbac/default/index', 2, NULL, NULL, NULL, 1552973181, 1552973181),
('/users/*', 2, NULL, NULL, NULL, 1552971440, 1552971440),
('/users/default/*', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/create', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/delete', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/generate-auth-key', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/index', 2, NULL, NULL, NULL, 1552971579, 1552971579),
('/users/default/send-confirm-email', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/set-status', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/update', 2, NULL, NULL, NULL, 1552971580, 1552971580),
('/users/default/view', 2, NULL, NULL, NULL, 1552971579, 1552971579),
('admin', 1, 'Admin', NULL, NULL, 1552922892, 1552922892),
('AdminPermision', 2, 'Admin Permision', NULL, NULL, 1552899819, 1552899819),
('RBAC_Admin', 2, 'RBAC_Admin', NULL, NULL, 1552905754, 1552905848),
('RBAC_View', 2, 'RBAC View', NULL, NULL, 1552905819, 1552905819),
('supper_admin', 1, 'Supper Administrator', NULL, NULL, 1552906087, 1552922789);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', '/*'),
('RBAC_Admin', '/rbac/*'),
('supper_admin', '/*');

-- --------------------------------------------------------

--
-- Table structure for table `auth_menu`
--

CREATE TABLE `auth_menu` (
  `id` int(10) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT '0',
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) DEFAULT '0',
  `icon` varchar(25) COLLATE utf8_unicode_ci DEFAULT '',
  `data` blob,
  `created_at` int(11) DEFAULT '0',
  `created_by` int(11) DEFAULT '0',
  `updated_at` int(11) DEFAULT '0',
  `updated_by` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_menu`
--

INSERT INTO `auth_menu` (`id`, `name`, `parent`, `route`, `order`, `icon`, `data`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Authorization', NULL, '/rbac/default/index', 90, 'fa fa-unlock', NULL, 1552904071, 1, 1552976773, 1),
(2, 'Assignment', 1, '/rbac/assignment/index', 10, '', NULL, 1552904071, 1, 1552918613, 1),
(3, 'Role', 1, '/rbac/role/index', 15, '', NULL, 1552904071, 1, 1552918714, 1),
(4, 'Permission', 1, '/rbac/permission/index', 30, '', NULL, 1552904071, 1, 1552918662, 1),
(5, 'Setting', NULL, '/main/language/index', 100, 'fa-cog', NULL, 1552904071, 1, 1552971673, 1),
(6, 'Admin Menu', 1, '/rbac/menu/index', 1, '', NULL, 1552904071, 1, 1552918593, 1),
(7, 'Rule', 1, '/rbac/rule/index', 20, '', NULL, 1552904071, 1, 1552918637, 1),
(8, 'Route', 1, '/rbac/route/index', 100, '', NULL, 1552907096, 1, 1552918547, 1),
(9, 'Language', 5, '/main/language/index', NULL, '', NULL, 1552923245, 1, 1552968987, 1),
(10, 'Translate', 5, '/main/translate/index', NULL, '', NULL, 1552923964, 1, 1552968992, 1),
(11, 'User Management', NULL, '/users/default/index', 80, 'fa-users', NULL, 1552971653, 1, 1552976813, 1),
(12, 'Dashboard', NULL, '/main/default/index', 0, 'fa-dashboard', NULL, 1552976731, 1, 1552976744, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_language`
--

CREATE TABLE `main_language` (
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language code: "vi" or "vi_VN".',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language name in English.',
  `native` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Native language name.',
  `is_default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_language`
--

INSERT INTO `main_language` (`code`, `name`, `native`, `is_default`) VALUES
('en', 'English', 'Tiếng anh', 0),
('vi', 'Vietnamese', 'Tiếng Việt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `main_location_district`
--

CREATE TABLE `main_location_district` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_location_district`
--

INSERT INTO `main_location_district` (`id`, `province_id`, `name`) VALUES
(10101, 101, 'Quận Ba Đình'),
(10103, 101, 'Quận Tây Hồ'),
(10105, 101, 'Quận Hoàn Kiếm'),
(10106, 101, 'Quận Long Biên'),
(10107, 101, 'Quận Hai Bà Trưng'),
(10108, 101, 'Quận Hoàng Mai'),
(10109, 101, 'Quận Đống Đa'),
(10111, 101, 'Quận Thanh Xuân'),
(10113, 101, 'Quận Cầu Giấy'),
(10115, 101, 'Huyện Sóc Sơn'),
(10117, 101, 'Huyện Đông Anh'),
(10119, 101, 'Huyện Gia Lâm'),
(10123, 101, 'Huyện Thanh Trì'),
(10125, 101, 'Huyện Mê Linh'),
(10127, 101, 'Quận Hà Đông'),
(10129, 101, 'Thị xã Sơn Tây'),
(10131, 101, 'Huyện Phúc Thọ'),
(10133, 101, 'Huyện Đan Phượng'),
(10135, 101, 'Huyện Thạch Thất'),
(10137, 101, 'Huyện Hoài Đức'),
(10139, 101, 'Huyện Quốc Oai'),
(10141, 101, 'Huyện Thanh Oai'),
(10143, 101, 'Huyện Thường Tín'),
(10145, 101, 'Huyện Mỹ Đức'),
(10147, 101, 'Huyện ứng Hòa'),
(10149, 101, 'Huyện Phú Xuyên'),
(10151, 101, 'Huyện Ba Vì'),
(10153, 101, 'Huyện Chương Mỹ'),
(10154, 101, 'Quận Nam Từ Liêm'),
(10155, 101, 'Quận Bắc Từ Liêm'),
(10301, 103, 'Quận Hồng Bàng'),
(10303, 103, 'Quận Ngô Quyền'),
(10304, 103, 'Quận Hải An'),
(10305, 103, 'Quận Lê Chân'),
(10307, 103, 'Quận Kiến An'),
(10309, 103, 'Quận Đồ Sơn'),
(10311, 103, 'Huyện Thuỷ Nguyên'),
(10313, 103, 'Huyện An Dương'),
(10315, 103, 'Huyện An Lão'),
(10317, 103, 'Huyện Kiến Thuỵ'),
(10319, 103, 'Huyện Tiên Lãng'),
(10321, 103, 'Huyện Vĩnh Bảo'),
(10323, 103, 'Huyện Cát Hải'),
(10325, 103, 'Huyện Bạch Long Vĩ'),
(10327, 103, 'Quận Dương Kinh'),
(10701, 107, 'Thành phố Hải Dương'),
(10703, 107, 'Huyện Chí Linh'),
(10705, 107, 'Huyện Nam Sách'),
(10707, 107, 'Huyện Thanh Hà'),
(10709, 107, 'Huyện Kinh Môn'),
(10711, 107, 'Huyện Kim Thành'),
(10713, 107, 'Huyện Gia Lộc'),
(10715, 107, 'Huyện Tứ Kỳ'),
(10717, 107, 'Huyện Cẩm Giàng'),
(10719, 107, 'Huyện Bình Giang'),
(10721, 107, 'Huyện Thanh Miện'),
(10723, 107, 'Huyện Ninh Giang'),
(10901, 109, 'Thành phố Hưng Yên'),
(10903, 109, 'Huyện Mỹ Hào'),
(10905, 109, 'Huyện Khoái Châu'),
(10907, 109, 'Huyện Ân Thi'),
(10909, 109, 'Huyện Kim Động'),
(10911, 109, 'Huyện Phù Cừ'),
(10913, 109, 'Huyện Tiên Lữ'),
(10915, 109, 'Huyện Văn Giang'),
(10917, 109, 'Huyện Văn Lâm'),
(10919, 109, 'Huyện Yên Mỹ'),
(11101, 111, 'Thành Phố Phủ Lý'),
(11103, 111, 'Huyện Duy Tiên'),
(11105, 111, 'Huyện Kim Bảng'),
(11107, 111, 'Huyện Lý Nhân'),
(11109, 111, 'Huyện Thanh Liêm'),
(11111, 111, 'Huyện Bình Lục'),
(11301, 113, 'Thành phố Nam Định'),
(11303, 113, 'Huyện Vụ Bản'),
(11305, 113, 'Huyện Mỹ Lộc'),
(11307, 113, 'Huyện ý Yên'),
(11309, 113, 'Huyện Nam Trực'),
(11311, 113, 'Huyện Trực Ninh'),
(11313, 113, 'Huyện Xuân Trường'),
(11315, 113, 'Huyện Giao Thủy'),
(11317, 113, 'Huyện Nghĩa Hưng'),
(11319, 113, 'Huyện Hải Hậu'),
(11501, 115, 'Thành phố Thái Bình'),
(11503, 115, 'Huyện Quỳnh Phụ'),
(11505, 115, 'Huyện Hưng Hà'),
(11507, 115, 'Huyện Thái Thụy'),
(11509, 115, 'Huyện Đông Hưng'),
(11511, 115, 'Huyện Vũ Thư'),
(11513, 115, 'Huyện Kiến Xương'),
(11515, 115, 'Huyện Tiền Hải'),
(11701, 117, 'Thành Phố Ninh Bình'),
(11703, 117, 'Thành phố Tam Điệp'),
(11705, 117, 'Huyện Nho Quan'),
(11707, 117, 'Huyện Gia Viễn'),
(11709, 117, 'Huyện Hoa Lư'),
(11711, 117, 'Huyện Yên Mô'),
(11713, 117, 'Huyện Yên Khánh'),
(11715, 117, 'Huyện Kim Sơn'),
(20101, 201, 'Thành phố Hà Giang'),
(20103, 201, 'Huyện Đồng Văn'),
(20105, 201, 'Huyện Mèo Vạc'),
(20107, 201, 'Huyện Yên Minh'),
(20109, 201, 'Huyện Quản Bạ'),
(20111, 201, 'Huyện Bắc Mê'),
(20113, 201, 'Huyện Hoàng Su Phì'),
(20115, 201, 'Huyện Vị Xuyên'),
(20117, 201, 'Huyện Xín Mần'),
(20118, 201, 'Huyện Quang Bình'),
(20119, 201, 'Huyện Bắc Quang'),
(20301, 203, 'Thành phố Cao Bằng'),
(20303, 203, 'Huyện Bảo Lạc'),
(20305, 203, 'Huyện Hà Quảng'),
(20307, 203, 'Huyện Thông Nông'),
(20309, 203, 'Huyện Trà Lĩnh'),
(20311, 203, 'Huyện Trùng Khánh'),
(20313, 203, 'Huyện Nguyên Bình'),
(20315, 203, 'Huyện Hoà An'),
(20317, 203, 'Huyện Quảng Uyên'),
(20318, 203, 'Huyện Phục Hoà'),
(20319, 203, 'Huyện Hạ Lang'),
(20321, 203, 'Huyện Thạch An'),
(20323, 203, 'Huyện Bảo Lâm'),
(20501, 205, 'Thành phố Lào Cai'),
(20505, 205, 'Huyện Mường Khương'),
(20507, 205, 'Huyện Bát Xát'),
(20509, 205, 'Huyện Bắc Hà'),
(20511, 205, 'Huyện Bảo Thắng'),
(20513, 205, 'Huyện Sa Pa'),
(20515, 205, 'Huyện Bảo Yên'),
(20519, 205, 'Huyện Văn Bàn'),
(20521, 205, 'Huyện Si Ma Cai'),
(20701, 207, 'Thành Phố Bắc Kạn'),
(20703, 207, 'Huyện Ba Bể'),
(20704, 207, 'Huyện Pác Nặm'),
(20705, 207, 'Huyện Ngân Sơn'),
(20707, 207, 'Huyện Chợ Đồn'),
(20709, 207, 'Huyện Na Rì'),
(20711, 207, 'Huyện Bạch Thông'),
(20713, 207, 'Huyện Chợ Mới'),
(20901, 209, 'Thành phố Lạng Sơn'),
(20903, 209, 'Huyện Tràng Định'),
(20905, 209, 'Huyện Văn Lãng'),
(20907, 209, 'Huyện Bình Gia'),
(20909, 209, 'Huyện Bắc Sơn'),
(20911, 209, 'Huyện Văn Quan'),
(20913, 209, 'Huyện Cao Lộc'),
(20915, 209, 'Huyện Lộc Bình'),
(20917, 209, 'Huyện Chi Lăng'),
(20919, 209, 'Huyện Đình Lập'),
(20921, 209, 'Huyện Hữu Lũng'),
(21101, 211, 'Thành phố Tuyên Quang'),
(21103, 211, 'Huyện Nà Hang'),
(21105, 211, 'Huyện Chiêm Hóa'),
(21107, 211, 'Huyện Hàm Yên'),
(21109, 211, 'Huyện Yên Sơn'),
(21111, 211, 'Huyện Sơn Dương'),
(21112, 211, 'Huyện Lâm Bình'),
(21301, 213, 'Thành phố Yên Bái'),
(21303, 213, 'Thị xã Nghĩa Lộ'),
(21305, 213, 'Huyện Lục Yên'),
(21307, 213, 'Huyện Văn Yên'),
(21309, 213, 'Huyện Mù Căng Chải'),
(21311, 213, 'Huyện Trấn Yên'),
(21313, 213, 'Huyện Yên Bình'),
(21315, 213, 'Huyện Văn Chấn'),
(21317, 213, 'Huyện Trạm Tấu'),
(21501, 215, 'Thành phố Thái Nguyên'),
(21503, 215, 'Thành phố Sông Công'),
(21505, 215, 'Huyện Định Hóa'),
(21507, 215, 'Huyện Võ Nhai'),
(21509, 215, 'Huyện Phú Lương'),
(21511, 215, 'Huyện Đồng Hỷ'),
(21513, 215, 'Huyện Đại Từ'),
(21515, 215, 'Huyện Phú Bình'),
(21517, 215, 'Thị xã Phổ Yên'),
(21701, 217, 'Thành phố Việt Trì'),
(21703, 217, 'Thị xã Phú Thọ'),
(21705, 217, 'Huyện Đoan Hùng'),
(21707, 217, 'Huyện Hạ Hoà'),
(21709, 217, 'Huyện Thanh Ba'),
(21711, 217, 'Huyện Phù Ninh'),
(21713, 217, 'Huyện Cẩm Khê'),
(21715, 217, 'Huyện Yên Lập'),
(21717, 217, 'Huyện Tam Nông'),
(21719, 217, 'Huyện Thanh Sơn'),
(21720, 217, 'Huyện Tân Sơn'),
(21721, 217, 'Huyện Lâm Thao'),
(21723, 217, 'Huyện Thanh Thuỷ'),
(21901, 219, 'Thành Phố Vĩnh Yên'),
(21902, 219, 'Thị xã Phúc Yên'),
(21903, 219, 'Huyện Lập Thạch'),
(21904, 219, 'Huyện Tam Đảo'),
(21905, 219, 'Huyện Tam Dương'),
(21907, 219, 'Huyện Vĩnh Tường'),
(21909, 219, 'Huyện Yên Lạc'),
(21913, 219, 'Huyện Bình Xuyên'),
(21915, 219, 'Huyện Sông Lô'),
(22101, 221, 'Thành phố Bắc Giang'),
(22103, 221, 'Huyện Yên Thế'),
(22105, 221, 'Huyện Tân Yên'),
(22107, 221, 'Huyện Lục Ngạn'),
(22109, 221, 'Huyện Hiệp Hòa'),
(22111, 221, 'Huyện Lạng Giang'),
(22113, 221, 'Huyện Sơn Động'),
(22115, 221, 'Huyện Lục Nam'),
(22117, 221, 'Huyện Việt Yên'),
(22119, 221, 'Huyện Yên Dũng'),
(22301, 223, 'Thành phố Bắc Ninh'),
(22303, 223, 'Huyện Yên Phong'),
(22305, 223, 'Huyện Quế Võ'),
(22307, 223, 'Huyện Tiên Du'),
(22309, 223, 'Huyện Thuận Thành'),
(22311, 223, 'Huyện Lương Tài'),
(22313, 223, 'Thị xã Từ Sơn'),
(22315, 223, 'Huyện Gia Bình'),
(22501, 225, 'Thành phố Hạ Long'),
(22503, 225, 'Thành phố Cẩm Phả'),
(22505, 225, 'Thành phố Uông Bí'),
(22507, 225, 'Huyện Bình Liêu'),
(22509, 225, 'Thành Phố Móng Cái'),
(22511, 225, 'Huyện Hải Hà'),
(22513, 225, 'Huyện Tiên Yên'),
(22515, 225, 'Huyện Ba Chẽ'),
(22517, 225, 'Huyện Vân Đồn'),
(22519, 225, 'Huyện Hoành Bồ'),
(22521, 225, 'Thị xã Đông Triều'),
(22523, 225, 'Huyện Cô Tô'),
(22525, 225, 'Huyện Yên Hưng'),
(22527, 225, 'Huyện Đầm Hà'),
(22528, 225, 'Thị xã Quảng Yên'),
(30101, 301, 'Thành phố Điện Biên Phủ'),
(30103, 301, 'Thị xã Mường Lay'),
(30104, 301, 'Huyện Mường Nhé'),
(30111, 301, 'Huyện Mường Chà'),
(30113, 301, 'Huyện Tủa Chùa'),
(30115, 301, 'Huyện Tuần Giáo'),
(30117, 301, 'Huyện Điện Biên'),
(30119, 301, 'Huyện Điện Biên Đông'),
(30121, 301, 'Huyện Mường ảng'),
(30122, 301, 'Huyện Nậm Pồ'),
(30201, 302, 'Huyện Mường Tè'),
(30202, 302, 'Thành phố Lai Châu'),
(30203, 302, 'Huyện Phong Thổ'),
(30205, 302, 'Huyện Tam Đường'),
(30207, 302, 'Huyện Sìn Hồ'),
(30209, 302, 'Huyện Than Uyên'),
(30211, 302, 'Huyện Tân Uyên'),
(30212, 302, 'Huyện Nậm Nhùn'),
(30301, 303, 'Thành Phố Sơn La'),
(30303, 303, 'Huyện Quỳnh Nhai'),
(30305, 303, 'Huyện Mường La'),
(30307, 303, 'Huyện Thuận Châu'),
(30309, 303, 'Huyện Bắc Yên'),
(30311, 303, 'Huyện Phù Yên'),
(30313, 303, 'Huyện Mai Sơn'),
(30315, 303, 'Huyện Sông Mã'),
(30317, 303, 'Huyện Yên Châu'),
(30319, 303, 'Huyện Mộc Châu'),
(30321, 303, 'Huyện Sốp Cộp'),
(30322, 303, 'Huyện Vân Hồ'),
(30501, 305, 'Thành phố Hòa Bình'),
(30503, 305, 'Huyện Đà Bắc'),
(30505, 305, 'Huyện Mai Châu'),
(30507, 305, 'Huyện Kỳ Sơn'),
(30509, 305, 'Huyện Lương Sơn'),
(30510, 305, 'Huyện Cao Phong'),
(30511, 305, 'Huyện Kim Bôi'),
(30513, 305, 'Huyện Tân Lạc'),
(30515, 305, 'Huyện Lạc Sơn'),
(30517, 305, 'Huyện Lạc Thủy'),
(30519, 305, 'Huyện Yên Thủy'),
(40101, 401, 'Thành phố Thanh Hóa'),
(40103, 401, 'Thị xã Bỉm Sơn'),
(40105, 401, 'Thành phố Sầm Sơn'),
(40107, 401, 'Huyện Mường Lát'),
(40109, 401, 'Huyện Quan Hóa'),
(40111, 401, 'Huyện Quan Sơn'),
(40113, 401, 'Huyện Bá Thước'),
(40115, 401, 'Huyện Cẩm Thủy'),
(40117, 401, 'Huyện Lang Chánh'),
(40119, 401, 'Huyện Thạch Thành'),
(40121, 401, 'Huyện Ngọc Lặc'),
(40123, 401, 'Huyện Thường Xuân'),
(40125, 401, 'Huyện Như Xuân'),
(40127, 401, 'Huyện Như Thanh'),
(40129, 401, 'Huyện Vĩnh Lộc'),
(40131, 401, 'Huyện Hà Trung'),
(40133, 401, 'Huyện Nga Sơn'),
(40135, 401, 'Huyện Yên Định'),
(40137, 401, 'Huyện Thọ Xuân'),
(40139, 401, 'Huyện Hậu Lộc'),
(40141, 401, 'Huyện Thiệu Hóa'),
(40143, 401, 'Huyện Hoằng Hóa'),
(40145, 401, 'Huyện Đông Sơn'),
(40147, 401, 'Huyện Triệu Sơn'),
(40149, 401, 'Huyện Quảng Xương'),
(40151, 401, 'Huyện Nông Cống'),
(40153, 401, 'Huyện Tĩnh Gia'),
(40301, 403, 'Thành phố Vinh'),
(40303, 403, 'Thị xã Cửa Lò'),
(40305, 403, 'Huyện Quế Phong'),
(40307, 403, 'Huyện Quỳ Châu'),
(40309, 403, 'Huyện Kỳ Sơn'),
(40311, 403, 'Huyện Quỳ Hợp'),
(40313, 403, 'Huyện Nghĩa Đàn'),
(40314, 403, 'Thị xã Thái Hoà'),
(40315, 403, 'Huyện Tương Dương'),
(40317, 403, 'Huyện Quỳnh Lưu'),
(40319, 403, 'Huyện Tân Kỳ'),
(40321, 403, 'Huyện Con Cuông'),
(40323, 403, 'Huyện Yên Thành'),
(40325, 403, 'Huyện Diễn Châu'),
(40327, 403, 'Huyện Anh Sơn'),
(40329, 403, 'Huyện Đô Lương'),
(40331, 403, 'Huyện Thanh Chương'),
(40333, 403, 'Huyện Nghi Lộc'),
(40335, 403, 'Huyện Nam Đàn'),
(40337, 403, 'Huyện Hưng Nguyên'),
(40338, 403, 'Thị xã Hoàng Mai'),
(40501, 405, 'Thành phố Hà Tĩnh'),
(40503, 405, 'Thị xã Hồng Lĩnh'),
(40505, 405, 'Huyện Nghi Xuân'),
(40507, 405, 'Huyện Đức Thọ'),
(40509, 405, 'Huyện Hương Sơn'),
(40511, 405, 'Huyện Can Lộc'),
(40513, 405, 'Huyện Thạch Hà'),
(40515, 405, 'Huyện Cẩm Xuyên'),
(40517, 405, 'Huyện Hương Khê'),
(40519, 405, 'Thị xã Kỳ Anh'),
(40521, 405, 'Huyện Vũ Quang'),
(40523, 405, 'Huyện Lộc Hà'),
(40701, 407, 'Thành phố Đồng Hới'),
(40703, 407, 'Huyện Tuyên Hóa'),
(40705, 407, 'Huyện Minh Hóa'),
(40707, 407, 'Huyện Quảng Trạch'),
(40709, 407, 'Huyện Bố Trạch'),
(40711, 407, 'Huyện Quảng Ninh'),
(40713, 407, 'Huyện Lệ Thủy'),
(40714, 407, 'Thị xã Ba Đồn'),
(40901, 409, 'Thành phố Đông Hà'),
(40903, 409, 'Thị xã Quảng Trị'),
(40905, 409, 'Huyện Vĩnh Linh'),
(40907, 409, 'Huyện Gio Linh'),
(40909, 409, 'Huyện Cam Lộ'),
(40911, 409, 'Huyện Triệu Phong'),
(40913, 409, 'Huyện Hải Lăng'),
(40915, 409, 'Huyện Hướng Hóa'),
(40917, 409, 'Huyện Đa Krông'),
(40919, 409, 'Huyện Cồn Cỏ'),
(41101, 411, 'Thành phố Huế'),
(41103, 411, 'Huyện Phong Điền'),
(41105, 411, 'Huyện Quảng Điền'),
(41107, 411, 'Thị xã Hương Trà'),
(41109, 411, 'Huyện Phú Vang'),
(41111, 411, 'Thị xã Hương Thủy'),
(41113, 411, 'Huyện Phú Lộc'),
(41115, 411, 'Huyện A Lưới'),
(41117, 411, 'Huyện Nam Đông'),
(50101, 501, 'Quận Hải Châu'),
(50103, 501, 'Quận Thanh Khê'),
(50105, 501, 'Quận Sơn Trà'),
(50107, 501, 'Quận Ngũ Hành Sơn'),
(50109, 501, 'Quận Liên Chiểu'),
(50111, 501, 'Huyện Hòa Vang'),
(50113, 501, 'Huyện Hoàng Sa'),
(50115, 501, 'Quận Cẩm Lệ'),
(50301, 503, 'Thành phố Tam Kỳ'),
(50302, 503, 'Huyện Phú Ninh'),
(50303, 503, 'Thành Phố Hội An'),
(50304, 503, 'Huyện Tây Giang'),
(50305, 503, 'Huyện Đông Giang'),
(50307, 503, 'Huyện Đại Lộc'),
(50309, 503, 'Thị xã Điện Bàn'),
(50311, 503, 'Huyện Duy Xuyên'),
(50313, 503, 'Huyện Nam Giang'),
(50315, 503, 'Huyện Thăng Bình'),
(50317, 503, 'Huyện Quế Sơn'),
(50318, 503, 'Huyện Nông Sơn'),
(50319, 503, 'Huyện Hiệp Đức'),
(50321, 503, 'Huyện Tiên Phước'),
(50323, 503, 'Huyện Phước Sơn'),
(50325, 503, 'Huyện Núi Thành'),
(50327, 503, 'Huyện Bắc Trà My'),
(50329, 503, 'Huyện Nam Trà My'),
(50501, 505, 'Thành phố Quảng Ngãi'),
(50503, 505, 'Huyện Lý Sơn'),
(50505, 505, 'Huyện Bình Sơn'),
(50507, 505, 'Huyện Trà Bồng'),
(50508, 505, 'Huyện Tây Trà'),
(50509, 505, 'Huyện Sơn Tịnh'),
(50511, 505, 'Huyện Sơn Tây'),
(50513, 505, 'Huyện Sơn Hà'),
(50515, 505, 'Huyện Tư Nghĩa'),
(50517, 505, 'Huyện Nghĩa Hành'),
(50519, 505, 'Huyện Minh Long'),
(50521, 505, 'Huyện Mộ Đức'),
(50523, 505, 'Huyện Đức Phổ'),
(50525, 505, 'Huyện Ba Tơ'),
(50701, 507, 'Thành phố Qui Nhơn'),
(50703, 507, 'Huyện An Lão'),
(50705, 507, 'Huyện Hoài Nhơn'),
(50707, 507, 'Huyện Hoài Ân'),
(50709, 507, 'Huyện Phù Mỹ'),
(50711, 507, 'Huyện Vĩnh Thạnh'),
(50713, 507, 'Huyện Phù Cát'),
(50715, 507, 'Huyện Tây Sơn'),
(50717, 507, 'Thị xã An Nhơn'),
(50719, 507, 'Huyện Tuy Phước'),
(50721, 507, 'Huyện Vân Canh'),
(50901, 509, 'Thành phố Tuy Hoà'),
(50903, 509, 'Huyện Đồng Xuân'),
(50905, 509, 'Thị xã Sông Cầu'),
(50907, 509, 'Huyện Tuy An'),
(50909, 509, 'Huyện Sơn Hòa'),
(50911, 509, 'Huyện Đông Hòa'),
(50912, 509, 'Huyện Tây Hoà'),
(50913, 509, 'Huyện Sông Hinh'),
(50915, 509, 'Huyện Phú Hoà'),
(51101, 511, 'Thành phố Nha Trang'),
(51103, 511, 'Huyện Vạn Ninh'),
(51105, 511, 'Thị xã Ninh Hòa'),
(51107, 511, 'Huyện Diên Khánh'),
(51109, 511, 'Thành phố Cam Ranh'),
(51111, 511, 'Huyện Khánh Vĩnh'),
(51113, 511, 'Huyện Khánh Sơn'),
(51115, 511, 'Huyện Trường Sa'),
(51117, 511, 'Huyện Cam Lâm'),
(60101, 601, 'Thành phố Kon Tum'),
(60103, 601, 'Huyện Đắk Glei'),
(60105, 601, 'Huyện Ngọc Hồi'),
(60107, 601, 'Huyện Đắk Tô'),
(60108, 601, 'Huyện Kon Rẫy'),
(60109, 601, 'Huyện Kon Plông'),
(60111, 601, 'Huyện Đắk Hà'),
(60113, 601, 'Huyện Sa Thầy'),
(60115, 601, 'Huyện Tu Mơ Rông'),
(60116, 601, 'Huyện Ia H\' Drai'),
(60301, 603, 'Thành phố Pleiku'),
(60303, 603, 'Huyện KBang'),
(60305, 603, 'Huyện Mang Yang'),
(60307, 603, 'Huyện Chư Păh'),
(60309, 603, 'Huyện Ia Grai'),
(60311, 603, 'Thị xã An Khê'),
(60313, 603, 'Huyện Kông Chro'),
(60315, 603, 'Huyện Đức Cơ'),
(60317, 603, 'Huyện Chư Prông'),
(60319, 603, 'Huyện Chư Sê'),
(60320, 603, 'Huyện Ia Pa'),
(60321, 603, 'Thị xã Ayun Pa'),
(60323, 603, 'Huyện Krông Pa'),
(60325, 603, 'Huyện Đăk Đoa'),
(60327, 603, 'Huyện Đăk Pơ'),
(60329, 603, 'Huyện Phú Thiện'),
(60330, 603, 'Huyện Chư Pưh'),
(60501, 605, 'Thành phố Buôn Ma Thuột'),
(60503, 605, 'Huyện Ea H\'leo'),
(60505, 605, 'Huyện Ea Súp'),
(60507, 605, 'Huyện Krông Năng'),
(60509, 605, 'Thị Xã Buôn Hồ'),
(60511, 605, 'Huyện Buôn Đôn'),
(60513, 605, 'Huyện Cư M\'gar'),
(60515, 605, 'Huyện Ea Kar'),
(60517, 605, 'Huyện M\'Đrắk'),
(60519, 605, 'Huyện Krông Pắc'),
(60523, 605, 'Huyện Krông A Na'),
(60525, 605, 'Huyện Krông Bông'),
(60531, 605, 'Huyện Lắk'),
(60537, 605, 'Huyện Cư Kuin'),
(60539, 605, 'Huyện Krông Búk'),
(60603, 606, 'Huyện Cư Jút'),
(60605, 606, 'Huyện Krông Nô'),
(60607, 606, 'Huyện Đắk Mil'),
(60609, 606, 'Huyện Đắk Song'),
(60611, 606, 'Huyện Đắk R\'Lấp'),
(60613, 606, 'Thị xã Gia Nghĩa'),
(60615, 606, 'Huyện Đăk Glong'),
(60617, 606, 'Huyện Tuy Đức'),
(70101, 701, 'Quận 1'),
(70103, 701, 'Quận 2'),
(70105, 701, 'Quận 3'),
(70107, 701, 'Quận 4'),
(70109, 701, 'Quận 5'),
(70111, 701, 'Quận 6'),
(70113, 701, 'Quận 7'),
(70115, 701, 'Quận 8'),
(70117, 701, 'Quận 9'),
(70119, 701, 'Quận 10'),
(70121, 701, 'Quận 11'),
(70123, 701, 'Quận 12'),
(70125, 701, 'Quận Gò Vấp'),
(70127, 701, 'Quận Tân Bình'),
(70128, 701, 'Quận Tân Phú'),
(70129, 701, 'Quận Bình Thạnh'),
(70131, 701, 'Quận Phú Nhuận'),
(70133, 701, 'Quận Thủ Đức'),
(70134, 701, 'Quận Bình Tân'),
(70135, 701, 'Huyện Củ Chi'),
(70137, 701, 'Huyện Hóc Môn'),
(70139, 701, 'Huyện Bình Chánh'),
(70141, 701, 'Huyện Nhà Bè'),
(70143, 701, 'Huyện Cần Giờ'),
(70301, 703, 'Thành phố Đà Lạt'),
(70303, 703, 'Thành phố Bảo Lộc'),
(70305, 703, 'Huyện Lạc Dương'),
(70307, 703, 'Huyện Đơn Dương'),
(70309, 703, 'Huyện Đức Trọng'),
(70311, 703, 'Huyện Lâm Hà'),
(70313, 703, 'Huyện Bảo Lâm'),
(70315, 703, 'Huyện Di Linh'),
(70317, 703, 'Huyện Đạ Huoai'),
(70319, 703, 'Huyện Đạ Tẻh'),
(70321, 703, 'Huyện Cát Tiên'),
(70323, 703, 'Huyện Đam Rông'),
(70501, 705, 'Thành phố Phan Rang-Tháp Chàm'),
(70503, 705, 'Huyện Ninh Sơn'),
(70505, 705, 'Huyện Ninh Hải'),
(70507, 705, 'Huyện Ninh Phước'),
(70509, 705, 'Huyện Bác ái'),
(70511, 705, 'Huyện Thuận Bắc'),
(70513, 705, 'Huyện Thuận Nam'),
(70701, 707, 'Huyện Đồng Phù'),
(70703, 707, 'Thị xã Phước Long'),
(70705, 707, 'Huyện Lộc Ninh'),
(70706, 707, 'Huyện Bù Đốp'),
(70707, 707, 'Huyện Bù Đăng'),
(70709, 707, 'Thị xã Bình Long'),
(70710, 707, 'Huyện Chơn Thành'),
(70711, 707, 'Thị xã Đồng Xoài'),
(70712, 707, 'Huyện Bù Gia Mập'),
(70713, 707, 'Huyện Phú Riềng'),
(70714, 707, 'Huyện Hớn Quản'),
(70901, 709, 'Thành phố Tây Ninh'),
(70903, 709, 'Huyện Tân Biên'),
(70905, 709, 'Huyện Tân Châu'),
(70907, 709, 'Huyện Dương Minh Châu'),
(70909, 709, 'Huyện Châu Thành'),
(70911, 709, 'Huyện Hòa Thành'),
(70913, 709, 'Huyện Bến Cầu'),
(70915, 709, 'Huyện Gò Dầu'),
(70917, 709, 'Huyện Trảng Bàng'),
(71101, 711, 'Thành phố Thủ Dầu Một'),
(71103, 711, 'Thị xã Bến Cát'),
(71105, 711, 'Thị xã Tân Uyên'),
(71107, 711, 'Thị xã Thuận An'),
(71109, 711, 'Thị xã Dĩ An'),
(71111, 711, 'Huyện Phú Giáo'),
(71113, 711, 'Huyện Dầu Tiếng'),
(71114, 711, 'Huyện Bàu Bàng'),
(71115, 711, 'Huyện Bắc Tân Uyên'),
(71301, 713, 'Thành phố Biên Hòa'),
(71302, 713, 'Thị xã Long Khánh'),
(71303, 713, 'Huyện Tân Phú'),
(71305, 713, 'Huyện Định Quán'),
(71307, 713, 'Huyện Vĩnh Cửu'),
(71308, 713, 'Huyện Trảng Bom'),
(71309, 713, 'Huyện Thống Nhất'),
(71311, 713, 'Huyện Cẩm Mỹ'),
(71313, 713, 'Huyện Xuân Lộc'),
(71315, 713, 'Huyện Long Thành'),
(71317, 713, 'Huyện Nhơn Trạch'),
(71501, 715, 'Thành phố Phan Thiết'),
(71503, 715, 'Huyện Tuy Phong'),
(71505, 715, 'Huyện Bắc Bình'),
(71507, 715, 'Huyện Hàm Thuận Bắc'),
(71509, 715, 'Huyện Hàm Thuận Nam'),
(71511, 715, 'Huyện Tánh Linh'),
(71513, 715, 'Thị xã La Gi'),
(71514, 715, 'Huyện Hàm Tân'),
(71515, 715, 'Huyện Đức Linh'),
(71517, 715, 'Huyện Phú Quí'),
(71701, 717, 'Thành phố Vũng Tàu'),
(71703, 717, 'Thành phố Bà Rịa'),
(71705, 717, 'Huyện Châu Đức'),
(71707, 717, 'Huyện Xuyên Mộc'),
(71709, 717, 'Huyện Tân Thành'),
(71711, 717, 'Huyện Long Điền'),
(71712, 717, 'Huyện Đất Đỏ'),
(71713, 717, 'Huyện Côn Đảo'),
(80101, 801, 'Thành phố Tân An'),
(80103, 801, 'Huyện Tân Hưng'),
(80105, 801, 'Huyện Vĩnh Hưng'),
(80107, 801, 'Huyện Mộc Hóa'),
(80109, 801, 'Huyện Tân Thạnh'),
(80111, 801, 'Huyện Thạnh Hóa'),
(80113, 801, 'Huyện Đức Huệ'),
(80115, 801, 'Huyện Đức Hòa'),
(80117, 801, 'Huyện Bến Lức'),
(80119, 801, 'Huyện Thủ Thừa'),
(80121, 801, 'Huyện Châu Thành'),
(80123, 801, 'Huyện Tân Trụ'),
(80125, 801, 'Huyện Cần Đước'),
(80127, 801, 'Huyện Cần Giuộc'),
(80128, 801, 'Thị xã Kiến Tường'),
(80301, 803, 'Thành phố Cao Lãnh'),
(80303, 803, 'Thành phố Sa Đéc'),
(80305, 803, 'Huyện Tân Hồng'),
(80307, 803, 'Huyện Hồng Ngự'),
(80309, 803, 'Huyện Tam Nông'),
(80311, 803, 'Huyện Thanh Bình'),
(80313, 803, 'Huyện Tháp Mười'),
(80315, 803, 'Huyện Cao Lãnh'),
(80317, 803, 'Huyện Lấp Vò'),
(80319, 803, 'Huyện Lai Vung'),
(80321, 803, 'Huyện Châu Thành'),
(80323, 803, 'Thị xã Hồng Ngự'),
(80501, 805, 'Thành phố Long Xuyên'),
(80503, 805, 'Thành phố Châu Đốc'),
(80505, 805, 'Huyện An Phú'),
(80507, 805, 'Thị xã Tân Châu'),
(80509, 805, 'Huyện Phú Tân'),
(80511, 805, 'Huyện Châu Phú'),
(80513, 805, 'Huyện Tịnh Biên'),
(80515, 805, 'Huyện Tri Tôn'),
(80517, 805, 'Huyện Chợ Mới'),
(80519, 805, 'Huyện Châu Thành'),
(80521, 805, 'Huyện Thoại Sơn'),
(80701, 807, 'Thành phố Mỹ Tho'),
(80703, 807, 'Thị xã Gò Công'),
(80705, 807, 'Huyện Tân Phước'),
(80707, 807, 'Huyện Châu Thành'),
(80709, 807, 'Thị xã Cai Lậy'),
(80711, 807, 'Huyện Chợ Gạo'),
(80713, 807, 'Huyện Cái Bè'),
(80715, 807, 'Huyện Gò Công Tây'),
(80717, 807, 'Huyện Gò Công Đông'),
(80719, 807, 'Huyện Tân Phú Đông'),
(80901, 809, 'Thành Phố Vĩnh Long'),
(80903, 809, 'Huyện Long Hồ'),
(80905, 809, 'Huyện Mang Thít'),
(80907, 809, 'Thị xã Bình Minh'),
(80908, 809, 'Huyện Bình Tân'),
(80909, 809, 'Huyện Tam Bình'),
(80911, 809, 'Huyện Trà ôn'),
(80913, 809, 'Huyện  Vũng Liêm'),
(81101, 811, 'Thành phố Bến Tre'),
(81103, 811, 'Huyện Châu Thành'),
(81105, 811, 'Huyện Chợ Lách'),
(81107, 811, 'Huyện Mỏ Cày Nam'),
(81108, 811, 'Huyện Mỏ Cày Bắc'),
(81109, 811, 'Huyện Giồng Trôm'),
(81111, 811, 'Huyện Bình Đại'),
(81113, 811, 'Huyện Ba Tri'),
(81115, 811, 'Huyện Thạnh Phú'),
(81301, 813, 'Thành phố Rạch Giá'),
(81303, 813, 'Huyện Kiên Lương'),
(81305, 813, 'Huyện Hòn Đất'),
(81307, 813, 'Huyện Tân Hiệp'),
(81309, 813, 'Huyện Châu Thành'),
(81311, 813, 'Huyện Giồng Riềng'),
(81313, 813, 'Huyện Gò Quao'),
(81315, 813, 'Huyện An Biên'),
(81317, 813, 'Huyện An Minh'),
(81319, 813, 'Huyện Vĩnh Thuận'),
(81321, 813, 'Huyện Phú Quốc'),
(81323, 813, 'Huyện Kiên Hải'),
(81325, 813, 'Thị xã Hà Tiên'),
(81327, 813, 'Huyện U Minh Thượng'),
(81328, 813, 'Huyện Giang Thành'),
(81503, 815, 'Quận Thốt Nốt'),
(81505, 815, 'Quận Ô Môn'),
(81519, 815, 'Quận Ninh Kiều'),
(81521, 815, 'Quận Bình Thuỷ'),
(81523, 815, 'Quận Cái Răng'),
(81525, 815, 'Huyện Vĩnh Thạnh'),
(81527, 815, 'Huyện Cờ Đỏ'),
(81529, 815, 'Huyện Phong Điền'),
(81531, 815, 'Huyện Thới Lai'),
(81601, 816, 'Thành phố Vị Thanh'),
(81603, 816, 'Huyện Châu Thành A'),
(81605, 816, 'Huyện Châu Thành'),
(81607, 816, 'Thị xã Ngã Bảy'),
(81608, 816, 'Huyện Phụng Hiệp'),
(81609, 816, 'Huyện Vị Thuỷ'),
(81611, 816, 'Thị xã Long Mỹ'),
(81701, 817, 'Thành phố Trà Vinh'),
(81703, 817, 'Huyện Càng Long'),
(81705, 817, 'Huyện Châu Thành'),
(81707, 817, 'Huyện Cầu Kè'),
(81709, 817, 'Huyện Tiểu Cần'),
(81711, 817, 'Huyện Cầu Ngang'),
(81713, 817, 'Huyện Trà Cú'),
(81715, 817, 'Thị xã Duyên Hải'),
(81901, 819, 'Thành phố Sóc Trăng'),
(81903, 819, 'Huyện Kế Sách'),
(81905, 819, 'Huyện Long Phú'),
(81906, 819, 'Huyện Cù Lao Dung'),
(81907, 819, 'Huyện Mỹ Tú'),
(81909, 819, 'Huyện Mỹ Xuyên'),
(81911, 819, 'Huyện Thạnh Trị'),
(81912, 819, 'Thị xã Ngã Năm'),
(81913, 819, 'Thị xã Vĩnh Châu'),
(81915, 819, 'Huyện Châu Thành'),
(81916, 819, 'Huyện Trần Đề'),
(82101, 821, 'Thành phố Bạc Liêu'),
(82103, 821, 'Huyện Hồng Dân'),
(82105, 821, 'Huyện Vĩnh Lợi'),
(82106, 821, 'Huyện Hoà Bình'),
(82107, 821, 'Thị xã Giá Rai'),
(82109, 821, 'Huyện Phước Long'),
(82111, 821, 'Huyện Đông Hải'),
(82301, 823, 'Thành phố Cà Mau'),
(82303, 823, 'Huyện Thới Bình'),
(82305, 823, 'Huyện U Minh'),
(82307, 823, 'Huyện Trần Văn Thời'),
(82308, 823, 'Huyện Phú Tân'),
(82309, 823, 'Huyện Cái Nước'),
(82311, 823, 'Huyện Đầm Dơi'),
(82312, 823, 'Huyện Năm Căn'),
(82313, 823, 'Huyện Ngọc Hiển');

-- --------------------------------------------------------

--
-- Table structure for table `main_location_province`
--

CREATE TABLE `main_location_province` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_location_province`
--

INSERT INTO `main_location_province` (`id`, `name`) VALUES
(101, 'Hà Nội'),
(103, 'Hải Phòng'),
(107, 'Hải Dương'),
(109, 'Hưng Yên'),
(111, 'Hà Nam'),
(113, 'Nam Định'),
(115, 'Thái Bình'),
(117, 'Ninh Bình'),
(201, 'Hà Giang'),
(203, 'Cao Bằng'),
(205, 'Lào Cai'),
(207, 'Bắc Cạn'),
(209, 'Lạng Sơn'),
(211, 'Tuyên Quang'),
(213, 'Yên Bái'),
(215, 'Thái Nguyên'),
(217, 'Phú Thọ'),
(219, 'Vĩnh Phúc'),
(221, 'Bắc Giang'),
(223, 'Bắc Ninh'),
(225, 'Quảng Ninh'),
(301, 'Điện Biên'),
(302, 'Lai Châu'),
(303, 'Sơn La'),
(305, 'Hòa Bình'),
(401, 'Thanh Hoá'),
(403, 'Nghệ An'),
(405, 'Hà Tĩnh'),
(407, 'Quảng Bình'),
(409, 'Quảng Trị'),
(411, 'Thừa Thiên - Huế'),
(501, 'Đà Nẵng'),
(503, 'Quảng Nam'),
(505, 'Quảng Ngãi'),
(507, 'Bình Định'),
(509, 'Phú Yên'),
(511, 'Khánh Hòa'),
(601, 'Kon Tum'),
(603, 'Gia Lai'),
(605, 'Đắc Lắk'),
(606, 'Đắk Nông'),
(701, 'TP Hồ Chí Minh'),
(703, 'Lâm Đồng'),
(705, 'Ninh Thuận'),
(707, 'Bình Phước'),
(709, 'Tây Ninh'),
(711, 'Bình Dương'),
(713, 'Đồng Nai'),
(715, 'Bình Thuận'),
(717, 'Bà Rịa - Vũng Tàu'),
(801, 'Long An'),
(803, 'Đồng Tháp'),
(805, 'An Giang'),
(807, 'Tiền Giang'),
(809, 'Vĩnh Long'),
(811, 'Bến Tre'),
(813, 'Kiên Giang'),
(815, 'Cần Thơ'),
(816, 'Hậu Giang'),
(817, 'Trà Vinh'),
(819, 'Sóc Trăng'),
(821, 'Bạc Liêu'),
(823, 'Cà Mau');

-- --------------------------------------------------------

--
-- Table structure for table `main_setting`
--

CREATE TABLE `main_setting` (
  `id` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('richtext','json') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'json',
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_translate`
--

CREATE TABLE `main_translate` (
  `id` int(10) NOT NULL,
  `message` varbinary(128) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `translation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `main_translate`
--

INSERT INTO `main_translate` (`id`, `message`, `category`, `language_code`, `translation`, `created_at`, `updated_at`) VALUES
(1, 0x496e636f727265637420757365726e616d65206f722070617373776f7264, 'model', 'vi', 'Tên đăng nhập hoặc mật khẩu không hợp lệ', 1535007414, 1535007447),
(2, 0x5375636365737366756c6c204c6f67696e, 'label', 'vi', 'Đăng nhập thành công', 1535007435, 1535007435),
(3, 0x5665726966792063617074636861, 'model', 'vi', 'Xác nhận captcha', 1535007860, 1535007860),
(4, 0x50617373776f7264206d75737420636f6e7461696e206174206c65617374206f6e65206c6f77657220616e6420757070657220636173652063686172616374657220616e642061206469676974, 'model', 'vi', 'Mật khẩu ít nhất phải có 1 ký tự chữ hoa, chữ thường và số', 1535008896, 1535008907),
(5, 0x5375636365737366756c20526567697374726174696f6e, 'label', 'vi', 'Đăng ký thành công', 1535012495, 1535012495),
(6, 0x436865636b20796f757220656d61696c20666f72206675727468657220696e737472756374696f6e73, 'label', 'vi', 'Kiểm tra email để được hướng dẫn khôi phục mật khẩu', 1535014587, 1535014587),
(7, 0x536f7272792c2077652061726520756e61626c6520746f2072657365742070617373776f726420666f7220656d61696c2070726f7669646564, 'label', 'vi', 'Rất tiếc, không thể đặt lại mật khẩu cho email đã cung cấp', 1535014638, 1535014638),
(8, 0x4e65772070617373776f7264207361766564, 'label', 'vi', 'Mật khẩu mới được cập nhật', 1535019004, 1535019004),
(9, 0x5375636365737366756c2075706461746564, 'label', 'vi', 'Đã cập nhật thông tin', 1535019385, 1535019385),
(10, 0x4e65772050617373776f7264, 'model', 'vi', 'Mật khẩu mới', 1535019609, 1535019751),
(11, 0x436f6e6669726d2050617373776f7264, 'model', 'vi', 'Nhập lại mật khẩu', 1535019619, 1535019740),
(12, 0x52657365742070617373776f7264, 'label', 'vi', 'Cấp lại mật khẩu', 1535019795, 1535019795);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1552898931),
('m140506_102106_rbac_init', 1552898942),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1552898947),
('m180523_151638_rbac_updates_indexes_without_prefix', 1552898948),
('modules\\users\\migrations\\m161022_180040_create_table_user', 1552898946);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Username',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Email',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Authorization Key',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hash Password',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Password Token',
  `email_confirm_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email Confirm Token',
  `created_at` int(11) NOT NULL COMMENT 'Created',
  `updated_at` int(11) NOT NULL COMMENT 'Updated',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `auth_key`, `password_hash`, `password_reset_token`, `email_confirm_token`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin', 'haolangvn@gmail.com', 'yiCzruyD5NEqc5VQFwh2dwNm9jWs4Lj3', '$2y$13$o2Z8GqvgbJ30E4aMjslr/uh7gh.TzJquXqPi6dYR1bL9VO5WvRBJ.', NULL, NULL, 1552899730, 1552899730, 1),
(2, 'hao', 'hao@thegioinuochoa.com.vn', 'yqCVUOp7le7VKMNTUCIqu3VYxcPfkJ1r', '$2y$13$6UFPYYAjrOZRLjrRj0IIhOaAwQhV.Md7u5KF3oqOBgYMRdW/rubR2', NULL, NULL, 1552905477, 1552905477, 1),
(3, 'phong', 'phong@thegioinuochoa.com.vn', 'T9mnNTp1W0LyDyQtHzaDgtExS1H9bWjv', '$2y$13$Zg2B.6jDkmV73005wGyq3O.ruCAYwttsmumOnwTw9H.vG80YXaq5m', NULL, NULL, 1552971356, 1552971356, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `user_id` int(11) NOT NULL COMMENT 'User',
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'First Name',
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Last Name',
  `email_gravatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Email Gravatar',
  `last_visit` int(11) DEFAULT NULL COMMENT 'Last Visit',
  `created_at` int(11) NOT NULL COMMENT 'Created',
  `updated_at` int(11) NOT NULL COMMENT 'Updated'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `first_name`, `last_name`, `email_gravatar`, `last_visit`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, 'haolangvn@gmail.com', 1552977122, 1552899730, 1552899730),
(2, 2, NULL, NULL, 'hao@thegioinuochoa.com.vn', 1552976529, 1552905477, 1552905477),
(3, 3, NULL, NULL, 'phong@thegioinuochoa.com.vn', NULL, 1552971356, 1552971356);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_menu`
--
ALTER TABLE `auth_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `main_language`
--
ALTER TABLE `main_language`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `main_location_district`
--
ALTER TABLE `main_location_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_location_province`
--
ALTER TABLE `main_location_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_setting`
--
ALTER TABLE `main_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `main_translate`
--
ALTER TABLE `main_translate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message` (`message`,`category`,`language_code`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_gravatar` (`email_gravatar`),
  ADD KEY `IDX_user_profile_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_menu`
--
ALTER TABLE `auth_menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_location_district`
--
ALTER TABLE `main_location_district`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82314;

--
-- AUTO_INCREMENT for table `main_location_province`
--
ALTER TABLE `main_location_province`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=824;

--
-- AUTO_INCREMENT for table `main_translate`
--
ALTER TABLE `main_translate`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_menu`
--
ALTER TABLE `auth_menu`
  ADD CONSTRAINT `auth_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD CONSTRAINT `FK-user_profile-user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
