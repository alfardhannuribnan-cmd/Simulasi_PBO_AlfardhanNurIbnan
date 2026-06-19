-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2026 at 03:19 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simulasi_pbo_a_alfardhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pendaftaran`
--

CREATE TABLE `tabel_pendaftaran` (
  `id_pendaftaran` int NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `asal_sekolah` varchar(150) NOT NULL,
  `nilai_ujian` decimal(5,2) DEFAULT NULL,
  `biaya_pendaftaran_dasar` decimal(10,2) DEFAULT NULL,
  `jalur_pendaftaran` enum('Reguler','Prestasi','Kedinasan') NOT NULL,
  `pilihan_prodi` varchar(100) DEFAULT NULL,
  `lokasi_kampus` varchar(100) DEFAULT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `tingkat_prestasi` varchar(100) DEFAULT NULL,
  `sk_ikatan_dinas` varchar(100) DEFAULT NULL,
  `instansi_sponsor` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_pendaftaran`
--

INSERT INTO `tabel_pendaftaran` (`id_pendaftaran`, `nama_calon`, `asal_sekolah`, `nilai_ujian`, `biaya_pendaftaran_dasar`, `jalur_pendaftaran`, `pilihan_prodi`, `lokasi_kampus`, `jenis_prestasi`, `tingkat_prestasi`, `sk_ikatan_dinas`, `instansi_sponsor`) VALUES
(1, 'Ahmad Fauzan', 'SMAN 1 Mojokerto', 85.00, 300000.00, 'Reguler', 'Informatika', 'Kampus Pusat', NULL, NULL, NULL, NULL),
(2, 'Budi Santoso', 'SMKN 2 Surabaya', 80.00, 300000.00, 'Reguler', 'Sistem Informasi', 'Kampus Timur', NULL, NULL, NULL, NULL),
(3, 'Siti Aminah', 'SMAN 2 Lamongan', 88.00, 300000.00, 'Reguler', 'Teknik Industri', 'Kampus Barat', NULL, NULL, NULL, NULL),
(4, 'Dina Putri', 'SMAN 1 Jombang', 82.00, 300000.00, 'Reguler', 'Manajemen', 'Kampus Pusat', NULL, NULL, NULL, NULL),
(5, 'Rizky Maulana', 'SMKN 1 Kediri', 84.00, 300000.00, 'Reguler', 'Informatika', 'Kampus Timur', NULL, NULL, NULL, NULL),
(6, 'Ayu Lestari', 'SMAN 5 Malang', 89.00, 300000.00, 'Reguler', 'Akuntansi', 'Kampus Barat', NULL, NULL, NULL, NULL),
(7, 'Nabila Zahra', 'SMAN 1 Gresik', 87.00, 300000.00, 'Reguler', 'Bisnis Digital', 'Kampus Pusat', NULL, NULL, NULL, NULL),
(8, 'Raka Putra', 'SMAN 1 Sidoarjo', 92.00, 250000.00, 'Prestasi', NULL, NULL, 'Olimpiade Matematika', 'Nasional', NULL, NULL),
(9, 'Nisa Rahma', 'SMAN 3 Mojokerto', 91.00, 250000.00, 'Prestasi', NULL, NULL, 'Basket', 'Provinsi', NULL, NULL),
(10, 'Fajar Nugroho', 'SMKN 1 Tuban', 90.00, 250000.00, 'Prestasi', NULL, NULL, 'Robotik', 'Nasional', NULL, NULL),
(11, 'Nadia Syifa', 'SMAN 2 Pasuruan', 95.00, 250000.00, 'Prestasi', NULL, NULL, 'Karya Ilmiah', 'Internasional', NULL, NULL),
(12, 'Yoga Saputra', 'SMAN 1 Madiun', 89.00, 250000.00, 'Prestasi', NULL, NULL, 'Futsal', 'Kabupaten', NULL, NULL),
(13, 'Kevin Pratama', 'SMAN 6 Surabaya', 94.00, 250000.00, 'Prestasi', NULL, NULL, 'Programming', 'Nasional', NULL, NULL),
(14, 'Alya Nurfadila', 'SMAN 1 Bojonegoro', 93.00, 250000.00, 'Prestasi', NULL, NULL, 'Debat Bahasa Inggris', 'Internasional', NULL, NULL),
(15, 'Bagus Ramadhan', 'SMAN 1 Nganjuk', 86.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK001', 'Kementerian Kominfo'),
(16, 'Tania Putri', 'SMAN 4 Surabaya', 88.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK002', 'Pemprov Jawa Timur'),
(17, 'Dimas Aditya', 'SMKN 2 Malang', 84.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK003', 'Kementerian Perhubungan'),
(18, 'Rina Maharani', 'SMAN 1 Kediri', 90.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK004', 'Kementerian Pendidikan'),
(19, 'Arif Setiawan', 'SMKN 1 Mojokerto', 87.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK005', 'Badan Kepegawaian Negara'),
(20, 'Citra Larasati', 'SMAN 2 Jombang', 91.00, 200000.00, 'Kedinasan', NULL, NULL, NULL, NULL, 'SK006', 'Kementerian Keuangan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_pendaftaran`
--
ALTER TABLE `tabel_pendaftaran`
  MODIFY `id_pendaftaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
