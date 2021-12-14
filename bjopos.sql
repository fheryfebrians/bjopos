-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2021 at 04:49 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bjopos`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_penjualan` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`id`, `kode_produk`, `id_penjualan`, `amount`, `created_at`, `updated_at`) VALUES
(1, 'Diskon Hari Raya', NULL, 10, '2021-12-08 17:00:00', '2021-12-08 17:00:00'),
(2, 'Diskon Bulanan', NULL, 5, '2021-12-08 17:00:00', '2021-12-08 17:00:00'),
(3, 'P000014', NULL, 0, '2021-12-11 03:52:44', '2021-12-11 03:52:44'),
(4, 'P000016', NULL, 0, '2021-12-11 03:55:37', '2021-12-11 03:55:37'),
(6, 'P000017', 44, 10, '2021-12-11 04:32:40', '2021-12-11 04:32:40');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goods_master`
--

CREATE TABLE `goods_master` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `id_modal` int(10) NOT NULL,
  `id_stock` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goods_master`
--

INSERT INTO `goods_master` (`id`, `kode_produk`, `id_kategori`, `id_modal`, `id_stock`, `created_at`, `updated_at`) VALUES
(1, 'P000002', 1, 1, 1, '2021-12-08 17:00:00', '2021-12-08 17:00:00'),
(2, 'P000017', 1, 4, 4, '2021-12-11 03:57:07', '2021-12-11 03:57:07'),
(3, 'P000018', 4, 5, 5, '2021-12-11 04:42:48', '2021-12-11 04:42:48'),
(4, 'P000019', 1, 6, 6, '2021-12-11 05:04:26', '2021-12-11 05:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'ayam', '2021-11-27 18:38:50', '2021-11-27 18:38:50'),
(2, 'daging', '2021-11-27 18:38:54', '2021-11-27 18:38:54'),
(3, 'belut', '2021-11-27 18:38:57', '2021-11-27 18:38:57'),
(4, 'lain-lain', '2021-11-27 18:39:01', '2021-11-27 18:39:01'),
(5, 'minuman', '2021-11-27 18:39:06', '2021-11-27 18:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modal`
--

CREATE TABLE `modal` (
  `id` int(10) UNSIGNED NOT NULL,
  `modal_product` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modal`
--

INSERT INTO `modal` (`id`, `modal_product`, `created_at`, `updated_at`) VALUES
(1, 9000000, '2021-12-08 17:00:00', '2021-12-08 17:00:00'),
(2, 9000, '2021-12-11 03:52:44', '2021-12-11 03:52:44'),
(3, 9000, '2021-12-11 03:55:37', '2021-12-11 03:55:37'),
(4, 1000, '2021-12-11 03:57:07', '2021-12-11 04:01:29'),
(5, 200, '2021-12-11 04:42:48', '2021-12-11 04:42:48'),
(6, 2312, '2021-12-11 05:04:26', '2021-12-11 05:04:26');

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
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT '0',
  `bayar` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT '0',
  `bayar` int(11) NOT NULL DEFAULT '0',
  `diterima` int(11) NOT NULL DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(5, NULL, 7, 131000, 0, 131000, 0, 1, '2021-11-28 08:49:00', '2021-11-28 08:53:34'),
(6, NULL, 1, 20000, 0, 20000, 0, 1, '2021-11-29 02:37:00', '2021-11-29 02:37:21'),
(7, NULL, 6, 90000, 0, 90000, 0, 1, '2021-11-29 02:37:41', '2021-11-29 02:37:53'),
(10, NULL, 1, 20000, 0, 20000, 0, 1, '2021-11-29 10:07:30', '2021-11-29 10:07:36'),
(11, NULL, 1, 25000, 0, 25000, 0, 1, '2021-11-29 10:07:43', '2021-11-29 10:07:56'),
(12, NULL, 4, 85000, 0, 85000, 0, 1, '2021-11-30 03:02:12', '2021-11-30 03:02:39'),
(19, NULL, 5, 75000, 0, 75000, 0, 1, '2021-12-01 09:15:50', '2021-12-01 09:15:57'),
(20, NULL, 4, 62000, 0, 62000, 0, 1, '2021-12-01 09:30:59', '2021-12-01 09:31:21'),
(22, NULL, 6, 110000, 0, 110000, 0, 1, '2021-12-01 22:33:56', '2021-12-01 22:34:28'),
(23, NULL, 0, 0, 0, 0, 0, 1, '2021-12-01 22:35:28', '2021-12-01 22:35:28'),
(24, NULL, 1, 6000, 0, 6000, 0, 1, '2021-12-01 22:36:40', '2021-12-01 22:36:46'),
(25, NULL, 0, 0, 0, 0, 0, 1, '2021-12-01 22:39:09', '2021-12-01 22:39:09'),
(26, NULL, 1, 20000, 0, 20000, 0, 1, '2021-12-01 22:51:00', '2021-12-01 22:51:10'),
(27, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 01:27:14', '2021-12-02 01:27:14'),
(28, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 20:16:34', '2021-12-02 20:16:34'),
(29, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 20:18:18', '2021-12-02 20:18:18'),
(30, NULL, 3, 90000, 0, 90000, 0, 1, '2021-12-02 20:54:21', '2021-12-02 20:54:41'),
(31, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 23:24:41', '2021-12-02 23:24:41'),
(32, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 23:24:44', '2021-12-02 23:24:44'),
(33, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 23:24:57', '2021-12-02 23:24:57'),
(34, NULL, 1, 6000, 0, 6000, 0, 1, '2021-12-02 23:26:25', '2021-12-02 23:26:33'),
(35, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 23:26:36', '2021-12-02 23:26:36'),
(36, NULL, 0, 0, 0, 0, 0, 1, '2021-12-02 23:28:20', '2021-12-02 23:28:20'),
(37, NULL, 0, 0, 0, 0, 0, 1, '2021-12-08 15:47:29', '2021-12-08 15:47:29'),
(38, NULL, 0, 0, 0, 0, 0, 1, '2021-12-09 08:15:09', '2021-12-09 08:15:09'),
(39, NULL, 0, 0, 0, 0, 0, 1, '2021-12-09 08:17:55', '2021-12-09 08:17:55'),
(40, NULL, 0, 0, 0, 0, 0, 1, '2021-12-10 02:02:35', '2021-12-10 02:02:35'),
(41, NULL, 4, 40000, 0, 32000, 50000, 1, '2021-12-10 10:15:34', '2021-12-10 11:09:10'),
(42, NULL, 0, 0, 0, 0, 0, 1, '2021-12-10 11:16:11', '2021-12-10 11:16:11'),
(43, NULL, 10, 100000, 0, 80000, 100000, 1, '2021-12-10 11:21:26', '2021-12-10 11:21:59'),
(44, NULL, 0, 0, 0, 0, 0, 1, '2021-12-11 04:01:44', '2021-12-11 04:01:44'),
(45, NULL, 0, 0, 0, 0, 0, 1, '2021-12-11 07:56:32', '2021-12-11 07:56:32'),
(46, NULL, 0, 0, 0, 0, 0, 1, '2021-12-11 08:32:05', '2021-12-11 08:32:05');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT '0',
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 15000, 1, 0, 15000, '2021-11-28 08:49:06', '2021-11-28 08:49:06'),
(2, 5, 4, 20000, 1, 0, 20000, '2021-11-28 08:49:11', '2021-11-28 08:49:11'),
(3, 5, 3, 20000, 1, 0, 20000, '2021-11-28 08:49:14', '2021-11-28 08:49:14'),
(4, 5, 6, 25000, 3, 0, 75000, '2021-11-28 08:49:17', '2021-11-28 08:49:27'),
(5, 5, 9, 1000, 1, 0, 1000, '2021-11-28 08:49:19', '2021-11-28 08:49:19'),
(6, 6, 4, 20000, 1, 0, 20000, '2021-11-29 02:37:18', '2021-11-29 02:37:18'),
(7, 7, 1, 15000, 3, 0, 45000, '2021-11-29 02:37:44', '2021-11-29 02:37:49'),
(8, 7, 2, 15000, 3, 0, 45000, '2021-11-29 02:37:46', '2021-11-29 02:37:52'),
(9, 10, 5, 20000, 1, 0, 20000, '2021-11-29 10:07:35', '2021-11-29 10:07:35'),
(10, 11, 6, 25000, 1, 0, 25000, '2021-11-29 10:07:49', '2021-11-29 10:07:49'),
(11, 12, 1, 15000, 1, 0, 15000, '2021-11-30 03:02:16', '2021-11-30 03:02:16'),
(12, 12, 6, 25000, 1, 0, 25000, '2021-11-30 03:02:19', '2021-11-30 03:02:19'),
(13, 12, 5, 20000, 1, 0, 20000, '2021-11-30 03:02:28', '2021-11-30 03:02:28'),
(14, 12, 7, 25000, 1, 0, 25000, '2021-11-30 03:02:38', '2021-11-30 03:02:38'),
(20, 19, 2, 15000, 5, 0, 75000, '2021-12-01 09:15:53', '2021-12-01 09:15:56'),
(21, 20, 6, 25000, 2, 0, 50000, '2021-12-01 09:31:08', '2021-12-01 09:31:17'),
(22, 20, 11, 6000, 2, 0, 12000, '2021-12-01 09:31:14', '2021-12-01 09:31:18'),
(25, 22, 4, 20000, 4, 0, 80000, '2021-12-01 22:34:09', '2021-12-01 22:34:12'),
(26, 22, 1, 15000, 2, 0, 30000, '2021-12-01 22:34:18', '2021-12-01 22:34:19'),
(27, 24, 11, 6000, 1, 0, 6000, '2021-12-01 22:36:45', '2021-12-01 22:36:45'),
(28, 26, 5, 20000, 1, 0, 20000, '2021-12-01 22:51:08', '2021-12-01 22:51:08'),
(29, 30, 8, 30000, 3, 0, 90000, '2021-12-02 20:54:33', '2021-12-02 20:54:39'),
(30, 33, 1, 15000, 1, 0, 15000, '2021-12-02 23:25:02', '2021-12-02 23:25:02'),
(31, 34, 11, 6000, 1, 0, 6000, '2021-12-02 23:26:32', '2021-12-02 23:26:32'),
(32, 39, 1, 10000, 1, 0, 10000, '2021-12-09 09:05:29', '2021-12-09 09:05:29'),
(39, 40, 1, 10000, 3, 0, 30000, '2021-12-10 03:36:37', '2021-12-10 03:37:01'),
(43, 41, 1, 10000, 4, 0, 40000, '2021-12-10 10:34:37', '2021-12-10 10:36:34'),
(45, 42, 1, 10000, 3, 0, 30000, '2021-12-10 11:16:54', '2021-12-10 11:17:14'),
(46, 43, 1, 10000, 10, 0, 100000, '2021-12-10 11:21:32', '2021-12-10 11:21:39'),
(47, 44, 2, 5000, 5, 0, 25000, '2021-12-11 04:01:55', '2021-12-11 04:02:05');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(10) NOT NULL,
  `kode_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_produk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `kode_produk`, `nama_produk`, `photo`, `price`, `created_at`, `updated_at`) VALUES
(1, 'P000001', 'ayam bakar merah', NULL, 10000, '2021-11-28 01:43:03', '2021-12-01 15:34:28'),
(2, 'P000002', 'ayam bakar kuning', NULL, 10000, '2021-11-28 01:43:25', '2021-12-01 02:16:22'),
(3, 'P000003', 'ayam bakar merah dengan nasi', NULL, 15000, '2021-11-28 01:43:52', '2021-11-28 01:53:34'),
(4, 'P000004', 'ayam bakar kuning dengan nasi', NULL, 15000, '2021-11-28 01:44:16', '2021-12-01 15:34:28'),
(5, 'P000005', 'belut sambal ijo', NULL, 15000, '2021-11-28 01:44:36', '2021-12-01 15:51:10'),
(6, 'P000006', 'belut sambal ijo dengan nasi', NULL, 20000, '2021-11-28 01:44:59', '2021-12-01 02:31:21'),
(7, 'P000007', 'rawon', NULL, 20000, '2021-11-28 01:45:22', '2021-11-29 20:02:39'),
(8, 'P000008', 'rawon dengan nasi', NULL, 25000, '2021-11-28 01:45:50', '2021-12-02 13:54:41'),
(9, 'P000009', 'krupuk', NULL, 800, '2021-11-28 01:47:18', '2021-11-28 01:53:34'),
(10, 'P000010', 'teh manis hangat / es', NULL, 3000, '2021-11-28 01:47:47', '2021-11-28 01:47:47'),
(11, 'P000011', 'jeruk manis hangat / es', NULL, 4000, '2021-11-28 01:48:10', '2021-12-02 16:26:33'),
(13, 'P000012', 'product20', NULL, 900, '2021-12-09 07:30:32', '2021-12-09 07:30:32'),
(14, 'P000014', 'produk nih', NULL, 20000, '2021-12-11 03:52:43', '2021-12-11 03:52:43'),
(16, 'P000015', 'produk nih2', NULL, 20000, '2021-12-11 03:55:37', '2021-12-11 03:55:37'),
(17, 'P000017', 'ayam penyet ini', NULL, 5000, '2021-12-11 03:57:07', '2021-12-11 04:01:29'),
(18, 'P000018', 'mproduk', '', 9000, '2021-12-11 04:42:48', '2021-12-11 04:42:48'),
(19, 'P000019', 'wdqwd', '', 4444444, '2021-12-11 05:04:26', '2021-12-11 05:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MSfYl3AoB16m0VDJ8LDG8XR2O6pNtHi7BHIQmPam', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.93 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiNkdrdGlkMUJOM05LUTdkeDhSOUg2c1QyUU41YUg0NEhGdGxJQUNxOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHA6Ly9sb2NhbGhvc3QvZnJlZWxhbmNlL2Jqb3Bvcy9iam9wb3Mva2F0ZWdvcmkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkc0JobGxtTzl6dzNYUXZudHdwS2haZVdZS0pvLkVXb3BZQmlLcUU5WFk2Q1FRLktBLzYwVy4iO3M6MTI6ImlkX3Blbmp1YWxhbiI7aTo0Njt9', 1639241096);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT '0',
  `path_logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_kartu_member` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'WAROENG  B-JO', 'Metland Cileungsi Sektor 6 FD2 No.8', '085223830757', 1, 5, '/img/logo-20211129075750.png', '/img/member.png', NULL, '2021-11-29 00:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(10) UNSIGNED NOT NULL,
  `stok_produk` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `stok_produk`, `created_at`, `updated_at`) VALUES
(1, 2, '2021-12-08 17:00:00', '2021-12-08 17:00:00'),
(2, 100, '2021-12-11 03:52:44', '2021-12-11 03:52:44'),
(3, 100, '2021-12-11 03:55:37', '2021-12-11 03:55:37'),
(4, 495, '2021-12-11 03:57:07', '2021-12-11 04:18:08'),
(5, 90, '2021-12-11 04:42:48', '2021-12-11 04:42:48'),
(6, 22, '2021-12-11 05:04:26', '2021-12-11 05:04:26');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `telepon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'owner@gmail.com', NULL, '$2y$10$sBhllmO9zw3XQvntwpKhZeWYKJo.EWopYBiKqE9XY6CQQ.KA/60W.', '/img/logo-20211129093428.png', 1, NULL, NULL, NULL, NULL, NULL, '2021-11-25 09:56:08', '2021-11-29 02:34:28'),
(2, 'kasir01', 'kasir01@gmail.com', NULL, '$2y$10$bRZRwEg3wbd30A77a7TyiOoj8jPBlEAX6ykeq7miym/nGST8TmXNi', NULL, 2, NULL, NULL, NULL, NULL, NULL, '2021-11-25 09:57:41', '2021-11-25 09:57:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `goods_master`
--
ALTER TABLE `goods_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modal`
--
ALTER TABLE `modal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_code_produk_unique` (`kode_produk`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `goods_master`
--
ALTER TABLE `goods_master`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
