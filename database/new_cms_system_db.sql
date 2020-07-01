-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 08:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_cms_system_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(108, '2014_10_12_000000_create_users_table', 1),
(109, '2014_10_12_100000_create_password_resets_table', 1),
(110, '2019_08_19_000000_create_failed_jobs_table', 1),
(111, '2020_06_23_085011_create_posts_table', 1),
(112, '2020_06_30_082833_create_permissions_table', 1),
(113, '2020_06_30_082916_create_roles_table', 1),
(114, '2020_06_30_083106_create_users_permission_table', 1),
(115, '2020_06_30_083158_create_users_roles_table', 1),
(116, '2020_06_30_083337_create_roles_permissions_table', 1);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'View Dashboard', 'view-dashboard', '2020-07-01 16:13:56', '2020-07-01 16:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-01 18:21:08', '2020-07-01 18:21:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(21, 1, '2020-07-01 18:21:20', '2020-07-01 18:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `post_image`, `body`, `created_at`, `updated_at`) VALUES
(2, 2, 'Assumenda est aut architecto dicta magni eos.', '0', 'Voluptas est illo omnis porro officiis. Eius totam qui eveniet modi labore fuga. Quaerat excepturi veritatis sequi fugit praesentium aliquid aperiam. Cum molestiae quia et optio necessitatibus nobis ratione reiciendis.', '2020-07-01 14:51:37', '2020-07-01 14:51:37'),
(3, 3, 'Commodi incidunt doloremque debitis voluptas quas.', 'public/storage/images\\a3fa73d9894351f108eda89790332626.jpg', 'Quia non velit porro qui labore qui quos. Blanditiis incidunt non fugit magni illum harum velit. Molestias quo consectetur totam qui. Qui sed illo quia cum sunt aut consequuntur rerum. Hic impedit et dolore ullam sint odio corporis.', '2020-07-01 14:52:07', '2020-07-01 14:52:07'),
(5, 5, 'Id et enim sed sunt ea consectetur minima.', 'public/storage/images\\1d3a4256721708cb3c6e30063cb49c3b.jpg', 'Explicabo sit ut et aut distinctio consequuntur atque. Consequatur quod est dolor et. Sed vel voluptatem totam harum iusto ratione perferendis eum.', '2020-07-01 14:53:10', '2020-07-01 14:53:10'),
(6, 6, 'Ad necessitatibus harum omnis hic et ullam dolor.', 'public/storage/images\\dda8b1179958ae0708f2b1d96490544a.jpg', 'Atque non ab id tempore. Excepturi ex et enim dolor vel unde eius. Laboriosam sint modi dolores porro deleniti nam itaque praesentium. Dolores et consequatur repellendus delectus est ea.', '2020-07-01 14:53:46', '2020-07-01 14:53:46'),
(7, 7, 'Est perspiciatis placeat ipsam est iure dolorum mollitia fuga.', 'public/storage/images\\3a89243ad23782d234493eb19094e9a8.jpg', 'Pariatur eum ab velit maxime deleniti aliquid. Sequi ipsa atque non.', '2020-07-01 14:54:35', '2020-07-01 14:54:35'),
(8, 8, 'At qui nulla neque et vel.', '0', 'Harum animi voluptate qui quia hic ut. Et ut reprehenderit laudantium veritatis distinctio in. Explicabo nesciunt autem rerum in blanditiis aliquam. Quis est enim dolores sint omnis vel quod alias.', '2020-07-01 14:54:57', '2020-07-01 14:54:57'),
(9, 9, 'Aliquid voluptas natus facere minima sed.', '0', 'Suscipit sed porro ad esse soluta dolorem nesciunt. Ducimus reprehenderit iste maxime quidem hic ea. Nam dolores fuga optio.', '2020-07-01 14:55:19', '2020-07-01 14:55:19'),
(10, 10, 'Veritatis velit nesciunt accusantium.', '0', 'Molestiae ad consectetur nam maiores placeat. Error in voluptas dicta voluptas est alias. Quisquam et aut ullam ut quia est. Facere quia laudantium maiores ut quis.', '2020-07-01 14:55:40', '2020-07-01 14:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2020-07-01 16:13:27', '2020-07-01 16:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(21, 1, '2020-07-01 18:21:32', '2020-07-01 18:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `users` (`id`, `name`, `username`, `avatar`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Prof. Dena Schmitt', 'alverta28', NULL, 'kody.block@example.net', '2020-07-01 14:49:51', '$2y$10$3iGWpXI99ZZxdOeuN.y7aOmZ2yYcEESHJljcclugSl0tUf8UMRfNO', 'YI2qaG1QfJ', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(3, 'Tyson Hettinger', 'cgoldner', NULL, 'clarissa88@example.com', '2020-07-01 14:49:51', '$2y$10$32FpgxremjDIOz371ZdzwOgL5fIGWJ6aoxJLw1znhQ71zQIHM2TwS', 'hpIqlGA1O0', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(5, 'Earl Torp Sr.', 'tschneider', NULL, 'sylvester.becker@example.net', '2020-07-01 14:49:51', '$2y$10$fjfG9y3xp8DRDwvhn0JeyOsclWcTkrhMGFBPhs.gzCgYUdi2XfwwK', 'RGRi0AfOFF', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(6, 'Prof. Ladarius Hackett', 'darrion.smitham', NULL, 'rcronin@example.com', '2020-07-01 14:49:51', '$2y$10$MsTnpdWB3TP0kDBIkBYjXe2xK9LgJtdXUF7NIWUm6hd5Wk3UPBaQS', 'tASEWGjKou', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(7, 'Dorothea Batz', 'veum.mackenzie', NULL, 'sanford.kaelyn@example.net', '2020-07-01 14:49:51', '$2y$10$fh2x3WGT3ohcxQ0QgslJZu/CCeAZwIQ.wo6iXP8mgq46JiqpC5CKK', '3LUCgXexH8', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(8, 'Dusty Will III', 'darrick07', NULL, 'una24@example.org', '2020-07-01 14:49:51', '$2y$10$JvcK1fdqYNGEjxovhnP/o.XQyTpBm7Wl..CvVZ.2Om/ShNL1MSKYW', 'hlDn3yydMn', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(9, 'Sarina Reynolds', 'johns.orrin', NULL, 'teresa51@example.com', '2020-07-01 14:49:51', '$2y$10$N0vQKE9pyCFjAj0nrCxO.uKzLo0moZxXLYvENMBMJZa5E5d6VYUDK', 'Pf55zjQjju', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(10, 'Garnet Langworth', 'mose85', NULL, 'huels.jevon@example.net', '2020-07-01 14:49:51', '$2y$10$yiNGgxsZ85WLGLp3hH3yBO.tHPAJVMN.lE8U4I7RutyJewRTufNfq', 'tUphS8sadB', '2020-07-01 14:49:52', '2020-07-01 14:49:52'),
(11, 'Dr. Ransom Senger', 'deckow.bernice', NULL, 'swaniawski.sven@example.org', '2020-07-01 14:50:13', '$2y$10$w6h3bS75/R6A.oHMlmpmd.Wt2bu7fCeZe5nJX1U6lq1BKwuDZNCGC', '8S5h9rQgHe', '2020-07-01 14:50:14', '2020-07-01 14:50:14'),
(12, 'Jameson Thompson', 'zboncak.leonardo', NULL, 'vboehm@example.com', '2020-07-01 14:51:37', '$2y$10$GBbx77Bd68FVedWMoHT51.YJzlZOzqujR06N1Rv4IqYSim8324ha.', 'QmLrJ5rqi4', '2020-07-01 14:51:37', '2020-07-01 14:51:37'),
(13, 'Gerson Gislason', 'gust20', NULL, 'wlang@example.org', '2020-07-01 14:52:07', '$2y$10$s3qtRowm8SEtl4V9NKLl4OLTMbBg76aMCWTD/LvtoFCLdMqwwY74.', 'PcwseTmYNO', '2020-07-01 14:52:07', '2020-07-01 14:52:07'),
(14, 'Seamus Langosh', 'kherman', NULL, 'augusta41@example.net', '2020-07-01 14:52:29', '$2y$10$G8/3JqU73Y1o9L1y09HDveYl4W8OSTnwwyKgZ9HfsLCiLUZlxCnui', 'fsPqnpHRbp', '2020-07-01 14:52:29', '2020-07-01 14:52:29'),
(15, 'Mr. Sherwood Morar', 'mauricio.kuphal', NULL, 'humberto.kuphal@example.net', '2020-07-01 14:53:10', '$2y$10$466Looc1Gelv4Uq6D3FDmOjsO/HEhG7g8WRKjojHUKcEagpqX60mK', 'v2SrMe2AQP', '2020-07-01 14:53:10', '2020-07-01 14:53:10'),
(16, 'Dr. Eloise Olson', 'kathleen33', NULL, 'amani.barrows@example.org', '2020-07-01 14:53:45', '$2y$10$LWiFo92/gDtCzkka2DjspO5A4CsWbla3wZAP4MNk18uZDsSQEZwum', 'pMnFf7sroU', '2020-07-01 14:53:45', '2020-07-01 14:53:45'),
(17, 'Craig Mann', 'shayne.goyette', NULL, 'wehner.christ@example.net', '2020-07-01 14:54:35', '$2y$10$J76r4vNu2cYnJ12/w4X1XeZTq/5YySddwYky1YQTQ7lMoASjqj0yq', 'XehViCFytd', '2020-07-01 14:54:35', '2020-07-01 14:54:35'),
(18, 'Cristal Borer', 'irwin72', NULL, 'streich.ettie@example.com', '2020-07-01 14:54:57', '$2y$10$f3LF1bw1c3TcXdGHDyOmd.AqbQnWF.mMJAfy2jwGlY3Hyd6j3fauC', 'CyIpAlzu6m', '2020-07-01 14:54:57', '2020-07-01 14:54:57'),
(19, 'Prof. Junius Schamberger MD', 'lea.veum', NULL, 'alice26@example.com', '2020-07-01 14:55:18', '$2y$10$Hn5hnngEPs40QahyZ/M7dOOLNO.iJlumDb0FbSO9027SpqBz03VCG', 'u7sdt9EdZu', '2020-07-01 14:55:19', '2020-07-01 14:55:19'),
(20, 'Prof. Laury Olson Sr.', 'spencer.johns', NULL, 'asha.padberg@example.net', '2020-07-01 14:55:40', '$2y$10$adb98ZMEGz8aHCaVCa3wZun2yDLj1xnAcZvEG.bF8bxIZBMX/Moeu', '9lZopxGqA9', '2020-07-01 14:55:40', '2020-07-01 14:55:40'),
(21, 'Ezra Augustin', 'Starkillerz', 'images/oJR0wVt7ymkA0bCySAIRyULz9Tm2LMWA0eHghwtn.jpeg', 'ezra.augustin@etu.univ-st-etienne.fr', NULL, '$2y$10$/sQY7VC268bAjJQMf0KbQetqzn3/FYkuevVo/7/mzk3plEiG9Fdsm', NULL, '2020-07-01 14:56:18', '2020-07-01 15:01:20'),
(22, 'Ezra Augustin', 'zothe1', 'images/i0vV4b8IrF9NzbHqaDEa1fKGdc2xR3zYimlP6L9o.jpeg', 'elidoom88@gmail.com', NULL, '$2y$10$umxoSd4YVNynA3b2DS4.juei2GAPjVHlV0ZhpvGNt67mNNf7Xnvp2', NULL, '2020-07-01 16:26:49', '2020-07-01 16:41:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD UNIQUE KEY `permissions_slug_unique` (`slug`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
