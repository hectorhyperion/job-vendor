-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 01:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job-vendor`
--

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
-- Table structure for table `listings`
--

CREATE TABLE `listings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listings`
--

INSERT INTO `listings` (`id`, `user_id`, `title`, `logo`, `tags`, `company`, `location`, `email`, `website`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Enim fugit velit et possimus fuga.', NULL, 'Laravel, api, backend', 'Heidenreich LLC', 'Lindbury', 'nelle15@bartell.com', 'http://www.larkin.net/incidunt-sed-et-inventore-dignissimos-nam', 'Voluptatum aliquid suscipit consequatur mollitia. Ut dolorem sequi rem inventore labore. Quisquam nihil enim aut voluptatem ex ipsum rerum. Numquam aut amet quia molestiae et. Eum inventore saepe quo occaecati velit error est.', '2022-09-19 21:27:58', '2022-09-19 21:27:58'),
(2, 1, 'Perferendis excepturi dolorum iusto molestiae.', NULL, 'Laravel, api, backend', 'Murray, Fisher and Gislason', 'West Dustin', 'augustine.reilly@hermiston.org', 'http://www.cummings.info/itaque-repudiandae-repudiandae-aperiam-illum', 'Quas ad itaque vitae ut. A ducimus occaecati asperiores dolor ipsum iste quia. Commodi quibusdam omnis aperiam saepe. Similique itaque aut et quis expedita odit voluptas. Esse rerum asperiores laborum ex reiciendis. Vel natus repellendus corrupti.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(3, 1, 'Aliquam laborum cumque repellendus optio et velit rem.', NULL, 'Laravel, api, backend', 'Rosenbaum, Hermiston and Lakin', 'Faheyhaven', 'priscilla.schroeder@schumm.com', 'https://mills.com/ut-rem-minima-cum-quod-exercitationem-aperiam-ad-excepturi.html', 'Nulla possimus rem temporibus quaerat possimus. Aut repellat necessitatibus dolor exercitationem sit. Natus optio dolores voluptatum quia. Rerum optio modi laboriosam maxime ea commodi nostrum. Optio nisi deleniti eveniet quia. Inventore qui quia culpa quae. Maiores ex nam cupiditate ut.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(4, 1, 'Et culpa ut quaerat quas sequi at aut.', NULL, 'Laravel, api, backend', 'Luettgen Ltd', 'Margaretville', 'addie67@sporer.net', 'http://www.mohr.com/quidem-officia-nihil-repellendus-rerum-nisi', 'Voluptatem sapiente et et vel non. Qui atque sit quaerat dignissimos quis. Quo et id suscipit harum. Architecto fugiat assumenda ad consequatur est mollitia nihil explicabo. Facere non molestias ex tempore at. Illo aut architecto laborum voluptate.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(5, 1, 'Occaecati quis dolores eos vel.', NULL, 'Laravel, api, backend', 'Koepp, Zboncak and Kub', 'Cartwrighttown', 'mara21@blick.com', 'http://www.quitzon.info/sed-amet-non-modi-temporibus-cum-eaque-quia', 'Quia accusantium sed esse ipsum voluptas. Impedit tempora unde consectetur ut. Odit ipsa perferendis accusantium tempora minima labore earum. Modi illum error et rerum possimus.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(6, 1, 'Labore dolorem beatae ut culpa quaerat velit porro.', NULL, 'Laravel, api, backend', 'Wiegand LLC', 'New Lottiemouth', 'jazmin.abshire@stamm.net', 'https://monahan.com/exercitationem-perspiciatis-porro-totam-provident-deserunt-nisi-dolores-dolor.html', 'Iusto omnis dolor odit. Aut eum aliquam necessitatibus tempora et quibusdam. Qui sint neque ut sequi. Ut debitis velit tempore. Eveniet nobis ut assumenda illo mollitia sunt eveniet.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(7, 1, 'Temporibus sed ad alias aspernatur.', NULL, 'Laravel, api, backend', 'Bayer-White', 'Cortneybury', 'liliane10@wolf.org', 'http://www.kassulke.com/', 'Sed quia facilis eius iste blanditiis. Eius rerum et nulla maiores aut amet illum. Ipsum vel omnis voluptas aut. Praesentium ipsa exercitationem nisi eveniet corporis voluptas. Qui labore autem quos repudiandae est ducimus magnam. Magnam earum id repudiandae sunt voluptate distinctio a ut.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(8, 1, 'Nobis dolores cum sed porro sed odit.', NULL, 'Laravel, api, backend', 'Okuneva and Sons', 'Waldochester', 'lakin.eveline@koch.info', 'http://www.lind.com/dolor-voluptate-fugiat-voluptas-amet-dolor-ea', 'Qui maiores quo iste repudiandae ullam. Incidunt reprehenderit pariatur dolores temporibus cum assumenda dolorem sed. Sequi porro et neque voluptates qui quas voluptas. Consectetur aut non enim. Beatae maxime odio et voluptate laboriosam tempore.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(9, 1, 'Dolores sapiente sunt eligendi voluptatem non consequatur consequatur omnis.', NULL, 'Laravel, api, backend', 'Mayert Inc', 'Port Agustinfurt', 'kathlyn.reilly@langosh.info', 'https://www.treutel.com/non-soluta-praesentium-quis-debitis-ducimus-sed-ut', 'Officia est et voluptas consequatur. Quo sint voluptatibus doloremque labore. Quasi qui illum id corporis dolorum. Sed numquam exercitationem voluptatem.', '2022-09-19 21:27:59', '2022-09-19 21:27:59'),
(10, 1, 'Reiciendis ea corporis saepe est sit maiores.', NULL, 'Laravel, api, backend', 'Sanford-Beatty', 'Treburgh', 'edwardo.romaguera@goodwin.biz', 'http://hickle.com/', 'Aspernatur non nostrum quo id deserunt eaque impedit saepe. Dolorem eos aut quaerat et explicabo deleniti animi. Fugiat amet tempora nesciunt excepturi. Adipisci et dicta provident ullam ea sed quasi. Et cupiditate vitae assumenda quos et.', '2022-09-19 21:28:00', '2022-09-19 21:28:00');

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
(73, '2014_10_12_000000_create_users_table', 1),
(74, '2014_10_12_100000_create_password_resets_table', 1),
(75, '2019_08_19_000000_create_failed_jobs_table', 1),
(76, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(77, '2022_09_16_225500_create_listings_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'john doe', 'john@email.com', '2022-09-19 21:27:58', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hFHoEIZ0E7', '2022-09-19 21:27:58', '2022-09-19 21:27:58'),
(2, 'AGIM pius akomaye', 'agimqwertyakomaye@gmail.com', NULL, '$2y$10$woXRQkIKROo37JuLhd5YoeyXDzwVb71laCwaXO7hChCUffTAltwhq', NULL, '2022-09-19 21:37:05', '2022-09-19 21:37:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `listings`
--
ALTER TABLE `listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listings_user_id_foreign` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listings`
--
ALTER TABLE `listings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `listings`
--
ALTER TABLE `listings`
  ADD CONSTRAINT `listings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
