-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2021 at 07:32 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `description_of_goods`
--

CREATE TABLE `description_of_goods` (
  `id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecl_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ecl_item` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `description_of_goods`
--

INSERT INTO `description_of_goods` (`id`, `application_id`, `customer_id`, `user_id`, `description`, `ecl_group`, `ecl_item`, `business_id`) VALUES
(4, NULL, NULL, NULL, 'dfdfasdasd', 'dfdfdf', 'dfdfdfd', 2),
(5, NULL, NULL, NULL, 'dfdfd', 'dfdf', 'dfdfdf', 3),
(6, NULL, NULL, NULL, 'dfd', '3434', 'f', 4),
(7, NULL, NULL, NULL, 'dfdfd', 'dfdfdf', 'dfdfdfd', 5),
(8, NULL, NULL, NULL, 'dfdfd', 'dfdf', '34', 6),
(9, NULL, NULL, NULL, 'dfdf', 'dfdf', 'dfdfdf', 7),
(10, NULL, NULL, NULL, 'sdsd', 'dfdf', 'dfdfdf', 8),
(11, NULL, NULL, NULL, 'dfdfd', 'dfdf', 'dfdfdf', 9);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1610014001),
('m130524_201442_init', 1610014036),
('m190124_110200_add_verification_token_column_to_user_table', 1610014036),
('m201222_020118_create_table_description_of_goods', 1610014037),
('m201227_143823_create_table_oadode', 1610014037),
('m210107_112137_add_new_lang_to_oadode', 1610019102),
('m210107_120618_add_constraint_to_oadode', 1610023567),
('m210108_093351_add_drop_application_type_to_oadode', 1610099459),
('m210108_095945_add_lang_colum_to_oadode', 1610100010),
('m210109_011357_add_constraint_to_description_of_goods', 1610163929),
('m210109_060219_add_business_id_colum_to_description_of_goods', 1610172607);

-- --------------------------------------------------------

--
-- Table structure for table `oadode`
--

CREATE TABLE `oadode` (
  `id` int(11) NOT NULL,
  `application_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `legal_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_mailing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` int(11) DEFAULT 1,
  `application_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oadode`
--

INSERT INTO `oadode` (`id`, `application_id`, `customer_id`, `user_id`, `legal_name`, `business_name`, `business_address`, `business_mailing_address`, `business_phone`, `business_fax`, `business_email`, `business_title`, `lang`, `application_type`) VALUES
(2, NULL, NULL, NULL, 'demo', 'dmeo123', 'Gujarat12121', 'Gujarata', '24343', '34343', 'admin@gmail.com', 'b', 0, '2'),
(3, NULL, NULL, NULL, 'React', 'dmeo123', 'Gujarat', 'Gujarat', '3434', '4', 'admin@gmail.com', 'b', 0, '2'),
(4, NULL, NULL, NULL, 'demo', 'dmeo123', 'Gujarat', 'Gujarat', '75656566', '565656', 'admin@gmail.com', 'b,c,d,e', 1, '2'),
(5, NULL, NULL, NULL, 'demo121212', 'dmeo123', 'Gujarat', 'Gujarat', '34343', '34343', 'admin@gmail.com', 'b', 0, '2'),
(6, NULL, NULL, NULL, 'demo123', 'asa', 'asas', 'Gujarat', '4545', '3', 'asd132131@gmail', 'b', 1, '2'),
(7, NULL, NULL, NULL, 'asd', 'dmeo123', 'Gujarat', 'Gujarat', '43', '43', 'admin@gmail.com', 'b', 0, '2'),
(8, NULL, NULL, NULL, 'demo123', 'dmeo123', 'Gujarat', 'Gujarat', '2', '2', 'admin@gmail.com', 'b', 1, '2'),
(9, NULL, NULL, NULL, 'demo', 'dmeo123', 'Gujarat', 'Gujarat', '3434', '343', 'admin@gmail.com', 'b', 0, '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', '', 'e6e061838856bf47e1de730719fb2609', NULL, 'admin@gmail.com', 10, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `description_of_goods`
--
ALTER TABLE `description_of_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_oadode_to_description_of_goods` (`business_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `oadode`
--
ALTER TABLE `oadode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_oadode_to_user` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `description_of_goods`
--
ALTER TABLE `description_of_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oadode`
--
ALTER TABLE `oadode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `description_of_goods`
--
ALTER TABLE `description_of_goods`
  ADD CONSTRAINT `FK_oadode_to_description_of_goods` FOREIGN KEY (`business_id`) REFERENCES `oadode` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `oadode`
--
ALTER TABLE `oadode`
  ADD CONSTRAINT `FK_oadode_to_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
