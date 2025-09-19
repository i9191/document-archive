-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 19, 2025 at 11:46 AM
-- Server version: 10.6.18-MariaDB-log
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `document_archive`
--

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
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `letter_number` varchar(255) DEFAULT NULL,
  `letter_category_id` bigint(20) UNSIGNED NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letters`
--

INSERT INTO `letters` (`id`, `title`, `letter_number`, `letter_category_id`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Laborum sint sunt.', 'SK-5206/KD', 3, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(2, 'Sed rerum porro sunt.', 'SK-2681/KD', 2, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(3, 'Consequatur dolor eveniet.', 'SK-0088/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(4, 'Omnis quasi in.', 'SK-3841/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(5, 'Vel labore aliquam facere.', 'SK-3495/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(6, 'Unde earum ex.', 'SK-2837/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(7, 'Quod dolorum itaque.', 'SK-6355/KD', 2, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(8, 'Aut harum qui blanditiis.', 'SK-0151/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(9, 'Officia laborum ea aut.', 'SK-7629/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(10, 'Non adipisci autem.', 'SK-6033/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(11, 'Qui facere consequatur.', 'SK-6606/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(12, 'Deserunt dolorum recusandae.', 'SK-8117/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(13, 'Sequi et ducimus ab.', 'SK-8765/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(14, 'Vero vitae voluptatem dolorem.', 'SK-9183/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(15, 'Vitae cupiditate aut temporibus.', 'SK-0827/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(16, 'Dolores dolores enim atque.', 'SK-7766/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(17, 'Voluptatem ut amet quia.', 'SK-9748/KD', 1, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(18, 'Perspiciatis et ut ratione.', 'SK-9584/KD', 4, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(19, 'Eum numquam dolorum.', 'SK-7039/KD', 2, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(20, 'Neque et adipisci.', 'SK-5806/KD', 3, 'letters/dummy.pdf', '2025-09-17 23:54:12', '2025-09-17 23:54:12'),
(24, 'dd', 'asd', 2, 'letters/70889e28-dfc5-48ae-97ce-9d885907d3a9.pdf', '2025-09-19 02:20:47', '2025-09-19 02:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `letter_categories`
--

CREATE TABLE `letter_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `letter_categories`
--

INSERT INTO `letter_categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Undangan', 'Undangan rapat, koordinasi, dsb', '2025-09-17 23:53:55', '2025-09-17 23:53:55'),
(2, 'Pengumuman', 'Surat-surat yang terkait dengan pengumuman', '2025-09-17 23:53:55', '2025-09-17 23:53:55'),
(3, 'Nota Dinas', 'Nota dari Dinas', '2025-09-17 23:53:55', '2025-09-17 23:53:55'),
(4, 'Pemberitahuan', 'Surat-surat yang berisi informasi formal', '2025-09-17 23:53:55', '2025-09-17 23:53:55'),
(5, 'tesss', 'ngetessss', '2025-09-19 02:42:03', '2025-09-19 03:54:37');

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_18_054601_create_letter_categories_table', 2),
(5, '2025_09_18_055916_create_letters_table', 2);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('QBflNqKW68qbKeWqJkFJoi0BRnJQPe0rQdh9wZ7d', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/140.0.0.0 Safari/537.36 Edg/140.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWo0aTFZSWlLUE9NTEJOTjRCTjhBeVFRdFRRUW8zdWtXRUF1NmFsMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sZXR0ZXJzL2Rvd25sb2FkLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1758281845);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `letters_letter_category_id_foreign` (`letter_category_id`);

--
-- Indexes for table `letter_categories`
--
ALTER TABLE `letter_categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `letter_categories`
--
ALTER TABLE `letter_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `letters`
--
ALTER TABLE `letters`
  ADD CONSTRAINT `letters_letter_category_id_foreign` FOREIGN KEY (`letter_category_id`) REFERENCES `letter_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
