-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 10:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stripe_subscription_customer_portal`
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

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('9b55ce70d436fa849c44f60cfccd9b1a', 'i:2;', 1741357544),
('9b55ce70d436fa849c44f60cfccd9b1a:timer', 'i:1741357544;', 1741357544),
('a6cf3449fbccdc26d9aeadb6f26b8c25', 'i:1;', 1741357418),
('a6cf3449fbccdc26d9aeadb6f26b8c25:timer', 'i:1741357418;', 1741357418),
('admin@admin.com|127.0.0.1', 'i:1;', 1741357419),
('admin@admin.com|127.0.0.1:timer', 'i:1741357419;', 1741357419),
('archanaub0@gmail.com|127.0.0.1', 'i:2;', 1741357544),
('archanaub0@gmail.com|127.0.0.1:timer', 'i:1741357544;', 1741357544),
('archanaub649@gmail.com|127.0.0.1', 'i:5;', 1741357481),
('archanaub649@gmail.com|127.0.0.1:timer', 'i:1741357481;', 1741357481),
('d3617f09d4e0090bf579dfe3c0532869', 'i:1;', 1741442321),
('d3617f09d4e0090bf579dfe3c0532869:timer', 'i:1741442321;', 1741442321),
('d4c78d9339e2c4907cb0fb23f2dcf66e', 'i:5;', 1741357481),
('d4c78d9339e2c4907cb0fb23f2dcf66e:timer', 'i:1741357481;', 1741357481);

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
(4, '2025_02_21_151814_add_two_factor_columns_to_users_table', 1),
(5, '2025_02_21_152103_create_personal_access_tokens_table', 1),
(6, '2025_03_02_140437_create_customer_columns', 1),
(7, '2025_03_02_140438_create_subscriptions_table', 1),
(8, '2025_03_02_140439_create_subscription_items_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
('0dGFKK83e5YoanC51segFSl6LHv66o8dIAtstdqy', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOFpDekRSY0o3NDdIVVRwNkFZWlVoSkpsbmcyMFZBM0pKWDdVc0kzViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447332),
('0irD5xDWnp2J391MBBteV8i10s1AUBrC3C0NjIN0', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieHRpVjZEY1VwS1RJaUdocm5FenB5MUh4cDJBd0ZWWXROT3V2R1ZXciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447318),
('1w7IBezMv5b56LUCGRHQnZpPwwV4ChvAhAOWRQtH', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3ptUzNhNnVFd1pUdnNVM0xXeFhoVUVDZEZObEYxT3pWRElHRDVIaiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447544),
('4yDCqAkOdE6NfUGoYRVQvMvYIdvFOYkpT8bbLLqF', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQmxzREkxUXg4a0hCeFNUaUdUYjEzQ205QmFrMWtkeXEwTzlqbTdDaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446555),
('62GFMtQSjaLILWQ6RutA9Egzr3OzvrNhyBXbmTOS', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZm9lbFBzQzF1RGNnSHhXTHRvZ25PM1VWUWw4ZXNQS2prN1RaS1hZTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446573),
('6MqVWDwhZHaCCaVxPEZgj4MHNAd8tA0sJyChC8Qe', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiME4zM0NGYmp5Q0l0YkNpZTBKZWNnYlllRkZSRE5PUTlGWGJCQndvVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447534),
('6sG5FvvZnDJzHeCp57P2z1gkWXXOOklipZI3m8Pj', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiajhaR1FyQWpNbjczQzk5bzZIUzcwTHdFWGVHcG40clRkc1BrdWdDdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446554),
('8PxsqC9wv2fzgFyaJgvv7udMKqBlDMOypu4Oaktk', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT0haWEEzSE00NWtMOXQxVzlBbW1sakFrUk9XY3NCRUF5WXJNV3FNViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447543),
('9UAEeJ0NGsvsnPMujoQ0TwTJCVW5mkzNSicuWJjY', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidDl0cGs3a2FHN1JWTmt3aEJDeWFsckZYbFJDSVBwSjljNml3YmR6RSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447332),
('9YYxKXPT4iQJ9SboaszTfi1k7GJZbt1ux589WPum', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidm0xN1E1UU5XbExjS0VVeFBRZ0ZscVptcHp4TUlsT3VCVFV6dVltbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447533),
('AnuT3eKQx6tULbG3e6NoODvv5loD3H5qIwk9Iq4n', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRjFOTXlMRDFGT2JJYzRLaHprZXhlVDJWYnhMbkdBSncyVzhtaUtTRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446819),
('az6dtPOrKSh2hQWpOxANFBFNnl9qGDTvtueJmxEm', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSlBHQlBxY0lYVkpsWVF2MVZoWUNnZWZFYzRmVGRLTFdNaVBVMDBETCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446574),
('bBG5QC1bzbq2rMmupRSw8Ltmdctz5biebEc07cPP', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSFE0Y281d2pTemJjZXhVZ3VseG8zNXFRa3pob3AwUFVoS2I2RW95OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447542),
('bqEnAwNq7VDXQGDQW7MrV5baMbvFWjtsOesvZCdb', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMncxN3NvMTZ0RzZqdDJKWlRnTUlCRVIwNkF4bmNzcUZiVmFmZHBNMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446820),
('bX7p9ITUxtJv2t7wS9vwPlySWFzowkI68M7QTnUY', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMTBUUDVFVzl2TmtLQTBYMzNNd29WemxUN1R5VjZNcW9IRmpMQXRhZyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446825),
('COhRIsjmihDh0TA3fE4OJUyP7tOX7iOBPqMue6VE', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSUZSellvMmhmSzVnS0JNWWNaRGVjRGRCb1RTaHRBSDdOYThUaGVjUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447545),
('CU7k7Rp1CrDUHZMWrPGJs7HCnomt4c3mTQZBzrf5', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWGFOTzkwQ0NyeVd1cVZuemhiUUU3a1lFc1V1WGFWSWFSZ2NoRllkbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446553),
('eRUQRHGvlqdIw7QOVFXgaT8xAKOVroiqlyc8sBu2', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNFpIMXpMblpDdnZDVjhkUmVjOWVvMG1zdG1nRzA4V3dQaWFHSWNwMyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447324),
('F1rqF8rAG2QHA3Av8aRdrZMfotZzDNKvp27mHBbP', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiODFROFh3RHluNUY5dlVoSklLRDFWQkdRbFVnZHpSNHkybnd1cnVtUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447323),
('fYrJlzyXTgiu9iMTy0UTumAAxwSOSpPCXhOeteht', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZjlGNHMwZ2J6dUphYlV5Szd1YVlUSEQ1dEhLZTBxaVBiTkd6MDI2OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446555),
('gg0UPpQqJtEi0yLT6cH9FrUBznIPCsHMZUruG83d', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiOVg4cEpKZkRjRm5TTkREWVFkY2NxbnVBem9MTExpMkdpWDZPaTVrWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447331),
('H38RaqeqT2UVEelyWn9UBp0lAnbggWhFVXXR8Vzp', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRjJzb2JldjFxTUNLeVJESUNhZWRSa1AzSkpySUdZNjQ3TlFQTXIzeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446821),
('hXxaDkmXDg1joSptbu9X22OkZiUU20LEKjzhK6Ft', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUHZuTWQ4cGZaNGxkVU80cTgxOXpHQVRXZnpuOWJwRVNjSVhaS2oxWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447331),
('I0Pz2HSQihsigGDlih78lI87C9Nax9qpvavxQhco', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicEhUc1VZNWU0QnlGSGRzNXVtTkc4dUh5S2JtWHJLdmExaGVpN2s2RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446819),
('ihfQ0JxAMDnSpxfZMSs8AlHW2GpgBY8ODCvGtEHX', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiczRGYXMyOXlYWXN6M2RlenhTdGo2ZGNMWEJTNnNEdjJFMlVsTlJQaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447324),
('jT2kmX3x3EHGf2JtsRK7Nh2TsILbyNreeIGSb5cj', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNDRpWllOWWZlajdEcEZxNjROT2xsMWllRkFmUzRBaEllYTlrZlZkdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446829),
('kxEOBi9zzbcE2yWbTPGzL5Ys8u1DcALHKY4azXew', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0FDQ1E4dVJvbkVValVSeENZOXg2WTFiclROaDZuZlo3S0xDV3VOUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447531),
('LA6oCUC9zZdxSt12TFTBrumuC1M6dWX5sSxiYcbM', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibWVOWUE4MlFlSGNXQmExekpleUVINkxiVXUwa2lFS0I1RVN5NnJLRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447338),
('LmUqiOrHtFRj6iwwwxRx5Hn2fDlVfsyS4lq85iCd', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYXJXY0ExQUxqR0RQRUJJbDQzMHBwbkNBSGZwRGRpOHBRWDl5a0VicSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446556),
('mCtygcrgomz6LxQ2gNPbgfAWdwzSb1tp4XAgezEO', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiTFFwcUFpbURqZDgxSEZmWmg5cmxjR3FjeHAyZ21WWXp4TmhLaEJ0eiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446575),
('mnUMPK3gKWgw1XaJPp3XAzfSeBmtW4FQMMUAbzWG', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoieTZKVWdUVHpNYjREWkpvRFZESjk4bTBGRjlxYk5ONnRQbG5vd0ZDaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447322),
('MNvkoLUaVx66HVCL4jDqbPYFZPfDfKqb2khMqTXd', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNzlWZWd5a3Bsckg2NDd1ZmtldUszNTAwNWFXUEFiRVU1VFZoYWhZUCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447534),
('NdAFgehFt5Ycudww83l2XNnGlt1Xc7wiU1GDvPFd', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiekJZQU5LeENNYU1oTjNQZ0NTZlJSSEd2RmRWNW5ubHJqYTJHZk5PciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446822),
('o8zzYWKRZKzElCoyspaspNbkfqvcgGH9t8OSUoMw', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibXowMWt6UE1FVkExNFlUR3hxQkh5cjlkMUpzNGo5NVVVZnhxRkQ1RiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447338),
('omZDu7iSAFjPolafbPgnNfM2EKCqueM0XDRrtVIb', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaEo3S0JnYmt1aVZpTnpQRFJzaTFidEYySXFVNUhuNGl0S0ZwVFNPdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447319),
('pJUG0asr27DO97y4faXYUoIdXRfJWzhj2ycMmtHQ', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZEZaVkxpS1owS2E5VkNUTTBHc2lTY0ZmUUV2M0pmQmhmbUtZcFNvYyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446821),
('PlcYdOC1n7SUW1a62HWApQUPIHJq0SxovrvTNNnP', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT1ZvZ0c0Wm5QZGdiV1VzVm83YzFNSmJ0cjJwZWVKSHZ2ZDNtQzJKRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447320),
('PzfR0jU2avxOmKa0fnWsST5eJPaFFwamkxL05uPH', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS2Rva05PYzRjczZocUYxWGVqcWxENHg5N0FMREpFT0Z1blZEc1lYZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447482),
('q6dQX7Bp5RyIBi2GIaYbun7GynwcqlLQSTznXG1D', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZ0FWM0FwNlB3aUhmdTBjaXdMY1JPZWNhYVBhSGRxMHcyUVRxSTRNciI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447532),
('SgI0CvudOCPleMYo5j4r5Pk4mvQfojjt45aBEg9U', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoicTVLQ3BIa3czRThCOUU4Z0N4dkQxakpZNkNyUnRyWnR5Rms0UEthOCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446817),
('tDTTAf7nI7mQJ1K0fW6UWcZzLi8eC3YoC1an1rT0', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiMWlJS1cweGxRZHJyUkJPckdxejljalNva2VvRVFLaUtiYm9vUUp0bSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446823),
('TIguoniYJBuk28LFUmqVHeSixyncy1lnmPc3GhIW', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiYlRGSWpRalRIZmNCU09OSkNHUEx0S0RFQVIxSzliNlRDUGRvVkVCSSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446557),
('Tok5AnPg9cYadVaQipaZA3lR2Wlt8qgn6mXSENlV', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoia3dqaVpHcnVSQU1uTnV1a3FkVGdLWkpIeWoyMFNMUzZjcGhCYVJZeCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446556),
('TX16A1dMwXftiJ8XuznnsO94WvOWTx3ilbp9JzwJ', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiZXVUSGVZenJTVjhINnBKb1o1UThDNnZFQlpwQUZkV2lsWWc3Zk9WcyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447532),
('UTBRTqamDTQzbzzNkVhwvhPIEMJYbstRamFFuI9K', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS1pHSVFRSEFlRTl2cTR6M2J2U1lYNkRIaWw4cTdpWGx3U3B2cFhGNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447319),
('V9wvVmF9g3aQq69C1eUdtQbKZKElMHvCjr1gQl68', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/134.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiZmpTOUtZb0xvYTk0RUlLRlhJOFRVdUh1c1g3RmlBUVd1QkQydERoSyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyeSQxMiRsZEJUaXZxSTcuQjhYT0ZnUzNOdHdlTExtTzM4eVJTWlF0dUw4OUVZV21yaHRSOXRVUDR6eSI7fQ==', 1741447577),
('Va5bE4icxY6vFm0jMYr4580AZwcK6UlMHbypra83', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm1iZnNIN0lYenF2VlF5QlAxNWJjM016WnljeW9ubkRMSE90OW5lNCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446820),
('VoHG4PqCNBIjhmEuJ730GexAbdpwEPFov1tPxfTg', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWU10T1FPaTJud0hmbmUyT2RMd0diTnlYdGxGd25tZkwzZmVBV1lmUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447320),
('VzGJyEEs0SygITIvJMWwS8lYUIagFY5WeG0L5JbC', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidWtRYUNlbFZaSlEwNDVZcjNyeVBvNW5DRWNaamtPdHBDb3BKTXBkViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741446818),
('wke71V4evVR66XDcdDdWyZXegod8bLWZQHTIhd1T', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib1d2MkZoMVUzc29iSzhYdDdaWjFhQVlzd2xwWmFJaFZuZU5ITFo2VSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447339),
('wXpv5EahajYJOCdByXtr1ICgi5YGzXEdDeQ3DacN', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaHRhVWUyRkJUc2Z5ZHJEdGdGWW5kSllTSmN0TFV1eWJxN0hEQjVuMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447535),
('x8cH4Qn3LFuAi1igcSyBJaEB4cP1N0xCGhDoDQWZ', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoibUtMS2x6b1oyams3bUFhVWNaTlVCTEVoUzhpb2lrZExXaG9oRFRmSiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447531),
('XdR1INzytpIQs8mZ1ID6lXiMW7LsTlV50A4XAkTA', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT25DSGFoSTFNSERSV250NHFrbmtaWVdQbkgwbndrRTQ3bmg5SHczdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447339),
('xMqsQKYvLO3gJzQwzR7YOuH2JbPvLIKmcUSwI3Pi', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid05TTmd3aldBNDczV3l3Z0dyRnZuUXNqcExYNWloaFFlaVljTlBQdCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447535),
('XQGyTfIr97P6vvJvK5uLTbbYwQczI0DqFUP1TR7w', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidUZLckw1VURBQ0tDbE1oZmRyOWlTSVVGaVVYbGEzbDZaYjJPSjhLRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447541),
('xQWiHets8NqcLidOLzOKSP3kSjdrlT0BvHPI7EE1', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWFRwaU9GNjJsMVR4WmtOZWM3NVJHWFA1ZDd6dTRzWGJIZkU2YmpodCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447355),
('XZGeXoxW40SBdZF1Fq2Zcgf64oAKQRlGlWCwLYaU', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiSXMwcVdma0FwOFEyWGYwSWNEeHpmSXRneTU0blJvRFY2TlF6SU50dyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447544),
('YHZAsGeSu8ABmHVDenLNZD0Heql9coxRrnL2QaC4', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiaGpBNjZIMU9vVTlxRzBBSmJ3ODV0WGw3QUlXMkFDM3RoNEhRempHWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447336),
('Z8WQ4nElZR31hbO32iDmoA4oTKU9ILFO9oK6lQ0G', NULL, '127.0.0.1', 'Stripe/1.0 (+https://stripe.com/docs/webhooks)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoib1BtMW1SODlESXNjb0FUb3oxR0ZXQlBQOUhJaGFMcmhBdUpERGxLVyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1741447542);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `user_id`, `type`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`) VALUES
(2, 2, 'default', 'sub_1R0Ha2RUMxZoQyFOvD2XXoaK', 'canceled', 'price_1R0ObpRUMxZoQyFOL9Gx9WyR', 1, NULL, '2025-03-08 09:39:34', '2025-03-08 01:44:17', '2025-03-08 09:39:34'),
(3, 2, 'default', 'sub_1R0PCHRUMxZoQyFOVMpaGZFB', 'active', 'price_1R0ObpRUMxZoQyFOL9Gx9WyR', 1, NULL, NULL, '2025-03-08 09:51:58', '2025-03-08 09:55:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) NOT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_items`
--

INSERT INTO `subscription_items` (`id`, `subscription_id`, `stripe_id`, `stripe_product`, `stripe_price`, `quantity`, `created_at`, `updated_at`) VALUES
(2, 2, 'si_Ru5lCBd5G4tDdM', 'prod_RuD1TZBO7NsX8g', 'price_1R0ObpRUMxZoQyFOL9Gx9WyR', 1, '2025-03-08 01:44:17', '2025-03-08 09:39:14'),
(3, 3, 'si_RuDdIj349Px7ay', 'prod_RuD1TZBO7NsX8g', 'price_1R0ObpRUMxZoQyFOL9Gx9WyR', 1, '2025-03-08 09:51:58', '2025-03-08 09:55:43');

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`) VALUES
(2, 'Archana', 'archana@gmail.com', NULL, '$2y$12$ldBTivqI7.B8XOFgS3NtweLLmO38yRSZQtuL89EYWmrhtR9tUP4zy', NULL, NULL, NULL, NULL, NULL, NULL, '2025-03-07 08:57:46', '2025-03-08 01:43:16', 'cus_Ru5k5OybazvSoY', NULL, NULL, NULL);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscription_items_subscription_id_stripe_price_index` (`subscription_id`,`stripe_price`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
