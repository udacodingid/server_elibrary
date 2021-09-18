-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Sep 2021 pada 05.34
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elibrary`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_library_books`
--

CREATE TABLE `tb_library_books` (
  `id_library_books` int(11) NOT NULL,
  `book_title` text NOT NULL,
  `book_cover` varchar(255) NOT NULL,
  `book_file` varchar(255) NOT NULL,
  `book_desc` text NOT NULL,
  `total_pages` varchar(11) NOT NULL,
  `language` varchar(25) NOT NULL,
  `release_at` varchar(11) NOT NULL,
  `penulis` varchar(125) NOT NULL,
  `book_created_by` int(22) NOT NULL,
  `book_createdAt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_library_books`
--

INSERT INTO `tb_library_books` (`id_library_books`, `book_title`, `book_cover`, `book_file`, `book_desc`, `total_pages`, `language`, `release_at`, `penulis`, `book_created_by`, `book_createdAt`) VALUES
(1, 'Happy Flutter', 'book_1.png', 'pdf1.file', 'Buku Happy Flutter Basic', '115', 'Bahasa Indonesia', '2019', 'Rizki Syaputra, Yusmi Putra', 2, '09-06-2021 11:22:57'),
(2, 'Enjoy Flutter', 'book_2.png', 'pdf3.file', 'Buku Enjoy  Flutter Intermediate', '125', 'Bahasa Indonesia', '2020', 'Rizki Syaputra, Yusmi Putra', 2, '09-06-2021 11:22:57'),
(3, 'Biografi Penulis', 'book_3.png', 'pdf2.file', 'Biografi Rizki', '165', 'Bahasa Indonesia', '2008', 'Rizki Syaputra', 2, '09-06-2021 11:22:57'),
(5, 'English Skill Boooster Grammar', 'book_4.png', 'pdf1.file', 'Buku ini berisi tentang Grammar yang bertujuan untuk memudahkan anda belajar English Grammar', '115', 'English', '2008', 'Johnson & Robin', 2, '09-06-2021 11:22:57'),
(6, 'Gusdur', 'book_5.png', 'pdf1.file', 'Buku Berisi tentang Profile seorang Gusdur. Salah Satu presiden Indonesia', '115', 'English', '2008', 'Johnson & Robin', 2, '09-06-2021 11:22:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_readers_book`
--

CREATE TABLE `tb_readers_book` (
  `id_readers_book` int(11) NOT NULL,
  `id_book` int(11) NOT NULL,
  `uuid_file` varchar(255) NOT NULL,
  `id_user_reader` int(11) NOT NULL,
  `open_bookAt` varchar(75) NOT NULL,
  `close_bookAt` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_readers_book`
--

INSERT INTO `tb_readers_book` (`id_readers_book`, `id_book`, `uuid_file`, `id_user_reader`, `open_bookAt`, `close_bookAt`) VALUES
(6, 3, '2147483647', 2, '10-06-2021 03:56:38', ''),
(7, 2, '121212', 2, '10-06-2021 03:57:27', '10-06-2021 04:07:09'),
(8, 2, '121212', 2, '10-06-2021 04:01:51', '10-06-2021 04:07:09'),
(9, 2, '2147483647', 2, '10-06-2021 04:07:31', ''),
(10, 2, '2147483647', 2, '10-06-2021 04:08:56', ''),
(11, 2, '2147483647', 2, '10-06-2021 04:26:32', ''),
(12, 3, '0', 2, '10-06-2021 04:29:15', ''),
(13, 3, '9', 2, '10-06-2021 04:32:09', ''),
(14, 3, '633', 2, '10-06-2021 04:58:40', ''),
(15, 3, '68770', 2, '10-06-2021 05:11:29', ''),
(16, 3, '0', 2, '10-06-2021 05:14:18', ''),
(17, 2, '2147483647', 2, '10-06-2021 05:16:41', ''),
(18, 3, '8', 2, '10-06-2021 05:25:05', ''),
(19, 3, '9', 2, '10-06-2021 05:25:52', ''),
(20, 3, '0', 2, '10-06-2021 05:27:51', ''),
(22, 3, 'c29512b7-a30f-48b7-9b03-a614ae33dc86', 2, '10-06-2021 05:30:07', ''),
(23, 2, '435435345sdsd3', 2, '10-06-2021 10:38:19', ''),
(24, 2, '342432324324', 2, '10-06-2021 10:39:43', ''),
(25, 2, '26561231', 2, '10-06-2021 10:40:12', ''),
(26, 1, 'a6a64f79-f60e-4d26-8f82-a97def037715', 3, '10-06-2021 10:53:16', '10-06-2021 11:02:14'),
(27, 1, 'fd46a6c2-c164-4d42-9ff2-db7001d3a629', 4, '10-06-2021 10:53:50', ''),
(28, 2, '43543534sasas5sdsd3', 2, '10-06-2021 10:57:38', ''),
(29, 2, 'd3baeba6-2e0d-4c39-bc7d-c58e008a4182', 2, '10-06-2021 11:00:44', ''),
(30, 1, 'b9ee0ad7-983d-4f33-813b-5f3dd3baf980', 4, '10-06-2021 11:00:55', ''),
(31, 3, '4a64c0b2-45b1-499c-be75-48b9cbcc1efd', 2, '10-06-2021 11:01:05', ''),
(32, 2, 'f7aebf48-68f7-4679-81a2-902abf327055', 2, '10-06-2021 11:09:07', ''),
(33, 3, '282a6d54-68aa-47e1-87f3-55636be71afd', 2, '10-06-2021 11:09:14', '10-06-2021 11:09:18'),
(34, 3, 'ecc64fc8-1fbb-4516-8100-10c143be59eb', 2, '10-06-2021 11:09:48', '10-06-2021 11:09:54'),
(35, 3, 'a93bbdd0-303c-4a58-9e78-49b888ffe598', 4, '10-06-2021 11:10:05', ''),
(36, 1, '2335b3ef-e659-44b1-844a-b50aef8f3b9d', 3, '10-06-2021 11:10:16', '10-06-2021 11:10:35'),
(37, 3, '5a35d173-a516-4f3a-b797-7be2bf0a9011', 4, '10-06-2021 11:11:17', ''),
(38, 3, '0087c738-8b7d-4b38-8280-f59a1fb29e97', 4, '10-06-2021 11:11:21', ''),
(39, 3, 'b0d10fcb-0ebd-4336-9dde-0afe2d60fbea', 4, '10-06-2021 11:12:10', ''),
(40, 1, '791e7204-fef9-45e0-a2a1-b8f90afe0422', 3, '10-06-2021 11:12:20', '10-06-2021 11:13:11'),
(41, 3, 'f7aa53a6-e9d5-472b-96d2-6f7453a6f663', 3, '11-06-2021 15:48:56', '11-06-2021 15:49:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user_name` varchar(17) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(125) NOT NULL,
  `address` text NOT NULL,
  `foto_user` varchar(225) NOT NULL,
  `id_level_user` int(11) NOT NULL,
  `id_departmen` int(11) NOT NULL,
  `sex` varchar(25) NOT NULL,
  `tgl_create_user` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user_name`, `email`, `password`, `address`, `foto_user`, `id_level_user`, `id_departmen`, `sex`, `tgl_create_user`) VALUES
(1, 'rizkipm', 'rizki@udacoding.com', '4297f44b13955235245b2497399d7a93', 'Tangerang Selatan', 'hh.jpg', 2, 1, 'Pria', '0000-00-00 00:00:00'),
(2, 'rizki_udin', 'rizki_udin@udacoding.com', '4297f44b13955235245b2497399d7a93', 'Tangerang Selatan', 'image_picker3415658024948731025.jpg', 1, 2, 'Pria', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_library_books`
--
ALTER TABLE `tb_library_books`
  ADD PRIMARY KEY (`id_library_books`);

--
-- Indeks untuk tabel `tb_readers_book`
--
ALTER TABLE `tb_readers_book`
  ADD PRIMARY KEY (`id_readers_book`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_library_books`
--
ALTER TABLE `tb_library_books`
  MODIFY `id_library_books` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_readers_book`
--
ALTER TABLE `tb_readers_book`
  MODIFY `id_readers_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
