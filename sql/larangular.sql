-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 31, 2019 at 10:48 PM
-- Server version: 5.7.26-0ubuntu0.16.04.1
-- PHP Version: 5.6.40-7+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larangular`
--

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
(2, '2014_10_12_100000_create_password_resets_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'a@a.com', 'dfaffadssfd', 'fsdaaffdas', NULL, '2019-05-30 07:58:53', '2019-05-30 07:58:53'),
(2, 'jkfhkadsf', 'a@a.com', '$2y$10$IlJwRr/jJYtcspjuOUIIr.fg2aMQpVrlL09bqVV8gcySIgq4Bl84a', NULL, '2019-05-30 08:11:11', '2019-05-30 08:11:11'),
(4, 'Balasuresh A', 'testmail@mail.com', '$2y$10$nagdeDve4OrXhzTheHk1QOw5hbwA1FJRcKDfYYxXhgGV.LP2Z9Pt2', NULL, '2019-05-30 08:12:34', '2019-05-30 08:12:34'),
(5, 'Fdksjfsdaf', 'fdsaf@afasfds.com', '$2y$10$QyaVJOEAOIw5.y1OXUxMOe5zx5/Lu19/PGwBjxAExAoFtBmm3sUbK', NULL, '2019-05-30 08:22:27', '2019-05-30 08:22:27'),
(6, 'Balasuresh', 'admin@app.com', '$2y$10$rancT4ohuVEilTxW1OQTXeliCDx.gWRPFSU4NiluGtRO.PArUUFLO', NULL, '2019-05-31 03:29:02', '2019-05-31 03:29:02'),
(7, 'Balasuresh A', 'admin1@app.com', '$2y$10$9YNtO0GrDPG7vcEOW0J94e1QusIYNCkFeTxoqZOX0.kMvP0LVeVSO', NULL, '2019-05-31 07:43:46', '2019-05-31 07:43:46');

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
