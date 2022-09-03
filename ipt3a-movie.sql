-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 10:53 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipt3a-movie`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `note`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ragg2', 'qwerty', NULL, '2021-01-06 18:15:12', NULL),
(2, 'aaaa', 'asdasdasd', NULL, NULL, NULL),
(3, 'KevinMitnick', 'ghost in wire', '2021-01-06 19:32:54', '2021-01-06 19:32:54', NULL),
(4, 'GaryMckinon', 'Aliens are truuuuuuue', '2021-01-06 19:33:24', '2021-01-06 19:33:24', NULL),
(5, 'Louise', 'maganda', '2021-01-10 06:06:41', '2021-01-10 06:06:41', NULL),
(6, 'Cong', 'comedian', '2021-01-10 06:09:32', '2021-01-10 06:09:32', NULL),
(7, 'TRY', 'TRY', '2021-01-10 06:46:34', '2021-01-10 06:46:34', NULL),
(8, 'SAPA', 'SAPA', '2021-01-10 06:47:42', '2021-01-10 06:47:42', NULL),
(9, 'awts', 'awts', '2021-01-10 06:50:17', '2021-01-10 06:50:17', NULL),
(10, 'Last', 'last', '2021-01-10 06:52:30', '2021-01-10 06:52:30', NULL),
(11, 'Waaaaaaaaaa', 'Waaaaaaaaaa', '2021-01-10 08:03:54', '2021-01-10 08:03:54', NULL),
(12, 'QW', 'qw', '2021-01-10 08:05:28', '2021-01-10 08:05:28', NULL),
(13, 'ey', 'ey', '2021-01-10 08:20:29', '2021-01-10 08:20:29', NULL),
(14, 'aaaa', 'aaaaaaaaaa', '2021-01-10 08:20:49', '2021-01-10 08:20:49', NULL),
(15, 'pers', 'pers', '2021-01-10 08:23:35', '2021-01-10 08:23:35', NULL),
(16, 'hahahah', 'hhhahahahaha', '2021-01-10 08:23:52', '2021-01-10 08:23:52', NULL),
(17, 'MUY', 'YUM', '2021-01-10 08:25:39', '2021-01-10 08:25:39', NULL),
(18, 'WHAT', 'WHAT', '2021-01-10 08:27:16', '2021-01-10 08:27:16', NULL),
(19, 'HOW', 'HOW', '2021-01-10 08:27:38', '2021-01-10 08:27:38', NULL),
(20, 'OKAY NA', 'OKAY NA', '2021-01-10 08:28:26', '2021-01-10 08:28:26', NULL),
(21, 'Mentos', 'mentis', '2021-01-10 08:29:25', '2021-01-10 08:29:25', NULL),
(22, 'Datu', 'datu', '2021-01-10 08:30:25', '2021-01-10 08:30:25', NULL),
(23, 'Dexi', 'dexi', '2021-01-10 08:33:40', '2021-01-10 08:33:40', NULL),
(24, 'BoshKeng', 'BoshKeng', '2021-01-10 08:34:28', '2021-01-10 08:34:28', NULL),
(25, 'Julia', 'love', '2021-01-10 08:34:57', '2021-01-10 08:34:57', NULL),
(26, 'Roger', 'roger', '2021-01-10 08:36:02', '2021-01-10 08:36:02', NULL),
(27, 'Snowden', 'malupet', '2021-01-10 09:40:30', '2021-01-10 09:40:30', NULL),
(28, 'JulianAssange', 'wikileaks', '2021-01-10 09:45:14', '2021-01-10 09:45:14', NULL),
(29, 'Dazai', 'No Longer Human', '2021-01-10 09:50:05', '2021-01-10 09:50:05', NULL),
(30, 'Awst', 'gegeg', '2021-01-10 09:50:41', '2021-01-10 09:50:41', NULL),
(31, 'Lelouch', 'Prince', '2021-01-10 09:51:20', '2021-01-10 09:51:20', NULL),
(32, 'Suzaku', 'Kururugi', '2021-01-10 09:52:21', '2021-01-10 09:52:21', NULL),
(33, 'Hisoka', 'The killer', '2021-01-10 09:53:00', '2021-01-10 09:53:00', NULL),
(34, 'Naruto', 'genin forever', '2021-01-10 09:54:15', '2021-01-10 09:54:15', NULL),
(35, 'Lmml', 'lmml', '2021-01-10 09:55:27', '2021-01-10 09:55:27', NULL),
(36, 'NewActor', 'hahahhahaha', '2021-01-10 09:58:25', '2021-01-10 09:58:25', NULL),
(37, 'Mamita', 'mamita', '2021-01-10 10:00:05', '2021-01-10 10:00:05', NULL),
(38, 'mopa', 'mop', '2021-01-10 10:00:58', '2021-01-11 08:27:52', NULL),
(39, 'Sir dalisay', 'Prof', '2021-01-23 04:07:29', '2021-01-23 04:07:29', NULL),
(40, 'wow', 'woo', '2021-01-23 04:22:28', '2021-01-23 04:22:28', NULL),
(41, 'Batasssss', 'batas', '2021-01-23 04:23:31', '2021-01-23 04:23:31', NULL),
(42, 'aaaasw', 'awasd', '2021-01-23 04:24:01', '2021-01-23 04:24:01', NULL),
(43, 'asdasda', 'aeqweasd', '2021-01-23 04:24:58', '2021-01-23 04:24:58', NULL),
(44, 'asas', 'asas', '2021-01-23 04:25:28', '2021-01-23 04:25:28', NULL),
(45, 'xcvxcv', 'xcvxcv', '2021-01-23 04:25:58', '2021-01-23 04:25:58', NULL),
(46, 'dudoc', 'maganda', '2021-01-23 08:10:25', '2021-01-23 08:10:25', NULL),
(47, 'pakasal', 'pasakal', '2021-01-23 08:16:54', '2021-01-23 08:16:54', NULL),
(48, 'redamansi', 'redamansi', '2021-01-23 08:18:19', '2021-01-23 08:18:19', NULL),
(49, 'hahahahah', 'hahahaha', '2021-01-23 08:18:54', '2021-01-23 08:18:54', NULL),
(50, 'bucket', 'chicken', '2021-01-23 08:25:03', '2021-01-23 08:25:03', NULL),
(51, 'anagt', 'angat', '2021-01-23 08:29:06', '2021-01-23 08:29:06', NULL),
(52, 'last', 'last', '2021-01-23 08:29:59', '2021-01-23 08:29:59', NULL),
(53, 'kain', 'kain', '2021-01-23 08:34:08', '2021-01-23 08:34:08', NULL),
(54, 'aas', 'aas', '2021-01-23 08:40:00', '2021-01-23 08:40:00', NULL),
(55, 'asdqwe', 'asdqwe', '2021-01-23 09:04:21', '2021-01-23 09:04:21', NULL),
(56, 'qweqw', 'qweqwe', '2021-01-23 09:08:52', '2021-01-23 09:08:52', NULL),
(57, 'xx', 'xx', '2021-01-23 09:17:12', '2021-01-23 09:17:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terror in Resonance', 'Terror in Resonance.jpg', NULL, NULL),
(5, 1, 'snowden', 'snowden.jpg', '2021-01-24 00:24:26', '2021-01-24 00:24:26');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `released_at` date NOT NULL,
  `duration` int(11) NOT NULL,
  `info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `title`, `story`, `released_at`, `duration`, `info`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Bungo Stray Dogs', 'Its about the people who consider themselves as stray dogs \'cause they lived at getto no im just kidding', '2021-01-01', 2, 'Dazai is one of the best character', 'RAGG.png', '2021-01-05 09:55:01', '2021-01-06 03:59:03', NULL),
