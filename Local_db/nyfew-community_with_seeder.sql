-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2025 at 06:58 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nyfew-community`
--

-- --------------------------------------------------------

--
-- Table structure for table `badges`
--

CREATE TABLE `badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `badges`
--

INSERT INTO `badges` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'tempora', 'Dolorem aut quia ad eaque est.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(2, 'porro', 'Nulla sint placeat odit rerum.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(3, 'occaecati', 'Soluta minima autem qui consequatur.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(4, 'autem', 'Velit in eos provident excepturi aspernatur voluptates magni.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(5, 'labore', 'Quis pariatur est reprehenderit temporibus qui dolore.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(6, 'odio', 'Rerum totam fugit et et aperiam sit.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(7, 'iste', 'Voluptas id qui voluptas quaerat alias eaque.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(8, 'doloribus', 'Ratione illo ut nihil est.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(9, 'rerum', 'Necessitatibus perferendis rem sed perspiciatis dolores enim sequi.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(10, 'quia', 'Occaecati sint nobis non.', 'uploads/badges/default.png', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_logs`
--

CREATE TABLE `credit_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `forums`
--

CREATE TABLE `forums` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forums`
--

INSERT INTO `forums` (`id`, `title`, `description`, `parent_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'assumenda enim rerum', 'Magnam et voluptas et cupiditate ut nihil.', NULL, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(2, 'voluptate harum ipsum', 'Fugit dignissimos velit voluptatem deleniti dicta sed praesentium.', NULL, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(3, 'quae sed delectus', 'Cumque rem omnis et.', 1, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(4, 'aut a eligendi', 'Beatae quisquam facere beatae sint.', 1, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(5, 'minus ipsam non', 'Rerum laborum eum esse vitae quaerat.', 2, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(6, 'animi dolorem sunt', 'Ex sint modi at pariatur natus quis.', 2, 1, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(7, 'praesentium eum in', 'Vero eum sit voluptas dolorem adipisci.', NULL, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(8, 'debitis aut vel', 'Ab nihil laudantium et placeat ullam deleniti tenetur.', NULL, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(9, 'nihil aut est', 'Asperiores omnis suscipit illum illum.', 7, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(10, 'vel rerum tenetur', 'Quas consequatur quam debitis ducimus.', 7, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(11, 'cupiditate soluta atque', 'Veniam nam quis dolore molestiae dolorum ducimus.', 8, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(12, 'tempora rerum non', 'Quia qui tempora impedit consequatur consequuntur eos minima.', 8, 2, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(13, 'fugit perspiciatis dolorem', 'Aut amet voluptatem esse nam odio.', NULL, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(14, 'modi commodi quaerat', 'Voluptatem unde nam vitae autem dolorem eaque possimus.', NULL, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(15, 'voluptatem ratione eum', 'Consectetur ut dolorum omnis amet dignissimos est cupiditate.', 13, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(16, 'repudiandae sit culpa', 'Accusamus sit ex id eaque iusto.', 13, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(17, 'voluptatem dolor velit', 'Sit saepe nemo maiores similique dolorum magnam.', 14, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(18, 'sapiente provident accusantium', 'Perferendis maxime occaecati eos.', 14, 3, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(19, 'similique pariatur nostrum', 'Eos odio totam sunt.', NULL, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(20, 'voluptatem in ea', 'Qui reprehenderit at aut perspiciatis ullam repellat.', NULL, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(21, 'sed perspiciatis nostrum', 'Unde at et suscipit nesciunt ipsa.', 19, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(22, 'quas et iure', 'Sunt cumque laborum quae placeat aliquid quo consequatur.', 19, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(23, 'incidunt neque nihil', 'Facere vel et animi officia.', 20, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(24, 'non esse eum', 'Quam aut optio aliquid fugiat saepe dolorem.', 20, 4, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(25, 'velit aut molestias', 'Laudantium est dolore vel et quis eum sit occaecati.', NULL, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(26, 'inventore at fugiat', 'Minima ex deserunt ab laborum.', NULL, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(27, 'totam placeat tempora', 'Cupiditate ex rem dolor aut libero et molestiae eligendi.', 25, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(28, 'nisi voluptatum illo', 'Cum quae aut quia.', 25, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(29, 'tempore laborum rem', 'Ea repellendus neque rerum deleniti.', 26, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(30, 'quia at sit', 'Ab esse earum dolores molestiae doloremque eligendi molestiae.', 26, 5, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(31, 'vel consequatur qui', 'Ab dicta voluptas ratione nisi illum et.', NULL, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(32, 'expedita sunt velit', 'Dolor ea amet sit accusamus.', NULL, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(33, 'ipsum laboriosam sit', 'Dolorem quia dignissimos quae repellat beatae.', 31, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(34, 'voluptatem sint sed', 'Et odio molestiae soluta cum distinctio.', 31, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(35, 'nostrum ut quos', 'Cumque qui non voluptatem autem sed veritatis quo.', 32, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(36, 'doloribus laborum consequatur', 'Quia praesentium est natus distinctio.', 32, 6, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(37, 'fuga fuga quod', 'Est culpa odit vitae.', NULL, 7, '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(38, 'placeat in eum', 'Minima consectetur in officiis consequuntur.', NULL, 7, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(39, 'deserunt voluptate veritatis', 'Ab ipsa earum vitae quidem quasi ullam accusantium.', 37, 7, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(40, 'aut et maiores', 'Laborum labore non possimus sequi.', 37, 7, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(41, 'nam excepturi dignissimos', 'Ut hic veniam aperiam corporis.', 38, 7, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(42, 'unde est dolorum', 'Fugit debitis nihil rem autem quam qui.', 38, 7, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(43, 'impedit qui cupiditate', 'Distinctio reiciendis accusantium nisi itaque sed doloremque magni.', NULL, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(44, 'tempore est debitis', 'Sequi ea quod vel.', NULL, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(45, 'repellat non aliquam', 'Odio dolorem dolorem sapiente ut.', 43, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(46, 'repellendus est rerum', 'Illum quis repellendus veniam sunt ex reprehenderit.', 43, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(47, 'nesciunt temporibus molestias', 'Sed illum ut asperiores qui quia officia ex.', 44, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(48, 'officia excepturi ipsum', 'Nam ullam perferendis accusantium ipsum nostrum recusandae qui.', 44, 8, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(49, 'vel omnis voluptatem', 'Facilis quidem dolorum sint molestiae et.', NULL, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(50, 'incidunt et harum', 'Aliquid labore similique odio numquam totam.', NULL, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(51, 'non rerum ipsa', 'Ut natus ullam saepe et necessitatibus pariatur ea.', 49, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(52, 'omnis eaque et', 'Sit omnis autem ut esse illo ad tenetur perferendis.', 49, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(53, 'iste aperiam non', 'Veniam rerum voluptatem aut odio.', 50, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(54, 'et pariatur quaerat', 'Nemo voluptas fugiat excepturi qui quam commodi laboriosam.', 50, 9, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(55, 'aut beatae error', 'Iste ut consequatur aperiam omnis optio repellat.', NULL, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(56, 'magni dolor eius', 'Ducimus veniam voluptas maiores expedita.', NULL, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(57, 'et aperiam qui', 'Facilis corrupti architecto beatae eligendi.', 55, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(58, 'natus doloremque autem', 'Natus doloribus reprehenderit nisi explicabo.', 55, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(59, 'laudantium quisquam non', 'Possimus quisquam architecto molestiae vel et.', 56, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(60, 'officiis animi vel', 'Voluptas maxime quisquam voluptate.', 56, 10, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(61, 'modi aut est', 'Et dolores est enim animi.', NULL, 11, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(62, 'iusto et pariatur', 'Pariatur ut eveniet aut soluta qui.', NULL, 12, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(63, 'qui odit provident', 'Cupiditate ipsa modi minus dolorem.', NULL, 13, '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'public',
  `avatar` varchar(255) DEFAULT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `type`, `avatar`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 'ut velit saepe', 'Qui quia earum ducimus adipisci.', 'public', 'uploads/profile-pictures/blank.png', 14, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(2, 'corporis cupiditate velit', 'Temporibus suscipit eos accusamus rerum.', 'public', 'uploads/profile-pictures/blank.png', 15, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(3, 'officia dolores natus', 'Et suscipit voluptatibus aliquam voluptas rem ad.', 'public', 'uploads/profile-pictures/blank.png', 16, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(4, 'itaque est sit', 'Saepe dolor vel qui fugit illum beatae consequatur unde.', 'private', 'uploads/profile-pictures/blank.png', 17, '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(5, 'et porro et', 'Iusto assumenda est est dolores sunt nihil.', 'public', 'uploads/profile-pictures/blank.png', 18, '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `group_members`
--

CREATE TABLE `group_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'member',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_members`
--

INSERT INTO `group_members` (`id`, `group_id`, `user_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 1, 18, 'member', NULL, NULL),
(2, 1, 1, 'member', NULL, NULL),
(3, 1, 11, 'member', NULL, NULL),
(4, 1, 17, 'member', NULL, NULL),
(5, 1, 3, 'member', NULL, NULL),
(6, 2, 4, 'member', NULL, NULL),
(7, 2, 1, 'member', NULL, NULL),
(8, 2, 7, 'member', NULL, NULL),
(9, 2, 8, 'member', NULL, NULL),
(10, 2, 2, 'member', NULL, NULL),
(11, 3, 15, 'member', NULL, NULL),
(12, 3, 13, 'member', NULL, NULL),
(13, 3, 3, 'member', NULL, NULL),
(14, 3, 1, 'member', NULL, NULL),
(15, 3, 2, 'member', NULL, NULL),
(16, 4, 17, 'member', NULL, NULL),
(17, 4, 8, 'member', NULL, NULL),
(18, 4, 9, 'member', NULL, NULL),
(19, 4, 12, 'member', NULL, NULL),
(20, 4, 15, 'member', NULL, NULL),
(21, 5, 17, 'member', NULL, NULL),
(22, 5, 12, 'member', NULL, NULL),
(23, 5, 8, 'member', NULL, NULL),
(24, 5, 2, 'member', NULL, NULL),
(25, 5, 6, 'member', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE `group_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_items`
--

CREATE TABLE `marketplace_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marketplace_items`
--

INSERT INTO `marketplace_items` (`id`, `user_id`, `title`, `description`, `price`, `type`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'exercitationem quo nam', 'Sed est fugiat dolorem dolor impedit. Placeat quidem nihil id ea a voluptates quaerat. Maxime nisi facere ad ut magnam. Magnam pariatur quae quia et inventore expedita nulla.', 329, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(2, 1, 'non eveniet dolor', 'Reiciendis aut sit aut unde vitae minima dolore. Vel molestiae voluptate sapiente molestiae sunt iste unde quia. Ut amet nihil laborum dolorem. Id dolore et tenetur quibusdam quis dicta.', 253, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(3, 2, 'qui molestiae sint', 'Ut id consequatur illo laboriosam ab. Aut quo accusamus aspernatur suscipit sunt nemo. In vero aut fugit. Eligendi et est distinctio doloribus blanditiis autem quam non.', 208, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(4, 2, 'aliquam impedit eveniet', 'Et laboriosam odio accusamus enim. Quis excepturi voluptas sint est illo neque. Autem ipsam aliquid est. Accusantium soluta illum ut enim sed possimus laudantium natus.', 446, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(5, 3, 'sit sapiente consectetur', 'Quis nobis est libero veritatis. Officiis ipsa ut qui ut voluptatibus quibusdam. Ut id et et et.', 145, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(6, 4, 'sunt voluptatem a', 'Atque sint id ex ut. Nemo dicta accusamus saepe sunt sapiente quam qui. Aspernatur esse ut fugit sint.', 127, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(7, 4, 'sint aut rerum', 'Rerum laudantium aliquid repellat cumque repellat. Quia qui in earum et. Et velit praesentium et saepe fugit minus esse.', 431, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(8, 4, 'doloremque molestiae ipsum', 'Velit suscipit sapiente eos sed ratione ut laborum. Non et animi quibusdam sit cum qui. Est est qui sit fugiat laudantium cumque. Minus aspernatur sed ipsum voluptas tempore enim.', 418, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(9, 5, 'occaecati atque aliquid', 'In eligendi qui dolores voluptas pariatur. Neque voluptatibus accusantium sapiente similique et. Cupiditate ratione nobis molestiae nihil fugiat laudantium nulla.', 25, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(10, 6, 'aut ut ut', 'Officia et aut temporibus ab consequatur recusandae. Excepturi voluptatem ut natus et reprehenderit. Necessitatibus tempore est blanditiis sit quia culpa ducimus. Ut vero ut doloremque nihil aliquid.', 285, 'digital', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(11, 6, 'totam asperiores id', 'Doloribus error quia quisquam quo. Animi totam asperiores omnis enim enim. Amet et ab dolorem magnam consequatur aperiam nobis. Ullam ab nostrum suscipit eveniet. Quia consequatur nihil aut consequatur.', 119, 'digital', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(12, 6, 'in veritatis vero', 'Blanditiis quae repellat et dolores. Quis eum culpa saepe quia sint voluptatem. Magni ut itaque ut aperiam ad ad reiciendis ea. Ipsam rem nam vitae dolore. Praesentium est accusamus praesentium tempora deleniti quia quam aut.', 332, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(13, 7, 'voluptatem qui delectus', 'Molestiae autem dolorum perspiciatis illum fugit ut sit occaecati. Error fuga illum eaque neque. At tenetur omnis porro soluta atque debitis autem autem.', 23, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(14, 7, 'sequi sit illo', 'Omnis tempora ut recusandae iste est cumque aut. Unde consequatur et vel reiciendis nam error facilis. Molestiae occaecati qui dolor eveniet voluptatem.', 220, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(15, 7, 'pariatur eius ullam', 'Sed quis laboriosam repudiandae nostrum fuga. Ea culpa excepturi consequuntur natus et dolor nam. In nihil praesentium non sapiente iste rerum laboriosam nam. Eos ratione totam omnis quisquam. In in incidunt libero est nulla voluptas nobis.', 235, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(16, 8, 'voluptatem reiciendis qui', 'Accusamus amet officiis deleniti minima dolores. Quidem aut at et fugit et autem necessitatibus. Voluptatem quia recusandae iusto quod dolore. Vero eveniet quia dolores beatae sequi alias dicta dolorem.', 428, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(17, 9, 'asperiores molestiae quidem', 'Animi ducimus animi consequuntur totam. Et temporibus voluptatem ab iusto ut est quae. Consectetur modi aliquam id natus assumenda.', 329, 'digital', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(18, 9, 'nulla occaecati architecto', 'Est occaecati in non culpa necessitatibus architecto et. Nam et sint ut ad doloribus saepe. Illum rerum dicta et voluptatem dolorem eveniet. Sit natus magnam totam consectetur ratione.', 252, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(19, 10, 'quia officia quasi', 'Soluta labore consequatur vel deleniti. Inventore non architecto sed. Et molestiae molestiae eos necessitatibus qui laboriosam quia.', 284, 'digital', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(20, 11, 'quo ut dolor', 'Quam animi et numquam qui aut qui facilis. Incidunt expedita aliquam qui ut voluptas. Qui molestiae optio exercitationem velit aspernatur aspernatur exercitationem. Harum nulla dolorum quis laborum dolorum quae reiciendis necessitatibus. Dicta aut fugit eveniet.', 297, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(21, 12, 'autem corporis aperiam', 'Veritatis ut doloribus officia quis. Molestiae ad eligendi aut aperiam sunt accusamus quidem provident. Voluptatem voluptas hic aspernatur esse quis tempore ut occaecati.', 131, 'digital', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(22, 13, 'id sed repudiandae', 'Eveniet qui praesentium et adipisci voluptate. Velit nostrum occaecati quis quasi praesentium. Aut occaecati dolorum distinctio voluptatem. Saepe accusantium quia quia id.', 115, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(23, 14, 'sit consequatur occaecati', 'Autem aperiam eius distinctio ea. Deserunt libero nemo magnam eaque voluptates velit iure. Cumque aut dolores aut sequi.', 417, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(24, 15, 'et ea ullam', 'Et corrupti aut et eum. Quod id inventore iste exercitationem recusandae voluptate voluptatem.', 158, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(25, 16, 'exercitationem maxime officiis', 'Vero alias in nemo id est eum sunt. Sed minus sint non ut. Molestias sapiente nam aut molestias.', 31, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(26, 16, 'totam explicabo praesentium', 'Alias et quod vel dignissimos totam. Quo deserunt nostrum reprehenderit voluptate voluptatem. Voluptates quae occaecati alias quaerat quia.', 392, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(27, 17, 'consequatur qui consequuntur', 'Molestiae eos modi recusandae. Exercitationem quia inventore ut corporis dolorem et. Voluptatem quae debitis totam possimus praesentium eligendi.', 257, 'digital', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(28, 17, 'tenetur est et', 'Eaque consequuntur architecto ad doloribus ut nihil. Facere ut pariatur nam sit at amet. Sed quo soluta sed et vel.', 417, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(29, 18, 'tenetur a et', 'Assumenda sint consequuntur nam cum facere. Deserunt deserunt exercitationem sint voluptate dolores totam et. Aut porro quibusdam rem voluptatibus necessitatibus facere.', 169, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(30, 18, 'eligendi eaque sed', 'Dicta dolorum laborum possimus nesciunt. Ea eum quo similique mollitia corrupti ut quos. Provident velit est fugit sequi consectetur. Qui aut quasi aut ullam esse ut.', 57, 'physical', 'uploads/marketplace/default.png', 'available', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(31, 18, 'exercitationem voluptatum harum', 'Recusandae aut quia dolorem qui. Dolores et nihil qui sed laudantium qui. Et praesentium sapiente veniam voluptatem.', 321, 'physical', 'uploads/marketplace/default.png', 'sold', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `marketplace_orders`
--

CREATE TABLE `marketplace_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000001_create_cache_table', 1),
(2, '0001_01_01_000002_create_jobs_table', 1),
(3, '2025_06_12_000000_create_ranks_table', 1),
(4, '2025_06_12_000001_create_users_table', 1),
(5, '2025_06_12_145625_create_profiles_table', 1),
(6, '2025_06_12_145637_create_timeline_activities_table', 1),
(7, '2025_06_12_145648_create_posts_table', 1),
(8, '2025_06_12_145700_create_post_comments_table', 1),
(9, '2025_06_12_145713_create_post_likes_table', 1),
(10, '2025_06_12_145723_create_groups_table', 1),
(11, '2025_06_12_145732_create_group_members_table', 1),
(12, '2025_06_12_145742_create_group_posts_table', 1),
(13, '2025_06_12_145755_create_badges_table', 1),
(14, '2025_06_12_145805_create_user_badges_table', 1),
(15, '2025_06_12_145816_create_quests_table', 1),
(16, '2025_06_12_145828_create_user_quests_table', 1),
(17, '2025_06_12_145950_create_forums_table', 1),
(18, '2025_06_12_150001_create_threads_table', 1),
(19, '2025_06_12_150014_create_thread_replies_table', 1),
(20, '2025_06_12_150024_create_credit_logs_table', 1),
(21, '2025_06_12_150033_create_marketplace_items_table', 1),
(22, '2025_06_12_150045_create_marketplace_orders_table', 1),
(23, '2025_06_12_161419_add_user_id_to_forums_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `visibility` varchar(255) NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `content`, `image`, `type`, `visibility`, `created_at`, `updated_at`) VALUES
(1, 1, 'Voluptas tenetur expedita sit iste est dolorem numquam. At voluptatem eveniet dolorum velit voluptate ipsam. Nihil repudiandae molestiae id illo consequatur eius beatae.', 'https://via.placeholder.com/640x480.png/0022ff?text=cats+Post+rerum', 'video', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(2, 1, 'Nesciunt recusandae nostrum in ullam consequuntur eum. Aliquid non sed tempora nemo aperiam rerum. Quod sed est eius delectus doloribus tempora iusto. Dicta occaecati fugiat cum nisi sit maxime aut.', 'https://via.placeholder.com/640x480.png/0033bb?text=cats+Post+fugit', 'video', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(3, 1, 'Molestiae voluptas aliquid qui aut consequatur debitis quia. Aliquid facere non iure quasi et dolorum quas. Aliquam quis non nam in et. Numquam debitis harum soluta voluptatum.', 'https://via.placeholder.com/640x480.png/00cc33?text=cats+Post+dolorem', 'text', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(4, 2, 'Alias repellat voluptas maiores ad et. Sed rem culpa consequuntur velit. Id est dolores voluptatem id cumque et similique.', 'https://via.placeholder.com/640x480.png/0000bb?text=cats+Post+quia', 'video', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(5, 2, 'Atque expedita voluptate inventore. Sint nemo aspernatur facilis repellat et sint consequatur. Iusto laboriosam doloribus similique aspernatur.', 'https://via.placeholder.com/640x480.png/0022ff?text=cats+Post+ea', 'video', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(6, 2, 'Qui saepe vel nobis ipsa. Modi qui distinctio fugit modi ut quia sapiente est. Neque et quasi et.', 'https://via.placeholder.com/640x480.png/003311?text=cats+Post+possimus', 'image', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(7, 3, 'Nihil aspernatur rerum blanditiis praesentium tempora eos. Et possimus quo tenetur sed. Aut autem voluptatem at.', 'https://via.placeholder.com/640x480.png/0044bb?text=cats+Post+est', 'video', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(8, 3, 'Nobis qui dolor deserunt ducimus. Neque ducimus delectus incidunt voluptatum qui. Harum sunt est ea illo et. Id eum quae beatae sit illum.', 'https://via.placeholder.com/640x480.png/00dd99?text=cats+Post+dolor', 'video', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(9, 3, 'Corporis sed voluptas et rem. Minus distinctio et quidem et doloribus. Sint perspiciatis dolorem amet aut et officiis quia.', 'https://via.placeholder.com/640x480.png/000022?text=cats+Post+eveniet', 'video', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(10, 4, 'Voluptatibus enim quo sint debitis quo id beatae. Reprehenderit ea soluta dignissimos vero voluptatem et. Asperiores eos ad nemo vel deserunt. Et itaque est quo sed aut.', 'https://via.placeholder.com/640x480.png/00ff22?text=cats+Post+officiis', 'text', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(11, 4, 'Laboriosam iure ad laboriosam possimus fugiat deleniti consequuntur repellendus. Molestiae dolor occaecati eligendi modi vero laboriosam quia. Aut perspiciatis nulla inventore voluptates. Ipsum aut animi aut eius quia amet.', 'https://via.placeholder.com/640x480.png/004466?text=cats+Post+consectetur', 'video', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(12, 4, 'Omnis ut ea doloremque commodi voluptate dolor delectus. Doloribus aut ut beatae. Ut aut alias maiores est et.', 'https://via.placeholder.com/640x480.png/009900?text=cats+Post+magnam', 'text', 'friends', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(13, 5, 'Molestiae quo corrupti corporis eveniet numquam saepe. Distinctio et quo et sed. Esse quia et aut voluptatum et molestias aliquam. Dicta consequatur maiores autem optio.', 'https://via.placeholder.com/640x480.png/007700?text=cats+Post+consequatur', 'image', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(14, 5, 'Ab doloremque veritatis sint quia consequuntur. Ea ratione ratione laudantium cum. Nisi modi possimus modi et ipsa ut.', 'https://via.placeholder.com/640x480.png/0000bb?text=cats+Post+voluptatum', 'text', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(15, 5, 'Et voluptatem perspiciatis qui. Soluta molestiae libero eos soluta. Porro voluptatum rerum alias laborum. Animi eos non quos quia ipsum.', 'https://via.placeholder.com/640x480.png/00eeaa?text=cats+Post+autem', 'image', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(16, 6, 'Qui quis eos ut aspernatur nobis porro. Iusto eius accusantium quia placeat necessitatibus. Quia est quia et nostrum qui eum iure asperiores. Et et magni accusamus odit tempora tempore. Atque mollitia tempora voluptatum itaque ut ut aliquam.', 'https://via.placeholder.com/640x480.png/00cccc?text=cats+Post+fugit', 'image', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(17, 6, 'Ad enim enim consequuntur. Quas voluptatem nihil distinctio sed aut ea. Sunt laudantium assumenda odio quia voluptatem aperiam sit. Amet est fugiat nostrum maiores adipisci non.', 'https://via.placeholder.com/640x480.png/00eecc?text=cats+Post+ut', 'video', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(18, 6, 'Amet et aperiam laboriosam exercitationem eum. Cupiditate maiores et asperiores ut. Enim neque minus asperiores et sit. Natus sunt ipsa cupiditate eos quidem et.', 'https://via.placeholder.com/640x480.png/0088ee?text=cats+Post+sit', 'image', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(19, 7, 'Commodi non quam perspiciatis facilis. Autem quia non possimus et aliquid perspiciatis. Dolores magnam beatae id. Nostrum magni eveniet provident.', 'https://via.placeholder.com/640x480.png/0077ff?text=cats+Post+cumque', 'text', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(20, 7, 'Incidunt illum iure quae quisquam ipsa quam eum laudantium. Est perferendis omnis inventore. Rerum inventore a id quia aperiam quae. Ex iste voluptatem consectetur enim id.', 'https://via.placeholder.com/640x480.png/0033bb?text=cats+Post+esse', 'image', 'private', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(21, 7, 'Dignissimos voluptate sint autem nobis. Reprehenderit veritatis aliquam magni sunt et quas nulla. Veniam hic sed dicta.', 'https://via.placeholder.com/640x480.png/00ff22?text=cats+Post+id', 'text', 'public', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(22, 8, 'Omnis nisi sed iure ut perspiciatis nostrum unde. Rem ut est aut ullam necessitatibus. Aspernatur qui cumque ratione excepturi sed adipisci in aut.', 'https://via.placeholder.com/640x480.png/004488?text=cats+Post+quos', 'image', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(23, 8, 'Natus inventore suscipit repellat sint. Est autem saepe doloribus modi. Quas doloribus sapiente magnam quasi autem vitae iste. Saepe dolorem adipisci sequi sunt.', 'https://via.placeholder.com/640x480.png/00eecc?text=cats+Post+consequatur', 'text', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(24, 8, 'Dolore minus dolores magnam excepturi. Et perspiciatis suscipit doloribus harum fugiat. Enim cupiditate doloremque voluptate sed nobis fugit quis. Doloribus qui et et nihil.', 'https://via.placeholder.com/640x480.png/0033dd?text=cats+Post+magnam', 'video', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(25, 9, 'Fugiat rerum consequatur eligendi eum ut. Rerum id et tempore. Aliquid libero nesciunt suscipit. Ut natus nobis in consectetur earum.', 'https://via.placeholder.com/640x480.png/00dd33?text=cats+Post+velit', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(26, 9, 'Odio non modi qui vitae iste. Voluptatem magni quia et. Atque doloribus laudantium dolor consequatur reiciendis.', 'https://via.placeholder.com/640x480.png/002288?text=cats+Post+consequatur', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(27, 9, 'Dolores voluptatem adipisci eos. Dicta voluptas sit aut.', 'https://via.placeholder.com/640x480.png/0044cc?text=cats+Post+placeat', 'video', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(28, 10, 'Alias blanditiis ducimus dolor aliquid voluptates. Facere facilis iure omnis non nisi officiis perferendis nihil. Consectetur sint ab excepturi non. Laborum eveniet et sed ea dolor autem.', 'https://via.placeholder.com/640x480.png/002277?text=cats+Post+voluptate', 'image', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(29, 10, 'Est quasi itaque enim et et. Ad aliquid in vel deserunt. Et sed aspernatur minima autem molestias. Eos culpa sapiente omnis molestiae sunt vel.', 'https://via.placeholder.com/640x480.png/005533?text=cats+Post+aut', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(30, 10, 'Voluptatem necessitatibus voluptate qui recusandae eos odio saepe. Maiores debitis nisi repudiandae laborum magni. Sunt et pariatur et vel dolorum.', 'https://via.placeholder.com/640x480.png/00eeee?text=cats+Post+velit', 'image', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(31, 1, 'Quo ut consequuntur iure qui sed amet. Quibusdam libero et non. Sed laborum animi dolorum. Explicabo rerum nesciunt minus error ut et.', 'https://via.placeholder.com/640x480.png/0022dd?text=cats+Post+sit', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(32, 1, 'Accusantium impedit nisi est dolor voluptates. Illum autem vero praesentium et ut sunt. Quos ipsam temporibus delectus voluptatem veritatis. Repellat possimus non deserunt vel eos.', 'https://via.placeholder.com/640x480.png/00dd44?text=cats+Post+incidunt', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(33, 1, 'Porro fuga unde molestiae nihil ad. Perspiciatis sit qui omnis. Est debitis ea laudantium omnis deleniti fugit in. Et consequatur culpa non eum autem repellendus. Rerum at nobis autem quasi ullam voluptatem ipsum.', 'https://via.placeholder.com/640x480.png/00ee33?text=cats+Post+dolorum', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(34, 2, 'Pariatur recusandae commodi quibusdam perspiciatis asperiores numquam. Omnis consequuntur qui et et qui quos itaque. Exercitationem iusto eos et voluptas. Omnis veniam quis et ut tenetur harum.', 'https://via.placeholder.com/640x480.png/0000cc?text=cats+Post+eius', 'image', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(35, 2, 'Velit aut aut veniam ea voluptatum est voluptatem. Delectus quam autem eos. Debitis quo consectetur dolores consequatur veritatis accusamus.', 'https://via.placeholder.com/640x480.png/006600?text=cats+Post+optio', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(36, 2, 'Quia molestiae voluptatem est architecto et aspernatur non. Et ea dolorum facere vel ducimus consequatur officia quisquam. Corporis molestiae earum molestiae consequuntur. Ex sit et voluptatibus.', 'https://via.placeholder.com/640x480.png/005533?text=cats+Post+amet', 'text', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(37, 3, 'Nisi laboriosam dolorem animi officiis aut laboriosam occaecati. Consequuntur et deleniti enim est quis. Modi sunt rerum id eaque est dolorem ut nesciunt.', 'https://via.placeholder.com/640x480.png/003366?text=cats+Post+blanditiis', 'video', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(38, 3, 'Ipsum enim ex quasi ipsum non dolores et. Nostrum expedita velit culpa omnis. Nobis saepe ea consequuntur minima. Repellat sint eum vero dicta vero. Quis cupiditate vero reiciendis facilis quibusdam.', 'https://via.placeholder.com/640x480.png/00aa22?text=cats+Post+rem', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(39, 3, 'Non maiores corrupti maiores non aspernatur aliquid. Mollitia quis esse est voluptas reprehenderit optio vel et. Odit possimus dolores qui provident ex cum.', 'https://via.placeholder.com/640x480.png/00ffaa?text=cats+Post+sint', 'image', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(40, 4, 'Maiores recusandae sit odit excepturi perspiciatis. Et consequatur nemo exercitationem distinctio ipsam aut. Maxime quibusdam minima eligendi error. Blanditiis sunt qui quos ut aut autem et repellendus.', 'https://via.placeholder.com/640x480.png/0011aa?text=cats+Post+voluptatem', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(41, 4, 'Et et dolor cum quo sint. Laudantium impedit sed in aperiam. Consequatur dicta libero eveniet iste vel dolorem reprehenderit natus. Quia tempore laborum architecto ducimus voluptatibus.', 'https://via.placeholder.com/640x480.png/0066ff?text=cats+Post+eveniet', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(42, 4, 'Incidunt similique eos dolorem officiis minima quaerat. Dignissimos dolores sed ut dolore at natus. Est voluptas est dolorum atque consequuntur alias. Repellendus tempore necessitatibus eveniet eum rerum fugiat.', 'https://via.placeholder.com/640x480.png/00aa77?text=cats+Post+omnis', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(43, 5, 'Debitis quo eum nulla deserunt exercitationem est. Quam sint aliquam laborum. Sunt velit consectetur voluptatem accusantium.', 'https://via.placeholder.com/640x480.png/008833?text=cats+Post+delectus', 'video', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(44, 5, 'Dolores sed id numquam ipsa amet. Consequatur et ducimus quis dolores.', 'https://via.placeholder.com/640x480.png/00ccdd?text=cats+Post+suscipit', 'image', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(45, 5, 'Rem hic eum consequatur quos. Et velit tempora et deserunt. Quo velit reiciendis nisi quis sapiente et id veniam.', 'https://via.placeholder.com/640x480.png/003377?text=cats+Post+autem', 'text', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(46, 6, 'Facere et et quia at dolores sed quaerat. Magnam qui quod eum distinctio soluta suscipit. Illo corporis accusantium et laboriosam voluptatum expedita. Consequatur ea et sit est dolore quos et.', 'https://via.placeholder.com/640x480.png/00eeff?text=cats+Post+totam', 'video', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(47, 6, 'Totam illum natus pariatur odio excepturi. Voluptas doloribus quia fuga quam et autem architecto laboriosam. Minima maiores quae amet rerum nihil dolores voluptatem. Et est nam dolores nemo nostrum maxime cum.', 'https://via.placeholder.com/640x480.png/003377?text=cats+Post+in', 'text', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(48, 6, 'Labore aut deleniti a omnis dolore. Neque facere omnis sed doloribus voluptatem. Sint est natus placeat qui.', 'https://via.placeholder.com/640x480.png/00ffaa?text=cats+Post+autem', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(49, 7, 'Consequatur sit fuga iure commodi velit aut. Voluptatem consequatur rerum et suscipit dolore aut inventore. Odit nam quas consequatur dolore eum. Aut facere ea id corporis et et.', 'https://via.placeholder.com/640x480.png/00dd77?text=cats+Post+iure', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(50, 7, 'Ab voluptatem ex in et adipisci sequi. Enim similique eos at iusto nostrum. Corrupti quidem commodi enim ea.', 'https://via.placeholder.com/640x480.png/000022?text=cats+Post+et', 'text', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(51, 7, 'At aut quis aliquid vel blanditiis illo eum illum. Quia aspernatur neque exercitationem vero enim. Omnis recusandae nihil fugit. Illo rerum deleniti qui hic aut praesentium.', 'https://via.placeholder.com/640x480.png/0033bb?text=cats+Post+reprehenderit', 'video', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(52, 8, 'Ut dolorem odit et ducimus ratione placeat quis. Blanditiis neque quisquam perferendis. Debitis deleniti dignissimos sed dignissimos nihil numquam sit. Pariatur doloremque distinctio esse consectetur corrupti consequatur ad ratione. Quasi ut ipsam nihil molestias voluptatem et quas.', 'https://via.placeholder.com/640x480.png/0044ff?text=cats+Post+qui', 'video', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(53, 8, 'Nobis nostrum temporibus natus in rerum ipsa. Pariatur delectus impedit fugit dolorem id est. Qui perferendis est tenetur eligendi beatae.', 'https://via.placeholder.com/640x480.png/005500?text=cats+Post+quis', 'image', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(54, 8, 'Velit cum error autem qui corrupti exercitationem pariatur. In odit beatae distinctio perspiciatis aliquid quod. Cum consequatur aut molestias adipisci magni. Libero adipisci consequatur doloremque est non.', 'https://via.placeholder.com/640x480.png/00aa11?text=cats+Post+pariatur', 'image', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(55, 9, 'Rerum distinctio est non eaque magnam facilis enim. Perferendis harum sunt eum illum ab dolore. Est et id repudiandae nobis fugiat quam harum.', 'https://via.placeholder.com/640x480.png/0099ee?text=cats+Post+qui', 'text', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(56, 9, 'Dignissimos blanditiis ut et at repudiandae rerum animi. Sint enim illum animi voluptatem odit. Fuga voluptate aut omnis perferendis. Dicta et numquam et non. Ut architecto dolore doloremque praesentium quia.', 'https://via.placeholder.com/640x480.png/0099cc?text=cats+Post+enim', 'text', 'friends', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(57, 9, 'Non natus occaecati consequatur qui. Velit earum est voluptatem ut a.', 'https://via.placeholder.com/640x480.png/0033ee?text=cats+Post+aperiam', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(58, 10, 'Perferendis architecto sunt et dolores. Quaerat vero quod maxime fugiat exercitationem voluptatum omnis. Exercitationem vitae et qui iste.', 'https://via.placeholder.com/640x480.png/00bb55?text=cats+Post+quae', 'video', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(59, 10, 'Iste minus et quod ex. Rerum repudiandae assumenda minima voluptas. Quos enim inventore voluptatum nostrum error. Officiis molestias velit quis vel. Rerum nihil voluptas sed et.', 'https://via.placeholder.com/640x480.png/0044aa?text=cats+Post+nihil', 'text', 'public', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(60, 10, 'Officiis dignissimos sint odio molestias et natus fugit. Voluptas ut nulla quisquam deleniti quibusdam eveniet. Placeat esse dolorum nostrum dolorem enim. Tempore culpa placeat quos et perspiciatis est animi asperiores.', 'https://via.placeholder.com/640x480.png/003311?text=cats+Post+accusamus', 'text', 'private', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `social_links` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`social_links`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `dob`, `gender`, `phone`, `social_links`, `created_at`, `updated_at`) VALUES
(1, 1, '1993-06-01', 'female', '(872) 764-8634', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.purdy.com\\\\\\/soluta-illo-qui-sint-commodi-culpa-iste.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.gusikowski.com\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.fay.net\\\\\\/omnis-velit-consequatur-voluptas-excepturi-illo-aut-voluptatibus-est\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(2, 2, '1988-05-20', 'female', '689.663.7559', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.barrows.com\\\\\\/non-repellendus-id-reiciendis-ipsam-dolore-non-sit.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.harvey.biz\\\\\\/magni-magni-vitae-deserunt-pariatur-velit-consequatur\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/www.conroy.com\\\\\\/quisquam-ab-ratione-animi-quia-dolores\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(3, 3, '1973-10-03', 'male', '1-321-522-6848', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.cole.net\\\\\\/sint-iusto-dolorem-ut-officiis-possimus-ut-similique\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.wyman.biz\\\\\\/qui-recusandae-est-culpa-sapiente-animi\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.thompson.com\\\\\\/ea-exercitationem-dignissimos-et\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(4, 4, '1974-09-21', 'male', '1-954-292-9165', '\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.schimmel.biz\\\\\\/soluta-sed-minus-necessitatibus-saepe-expedita-sequi\\\",\\\"twitter\\\":\\\"https:\\\\\\/\\\\\\/jast.com\\\\\\/voluptatem-quibusdam-et-veniam-soluta-quasi-omnis-eos.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.gulgowski.net\\\\\\/ea-assumenda-laudantium-earum-nemo-soluta-aut.html\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(5, 5, '1983-07-10', 'other', '516.357.8094', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.heidenreich.biz\\\\\\/qui-doloremque-et-reprehenderit-asperiores\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.schmitt.com\\\\\\/debitis-aut-sit-inventore\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.brakus.net\\\\\\/\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(6, 6, '1971-10-02', 'other', '+19344769607', '\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/smith.biz\\\\\\/delectus-voluptatem-doloribus-exercitationem-soluta-voluptas.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/www.langworth.info\\\\\\/quisquam-odit-quaerat-mollitia-officia-totam-dolorem\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/mante.com\\\\\\/consequatur-nobis-consequatur-nulla-quis-magnam-dolorum\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(7, 7, '2006-10-31', 'female', '458.237.0375', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/weissnat.com\\\\\\/aperiam-et-fuga-laudantium-nostrum-unde-fugit\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/heidenreich.biz\\\\\\/\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.howell.com\\\\\\/enim-eaque-itaque-et-sapiente-debitis.html\\\"}\"', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(8, 8, '2001-01-20', 'female', '+1-763-675-4282', '\"{\\\"facebook\\\":\\\"https:\\\\\\/\\\\\\/www.bahringer.com\\\\\\/minima-quibusdam-ad-consequuntur\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/senger.com\\\\\\/earum-nisi-fugiat-repudiandae-eum-corrupti-dolores\\\",\\\"linkedin\\\":\\\"https:\\\\\\/\\\\\\/www.schneider.net\\\\\\/aut-et-qui-repudiandae-voluptatem-eaque-architecto-et\\\"}\"', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(9, 9, '2003-01-30', 'other', '281-575-9921', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.wyman.com\\\\\\/neque-dolores-fugiat-ex-nihil-dolore.html\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/jerde.com\\\\\\/eveniet-veniam-qui-quia-omnis-non-est-mollitia-suscipit.html\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.pagac.com\\\\\\/consequatur-animi-beatae-ipsum-eum-aut-maiores-sunt\\\"}\"', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(10, 10, '1991-12-02', 'male', '+1-669-535-0566', '\"{\\\"facebook\\\":\\\"http:\\\\\\/\\\\\\/www.schaefer.biz\\\\\\/provident-molestiae-vero-vel-quae-cum-ullam\\\",\\\"twitter\\\":\\\"http:\\\\\\/\\\\\\/kihn.biz\\\\\\/rerum-veritatis-ut-amet-consequatur-magnam-corporis\\\",\\\"linkedin\\\":\\\"http:\\\\\\/\\\\\\/www.romaguera.com\\\\\\/\\\"}\"', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `quests`
--

CREATE TABLE `quests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `reward_credit` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ranks`
--

CREATE TABLE `ranks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  `min_credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ranks`
--

INSERT INTO `ranks` (`id`, `name`, `level`, `min_credit`, `created_at`, `updated_at`) VALUES
(1, 'Novice', 1, 0, '2025-06-12 23:58:23', '2025-06-12 23:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `threads`
--

CREATE TABLE `threads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `forum_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `threads`
--

INSERT INTO `threads` (`id`, `forum_id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 61, 4, 'Autem quo aut dignissimos.', 'Consequatur minima molestiae non molestias. Temporibus aut necessitatibus laborum eum iure. Ut eos qui natus sit alias molestiae labore. Quia voluptate est aut at nihil est similique.', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(2, 61, 4, 'Qui est facere.', 'Id accusamus id laboriosam magni excepturi eum eos. Quisquam nostrum placeat quia dolor quae at quibusdam. Ut qui ut quo aliquid eos corporis.', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(3, 62, 11, 'Nostrum cumque ea id odit.', 'Quae vel dolorum non debitis magni nisi distinctio ipsum. Eius occaecati inventore veritatis enim repellendus fuga. Placeat voluptatibus quibusdam dolor laborum dignissimos eaque. At et quia sapiente non omnis eum sit.', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(4, 62, 11, 'Voluptatibus soluta autem eos.', 'Eos et omnis quos cumque. Consequuntur qui non cupiditate exercitationem quos neque. Est cum blanditiis animi natus corporis non libero non. Beatae ea similique natus quia.', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(5, 63, 1, 'Et eos voluptas.', 'Omnis aspernatur eaque ut. Laudantium minima alias voluptate adipisci doloribus ea laudantium debitis. Nihil placeat animi aut praesentium. Laboriosam adipisci aliquid hic quasi minus dolorem sint et.', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(6, 63, 1, 'Sequi assumenda dolor enim.', 'Consequuntur dolorem iste impedit deleniti suscipit. Voluptate est accusantium iste corrupti qui harum. Ut unde vel et quo assumenda in delectus.', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `thread_replies`
--

CREATE TABLE `thread_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `thread_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `timeline_activities`
--

CREATE TABLE `timeline_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `reference_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `rank_id` bigint(20) UNSIGNED DEFAULT NULL,
  `credit` int(11) NOT NULL DEFAULT 0,
  `login_attempts` int(11) DEFAULT NULL,
  `email_verified_status` int(11) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `avatar`, `bio`, `location`, `rank_id`, `credit`, `login_attempts`, `email_verified_status`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rollin Goyette MD', 'hollis29@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'TtysveZaVM', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(2, 'Oral Wilkinson', 'misty05@example.com', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'mEbohffV8e', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(3, 'Prof. Sophie Schamberger I', 'schmidt.brisa@example.org', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'psi9P92kRw', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(4, 'Christophe Block', 'yhuels@example.com', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', '7uRQEuR3gU', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(5, 'Cullen Zulauf V', 'camryn.hickle@example.com', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', '7xKMGB10UR', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(6, 'Electa Witting', 'tjohns@example.org', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'E5f7jAQCGj', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(7, 'Melvin Jaskolski', 'hansen.brianne@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'AfheltShnI', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(8, 'Anais Swift', 'stephan27@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'dlWCxwALd0', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(9, 'Oceane O\'Keefe', 'auer.serena@example.org', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'RJGQzNAvqo', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(10, 'Angelo Reichel II', 'aisha33@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:23', 'EgtLegwHGa', '2025-06-12 23:58:23', '2025-06-12 23:58:23'),
(11, 'Chadd Kreiger', 'dwight29@example.org', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'wxmMg4fu4A', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(12, 'Derek Torp', 'rau.brain@example.com', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'tkpXvErPkK', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(13, 'Mrs. Kacie Konopelski', 'barney.smitham@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'cnA4pADWOg', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(14, 'Jaclyn Abshire', 'justus21@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'KN6eqvUmy8', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(15, 'Anjali Harber II', 'violette84@example.org', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'QfjObUrqMy', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(16, 'Beulah Daniel', 'garrick.hickle@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'zVmw7xbBTc', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(17, 'Casimir Batz', 'kozey.duane@example.com', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'S8qY5gqTS5', '2025-06-12 23:58:24', '2025-06-12 23:58:24'),
(18, 'Rubye Wisozk', 'kolby67@example.net', '$2y$12$A7muJ2cCjBG08MMTB.QH3emIZQkB4TkSgo/xLPRK.QOlVSxWF5EG6', NULL, NULL, NULL, NULL, 0, NULL, NULL, '2025-06-12 23:58:24', 'FamhjQQhQU', '2025-06-12 23:58:24', '2025-06-12 23:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_badges`
--

CREATE TABLE `user_badges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_badges`
--

INSERT INTO `user_badges` (`id`, `badge_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 8, 1, NULL, NULL),
(2, 9, 1, NULL, NULL),
(3, 10, 2, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 10, 3, NULL, NULL),
(6, 6, 3, NULL, NULL),
(7, 7, 4, NULL, NULL),
(8, 1, 4, NULL, NULL),
(9, 5, 5, NULL, NULL),
(10, 2, 5, NULL, NULL),
(11, 8, 6, NULL, NULL),
(12, 10, 6, NULL, NULL),
(13, 2, 7, NULL, NULL),
(14, 5, 7, NULL, NULL),
(15, 10, 8, NULL, NULL),
(16, 7, 8, NULL, NULL),
(17, 9, 9, NULL, NULL),
(18, 5, 9, NULL, NULL),
(19, 2, 10, NULL, NULL),
(20, 1, 10, NULL, NULL),
(21, 4, 11, NULL, NULL),
(22, 10, 11, NULL, NULL),
(23, 7, 12, NULL, NULL),
(24, 10, 12, NULL, NULL),
(25, 6, 13, NULL, NULL),
(26, 3, 13, NULL, NULL),
(27, 3, 14, NULL, NULL),
(28, 9, 14, NULL, NULL),
(29, 3, 15, NULL, NULL),
(30, 5, 15, NULL, NULL),
(31, 7, 16, NULL, NULL),
(32, 8, 16, NULL, NULL),
(33, 6, 17, NULL, NULL),
(34, 5, 17, NULL, NULL),
(35, 9, 18, NULL, NULL),
(36, 6, 18, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_quests`
--

CREATE TABLE `user_quests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quest_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `badges`
--
ALTER TABLE `badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `credit_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `forums`
--
ALTER TABLE `forums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forums_parent_id_foreign` (`parent_id`),
  ADD KEY `forums_user_id_foreign` (`user_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `group_members`
--
ALTER TABLE `group_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_members_group_id_foreign` (`group_id`),
  ADD KEY `group_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_posts_group_id_foreign` (`group_id`),
  ADD KEY `group_posts_user_id_foreign` (`user_id`),
  ADD KEY `group_posts_post_id_foreign` (`post_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketplace_items_user_id_foreign` (`user_id`);

--
-- Indexes for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `marketplace_orders_buyer_id_foreign` (`buyer_id`),
  ADD KEY `marketplace_orders_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_comments_post_id_foreign` (`post_id`),
  ADD KEY `post_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likes_post_id_foreign` (`post_id`),
  ADD KEY `post_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `quests`
--
ALTER TABLE `quests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `threads`
--
ALTER TABLE `threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `threads_forum_id_foreign` (`forum_id`),
  ADD KEY `threads_user_id_foreign` (`user_id`);

--
-- Indexes for table `thread_replies`
--
ALTER TABLE `thread_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thread_replies_thread_id_foreign` (`thread_id`),
  ADD KEY `thread_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `timeline_activities_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_rank_id_foreign` (`rank_id`);

--
-- Indexes for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_badges_badge_id_foreign` (`badge_id`),
  ADD KEY `user_badges_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_quests`
--
ALTER TABLE `user_quests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_quests_quest_id_foreign` (`quest_id`),
  ADD KEY `user_quests_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `badges`
--
ALTER TABLE `badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `credit_logs`
--
ALTER TABLE `credit_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forums`
--
ALTER TABLE `forums`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `group_members`
--
ALTER TABLE `group_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `group_posts`
--
ALTER TABLE `group_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quests`
--
ALTER TABLE `quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `threads`
--
ALTER TABLE `threads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `thread_replies`
--
ALTER TABLE `thread_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_badges`
--
ALTER TABLE `user_badges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `user_quests`
--
ALTER TABLE `user_quests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `credit_logs`
--
ALTER TABLE `credit_logs`
  ADD CONSTRAINT `credit_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `forums`
--
ALTER TABLE `forums`
  ADD CONSTRAINT `forums_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `forums` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `forums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_members`
--
ALTER TABLE `group_members`
  ADD CONSTRAINT `group_members_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD CONSTRAINT `group_posts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketplace_items`
--
ALTER TABLE `marketplace_items`
  ADD CONSTRAINT `marketplace_items_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `marketplace_orders`
--
ALTER TABLE `marketplace_orders`
  ADD CONSTRAINT `marketplace_orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `marketplace_orders_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `marketplace_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `threads`
--
ALTER TABLE `threads`
  ADD CONSTRAINT `threads_forum_id_foreign` FOREIGN KEY (`forum_id`) REFERENCES `forums` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `threads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thread_replies`
--
ALTER TABLE `thread_replies`
  ADD CONSTRAINT `thread_replies_thread_id_foreign` FOREIGN KEY (`thread_id`) REFERENCES `threads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `thread_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `timeline_activities`
--
ALTER TABLE `timeline_activities`
  ADD CONSTRAINT `timeline_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_rank_id_foreign` FOREIGN KEY (`rank_id`) REFERENCES `ranks` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `user_badges`
--
ALTER TABLE `user_badges`
  ADD CONSTRAINT `user_badges_badge_id_foreign` FOREIGN KEY (`badge_id`) REFERENCES `badges` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_badges_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_quests`
--
ALTER TABLE `user_quests`
  ADD CONSTRAINT `user_quests_quest_id_foreign` FOREIGN KEY (`quest_id`) REFERENCES `quests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_quests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
