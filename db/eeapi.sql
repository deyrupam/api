-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 17, 2019 at 03:06 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eeapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(8, '2019_05_16_071515_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('f1d1518f1efb815d079af0156492d33dc879f8b8b172cee53f2ccb3f59e23eff78c2e1c12c034d72', 7, 2, NULL, '[]', 0, '2019-05-17 06:49:10', '2019-05-17 06:49:10', '2020-05-17 12:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '5ZSgxY8aIgbufSQ0uaB5x9ocDbLjvRUHipG6qc57', 'http://localhost', 1, 0, 0, '2019-05-17 06:43:16', '2019-05-17 06:43:16'),
(2, NULL, 'Laravel Password Grant Client', 'OOE6YiTfuWmgz5ruU5jF2eKXkQHXbOO9LwNNCGOj', 'http://localhost', 0, 1, 0, '2019-05-17 06:43:16', '2019-05-17 06:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-05-17 06:43:16', '2019-05-17 06:43:16');

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

--
-- Dumping data for table `oauth_refresh_tokens`
--

INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
('6c6941bbcd47e238d67dcd00fbb7a6bda590b914d3a9ff634c40d3b9f43d59b86da47b546433670f', 'f1d1518f1efb815d079af0156492d33dc879f8b8b172cee53f2ccb3f59e23eff78c2e1c12c034d72', 0, '2020-05-17 12:19:10');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `stock`, `discount`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Randal Bode', 'wireless charging with new updatedd', 589, 8, 5, 7, '2019-05-17 06:30:17', '2019-05-17 07:17:53'),
(2, 'Dr. Greta Marquardt I', 'Quia id enim dolor in tempore consequatur. Architecto nam soluta et quia veritatis non aut ut. Suscipit earum nobis tenetur harum. Qui fuga laudantium sequi consequatur vitae.', 241, 6, 28, 7, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(3, 'Shawna Wisozk MD', 'Voluptate qui inventore consequatur et soluta dolorem. Optio iure non dolor est. Est eos voluptatem voluptatem accusamus repellendus ut perferendis eos. Sed aut doloribus rem et voluptatem rerum rerum.', 302, 3, 3, 5, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(4, 'Lisette Emmerich III', 'Voluptatum officiis enim atque fuga omnis qui. Qui et dolorem sunt at expedita. Necessitatibus odio qui similique animi a nihil.', 346, 8, 10, 3, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(5, 'Jocelyn Kunze', 'Odio deserunt aperiam ipsa eum modi odio dicta. Ut dolores illo rerum omnis. Exercitationem totam perferendis est consequatur maiores nobis et. Rerum quisquam recusandae sequi ipsam et iusto.', 673, 8, 6, 4, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(6, 'Regan Grant', 'Et officia nihil amet labore beatae distinctio. Odio quo est libero quia. Officiis fuga non perferendis eum. Nemo adipisci fugiat aspernatur ut.', 249, 5, 29, 1, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(7, 'Eve Nolan', 'Culpa quos eveniet rerum ut ut doloribus. Est mollitia omnis numquam vel commodi necessitatibus rerum. Ut id ut officia corrupti. Voluptatem vel eaque quibusdam doloribus et est.', 530, 4, 23, 5, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(8, 'Chelsey Johnson', 'Voluptatem vel sunt sed commodi. Nihil est quis eum voluptatem veniam. Vel tenetur optio sapiente ut ullam sed rerum assumenda.', 382, 8, 28, 3, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(9, 'Dr. Emile Gleichner DVM', 'Soluta quis non earum. Sed consectetur minus est voluptas occaecati et ullam. Eligendi repellat ea non consequatur molestias quas mollitia.', 457, 8, 14, 3, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(10, 'Mrs. Liliane Lemke', 'Et unde iure sint numquam minus molestiae rem. Ratione amet et veritatis expedita doloremque. Dolores ut similique itaque animi. Magnam voluptatem iusto ab. Ut ipsum nihil expedita et.', 195, 3, 9, 1, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(11, 'Eda Morar', 'Atque enim nemo sequi voluptatem. Voluptate voluptatem eos numquam sit. Quia odio ut rem. Asperiores dolor sit id deserunt sit fugiat delectus.', 653, 9, 10, 2, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(12, 'Mrs. Reina Gleason', 'Voluptatibus architecto est assumenda nisi suscipit deserunt pariatur. Ut asperiores reprehenderit odit magnam nihil. Et fugiat dolores est aut ipsum. Doloribus laborum qui repudiandae autem ea molestiae quisquam. Aut amet earum velit voluptas omnis quo est.', 622, 7, 5, 3, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(13, 'Ernestine Stamm', 'Fugit tenetur architecto dolorem quo reiciendis aliquam cumque. Recusandae molestiae quidem id eveniet deserunt ex nobis. Rerum et blanditiis odio accusantium. Consequuntur omnis est quo ullam qui illum.', 540, 3, 14, 3, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(14, 'Mrs. Opal Mraz DDS', 'Ut explicabo expedita qui autem maiores atque. Dolor illum amet necessitatibus sit sit voluptatum. Doloribus amet sed qui et qui incidunt libero. Aspernatur et omnis id ut ullam iste mollitia.', 606, 4, 18, 1, '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(15, 'Diana Willms', 'Expedita occaecati suscipit aut non perspiciatis alias. Corporis optio vitae voluptas. Nam est quibusdam dolores dolores ex provident. Illum ea dolores maxime cupiditate eaque nesciunt adipisci ducimus.', 286, 4, 14, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(16, 'Van Fadel', 'Magnam qui quo praesentium sed doloremque tempora. Quia ex dolorem ea asperiores. Voluptatibus vitae sint odit nihil itaque facere sapiente et.', 688, 0, 18, 3, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(17, 'Ms. Addison Nitzsche', 'Excepturi error molestiae est alias magnam nihil. Et unde eum esse. Minima distinctio eaque ducimus expedita tempore distinctio harum totam. Nisi esse dicta quasi facilis.', 576, 2, 21, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(18, 'Newton Hayes', 'Ut porro aut adipisci consequatur voluptatem minus sint. Atque perferendis aut molestiae neque.', 497, 2, 28, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(19, 'Shana Kilback', 'Sit qui neque incidunt error est porro consequuntur officia. Dicta sapiente sit quis et est. Quibusdam quibusdam et ipsum explicabo delectus.', 469, 4, 24, 2, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(20, 'Arvilla Mayer', 'Minima maiores laboriosam est soluta voluptas fugiat est. Vero voluptas autem qui nostrum. Maiores molestiae accusantium assumenda consequatur sed et consequatur. Voluptatibus laborum quia facilis deleniti ratione libero.', 523, 4, 25, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(21, 'Dr. Tiana Nolan DVM', 'Culpa repellendus qui accusamus ducimus repellat placeat. Dignissimos perferendis quia voluptate vel qui est.', 270, 5, 5, 2, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(22, 'Jerel Ledner', 'Facilis saepe qui rerum delectus corporis exercitationem. Voluptas quam quae aperiam natus ut et. Dolor ex excepturi error voluptatem.', 575, 5, 2, 5, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(23, 'Domenica Farrell', 'Deserunt dolor sit sit expedita molestias fugit id. Ut nihil quisquam dolorem nobis nobis accusamus. Qui animi ipsa unde nobis nam veritatis.', 904, 5, 27, 5, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(24, 'Garrison Waters', 'Laborum iusto sed nostrum culpa tempora. Consequatur ratione consequuntur ut eos accusamus pariatur sapiente delectus. Quo illo quia et. Fugit autem possimus et dolorum facilis cumque voluptatum.', 858, 0, 9, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(25, 'Milton Kerluke IV', 'Et et aut quas expedita. Repellat aut quo quod reiciendis id vero. Tempora voluptas dolor occaecati in rerum.', 841, 4, 20, 2, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(26, 'Sedrick Waters', 'Eius voluptate in dolores a provident impedit minus. Nemo quas qui asperiores itaque. Iusto eligendi praesentium ipsa suscipit aut. Et itaque aliquam eos nobis rerum amet eius eius.', 491, 9, 14, 3, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(27, 'Norris Cummings', 'Sit praesentium quidem modi mollitia. Doloribus eveniet sunt voluptas sit doloribus voluptatem. Dolore impedit dolores et dolores unde et enim. A quibusdam ut explicabo voluptas.', 233, 0, 3, 5, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(28, 'Ms. Lisa Strosin V', 'Asperiores consequatur in fuga consequuntur officia quia. Rerum soluta delectus aut rerum et voluptate. Temporibus enim aspernatur maiores et. Explicabo nam ipsa in quos dolores.', 562, 5, 18, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(29, 'Thalia Stoltenberg PhD', 'Velit neque aut laudantium quae. Doloribus ut ratione voluptas libero ad. Dolorem ut odio aliquid quo ratione. Eum nisi quidem sint.', 872, 1, 29, 4, '2019-05-17 06:30:18', '2019-05-17 06:30:18'),
(30, 'Archibald Yundt', 'Consequatur voluptatem earum natus nihil. Totam vel aperiam voluptates esse reprehenderit. Nemo tempore placeat laboriosam aut ut quia.', 457, 0, 8, 1, '2019-05-17 06:30:19', '2019-05-17 06:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `star` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `customer`, `review`, `star`, `created_at`, `updated_at`) VALUES
(1, 23, 'Antone Rosenbaum', 'Optio sunt odit quam velit vel voluptatem veniam. Fugit nesciunt placeat quis non harum qui error. Aperiam vel commodi numquam laudantium qui quia libero.', 4, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(2, 27, 'Hollis Lubowitz', 'Sequi qui sit non sit. Neque corporis quibusdam rerum itaque et nulla molestiae. Omnis rerum vel sit et sit aut ut.', 5, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(3, 6, 'Dr. Yoshiko Hartmann III', 'Sequi in qui et natus voluptas repudiandae velit. Consequuntur consequatur rerum magnam deleniti. Voluptates consequatur et sunt quaerat corporis fuga voluptatem. Laboriosam eligendi esse et vel non tempora praesentium.', 0, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(4, 17, 'Alfreda Koelpin', 'Sint eligendi fugiat enim eum quo. Aliquid aut adipisci dolorem doloremque. Ut inventore quas sed eaque veritatis amet velit. Soluta vero porro voluptas cum deleniti accusamus.', 0, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(5, 4, 'Werner Lehner', 'Ex facere hic et amet voluptatem voluptatibus maiores. Voluptas sit delectus totam quo sed adipisci suscipit. Quia tempora ut corporis omnis eligendi qui. Voluptatum repellendus voluptatem sunt sit et rerum.', 2, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(6, 1, 'Miss Shemar Lockman', 'Nobis iusto et sint illo nam ipsa pariatur. Reprehenderit modi dolorem earum sed ab. Repellat quo qui enim quia maxime. Eos temporibus minima id et expedita est quia qui.', 5, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(7, 30, 'Florine Toy', 'Et corrupti facilis doloribus quis. A aut blanditiis cumque suscipit. Nesciunt dolorem accusantium dolor asperiores.', 3, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(8, 29, 'Erica Torphy', 'Dolorem temporibus molestiae esse earum doloribus vel. Sit aut laboriosam et non et. Consequuntur est aperiam id nulla aliquam.', 4, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(9, 23, 'Jewel Zemlak IV', 'Earum tenetur tempore illum. Mollitia et molestiae esse est nihil quam. Sunt possimus molestiae saepe id assumenda laboriosam minus minima.', 5, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(10, 9, 'Dorcas Ruecker PhD', 'Nisi eos molestias distinctio voluptatum. Repudiandae sequi dolor dicta ullam. Sint cum molestias id pariatur sapiente.', 1, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(11, 26, 'Chad Jaskolski', 'Ipsa maxime sint non assumenda asperiores. Aut sed ipsum praesentium esse dicta maiores. Vel qui amet consectetur natus. Nihil adipisci delectus sed non corporis.', 5, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(12, 30, 'Lance Eichmann', 'Est dolorem tenetur incidunt dolor. Laboriosam consectetur amet illum sequi voluptatem nostrum beatae ipsa. Mollitia repudiandae et excepturi quaerat unde sit.', 0, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(13, 5, 'Lindsay O\'Kon', 'Aut aut delectus atque voluptates sequi incidunt id. Debitis sed quod laudantium sit dolore cum et eum. Rem aut similique debitis fuga nisi explicabo recusandae. Blanditiis aperiam reiciendis quis dolorem ratione ut et voluptatibus. Porro iure ipsum perferendis ipsam ea consequatur voluptate.', 1, '2019-05-17 06:30:19', '2019-05-17 06:30:19'),
(14, 20, 'Gino Weissnat', 'Adipisci impedit necessitatibus corrupti qui aut. Nihil sit amet nostrum fugit. Unde temporibus ullam accusamus eligendi temporibus. Vitae deleniti numquam accusantium necessitatibus. Qui non quae voluptatem corporis laboriosam voluptas fuga.', 1, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(15, 18, 'Stuart Treutel', 'Et voluptas blanditiis quae magni vitae. Expedita ipsa ex omnis et porro. Aut voluptatum molestiae at libero dignissimos ea. Impedit est quia dolores et eos voluptas quia blanditiis.', 2, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(16, 20, 'Carlie Greenholt I', 'Facilis neque ut exercitationem repellendus consequatur nam. Quia provident laboriosam et et. Dolor reiciendis maiores ratione fugit minima sequi.', 3, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(17, 3, 'Prof. Christopher Dicki DVM', 'Est fuga et ad. Rerum sit temporibus incidunt. Unde est consectetur porro debitis molestiae. Velit commodi autem nisi quis molestiae. Dolorum autem corporis adipisci eligendi consequatur illo sed facere.', 2, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(18, 14, 'Tanya Vandervort II', 'Quod vitae dolorem vitae quia iusto iusto est. Architecto fugiat quisquam ea quia tempora maxime.', 0, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(19, 21, 'Mr. Jennings Pfannerstill', 'Cum accusamus delectus quia voluptatem temporibus aut. Mollitia sit ducimus sequi. Et suscipit ut dolorem eligendi modi minus. Voluptatem suscipit nihil ea esse.', 3, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(20, 29, 'Ahmad Lowe', 'Non dignissimos adipisci voluptatem enim quod maxime fugiat perferendis. Eos a doloremque doloribus est fugiat officiis consequatur quo. Voluptatem aut nostrum voluptas omnis. Sit sit facilis sed quod sit.', 4, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(21, 7, 'Shaina Conroy', 'Perferendis adipisci libero impedit pariatur asperiores delectus et eligendi. Minus vero delectus numquam temporibus sunt. Et voluptas distinctio vel. Possimus quia aut minus quod enim iusto tempora.', 4, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(22, 28, 'Dr. Murphy Herman III', 'Possimus voluptatem tenetur molestiae sunt ipsa vel eos. Nostrum pariatur iure voluptatem repellendus eius asperiores. Vitae odit dignissimos ratione ut itaque blanditiis nihil. Et excepturi aperiam placeat sunt.', 0, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(23, 23, 'Kristy Erdman I', 'Dicta laudantium rerum voluptatem quo incidunt magni. Minus est ea illum delectus tempora maxime officia. Et sunt et blanditiis. Quae aut culpa inventore doloremque quia dolor.', 4, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(24, 6, 'Dr. Geo Langosh', 'Magnam nihil similique in sapiente asperiores. Quo eos eos dolor facere dolores non. Quae eaque harum quae aut non aut earum. Et in doloribus asperiores facilis voluptatem dolorum similique.', 1, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(25, 8, 'Beau Beahan', 'Nam nulla quia rerum dolorem. Molestias sint asperiores aliquid tempore dolor vel ullam. Praesentium aut dolore ut nobis hic.', 5, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(26, 7, 'Alexane Windler', 'Ipsum ut velit alias. Vel provident saepe fugiat vel laudantium minus incidunt. Ut iste magnam ea et ratione numquam. Praesentium quae est libero et.', 2, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(27, 16, 'Janiya Boyle', 'Rerum et nihil molestiae culpa impedit. Quia voluptate deleniti non. Atque facilis alias qui consequatur quis. Dolorem aspernatur deleniti nobis fugit possimus ea voluptatum.', 0, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(28, 17, 'Prof. Mertie Schuppe III', 'Et exercitationem dolor blanditiis et voluptatem officiis ratione et. Nisi laboriosam qui qui beatae quas temporibus. Vero quos mollitia eum commodi.', 1, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(29, 8, 'Miss Madge Pacocha V', 'Aut amet fugiat consequuntur quos. Autem voluptatum rerum ipsam ut. Architecto quis error expedita ut earum.', 1, '2019-05-17 06:30:20', '2019-05-17 06:30:20'),
(30, 2, 'Margarette Osinski', 'Quidem animi quasi pariatur maiores tempora quo temporibus est. Tempora voluptas neque dolore libero. Omnis in atque sed veniam eum corporis. Quia sequi assumenda libero sit cupiditate.', 4, '2019-05-17 06:30:20', '2019-05-17 06:30:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Golda Hahn', 'ulehner@example.com', '2019-05-17 06:30:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9Q0NzaWLePZyaMVSThgnDmBTTZI8qN0ZMZYihAOWVj0PoFNR3j8wAmx5TMPR', '2019-05-17 06:30:16', '2019-05-17 06:30:16'),
(2, 'Marilie Herman', 'runolfsson.shanna@example.com', '2019-05-17 06:30:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NZ454RnMrw', '2019-05-17 06:30:16', '2019-05-17 06:30:16'),
(3, 'Ms. Keara Blanda MD', 'yundt.noelia@example.net', '2019-05-17 06:30:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IRdugRaIsy', '2019-05-17 06:30:16', '2019-05-17 06:30:16'),
(4, 'Armando Howell Jr.', 'arely.wiegand@example.net', '2019-05-17 06:30:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tBb2hKYYEN', '2019-05-17 06:30:16', '2019-05-17 06:30:16'),
(5, 'Mr. Bartholome McKenzie IV', 'grimes.cheyanne@example.org', '2019-05-17 06:30:16', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '43cyhCqavM', '2019-05-17 06:30:17', '2019-05-17 06:30:17'),
(7, 'Rupam', 'rupam@cybertrontechnologies.com', NULL, '$2y$10$eIFpMUmNIpfFPRAlm8yJl.XhllnXUNwxnUe5DD2MymbIoKLxbk5Qa', NULL, '2019-05-17 06:48:27', '2019-05-17 06:48:27');

--
-- Indexes for dumped tables
--

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