(6, 'Hack', 'hackinghackinghackinghackinghackinghackinghackinghackinghacking', '2021-01-26', 5, 'asdasdasd', 'Hack.png', '2021-01-06 04:05:31', '2021-01-06 04:05:31', NULL),
(7, 'The yes yes showssssssss', 'you better get ready for a big surprise', '2021-01-26', 1, 'I love to eat', 'The yes yes show.png', '2021-01-06 19:22:45', '2021-01-06 19:23:03', NULL),
(8, 'CodeGeass', 'Politics and mindgames', '2021-01-23', 10, 'sana all', 'CodeGeass.jpg', '2021-01-10 09:03:56', '2021-01-10 09:03:56', NULL),
(9, 'snowden', 'revealing government\'s secrets', '2021-01-22', 2, 'haaaackj', 'snowden.jpg', '2021-01-10 10:13:48', '2021-01-10 10:13:48', NULL),
(10, 'CodeGeass2', 'Politics and mindgames', '2021-01-22', 2, 'asdasdasd', 'CodeGeass2.jpg', '2021-01-23 04:11:35', '2021-01-23 04:11:35', NULL),
(11, 'RAGG222', 'Politics and mindgames', '2021-01-28', 5, 'asdasdasd', 'RAGG222.png', '2021-01-23 04:12:08', '2021-01-23 04:12:08', NULL),
(12, 'Terror in Resonance', 'Terror in Resonance is an anime that starts strong as it follows two boys, Nine and Twelve, as they enact their terrorist bombing attack on the Tokyo Metropolitan Government Building. However, midway through the execution of their plan, one of them is discovered by depressed school girl Lisa.', '2020-12-31', 2, 'Rebellion is not wrong, we rebel because there is something wrong!', 'Terror in Resonance.jpg', '2021-01-23 11:06:51', '2021-01-23 11:08:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `film_actor_role`
--

CREATE TABLE `film_actor_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL,
  `actor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_actor_role`
--

INSERT INTO `film_actor_role` (`role_id`, `film_id`, `actor_id`) VALUES
(1, 5, 1),
(2, 6, 2),
(1, 7, 2),
(5, 8, 24),
(6, 9, 27),
(1, 10, 1),
(1, 11, 1),
(1, 12, 17);

-- --------------------------------------------------------

--
-- Table structure for table `film_genre`
--

CREATE TABLE `film_genre` (
  `genre_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_genre`
--

INSERT INTO `film_genre` (`genre_id`, `film_id`) VALUES
(2, 5),
(2, 6),
(3, 7),
(6, 8),
(3, 9),
(3, 10),
(6, 11),
(2, 12);

-- --------------------------------------------------------

--
-- Table structure for table `film_producer`
--

CREATE TABLE `film_producer` (
  `producer_id` int(10) UNSIGNED NOT NULL,
  `film_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `film_producer`
--

INSERT INTO `film_producer` (`producer_id`, `film_id`) VALUES
(1, 5),
(2, 6),
(2, 7),
(3, 8),
(1, 9),
(1, 10),
(3, 11),
(1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) UNSIGNED NOT NULL,
  `genre` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `genre`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'suspense', NULL, NULL, NULL),
