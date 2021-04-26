-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2021 at 02:40 PM
-- Server version: 8.0.23-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inspireco`
--

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `image` char(36) NOT NULL,
  `parent_category_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `name`, `image`, `parent_category_id`) VALUES
('1e42700a-8f65-4264-9459-3642d998432c', 'published', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:22', NULL, NULL, 'Lawn 2 Piece', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6', '9600d910-1cc4-435b-b334-a0580371de89'),
('9a5d4cd4-3155-4035-a3fb-674807ea64e2', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:46', NULL, NULL, 'Lawn 3 Piece', 'e1b1706b-9f01-4e6b-966c-c3459ec08b5e', '9600d910-1cc4-435b-b334-a0580371de89');

-- --------------------------------------------------------

--
-- Table structure for table `directus_activity`
--

CREATE TABLE `directus_activity` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(45) NOT NULL,
  `user` char(36) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_activity`
--

INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(1, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:03:53', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(2, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:40', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'categories', NULL),
(3, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '1', NULL),
(4, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '2', NULL),
(5, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '3', NULL),
(6, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '4', NULL),
(7, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '5', NULL),
(8, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '6', NULL),
(9, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '7', NULL),
(10, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '1', NULL),
(11, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:13:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '2', NULL),
(12, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:14:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '8', NULL),
(13, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:18:37', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '9', NULL),
(14, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:18:37', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '3', NULL),
(15, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:21:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'categories', NULL),
(16, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:22:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_files', '6713aac4-78b9-468c-aaf7-e3f820e2f7bb', NULL),
(18, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:22:27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_files', 'acdafac7-c27f-4ff4-8414-c42135453438', NULL),
(20, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'products', NULL),
(21, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '10', NULL),
(22, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '11', NULL),
(23, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '12', NULL),
(24, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '13', NULL),
(25, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '14', NULL),
(26, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '15', NULL),
(27, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '16', NULL),
(28, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:04', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '4', NULL),
(29, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:04', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '5', NULL),
(30, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:40:53', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '17', NULL),
(31, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:43:55', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'categories', NULL),
(32, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:22', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'parent_categories', NULL),
(33, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '18', NULL),
(34, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '19', NULL),
(35, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '20', NULL),
(36, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '21', NULL),
(37, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '22', NULL),
(38, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '23', NULL),
(39, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '24', NULL),
(40, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '6', NULL),
(41, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:44:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '7', NULL),
(42, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:45:39', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '25', NULL),
(43, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:46:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'parent_categories', NULL),
(44, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'child_categories', NULL),
(45, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '26', NULL),
(46, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '27', NULL),
(47, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '28', NULL),
(48, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '29', NULL),
(49, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '30', NULL),
(50, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '31', NULL),
(51, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:03', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '32', NULL),
(52, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:04', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '8', NULL),
(53, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:04', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '9', NULL),
(54, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:47:37', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '33', NULL),
(55, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:48:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '34', NULL),
(56, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:48:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '10', NULL),
(57, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:48:46', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'child_categories', NULL),
(58, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:53:33', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '35', NULL),
(59, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:54:33', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '36', NULL),
(60, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:56:12', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '37', NULL),
(61, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:57:12', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '38', NULL),
(62, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:13', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '39', NULL),
(63, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '10', NULL),
(64, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '11', NULL),
(65, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '12', NULL),
(66, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '13', NULL),
(67, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '14', NULL),
(68, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '15', NULL),
(69, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '16', NULL),
(70, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '17', NULL),
(71, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '39', NULL),
(72, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '35', NULL),
(73, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '36', NULL),
(74, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:00:35', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '37', NULL),
(75, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:01:10', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '40', NULL),
(76, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:01:10', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '11', NULL),
(77, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:33', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '41', NULL),
(78, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '10', NULL),
(79, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '11', NULL),
(80, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '12', NULL),
(81, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '13', NULL),
(82, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '14', NULL),
(83, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '15', NULL),
(84, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '16', NULL),
(85, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '17', NULL),
(86, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:44', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '39', NULL),
(87, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:45', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '35', NULL),
(88, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:45', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '41', NULL),
(89, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:45', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '36', NULL),
(90, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:02:45', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '40', NULL),
(91, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '42', NULL),
(92, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'products_directus_files', NULL),
(93, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '43', NULL),
(94, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '44', NULL),
(95, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '45', NULL),
(96, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:06:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '46', NULL),
(97, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:07:00', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '12', NULL),
(98, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:07:00', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '13', NULL),
(99, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:08:00', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_collections', 'products', NULL),
(100, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:11:15', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '47', NULL),
(101, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:11:16', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '48', NULL),
(102, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:11:16', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '14', NULL),
(103, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:12:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'parent_categories', '9600d910-1cc4-435b-b334-a0580371de89', NULL),
(104, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:12:31', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_files', '87ae046e-8e03-4763-8cf0-91364dbdabcd', NULL),
(105, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_files', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6', NULL),
(106, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:21', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'child_categories', '1e42700a-8f65-4264-9459-3642d998432c', NULL),
(107, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:38', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_files', 'e1b1706b-9f01-4e6b-966c-c3459ec08b5e', NULL),
(108, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:46', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'child_categories', '9a5d4cd4-3155-4035-a3fb-674807ea64e2', NULL),
(109, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:14:39', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '48', NULL),
(110, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:14:40', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '14', NULL),
(111, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:17:19', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(112, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:17:19', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '50', NULL),
(113, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:17:20', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(114, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:17:52', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '50', NULL),
(115, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:17:52', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(116, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:19:50', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products_directus_files', '1', NULL),
(117, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:19:50', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products_directus_files', '2', NULL),
(118, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:19:50', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products_directus_files', '3', NULL),
(119, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:19:50', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products', '3d834ff6-ce15-4470-be0e-3453e59007ad', NULL),
(120, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:20:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(121, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:20:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(122, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:21:54', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products', '3d834ff6-ce15-4470-be0e-3453e59007ad', NULL),
(123, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:22:56', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '39', NULL),
(124, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:24:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '39', NULL),
(125, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:24:40', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(126, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:24:46', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(127, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:24:55', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(128, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(129, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(130, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:09', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(131, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:18', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(132, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:39', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(133, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:40', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(134, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:25:41', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(135, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:10', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products_directus_files', '4', NULL),
(136, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:10', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products_directus_files', '5', NULL),
(137, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:10', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'products', '156a4d92-bb26-4d33-9c01-fabceaf0b8d0', NULL),
(138, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:16', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(139, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:17', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(140, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:18', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(141, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:19', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(142, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:20', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(143, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:32:02', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(144, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:32:02', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(145, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:32:48', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(146, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:32:49', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(147, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:33:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(148, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:33:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(149, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:33:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '1', NULL),
(150, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:35:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '49', NULL),
(151, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:35:28', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '15', NULL),
(152, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:05:09', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(153, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:05:48', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '2', NULL),
(154, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:05:49', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_presets', '2', NULL),
(155, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:06:48', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_fields', '47', NULL),
(156, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:06:48', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_relations', '14', NULL),
(157, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '1', NULL),
(158, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '2', NULL),
(159, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '3', NULL),
(160, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:51', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '4', NULL),
(161, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:53', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '5', NULL),
(162, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:53', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '6', NULL),
(163, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:53', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '7', NULL),
(164, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:53', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '8', NULL),
(165, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:56', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '9', NULL),
(166, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:56', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '10', NULL),
(167, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:56', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '11', NULL),
(168, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:56', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '12', NULL),
(169, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '13', NULL),
(170, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '14', NULL),
(171, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '15', NULL),
(172, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:11:58', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '16', NULL),
(173, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:21:55', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(174, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '13', NULL),
(175, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '15', NULL),
(176, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '14', NULL),
(177, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:23', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '16', NULL),
(178, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '9', NULL),
(179, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '11', NULL),
(180, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '12', NULL),
(181, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:27', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '10', NULL),
(182, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:29', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '9', NULL),
(183, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:29', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '10', NULL),
(184, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:29', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '11', NULL),
(185, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:22:29', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '12', NULL),
(186, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:24:14', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(187, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:57', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '1', NULL),
(188, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:57', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '2', NULL),
(189, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:57', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '3', NULL),
(190, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:57', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '4', NULL),
(191, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '5', NULL),
(192, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '6', NULL),
(193, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '7', NULL),
(194, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:56:59', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '8', NULL),
(195, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:57:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '13', NULL),
(196, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:57:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '14', NULL),
(197, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:57:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '15', NULL),
(198, 'delete', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 21:57:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '16', NULL),
(199, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 08:57:01', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_settings', '1', NULL),
(200, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:21:24', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Insomnia/2021.1.0 Chrome/83.0.4103.122 Electron/9.1.1 Safari/537.36', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(201, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:21:25', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Insomnia/2021.1.0 Chrome/83.0.4103.122 Electron/9.1.1 Safari/537.36', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(202, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:32:17', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '42c5f0c1-29cb-4656-a71d-4919e8d29531', NULL),
(203, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:33:18', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', 'bdd6d0ac-92c2-4815-b46d-ea9a98601c00', NULL),
(204, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:06:12', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '338ac315-79b5-4b5e-bc10-0084c0736608', NULL),
(205, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:13:17', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '2dafc758-9097-4515-b997-6e64809bfb56', NULL),
(206, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:13:21', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '509fd07b-0699-46a7-9da9-4ef4bdfa045c', NULL),
(207, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:14:33', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '036ce600-3fbf-4425-a306-123230e1a9ad', NULL),
(208, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:45:34', '127.0.0.1', 'insomnia/2021.1.0', 'parent_categories', '6c27ede9-a6f2-434c-a881-b8e919db8046', NULL),
(209, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 12:04:52', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(210, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:09:12', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(211, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:23:50', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(212, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:24:00', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(213, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:25:27', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(214, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:26:05', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(215, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:33:07', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(216, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:33:20', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(217, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:34:13', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(218, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:34:32', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(219, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:36:45', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(220, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:37:20', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(221, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:37:32', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(222, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:45:26', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(223, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:45:48', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(224, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 14:47:10', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(225, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:05:27', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(226, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:06:12', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(227, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:06:59', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(228, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:07:54', '::ffff:127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(229, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:48:17', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(230, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:48:43', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(231, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:55:07', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(232, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:55:43', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(233, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:56:31', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(234, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:57:53', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(235, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:58:03', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(236, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 15:59:42', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(237, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:06:41', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(238, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:09:06', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(239, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:10:11', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(240, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:11:00', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(241, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:11:40', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(242, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:11:57', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(243, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:12:58', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(244, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:13:15', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(245, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:14:13', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(246, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:15:26', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL);
INSERT INTO `directus_activity` (`id`, `action`, `user`, `timestamp`, `ip`, `user_agent`, `collection`, `item`, `comment`) VALUES
(247, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:16:32', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(248, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:17:10', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(249, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '17', NULL),
(250, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '18', NULL),
(251, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '19', NULL),
(252, 'create', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:05', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '20', NULL),
(253, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:06', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '18', NULL),
(254, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:06', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '19', NULL),
(255, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:06', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '17', NULL),
(256, 'update', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:06', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:87.0) Gecko/20100101 Firefox/87.0', 'directus_permissions', '20', NULL),
(257, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:58:34', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(258, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:59:32', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(259, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 16:59:46', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(260, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:00:01', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(261, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:00:49', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(262, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:01:15', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(263, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:02:32', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(264, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:02:44', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(265, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:04:42', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(266, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:04:56', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(267, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:05:36', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(268, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:06:22', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(269, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:07:20', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(270, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:07:40', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(271, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:07:57', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(272, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:08:36', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(273, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:23:46', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(274, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:32:46', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(275, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:34:15', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(276, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:55:37', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(277, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:58:50', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(278, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 17:59:43', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(279, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:01:59', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(280, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:02:39', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(281, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:05:06', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(282, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:05:17', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(283, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:05:50', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(284, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:12:43', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(285, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:13:23', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(286, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:14:00', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(287, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:39:25', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(288, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:39:43', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(289, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:43:11', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(290, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:48:16', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(291, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 18:51:15', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(292, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 17:31:03', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(293, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:20:59', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(294, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:25:13', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(295, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:26:46', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(296, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:31:21', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(297, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:53:13', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(298, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:56:59', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(299, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 20:58:08', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(300, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 21:03:11', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(301, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 21:14:04', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(302, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-12 22:54:55', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(303, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-16 01:40:18', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(304, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-16 03:31:45', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(305, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-16 03:32:51', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(306, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-16 03:33:57', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(307, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-16 03:35:55', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL),
(308, 'authenticate', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-21 14:21:04', '::ffff:127.0.0.1', 'axios/0.21.1', 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_collections`
--

CREATE TABLE `directus_collections` (
  `collection` varchar(64) NOT NULL,
  `icon` varchar(30) DEFAULT NULL,
  `note` text,
  `display_template` varchar(255) DEFAULT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `singleton` tinyint(1) NOT NULL DEFAULT '0',
  `translations` json DEFAULT NULL,
  `archive_field` varchar(64) DEFAULT NULL,
  `archive_app_filter` tinyint(1) NOT NULL DEFAULT '1',
  `archive_value` varchar(255) DEFAULT NULL,
  `unarchive_value` varchar(255) DEFAULT NULL,
  `sort_field` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_collections`
--

INSERT INTO `directus_collections` (`collection`, `icon`, `note`, `display_template`, `hidden`, `singleton`, `translations`, `archive_field`, `archive_app_filter`, `archive_value`, `unarchive_value`, `sort_field`) VALUES
('child_categories', 'category', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort'),
('parent_categories', 'supervised_user_circle', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort'),
('products', 'art_track', NULL, NULL, 0, 0, NULL, 'status', 1, 'archived', 'draft', 'sort'),
('products_directus_files', 'import_export', NULL, NULL, 1, 0, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_fields`
--

CREATE TABLE `directus_fields` (
  `id` int UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `field` varchar(64) NOT NULL,
  `special` varchar(64) DEFAULT NULL,
  `interface` varchar(64) DEFAULT NULL,
  `options` json DEFAULT NULL,
  `display` varchar(64) DEFAULT NULL,
  `display_options` json DEFAULT NULL,
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int UNSIGNED DEFAULT NULL,
  `width` varchar(30) DEFAULT 'full',
  `group` int UNSIGNED DEFAULT NULL,
  `translations` json DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_fields`
--

INSERT INTO `directus_fields` (`id`, `collection`, `field`, `special`, `interface`, `options`, `display`, `display_options`, `readonly`, `hidden`, `sort`, `width`, `group`, `translations`, `note`) VALUES
(10, 'products', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 1, 1, 'full', NULL, NULL, NULL),
(11, 'products', 'status', NULL, 'dropdown', '{\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}', 'labels', '{\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}', 0, 0, 2, 'full', NULL, NULL, NULL),
(12, 'products', 'sort', NULL, 'numeric', NULL, NULL, NULL, 0, 1, 3, 'full', NULL, NULL, NULL),
(13, 'products', 'user_created', 'user-created', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, 4, 'half', NULL, NULL, NULL),
(14, 'products', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 5, 'half', NULL, NULL, NULL),
(15, 'products', 'user_updated', 'user-updated', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, 6, 'half', NULL, NULL, NULL),
(16, 'products', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, 7, 'half', NULL, NULL, NULL),
(17, 'products', 'name', NULL, 'text-input', NULL, 'raw', NULL, 0, 0, 8, 'full', NULL, NULL, NULL),
(18, 'parent_categories', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL),
(19, 'parent_categories', 'status', NULL, 'dropdown', '{\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}', 'labels', '{\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}', 0, 0, NULL, 'full', NULL, NULL, NULL),
(20, 'parent_categories', 'sort', NULL, 'numeric', NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL),
(21, 'parent_categories', 'user_created', 'user-created', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL),
(22, 'parent_categories', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, NULL, 'half', NULL, NULL, NULL),
(23, 'parent_categories', 'user_updated', 'user-updated', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL),
(24, 'parent_categories', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, NULL, 'half', NULL, NULL, NULL),
(25, 'parent_categories', 'name', NULL, 'text-input', NULL, 'raw', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL),
(26, 'child_categories', 'id', 'uuid', 'text-input', NULL, NULL, NULL, 1, 1, NULL, 'full', NULL, NULL, NULL),
(27, 'child_categories', 'status', NULL, 'dropdown', '{\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}', 'labels', '{\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}', 0, 0, NULL, 'full', NULL, NULL, NULL),
(28, 'child_categories', 'sort', NULL, 'numeric', NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL),
(29, 'child_categories', 'user_created', 'user-created', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL),
(30, 'child_categories', 'date_created', 'date-created', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, NULL, 'half', NULL, NULL, NULL),
(31, 'child_categories', 'user_updated', 'user-updated', 'user', '{\"display\": \"both\"}', 'user', NULL, 1, 1, NULL, 'half', NULL, NULL, NULL),
(32, 'child_categories', 'date_updated', 'date-updated', 'datetime', NULL, 'datetime', '{\"relative\": true}', 1, 1, NULL, 'half', NULL, NULL, NULL),
(33, 'child_categories', 'name', NULL, 'text-input', NULL, 'raw', NULL, 0, 0, NULL, 'full', NULL, NULL, NULL),
(34, 'child_categories', 'image', NULL, 'image', NULL, 'image', '{\"circle\": true}', 0, 0, NULL, 'full', NULL, NULL, NULL),
(35, 'products', 'quantity', NULL, 'numeric', NULL, 'raw', NULL, 0, 0, 10, 'full', NULL, NULL, NULL),
(36, 'products', 'old_price', NULL, 'numeric', NULL, 'raw', NULL, 0, 0, 12, 'full', NULL, NULL, NULL),
(39, 'products', 'description', NULL, 'wysiwyg', '{\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}', 'raw', NULL, 0, 0, 9, 'full', NULL, NULL, NULL),
(40, 'products', 'feature_image', NULL, 'image', NULL, 'image', '{\"circle\": true}', 0, 0, 13, 'full', NULL, NULL, NULL),
(41, 'products', 'price', NULL, 'numeric', '{\"min\": 1}', 'raw', NULL, 0, 0, 11, 'full', NULL, NULL, NULL),
(42, 'products', 'detail_images', 'files', 'files', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL),
(43, 'products_directus_files', 'id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL),
(44, 'directus_files', 'products', 'm2m', 'many-to-many', NULL, NULL, NULL, 0, 0, NULL, 'full', NULL, NULL, NULL),
(45, 'products_directus_files', 'products_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL),
(46, 'products_directus_files', 'directus_files_id', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, 'full', NULL, NULL, NULL),
(47, 'child_categories', 'parent_category_id', NULL, 'many-to-one', '{\"template\": \"{{name}}\"}', 'related-values', '{\"template\": \"{{name}}\"}', 0, 0, NULL, 'full', NULL, '[{\"language\": \"en-US\", \"translation\": \"Parent Category\"}]', NULL),
(48, 'parent_categories', 'child_categories', 'o2m', 'one-to-many', NULL, 'related-values', '{\"template\": \"{{name}}\"}', 0, 0, NULL, 'full', NULL, NULL, NULL),
(49, 'products', 'child_category_id', NULL, 'many-to-one', '{\"template\": \"{{name}}\"}', 'related-values', '{\"template\": \"{{name}}\"}', 0, 0, NULL, 'full', NULL, '[{\"language\": \"en-US\", \"translation\": \"Child Category\"}]', NULL),
(50, 'child_categories', 'products', 'o2m', 'one-to-many', NULL, 'related-values', '{\"template\": \"{{name}}\"}', 0, 0, NULL, 'full', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_files`
--

CREATE TABLE `directus_files` (
  `id` char(36) NOT NULL,
  `storage` varchar(255) NOT NULL,
  `filename_disk` varchar(255) DEFAULT NULL,
  `filename_download` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `folder` char(36) DEFAULT NULL,
  `uploaded_by` char(36) DEFAULT NULL,
  `uploaded_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` char(36) DEFAULT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `charset` varchar(50) DEFAULT NULL,
  `filesize` int UNSIGNED NOT NULL DEFAULT '0',
  `width` int UNSIGNED DEFAULT NULL,
  `height` int UNSIGNED DEFAULT NULL,
  `duration` int UNSIGNED DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `description` text,
  `location` text,
  `tags` text,
  `metadata` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_files`
--

INSERT INTO `directus_files` (`id`, `storage`, `filename_disk`, `filename_download`, `title`, `type`, `folder`, `uploaded_by`, `uploaded_on`, `modified_by`, `modified_on`, `charset`, `filesize`, `width`, `height`, `duration`, `embed`, `description`, `location`, `tags`, `metadata`) VALUES
('5ee847d0-07e9-4d65-a775-37fb1fdb45c6', 'local', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6.jpeg', 'Quotefancy-1700728-3840x2160.jpg', 'Quotefancy 1700728 3840x2160', 'image/jpeg', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:05', NULL, '2021-04-10 18:13:05', NULL, 1615216, 3840, 2160, NULL, NULL, NULL, NULL, NULL, '{}'),
('6713aac4-78b9-468c-aaf7-e3f820e2f7bb', 'local', '6713aac4-78b9-468c-aaf7-e3f820e2f7bb.jpeg', 'Quotefancy-1700728-3840x2160.jpg', 'Quotefancy 1700728 3840x2160', 'image/jpeg', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:22:05', NULL, '2021-04-10 17:22:06', NULL, 1615216, 3840, 2160, NULL, NULL, NULL, NULL, NULL, '{}'),
('87ae046e-8e03-4763-8cf0-91364dbdabcd', 'local', '87ae046e-8e03-4763-8cf0-91364dbdabcd.jpeg', 'Quotefancy-1700728-3840x2160.jpg', 'Quotefancy 1700728 3840x2160', 'image/jpeg', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:12:31', NULL, '2021-04-10 18:12:32', NULL, 1615216, 3840, 2160, NULL, NULL, NULL, NULL, NULL, '{}'),
('acdafac7-c27f-4ff4-8414-c42135453438', 'local', 'acdafac7-c27f-4ff4-8414-c42135453438.jpeg', 'Quotefancy-2000881-3840x2160.jpg', 'Quotefancy 2000881 3840x2160', 'image/jpeg', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 17:22:27', NULL, '2021-04-10 17:22:27', NULL, 1624343, 3840, 2160, NULL, NULL, NULL, NULL, NULL, '{}'),
('e1b1706b-9f01-4e6b-966c-c3459ec08b5e', 'local', 'e1b1706b-9f01-4e6b-966c-c3459ec08b5e.jpeg', 'Quotefancy-2000881-3840x2160.jpg', 'Quotefancy 2000881 3840x2160', 'image/jpeg', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:13:38', NULL, '2021-04-10 18:13:39', NULL, 1624343, 3840, 2160, NULL, NULL, NULL, NULL, NULL, '{}');

-- --------------------------------------------------------

--
-- Table structure for table `directus_folders`
--

CREATE TABLE `directus_folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directus_migrations`
--

CREATE TABLE `directus_migrations` (
  `version` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_migrations`
--

INSERT INTO `directus_migrations` (`version`, `name`, `timestamp`) VALUES
('20201028A', 'Remove Collection Foreign Keys', '2021-04-10 17:02:38'),
('20201029A', 'Remove System Relations', '2021-04-10 17:02:38'),
('20201029B', 'Remove System Collections', '2021-04-10 17:02:38'),
('20201029C', 'Remove System Fields', '2021-04-10 17:02:38'),
('20201105A', 'Add Cascade System Relations', '2021-04-10 17:02:43'),
('20201105B', 'Change Webhook URL Type', '2021-04-10 17:02:43'),
('20210225A', 'Add Relations Sort Field', '2021-04-10 17:02:43'),
('20210304A', 'Remove Locked Fields', '2021-04-10 17:02:43'),
('20210312A', 'Webhooks Collections Text', '2021-04-10 17:02:44'),
('20210331A', 'Add Refresh Interval', '2021-04-10 17:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `directus_permissions`
--

CREATE TABLE `directus_permissions` (
  `id` int UNSIGNED NOT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) NOT NULL,
  `action` varchar(10) NOT NULL,
  `permissions` json DEFAULT NULL,
  `validation` json DEFAULT NULL,
  `presets` json DEFAULT NULL,
  `fields` text,
  `limit` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_permissions`
--

INSERT INTO `directus_permissions` (`id`, `role`, `collection`, `action`, `permissions`, `validation`, `presets`, `fields`, `limit`) VALUES
(17, NULL, 'directus_files', 'update', NULL, NULL, NULL, '*', NULL),
(18, NULL, 'directus_files', 'create', NULL, NULL, NULL, '*', NULL),
(19, NULL, 'directus_files', 'read', NULL, NULL, NULL, '*', NULL),
(20, NULL, 'directus_files', 'delete', NULL, NULL, NULL, '*', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_presets`
--

CREATE TABLE `directus_presets` (
  `id` int UNSIGNED NOT NULL,
  `bookmark` varchar(255) DEFAULT NULL,
  `user` char(36) DEFAULT NULL,
  `role` char(36) DEFAULT NULL,
  `collection` varchar(64) DEFAULT NULL,
  `search` varchar(100) DEFAULT NULL,
  `filters` json DEFAULT NULL,
  `layout` varchar(100) DEFAULT 'tabular',
  `layout_query` json DEFAULT NULL,
  `layout_options` json DEFAULT NULL,
  `refresh_interval` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_presets`
--

INSERT INTO `directus_presets` (`id`, `bookmark`, `user`, `role`, `collection`, `search`, `filters`, `layout`, `layout_query`, `layout_options`, `refresh_interval`) VALUES
(1, NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL, 'products', NULL, '[{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}]', 'tabular', '{\"tabular\": {\"page\": 1, \"sort\": \"-quantity\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}', '{\"tabular\": {\"widths\": {\"child_category_id\": 192}}}', NULL),
(2, NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', NULL, 'child_categories', NULL, '[{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}]', 'tabular', NULL, '{\"tabular\": {\"widths\": {\"parent_category_id\": 224}}}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_relations`
--

CREATE TABLE `directus_relations` (
  `id` int UNSIGNED NOT NULL,
  `many_collection` varchar(64) NOT NULL,
  `many_field` varchar(64) NOT NULL,
  `many_primary` varchar(64) NOT NULL,
  `one_collection` varchar(64) DEFAULT NULL,
  `one_field` varchar(64) DEFAULT NULL,
  `one_primary` varchar(64) DEFAULT NULL,
  `one_collection_field` varchar(64) DEFAULT NULL,
  `one_allowed_collections` text,
  `junction_field` varchar(64) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_relations`
--

INSERT INTO `directus_relations` (`id`, `many_collection`, `many_field`, `many_primary`, `one_collection`, `one_field`, `one_primary`, `one_collection_field`, `one_allowed_collections`, `junction_field`, `sort_field`) VALUES
(4, 'products', 'user_created', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(5, 'products', 'user_updated', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(6, 'parent_categories', 'user_created', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(7, 'parent_categories', 'user_updated', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(8, 'child_categories', 'user_created', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(9, 'child_categories', 'user_updated', 'id', 'directus_users', NULL, 'id', NULL, NULL, NULL, NULL),
(10, 'child_categories', 'image', 'id', 'directus_files', NULL, 'id', NULL, NULL, NULL, NULL),
(11, 'products', 'feature_image', 'id', 'directus_files', NULL, 'id', NULL, NULL, NULL, NULL),
(12, 'products_directus_files', 'directus_files_id', 'id', 'directus_files', 'products', 'id', NULL, NULL, 'products_id', NULL),
(13, 'products_directus_files', 'products_id', 'id', 'products', 'detail_images', 'id', NULL, NULL, 'directus_files_id', NULL),
(14, 'child_categories', 'parent_category_id', 'id', 'parent_categories', 'child_categories', 'id', NULL, NULL, NULL, NULL),
(15, 'products', 'child_category_id', 'id', 'child_categories', 'products', 'id', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_revisions`
--

CREATE TABLE `directus_revisions` (
  `id` int UNSIGNED NOT NULL,
  `activity` int UNSIGNED NOT NULL,
  `collection` varchar(64) NOT NULL,
  `item` varchar(255) NOT NULL,
  `data` json DEFAULT NULL,
  `delta` json DEFAULT NULL,
  `parent` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_revisions`
--

INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(1, 2, 'directus_collections', 'categories', '{\"singleton\": false, \"collection\": \"categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": false, \"collection\": \"categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(2, 3, 'directus_fields', '1', '{\"id\": 1, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"categories\"}', '{\"id\": 1, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"categories\"}', NULL),
(3, 4, 'directus_fields', '2', '{\"id\": 2, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"id\": 2, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', NULL),
(4, 5, 'directus_fields', '3', '{\"id\": 3, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"categories\"}', '{\"id\": 3, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"categories\"}', NULL),
(5, 6, 'directus_fields', '4', '{\"id\": 4, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"categories\"}', '{\"id\": 4, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"categories\"}', NULL),
(6, 7, 'directus_fields', '5', '{\"id\": 5, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 5, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categories\", \"display_options\": {\"relative\": true}}', NULL),
(7, 8, 'directus_fields', '6', '{\"id\": 6, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"categories\"}', '{\"id\": 6, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"categories\"}', NULL),
(8, 9, 'directus_fields', '7', '{\"id\": 7, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 7, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"categories\", \"display_options\": {\"relative\": true}}', NULL),
(9, 10, 'directus_relations', '1', '{\"id\": 1, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"categories\"}', '{\"id\": 1, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"categories\"}', NULL),
(10, 11, 'directus_relations', '2', '{\"id\": 2, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"categories\"}', '{\"id\": 2, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"categories\"}', NULL),
(11, 12, 'directus_fields', '8', '{\"id\": 8, \"field\": \"name\", \"hidden\": false, \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"categories\"}', '{\"id\": 8, \"field\": \"name\", \"hidden\": false, \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"categories\"}', NULL),
(12, 13, 'directus_fields', '9', '{\"id\": 9, \"field\": \"image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"categories\", \"display_options\": {\"circle\": true}}', '{\"id\": 9, \"field\": \"image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"categories\", \"display_options\": {\"circle\": true}}', NULL),
(13, 14, 'directus_relations', '3', '{\"id\": 3, \"many_field\": \"image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"categories\"}', '{\"id\": 3, \"many_field\": \"image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"categories\"}', NULL),
(14, 15, 'directus_collections', 'categories', '{\"icon\": \"category\", \"note\": null, \"hidden\": false, \"singleton\": false, \"collection\": \"categories\", \"sort_field\": \"sort\", \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\", \"display_template\": null, \"archive_app_filter\": true}', '{\"icon\": \"category\"}', NULL),
(15, 16, 'directus_files', '6713aac4-78b9-468c-aaf7-e3f820e2f7bb', '{\"id\": \"6713aac4-78b9-468c-aaf7-e3f820e2f7bb\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', '{\"id\": \"6713aac4-78b9-468c-aaf7-e3f820e2f7bb\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', NULL),
(17, 18, 'directus_files', 'acdafac7-c27f-4ff4-8414-c42135453438', '{\"id\": \"acdafac7-c27f-4ff4-8414-c42135453438\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 2000881 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-2000881-3840x2160.jpg\"}', '{\"id\": \"acdafac7-c27f-4ff4-8414-c42135453438\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 2000881 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-2000881-3840x2160.jpg\"}', NULL),
(19, 20, 'directus_collections', 'products', '{\"singleton\": false, \"collection\": \"products\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": false, \"collection\": \"products\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(20, 21, 'directus_fields', '10', '{\"id\": 10, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"products\"}', '{\"id\": 10, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"products\"}', NULL),
(21, 22, 'directus_fields', '11', '{\"id\": 11, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"products\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"id\": 11, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"products\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', NULL),
(22, 23, 'directus_fields', '12', '{\"id\": 12, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"products\"}', '{\"id\": 12, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"products\"}', NULL),
(23, 24, 'directus_fields', '13', '{\"id\": 13, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\"}', '{\"id\": 13, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\"}', NULL),
(24, 25, 'directus_fields', '14', '{\"id\": 14, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"display_options\": {\"relative\": true}}', '{\"id\": 14, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"display_options\": {\"relative\": true}}', NULL),
(25, 26, 'directus_fields', '15', '{\"id\": 15, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\"}', '{\"id\": 15, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\"}', NULL),
(26, 27, 'directus_fields', '16', '{\"id\": 16, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"display_options\": {\"relative\": true}}', '{\"id\": 16, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"display_options\": {\"relative\": true}}', NULL),
(27, 28, 'directus_relations', '4', '{\"id\": 4, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"products\"}', '{\"id\": 4, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"products\"}', NULL),
(28, 29, 'directus_relations', '5', '{\"id\": 5, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"products\"}', '{\"id\": 5, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"products\"}', NULL),
(29, 30, 'directus_fields', '17', '{\"id\": 17, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"products\"}', '{\"id\": 17, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"products\"}', NULL),
(30, 32, 'directus_collections', 'parent_categories', '{\"singleton\": false, \"collection\": \"parent_categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": false, \"collection\": \"parent_categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(31, 33, 'directus_fields', '18', '{\"id\": 18, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"parent_categories\"}', '{\"id\": 18, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"parent_categories\"}', NULL),
(32, 34, 'directus_fields', '19', '{\"id\": 19, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"parent_categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"id\": 19, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"parent_categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', NULL),
(33, 35, 'directus_fields', '20', '{\"id\": 20, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"parent_categories\"}', '{\"id\": 20, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"parent_categories\"}', NULL),
(34, 36, 'directus_fields', '21', '{\"id\": 21, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"parent_categories\"}', '{\"id\": 21, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"parent_categories\"}', NULL),
(35, 37, 'directus_fields', '22', '{\"id\": 22, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"parent_categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 22, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"parent_categories\", \"display_options\": {\"relative\": true}}', NULL),
(36, 38, 'directus_fields', '23', '{\"id\": 23, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"parent_categories\"}', '{\"id\": 23, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"parent_categories\"}', NULL),
(37, 39, 'directus_fields', '24', '{\"id\": 24, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"parent_categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 24, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"parent_categories\", \"display_options\": {\"relative\": true}}', NULL),
(38, 40, 'directus_relations', '6', '{\"id\": 6, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"parent_categories\"}', '{\"id\": 6, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"parent_categories\"}', NULL),
(39, 41, 'directus_relations', '7', '{\"id\": 7, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"parent_categories\"}', '{\"id\": 7, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"parent_categories\"}', NULL),
(40, 42, 'directus_fields', '25', '{\"id\": 25, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"parent_categories\"}', '{\"id\": 25, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"parent_categories\"}', NULL),
(41, 43, 'directus_collections', 'parent_categories', '{\"icon\": \"supervised_user_circle\", \"note\": null, \"hidden\": false, \"singleton\": false, \"collection\": \"parent_categories\", \"sort_field\": \"sort\", \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\", \"display_template\": null, \"archive_app_filter\": true}', '{\"icon\": \"supervised_user_circle\"}', NULL),
(42, 44, 'directus_collections', 'child_categories', '{\"singleton\": false, \"collection\": \"child_categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', '{\"singleton\": false, \"collection\": \"child_categories\", \"sort_field\": \"sort\", \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\"}', NULL),
(43, 45, 'directus_fields', '26', '{\"id\": 26, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"child_categories\"}', '{\"id\": 26, \"field\": \"id\", \"hidden\": true, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"child_categories\"}', NULL),
(44, 46, 'directus_fields', '27', '{\"id\": 27, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"child_categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"id\": 27, \"field\": \"status\", \"width\": \"full\", \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"interface\": \"dropdown\", \"collection\": \"child_categories\", \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', NULL),
(45, 47, 'directus_fields', '28', '{\"id\": 28, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"child_categories\"}', '{\"id\": 28, \"field\": \"sort\", \"hidden\": true, \"interface\": \"numeric\", \"collection\": \"child_categories\"}', NULL),
(46, 48, 'directus_fields', '29', '{\"id\": 29, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"child_categories\"}', '{\"id\": 29, \"field\": \"user_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"child_categories\"}', NULL),
(47, 49, 'directus_fields', '30', '{\"id\": 30, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"child_categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 30, \"field\": \"date_created\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"child_categories\", \"display_options\": {\"relative\": true}}', NULL),
(48, 50, 'directus_fields', '31', '{\"id\": 31, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"child_categories\"}', '{\"id\": 31, \"field\": \"user_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"child_categories\"}', NULL),
(49, 51, 'directus_fields', '32', '{\"id\": 32, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"child_categories\", \"display_options\": {\"relative\": true}}', '{\"id\": 32, \"field\": \"date_updated\", \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"child_categories\", \"display_options\": {\"relative\": true}}', NULL),
(50, 52, 'directus_relations', '8', '{\"id\": 8, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"child_categories\"}', '{\"id\": 8, \"many_field\": \"user_created\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"child_categories\"}', NULL),
(51, 53, 'directus_relations', '9', '{\"id\": 9, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"child_categories\"}', '{\"id\": 9, \"many_field\": \"user_updated\", \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_users\", \"many_collection\": \"child_categories\"}', NULL),
(52, 54, 'directus_fields', '33', '{\"id\": 33, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"child_categories\"}', '{\"id\": 33, \"field\": \"name\", \"hidden\": false, \"display\": \"raw\", \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"child_categories\"}', NULL),
(53, 55, 'directus_fields', '34', '{\"id\": 34, \"field\": \"image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"child_categories\", \"display_options\": {\"circle\": true}}', '{\"id\": 34, \"field\": \"image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"child_categories\", \"display_options\": {\"circle\": true}}', NULL),
(54, 56, 'directus_relations', '10', '{\"id\": 10, \"many_field\": \"image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"child_categories\"}', '{\"id\": 10, \"many_field\": \"image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"child_categories\"}', NULL),
(55, 57, 'directus_collections', 'child_categories', '{\"icon\": \"category\", \"note\": null, \"hidden\": false, \"singleton\": false, \"collection\": \"child_categories\", \"sort_field\": \"sort\", \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\", \"display_template\": null, \"archive_app_filter\": true}', '{\"icon\": \"category\"}', NULL),
(56, 58, 'directus_fields', '35', '{\"id\": 35, \"field\": \"quantity\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', '{\"id\": 35, \"field\": \"quantity\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', NULL),
(57, 59, 'directus_fields', '36', '{\"id\": 36, \"field\": \"old_price\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', '{\"id\": 36, \"field\": \"old_price\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', NULL),
(58, 60, 'directus_fields', '37', '{\"id\": 37, \"field\": \"new_price\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', '{\"id\": 37, \"field\": \"new_price\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', NULL),
(59, 61, 'directus_fields', '38', '{\"id\": 38, \"field\": \"mam\", \"hidden\": false, \"special\": [\"alias\", \"no-data\"], \"readonly\": false, \"collection\": \"products\"}', '{\"id\": 38, \"field\": \"mam\", \"hidden\": false, \"special\": [\"alias\", \"no-data\"], \"readonly\": false, \"collection\": \"products\"}', NULL),
(60, 62, 'directus_fields', '39', '{\"id\": 39, \"field\": \"description\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"display_options\": null}', '{\"id\": 39, \"field\": \"description\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"display_options\": null}', NULL),
(61, 63, 'directus_fields', '10', '{\"id\": 10, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id\", \"collection\": \"products\"}', NULL),
(62, 64, 'directus_fields', '11', '{\"id\": 11, \"note\": null, \"sort\": 2, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, \"interface\": \"dropdown\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"sort\": 2, \"field\": \"status\", \"collection\": \"products\"}', NULL),
(63, 65, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": 3, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"sort\", \"collection\": \"products\"}', NULL),
(64, 66, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": 4, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"user_created\", \"collection\": \"products\"}', NULL),
(65, 67, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": 5, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"relative\": true}}', '{\"sort\": 5, \"field\": \"date_created\", \"collection\": \"products\"}', NULL),
(66, 68, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 6, \"field\": \"user_updated\", \"collection\": \"products\"}', NULL),
(67, 69, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"relative\": true}}', '{\"sort\": 7, \"field\": \"date_updated\", \"collection\": \"products\"}', NULL),
(68, 70, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 8, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 8, \"field\": \"name\", \"collection\": \"products\"}', NULL),
(69, 71, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 9, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 9, \"field\": \"description\", \"collection\": \"products\"}', NULL),
(70, 72, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 10, \"field\": \"quantity\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 10, \"field\": \"quantity\", \"collection\": \"products\"}', NULL),
(71, 73, 'directus_fields', '36', '{\"id\": 36, \"note\": null, \"sort\": 11, \"field\": \"old_price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 11, \"field\": \"old_price\", \"collection\": \"products\"}', NULL),
(72, 74, 'directus_fields', '37', '{\"id\": 37, \"note\": null, \"sort\": 12, \"field\": \"new_price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 12, \"field\": \"new_price\", \"collection\": \"products\"}', NULL),
(73, 75, 'directus_fields', '40', '{\"id\": 40, \"field\": \"feature_image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"products\", \"display_options\": {\"circle\": true}}', '{\"id\": 40, \"field\": \"feature_image\", \"hidden\": false, \"display\": \"image\", \"readonly\": false, \"interface\": \"image\", \"collection\": \"products\", \"display_options\": {\"circle\": true}}', NULL),
(74, 76, 'directus_relations', '11', '{\"id\": 11, \"many_field\": \"feature_image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"products\"}', '{\"id\": 11, \"many_field\": \"feature_image\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"directus_files\", \"many_collection\": \"products\"}', NULL),
(75, 77, 'directus_fields', '41', '{\"id\": 41, \"field\": \"price\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', '{\"id\": 41, \"field\": \"price\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"display_options\": null}', NULL),
(76, 78, 'directus_fields', '10', '{\"id\": 10, \"note\": null, \"sort\": 1, \"field\": \"id\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": [\"uuid\"], \"readonly\": true, \"interface\": \"text-input\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 1, \"field\": \"id\", \"collection\": \"products\"}', NULL),
(77, 79, 'directus_fields', '11', '{\"id\": 11, \"note\": null, \"sort\": 2, \"field\": \"status\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"labels\", \"options\": {\"choices\": [{\"text\": \"Published\", \"value\": \"published\"}, {\"text\": \"Draft\", \"value\": \"draft\"}, {\"text\": \"Archived\", \"value\": \"archived\"}]}, \"special\": null, \"readonly\": false, \"interface\": \"dropdown\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"choices\": [{\"value\": \"published\", \"background\": \"#00C897\"}, {\"value\": \"draft\", \"background\": \"#D3DAE4\"}, {\"value\": \"archived\", \"background\": \"#F7971C\"}], \"showAsDot\": true}}', '{\"sort\": 2, \"field\": \"status\", \"collection\": \"products\"}', NULL),
(78, 80, 'directus_fields', '12', '{\"id\": 12, \"note\": null, \"sort\": 3, \"field\": \"sort\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": null, \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 3, \"field\": \"sort\", \"collection\": \"products\"}', NULL),
(79, 81, 'directus_fields', '13', '{\"id\": 13, \"note\": null, \"sort\": 4, \"field\": \"user_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-created\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 4, \"field\": \"user_created\", \"collection\": \"products\"}', NULL),
(80, 82, 'directus_fields', '14', '{\"id\": 14, \"note\": null, \"sort\": 5, \"field\": \"date_created\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, \"special\": [\"date-created\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"relative\": true}}', '{\"sort\": 5, \"field\": \"date_created\", \"collection\": \"products\"}', NULL),
(81, 83, 'directus_fields', '15', '{\"id\": 15, \"note\": null, \"sort\": 6, \"field\": \"user_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"user\", \"options\": {\"display\": \"both\"}, \"special\": [\"user-updated\"], \"readonly\": true, \"interface\": \"user\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 6, \"field\": \"user_updated\", \"collection\": \"products\"}', NULL),
(82, 84, 'directus_fields', '16', '{\"id\": 16, \"note\": null, \"sort\": 7, \"field\": \"date_updated\", \"group\": null, \"width\": \"half\", \"hidden\": true, \"display\": \"datetime\", \"options\": null, \"special\": [\"date-updated\"], \"readonly\": true, \"interface\": \"datetime\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"relative\": true}}', '{\"sort\": 7, \"field\": \"date_updated\", \"collection\": \"products\"}', NULL),
(83, 85, 'directus_fields', '17', '{\"id\": 17, \"note\": null, \"sort\": 8, \"field\": \"name\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"text-input\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 8, \"field\": \"name\", \"collection\": \"products\"}', NULL),
(84, 86, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 9, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 9, \"field\": \"description\", \"collection\": \"products\"}', NULL),
(85, 87, 'directus_fields', '35', '{\"id\": 35, \"note\": null, \"sort\": 10, \"field\": \"quantity\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 10, \"field\": \"quantity\", \"collection\": \"products\"}', NULL),
(86, 88, 'directus_fields', '41', '{\"id\": 41, \"note\": null, \"sort\": 11, \"field\": \"price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"min\": 1}, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 11, \"field\": \"price\", \"collection\": \"products\"}', NULL),
(87, 89, 'directus_fields', '36', '{\"id\": 36, \"note\": null, \"sort\": 12, \"field\": \"old_price\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"numeric\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"sort\": 12, \"field\": \"old_price\", \"collection\": \"products\"}', NULL),
(88, 90, 'directus_fields', '40', '{\"id\": 40, \"note\": null, \"sort\": 13, \"field\": \"feature_image\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"image\", \"options\": null, \"special\": null, \"readonly\": false, \"interface\": \"image\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"circle\": true}}', '{\"sort\": 13, \"field\": \"feature_image\", \"collection\": \"products\"}', NULL),
(89, 91, 'directus_fields', '42', '{\"id\": 42, \"field\": \"detail_images\", \"hidden\": false, \"display\": null, \"special\": [\"files\"], \"readonly\": false, \"interface\": \"files\", \"collection\": \"products\"}', '{\"id\": 42, \"field\": \"detail_images\", \"hidden\": false, \"display\": null, \"special\": [\"files\"], \"readonly\": false, \"interface\": \"files\", \"collection\": \"products\"}', NULL),
(90, 92, 'directus_collections', 'products_directus_files', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"products_directus_files\"}', '{\"icon\": \"import_export\", \"hidden\": true, \"collection\": \"products_directus_files\"}', NULL),
(91, 93, 'directus_fields', '43', '{\"id\": 43, \"field\": \"id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', '{\"id\": 43, \"field\": \"id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', NULL),
(92, 94, 'directus_fields', '44', '{\"id\": 44, \"field\": \"products\", \"special\": \"m2m\", \"interface\": \"many-to-many\", \"collection\": \"directus_files\"}', '{\"id\": 44, \"field\": \"products\", \"special\": \"m2m\", \"interface\": \"many-to-many\", \"collection\": \"directus_files\"}', NULL),
(93, 95, 'directus_fields', '45', '{\"id\": 45, \"field\": \"products_id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', '{\"id\": 45, \"field\": \"products_id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', NULL),
(94, 96, 'directus_fields', '46', '{\"id\": 46, \"field\": \"directus_files_id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', '{\"id\": 46, \"field\": \"directus_files_id\", \"hidden\": true, \"collection\": \"products_directus_files\"}', NULL),
(95, 97, 'directus_relations', '12', '{\"id\": 12, \"one_field\": \"products\", \"many_field\": \"directus_files_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": \"products_id\", \"one_collection\": \"directus_files\", \"many_collection\": \"products_directus_files\"}', '{\"id\": 12, \"one_field\": \"products\", \"many_field\": \"directus_files_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": \"products_id\", \"one_collection\": \"directus_files\", \"many_collection\": \"products_directus_files\"}', NULL),
(96, 98, 'directus_relations', '13', '{\"id\": 13, \"one_field\": \"detail_images\", \"many_field\": \"products_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": \"directus_files_id\", \"one_collection\": \"products\", \"many_collection\": \"products_directus_files\"}', '{\"id\": 13, \"one_field\": \"detail_images\", \"many_field\": \"products_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": \"directus_files_id\", \"one_collection\": \"products\", \"many_collection\": \"products_directus_files\"}', NULL),
(97, 99, 'directus_collections', 'products', '{\"icon\": \"art_track\", \"note\": null, \"hidden\": false, \"singleton\": false, \"collection\": \"products\", \"sort_field\": \"sort\", \"translations\": null, \"archive_field\": \"status\", \"archive_value\": \"archived\", \"unarchive_value\": \"draft\", \"display_template\": null, \"archive_app_filter\": true}', '{\"icon\": \"art_track\"}', NULL),
(98, 100, 'directus_fields', '47', '{\"id\": 47, \"field\": \"parent_category_id\", \"hidden\": false, \"display\": \"related-values\", \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"child_categories\", \"display_options\": {\"template\": \"{{name}}\"}}', '{\"id\": 47, \"field\": \"parent_category_id\", \"hidden\": false, \"display\": \"related-values\", \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"child_categories\", \"display_options\": {\"template\": \"{{name}}\"}}', NULL),
(99, 101, 'directus_fields', '48', '{\"id\": 48, \"field\": \"child_categories\", \"special\": \"o2m\", \"interface\": \"one-to-many\", \"collection\": \"parent_categories\"}', '{\"id\": 48, \"field\": \"child_categories\", \"special\": \"o2m\", \"interface\": \"one-to-many\", \"collection\": \"parent_categories\"}', NULL),
(100, 102, 'directus_relations', '14', '{\"id\": 14, \"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\"}', '{\"id\": 14, \"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\"}', NULL),
(101, 103, 'parent_categories', '9600d910-1cc4-435b-b334-a0580371de89', '{\"id\": \"9600d910-1cc4-435b-b334-a0580371de89\", \"name\": \"Lawn\", \"status\": \"published\"}', '{\"id\": \"9600d910-1cc4-435b-b334-a0580371de89\", \"name\": \"Lawn\", \"status\": \"published\"}', NULL),
(102, 104, 'directus_files', '87ae046e-8e03-4763-8cf0-91364dbdabcd', '{\"id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', '{\"id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', NULL),
(103, 105, 'directus_files', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6', '{\"id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', '{\"id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 1700728 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-1700728-3840x2160.jpg\"}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(104, 106, 'child_categories', '1e42700a-8f65-4264-9459-3642d998432c', '{\"id\": \"1e42700a-8f65-4264-9459-3642d998432c\", \"name\": \"Lawn 2 Piece\", \"image\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\", \"status\": \"published\", \"parent_category_id\": \"9600d910-1cc4-435b-b334-a0580371de89\"}', '{\"id\": \"1e42700a-8f65-4264-9459-3642d998432c\", \"name\": \"Lawn 2 Piece\", \"image\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\", \"status\": \"published\", \"parent_category_id\": \"9600d910-1cc4-435b-b334-a0580371de89\"}', NULL),
(105, 107, 'directus_files', 'e1b1706b-9f01-4e6b-966c-c3459ec08b5e', '{\"id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 2000881 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-2000881-3840x2160.jpg\"}', '{\"id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\", \"type\": \"image/jpeg\", \"title\": \"Quotefancy 2000881 3840x2160\", \"storage\": \"local\", \"uploaded_by\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"filename_download\": \"Quotefancy-2000881-3840x2160.jpg\"}', NULL),
(106, 108, 'child_categories', '9a5d4cd4-3155-4035-a3fb-674807ea64e2', '{\"id\": \"9a5d4cd4-3155-4035-a3fb-674807ea64e2\", \"name\": \"Lawn 3 Piece\", \"image\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\", \"parent_category_id\": \"9600d910-1cc4-435b-b334-a0580371de89\"}', '{\"id\": \"9a5d4cd4-3155-4035-a3fb-674807ea64e2\", \"name\": \"Lawn 3 Piece\", \"image\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\", \"parent_category_id\": \"9600d910-1cc4-435b-b334-a0580371de89\"}', NULL),
(107, 109, 'directus_fields', '48', '{\"id\": 48, \"note\": null, \"sort\": null, \"field\": \"child_categories\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": null, \"special\": [\"o2m\"], \"readonly\": false, \"interface\": \"one-to-many\", \"collection\": \"parent_categories\", \"translations\": null, \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_categories\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": null, \"special\": \"o2m\", \"readonly\": false, \"interface\": \"one-to-many\", \"collection\": \"parent_categories\", \"translations\": null, \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(108, 110, 'directus_relations', '14', '{\"id\": 14, \"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(109, 111, 'directus_fields', '49', '{\"id\": 49, \"field\": \"child_category_id\", \"hidden\": false, \"display\": \"related-values\", \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"display_options\": {\"template\": \"{{name}}\"}}', '{\"id\": 49, \"field\": \"child_category_id\", \"hidden\": false, \"display\": \"related-values\", \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"display_options\": {\"template\": \"{{name}}\"}}', NULL),
(110, 112, 'directus_fields', '50', '{\"id\": 50, \"field\": \"products\", \"special\": \"o2m\", \"interface\": \"one-to-many\", \"collection\": \"child_categories\"}', '{\"id\": 50, \"field\": \"products\", \"special\": \"o2m\", \"interface\": \"one-to-many\", \"collection\": \"child_categories\"}', NULL),
(111, 113, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"child_categories\", \"many_collection\": \"products\"}', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"one_collection\": \"child_categories\", \"many_collection\": \"products\"}', NULL),
(112, 114, 'directus_fields', '50', '{\"id\": 50, \"note\": null, \"sort\": null, \"field\": \"products\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": null, \"special\": [\"o2m\"], \"readonly\": false, \"interface\": \"one-to-many\", \"collection\": \"child_categories\", \"translations\": null, \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"products\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": null, \"special\": \"o2m\", \"readonly\": false, \"interface\": \"one-to-many\", \"collection\": \"child_categories\", \"translations\": null, \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(113, 115, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(114, 116, 'products_directus_files', '1', '{\"id\": 1, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}', '{\"id\": 1, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}', NULL),
(115, 117, 'products_directus_files', '2', '{\"id\": 2, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\"}', '{\"id\": 2, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\"}', NULL),
(116, 118, 'products_directus_files', '3', '{\"id\": 3, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"acdafac7-c27f-4ff4-8414-c42135453438\"}', '{\"id\": 3, \"products_id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"directus_files_id\": \"acdafac7-c27f-4ff4-8414-c42135453438\"}', NULL),
(117, 119, 'products', '3d834ff6-ce15-4470-be0e-3453e59007ad', '{\"id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"name\": \"Original Gul Ahmed Design#10 Printed Airjet Lawn 3 pc\", \"price\": 295, \"status\": \"published\", \"quantity\": 5, \"description\": \"<p>This is the descripiton we are talking about.<br />As you all know that</p>\", \"detail_images\": [{\"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}, {\"directus_files_id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\"}, {\"directus_files_id\": \"acdafac7-c27f-4ff4-8414-c42135453438\"}], \"feature_image\": \"6713aac4-78b9-468c-aaf7-e3f820e2f7bb\", \"child_category_id\": \"1e42700a-8f65-4264-9459-3642d998432c\"}', '{\"id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"name\": \"Original Gul Ahmed Design#10 Printed Airjet Lawn 3 pc\", \"price\": 295, \"status\": \"published\", \"quantity\": 5, \"description\": \"<p>This is the descripiton we are talking about.<br />As you all know that</p>\", \"detail_images\": [{\"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}, {\"directus_files_id\": \"87ae046e-8e03-4763-8cf0-91364dbdabcd\"}, {\"directus_files_id\": \"acdafac7-c27f-4ff4-8414-c42135453438\"}], \"feature_image\": \"6713aac4-78b9-468c-aaf7-e3f820e2f7bb\", \"child_category_id\": \"1e42700a-8f65-4264-9459-3642d998432c\"}', NULL),
(118, 120, 'directus_fields', '49', '{\"id\": 49, \"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": null, \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(119, 121, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(120, 122, 'products', '3d834ff6-ce15-4470-be0e-3453e59007ad', '{\"id\": \"3d834ff6-ce15-4470-be0e-3453e59007ad\", \"name\": \"Original Gul Ahmed Design#10 Printed Airjet Lawn 3 pc\", \"sort\": null, \"price\": 300, \"status\": \"published\", \"quantity\": 5, \"old_price\": null, \"description\": \"<p>This is the descripiton we are talking about.<br />As you all know that</p>\", \"date_created\": \"2021-04-10T23:19:51+05:00\", \"date_updated\": \"2021-04-10T23:21:55+05:00\", \"user_created\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"user_updated\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"detail_images\": [1, 2, 3], \"feature_image\": \"6713aac4-78b9-468c-aaf7-e3f820e2f7bb\", \"child_category_id\": \"1e42700a-8f65-4264-9459-3642d998432c\"}', '{\"price\": 300, \"date_updated\": \"2021-04-10T18:21:54.547Z\", \"user_updated\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\"}', NULL),
(121, 123, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 9, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"note\": null, \"sort\": 9, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": true, \"display\": \"raw\", \"options\": \"{\\\"toolbar\\\":[\\\"bold\\\",\\\"italic\\\",\\\"underline\\\",\\\"removeformat\\\",\\\"bullist\\\",\\\"numlist\\\",\\\"blockquote\\\",\\\"hr\\\",\\\"fullscreen\\\",\\\"strikethrough\\\",\\\"copy\\\",\\\"cut\\\",\\\"paste\\\",\\\"undo\\\",\\\"redo\\\",\\\"remove\\\",\\\"selectall\\\",\\\"ltr rtl\\\"]}\", \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', NULL),
(122, 124, 'directus_fields', '39', '{\"id\": 39, \"note\": null, \"sort\": 9, \"field\": \"description\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"raw\", \"options\": {\"toolbar\": [\"bold\", \"italic\", \"underline\", \"removeformat\", \"bullist\", \"numlist\", \"blockquote\", \"hr\", \"fullscreen\", \"strikethrough\", \"copy\", \"cut\", \"paste\", \"undo\", \"redo\", \"remove\", \"selectall\", \"ltr rtl\"]}, \"special\": null, \"readonly\": false, \"interface\": \"wysiwyg\", \"collection\": \"products\", \"translations\": null, \"display_options\": null}', '{\"field\": \"description\", \"hidden\": false, \"collection\": \"products\"}', NULL),
(123, 125, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', NULL),
(124, 126, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"status\", \"price\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"status\\\",\\\"price\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(125, 127, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"price\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(126, 128, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"price\", \"status\", \"feature_image\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"status\\\",\\\"feature_image\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(127, 129, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(128, 130, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"status\", \"child_category_id\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"status\\\",\\\"child_category_id\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(129, 131, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(130, 132, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"],\\\"page\\\":1,\\\"sort\\\":\\\"name\\\"}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(131, 133, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"-name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"],\\\"page\\\":1,\\\"sort\\\":\\\"-name\\\"}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(132, 134, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"],\\\"page\\\":1,\\\"sort\\\":\\\"name\\\"}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(133, 135, 'products_directus_files', '4', '{\"id\": 4, \"products_id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}', '{\"id\": 4, \"products_id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}', NULL),
(134, 136, 'products_directus_files', '5', '{\"id\": 5, \"products_id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"directus_files_id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\"}', '{\"id\": 5, \"products_id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"directus_files_id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\"}', NULL),
(135, 137, 'products', '156a4d92-bb26-4d33-9c01-fabceaf0b8d0', '{\"id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"name\": \"Original Gul Ahmed YOLO 6 Design TK-34 Printed Airjet Lawn 2 pc\", \"price\": 1000, \"status\": \"published\", \"quantity\": 10, \"description\": \"<p>This is the description</p>\", \"detail_images\": [{\"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}, {\"directus_files_id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\"}], \"feature_image\": \"acdafac7-c27f-4ff4-8414-c42135453438\", \"child_category_id\": \"1e42700a-8f65-4264-9459-3642d998432c\"}', '{\"id\": \"156a4d92-bb26-4d33-9c01-fabceaf0b8d0\", \"name\": \"Original Gul Ahmed YOLO 6 Design TK-34 Printed Airjet Lawn 2 pc\", \"price\": 1000, \"status\": \"published\", \"quantity\": 10, \"description\": \"<p>This is the description</p>\", \"detail_images\": [{\"directus_files_id\": \"5ee847d0-07e9-4d65-a775-37fb1fdb45c6\"}, {\"directus_files_id\": \"e1b1706b-9f01-4e6b-966c-c3459ec08b5e\"}], \"feature_image\": \"acdafac7-c27f-4ff4-8414-c42135453438\", \"child_category_id\": \"1e42700a-8f65-4264-9459-3642d998432c\"}', NULL),
(136, 138, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"-name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"-name\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(137, 139, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"name\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(138, 140, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"-name\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"-name\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(139, 141, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"quantity\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"quantity\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(140, 142, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"-quantity\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": null, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"-quantity\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": null, \"refresh_interval\": null}', NULL),
(141, 143, 'directus_fields', '49', '{\"id\": 49, \"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": [{\"language\": \"en-US\", \"translation\": \"child category\"}], \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": \"[{\\\"language\\\":\\\"en-US\\\",\\\"translation\\\":\\\"child category\\\"}]\", \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(142, 144, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(143, 145, 'directus_fields', '49', '{\"id\": 49, \"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": [{\"language\": \"en-US\", \"translation\": \"Child Category\"}], \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": \"[{\\\"language\\\":\\\"en-US\\\",\\\"translation\\\":\\\"Child Category\\\"}]\", \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(144, 146, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(145, 147, 'directus_fields', '49', '{\"id\": 49, \"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": null, \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": null, \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(146, 148, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(147, 149, 'directus_presets', '1', '{\"id\": 1, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"products\", \"layout_query\": {\"tabular\": {\"page\": 1, \"sort\": \"-quantity\", \"fields\": [\"name\", \"quantity\", \"price\", \"feature_image\", \"child_category_id\", \"status\"]}}, \"layout_options\": {\"tabular\": {\"widths\": {\"child_category_id\": 192}}}, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true,\\\"operator\\\":\\\"neq\\\"}]\", \"bookmark\": null, \"collection\": \"products\", \"layout_query\": \"{\\\"tabular\\\":{\\\"page\\\":1,\\\"sort\\\":\\\"-quantity\\\",\\\"fields\\\":[\\\"name\\\",\\\"quantity\\\",\\\"price\\\",\\\"feature_image\\\",\\\"child_category_id\\\",\\\"status\\\"]}}\", \"layout_options\": \"{\\\"tabular\\\":{\\\"widths\\\":{\\\"child_category_id\\\":192}}}\", \"refresh_interval\": null}', NULL),
(148, 150, 'directus_fields', '49', '{\"id\": 49, \"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": [{\"language\": \"en-US\", \"translation\": \"Child Category\"}], \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"child_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"products\", \"translations\": \"[{\\\"language\\\":\\\"en-US\\\",\\\"translation\\\":\\\"Child Category\\\"}]\", \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(149, 151, 'directus_relations', '15', '{\"id\": 15, \"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"products\", \"many_field\": \"child_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"child_categories\", \"many_collection\": \"products\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(150, 153, 'directus_presets', '2', '{\"id\": 2, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"child_categories\", \"layout_query\": null, \"layout_options\": {\"tabular\": {\"widths\": {\"parent_category_id\": 224}}}, \"refresh_interval\": null}', '{\"id\": 2, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"child_categories\", \"layout_query\": null, \"layout_options\": {\"tabular\": {\"widths\": {\"parent_category_id\": 224}}}, \"refresh_interval\": null}', NULL),
(151, 154, 'directus_presets', '2', '{\"id\": 2, \"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": [{\"key\": \"hide-archived\", \"field\": \"status\", \"value\": \"archived\", \"locked\": true, \"operator\": \"neq\"}], \"bookmark\": null, \"collection\": \"child_categories\", \"layout_query\": null, \"layout_options\": {\"tabular\": {\"widths\": {\"parent_category_id\": 224}}}, \"refresh_interval\": null}', '{\"role\": null, \"user\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"layout\": \"tabular\", \"search\": null, \"filters\": \"[{\\\"key\\\":\\\"hide-archived\\\",\\\"field\\\":\\\"status\\\",\\\"operator\\\":\\\"neq\\\",\\\"value\\\":\\\"archived\\\",\\\"locked\\\":true}]\", \"bookmark\": null, \"collection\": \"child_categories\", \"layout_query\": null, \"layout_options\": \"{\\\"tabular\\\":{\\\"widths\\\":{\\\"parent_category_id\\\":224}}}\", \"refresh_interval\": null}', NULL),
(152, 155, 'directus_fields', '47', '{\"id\": 47, \"note\": null, \"sort\": null, \"field\": \"parent_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": {\"template\": \"{{name}}\"}, \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"child_categories\", \"translations\": [{\"language\": \"en-US\", \"translation\": \"Parent Category\"}], \"display_options\": {\"template\": \"{{name}}\"}}', '{\"note\": null, \"sort\": null, \"field\": \"parent_category_id\", \"group\": null, \"width\": \"full\", \"hidden\": false, \"display\": \"related-values\", \"options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\", \"special\": null, \"readonly\": false, \"interface\": \"many-to-one\", \"collection\": \"child_categories\", \"translations\": \"[{\\\"language\\\":\\\"en-US\\\",\\\"translation\\\":\\\"Parent Category\\\"}]\", \"display_options\": \"{\\\"template\\\":\\\"{{name}}\\\"}\"}', NULL),
(153, 156, 'directus_relations', '14', '{\"id\": 14, \"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\", \"one_collection_field\": null, \"one_allowed_collections\": null}', '{\"one_field\": \"child_categories\", \"many_field\": \"parent_category_id\", \"sort_field\": null, \"one_primary\": \"id\", \"many_primary\": \"id\", \"junction_field\": null, \"one_collection\": \"parent_categories\", \"many_collection\": \"child_categories\", \"one_collection_field\": null, \"one_allowed_collections\": null}', NULL),
(154, 157, 'directus_permissions', '1', '{\"id\": 1, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"child_categories\"}', '{\"id\": 1, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"child_categories\"}', NULL),
(155, 158, 'directus_permissions', '2', '{\"id\": 2, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"child_categories\"}', '{\"id\": 2, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"child_categories\"}', NULL),
(156, 160, 'directus_permissions', '4', '{\"id\": 4, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"child_categories\"}', '{\"id\": 4, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"child_categories\"}', NULL),
(157, 159, 'directus_permissions', '3', '{\"id\": 3, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"child_categories\"}', '{\"id\": 3, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"child_categories\"}', NULL),
(158, 161, 'directus_permissions', '5', '{\"id\": 5, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', '{\"id\": 5, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', NULL),
(159, 162, 'directus_permissions', '6', '{\"id\": 6, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', '{\"id\": 6, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', NULL),
(160, 163, 'directus_permissions', '7', '{\"id\": 7, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', '{\"id\": 7, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', NULL),
(161, 164, 'directus_permissions', '8', '{\"id\": 8, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', '{\"id\": 8, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"parent_categories\"}', NULL),
(162, 165, 'directus_permissions', '9', '{\"id\": 9, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"products\"}', '{\"id\": 9, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"products\"}', NULL),
(163, 166, 'directus_permissions', '10', '{\"id\": 10, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"products\"}', '{\"id\": 10, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"products\"}', NULL),
(164, 167, 'directus_permissions', '11', '{\"id\": 11, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"products\"}', '{\"id\": 11, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"products\"}', NULL),
(165, 168, 'directus_permissions', '12', '{\"id\": 12, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"products\"}', '{\"id\": 12, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"products\"}', NULL),
(166, 169, 'directus_permissions', '13', '{\"id\": 13, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', '{\"id\": 13, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', NULL),
(167, 170, 'directus_permissions', '14', '{\"id\": 14, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', '{\"id\": 14, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', NULL),
(168, 172, 'directus_permissions', '16', '{\"id\": 16, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', '{\"id\": 16, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', NULL),
(169, 171, 'directus_permissions', '15', '{\"id\": 15, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', '{\"id\": 15, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"products_directus_files\"}', NULL),
(170, 173, 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '{\"id\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"role\": \"d2cfea17-793b-4e76-ad39-0cb1c9648e47\", \"tags\": null, \"email\": \"admin@example.com\", \"theme\": \"auto\", \"title\": null, \"token\": \"PfOPbP6GaNsuat1oAU5+aOSGO155fUfzyX5bWBxxOaE=\", \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"last_name\": \"User\", \"last_page\": \"/users/1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"first_name\": \"Admin\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2021-04-11T02:21:55+05:00\"}', '{\"token\": \"PfOPbP6GaNsuat1oAU5+aOSGO155fUfzyX5bWBxxOaE=\", \"password\": \"$argon2i$v=19$m=4096,t=3,p=1$n0UZeVya2N4v3xcQ4xCNqQ$9K0TvjfiMvezGjChux2Ap43501ZYH2UivW4jEL3/00I\"}', NULL),
(171, 174, 'directus_permissions', '13', '{\"id\": 13, \"role\": null, \"limit\": null, \"action\": \"read\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products_directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(172, 175, 'directus_permissions', '15', '{\"id\": 15, \"role\": null, \"limit\": null, \"action\": \"create\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products_directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(173, 176, 'directus_permissions', '14', '{\"id\": 14, \"role\": null, \"limit\": null, \"action\": \"update\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products_directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(174, 177, 'directus_permissions', '16', '{\"id\": 16, \"role\": null, \"limit\": null, \"action\": \"delete\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products_directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(175, 178, 'directus_permissions', '9', '{\"id\": 9, \"role\": null, \"limit\": null, \"action\": \"read\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(176, 179, 'directus_permissions', '11', '{\"id\": 11, \"role\": null, \"limit\": null, \"action\": \"delete\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(177, 180, 'directus_permissions', '12', '{\"id\": 12, \"role\": null, \"limit\": null, \"action\": \"update\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL);
INSERT INTO `directus_revisions` (`id`, `activity`, `collection`, `item`, `data`, `delta`, `parent`) VALUES
(178, 181, 'directus_permissions', '10', '{\"id\": 10, \"role\": null, \"limit\": null, \"action\": \"create\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"products\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(179, 186, 'directus_users', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '{\"id\": \"1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"role\": \"d2cfea17-793b-4e76-ad39-0cb1c9648e47\", \"tags\": null, \"email\": \"admin@example.com\", \"theme\": \"auto\", \"title\": null, \"token\": \"PfOPbP6GaNsuat1oAU5aOSGO155fUfzyX5bWBxxOaE\", \"avatar\": null, \"status\": \"active\", \"language\": \"en-US\", \"location\": null, \"password\": \"**********\", \"last_name\": \"User\", \"last_page\": \"/users/1d92f520-de14-43f0-96b6-52a81e49fdf9\", \"first_name\": \"Admin\", \"tfa_secret\": null, \"description\": null, \"last_access\": \"2021-04-11T02:24:14+05:00\"}', '{\"token\": \"PfOPbP6GaNsuat1oAU5aOSGO155fUfzyX5bWBxxOaE\", \"password\": \"$argon2i$v=19$m=4096,t=3,p=1$mPkJktC/0dafdLRvMyJxKw$trYk8zMeqAW1OdPPzPUuGv/XrrfQpQG+PA6QBlUBqbI\"}', NULL),
(180, 199, 'directus_settings', '1', '{\"id\": 1, \"project_url\": \"https://inspireco.com\", \"project_name\": \"Inspireco\"}', '{\"id\": 1, \"project_url\": \"https://inspireco.com\", \"project_name\": \"Inspireco\"}', NULL),
(181, 202, 'parent_categories', '42c5f0c1-29cb-4656-a71d-4919e8d29531', '{\"id\": \"42c5f0c1-29cb-4656-a71d-4919e8d29531\", \"name\": \"Testing\"}', '{\"id\": \"42c5f0c1-29cb-4656-a71d-4919e8d29531\", \"name\": \"Testing\"}', NULL),
(182, 203, 'parent_categories', 'bdd6d0ac-92c2-4815-b46d-ea9a98601c00', '{\"id\": \"bdd6d0ac-92c2-4815-b46d-ea9a98601c00\", \"name\": \"Testing\"}', '{\"id\": \"bdd6d0ac-92c2-4815-b46d-ea9a98601c00\", \"name\": \"Testing\"}', NULL),
(183, 204, 'parent_categories', '338ac315-79b5-4b5e-bc10-0084c0736608', '{\"id\": \"338ac315-79b5-4b5e-bc10-0084c0736608\", \"name\": \"Testing Parent Category\"}', '{\"id\": \"338ac315-79b5-4b5e-bc10-0084c0736608\", \"name\": \"Testing Parent Category\"}', NULL),
(184, 205, 'parent_categories', '2dafc758-9097-4515-b997-6e64809bfb56', '{\"id\": \"2dafc758-9097-4515-b997-6e64809bfb56\", \"name\": \"Mrs. Pearlie O\'Keefe\"}', '{\"id\": \"2dafc758-9097-4515-b997-6e64809bfb56\", \"name\": \"Mrs. Pearlie O\'Keefe\"}', NULL),
(185, 206, 'parent_categories', '509fd07b-0699-46a7-9da9-4ef4bdfa045c', '{\"id\": \"509fd07b-0699-46a7-9da9-4ef4bdfa045c\", \"name\": \"Marc Olson II\"}', '{\"id\": \"509fd07b-0699-46a7-9da9-4ef4bdfa045c\", \"name\": \"Marc Olson II\"}', NULL),
(186, 207, 'parent_categories', '036ce600-3fbf-4425-a306-123230e1a9ad', '{\"id\": \"036ce600-3fbf-4425-a306-123230e1a9ad\", \"name\": \"Dax Bailey IV\"}', '{\"id\": \"036ce600-3fbf-4425-a306-123230e1a9ad\", \"name\": \"Dax Bailey IV\"}', NULL),
(187, 208, 'parent_categories', '6c27ede9-a6f2-434c-a881-b8e919db8046', '{\"id\": \"6c27ede9-a6f2-434c-a881-b8e919db8046\", \"name\": \"Test Graph\"}', '{\"id\": \"6c27ede9-a6f2-434c-a881-b8e919db8046\", \"name\": \"Test Graph\"}', NULL),
(188, 249, 'directus_permissions', '17', '{\"id\": 17, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_files\"}', '{\"id\": 17, \"role\": null, \"action\": \"update\", \"fields\": \"*\", \"collection\": \"directus_files\"}', NULL),
(189, 250, 'directus_permissions', '18', '{\"id\": 18, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_files\"}', '{\"id\": 18, \"role\": null, \"action\": \"create\", \"fields\": \"*\", \"collection\": \"directus_files\"}', NULL),
(190, 251, 'directus_permissions', '19', '{\"id\": 19, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_files\"}', '{\"id\": 19, \"role\": null, \"action\": \"read\", \"fields\": \"*\", \"collection\": \"directus_files\"}', NULL),
(191, 252, 'directus_permissions', '20', '{\"id\": 20, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_files\"}', '{\"id\": 20, \"role\": null, \"action\": \"delete\", \"fields\": \"*\", \"collection\": \"directus_files\"}', NULL),
(192, 253, 'directus_permissions', '18', '{\"id\": 18, \"role\": null, \"limit\": null, \"action\": \"create\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(193, 254, 'directus_permissions', '19', '{\"id\": 19, \"role\": null, \"limit\": null, \"action\": \"read\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(194, 255, 'directus_permissions', '17', '{\"id\": 17, \"role\": null, \"limit\": null, \"action\": \"update\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL),
(195, 256, 'directus_permissions', '20', '{\"id\": 20, \"role\": null, \"limit\": null, \"action\": \"delete\", \"fields\": [\"*\"], \"presets\": null, \"collection\": \"directus_files\", \"validation\": null, \"permissions\": null}', '{\"fields\": \"*\", \"validation\": null, \"permissions\": null}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_roles`
--

CREATE TABLE `directus_roles` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL DEFAULT 'supervised_user_circle',
  `description` text,
  `ip_access` text,
  `enforce_tfa` tinyint(1) NOT NULL DEFAULT '0',
  `module_list` json DEFAULT NULL,
  `collection_list` json DEFAULT NULL,
  `admin_access` tinyint(1) NOT NULL DEFAULT '0',
  `app_access` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_roles`
--

INSERT INTO `directus_roles` (`id`, `name`, `icon`, `description`, `ip_access`, `enforce_tfa`, `module_list`, `collection_list`, `admin_access`, `app_access`) VALUES
('d2cfea17-793b-4e76-ad39-0cb1c9648e47', 'Administrator', 'verified', 'Initial administrative role with unrestricted App/API access', NULL, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `directus_sessions`
--

CREATE TABLE `directus_sessions` (
  `token` varchar(64) NOT NULL,
  `user` char(36) NOT NULL,
  `expires` timestamp NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `directus_settings`
--

CREATE TABLE `directus_settings` (
  `id` int UNSIGNED NOT NULL,
  `project_name` varchar(100) NOT NULL DEFAULT 'Directus',
  `project_url` varchar(255) DEFAULT NULL,
  `project_color` varchar(10) DEFAULT '#00C897',
  `project_logo` char(36) DEFAULT NULL,
  `public_foreground` char(36) DEFAULT NULL,
  `public_background` char(36) DEFAULT NULL,
  `public_note` text,
  `auth_login_attempts` int UNSIGNED DEFAULT '25',
  `auth_password_policy` varchar(100) DEFAULT NULL,
  `storage_asset_transform` varchar(7) DEFAULT 'all',
  `storage_asset_presets` json DEFAULT NULL,
  `custom_css` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_settings`
--

INSERT INTO `directus_settings` (`id`, `project_name`, `project_url`, `project_color`, `project_logo`, `public_foreground`, `public_background`, `public_note`, `auth_login_attempts`, `auth_password_policy`, `storage_asset_transform`, `storage_asset_presets`, `custom_css`) VALUES
(1, 'Inspireco', 'https://inspireco.com', '#00C897', NULL, NULL, NULL, NULL, 25, NULL, 'all', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `directus_users`
--

CREATE TABLE `directus_users` (
  `id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text,
  `tags` json DEFAULT NULL,
  `avatar` char(36) DEFAULT NULL,
  `language` varchar(8) DEFAULT 'en-US',
  `theme` varchar(20) DEFAULT 'auto',
  `tfa_secret` varchar(255) DEFAULT NULL,
  `status` varchar(16) NOT NULL DEFAULT 'active',
  `role` char(36) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `last_access` timestamp NULL DEFAULT NULL,
  `last_page` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `directus_users`
--

INSERT INTO `directus_users` (`id`, `first_name`, `last_name`, `email`, `password`, `location`, `title`, `description`, `tags`, `avatar`, `language`, `theme`, `tfa_secret`, `status`, `role`, `token`, `last_access`, `last_page`) VALUES
('1d92f520-de14-43f0-96b6-52a81e49fdf9', 'Admin', 'User', 'admin@example.com', '$argon2i$v=19$m=4096,t=3,p=1$mPkJktC/0dafdLRvMyJxKw$trYk8zMeqAW1OdPPzPUuGv/XrrfQpQG+PA6QBlUBqbI', NULL, NULL, NULL, NULL, NULL, 'en-US', 'auto', NULL, 'active', 'd2cfea17-793b-4e76-ad39-0cb1c9648e47', 'PfOPbP6GaNsuat1oAU5aOSGO155fUfzyX5bWBxxOaE', '2021-04-21 14:21:05', '/settings/data-model/child_categories');

-- --------------------------------------------------------

--
-- Table structure for table `directus_webhooks`
--

CREATE TABLE `directus_webhooks` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `method` varchar(10) NOT NULL DEFAULT 'POST',
  `url` text,
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `data` tinyint(1) NOT NULL DEFAULT '1',
  `actions` varchar(100) NOT NULL,
  `collections` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent_categories`
--

CREATE TABLE `parent_categories` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `parent_categories`
--

INSERT INTO `parent_categories` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `name`) VALUES
('036ce600-3fbf-4425-a306-123230e1a9ad', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:14:33', NULL, NULL, 'Dax Bailey IV'),
('2dafc758-9097-4515-b997-6e64809bfb56', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:13:17', NULL, NULL, 'Mrs. Pearlie O\'Keefe'),
('338ac315-79b5-4b5e-bc10-0084c0736608', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:06:13', NULL, NULL, 'Testing Parent Category'),
('42c5f0c1-29cb-4656-a71d-4919e8d29531', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:32:18', NULL, NULL, 'Testing'),
('509fd07b-0699-46a7-9da9-4ef4bdfa045c', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:13:21', NULL, NULL, 'Marc Olson II'),
('6c27ede9-a6f2-434c-a881-b8e919db8046', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 11:45:34', NULL, NULL, 'Test Graph'),
('9600d910-1cc4-435b-b334-a0580371de89', 'published', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:12:06', NULL, NULL, 'Lawn'),
('bdd6d0ac-92c2-4815-b46d-ea9a98601c00', 'draft', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-11 10:33:18', NULL, NULL, 'Testing');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` char(36) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `sort` int DEFAULT NULL,
  `user_created` char(36) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `user_updated` char(36) DEFAULT NULL,
  `date_updated` timestamp NULL DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `quantity` bigint DEFAULT '0',
  `old_price` bigint DEFAULT NULL,
  `description` text NOT NULL,
  `feature_image` char(36) NOT NULL,
  `price` bigint DEFAULT NULL,
  `child_category_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `status`, `sort`, `user_created`, `date_created`, `user_updated`, `date_updated`, `name`, `quantity`, `old_price`, `description`, `feature_image`, `price`, `child_category_id`) VALUES
('156a4d92-bb26-4d33-9c01-fabceaf0b8d0', 'published', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:27:10', NULL, NULL, 'Original Gul Ahmed YOLO 6 Design TK-34 Printed Airjet Lawn 2 pc', 10, NULL, '<p>This is the description</p>', 'acdafac7-c27f-4ff4-8414-c42135453438', 1000, '1e42700a-8f65-4264-9459-3642d998432c'),
('3d834ff6-ce15-4470-be0e-3453e59007ad', 'published', NULL, '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:19:51', '1d92f520-de14-43f0-96b6-52a81e49fdf9', '2021-04-10 18:21:55', 'Original Gul Ahmed Design#10 Printed Airjet Lawn 3 pc', 5, NULL, '<p>This is the descripiton we are talking about.<br />As you all know that</p>', '6713aac4-78b9-468c-aaf7-e3f820e2f7bb', 300, '1e42700a-8f65-4264-9459-3642d998432c');

-- --------------------------------------------------------

--
-- Table structure for table `products_directus_files`
--

CREATE TABLE `products_directus_files` (
  `id` int UNSIGNED NOT NULL,
  `products_id` char(36) DEFAULT NULL,
  `directus_files_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products_directus_files`
--

INSERT INTO `products_directus_files` (`id`, `products_id`, `directus_files_id`) VALUES
(1, '3d834ff6-ce15-4470-be0e-3453e59007ad', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6'),
(2, '3d834ff6-ce15-4470-be0e-3453e59007ad', '87ae046e-8e03-4763-8cf0-91364dbdabcd'),
(3, '3d834ff6-ce15-4470-be0e-3453e59007ad', 'acdafac7-c27f-4ff4-8414-c42135453438'),
(4, '156a4d92-bb26-4d33-9c01-fabceaf0b8d0', '5ee847d0-07e9-4d65-a775-37fb1fdb45c6'),
(5, '156a4d92-bb26-4d33-9c01-fabceaf0b8d0', 'e1b1706b-9f01-4e6b-966c-c3459ec08b5e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_activity`
--
ALTER TABLE `directus_activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_activity_collection_foreign` (`collection`);

--
-- Indexes for table `directus_collections`
--
ALTER TABLE `directus_collections`
  ADD PRIMARY KEY (`collection`);

--
-- Indexes for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_fields_collection_foreign` (`collection`),
  ADD KEY `directus_fields_group_foreign` (`group`);

--
-- Indexes for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_files_folder_foreign` (`folder`),
  ADD KEY `directus_files_uploaded_by_foreign` (`uploaded_by`),
  ADD KEY `directus_files_modified_by_foreign` (`modified_by`);

--
-- Indexes for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_folders_parent_foreign` (`parent`);

--
-- Indexes for table `directus_migrations`
--
ALTER TABLE `directus_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_permissions_collection_foreign` (`collection`),
  ADD KEY `directus_permissions_role_foreign` (`role`);

--
-- Indexes for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_presets_collection_foreign` (`collection`),
  ADD KEY `directus_presets_user_foreign` (`user`),
  ADD KEY `directus_presets_role_foreign` (`role`);

--
-- Indexes for table `directus_relations`
--
ALTER TABLE `directus_relations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_relations_many_collection_foreign` (`many_collection`),
  ADD KEY `directus_relations_one_collection_foreign` (`one_collection`);

--
-- Indexes for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_revisions_collection_foreign` (`collection`),
  ADD KEY `directus_revisions_activity_foreign` (`activity`),
  ADD KEY `directus_revisions_parent_foreign` (`parent`);

--
-- Indexes for table `directus_roles`
--
ALTER TABLE `directus_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD PRIMARY KEY (`token`),
  ADD KEY `directus_sessions_user_foreign` (`user`);

--
-- Indexes for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directus_settings_project_logo_foreign` (`project_logo`),
  ADD KEY `directus_settings_public_foreground_foreign` (`public_foreground`),
  ADD KEY `directus_settings_public_background_foreign` (`public_background`);

--
-- Indexes for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `directus_users_email_unique` (`email`),
  ADD KEY `directus_users_role_foreign` (`role`);

--
-- Indexes for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parent_categories`
--
ALTER TABLE `parent_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_directus_files`
--
ALTER TABLE `products_directus_files`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directus_activity`
--
ALTER TABLE `directus_activity`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `directus_fields`
--
ALTER TABLE `directus_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `directus_presets`
--
ALTER TABLE `directus_presets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `directus_relations`
--
ALTER TABLE `directus_relations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT for table `directus_settings`
--
ALTER TABLE `directus_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `directus_webhooks`
--
ALTER TABLE `directus_webhooks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_directus_files`
--
ALTER TABLE `products_directus_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `directus_fields`
--
ALTER TABLE `directus_fields`
  ADD CONSTRAINT `directus_fields_group_foreign` FOREIGN KEY (`group`) REFERENCES `directus_fields` (`id`);

--
-- Constraints for table `directus_files`
--
ALTER TABLE `directus_files`
  ADD CONSTRAINT `directus_files_folder_foreign` FOREIGN KEY (`folder`) REFERENCES `directus_folders` (`id`),
  ADD CONSTRAINT `directus_files_modified_by_foreign` FOREIGN KEY (`modified_by`) REFERENCES `directus_users` (`id`),
  ADD CONSTRAINT `directus_files_uploaded_by_foreign` FOREIGN KEY (`uploaded_by`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_folders`
--
ALTER TABLE `directus_folders`
  ADD CONSTRAINT `directus_folders_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_folders` (`id`);

--
-- Constraints for table `directus_permissions`
--
ALTER TABLE `directus_permissions`
  ADD CONSTRAINT `directus_permissions_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`);

--
-- Constraints for table `directus_presets`
--
ALTER TABLE `directus_presets`
  ADD CONSTRAINT `directus_presets_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`),
  ADD CONSTRAINT `directus_presets_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_revisions`
--
ALTER TABLE `directus_revisions`
  ADD CONSTRAINT `directus_revisions_activity_foreign` FOREIGN KEY (`activity`) REFERENCES `directus_activity` (`id`),
  ADD CONSTRAINT `directus_revisions_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `directus_revisions` (`id`);

--
-- Constraints for table `directus_sessions`
--
ALTER TABLE `directus_sessions`
  ADD CONSTRAINT `directus_sessions_user_foreign` FOREIGN KEY (`user`) REFERENCES `directus_users` (`id`);

--
-- Constraints for table `directus_settings`
--
ALTER TABLE `directus_settings`
  ADD CONSTRAINT `directus_settings_project_logo_foreign` FOREIGN KEY (`project_logo`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_background_foreign` FOREIGN KEY (`public_background`) REFERENCES `directus_files` (`id`),
  ADD CONSTRAINT `directus_settings_public_foreground_foreign` FOREIGN KEY (`public_foreground`) REFERENCES `directus_files` (`id`);

--
-- Constraints for table `directus_users`
--
ALTER TABLE `directus_users`
  ADD CONSTRAINT `directus_users_role_foreign` FOREIGN KEY (`role`) REFERENCES `directus_roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
