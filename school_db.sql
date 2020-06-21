-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2020 at 02:15 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `course_id`, `credit`, `created_at`, `updated_at`) VALUES
(1, 'Ethan Durgan Sr.', '87c202ae-17cd-3386-b1a6-a50a09709a44', 'Array', NULL, NULL),
(2, 'Tracy Rath', '5289401d-4ecd-3a1e-b74d-5b43e25ddfd5', 'Array', NULL, NULL),
(3, 'Daisha Goodwin V', 'bd3bdaeb-ad56-353f-8a4b-3f89c5cac4d6', 'Array', NULL, NULL),
(4, 'Prof. Dell Anderson Sr.', '892a5d52-2bac-3f90-bee8-125b646493ad', 'Array', NULL, NULL),
(5, 'CSE', '6c9af2b0-1776-37aa-bff3-42b9ea62fe08', 'Array', NULL, NULL),
(6, 'Eldon Rippin II', 'd403baac-c98a-3595-965a-2dc57a5ffe1d', 'Array', NULL, NULL),
(7, 'Tony Nolan', '89da4544-6fbf-3e50-bec1-69af7d9e9641', 'Array', NULL, NULL),
(8, 'Vicente Mann', '6929b8f5-fce7-36d9-ad56-0fc18e2772cb', 'Array', NULL, NULL),
(9, 'Felicity Powlowski', 'cef6a52e-3414-3935-9336-72eb867a804f', 'Array', NULL, NULL),
(10, 'Amelia Rath', '2ac656d3-7104-33b9-9c9e-f05322fbc0d4', 'Array', NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_06_21_083408_create_students_table', 2),
(5, '2020_06_21_084931_create_courses_table', 2);

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
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `class`, `student_id`, `gender`, `dob`, `course`, `address`, `mobile`, `created_at`, `updated_at`) VALUES
(1, 'Shahinur Islam', 'NINE', '12345', 'male', '02/01/1993', 'CSE', 'jamlapur', '01938474', NULL, NULL),
(2, 'Carmela Collins', '9', '9553fba8-00a4-3c92-a9e8-15263e1c9390', 'Raul Mills', '1984-10-19', 'uschiller', '273 Rigoberto Divide Suite 282\nKyliebury, DC 28958-9117', '(687) 441-2214 x769', '2020-06-21 03:34:50', '2020-06-21 03:34:50'),
(3, 'Prof. Brady Von', '10', '68b3ba59-31c6-3a2f-80b5-9f773eb9e746', 'Mattie Wiegand', '1999-02-05', 'quinten.hirthe', '4271 Sauer Ridge Apt. 608\nKayceefort, DC 81266', '394-607-4455 x68986', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(4, 'Estefania Sawayn', '8', 'ceaa5bb5-cc02-3596-91d6-37c222a68fb0', 'Mrs. Myrna Witting', '1994-09-10', 'eileen88', '46721 Queen Oval\nPort Susie, DC 64326-3309', '1-862-384-4097 x79205', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(5, 'Aminur Islam', '1', '0985579f-db5d-3d6c-9f87-018bb3b0cf39', 'Erika Osinski III', '2010-05-06', 'oolson', '365 Percy Isle\nPort Myah, WY 97707', '867-366-9206 x910', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(6, 'Dr. Kristofer Borer II', '9', '73726d94-c526-350a-a839-668263c9b0f0', 'Prof. Jocelyn Denesik', '2018-11-25', 'meta.boyle', '5480 Schuppe Valley\nEast Jaceychester, MS 41533-9891', '(513) 240-6497 x15129', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(7, 'Prof. Demetris Gutmann', '9', 'ef1fa68e-9d6e-33dc-8501-0a200d0f1576', 'Nestor Gerlach III', '2006-02-01', 'dayne.rodriguez', '2543 Devonte Forest Suite 436\nLake Gussieside, MO 05044-5137', '1-417-395-2399', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(8, 'Aminur Islam', '10', 'b63679ae-e9f9-3924-a314-951060d1f0be', 'Alda Leuschke', '2016-03-29', 'lrice', '7344 Frida Stream\nEast Lawrence, TX 61498', '+1-893-685-7422', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(9, 'Horacio Prosacco', '1', 'd7481ccf-8f63-3522-a259-aabf854f2148', 'Yazmin Muller PhD', '2005-02-20', 'yadira86', '206 Balistreri Mews\nEast Augustberg, OK 52461-7972', '+1 (741) 989-8050', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(11, 'Mr. Dameon Anderson Sr.', '8', 'e405f082-71b1-3a3e-b4d6-a6857506c5f7', 'Mr. Darwin Weber Jr.', '1996-05-13', 'zwalker', '474 Schmitt Expressway Apt. 432\nSouth Lyricfort, AR 73201', '(767) 593-5604 x564', '2020-06-21 03:34:51', '2020-06-21 03:34:51'),
(12, 'Jon doe', '4', '1234', 'male', '12/23/23', 'cse', 'Bangladesh', '123566', NULL, NULL);

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
(1, 'Shahinur Islam', 'email@email.com', NULL, '$2y$10$QUr6mB4pxGyTve6/96HzuO5.8OtN.J/JgL6mm61338dRoa3DoDU5q', NULL, '2020-06-21 00:50:21', '2020-06-21 00:50:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `students`
--
ALTER TABLE `students`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