(3, 'Hacking', '2021-01-05 03:47:34', '2021-01-05 03:47:34', NULL),
(5, 'Comedy', '2021-01-06 19:34:07', '2021-01-06 19:34:07', NULL),
(6, 'Animated', '2021-01-06 19:34:14', '2021-01-06 19:34:14', NULL),
(7, 'wooooooooooooo', '2021-01-08 23:22:35', '2021-01-08 23:22:35', NULL),
(8, 'Hiphop', '2021-01-10 08:42:05', '2021-01-10 08:42:05', NULL),
(9, 'Rap', '2021-01-10 08:42:38', '2021-01-10 08:42:38', NULL),
(10, 'Musical', '2021-01-10 08:43:09', '2021-01-10 08:43:09', NULL),
(11, 'Plain', '2021-01-10 10:03:53', '2021-01-10 10:03:53', NULL),
(12, 'Wa', '2021-01-10 10:04:13', '2021-01-10 10:04:13', NULL),
(13, 'aaaw', '2021-01-10 10:04:51', '2021-01-10 10:04:51', NULL),
(14, 'DRUGS', '2021-01-10 10:05:39', '2021-01-10 10:05:39', NULL),
(15, 'Habulan', '2021-01-10 10:07:00', '2021-01-10 10:07:00', NULL),
(16, 'Fliptop', '2021-01-10 10:25:11', '2021-01-10 10:25:11', NULL),
(17, 'Magingay', '2021-01-10 10:25:41', '2021-01-10 10:25:41', NULL),
(18, 'Edited', '2021-01-23 04:12:25', '2021-01-23 04:12:25', NULL),
(19, 'sapa', '2021-01-23 04:12:54', '2021-01-23 04:12:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_01_03_151430_create_actors_table', 1),
(10, '2021_01_03_151514_create_films_table', 1),
(11, '2021_01_03_151527_create_genres_table', 1),
(12, '2021_01_03_151543_create_producers_table', 1),
(13, '2021_01_03_151555_create_roles_table', 1),
(14, '2021_01_05_125032_relationship', 2),
(15, '2021_01_11_082920_create_favorites_table', 3),
(16, '2021_01_11_084042_create_favorites_table', 4),
(17, '2021_01_23_202302_create_ratings_table', 5),
(18, '2021_01_24_054941_create_favorites_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('05ebad5b84e3032b422633ddc457444a7952ae6995aa3a69d1a471351de39a62676a662a72e9bea5', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:17:28', '2021-01-07 23:17:28', '2022-01-08 07:17:28'),
('0a40db85fcbdfd35abfec1f6dcd0b3a4529b0a043d2a9814831761bd553487d6a9346f8029d90939', 2, 1, 'authToken', '[]', 0, '2021-01-06 21:56:21', '2021-01-06 21:56:21', '2022-01-07 05:56:21'),
('16f6eef4111dfd20044b9ff5eca245dcafd6d5253401906b3ba9f5963a212582eb8c3d44ef6a0fe2', 31, 3, 'authToken', '[]', 0, '2021-01-08 23:58:48', '2021-01-08 23:58:48', '2022-01-09 07:58:48'),
('1724d4d609618617ec80ff98276be75baa8abcaba4e02588f990a8ae01b91f868b297b7493ff9b62', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:21:33', '2021-01-07 23:21:33', '2022-01-08 07:21:33'),
('18693249d0fda6189997aaf0d2088df67b947ed0ef6a38901a9df02882ccec6565f4256e2ff5084a', 1, 1, 'authToken', '[]', 0, '2021-01-06 21:48:24', '2021-01-06 21:48:24', '2022-01-07 05:48:24'),
('1a7650026f9f2f8bb7c93f846bdd3d7a61ed8208f9e8d590042b0808cb62b1c41d58996918c89f66', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:32:23', '2021-01-07 23:32:23', '2022-01-08 07:32:23'),
('1c5a07a5408a743dbe46d4b2eb3db8c04b8c45c59824f26a6145b6e57f2aafc04df90d8fe342b860', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 04:53:25', '2021-01-08 04:53:25', '2022-01-08 12:53:25'),
('1d3c8abbc8734d77e049bb39e07c64d43a75d3255534bda4f0ccb77296709220eac974f7f7887f95', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 06:12:57', '2021-01-08 06:12:57', '2022-01-08 14:12:57'),
('263a724429ba34d840ba1b074dd25744de7c300d65b3234800fa9457b14faae04b293d3cb6bb6285', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:10:26', '2021-01-07 23:10:26', '2022-01-08 07:10:26'),
('26d190cc44336ff7c1a5ff401002f4c806e600ffc9012ec44c1c3f1e388d6a34a800ee681707ac2f', 1, 3, 'ragunayon@gmail.com-2021-01-09 06:51:48', '[]', 0, '2021-01-08 22:51:48', '2021-01-08 22:51:48', '2022-01-09 06:51:48'),
('28eba0e4c0da59915dd8c95ac51fc34ec770ba107fae24d146711c5fe1cfe331b79aa2e11c83b1c2', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:49:53', '[]', 0, '2021-01-07 23:49:53', '2021-01-07 23:49:53', '2022-01-08 07:49:53'),
('2afabcb1eeb64b87593765e658e401ff4af88cdd8d68ac926ddb7dbace08466c57ae5c492508bff9', 1, 3, 'ragunayon@gmail.com-2021-01-09 09:25:10', '[]', 0, '2021-01-09 01:25:10', '2021-01-09 01:25:10', '2022-01-09 09:25:10'),
('2cdd3d9f0dba1ef1910d046de9f9e497f5a7cef3b4395397e6895e339d3adfe6a85ac5b6abd4b9e5', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:51:26', '[]', 0, '2021-01-07 23:51:26', '2021-01-07 23:51:26', '2022-01-08 07:51:26'),
('2e4904b817d026cf15896898302570db684a62ef63f4ab0f0728b19dc425a205dc4aa7b5c6fe950d', 32, 3, 'authToken', '[]', 0, '2021-01-10 03:31:04', '2021-01-10 03:31:04', '2022-01-10 11:31:04'),
('2f18c9143dcdde8896e2b12a1a60d5d14ead12b31a9c7ac8af0440de1ea74d11dd3c5483a423fdff', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 04:54:09', '2021-01-08 04:54:09', '2022-01-08 12:54:09'),
('2f4466f58cd87c693ea4cfdd2b5aca411cf4002a249487bf4fc47924968be25997884440709230c5', 1, 3, 'ragunayon@gmail.com-2021-01-09 11:37:20', '[]', 0, '2021-01-09 03:37:20', '2021-01-09 03:37:20', '2022-01-09 11:37:20'),
('35a518ff6404ef7edd69986574b099c99409ca75168e770a909b9981341ff9bd6d4f26ec8638318e', 1, 3, 'ragunayon@gmail.com-2021-01-10 11:49:22', '[]', 0, '2021-01-10 03:49:22', '2021-01-10 03:49:22', '2022-01-10 11:49:22'),
('3687f00cbc5d6fa2c216e3a0665f82a6c3f4158956b0761cf742bf5ee764f1e90d0528e516d49e75', 12, 1, 'authToken', '[]', 0, '2021-01-07 21:24:22', '2021-01-07 21:24:22', '2022-01-08 05:24:22'),
('3c5804367dedbfa25b66feb2c7973ac6d66902961e3c891545dc268291d19b328dab911b3cab5112', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:35:26', '2021-01-07 23:35:26', '2022-01-08 07:35:26'),
('3d9ad886f6a561fd1ae9bce43a3c894e6143c35b6bc63fb882b415fed2342f501250ce0e77086a19', 1, 3, 'ragunayon@gmail.com-2021-01-09 06:51:41', '[]', 0, '2021-01-08 22:51:41', '2021-01-08 22:51:41', '2022-01-09 06:51:41'),
('43a952f54af0e50ce66f77052a2383af3ddeea4c011951326af821f6260e2559dc3c2e33f8f27bf6', 2, 1, 'authToken', '[]', 0, '2021-01-06 22:25:34', '2021-01-06 22:25:34', '2022-01-07 06:25:34'),
('4963ac54f1ff798ecb623c7cf6b218401321a180578ea422cb533cb29abd773c55a532433b84239e', 1, 3, 'ragunayon@gmail.com-2021-01-08 14:51:11', '[]', 0, '2021-01-08 06:51:11', '2021-01-08 06:51:11', '2022-01-08 14:51:11'),
('497c7c561663203ed14a5650505e729367a0c0bec3ae8650310159ad69e2cda8e10dde973e55a576', 25, 1, 'authToken', '[]', 0, '2021-01-07 22:43:08', '2021-01-07 22:43:08', '2022-01-08 06:43:08'),
('4d8eeea450ca4f015b4b4f9cccbf532937f5e7e233978f37cfd63890edb3a15894bf1a9450feaef8', 8, 1, 'authToken', '[]', 0, '2021-01-06 22:06:39', '2021-01-06 22:06:39', '2022-01-07 06:06:39'),
('557cf54c78fd0d99ae6131a9f02daed1d915f4a84723a8b83b4d45d07c43e2b1d0028c9b7f20d283', 24, 1, 'authToken', '[]', 0, '2021-01-07 22:34:16', '2021-01-07 22:34:16', '2022-01-08 06:34:16'),
('5a79a4be1063712209327d1ddc26ac6e58ce079056d6f4f4b632a8c446411c82ad4721735cdb5be5', 2, 1, 'authToken', '[]', 0, '2021-01-06 22:07:36', '2021-01-06 22:07:36', '2022-01-07 06:07:36'),
('5e11f5e5802c2d1be68eebf7bb92979694c4ac5c9d77abaa0ba9cf0187f0af2f6d68b2382aefef95', 7, 1, 'authToken', '[]', 0, '2021-01-06 22:05:43', '2021-01-06 22:05:43', '2022-01-07 06:05:43'),
('666530352fe3775f971666c049bc26584b887563c7c487f52008f1c36b7de6fcdcecc04bb4fce1a7', 29, 3, 'harold@gmail.com-2021-01-08 15:13:26', '[]', 0, '2021-01-08 07:13:26', '2021-01-08 07:13:26', '2022-01-08 15:13:26'),
('678c0df8683de6b6b5d5873f334cfcdb811f4fec8b28ca3a78d7c570d1cd18baab18984464428e0b', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:49:27', '[]', 0, '2021-01-07 23:49:27', '2021-01-07 23:49:27', '2022-01-08 07:49:27'),
('712c5c0355eb00bc00c7dc0644abd11c529aa8f6fcaf8a1e13fa0371624e859f2ae6d705befbb918', 1, 3, 'authToken', '[]', 0, '2021-01-10 04:49:30', '2021-01-10 04:49:30', '2022-01-10 12:49:30'),
('744f3982d0c7a346d12058e0916c3029382f2a300a784d8a00ab34e97321cf17580becadd14752b2', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:48:31', '[]', 0, '2021-01-07 23:48:31', '2021-01-07 23:48:31', '2022-01-08 07:48:31'),
('7461826820c935ce356aeacb20f7e7f268b445395b55a40148217a9d5887edcd7f1a6f016d208e18', 30, 3, 'authToken', '[]', 0, '2021-01-08 23:23:26', '2021-01-08 23:23:26', '2022-01-09 07:23:26'),
('747133255bd37ce7e2388f282c369225555202e9a9ce3421e9a8a6531e55e4c8aaf8ae74a998a1a1', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 05:32:56', '2021-01-08 05:32:56', '2022-01-08 13:32:56'),
('7b84d436fcca76cc120a33da1bff2fb1ec1412aa6bcc93bd57c9247cbd813f5f2a857ba0050a8fa7', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 05:35:02', '2021-01-08 05:35:02', '2022-01-08 13:35:02'),
('80cc94755fbcc84d31f26b2d689ed2005cf5d23e91c57286476871e58fcd64350160708c50b38041', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:19:12', '2021-01-07 23:19:12', '2022-01-08 07:19:12'),
('846a2819f5967ddc6ec773e0f572d4694b749c66994098fd67d28f5c36289aaff697af29dd3465e3', 6, 1, 'authToken', '[]', 0, '2021-01-06 22:04:18', '2021-01-06 22:04:18', '2022-01-07 06:04:18'),
('879e99f7cf53d59b58eb3850a48c83ea1854519202dfd711fb1cd72bb4aab4170b705d16d73840ee', 1, 3, 'authToken', '[]', 0, '2021-01-10 07:19:27', '2021-01-10 07:19:27', '2022-01-10 15:19:27'),
('8f438707b67c8f84ba43e65b6089a6e23ba7d3d28de1a34b435671c9da7d3b0a97ab688213dde6e3', 4, 1, 'authToken', '[]', 0, '2021-01-06 21:59:32', '2021-01-06 21:59:32', '2022-01-07 05:59:32'),
('8f78fc10af7286a92a5f20241dcfd6f7872b82870ea3f11ac4838b03f5289686b318bd99aae8cba3', 17, 1, 'authToken', '[]', 0, '2021-01-07 21:42:02', '2021-01-07 21:42:02', '2022-01-08 05:42:02'),
('8fa82c77b7c7636051c206c17dc217c84f717ef38cc60407d74226beb87d4eeba5009dd9f2667380', 1, 1, 'TutsForWeb', '[]', 0, '2021-01-06 22:51:21', '2021-01-06 22:51:21', '2022-01-07 06:51:21'),
('966d5a33e3956ad095887393011fa32d1126f560928f6ee55b72bbc19fcef0f8c9525af00581a697', 1, 3, 'authToken', '[]', 0, '2021-01-10 04:32:44', '2021-01-10 04:32:44', '2022-01-10 12:32:44'),
('a04f0a2406fdfa81d8d40202dee7ed3c801189d9493d725ecbe492fe307bddbc6c7ee8010b847680', 28, 1, 'authToken', '[]', 0, '2021-01-07 23:01:18', '2021-01-07 23:01:18', '2022-01-08 07:01:18'),
('a1daa0ecae868d3a3d47b29b939b1c3a3a9ed8e098cdffa2b075c1fc6ee713ceb604abd4cd45f951', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:34:34', '2021-01-07 23:34:34', '2022-01-08 07:34:34'),
('a8544a2ac820dea3f6d8320562eb7af7f040588046dc5296e862f5e670eb705796dd93e61b321287', 28, 3, 'Client12@gmail.com-2021-01-09 11:37:06', '[]', 0, '2021-01-09 03:37:06', '2021-01-09 03:37:06', '2022-01-09 11:37:06'),
('abd1d9401b0944f55f7c64876a3c6a3877be8bfae997021c3193e92237f3c539e12e46ca9cf1b5e6', 3, 1, 'authToken', '[]', 0, '2021-01-06 21:58:38', '2021-01-06 21:58:38', '2022-01-07 05:58:38'),
('b48ed52482103d6fee613ae04ffeff5ccefb38244f01e7ba7ea5199636614354f2cf6e7184ca29cd', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:52:54', '[]', 0, '2021-01-07 23:52:54', '2021-01-07 23:52:54', '2022-01-08 07:52:54'),
('ba5d1bf62146a8457963f0103fb1f0ae4a46991fea9d79a3136ef97f401eabe5f189bee256c05127', 1, 3, 'authToken', '[]', 0, '2021-01-10 04:57:01', '2021-01-10 04:57:01', '2022-01-10 12:57:01'),
('bbf28047e00fa6dad952b31cd68103a4ca77944abb5880cc2a0ff0b2e0f753056d6b0b8384f0ac23', 2, 1, 'authToken', '[]', 0, '2021-01-06 22:28:19', '2021-01-06 22:28:19', '2022-01-07 06:28:19'),
('bd6711e1d28d14e124e3f2a61b9fb35ad2e2f9d2e5a9c86b6511a1400d55141a340316a329d1f8dc', 1, 3, 'ragunayon@gmail.com-2021-01-08 07:52:02', '[]', 0, '2021-01-07 23:52:02', '2021-01-07 23:52:02', '2022-01-08 07:52:02'),
('bf71c6215d208b98ee5398ddab0b2ab503880ef5781450bdb0c17f7d201315faf4bad85eb4be0c86', 2, 1, 'authToken', '[]', 0, '2021-01-06 22:08:43', '2021-01-06 22:08:43', '2022-01-07 06:08:43'),
('c862eecf5a06646d3f082abb929f4b9fcc5f114ac992834dcba8295afed5109709ef79d86a86e8c5', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:18:35', '2021-01-07 23:18:35', '2022-01-08 07:18:35'),
('c9be28f963a093f7237fcb126c6dc85c03439d37709d7c3a1920f8b809511b919ed3fdfb344b0293', 1, 3, 'ragunayon@gmail.com-2021-01-08 15:30:22', '[]', 0, '2021-01-08 07:30:22', '2021-01-08 07:30:22', '2022-01-08 15:30:22'),
('d094bfd619c062dd49d1ff267bf92d3fb3d743e694abc4593ba8324fc5f10a4095e6312910c8a851', 1, 3, 'Personal Access Token', '[]', 0, '2021-01-08 05:27:15', '2021-01-08 05:27:15', '2022-01-08 13:27:15'),
('d166f77bc5e5c2eef5090de2ee9bd2d4352b766cd6c7ba5127e30638ec9451a5e86e948e46386279', 29, 3, 'authToken', '[]', 0, '2021-01-08 07:13:17', '2021-01-08 07:13:17', '2022-01-08 15:13:17'),
('d3333c2f6a5cd1123cb2503ef68190d7cf4f3ab06361ca4b768c87a05e643c952d29668bd71c9e0b', 1, 1, 'authToken', '[]', 0, '2021-01-06 22:39:42', '2021-01-06 22:39:42', '2022-01-07 06:39:42'),
('dce4c43f2a952163da93235f7e793889fdeb2313a04bac56653c53a2a11fd5ef5fd1304f8c2e6e4d', 27, 3, 'client1@gmail.com-2021-01-09 10:34:34', '[]', 0, '2021-01-09 02:34:35', '2021-01-09 02:34:35', '2022-01-09 10:34:35'),
('dfafb28d790f61028b5ae8ece5ab939fc45e0fcc9f9e8fef9cbd3ab1acc92b046e4cb017aaf828f5', 5, 1, 'authToken', '[]', 0, '2021-01-06 22:01:37', '2021-01-06 22:01:37', '2022-01-07 06:01:37'),
('eba65985352cd8669a1734dd031beaf8f39a07d2793a3d55f6ef09ddf763c2e7094cc72669ebfd6b', 1, 3, 'ragunayon@gmail.com-2021-01-09 06:51:15', '[]', 0, '2021-01-08 22:51:15', '2021-01-08 22:51:15', '2022-01-09 06:51:15'),
('eda2ebd5c66118289978cbafd880a80dd40309c048d1a6a767847a38af454c99425da383c76a5919', 2, 1, 'authToken', '[]', 0, '2021-01-06 22:10:40', '2021-01-06 22:10:40', '2022-01-07 06:10:40'),
('efd32a626309e3b799e12653d124c3130c81b4b8c63042713bd691dcdcf0705340af3070f5030ff5', 1, 1, 'authToken', '[]', 0, '2021-01-07 23:12:35', '2021-01-07 23:12:35', '2022-01-08 07:12:35'),
('f0766612550a23f8780ea7f086298a3bec4969762ffeefcbeceaca2d604449ed0a08e7da21727f36', 1, 3, 'authToken', '[]', 0, '2021-01-10 04:26:38', '2021-01-10 04:26:38', '2022-01-10 12:26:38'),
('fadd158fec5ebae17683301bc5af404c030a1133fbd92b8891920a3f3525f9317cffad108a4ff14f', 1, 3, 'authToken', '[]', 0, '2021-01-10 04:33:06', '2021-01-10 04:33:06', '2022-01-10 12:33:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'LaraMovie Personal Access Client', 'qr8ombSrbHoPV7wGx2F3grNv9Uby4tJhxBlMkoiL', NULL, 'http://localhost', 1, 0, 0, '2021-01-06 21:42:23', '2021-01-06 21:42:23'),
(2, NULL, 'LaraMovie Password Grant Client', '1I1e7vszYq4f6vg11NRcnNinpKz8OTMR4FTZXuX8', 'users', 'http://localhost', 0, 1, 0, '2021-01-06 21:42:24', '2021-01-06 21:42:24'),
(3, NULL, 'LaraMovie Personal Access Client', 'ivnEexOVLkbXaT9sPLaL8JR0tW3Ma2mY4OWlE1bI', NULL, 'http://localhost', 1, 0, 0, '2021-01-07 23:45:38', '2021-01-07 23:45:38'),
(4, NULL, 'LaraMovie Password Grant Client', 'oFFYJUHp4qJxasV3M5tcoh8uKodlRZUNzbla0p5X', 'users', 'http://localhost', 0, 1, 0, '2021-01-07 23:45:38', '2021-01-07 23:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-01-06 21:42:24', '2021-01-06 21:42:24'),
(2, 3, '2021-01-07 23:45:38', '2021-01-07 23:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `producers`
--

CREATE TABLE `producers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producers`
--

INSERT INTO `producers` (`id`, `name`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'ragg', 'ragunayon@gmail.com', NULL, NULL, NULL),
(2, 'awaw', 'wang@example.com', NULL, NULL, NULL),
(3, 'Netflix', 'netflix@netflix.com', '2021-01-10 08:45:38', '2021-01-10 08:45:38', NULL),
(4, 'Fliptop', 'hiphop@fliptop.com', '2021-01-10 08:46:22', '2021-01-10 08:46:22', NULL),
(5, 'RapIndustry', 'Flippino@gmail.com', '2021-01-10 08:47:33', '2021-01-10 08:47:33', NULL),
(6, 'Oppa', 'Oppa@gmail.com', '2021-01-10 08:48:44', '2021-01-10 08:48:44', NULL),
(7, 'Batas', 'Batas@gmail.com', '2021-01-10 10:22:10', '2021-01-10 10:22:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `film_id` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `film_id`, `rate`, `created_at`, `updated_at`) VALUES
(1, 12, 5, '2021-01-23 12:59:04', '2021-01-23 12:59:04'),
(2, 12, 5, '2021-01-23 13:48:37', '2021-01-23 13:48:37'),
(3, 12, 2, '2021-01-23 13:55:32', '2021-01-23 13:55:32'),
(4, 11, 3, '2021-01-23 14:13:50', '2021-01-23 14:13:50'),
(5, 12, 4, '2021-01-23 14:16:40', '2021-01-23 14:16:40'),
(6, 12, 1, '2021-01-23 14:16:48', '2021-01-23 14:16:48'),
(7, 12, 1, '2021-01-23 21:10:52', '2021-01-23 21:10:52'),
(8, 12, 1, '2021-01-24 01:51:31', '2021-01-24 01:51:31'),
(9, 12, 5, '2021-01-24 01:51:41', '2021-01-24 01:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `role` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bida', NULL, NULL, NULL),
(2, 'Bida-bida', NULL, NULL, NULL),
(3, 'Extra1', '2021-01-06 19:33:41', '2021-01-06 19:33:41', NULL),
(4, 'Extra2', '2021-01-06 19:33:49', '2021-01-06 19:33:49', NULL),
(5, 'Jumper', '2021-01-10 08:38:40', '2021-01-10 08:38:40', NULL),
(6, 'kontrabida', '2021-01-10 10:02:01', '2021-01-10 10:02:01', NULL),
(7, 'dasd', '2021-01-23 06:30:22', '2021-01-23 06:30:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'RAGG', 'ragunayon@gmail.com', NULL, '$2y$10$HN7nv7oV8xESRMp.EbrhYe2wB8TDUOA9ToQKbuJo6uiVFSZVJfZlm', 'Wpu9ro3ATXMZgTBg6E6aVkmWdc6fNCLzgsrsPYBHkUF7QdTRcs4MzACjQlCi', '2021-01-06 21:48:23', '2021-01-06 21:48:23'),
(27, 'Client1', 'client1@gmail.com', NULL, '$2y$10$R6ux4QbsBj6X1//bP2VAWuTom/DFwuRCSbNCVfY8iF24NUtrJ2FHO', NULL, '2021-01-07 22:59:52', '2021-01-07 22:59:52'),
(28, 'Client12', 'Client12@gmail.com', NULL, '$2y$10$h2BufUZmZ5DNfpEX0BfNXuOx6H8MmXvlhNwM3Mf2xGflOhSZI6.gG', NULL, '2021-01-07 23:01:14', '2021-01-07 23:01:14'),
(29, 'harold', 'harold@gmail.com', NULL, '$2y$10$LT1ojmMgzvQNi7qPG4Y94.wOINoFPHUGoqVDzsLs9cwgtLTSGIkNi', NULL, '2021-01-08 07:13:14', '2021-01-08 07:13:14'),
(30, 'client11', 'client11@gmail.com', NULL, '$2y$10$/c4kBueZ6UDlOdK7rJDwu.aTXG5ALpnainNE1Xr9d0bPkb.LQkC3.', NULL, '2021-01-08 23:23:19', '2021-01-08 23:23:19'),
(31, 'example1', 'example1@gmail.com', NULL, '$2y$10$ujZ80KtZZYgwxdhHBOTLp.VKN.Gsq2vxP2GutucYKA3TFN4DER6Am', NULL, '2021-01-08 23:58:42', '2021-01-08 23:58:42'),
(32, 'example10', 'example10@gmail.com', NULL, '$2y$10$tk7e0fGlqdON7xUeDZfsbOxPjtcBxjiUnyki2xHAdaKrWG8QQ/PIC', NULL, '2021-01-10 03:30:32', '2021-01-10 03:30:32'),
(33, 'Batas', 'Batas@gmail.com', NULL, '$2y$10$2Lnyh5lO9G/gxG7Dn4CU/.DZdTslA7ID6tfitUlcqg4Qlbsq19tf2', NULL, '2021-01-10 12:56:01', '2021-01-10 12:56:01'),
(34, 'cong', 'cong@gmil.com', NULL, '$2y$10$rsCOGYPjz.Ei.VKgo2SC8O5MgMHLZCuQKgpTkD/hWxSBsH6Mc4VJu', NULL, '2021-01-10 13:00:16', '2021-01-10 13:00:16'),
(35, 'tar', 'target@gmail.com', NULL, '$2y$10$7SUSs2lLeZDu/B3NIxo1DOWNbr2DtCZMmBxvkmwjBpz7/IWL.Tzue', NULL, '2021-01-10 13:02:45', '2021-01-10 13:02:45'),
(36, 'rarakan', 'rakrakan@gmail.com', NULL, '$2y$10$PRKuLZHpLjHuW/r/jak8keU05LvV4oAkh3LWNJ0eTz6fzm/v.4KeG', NULL, '2021-01-10 13:06:02', '2021-01-10 13:06:02'),
(37, 'papop', 'papop@gmail.com', NULL, '$2y$10$.Z5AtWOtEsLfM3S2mACAquO7Fu7jCbU9MYWCWcYYXGWXAvrzx.DOC', NULL, '2021-01-10 13:06:55', '2021-01-10 13:06:55'),
(38, 'Snowden', 'snowden@gmail.com', NULL, '$2y$10$dWCnXaBn5sgLrjcBvIaubOiwOXecTnPnx1s3EBa3OrayfpOCrPZle', NULL, '2021-01-10 13:10:51', '2021-01-10 13:10:51'),
(39, 'admin', 'admin@gmail.com', NULL, '$2y$10$wu1g/2olzyNEG6/Vq2hnoOBvlV9ASRMm.fhBj6LR3h1fVFKbelCXi', NULL, '2021-01-11 02:36:36', '2021-01-11 02:36:36'),
(40, 'try1', 'try1@gmail.com', NULL, '$2y$10$BK9T/IRtAPHAUH4ERUTSIOlE2jUyGjiNyCQuMnYtVbiTIRwpkIEJm', NULL, '2021-01-23 05:16:00', '2021-01-23 05:16:00'),
(41, 'docdoc', 'docdoc@gmail.com', NULL, '$2y$10$VZI51FFVZGkKjoJ5giiha.C7Lo/zg1kA2wP5wQ0jKPfjtqNe2WwuK', NULL, '2021-01-23 05:21:31', '2021-01-23 05:21:31'),
(42, 'sapa', 'sapa@gmail.com', NULL, '$2y$10$sGw83qiBsbW1D28WjIEg8.1OgvTON99AAqxkSQfEWBcPYDUt2YxVy', NULL, '2021-01-23 05:23:11', '2021-01-23 05:23:11'),
(43, 'yow', 'yow@gmail.com', NULL, '$2y$10$WaMf5UqLC036Q9wQCqTW4OrXPotHEsWcxaLNjT65ZSvWTxCnhU5Lm', NULL, '2021-01-23 05:26:19', '2021-01-23 05:26:19'),
(44, 'sapa2', 'sapa2@gmail.com', NULL, '$2y$10$ZMseuaxC9pMXOfMDUBaHdODPHsMxFFpwJbcj6QKaOO2zxQUOGMh7y', NULL, '2021-01-23 05:27:18', '2021-01-23 05:27:18'),
(45, 'sapa3', 'sapa@gmail.com3', NULL, '$2y$10$A1FeRArC/sLqdrm.ia/F.eYa7c5qrt3sC3uKDMHffBg7rtiQ6AshC', NULL, '2021-01-23 05:28:11', '2021-01-23 05:28:11'),
(46, 'sapa4', 'sapa4@gmail.com', NULL, '$2y$10$ooYmLygRxBMjKLw0.1ta/uoPbDuL9Yv5B/dPl4La92K9o1oEjyJKG', NULL, '2021-01-23 05:29:10', '2021-01-23 05:29:10'),
(47, 'sapa5', 'sapa5@gmail.com', NULL, '$2y$10$HV3bLOBiJhW2OyieiVZqXegLmLRiVmMxPgV.N2keKZllf1JkDbJP2', NULL, '2021-01-23 05:33:24', '2021-01-23 05:33:24'),
(48, 'natsu', 'natsu1@gmail.com', NULL, '$2y$10$tUhqHwYuzfNbliwE7wwb/OUGDT2aTFOjbDcvAUgkAtaR1/Q4qxH0e', NULL, '2021-01-23 05:52:59', '2021-01-23 05:52:59'),
(49, 'natsu2', 'natsu2@gmail.com', NULL, '$2y$10$uBgEiPj4dPptXSBsq5wOyuh6nqFFy9Wm8LrD4BO9W3TKXJq1QBM3W', NULL, '2021-01-23 06:02:24', '2021-01-23 06:02:24'),
(50, 'tora', 'tora@gmail.com', NULL, '$2y$10$T74Inf4rmhHTspKCNJIL5.8E5OWS3QRFHXEjrJxv1LsFngM6sONuS', NULL, '2021-01-23 06:10:11', '2021-01-23 06:10:11'),
(51, 'natsu3', 'natsu3@gmail.com', NULL, '$2y$10$FmuDZ0.KlQZoYDoK6qezM.TaaJ.Sq1pHxHqfqxBczU8TkHmR/8vKa', NULL, '2021-01-23 06:19:53', '2021-01-23 06:19:53'),
(52, 'natsu4', 'natsu4@gmail.com', NULL, '$2y$10$ZiwR/o0wUArViZr3MxX2l.Sy1uM01HdaTHMn65WnnamtEDOHLwleW', NULL, '2021-01-23 06:24:07', '2021-01-23 06:24:07'),
(53, 'louise', 'louise@gmail.com', NULL, '$2y$10$yjvkPEeImqS.mCCOQGPdYOpd3dGJkZbzQMXI8.Ro9ZaQ2NekixeRO', NULL, '2021-01-23 06:31:16', '2021-01-23 06:31:16'),
(55, 'kokey2', 'koke2@gmail.com', NULL, '192168254123', NULL, '2021-01-23 06:38:13', '2021-01-23 06:38:13'),
(56, 'kokey3', 'kokey3@gmail.com', NULL, '192168254123', NULL, '2021-01-23 06:39:40', '2021-01-23 06:39:40'),
(58, 'try2', 'try2@gmail.com', NULL, '$2y$10$1SvBYjpaixm3a22Jrii5sunkYlOD3k9uCGjMJe/E/uklSiHbfGOGK', NULL, '2021-01-23 07:17:42', '2021-01-23 07:17:42'),
(59, 'try3', 'try3@gmail.co', NULL, '$2y$10$YgBXSFDkIxn3zqeayAXOUuS0M0wuC8oSE0YRe90vOUxlSo4hBGBSu', NULL, '2021-01-23 07:18:43', '2021-01-23 07:18:43'),
(60, 'try4', 'try4@gmail.com', NULL, '$2y$10$L01S7QZboqeM4ch6FVu7t.GLcE1IsXV0W1jNSVN1BX7PSZ72hufeG', NULL, '2021-01-23 07:23:36', '2021-01-23 07:23:36'),
(61, 'wawa', 'wawa@gmail.com', NULL, '$2y$10$ffaCPYSprmDuOe4GdrhO5ujBcXVVU403u.gRet8Mo99aMRCDQLbji', NULL, '2021-01-23 07:38:18', '2021-01-23 07:38:18'),
(62, 'JulianAssange', 'jullianassange@gmail.com', NULL, '$2y$10$wEe4Nw6PD8lgfzdv.zpbt.EbwHebk7fNl5c8bK5vVmLw9yDEfBcTW', NULL, '2021-01-24 01:08:57', '2021-01-24 01:08:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `film_actor_role`
--
ALTER TABLE `film_actor_role`
  ADD KEY `film_actor_role_film_id_foreign` (`film_id`),
  ADD KEY `film_actor_role_role_id_index` (`role_id`),
  ADD KEY `film_actor_role_actor_id_index` (`actor_id`);

--
-- Indexes for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD KEY `film_genre_film_id_foreign` (`film_id`),
  ADD KEY `film_genre_genre_id_index` (`genre_id`);

--
-- Indexes for table `film_producer`
--
ALTER TABLE `film_producer`
  ADD KEY `film_producer_film_id_foreign` (`film_id`),
  ADD KEY `film_producer_producer_id_index` (`producer_id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film_actor_role`
--
ALTER TABLE `film_actor_role`
  ADD CONSTRAINT `film_actor_role_actor_id_foreign` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_actor_role_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_actor_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_genre`
--
ALTER TABLE `film_genre`
  ADD CONSTRAINT `film_genre_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_genre_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `film_producer`
--
ALTER TABLE `film_producer`
  ADD CONSTRAINT `film_producer_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `film_producer_producer_id_foreign` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
