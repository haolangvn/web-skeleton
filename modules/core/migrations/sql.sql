-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2019 at 11:38 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `tgnh_201901`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_translate`
--

CREATE TABLE `core_translate` (
  `id` int(10) NOT NULL,
  `message` varbinary(128) NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `language_code` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `translation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT '0',
  `updated_at` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_translate`
--

INSERT INTO `core_translate` (`id`, `message`, `category`, `language_code`, `translation`, `created_at`, `updated_at`) VALUES
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_translate`
--
ALTER TABLE `core_translate`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `message` (`message`,`category`,`language_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_translate`
--
ALTER TABLE `core_translate`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

-- ------------------

CREATE TABLE `core_language` (
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language code: "vi" or "vi_VN".',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language name in English.',
  `native` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Native language name.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `core_language` (`code`, `name`, `native`) VALUES
('en', 'English', 'Tiếng anh'),
('vi', 'Vietnamese', 'Tiếng Việt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `core_language`
  ADD PRIMARY KEY (`code`);


--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `core_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) DEFAULT 0,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `weight` int(11) DEFAULT 0,
  `data` blob,
    `created_at` int(11) DEFAULT 0,
    `created_by` int(11) DEFAULT 0,
    `updated_at` int(11) DEFAULT 0,
    `updated_by` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8  COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `core_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `core_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_menu`
--
ALTER TABLE `core_menu`
  ADD CONSTRAINT `core_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `core_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;


COMMIT;
