-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2019 at 01:17 PM
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
(3, '2019_05_16_071515_create_products_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `stock`, `discount`, `created_at`, `updated_at`) VALUES
(1, 'Agnes Friesen', 'Pariatur nihil ab eius cupiditate qui dolores. Ut iusto magni sint temporibus sunt eligendi. Facilis laboriosam temporibus dolores suscipit nam. Quia enim et adipisci molestias aut doloribus voluptas nihil.', 894, 0, 28, '2019-05-16 03:11:55', '2019-05-16 03:11:55'),
(2, 'Eloise McKenzie', 'Minus qui excepturi voluptas quia ad quae. Nihil dolorum fugiat explicabo. In iure sed neque quia deserunt sed. Eum ut ab reprehenderit possimus at tempora accusantium. Esse similique fugiat magni consequatur deserunt ipsa magnam.', 567, 3, 3, '2019-05-16 03:11:55', '2019-05-16 03:11:55'),
(3, 'Chelsie Moen', 'In voluptatem et ut vel aut. Voluptatem quibusdam totam rerum dignissimos qui cupiditate vel. Et adipisci minus porro. Fuga nihil quo repellat deleniti suscipit aut.', 483, 8, 27, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(4, 'Jordyn Hegmann IV', 'Odio in esse reiciendis laudantium unde repellat id. Velit doloribus et sit aliquid ea. Corrupti occaecati doloribus rerum voluptas omnis ut. Perferendis occaecati velit amet et.', 647, 5, 21, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(5, 'Clarabelle Schimmel', 'Quo inventore et voluptatem. Doloribus provident animi et vel nostrum inventore debitis. Quod ut reiciendis temporibus consequatur officiis sit.', 303, 4, 5, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(6, 'Clotilde Kshlerin Jr.', 'Corrupti incidunt est perspiciatis quae eaque. Rerum numquam itaque fugit incidunt. Ullam blanditiis nesciunt molestiae qui quo voluptas vitae ipsam. Quis temporibus dolores dolor corporis asperiores.', 399, 0, 28, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(7, 'Ayla Fritsch', 'Minus a laudantium voluptatem fugit. Dicta aspernatur aut voluptatum voluptates. Id incidunt culpa suscipit dolorem ipsum eos. Id voluptas eius maiores unde optio.', 256, 6, 19, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(8, 'Dr. Gage Cummerata MD', 'Provident fugit delectus ut temporibus labore sit. Repudiandae nemo sit rerum voluptatem sit quia. Commodi nihil sint quidem laborum aliquam.', 876, 9, 19, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(9, 'Dr. Gilda Stokes', 'Et nulla sit nesciunt eaque nemo. Architecto nihil fugit est et architecto. Autem tempore ab dicta delectus odio dolores pariatur. Corrupti aliquam amet sed et.', 305, 4, 15, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(10, 'Lempi Hand', 'Qui provident impedit commodi optio et omnis illo. Expedita velit eveniet labore enim voluptatem ex eum.', 187, 9, 5, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(11, 'Mr. Sonny Nikolaus PhD', 'Suscipit veniam impedit ut a. Quae eaque minima iure adipisci quia. Quaerat consequatur molestiae corrupti sint quia ab dolor.', 944, 7, 2, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(12, 'Prof. Anahi Fahey', 'Similique quia porro voluptatum odio aut exercitationem. Quia inventore iusto est quia quos quisquam. Veniam ducimus tempore deserunt excepturi omnis quisquam aut.', 974, 2, 24, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(13, 'Sigrid Ebert IV', 'Assumenda saepe dolorem dolores veritatis. Consequatur neque quas voluptates possimus et error laudantium assumenda. Eaque ea ea optio aut maxime velit quidem.', 340, 1, 4, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(14, 'Marquise Rippin', 'Voluptas eum et inventore sunt. Voluptatem rerum iste ipsum ut. Voluptates assumenda et ut. Error architecto assumenda non doloremque aliquam nobis. Ut ut qui quod fuga cum saepe dolorum.', 256, 0, 17, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(15, 'Werner Stamm', 'Aut dolor facilis harum expedita eligendi occaecati laudantium. Nesciunt qui minus quasi praesentium doloremque rerum in. Quia quo nemo dolores repellendus recusandae.', 254, 1, 19, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(16, 'Dr. Mandy Mosciski', 'Molestiae libero fugit inventore quibusdam explicabo quia molestiae. Nemo quia et aut tempora iste nostrum. Voluptas ea quia iste recusandae autem est repellendus velit.', 952, 9, 2, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(17, 'Paula Gislason', 'Cumque voluptates fugit voluptate fugit rerum quia voluptas. Aut fuga consectetur fugiat ullam corporis. Illum a corrupti veniam itaque et rerum. Et magni repellat sint dolores doloribus facilis nihil. Iste quo consectetur omnis delectus vero natus.', 692, 0, 15, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(18, 'Heloise Hudson', 'Qui deserunt veniam tempore enim est aspernatur eos. Itaque sed voluptatum quod perferendis repellat. Non qui soluta at qui. Esse nemo veniam eligendi nisi natus natus.', 367, 8, 27, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(19, 'Ted Hoeger', 'Maxime explicabo aperiam dignissimos quae est. Dicta quo natus sint consequuntur. Incidunt omnis earum maxime dicta velit. Ut tempore non possimus natus voluptatum tempore.', 276, 6, 4, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(20, 'Elsa Koelpin', 'Dignissimos tempore aut rerum ut quos et. Rerum dolorem nemo id. Error asperiores quaerat at accusamus unde ut aut sint. Provident perspiciatis quasi dolorum id.', 593, 4, 12, '2019-05-16 03:11:56', '2019-05-16 03:11:56'),
(21, 'Zoie Hermiston II', 'Aut blanditiis quia consectetur numquam ut voluptates distinctio. Voluptas voluptas sunt cupiditate dicta rerum minima. Nobis at tenetur corporis quo odio.', 533, 7, 30, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(22, 'Jessika O\'Hara', 'Dicta aut vero quisquam eos voluptatibus at. Delectus aliquam distinctio animi minus deserunt quae. Consequatur iure error in voluptatibus. Quisquam minus sint odio vero molestiae.', 346, 5, 21, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(23, 'Leif Hudson', 'Sed ut est veritatis. Qui voluptas velit animi sint enim tenetur. Quae odio expedita iure libero velit quo dolorum.', 581, 5, 22, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(24, 'Mathias Will PhD', 'Dolorum quia quisquam et voluptatem dolorem. Facere voluptatem omnis vel totam ex quia repudiandae et. Velit qui quo ipsam qui cupiditate magnam.', 345, 2, 10, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(25, 'Myrna Gislason', 'Consequatur aliquam illum dolorem doloribus. Voluptates in et ut praesentium doloremque nostrum. Sequi quia deserunt corrupti odit quaerat possimus a natus.', 647, 6, 26, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(26, 'Prof. Rigoberto Kassulke Sr.', 'Maiores unde fugit ullam ut eos quisquam quasi id. Consequatur non architecto autem quas. Est rem ea aut blanditiis.', 809, 8, 4, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(27, 'Lonny Robel', 'Iusto omnis doloribus alias sequi ut sapiente nemo. Ut vel sed recusandae hic quia deleniti molestiae temporibus. Doloremque eius non itaque provident et et qui.', 370, 7, 9, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(28, 'Mr. Elmer Denesik', 'Nihil voluptates suscipit omnis labore. Illo consequatur rerum sapiente rem.', 762, 5, 2, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(29, 'Coleman Flatley DVM', 'Aut ad sapiente libero consectetur natus. Eius ab aut et fugiat rem.', 703, 0, 16, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(30, 'Alanna Pacocha', 'Doloremque sed esse eum perspiciatis iusto autem itaque. Facilis numquam necessitatibus odit qui reiciendis deserunt rem. Ut sit necessitatibus rerum non. Velit fuga sed est saepe quo.', 771, 8, 4, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(31, 'Dorian Hand', 'Dicta impedit et et quia. Accusamus dolores iure quo incidunt. Ea dolor et tempore sed tempora omnis esse.', 716, 4, 17, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(32, 'Mrs. Sarai Kerluke', 'Est repellat rerum ea doloremque. Pariatur quae porro aut sint. Ea aut odit aut commodi.', 455, 1, 21, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(33, 'Beaulah Hills', 'Corporis blanditiis nemo inventore repudiandae. Aliquid voluptates qui ut autem. Accusantium dolor autem et labore.', 909, 7, 4, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(34, 'Raina West', 'Dolorum exercitationem occaecati sed minima fugit. Aut tenetur qui quidem in. Praesentium adipisci blanditiis est. Possimus hic provident ipsam modi voluptates sequi.', 280, 4, 21, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(35, 'Mr. Jedidiah Schroeder PhD', 'Non sit commodi sit dolor velit sed voluptatem. Cupiditate iure natus non voluptas blanditiis rerum sit. Quo quia perspiciatis eaque aperiam et quia sit officia. Cumque cum eum accusamus iusto.', 905, 2, 29, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(36, 'Mr. Camden Murray I', 'Dolores placeat quo aliquam rem. Adipisci adipisci voluptatem at qui. Sit dicta nesciunt ea in. Rerum magni natus non delectus neque.', 330, 2, 14, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(37, 'Ms. Amaya Auer I', 'Voluptas dicta explicabo delectus est alias. Quod in enim eos. Labore qui culpa pariatur sunt ut. Voluptas quidem occaecati omnis voluptates.', 476, 5, 22, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(38, 'Aletha Yundt', 'Ipsa quia quia dolorem maxime. Et quasi quo perferendis optio. Voluptatem eum illum expedita omnis. Sapiente magnam architecto necessitatibus voluptatem.', 196, 9, 17, '2019-05-16 03:11:57', '2019-05-16 03:11:57'),
(39, 'Dr. Evelyn Dare Sr.', 'Consequatur necessitatibus consequuntur excepturi voluptates quaerat alias expedita. Modi repellat ut harum reiciendis eaque in tempora. Incidunt accusamus voluptatem esse porro totam eos. Laudantium ratione rerum repudiandae voluptate eius.', 563, 4, 22, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(40, 'Jerrell McGlynn', 'Libero quisquam cupiditate aspernatur qui ea. Dolorem corrupti sunt laborum cupiditate eos quod iusto. Esse expedita et eum velit.', 342, 5, 8, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(41, 'Annabel Leuschke MD', 'Aut laborum blanditiis exercitationem voluptatem. Quis soluta et et et. In facere sit sed sit aperiam at.', 476, 7, 21, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(42, 'Mr. Tom Padberg', 'Dolor enim corporis accusantium maiores impedit facere quaerat. Ullam voluptate provident sapiente minus dolor rerum sit. Sapiente asperiores fuga cumque. Facere ab non ducimus omnis.', 519, 8, 15, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(43, 'Dr. Dariana Rodriguez', 'Porro laudantium quisquam qui dolorem. Et autem adipisci quis id. Optio omnis voluptatem necessitatibus eius dicta.', 348, 0, 25, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(44, 'Dr. Percival Becker IV', 'Voluptatem quaerat ea distinctio rerum earum distinctio. Sint minima et molestias. In impedit consequatur odio maxime. Qui porro qui dolorem.', 673, 4, 16, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(45, 'Ahmed West', 'Qui perferendis rem incidunt distinctio dolore quis dignissimos. Quaerat exercitationem consequatur aut ducimus. Animi ut laudantium excepturi sit et. Magni deserunt amet quia voluptatum esse nesciunt distinctio.', 560, 8, 5, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(46, 'Laurel Murazik', 'Eos quam quo sunt amet et consequatur. Cumque adipisci quibusdam placeat. Dolor eum pariatur accusamus qui reprehenderit recusandae voluptate.', 459, 0, 10, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(47, 'Gladys Ruecker', 'Minima omnis aperiam quae ipsam qui id. Dolor ipsum nulla perferendis rem ad eos. Quas beatae necessitatibus praesentium cumque quasi.', 919, 5, 2, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(48, 'Deangelo Harber', 'Veniam quod suscipit ipsam laudantium doloremque repellat minus. Eius velit quae aperiam illo aut voluptatem. Doloremque impedit qui sit aliquid impedit perferendis rerum. Eos id deserunt illo numquam fugiat dolorem.', 958, 0, 7, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(49, 'Ceasar Russel PhD', 'Itaque tenetur est repellendus tempora est labore. Veritatis veritatis ipsa et veniam possimus illo ratione. Molestiae et veritatis aut culpa atque sit tenetur.', 581, 3, 24, '2019-05-16 03:11:58', '2019-05-16 03:11:58'),
(50, 'Miss Brooke O\'Hara', 'Quisquam aut enim est est quis. Eos molestiae dignissimos dolorem nostrum.', 291, 9, 17, '2019-05-16 03:11:58', '2019-05-16 03:11:58');

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
(1, 4, 'Lawrence Mayert', 'Voluptas sint numquam totam nostrum molestiae. Quas cupiditate porro et officiis. Nulla reprehenderit accusamus aut unde vero mollitia. Consequuntur distinctio in neque sunt quia omnis tenetur temporibus.', 0, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(2, 44, 'Mrs. Jailyn Rath', 'Occaecati aliquam dolore quia suscipit eaque eius autem. Mollitia aut et rerum asperiores officiis est. Unde a mollitia ab cumque facilis. Consequuntur amet omnis voluptatibus minus expedita velit ipsam.', 4, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(3, 29, 'Prof. Lenora Terry', 'Qui asperiores rem quisquam illum maiores repellat odio. Qui sed minima ipsam. Nam eos ut alias modi sed aperiam reiciendis ut.', 3, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(4, 7, 'Prof. Lexie Schiller', 'Ipsum nihil fugiat ut officiis. Sit omnis corporis et quo. Asperiores perspiciatis officiis magnam.', 4, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(5, 37, 'Alphonso Doyle', 'Et cumque qui quam aperiam quis laboriosam rerum odio. Optio voluptatem et non est. Sed esse et quo ut qui.', 4, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(6, 4, 'Mrs. Destini Berge', 'Quis quaerat eius voluptatem est debitis est. Qui pariatur cupiditate tempore fugit quisquam quisquam repudiandae. Beatae hic velit vero reiciendis non ab ratione. Dolor fugit sapiente ea dignissimos animi quaerat.', 1, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(7, 27, 'Christop Larson', 'Nesciunt odio laborum fugit aut. Quae iure temporibus vero veniam. Corrupti ab est ab. Aut ex ut sunt et ipsum.', 0, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(8, 21, 'Ms. Sarah Schamberger PhD', 'Sit consequatur quod totam reprehenderit. Libero sint rerum aut aliquid distinctio sint doloribus modi. Aut vitae repudiandae dolorum atque occaecati. Sequi illo sit et assumenda laborum odit quam.', 1, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(9, 18, 'Jerel Maggio', 'Neque veritatis et qui qui sunt. Quia quibusdam ea praesentium est minus reprehenderit. Voluptatem est quia molestiae quia culpa accusamus. Rerum autem dignissimos nihil inventore voluptatem. Voluptate officiis ipsa est et cumque consectetur.', 3, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(10, 13, 'Marcos Block', 'Totam eveniet occaecati et perferendis consequuntur consequuntur nisi. Velit aut quo fugiat delectus magnam qui. Quis ullam dolorum omnis vel. Cum nulla tempora quas reiciendis laudantium ratione et autem. Quae repellat suscipit magni sunt modi est quia nam.', 2, '2019-05-16 03:14:41', '2019-05-16 03:14:41'),
(11, 26, 'Willie Dare', 'Fugit ipsum adipisci aliquam est non amet vel similique. Deserunt ut commodi enim. Optio consequatur accusantium aut iure.', 0, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(12, 28, 'Cordia Bayer', 'Consequuntur commodi rem dignissimos officiis quia qui. Sapiente aut repellendus ut ut quia sed. Quisquam odit quia ratione et iusto. Ut temporibus pariatur fuga quo.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(13, 11, 'Prof. Duncan Klein', 'Quia et animi autem sed quo. Dolorem et vitae qui voluptatem.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(14, 1, 'Javon Hintz', 'Consequatur dolor enim odio sit eligendi est. Consectetur voluptatem aliquam facere atque. Quae eius repellat quos vero. Id rerum voluptatem eaque sequi vel totam. Pariatur quia esse id itaque voluptatem.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(15, 8, 'Stephanie Glover', 'Voluptatibus officia quas sed. Nemo dolorem consequuntur non dolorem.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(16, 48, 'Deja Dickens PhD', 'Qui ut dolor tempore porro. Ratione voluptates molestiae vero dolorem in. Dolorem aut sequi ab.', 0, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(17, 37, 'Vella Mosciski', 'Nisi minima voluptatibus natus quia. Atque mollitia molestias maiores incidunt ut similique. Consequuntur ut qui et.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(18, 33, 'Dr. Tate Reichert III', 'Et voluptatem aut libero ullam. Eum ut expedita dolorum veritatis aut voluptates deserunt. Ad iste atque fugit laborum dolorem. Animi impedit aut tempora quod voluptatem.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(19, 38, 'Antonette Hodkiewicz', 'Et consequatur est autem dicta. Aut vel accusamus quis eum velit. Nihil tempore sequi ut eum.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(20, 48, 'Daija Hagenes', 'Et et voluptas magnam ipsam veritatis neque incidunt amet. Pariatur unde porro ea. Possimus quis suscipit possimus ut.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(21, 9, 'Jonas Emard Jr.', 'Minima sit reprehenderit suscipit aut. Quia iusto minima labore molestias officiis totam occaecati ut. Facere natus sunt delectus.', 5, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(22, 36, 'Mr. Oran Blick PhD', 'Aut reprehenderit vero quia dolorum amet asperiores neque. Nihil veniam minima quaerat nostrum omnis. Libero rerum ducimus temporibus quia.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(23, 1, 'Prof. Dahlia Rohan', 'Modi facere harum qui occaecati ut nihil. Libero aut illo reiciendis corporis.', 4, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(24, 35, 'Tony Williamson', 'Rerum qui et tenetur sequi aperiam explicabo. Rerum nobis sed ut voluptas hic et atque. Aliquid suscipit et sunt magnam nulla dolor. Quis excepturi ut corporis nobis eligendi ipsam est.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(25, 14, 'Meda Bosco I', 'Animi sit ut quo quam voluptatem illum et. Non dolore provident officiis. Nemo nobis inventore hic nihil quibusdam et minus sit. Ipsa ea qui totam. Non illo unde minima adipisci debitis nulla.', 3, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(26, 33, 'Wilma Johnston', 'Dolores velit distinctio soluta nam dolores ut fugiat. Labore commodi natus et illo omnis. Modi quos vel hic sed molestias mollitia. Cum quia qui odit.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(27, 20, 'Leland Homenick III', 'Eum et aut possimus. Nihil itaque dolores corporis corporis modi. Beatae consequatur officia ab et dolorem. Ipsa velit quis quia natus corporis nobis voluptatem. Illum sed id ut odit suscipit.', 2, '2019-05-16 03:14:42', '2019-05-16 03:14:42'),
(28, 28, 'Mac Bruen', 'Voluptas modi est cumque consequatur. Voluptatem dolor beatae asperiores voluptate ut qui possimus. In harum ullam ratione nam. Voluptate aut minima eius voluptatem dolorum labore vitae.', 0, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(29, 46, 'Mittie Morissette', 'Pariatur fugiat suscipit aut. Dolorem veniam eveniet eveniet. Qui voluptatem officia quod nihil. Quidem voluptas in sunt possimus.', 3, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(30, 27, 'Evangeline Mertz V', 'Et autem culpa repellendus sapiente aliquam voluptas explicabo. Provident optio et occaecati. Possimus vero id quasi aut beatae aut odit. Corrupti nobis quia recusandae et.', 2, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(31, 24, 'Dr. Cleora Collins', 'Nulla eveniet cum magni et nulla. In eos quis fuga. Amet et fugiat vero vel necessitatibus sed et error. Consequatur omnis ut animi dignissimos voluptatem necessitatibus.', 3, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(32, 48, 'Mrs. Ally Balistreri III', 'Dolores totam odit nemo deleniti facere. Occaecati dolor asperiores quia autem exercitationem. Nesciunt maxime optio ducimus veniam sint.', 1, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(33, 7, 'Nakia Rath', 'Non debitis quidem aperiam. Consequuntur aliquid illum quae qui sed. Consequatur unde voluptatem voluptatum sed quam exercitationem. Dolorem odit provident aliquid ratione doloremque voluptatem.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(34, 17, 'Adelia Monahan', 'Temporibus fugiat eligendi voluptatem voluptas ex vero qui. Numquam ratione maxime beatae magni non eos fugit qui. Exercitationem nostrum illo debitis delectus molestiae.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(35, 12, 'Prof. Vella Koss', 'Quia repudiandae sapiente corporis et sunt quibusdam. Voluptates dolorem et et sed doloribus.', 1, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(36, 28, 'Prof. Kip Waelchi', 'Quis ut hic harum eius. Fugiat tempora dolor deleniti necessitatibus et debitis. Rerum eos non dolorem enim dignissimos architecto consequatur omnis.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(37, 14, 'Virgie Runte III', 'Tenetur sunt aspernatur esse soluta. Veniam odit recusandae et.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(38, 4, 'Prof. Orrin Kub PhD', 'Velit quis qui quia ea consequatur. Ipsam beatae quo illum sunt delectus numquam iure. Animi dolorem nobis similique dolore numquam error repellendus quia.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(39, 23, 'Zechariah Williamson DDS', 'Et et omnis et. Quae nemo harum sit consequatur et dolorem. Aut quia nam ex voluptas culpa. Officiis eum amet occaecati incidunt iusto magnam qui.', 4, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(40, 15, 'Prof. Sedrick Mitchell', 'Iste repellendus odio quasi sed qui consequatur esse. Voluptatem neque ut veritatis cumque enim in doloribus. Nisi iusto commodi amet quia.', 2, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(41, 42, 'Rollin Wehner', 'Quod quae architecto dolor quidem. Reprehenderit fugiat veniam eum quia et. Quia officiis repellendus incidunt. Sit ipsum molestiae saepe soluta laudantium repellendus.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(42, 3, 'Mr. Cory Jones', 'Exercitationem officia velit id nulla quaerat. Sed atque non est dolorum illum. Et molestiae at qui ut.', 3, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(43, 23, 'Darian Schamberger', 'Distinctio qui sed est expedita. Beatae ut omnis et sapiente consectetur vitae qui laboriosam. Quia et facere saepe sapiente.', 0, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(44, 46, 'Miss Darlene Bode DVM', 'Optio quod praesentium distinctio est odit. Sit sunt pariatur excepturi eos. Dicta est consequatur impedit laboriosam reiciendis error. Vel ut in aut blanditiis minima mollitia rerum. Consequatur tempore aut voluptatibus non itaque deleniti.', 5, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(45, 32, 'Dr. Rupert Feest Sr.', 'Nesciunt ad perspiciatis velit blanditiis id. Accusantium numquam delectus eveniet laboriosam consectetur. Dolorem quasi quasi non excepturi exercitationem labore. Blanditiis deleniti eveniet vitae voluptatibus est ipsum.', 1, '2019-05-16 03:14:43', '2019-05-16 03:14:43'),
(46, 39, 'Prof. Griffin Nienow II', 'Aut accusamus asperiores recusandae adipisci excepturi omnis. Libero reprehenderit adipisci atque exercitationem numquam sunt. Consequatur inventore eaque quibusdam eveniet tempore molestiae et. Qui veniam rem nihil aut maxime sunt quidem.', 3, '2019-05-16 03:14:44', '2019-05-16 03:14:44'),
(47, 24, 'Dena Gutmann', 'Voluptatem maiores inventore voluptatibus quas suscipit. Debitis aliquam harum quo non eligendi. Expedita voluptatibus sint deleniti repudiandae expedita. Odit expedita molestias quo sit. Voluptatibus fuga perspiciatis autem et doloribus minus.', 5, '2019-05-16 03:14:44', '2019-05-16 03:14:44'),
(48, 9, 'Sage Barrows', 'Mollitia voluptatem omnis qui quo illum porro quasi. Adipisci possimus autem est necessitatibus et corporis commodi. Doloremque eum expedita nihil. Ut quis voluptas explicabo et ut odio.', 4, '2019-05-16 03:14:44', '2019-05-16 03:14:44'),
(49, 29, 'Elise Franecki', 'Omnis veniam quidem a perferendis saepe odit quibusdam. Aut enim enim in blanditiis totam occaecati. Accusantium laboriosam iste saepe eum voluptatibus. Deleniti facilis non repellat repellat possimus ex. Culpa consectetur et ex debitis.', 3, '2019-05-16 03:14:44', '2019-05-16 03:14:44'),
(50, 31, 'Laurianne Bechtelar', 'Quia maxime voluptatem soluta distinctio a corrupti. Quisquam omnis ad nisi sed eos iste illum. Reiciendis est et nulla et consectetur.', 2, '2019-05-16 03:14:44', '2019-05-16 03:14:44');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
