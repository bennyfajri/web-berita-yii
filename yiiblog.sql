-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 08:22 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yiiblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(255) CHARACTER SET utf8 NOT NULL,
  `isi_berita` text CHARACTER SET utf8 NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `jml_baca` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `judul`, `isi_berita`, `id_kategori`, `jml_baca`, `id_user`, `date_created`) VALUES
(1, 'Profil Penulis', 'Hi!\r\nPerkenalkan nama saya muhammad beni fajri, biasa dipanggil fajri, beralamatkan di jalan surau gadang rt 02 rw 03 kelurahan koto panjang ikur koto. Saat ini sedang kuliah di Politeknik Negeri Padang\r\nHobby saya yaitu jogging dan membaca', 3, 2, 1, '2021-01-27 05:00:52'),
(2, 'Tetap Fokus Walau Dirumah', 'Tetapkan niat yang kuat dalam belajar. Beri tubuh dan pikiran istirahat secara berkala tetapi jangan sampai kelalapan. jangan keluar rumah kecuali ada keperluan mendadak. jangan malu untuk bertanya dikala anda merasa buntu. ', 3, 14, 1, '2021-01-27 05:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`, `ket`) VALUES
(1, 'Olahraga', 'Olahraga'),
(2, 'Politik', 'Politik'),
(3, 'Life Style', 'Life Style'),
(4, 'Hobby', 'Hobby'),
(5, 'Travel', 'Travel');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_berita` int(11) NOT NULL,
  `nama` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `isi_komentar` text CHARACTER SET utf8 NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama`, `email`, `isi_komentar`, `date_created`) VALUES
(1, 2, 'anonim', 'xxxxx@gmail.com', 'beritanya kurang berpoin', '2021-01-27 12:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `muhammadbenifajri_1811081018`
--

CREATE TABLE `muhammadbenifajri_1811081018` (
  `id_user` int(11) NOT NULL,
  `nama_depan` varchar(30) CHARACTER SET utf8 NOT NULL,
  `nama_belakang` varchar(50) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `auth_key` varchar(31) CHARACTER SET utf8 NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `role` smallint(6) NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `muhammadbenifajri_1811081018`
--

INSERT INTO `muhammadbenifajri_1811081018` (`id_user`, `nama_depan`, `nama_belakang`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'Muhammad', 'Beni Fajri', 'bennyfajri', 'lxXDjkEDi7qCzdn-vZ9bNQ6kJEjgduI', '$2y$13$lxdikWt8oKGNowt1UxTjWusldgoxWT5QQGimmkmSRNCR8Ddk/C2uy', NULL, 'm.b.fajri06@gmail.com', 0, 10, 1611736298, 1611736298, 'TLD-PX8mRNOp9CdrOwCmSVcmQTyg5BZN_1611736298');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`),
  ADD KEY `id_berita` (`id_berita`);

--
-- Indexes for table `muhammadbenifajri_1811081018`
--
ALTER TABLE `muhammadbenifajri_1811081018`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `muhammadbenifajri_1811081018`
--
ALTER TABLE `muhammadbenifajri_1811081018`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `berita`
--
ALTER TABLE `berita`
  ADD CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `muhammadbenifajri_1811081018` (`id_user`);

--
-- Constraints for table `komentar`
--
ALTER TABLE `komentar`
  ADD CONSTRAINT `komentar_ibfk_1` FOREIGN KEY (`id_berita`) REFERENCES `berita` (`id_berita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
