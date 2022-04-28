-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2022 at 09:59 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasa_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Aceh Utara', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(2, 'Aceh Timur', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(3, 'Kota Langsa', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(4, 'Aceh Tamiang', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(5, 'Kota Lhokseumawe', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(6, 'Bireuen', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(7, 'Pidie Jaya', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(8, 'Pidie', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(9, 'Aceh Besar', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(10, 'Kota Banda Aceh', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(11, 'Kota Sabang', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(12, 'Bener Meriah', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(13, 'Aceh Tengah', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(14, 'Gayo Lues', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(15, 'Aceh Jaya', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(16, 'Aceh Barat', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(17, 'Aceh Barat Daya', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(18, 'Aceh Selatan', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(19, 'Aceh Tenggara', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(20, 'Aceh Singkil', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(21, 'Nagan Raya', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(22, 'Kota Subulussalam', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(23, 'Simeulue', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `city_id`, `created_at`, `updated_at`) VALUES
(1, 'Arongan Lambalek', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(2, 'Bubon', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(3, 'Johan Pahlawan', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(4, 'Kaway XVI', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(5, 'Meureubo', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(6, 'Pantee Ceureumen', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(7, 'Panton Reu', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(8, 'Samatiga', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(9, 'Sungai Mas', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(10, 'Woyla', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(11, 'Woyla Barat', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(12, 'Woyla Timur', 16, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(13, 'Babahrot', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(14, 'Blangpidie', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(15, 'Jeumpa', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(16, 'Kuala Batee', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(17, 'Lembah Sabil', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(18, 'Manggeng', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(19, 'Setia', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(20, 'Susoh', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(21, 'Tangan-Tangan', 17, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(22, 'Baitussalam', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(23, 'Blang Bintang', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(24, 'Darul Imarah', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(25, 'Darul Kamal', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(26, 'Darussalam', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(27, 'Indrapuri', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(28, 'Ingin Jaya', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(29, 'Kota Jantho', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(30, 'Krung Barona Jaya', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(31, 'Kuta Baro', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(32, 'Kuta Cot Glie', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(33, 'Kuta Malaka', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(34, 'Lembah Seulawah', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(35, 'Leupung', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(36, 'Lhoknga', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(37, 'Lhoong', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(38, 'Mesjid Raya', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(39, 'Montasik', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(40, 'Peukan Bada', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(41, 'Pulo Aceh', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(42, 'Seulimeum', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(43, 'Simpang Tiga', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(44, 'Suka Makmur', 9, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(45, 'Darul Hikmah', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(46, 'Indra Jaya', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(47, 'Jaya', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(48, 'Krueng Sabee', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(49, 'Panga', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(50, 'Pasie Raya', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(51, 'Sampoiniet', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(52, 'Setia Bakti', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(53, 'Teunom', 15, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(54, 'Bakongan', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(55, 'Bakongan Timur', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(56, 'Kluet Selatan', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(57, 'Kluet Tengah', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(58, 'Kluet Timur', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(59, 'Kluet Utara', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(60, 'Kota Bahagia', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(61, 'Labuhan Haji', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(62, 'Labuhan Haji Barat', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(63, 'Labuhan Haji Timur', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(64, 'Meukek', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(65, 'Pasie Raja', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(66, 'Samadua', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(67, 'Sawang', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(68, 'Tapak Tuan', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(69, 'Trumon', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(70, 'Trumon Tengah', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(71, 'Trumon Timur', 18, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(72, 'Danau Paris', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(73, 'Gunung Mariah', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(74, 'Kuala Baru', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(75, 'Kuta Baharu', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(76, 'Pulau Banyak', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(77, 'Pulau Banyak Barat', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(78, 'Simpang Kanan', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(79, 'Singkil', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(80, 'Singkil Utara', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(81, 'Singkohor', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(82, 'Suro Makmur', 20, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(83, 'Banda Mulya', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(84, 'Bandar Pusaka', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(85, 'Bendahara', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(86, 'Karang Baru', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(87, 'Kejuruan Muda', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(88, 'Kualasimpang', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(89, 'Manyak Payed', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(90, 'Rantau', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(91, 'Sekerak', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(92, 'Seruway', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(93, 'Tamiang Hulu', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(94, 'Tenggulun', 4, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(95, 'Atu Lintang', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(96, 'Bebesen', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(97, 'Bies', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(98, 'Bintang', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(99, 'Celala', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(100, 'Jagong Jeget', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(101, 'Kebayakan', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(102, 'Ketol', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(103, 'Kute Panang', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(104, 'Laut Tawar', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(105, 'Linge', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(106, 'Pegasing', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(107, 'Rusip Antara', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(108, 'Silih Nara', 13, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(109, 'Babul Makmur', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(110, 'Babul Rahmat', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(111, 'Babussalam', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(112, 'Badar', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(113, 'Bambel', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(114, 'Bukit Tusam', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(115, 'Darul Hasanah', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(116, 'Deleng Pokhkisen', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(117, 'Ketambe', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(118, 'Lawe Alas', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(119, 'Lawe Bulan', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(120, 'Lawe Sigala-Gala', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(121, 'Lawe Sumur', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(122, 'Lueser', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(123, 'Semadam', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(124, 'Tanoh Alas', 19, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(125, 'Banda Alam', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(126, 'Birem Bayeun', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(127, 'Darul Aman', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(128, 'Darul Falah', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(129, 'Darul Ihsan', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(130, 'Idi Rayeuk', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(131, 'Idi Timur', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(132, 'Idi Tunong', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(133, 'Indra Makmur', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(134, 'Julok', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(135, 'Madat', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(136, 'Nurussalam', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(137, 'Pante Beudari', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(138, 'Peudawa', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(139, 'Peunaron', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(140, 'Peureulak', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(141, 'Peureulak Barat', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(142, 'Peureulak Timur', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(143, 'Rantau Selamat', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(144, 'Ranto Peureulak', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(145, 'Serba Jadi', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(146, 'Simpang Jernih', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(147, 'Simpang Ulim', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(148, 'Sungai Raya', 2, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(149, 'Baktiya', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(150, 'Baktiya Barat', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(151, 'Banda Baro', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(152, 'Cot Girek', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(153, 'Dewantara', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(154, 'Geureudong Pase', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(155, 'Kuta Makmur', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(156, 'Langkahan', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(157, 'Lapang', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(158, 'Lhoksukon', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(159, 'Matangkuli', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(160, 'Meurah Mulia', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(161, 'Muara Batu', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(162, 'Nibong', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(163, 'Nisam', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(164, 'Nisam Antara', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(165, 'Paya Bakong', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(166, 'Pirak Timu', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(167, 'Samudera', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(168, 'Sawang', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(169, 'Seunuddon', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(170, 'Simpang Keramat', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(171, 'Syamtalira Aron', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(172, 'Syamtalira Bayu', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(173, 'Tanah Jambo Aye', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(174, 'Tanah Luas', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(175, 'Tanah Pasir', 1, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(176, 'Bandar', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(177, 'Bener Kelipah', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(178, 'Bukit', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(179, 'Gajah Putih', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(180, 'Mesidah', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(181, 'Permata', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(182, 'Pintu Rime Gayo', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(183, 'Syiah Utama', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(184, 'Timang Gajah', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(185, 'Wih Pesam', 12, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(186, 'Ganda Pura', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(187, 'Jangka', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(188, 'Jeumpa', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(189, 'Jeunib', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(190, 'Juli', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(191, 'Kota Juang', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(192, 'Kuala', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(193, 'Kuta Blang', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(194, 'Makmur', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(195, 'Pandrah', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(196, 'Peudada', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(197, 'Peulimbang', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(198, 'Peusangan', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(199, 'Peusangan Selatan', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(200, 'Peusangan Siblah Krueng', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(201, 'Samalanga', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(202, 'Simpang Mamplam', 6, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(203, 'Blang Pegayon', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(204, 'Blangjerango', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(205, 'Blangkejeren', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(206, 'Dabun Gelang', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(207, 'Kutapanjang', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(208, 'Pantan Cuaca', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(209, 'Pining', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(210, 'Putri Betung', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(211, 'Rikit Gaib', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(212, 'Terangun', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(213, 'Tripe Jaya', 14, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(214, 'Beutong', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(215, 'Beutong Ateuh Banggalan', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(216, 'Darul Makmur', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(217, 'Kuala', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(218, 'Kuala Pesisir', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(219, 'Seunagan', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(220, 'Seunagan Timur', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(221, 'Suka Makmue', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(222, 'Tadu Raya', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(223, 'Tripa Makmur', 21, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(224, 'Batee', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(225, 'Delima', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(226, 'Geumpang', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(227, 'Glumpang Baro', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(228, 'Glumpang Tiga', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(229, 'Grong-Grong', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(230, 'Indrajaya', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(231, 'Kembang Tanjung', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(232, 'Keumala', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(233, 'Kota Sigli', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(234, 'Mane', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(235, 'Mila', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(236, 'Muara Tiga', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(237, 'Mutiara', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(238, 'Mutiara Timur', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(239, 'Padang Tiji', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(240, 'Peukan Baro', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(241, 'Pidie', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(242, 'Sakti', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(243, 'Simpang Tiga', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(244, 'Tangse', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(245, 'Tiro/Truseb', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(246, 'Titeu', 8, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(247, 'Bandar Baru', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(248, 'Bandar Dua', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(249, 'Jangka Buya', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(250, 'Meurah Dua', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(251, 'Meureudu', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(252, 'Panteraja', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(253, 'Trienggadeng', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(254, 'Ulim', 7, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(255, 'Alafan', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(256, 'Salang', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(257, 'Simeulue Barat', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(258, 'Simeulue Cut', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(259, 'Simeulue Tengah', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(260, 'Simeulue Timur', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(261, 'Teluk Dalam', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(262, 'Teupah Barat', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(263, 'Teupah Selatan', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(264, 'Teupah Tengah', 23, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(265, 'Baiturrahman', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(266, 'Banda Raya', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(267, 'Jaya Baru', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(268, 'Kuta Alam', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(269, 'Kuta Raja', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(270, 'Lueng Bata', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(271, 'Meuraxa', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(272, 'Syiah Kuala', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(273, 'Ulee Kareng', 10, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(274, 'Langsa Barat', 3, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(275, 'Langsa Baro', 3, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(276, 'Langsa Kota', 3, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(277, 'Langsa Lama', 3, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(278, 'Langsa Timur', 3, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(279, 'Banda Sakti', 5, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(280, 'Blang Mangat', 5, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(281, 'Muara Dua', 5, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(282, 'Muara Satu', 5, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(283, 'Sukajaya', 11, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(284, 'Sukakarya', 11, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(285, 'Longkib', 22, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(286, 'Penanggalan', 22, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(287, 'Rundeng', 22, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(288, 'Simpang Kiri', 22, '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(289, 'Sultan Daulat', 22, '2022-04-26 00:58:40', '2022-04-26 00:58:40');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin Utama', '2022-04-26 00:58:40', '2022-04-26 00:58:40'),
(2, 'Admin Wilayah', '2022-04-26 00:58:40', '2022-04-26 00:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `member_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Pria','Wanita') COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_of_born` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_born` date NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_child` int(11) NOT NULL,
  `number_of_sibling` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_enc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_place_of_born` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_date_of_born` date NOT NULL,
  `father_place_of_death` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_date_of_death` date NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_place_of_born` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_date_of_born` date NOT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_03_07_080441_create_members_table', 1),
(5, '2022_03_07_080853_create_provinces_table', 1),
(6, '2022_03_07_081026_create_cities_table', 1),
(7, '2022_03_07_081126_create_districts_table', 1),
(8, '2022_03_07_131434_create_levels_table', 1);

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
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Aceh', '2022-04-26 00:58:40', '2022-04-26 00:58:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) UNSIGNED DEFAULT NULL,
  `level_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `city_id`, `level_id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `location`, `about`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Admin JASA', 'adminjasa@gmail.com', NULL, '$2y$10$a9a/bqVJkHD9lgbS/zxaSu7zLGHr.d0Nfj3Lbs5eDrAIAv/AbjkkO', NULL, NULL, NULL, NULL, '2022-04-26 00:58:41', '2022-04-26 00:58:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
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
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
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
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
