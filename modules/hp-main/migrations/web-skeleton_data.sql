-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2019 at 07:32 AM
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
-- Table structure for table `core_language`
--

CREATE TABLE `core_language` (
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language code: "vi" or "vi_VN".',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language name in English.',
  `native` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Native language name.',
  `is_default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `core_language`
--

INSERT INTO `core_language` (`code`, `name`, `native`, `is_default`) VALUES
('en', 'English', 'Tiếng anh', 0),
('vi', 'Vietnamese', 'Tiếng Việt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `core_translate`
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
-- Dumping data for table `core_translate`
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
-- Indexes for table `core_language`
--
ALTER TABLE `core_language`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `core_translate`
--
ALTER TABLE `core_translate`
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
-- AUTO_INCREMENT for table `core_translate`
--
ALTER TABLE `core_translate`
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
