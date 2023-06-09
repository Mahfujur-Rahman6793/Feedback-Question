-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 02:06 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sfraqgs`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `credit` double(8,2) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `department_id`, `code`, `title`, `credit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 18, 'RAB2222', 'Est aut ut doloribus.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(2, 17, 'XJP4206', 'Et ut minus.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(3, 19, 'ISK1277', 'Rerum officia incidunt nesciunt enim ducimus.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(4, 10, 'IBZ3263', 'Est in eveniet perspiciatis voluptatem eum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(5, 25, 'XAZ3102', 'Non eum perferendis officia.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(6, 21, 'LFF4296', 'Perferendis recusandae error eligendi.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(7, 9, 'MVN4152', 'Commodi non nihil commodi.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(8, 16, 'DLU3177', 'Cupiditate numquam quia et.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(9, 21, 'LTV4271', 'Laborum tenetur eveniet voluptatem necessitatibus non.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(10, 33, 'DHI3215', 'Natus unde autem.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(11, 30, 'UBT2290', 'Sed illo dicta eos illum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(12, 11, 'MQX4157', 'Iure similique distinctio quidem deserunt sapiente.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(13, 33, 'EPS2100', 'Voluptatem voluptas dolor nesciunt dolorum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(14, 32, 'OVZ4152', 'Qui voluptates cumque maiores suscipit sunt.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(15, 21, 'DVN1194', 'Fugiat est magnam impedit autem.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(16, 26, 'EFN3195', 'Sed nisi voluptatem omnis.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(17, 3, 'LRI1176', 'Doloribus ex quaerat inventore.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(18, 5, 'KWV3160', 'Fugiat mollitia iure sed et.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(19, 20, 'QRR4210', 'Consectetur et ut et sapiente inventore.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(20, 16, 'KDA1131', 'Consectetur omnis qui saepe.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(21, 20, 'TOI3167', 'Quis et soluta ut officiis ipsam.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(22, 24, 'URO1235', 'Voluptas omnis aliquid aperiam.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(23, 8, 'SKY2112', 'Quod vero sequi ullam.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(24, 16, 'UBW3220', 'Mollitia necessitatibus qui cumque beatae necessitatibus.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(25, 3, 'WWM3226', 'Quia officia reiciendis nemo.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(26, 8, 'XZC1243', 'Et rerum quae voluptas.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(27, 20, 'LUF2217', 'Tenetur reprehenderit dolorem et nihil excepturi.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(28, 14, 'KZB1187', 'Et eum molestiae.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(29, 28, 'JQO2109', 'Maiores consequatur a porro minus.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(30, 2, 'DHY2203', 'Sunt eum eius atque mollitia.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(31, 5, 'EVV3255', 'Voluptas facere debitis vitae.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(32, 19, 'EIP3126', 'Et vel ad ratione deleniti.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(33, 24, 'KWA1223', 'Vel beatae impedit saepe est.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(34, 8, 'NGU3298', 'Rem temporibus voluptatum delectus.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(35, 13, 'YOO3246', 'Consequatur libero aliquid.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(36, 16, 'UVQ3202', 'Consequuntur labore ea adipisci.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(37, 28, 'TOB1164', 'Quia labore pariatur corrupti.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(38, 20, 'ATT3184', 'Ipsam ex odio.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(39, 19, 'NQC2137', 'Sint neque numquam aperiam et quo.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(40, 15, 'EYM2183', 'Unde non vitae.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(41, 33, 'HCC3212', 'Et et laboriosam quae officia.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(42, 9, 'ECZ2137', 'Eligendi sit et error.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(43, 21, 'VSA2284', 'Id itaque ut.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(44, 32, 'LNQ2259', 'Officiis maxime est cupiditate placeat amet.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(45, 23, 'KAV3154', 'Dolores velit vel nulla.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(46, 8, 'GOT3274', 'Ratione sed dolores aut facilis.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(47, 9, 'EPJ3297', 'Veritatis rerum inventore magni debitis.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(48, 16, 'CXD3183', 'Rerum fugit qui necessitatibus dignissimos.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(49, 30, 'OKZ2213', 'Vero non dolor atque voluptatum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(50, 2, 'ZPG1194', 'Aut fugiat non.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(51, 7, 'GRQ4261', 'Similique qui est provident minus.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(52, 19, 'NFW1154', 'Et aut itaque quos.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(53, 15, 'GNT2210', 'Laudantium eius eveniet.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(54, 20, 'QNT4235', 'Ad exercitationem consequatur.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(55, 2, 'HXB4199', 'Veniam sit unde.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(56, 7, 'YJW1123', 'Incidunt earum sit temporibus quia illo.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(57, 32, 'UEY1178', 'Facere qui hic.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(58, 30, 'OMI3165', 'Modi sequi sunt debitis veritatis.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(59, 12, 'VGG4225', 'Ut natus accusantium ut ut.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(60, 13, 'ERV4132', 'Rerum corrupti ipsam.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(61, 26, 'OSV2273', 'Qui officia provident quos.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(62, 27, 'MMV2169', 'Eos ut ut neque laudantium.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(63, 26, 'IDN4144', 'Quis porro quia voluptatem qui.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(64, 27, 'FEL4197', 'Fugit eum aperiam non.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(65, 6, 'OAP1278', 'Odit temporibus tenetur est libero.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(66, 16, 'HZF2288', 'Repudiandae eos suscipit consequatur.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(67, 3, 'FIZ4132', 'Adipisci explicabo ullam vel quas.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(68, 20, 'SMR2267', 'Et aut temporibus est.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(69, 11, 'RZV3153', 'Ut dolorum nesciunt ex reprehenderit.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(70, 18, 'FJG2270', 'Autem ut in commodi qui.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(71, 16, 'VFY4275', 'Praesentium natus asperiores hic omnis modi.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(72, 26, 'HBC2195', 'Commodi sunt sit.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(73, 30, 'WWG3152', 'Odit sit deleniti amet ut illum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(74, 25, 'PEH1258', 'Consectetur accusamus id sit laboriosam.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(75, 29, 'EZH3246', 'Laudantium libero et.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(76, 26, 'JHD1153', 'Adipisci enim nulla.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(77, 1, 'XRK4121', 'Dolor alias ea id veniam enim.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(78, 6, 'NOO3223', 'Voluptatem fugit ducimus consequatur ut.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(79, 28, 'CIW1225', 'Facere rerum aut.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(80, 4, 'YLO1138', 'Magni aut repellendus delectus reiciendis.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(81, 4, 'THO3143', 'Veritatis est reiciendis.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(82, 24, 'OWR3299', 'Est aut maiores et labore quidem.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(83, 21, 'YWE4235', 'Corrupti dolore illum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(84, 19, 'TZZ3225', 'Id odio dolore natus dignissimos.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(85, 8, 'WAV1141', 'Omnis maxime dolor repellat.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(86, 15, 'IDJ3258', 'Et ullam odio.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(87, 15, 'UTA1189', 'Ad officiis consequatur doloremque.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(88, 1, 'THQ4245', 'Et exercitationem dolor repudiandae amet.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(89, 2, 'JAG1180', 'Nam quia consequuntur placeat.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(90, 13, 'HLL4290', 'Porro aliquid asperiores enim quaerat qui.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(91, 5, 'GNQ1220', 'Similique consequatur ducimus corrupti.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(92, 11, 'BRC4153', 'Qui esse consequatur.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(93, 29, 'XOW3137', 'Iste nemo praesentium sint.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(94, 31, 'OOD2151', 'Accusantium saepe amet et voluptas.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(95, 16, 'BZP3157', 'Pariatur et nemo ut quibusdam consectetur.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(96, 7, 'ECH1291', 'Voluptatem modi consequuntur.', 4.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(97, 8, 'UCT3250', 'Officiis dolore nesciunt consequatur vel.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(98, 3, 'IVY1224', 'Et pariatur libero labore cum cum.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(99, 9, 'ZTO1161', 'Saepe praesentium voluptatem.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(100, 9, 'OUE4215', 'Aut doloribus ut et eveniet.', 3.00, NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(101, 33, 'SE 3203', 'Software Metrics', 2.00, NULL, NULL, NULL),
(102, 33, 'SE 4203', 'Software Maintenance', 2.00, NULL, NULL, NULL),
(103, 33, 'CSE 2207', 'Database Management System-1', 2.00, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `course_user`
--

CREATE TABLE `course_user` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `course_user`
--

INSERT INTO `course_user` (`course_id`, `user_id`, `created_at`, `updated_at`) VALUES
(101, 11, '2023-06-10 12:50:59', NULL),
(102, 11, '2023-06-12 08:02:53', NULL),
(103, 11, '2023-06-12 08:04:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(1, 'Department of Computer Science and Telecommunication Engineering', 'CSTE', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(2, 'Department of Applied Chemistry and Chemical Engineering', 'ACCE', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(3, 'Department of Information and Communication Engineering', 'ICE', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(4, 'Department of Electrical and Electronic Engineering', 'EEE', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(5, 'Department of Fisheries and Marine Science', 'FIMS', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(6, 'Department of Pharmacy', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(7, 'Department of Microbiology', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(8, 'Department of Applied Mathematics', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(9, 'Department of Food Technology and Nutrition Science', 'FTNS', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(10, 'Department of Environmental Science and Disaster Management', 'ESDM', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(11, 'Department of Biotechnology and Genetic Engineering', 'BGE', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(12, 'Department of Agriculture', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(13, 'Department of Statistics', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(14, 'Department of Oceanography', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(15, 'Department of Biochemistry and Molecular Biology', 'BMB', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(16, 'Department of Zoology', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(17, 'Department of Soil, Water and Environment', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(18, 'Department of Chemistry', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(19, 'Department of Physics', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(20, 'Department of English', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(21, 'Department of Economics', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(22, 'Department of Bangladesh and Muktijuddho Studies', 'BMS', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(23, 'Department of Sociology', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(24, 'Department of Bangla', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(25, 'Department of Social Work', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(26, 'Department of Business Administration', 'DBA', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(27, 'Department of Management information Systems', 'MIS', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(28, 'Department of Tourism and Hospitality Management', 'THM', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(29, 'Department of Education', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(30, 'Department of Educational Administration', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(31, 'Department of Law', '', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(32, 'Department of Information Sciences and Library Management', 'ISLM', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(33, 'Software Engineering', 'SE', '2023-06-10 12:38:40', '2023-06-10 12:38:40');

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
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `scale_id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `user_id`, `course_id`, `scale_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 11, 101, 4, 'I thank you sir for all your efforts to help me in my studies. I am grateful to you sir for shaping me into who I am now.', '2023-06-10 21:24:02', '2023-06-10 21:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_logs`
--

CREATE TABLE `feedback_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback_logs`
--

INSERT INTO `feedback_logs` (`id`, `user_id`, `teacher_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 12, 11, 101, '2023-06-10 21:24:02', '2023-06-10 21:24:02');

-- --------------------------------------------------------

--
-- Table structure for table `generate_questions`
--

CREATE TABLE `generate_questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `total_marks` int(11) DEFAULT NULL,
  `total_questions` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `questions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`questions`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generate_questions`
--

INSERT INTO `generate_questions` (`id`, `user_id`, `course_id`, `duration`, `total_marks`, `total_questions`, `description`, `questions`, `created_at`, `updated_at`) VALUES
(5, 11, 101, 220, 10, 2, NULL, '[{\"type_id\":\"2\",\"type\":\"Scenario\",\"question_id\":\"515\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">Suppose that &ldquo;complexity&rdquo; of individual software modules is ranked (according to some specific criteria) as one of the following: {trivial, simple, moderate, complex, very complex, incomprehensible} Let M be any measure (in the representation sense) for this notion of complexity, and let S be a set of modules for each of which M has been computed.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">a. You want to indicate the average complexity of the modules in S. How would you do this in a meaningful way? (Briefly explain your choice.)<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">b. Explain why it is not meaningful to compute the mean of the Ms. (You should construct a statement involving means that you can prove is not meaningful.)<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">c. Give two examples of criteria that might be used to enable an assessor objectively to determine which of the complexity values a given module should be.<\\/p>\",\"marks\":\"10\",\"has_sub_questions\":false},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"519\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">A tool that computes the values of a set of code complexity metrics C1, C2, &hellip;, Cn is applied to a large number of systems and subsystems for which the number of defects D found in operations is known. Using Excel, a positive correlation is observed and a regression model of the form<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: center;\\\" align=\\\"center\\\">D = f(C1, C2, &hellip;, Cn)<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">is computed. The following quality assurance procedure is subsequently recommended:<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">Before any major system release the tool should be applied to extract the metrics C1, C2, &hellip;, Cn for each subsystem and the function f is then computed. Any subsystem for which f is above 25 must undergo additional testing. What concerns do you have about this quality assurance procedure?<\\/p>\",\"marks\":\"6\"},{\"question_id\":\"513\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">Explain why you would not conclude that the quality of program X was twice as great as program Y if integration testing revealed program X to have twice as many faults per KLOC than program Y.<\\/p>\",\"marks\":\"4\"}]}]', '2023-06-11 12:03:42', '2023-06-11 12:04:28'),
(6, 11, 102, 60, 20, 2, NULL, '[{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"526\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">The idea behind a project is that students should be able to access details of available placements via an intranet. When there is a placement opportunity for which they wish to be considered, they would be able to apply for it electronically. This would cause a copy of their CV, which would also be held online, to be sent to the potential employer. Details of interviews and placement offers would all be sent by e-mail. While some human intervention would be needed, the process would be automated as far as possible. You are required to produce a business case report for such an application, which justifies the potential development by showing that the value of its potential benefits outweighs its development and operational costs.<\\/p>\",\"marks\":\"6\"},{\"question_id\":\"524\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-family: \'Times New Roman\',serif;\\\">A manager is in charge of a sub-project of a larger project. The sub-project requires the transfer of paper documents into a computer-based document retrieval system and their subsequent indexing so that they can be accessed via key-words. Optical character readers are to be used for the initial transfer but the text then needs to be clerically checked and corrected by staff. The project is currently scheduled to take 12 months using permanent staff. A small budget is available to hire temporary staff in the case of staff absences through holidays, sickness or temporary transfer to other, more urgent, jobs. Discuss the control system that will need to be in place to control that sub-project.<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"2\",\"type\":\"Scenario\",\"question_id\":\"525\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">A software house has developed a customized order processing system for a client. You are an employee of the software house that has been asked to organize a training course for the end-users of the system. At present, a user handbook has been produced, but no specific training material. A plan is now needed for the project which will set up the delivery of the training courses. The project can be assumed to have been completed when the first training course starts. Among the things that will need to be considered are the following:<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">\\u25cf training materials will need to be designed and created;<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">\\u25cf a timetable will need to be drafted and agreed;<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">\\u25cf date(s) for the course will need to be arranged;<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">\\u25cf the people attending the course will need to be identified and notified;<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">\\u25cf rooms and computer facilities for the course will need to be provided<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">A Identify the main stakeholders for this project.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">B Draw up objectives for this project.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">C For the objectives, identify the measures of effectiveness.<\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">D For each objective, write down sub-objectives or goals and the stakeholders who will be responsible for their achievement.<\\/p>\",\"marks\":\"10\",\"has_sub_questions\":false}]', '2023-06-12 08:16:38', '2023-06-12 08:17:13'),
(7, 11, 102, 180, 70, 9, 'Answer any 7 question from 9', '[{\"type_id\":\"2\",\"type\":\"Scenario\",\"question_id\":\"535\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">An insurance company has examined the way that it settles house insurance claims. It decides to introduce a new computer-based claims settlement system which will reduce the time taken to settle claims. This reduction in effort is partly achieved by enabling the claims clerk to obtain the information needed directly, rather than having to go through other departments. Also, as part of the new process, new repair work will be allocated by the insurance company to authorized builders, decorators, plumbers etc., rather than the claimant having to make arrangements to get estimates, and so on.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) Explain the possible benefits and disbenefit <span style=\\\"mso-spacerun: yes;\\\">&nbsp;<\\/span>that might be generated by this application. Note that the benefits could come under the following headings:<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Mandatory compliance<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Quality of service<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Productivity<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">More motivated work force<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Internal management benefits<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Risk reduction<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Economy<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Revenue enhancement\\/acceleration<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Strategic fit<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">How could the actual benefit be assessed in each case?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) When the application is implemented, some of the claims staff at the insurance company complain about the additional stress of dealing with irate customers grumbling about tradespeople being slow to do repair work or about poor quality workmanship. Also, in some places there are shortages of qualified repair people leading to delays in getting work done.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Which projected benefi ts are being affected by these developments?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">How would you deal with these problems?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">How would you assess your success in dealing with these problems?<\\/span><\\/p>\",\"marks\":\"10\",\"has_sub_questions\":false},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"523\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">A public library is considering the implementation of a computer-based system to help administer book loans at libraries. ldentify the stakeholders in such a project.<\\/p>\",\"marks\":\"3\"},{\"question_id\":\"522\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">ldentify the main types of personnel employed in an information systems department. For each stage of a typical lS development project, list the types of personrrel who are likely to be involved?<\\/p>\",\"marks\":\"3\"},{\"question_id\":\"546\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">An invoicing system is to have the following transactions: amend invoice, produce invoice, produce monthly statements, record cash payment, clear paid invoices from database, create customer records, delete customer.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) What physical dependencies govern the order in which these transactions are implemented?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) How could the system be broken down into increments which would be of some value to the users (Hint &ndash; think about the problems of taking existing details onto a database when a system is first implemented)?<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"542\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">A software package is to be designed and built to assist in software cost estimation. It will input certain parameters and produce initial cost estimates to be used at bidding time.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) It has been suggested that a software prototype would be of value in these circumstances. Explain why this might be.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) Discuss how such prototyping could be controlled to ensure that it is conducted in an orderly and effective way and within a specified time span.<\\/span><\\/p>\",\"marks\":\"6\"},{\"question_id\":\"539\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">In order to carry out usability tests for a new word processing package, the software has to be written and debugged. User instructions have to be available describing how the package is to be used. These have to be scrutinized in order to plan and design the tests. Subjects who will use the package in the tests will need to be selected. As part of this selection process, they will have to complete a questionnaire giving details of their past experience of, and training in, typing and using word processing packages. The subjects will carry out the required tasks using the word processing package. The tasks will be timed and any problems the subjects encounter with the package will be noted. After the test, the subjects will complete another questionnaire about what they felt about the package. All the data from the tests will be analyzed and a report containing recommendations for changes to the package will be drawn up. Draw up a Product Breakdown Structure, a Product Flow Diagram and a preliminary activity network for the above.<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"2\",\"type\":\"Scenario\",\"question_id\":\"541\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">A building society has a long history of implementing computer-based information systems to support the work of its branches. It uses a proprietary structured systems analysis and design method. It has been decided to create a computer model of the property market. This would attempt, for example, to calculate the effect of changes of interest rates on house values. There is some concern that the usual methodology used for IS development would not be appropriate for the new project.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) Why might there be this concern and what alternative approaches should be considered?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) Outline a plan for the development of the system which illustrates the application of your preferred<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">methodology for this project.<\\/span><\\/p>\",\"marks\":\"10\",\"has_sub_questions\":false},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"526\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\">The idea behind a project is that students should be able to access details of available placements via an intranet. When there is a placement opportunity for which they wish to be considered, they would be able to apply for it electronically. This would cause a copy of their CV, which would also be held online, to be sent to the potential employer. Details of interviews and placement offers would all be sent by e-mail. While some human intervention would be needed, the process would be automated as far as possible. You are required to produce a business case report for such an application, which justifies the potential development by showing that the value of its potential benefits outweighs its development and operational costs.<\\/p>\",\"marks\":\"6\"},{\"question_id\":\"538\",\"question\":\"<p><span style=\\\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\\\">An employee of a training organization has the task of creating case study exercises and solutions for a training course which teaches a new systems analysis and design method. The person&rsquo;s work plan has a three-week task &lsquo;learn new method&rsquo;. A colleague suggests that this is unsatisfactory as a task as there are no concrete deliverables or products from the activity. What can be done about this?<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"544\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">A building society has a long history of implementing computer-based information systems to support the work of its branches. It uses a proprietary structured systems analysis and design method. It has been decided to create a computer model of the property market. This would attempt, for example, to calculate the effect of changes of interest rates on house values. There is some concern that the usual methodology used for IS development would not be appropriate for the new project.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) Why might there be this concern and what alternative approaches should be considered?<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) Outline a plan for the development of the system which illustrates the application of your preferred <\\/span><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">methodology for this project.<\\/span><\\/p>\",\"marks\":\"6\"},{\"question_id\":\"524\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-family: \'Times New Roman\',serif;\\\">A manager is in charge of a sub-project of a larger project. The sub-project requires the transfer of paper documents into a computer-based document retrieval system and their subsequent indexing so that they can be accessed via key-words. Optical character readers are to be used for the initial transfer but the text then needs to be clerically checked and corrected by staff. The project is currently scheduled to take 12 months using permanent staff. A small budget is available to hire temporary staff in the case of staff absences through holidays, sickness or temporary transfer to other, more urgent, jobs. Discuss the control system that will need to be in place to control that sub-project.<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"533\",\"question\":\"<p><span style=\\\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\\\">Identify the major risks that could affect the success of the Brightmouth College payroll project and try to rank them in order of importance<\\/span><\\/p>\",\"marks\":\"2\"},{\"question_id\":\"531\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Identify the key aspects in which modern software project management practices differ from those of traditional software project management.<\\/span><\\/p>\",\"marks\":\"2\"},{\"question_id\":\"537\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">What products must exist before the activity &lsquo;test program&rsquo; can take place? What products does this <\\/span><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">activity create?<\\/span><\\/p>\",\"marks\":\"3\"},{\"question_id\":\"528\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Identify the important characteristics of software development projects which make these harder to manage compared to other types of projects. Say for example, a building construction project.<\\/span><\\/p>\",\"marks\":\"3\"}]},{\"type_id\":\"1\",\"type\":\"Chapter\",\"has_sub_questions\":true,\"sub_questions\":[{\"question_id\":\"521\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"text-align: justify;\\\"><span style=\\\"font-family: \'Times New Roman\',serif;\\\">List the problems you experienced when you carried out a recent lCl-related assignment. Try to put these problems into some order of magnitude. For each problem consider wlrether there was some way in which the problem could have been reduced by better organization and planning by yolrrself.<\\/span><\\/p>\",\"marks\":\"4\"},{\"question_id\":\"530\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Identify the main differences between managing the development of a conventional project and an outsourced project.<\\/span><\\/p>\",\"marks\":\"2\"},{\"question_id\":\"529\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">What is the difference between a method and a methodology? What are the essential items that must be planned before carrying out a method or methodology?<\\/span><\\/p>\",\"marks\":\"4\"}]},{\"type_id\":\"2\",\"type\":\"Scenario\",\"question_id\":\"540\",\"question\":\"<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">Brightmouth College intends to automate the routine activities of its library including issuing books to users, return of books, handling fi ne collection, and querying availability of books. The library has around 10,000 books. At present, the activities of the library are being carried out manually by the four member library staff. The college intends to allot the development of the software to a vendor. The software would have to be transferred to the library in a fully operational mode. To speed up the delivery of software, the vendor would have to create the operational database during the development of the software. This would involve entering details of the existing books into a CSV (comma separated values) fi le. After the development of the software, the CSV data will have to be imported into the software. After alpha testing, the software would have to be tested in the operational environment. For this, the software would have to be run along side the manual system at the library for a week. During this time, user training would also have to be conducted.<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(a) Identify and represent the deliverables using a product breakdown structure (PBS)<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(b) Develop the product flow diagram<\\/span><\\/p>\\r\\n<p class=\\\"MsoNormal\\\" style=\\\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\\\"><span style=\\\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\\\">(c) Develop an activity network<\\/span><\\/p>\",\"marks\":\"10\",\"has_sub_questions\":false}]', '2023-06-13 05:46:25', '2023-06-13 05:52:02');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_05_005316_create_departments_table', 1),
(6, '2023_06_05_005413_create_courses_table', 1),
(7, '2023_06_05_005430_create_roles_table', 1),
(8, '2023_06_05_005505_alter_users_table_add_role_id_dept_id', 1),
(9, '2023_06_05_064621_create_question_types_table', 1),
(10, '2023_06_05_064946_create_questions_table', 1),
(11, '2023_06_05_064956_create_scales_table', 1),
(12, '2023_06_05_065115_create_feedback_table', 1),
(13, '2023_06_09_020347_create_course_user_table', 1),
(14, '2023_06_09_094116_create_feedback_logs_table', 1),
(15, '2023_06_10_012444_create_generate_questions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `question_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `user_id`, `course_id`, `question_type_id`, `name`, `marks`, `created_at`, `updated_at`) VALUES
(1, 6, 36, 2, 'Alias in dolores natus exercitationem dolores ut qui velit voluptates est.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(2, 4, 14, 2, 'Doloremque eligendi voluptatem ex fugiat dolor nam sequi voluptas sed et pariatur quos et.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(3, 4, 3, 2, 'Et totam natus sequi enim commodi quia sapiente.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(4, 5, 19, 1, 'Cupiditate ut ad ut quod dolor quia odit velit ut recusandae.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(5, 4, 97, 2, 'Sed voluptates sed autem recusandae laboriosam voluptas consequatur aut.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(6, 3, 59, 1, 'Nam saepe nulla delectus dolore sed asperiores suscipit vel.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(7, 4, 10, 2, 'Temporibus animi harum cumque qui ut minima dolores quae nihil a repellendus facere.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(8, 6, 70, 2, 'Placeat dolor et aut culpa qui soluta facilis.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(9, 6, 66, 2, 'Aperiam non dignissimos eaque est sint vel maiores.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(10, 6, 34, 2, 'Corporis in enim culpa nesciunt quod nostrum.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(11, 3, 76, 1, 'Est porro voluptates eaque qui minima velit ab nihil voluptatibus.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(12, 3, 83, 2, 'Animi excepturi aspernatur tenetur sit officiis ab laboriosam libero voluptas.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(13, 3, 40, 2, 'Voluptates nulla vitae iusto at sed ea beatae ex autem molestiae vel.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(14, 4, 48, 1, 'Autem dolore itaque molestiae aperiam sit aut excepturi harum sunt omnis iure.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(15, 6, 94, 2, 'Sed iure dolore tempora eius ut tempora dolores nobis doloribus tenetur fugiat aliquam.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(16, 3, 96, 2, 'Iure est dolores culpa dolorem cumque est nulla provident qui aliquid.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(17, 4, 85, 1, 'Eum iste facere hic in et odit voluptates.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(18, 4, 54, 2, 'Eligendi molestiae at magnam dolorum dolor adipisci fuga beatae nihil alias laboriosam error.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(19, 6, 78, 1, 'Fugit eos id quis accusamus provident eaque explicabo doloribus minus quia voluptatem.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(20, 4, 96, 2, 'Doloribus quas dolorem consequatur saepe dolores vero sed sint quos.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(21, 6, 66, 1, 'Quo aut ipsam incidunt corporis in eos accusamus sit illo qui voluptas.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(22, 6, 67, 2, 'Ut omnis eaque odio iste autem iure reprehenderit dolor maiores.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(23, 4, 99, 2, 'Dolor dicta fuga velit labore dolorem soluta accusamus optio velit modi.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(24, 6, 79, 1, 'Nihil aut esse voluptates perferendis sequi sit sint ad magnam optio quo id esse.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(25, 4, 74, 2, 'Aut quos ipsum iste eius optio autem aut pariatur.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(26, 3, 24, 1, 'Veniam rerum voluptatem quis voluptatem et aspernatur molestiae quod.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(27, 6, 93, 1, 'Molestiae eius deleniti totam repellat labore asperiores cum autem aut natus.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(28, 5, 11, 1, 'Veniam voluptas unde vitae voluptatibus nobis quis cupiditate aut quo.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(29, 5, 6, 1, 'Rerum excepturi quam omnis eius quaerat aut perferendis hic eaque.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(30, 3, 34, 2, 'Sequi soluta dignissimos deleniti quibusdam autem et animi.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(31, 6, 56, 1, 'Reiciendis id at delectus dolores ut voluptatem est.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(32, 4, 18, 2, 'Debitis vel eum omnis incidunt qui neque harum.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(33, 5, 51, 2, 'Molestias alias rerum ea ullam dicta atque voluptatem.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(34, 3, 71, 2, 'Quas sed in adipisci porro perspiciatis aut placeat eius enim voluptatem rerum placeat eligendi.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(35, 3, 1, 2, 'Dolore est modi velit qui expedita minima nisi ipsum.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(36, 4, 19, 2, 'Possimus ut exercitationem suscipit minus dignissimos porro quia.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(37, 4, 71, 2, 'Dolorem id molestiae rerum sint rerum voluptas.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(38, 6, 63, 1, 'Earum voluptatem voluptatem iste quam non minima dolores et sequi doloribus minima qui cum.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(39, 3, 33, 2, 'Ut id voluptas hic suscipit qui earum ut et ducimus occaecati aut.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(40, 4, 53, 2, 'Repellat id sed sed quam consequatur ducimus deleniti sed officia error voluptatum.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(41, 6, 6, 1, 'Quae vitae eveniet sit exercitationem porro aut et quisquam.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(42, 5, 41, 2, 'Est cumque expedita delectus quibusdam amet voluptas ut quia nesciunt.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(43, 6, 58, 1, 'Modi fuga et dolorem esse aut alias rem sit maxime et est unde.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(44, 4, 81, 2, 'Voluptate maxime ea earum culpa dolores maxime in natus consequatur explicabo corporis fugit minima.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(45, 6, 86, 1, 'Saepe fugit est consequatur quia animi unde corrupti et ut et sit culpa ut.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(46, 5, 40, 2, 'Aliquid temporibus dicta dolorem natus aliquam ratione reiciendis optio.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(47, 5, 61, 2, 'Accusamus est impedit laborum recusandae doloremque consequatur expedita illum quod qui quaerat.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(48, 5, 38, 1, 'Dolores et sed dolores neque animi provident consequatur consequatur minima fuga quibusdam vel.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(49, 3, 60, 1, 'In aliquam voluptas repellat ullam aliquam architecto non deserunt.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(50, 3, 43, 1, 'Accusamus eos et ratione consequatur iste ut et voluptas culpa blanditiis.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(51, 6, 93, 1, 'Sed reprehenderit id distinctio ut eius quia ab illo nisi expedita.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(52, 3, 77, 2, 'Suscipit molestiae molestias est dolores sed optio sed cupiditate ea eos vitae sint ut.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(53, 6, 18, 1, 'Ut repellat ea aperiam quia officia quis fugit quas.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(54, 6, 74, 1, 'Occaecati saepe aut at voluptas cum perferendis magni assumenda.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(55, 3, 6, 1, 'Quis ut numquam quidem et rerum repellendus quae.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(56, 4, 12, 1, 'Molestias ut molestiae harum corrupti qui molestias dolores odit nobis.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(57, 4, 44, 2, 'Ut dolor est voluptas ducimus ut cupiditate asperiores debitis.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(58, 5, 57, 1, 'Molestias iste alias quas mollitia nobis numquam libero et incidunt dolore dolores alias.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(59, 5, 41, 1, 'Mollitia assumenda debitis laboriosam autem similique eum modi.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(60, 3, 18, 1, 'Tenetur sit modi reprehenderit alias voluptatum repellendus.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(61, 5, 91, 2, 'Omnis excepturi minima reiciendis voluptatem quo voluptate dolorem explicabo optio autem.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(62, 3, 72, 1, 'Quia saepe esse voluptatem maxime ut est sequi voluptas neque laborum ad sit qui.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(63, 5, 68, 1, 'Dolorem necessitatibus tempore sed natus adipisci quos adipisci odit nam provident.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(64, 6, 80, 1, 'Sit rem aperiam incidunt dolore vitae dolores quis sed nostrum sunt.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(65, 6, 42, 2, 'Similique et nisi saepe atque ipsa quia ullam veritatis debitis totam.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(66, 6, 26, 2, 'Sint iusto necessitatibus culpa dolorum aliquid et nisi quasi doloribus repellat.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(67, 4, 77, 1, 'Aliquam iusto reiciendis dolores enim voluptatum qui laudantium amet et fuga qui dolores sint.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(68, 3, 12, 1, 'Aperiam incidunt qui est voluptatem qui vel ut ut autem quis.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(69, 3, 47, 2, 'In voluptate qui id alias quasi et et eos autem voluptatum est itaque.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(70, 6, 73, 2, 'Ducimus iste et ut qui quam omnis velit quos enim sequi saepe quia.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(71, 6, 20, 1, 'Officiis architecto ducimus velit maiores in eaque error fugit reprehenderit aut id molestias.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(72, 3, 81, 2, 'Eos repudiandae quae consectetur aut voluptatem est ipsam.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(73, 3, 29, 1, 'Sit ea perferendis iusto non perferendis error facilis quisquam distinctio placeat.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(74, 6, 48, 2, 'Aut quae sint et illum rerum odio.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(75, 4, 32, 2, 'Aut illum quia consequatur eos saepe voluptatem repudiandae tempore numquam sed doloremque eum et.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(76, 4, 23, 1, 'Dolorem ipsum dicta et recusandae vitae et rerum vero accusantium earum.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(77, 3, 10, 1, 'Aut itaque ullam alias maxime quia mollitia qui autem aspernatur.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(78, 3, 37, 2, 'Et ut est culpa quis eos enim sunt ipsam animi.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(79, 5, 31, 2, 'Vel illum dolor ad maxime vero fugit qui ad est consequatur molestiae excepturi et.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(80, 6, 27, 1, 'Quia accusantium nesciunt quia dolorem velit delectus eos et et architecto ex.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(81, 6, 59, 2, 'Est dolorum asperiores autem magnam et neque laboriosam sint rerum repudiandae et.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(82, 5, 11, 2, 'Autem ut corporis ratione quaerat tempore ut voluptate harum eveniet.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(83, 6, 98, 2, 'Officiis atque et laudantium ea iste earum omnis eveniet.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(84, 4, 16, 1, 'Dolorum a ratione dolores et molestiae aut dicta voluptatem omnis aliquam qui qui harum.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(85, 3, 17, 1, 'Sit quis soluta iure dicta velit excepturi ratione dolores incidunt odit.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(86, 5, 61, 2, 'Voluptas sit aut maxime vel doloremque earum soluta dolore laudantium.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(87, 3, 99, 2, 'Officiis error aliquam consequatur non quasi autem iste consequatur omnis blanditiis quisquam quisquam.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(88, 6, 21, 1, 'Quibusdam dicta saepe sit quam vero dolor ullam vel quod neque recusandae ut.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(89, 4, 71, 1, 'Perferendis delectus voluptate quaerat consectetur sint aut et ea quis ut cum.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(90, 5, 98, 1, 'Dolorem est velit voluptatem dicta deserunt harum delectus saepe sunt.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(91, 6, 35, 2, 'Quia enim facilis id voluptatibus velit inventore.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(92, 5, 71, 1, 'Sed laborum qui itaque odit molestiae dicta et et dignissimos.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(93, 6, 80, 1, 'Dolore quae odit quis reprehenderit quia in sapiente.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(94, 4, 61, 1, 'Velit fuga laboriosam quia expedita neque voluptatum hic delectus impedit iusto consequatur illo et.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(95, 3, 75, 2, 'Consequuntur incidunt voluptatibus architecto mollitia quis officiis.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(96, 6, 7, 2, 'Odit quia praesentium in eum ipsa mollitia et ut nisi voluptas porro qui.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(97, 4, 98, 2, 'Quia ullam qui ut omnis libero provident suscipit sed enim accusantium et facilis.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(98, 5, 47, 1, 'Enim quia sed dolore occaecati quasi placeat.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(99, 6, 79, 1, 'Qui neque sequi quod ratione quia vitae et debitis perferendis quia magni ut.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(100, 4, 16, 1, 'Ab id nulla eum ea quia impedit ut debitis magnam.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(101, 5, 47, 2, 'Ab commodi fugit vel velit et quo sint explicabo voluptas voluptas.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(102, 4, 13, 2, 'Nulla illum explicabo eaque laborum iure neque quis eum voluptatem quas.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(103, 3, 93, 2, 'Optio quia consectetur ut aut doloribus eos quo autem quo.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(104, 6, 81, 2, 'Non omnis dolore ullam deserunt nostrum nobis veritatis quas corrupti.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(105, 3, 47, 1, 'Cupiditate repellendus et molestiae blanditiis quas voluptas ut ut tenetur et nisi.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(106, 4, 63, 1, 'Et culpa dolores ut qui officia inventore tenetur.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(107, 3, 11, 1, 'Sed et est assumenda ducimus iusto voluptatem blanditiis labore incidunt architecto porro.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(108, 6, 61, 2, 'Quia alias facilis enim error numquam qui natus libero dolorem est.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(109, 3, 66, 2, 'Omnis quia aut libero architecto totam omnis inventore iure molestias distinctio sit.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(110, 5, 86, 1, 'Ipsa qui vero porro ipsum ipsum sit optio dolorum voluptatem maxime deserunt aperiam a.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(111, 6, 88, 1, 'Natus dolorem inventore aut sint ipsam optio reiciendis.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(112, 3, 90, 2, 'Sunt ipsa nam qui quia repellendus qui officia recusandae.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(113, 3, 60, 2, 'Praesentium et voluptatum quia harum quod quia eveniet.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(114, 4, 16, 2, 'Qui magni odit quam et eos laboriosam et quas sint qui.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(115, 5, 34, 2, 'Vero minus est ipsam velit labore voluptatum.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(116, 6, 79, 1, 'Laboriosam ipsam unde vero sint quos molestiae autem.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(117, 6, 30, 2, 'Est molestias est et fugit molestiae cum sunt qui odio asperiores.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(118, 4, 93, 1, 'Voluptas voluptas maiores exercitationem aperiam id a voluptates at rerum exercitationem.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(119, 4, 4, 2, 'Dignissimos deleniti vero voluptatem ea distinctio possimus ab et repellendus cupiditate odit.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(120, 6, 96, 1, 'Quod inventore tempora voluptatibus natus fugit officia.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(121, 4, 94, 2, 'Nihil qui voluptas ea aut inventore possimus mollitia placeat accusamus praesentium.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(122, 6, 28, 2, 'Et debitis maiores eos eligendi dignissimos incidunt voluptates explicabo debitis.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(123, 5, 59, 1, 'Alias fugit error libero nesciunt distinctio est corporis molestiae magni.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(124, 5, 58, 1, 'Occaecati aliquid sit voluptatem voluptatem rerum quia omnis quos nulla ut iure ullam enim occaecati.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(125, 6, 68, 2, 'Ea velit rerum ipsam veritatis qui accusantium.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(126, 5, 7, 2, 'Aut omnis sapiente dolores rem repellendus voluptas.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(127, 4, 65, 2, 'Praesentium vel ipsa iure hic reprehenderit at inventore in qui exercitationem voluptas.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(128, 5, 29, 2, 'Natus ab occaecati et explicabo expedita architecto sint velit.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(129, 6, 56, 1, 'Quia placeat incidunt laboriosam est optio quia provident quae nam adipisci.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(130, 4, 85, 1, 'Doloremque molestias et qui architecto quod ut consequuntur quo dolor sed adipisci.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(131, 6, 54, 2, 'Et iusto totam exercitationem voluptatem dolor et.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(132, 6, 68, 1, 'Aspernatur ex magnam itaque earum eius mollitia nisi dolorum nihil sit assumenda voluptas qui.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(133, 4, 3, 2, 'Adipisci non porro est est a esse sed autem.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(134, 6, 61, 2, 'Fuga quas ut sit nulla iure iste dolorem omnis molestiae voluptatem in ut suscipit.', 1, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(135, 3, 9, 2, 'Fugit libero qui possimus laboriosam quis ut.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(136, 4, 86, 1, 'Molestiae illo sint ea quia eaque deserunt et veritatis.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(137, 6, 31, 1, 'A et et doloremque consequatur omnis asperiores veniam recusandae.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(138, 5, 62, 2, 'Quae deserunt asperiores consequatur odit ducimus tempora dolorum.', 2, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(139, 5, 29, 1, 'Dolores consequatur ab doloribus eos est laboriosam maxime.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(140, 3, 95, 1, 'Sed non voluptas tempora esse est odit at cupiditate aliquid sed quia.', 6, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(141, 6, 60, 1, 'Nam dolor et maiores est tempora sapiente.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(142, 4, 58, 2, 'Maiores deserunt neque debitis reprehenderit impedit ut quaerat rerum sint dolorum et.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(143, 3, 73, 2, 'Aut sed qui quo vel assumenda in.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(144, 6, 12, 2, 'Similique consequuntur molestias ipsam qui libero expedita consequatur deleniti molestiae iusto eos repellendus.', 3, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(145, 4, 26, 2, 'Placeat magni ut quibusdam recusandae veritatis voluptas et.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(146, 6, 64, 2, 'Alias voluptatem sunt reprehenderit nostrum impedit nam nam.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(147, 6, 99, 1, 'Voluptatem non sunt qui repellendus officiis ut in aperiam laborum labore deserunt commodi porro.', 4, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(148, 4, 21, 1, 'Odio dolor dolorem laudantium sit quis at praesentium.', 5, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(149, 3, 9, 2, 'Et tenetur fugit alias facilis velit omnis.', 7, '2023-06-10 12:38:42', '2023-06-10 12:38:42'),
(150, 5, 99, 1, 'Vitae dolor eum neque illo in harum sed dolor neque repellat et sit error.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(151, 3, 88, 1, 'Incidunt est mollitia cum esse aut quia et.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(152, 3, 9, 2, 'Nostrum enim velit odit natus perferendis optio ipsum.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(153, 5, 15, 1, 'Qui provident culpa eum laborum aspernatur quod nobis fuga ratione molestias atque voluptas et.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(154, 4, 10, 1, 'Fuga qui omnis sit perspiciatis odio animi tempora amet ut enim nam libero.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(155, 5, 68, 1, 'Magni ut omnis adipisci fuga alias vel maiores atque.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(156, 6, 52, 1, 'Quas sed magni et ut magnam et nihil explicabo tempore ab sequi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(157, 5, 99, 1, 'Ab esse ut soluta commodi vero ut.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(158, 5, 7, 1, 'Explicabo officiis facere alias veniam quis iusto id ratione cum odio repellat magni.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(159, 3, 86, 2, 'Consequuntur placeat nulla officia sed velit enim laboriosam sapiente sapiente.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(160, 4, 83, 1, 'Iste cumque ratione consequatur totam ut qui.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(161, 5, 71, 1, 'Optio quidem beatae id tempore aut culpa dolore quia accusamus deserunt.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(162, 4, 14, 2, 'Dolorem itaque vero fugiat repellat ipsam esse quia non.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(163, 6, 19, 1, 'Aspernatur eaque facere eius voluptatem nulla quam pariatur dolor aperiam voluptas itaque quaerat mollitia.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(164, 6, 20, 1, 'Error similique sequi harum hic odit quis cupiditate tempore nisi quibusdam voluptas.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(165, 6, 6, 2, 'Molestias ea veniam qui delectus voluptates qui facilis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(166, 6, 32, 1, 'Dolor sed voluptates voluptas animi et delectus sint.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(167, 3, 56, 1, 'Natus possimus ea quis qui ratione animi eius aut laudantium id et.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(168, 4, 5, 1, 'Et unde enim voluptas dolorem placeat magni.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(169, 5, 50, 1, 'Tenetur earum sequi expedita quia quisquam excepturi unde nam.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(170, 3, 9, 1, 'Expedita qui est atque nesciunt architecto commodi vitae reiciendis nulla recusandae beatae voluptatum officia.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(171, 6, 31, 1, 'Esse culpa culpa accusamus tenetur deserunt consequatur commodi nesciunt sed iure beatae.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(172, 4, 2, 2, 'In cupiditate distinctio dolore ab omnis dicta sit.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(173, 3, 43, 2, 'Saepe rerum nisi architecto temporibus qui qui.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(174, 5, 53, 2, 'Dolores totam debitis quis dolores saepe ducimus pariatur.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(175, 3, 9, 2, 'Nihil quibusdam enim harum qui sint illum.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(176, 5, 34, 2, 'Provident dolor omnis quia perferendis id consequatur et suscipit in error fugit ut.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(177, 6, 38, 1, 'Et provident adipisci nesciunt ut nihil omnis aperiam ut fugiat impedit tempore ut.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(178, 3, 97, 2, 'Consequuntur qui modi voluptatem rem doloribus dignissimos nisi quidem enim commodi voluptates fugit.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(179, 4, 84, 1, 'Eos sunt fugiat sint occaecati voluptatibus eum provident non tempora odit ut dolores.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(180, 3, 40, 1, 'Unde debitis sit mollitia ut cupiditate qui.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(181, 3, 65, 1, 'Cumque quae necessitatibus eveniet sed fuga eligendi blanditiis quas cum voluptas nulla autem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(182, 4, 42, 1, 'Nostrum veniam ab unde aut consectetur enim dolorem culpa qui ab reiciendis commodi deleniti.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(183, 5, 24, 1, 'Sit rerum sed enim dolore qui non in qui ut.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(184, 6, 72, 2, 'Incidunt sapiente deserunt ducimus dolores architecto rem id id aut voluptatum ad est.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(185, 5, 92, 2, 'Veritatis sapiente unde molestias vel dolores suscipit dignissimos repudiandae nemo vero nobis dolorem sunt.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(186, 3, 65, 1, 'Neque sed id vel modi repudiandae at asperiores culpa quia dolorem.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(187, 5, 21, 2, 'Dolore quidem quia accusantium cum iste quia labore laborum.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(188, 6, 84, 2, 'Suscipit aperiam harum vero veritatis pariatur ut.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(189, 4, 21, 1, 'Qui non ut maxime praesentium ab quia consectetur nesciunt qui similique veniam enim.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(190, 4, 19, 1, 'Dolor earum corporis ex aut dolor dolore iusto non debitis.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(191, 4, 54, 2, 'Placeat voluptas deleniti id totam minus voluptate sit facilis quas suscipit.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(192, 6, 34, 1, 'In ipsam deleniti aut debitis accusamus amet quaerat sint.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(193, 5, 94, 1, 'Reiciendis impedit sit minima occaecati et aliquid voluptates beatae molestias molestias et amet.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(194, 6, 77, 2, 'Aliquam eum dolores consectetur sunt aut rerum nemo et est quis velit.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(195, 3, 21, 2, 'Eius alias molestias architecto illum alias et sunt repellat doloribus sint sunt.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(196, 4, 18, 2, 'Error sed beatae et enim eius vitae rerum facilis cupiditate.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(197, 3, 83, 1, 'Totam laboriosam sapiente dignissimos ad nulla recusandae expedita et atque dicta totam sint tempore.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(198, 6, 71, 2, 'Aut repellendus sed aliquid minus et qui quia vitae et exercitationem.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(199, 3, 11, 1, 'Culpa doloremque et ab sit et aspernatur quia ratione voluptas necessitatibus molestiae beatae.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(200, 6, 67, 1, 'Ab distinctio aliquam aut deleniti rerum natus molestias sed architecto asperiores ab maiores.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(201, 5, 82, 2, 'At culpa culpa harum quo quis qui.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(202, 3, 30, 1, 'Animi in blanditiis repellendus consectetur voluptas et consectetur.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(203, 3, 26, 2, 'Ratione repellat ut molestiae non alias voluptas quidem quasi dicta.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(204, 3, 5, 2, 'Enim laboriosam quia nesciunt sed saepe culpa aperiam amet quae aut necessitatibus delectus alias.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(205, 3, 80, 1, 'Qui ullam recusandae ipsam recusandae consequatur nam et rerum.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(206, 5, 47, 2, 'Sit aut atque dolor sapiente eius nam.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(207, 6, 17, 1, 'Provident quibusdam nam autem qui ut exercitationem amet sunt aut eos.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(208, 4, 14, 2, 'Minus repudiandae molestiae eligendi dolorum quod perferendis id nam ipsa nobis laudantium sunt magnam sunt.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(209, 5, 87, 1, 'Maiores facere asperiores unde nihil officia quam officiis facere odio quo ea.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(210, 3, 13, 2, 'Aut voluptas earum quisquam veritatis vel et excepturi cumque voluptatem.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(211, 4, 41, 2, 'Vitae laboriosam dolores velit harum recusandae sed.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(212, 3, 20, 2, 'Voluptate totam aut aut quaerat minima alias dolore est.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(213, 4, 47, 1, 'Est officiis ut laudantium alias eos labore.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(214, 6, 14, 2, 'A dolorum fugit ut voluptatem sit assumenda sit commodi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(215, 4, 18, 2, 'Sit nobis sint aut ut nostrum quaerat est ab laudantium nulla et dolores.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(216, 3, 52, 2, 'Velit ab odit aliquam ut nam mollitia doloribus ea.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(217, 4, 4, 2, 'Rem excepturi voluptatem nihil perferendis veniam mollitia dolore nisi molestias.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(218, 5, 74, 2, 'Ut quo et officiis voluptates est porro ratione laborum similique.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(219, 4, 43, 1, 'Magnam id laudantium velit sed suscipit ex beatae modi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(220, 4, 63, 1, 'Asperiores eligendi sint ut quaerat qui sit consequuntur.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(221, 5, 11, 2, 'Assumenda accusamus tenetur natus commodi eaque praesentium commodi in.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(222, 4, 76, 1, 'Dolore qui nostrum sit explicabo et molestiae perferendis ut vel nisi consequatur quaerat enim sint.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(223, 6, 55, 2, 'Eum qui id nobis similique eveniet aliquam sint non non quibusdam provident in mollitia.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(224, 5, 10, 1, 'Perferendis ut quas voluptate omnis suscipit labore rerum sunt distinctio explicabo vel est.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(225, 4, 71, 1, 'Ut voluptatem sit voluptatem officia doloremque cum.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(226, 6, 99, 1, 'Impedit soluta similique eum mollitia recusandae et repellat perspiciatis nobis et officia reiciendis.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(227, 6, 45, 2, 'Ut ea ipsum sunt deserunt enim autem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(228, 3, 87, 2, 'Et ut necessitatibus quia iure impedit odit ullam ducimus nobis porro.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(229, 4, 15, 2, 'Recusandae ut minus voluptatibus perferendis nam qui natus voluptatibus magnam quis sunt maxime reprehenderit.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(230, 3, 56, 1, 'Cumque dolores fuga quis non quia voluptatibus magnam quo quia.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(231, 4, 46, 1, 'Magni at ut dignissimos quia nesciunt sed neque dolores blanditiis temporibus.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(232, 6, 22, 2, 'Iure quos quibusdam impedit vitae neque non sed cum aut quae cupiditate voluptas.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(233, 5, 19, 2, 'Asperiores exercitationem voluptatem distinctio fugiat sint delectus itaque ducimus.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(234, 3, 21, 2, 'Doloremque quisquam corporis odit culpa et ut qui recusandae voluptatem qui consectetur vel.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(235, 5, 25, 1, 'Omnis amet vel officiis autem voluptates consequatur.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(236, 3, 4, 1, 'Unde corrupti qui dolorem reprehenderit velit voluptas.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(237, 5, 49, 1, 'Molestiae corrupti libero velit unde amet quaerat aliquam deserunt eaque culpa.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(238, 4, 96, 1, 'Nulla itaque sint repellendus molestias porro aliquid voluptas adipisci reprehenderit.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(239, 6, 71, 2, 'Iste nobis et nihil eaque aut rerum laborum repellendus iure illum.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(240, 6, 59, 2, 'Amet hic quibusdam iste itaque quia eos id perferendis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(241, 5, 41, 2, 'Aut doloribus commodi excepturi vitae et quaerat magnam rem corporis.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(242, 5, 52, 1, 'Quas ut quia praesentium quia optio ut et ad ea voluptas.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(243, 3, 57, 1, 'Quidem mollitia officiis ut doloremque eaque magnam voluptatem consequatur et.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(244, 6, 97, 2, 'Vel ea placeat ipsa ut illo dolor autem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(245, 3, 63, 2, 'Aut sit tempore saepe omnis culpa nam maxime quia rerum sint expedita.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(246, 6, 74, 1, 'Iusto ratione minima ratione est ullam dolores dolor vel in dolorem autem optio.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(247, 3, 80, 2, 'Odit sint a autem dolor sit corporis enim eos quia rem in.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(248, 6, 51, 2, 'Et iusto culpa officiis et repellat illum occaecati provident.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(249, 4, 44, 1, 'Voluptatum eum culpa ea odio amet aut provident consequatur qui at modi temporibus.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(250, 6, 21, 1, 'Error perspiciatis deleniti praesentium itaque vitae enim aperiam sapiente amet eveniet doloremque.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(251, 5, 73, 1, 'A et eos numquam aperiam iusto blanditiis sunt non consequatur illo.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(252, 6, 96, 1, 'Praesentium non cupiditate molestiae consequatur nesciunt qui.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(253, 6, 78, 1, 'Iusto fuga consectetur placeat omnis officia aut accusamus quo.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(254, 4, 23, 1, 'Perferendis mollitia placeat aperiam voluptatem omnis perferendis fugit iure natus voluptas amet.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(255, 4, 86, 1, 'Aperiam aut cum deserunt eum rem est.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(256, 6, 97, 1, 'Qui repudiandae repudiandae voluptas voluptatum est est voluptas.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(257, 6, 7, 1, 'Numquam laboriosam maiores eius neque quisquam voluptate eos non iste non ut natus vel.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(258, 3, 68, 2, 'Omnis doloremque repudiandae et id cupiditate architecto quae omnis dolore assumenda.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(259, 4, 34, 1, 'Ut consequatur quo facilis fuga minima doloribus beatae et esse quae inventore harum magni.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(260, 3, 97, 2, 'Non et sit maiores accusamus sed et iste.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(261, 5, 26, 2, 'Aut itaque cumque quidem numquam vero vero ut unde dolor dolores omnis.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(262, 3, 49, 1, 'Atque velit quia velit est cupiditate ut magnam eum libero dolores.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(263, 3, 1, 1, 'Minus et est necessitatibus laudantium iure rem pariatur qui earum.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(264, 3, 28, 1, 'Rem molestias deserunt commodi ipsum doloribus ut nihil minima et et et accusamus.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(265, 5, 32, 1, 'Dicta iure voluptatem voluptatem qui voluptatem dicta.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(266, 5, 2, 1, 'Fugit voluptatibus ea nihil debitis dolor animi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(267, 3, 58, 1, 'Ut qui maxime ab ipsum est temporibus vitae quisquam.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(268, 6, 1, 2, 'Officiis rerum nihil voluptate praesentium velit perspiciatis.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(269, 3, 29, 2, 'Dicta sit dolores totam error ea sed corporis.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(270, 3, 6, 2, 'Quis sit ipsa ducimus atque molestiae sit consequatur impedit nesciunt fuga accusantium quis ut.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(271, 5, 9, 1, 'Quidem maiores rerum qui aperiam quidem ut illum aliquid eligendi velit.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(272, 5, 8, 2, 'Eligendi ducimus ea numquam praesentium laudantium harum dolores veritatis autem quae et at voluptatum.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(273, 4, 35, 1, 'Et voluptatum suscipit nam non illo sunt ipsum ut omnis eum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(274, 6, 91, 2, 'Libero non magni est aliquid officia repudiandae.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(275, 5, 33, 2, 'Nisi sequi sed temporibus dicta neque nostrum omnis deleniti rem voluptas.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(276, 6, 22, 1, 'Voluptatem eaque sed exercitationem pariatur ipsam veniam mollitia accusamus exercitationem velit.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(277, 6, 39, 2, 'Eligendi aut deleniti dolor expedita vel illum pariatur incidunt molestias voluptatem.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(278, 4, 24, 2, 'Autem saepe consequatur suscipit nam culpa ipsam ipsum dolore et reprehenderit optio enim voluptatibus.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(279, 6, 73, 2, 'Id consequatur voluptas minus ea nam deleniti sint.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(280, 3, 19, 1, 'Blanditiis est perferendis quam odio aperiam non nisi.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(281, 3, 52, 1, 'Architecto eius qui eaque doloribus odio minima facilis ut ea non nulla qui enim.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(282, 5, 33, 1, 'Quae magnam tempora voluptatum cupiditate recusandae non delectus reprehenderit doloribus asperiores magni.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(283, 5, 88, 2, 'Asperiores nobis voluptas dignissimos cupiditate aliquid blanditiis est.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(284, 5, 80, 1, 'Error sint rem sit reprehenderit sit quidem odit id iste ut id aut.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(285, 6, 15, 2, 'Sit distinctio sit fugit necessitatibus commodi deleniti voluptas asperiores aut.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(286, 6, 91, 2, 'Atque vel dolorem aperiam temporibus et omnis totam.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(287, 3, 77, 2, 'Totam consequuntur accusantium architecto nihil ea at blanditiis rerum expedita.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(288, 4, 20, 2, 'Perferendis commodi est culpa repudiandae ut rerum ipsum ad maxime tenetur quibusdam dicta ea.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(289, 6, 59, 1, 'Distinctio adipisci a accusantium veritatis alias dolores modi quia exercitationem doloribus est ut ut.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(290, 3, 48, 1, 'Iste officiis enim sequi aliquam similique nemo at porro ut.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(291, 6, 90, 1, 'Et ipsam adipisci magnam temporibus aliquid vero modi minima non et.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(292, 5, 39, 2, 'Excepturi optio aliquid placeat facere adipisci asperiores.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(293, 5, 62, 1, 'Ut dolores et aspernatur et quia libero.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(294, 3, 36, 1, 'Itaque quia et voluptas labore est quasi earum quia.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(295, 3, 81, 2, 'Doloribus et saepe repellendus eos modi rerum soluta voluptates ut eligendi quod nam.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(296, 6, 84, 1, 'Quae aut voluptatum tempore et dolor animi eius illum voluptatem maxime doloremque voluptatem consequatur.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(297, 4, 78, 1, 'Enim et est dignissimos ab totam ut et aliquid eos officiis et et aperiam.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(298, 3, 42, 2, 'Est nesciunt quia ut voluptatibus vel asperiores nihil eum excepturi quos quis consequatur est.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(299, 3, 37, 1, 'Rerum aut consequatur ut voluptatem error est aut recusandae.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(300, 6, 20, 1, 'Tempore voluptatem nesciunt labore vel nisi omnis est velit.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(301, 5, 65, 1, 'Amet exercitationem sint id doloribus eveniet harum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(302, 3, 13, 1, 'Sequi repellendus reprehenderit velit aliquid eum suscipit odit sapiente.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(303, 4, 76, 2, 'Earum dolorem consequuntur est voluptatem voluptatum quos vero ut qui.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(304, 4, 96, 1, 'Quos sunt magni totam omnis dicta corporis ad.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(305, 3, 8, 1, 'Nihil quam aut voluptatum nemo quia asperiores dolores ea.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(306, 4, 67, 1, 'Id quae deleniti neque rem consectetur culpa sunt officiis omnis sunt corrupti.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(307, 5, 20, 2, 'Illo maxime ea et quas dolor aut.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(308, 5, 36, 1, 'Laboriosam rem aut commodi ea molestiae cum voluptas possimus nihil voluptatem omnis sed rerum.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(309, 3, 78, 1, 'Voluptate velit dolore adipisci fugit at voluptatem magnam inventore ipsa facere incidunt consequatur odit.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(310, 3, 34, 1, 'Exercitationem odit sit et quia et et quia rerum et earum dolore esse.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(311, 5, 32, 2, 'Voluptatem nihil et sed ut ut doloremque quia et.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(312, 5, 86, 1, 'Enim quo esse voluptates delectus reprehenderit accusantium quis quas nihil earum.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(313, 4, 31, 1, 'Quos quaerat voluptates exercitationem nihil mollitia laboriosam quia dolore ipsa voluptas blanditiis.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(314, 3, 35, 2, 'Voluptatem ducimus dignissimos quasi fugit reprehenderit corporis eveniet non qui quo culpa.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(315, 3, 22, 1, 'A commodi tempore tenetur quo ducimus dolores assumenda sint.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(316, 4, 51, 1, 'Officiis aut nam repellendus aspernatur similique praesentium porro porro et eligendi libero accusantium similique.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(317, 3, 77, 1, 'Qui iusto sint qui sed officiis quae perspiciatis.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(318, 6, 16, 1, 'Quia fugit et expedita sunt ipsam autem blanditiis maxime blanditiis labore ut quidem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(319, 3, 26, 1, 'Nesciunt et beatae incidunt quia vitae deserunt quis eum.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(320, 3, 65, 2, 'Nihil autem ullam deleniti nam praesentium qui et nihil voluptatem cupiditate minus.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(321, 3, 31, 1, 'Quia vitae nihil eveniet quia dolorem impedit.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(322, 5, 2, 2, 'Ab sed corporis quia iusto voluptas aut eaque.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(323, 6, 87, 2, 'Nihil et reiciendis possimus quasi et dolor in provident.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(324, 5, 40, 2, 'Enim iste ipsa dolor aliquam occaecati ex ut veritatis.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(325, 3, 5, 2, 'Odio beatae dolor in placeat quidem sunt minima dolorem ad delectus reiciendis sit aut.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(326, 3, 24, 1, 'Occaecati eum sed consequuntur consequatur quaerat rerum dicta.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(327, 6, 58, 2, 'Nesciunt aut est impedit voluptatem occaecati quia doloremque et nam vero sint at.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(328, 5, 87, 1, 'Omnis quia ut repellendus deleniti impedit vel.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(329, 3, 60, 1, 'Non enim assumenda occaecati qui est ullam qui similique ut consequuntur quaerat.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(330, 5, 46, 1, 'Facere praesentium sed autem nulla culpa autem sunt vel.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(331, 3, 49, 1, 'Ratione nostrum consequuntur aut non deleniti omnis delectus tempora eos et sunt ad dicta.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(332, 3, 73, 1, 'Itaque id eos aut rem molestias et eligendi autem soluta ad nulla quo.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(333, 3, 37, 2, 'Veritatis ut consectetur labore reiciendis non sequi porro.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(334, 3, 47, 1, 'Numquam dolores aut quia nihil id vero sed sunt sit et cumque.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(335, 6, 74, 2, 'Quaerat ut ad quis provident numquam quo.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(336, 6, 96, 2, 'Id ut quis aspernatur aliquid ullam temporibus omnis voluptas cupiditate ab nesciunt eius corrupti.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(337, 4, 12, 1, 'Est explicabo dicta totam quod reprehenderit sit alias perferendis perspiciatis dolorem esse voluptatem quas.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(338, 5, 2, 2, 'Iste harum doloribus delectus eum qui laborum et sunt.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(339, 5, 100, 2, 'Ducimus adipisci totam illum quis perspiciatis sed nulla nihil.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(340, 5, 97, 1, 'Nostrum velit numquam aspernatur aut repellat optio quod odio enim aut ab praesentium sunt.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(341, 6, 89, 1, 'Rerum similique quidem omnis asperiores et cum saepe impedit accusamus ducimus minus reiciendis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(342, 6, 1, 2, 'Facilis cumque ut dolorem sunt et maxime qui molestiae aliquid.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(343, 3, 70, 1, 'Reiciendis eius autem quia officia esse ut ea.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(344, 6, 16, 1, 'Delectus amet sit architecto tempora nihil quaerat accusamus ratione numquam ut.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(345, 5, 71, 2, 'Earum nisi tenetur vitae impedit blanditiis tempora.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(346, 6, 59, 1, 'Fugiat sunt et eius cum ut dolor sit corporis voluptatum voluptatum quae consequatur dolorem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(347, 3, 70, 2, 'Numquam vel voluptatem illo incidunt aliquam quas repellat odio quas voluptatem eaque nihil dolorem.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(348, 5, 56, 1, 'In eos voluptatem eos fugit consequatur illum unde similique praesentium minima natus voluptates molestiae esse.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(349, 5, 70, 1, 'Repellendus libero alias ut reiciendis ex occaecati accusantium voluptates voluptas possimus dolorum alias hic.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(350, 4, 24, 2, 'Culpa officia ut et earum sed doloremque dolorem quisquam velit.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(351, 6, 95, 1, 'Qui id nostrum omnis reprehenderit asperiores similique error occaecati temporibus culpa et optio omnis.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(352, 5, 98, 1, 'Ipsum accusamus asperiores quia aut corporis dolore dignissimos corrupti nesciunt saepe.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(353, 6, 26, 2, 'Exercitationem omnis soluta a voluptate nam quibusdam animi mollitia atque.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(354, 5, 68, 1, 'Cumque velit dolorum voluptatem laudantium ab consectetur consequuntur autem nihil laboriosam laboriosam.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(355, 6, 74, 1, 'Consectetur recusandae modi dolorem aut architecto eveniet amet deleniti voluptatum eos aut omnis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(356, 5, 95, 2, 'Qui et consequuntur rerum iusto veniam possimus repudiandae esse.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(357, 5, 21, 1, 'Non neque et minus fugit eum magnam est vero et natus alias alias.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(358, 6, 98, 1, 'Accusamus nihil consequatur nesciunt quisquam autem ut quia quam quibusdam nulla beatae.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(359, 4, 40, 2, 'Deserunt distinctio suscipit eaque error ut ipsam neque.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43');
INSERT INTO `questions` (`id`, `user_id`, `course_id`, `question_type_id`, `name`, `marks`, `created_at`, `updated_at`) VALUES
(360, 4, 53, 1, 'Porro in et recusandae id modi numquam aut accusamus eaque quidem saepe tenetur.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(361, 4, 37, 2, 'Quibusdam dolorem placeat commodi necessitatibus enim praesentium dolore quia.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(362, 4, 26, 1, 'Aspernatur consequatur cum omnis est veniam et temporibus ipsa facilis accusamus voluptas quam excepturi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(363, 6, 72, 1, 'Ut et in voluptate eos officiis sit cum facilis quia voluptates.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(364, 5, 83, 2, 'Ut aut nihil voluptate cupiditate ut fuga mollitia et aut corporis laudantium quaerat aliquam.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(365, 6, 4, 2, 'Dolorum debitis reiciendis asperiores rerum architecto sint.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(366, 6, 19, 1, 'Labore voluptas eaque est eius est laudantium rem natus enim.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(367, 4, 43, 1, 'Vel qui dignissimos qui voluptatem et aliquid incidunt repellat nihil est esse.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(368, 6, 48, 1, 'Iusto ut illum aut aut molestiae sequi aut dolores assumenda consequatur ipsum optio ipsum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(369, 4, 8, 2, 'Laborum deserunt atque sapiente nihil suscipit dolor quis quis iure vitae consequatur corrupti.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(370, 6, 64, 2, 'Asperiores beatae beatae iste cupiditate itaque labore animi nihil.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(371, 6, 31, 1, 'Facilis consequatur non eveniet tempore quis aperiam id unde atque non culpa sed sed.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(372, 3, 44, 2, 'Laboriosam pariatur est sit sed sit ut.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(373, 5, 79, 2, 'At pariatur voluptatum iure sit facilis dolore et voluptas aut recusandae voluptatum doloribus qui.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(374, 4, 50, 1, 'Eos esse aut optio pariatur recusandae praesentium magnam quia quam sunt.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(375, 6, 95, 2, 'Accusamus inventore aut tenetur distinctio blanditiis in officia saepe consequatur velit minima aliquid non.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(376, 4, 87, 2, 'Facere tempora praesentium libero commodi omnis laboriosam repellendus est ipsam architecto et.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(377, 6, 90, 2, 'Est ipsum quam consequatur hic rerum qui maiores odit est.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(378, 3, 44, 2, 'Quia ullam illo praesentium nam et libero reprehenderit.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(379, 6, 45, 2, 'Tenetur nihil sed atque quisquam architecto voluptate quo magni optio maxime ullam nisi enim.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(380, 6, 59, 2, 'Eum facilis eos optio impedit soluta fugiat asperiores ullam.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(381, 3, 47, 1, 'Quas aut magnam ab voluptatem earum occaecati dignissimos ratione repellat hic deserunt.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(382, 4, 30, 2, 'Quia perferendis est mollitia vitae vitae illum velit iusto sunt cum.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(383, 3, 41, 1, 'Et necessitatibus maiores tempora laborum qui voluptatem minima et soluta quod.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(384, 6, 55, 1, 'Harum repellat reiciendis et deleniti velit eligendi non.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(385, 5, 33, 2, 'Neque doloremque quia vel quo sed ut ex commodi sint tenetur iusto.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(386, 4, 89, 2, 'Rem quo iusto voluptate impedit accusamus deserunt consequatur.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(387, 4, 40, 2, 'Consectetur maiores vel voluptatem atque eius nihil officia qui.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(388, 6, 37, 2, 'Unde libero repudiandae occaecati error animi officiis molestias aut ipsam autem debitis.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(389, 5, 8, 1, 'Magni nesciunt iusto ipsum odio nam similique labore voluptatem perferendis eveniet.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(390, 6, 63, 2, 'Officia quidem quis alias autem et dolores tenetur dolor.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(391, 4, 73, 2, 'Sit sed architecto provident aliquid id sint architecto deleniti sapiente rem repellendus dignissimos.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(392, 4, 16, 1, 'Impedit rerum eos nesciunt nihil est ea qui et ut quos aperiam.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(393, 6, 11, 2, 'Aperiam maiores earum dignissimos perspiciatis atque omnis et qui libero non praesentium.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(394, 6, 53, 1, 'Minima reiciendis tempore eveniet consequuntur ut maiores libero enim ut.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(395, 3, 98, 1, 'Qui odio aspernatur aspernatur doloribus consequatur culpa aut porro hic itaque.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(396, 6, 39, 1, 'Facilis doloremque earum qui atque aut est aperiam pariatur similique cum earum.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(397, 3, 21, 1, 'Nihil quo quasi nam exercitationem maiores rerum eum.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(398, 6, 13, 2, 'Rerum qui illo dolores debitis dolor maiores id perspiciatis officiis fuga illum eos molestiae.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(399, 3, 40, 2, 'Quis asperiores quidem veniam corporis at officiis velit autem exercitationem illo voluptatem.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(400, 3, 51, 1, 'Fugit quas quaerat quod sapiente facere et autem cupiditate earum impedit.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(401, 4, 17, 2, 'Nam eos est esse sed voluptas ea at.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(402, 6, 77, 1, 'Accusamus velit necessitatibus qui iste quia sint.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(403, 4, 74, 2, 'Quibusdam et aliquid odio accusantium dolore error aut dolorum qui sed aliquam repudiandae.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(404, 5, 51, 2, 'Repellendus ut aut illo itaque cum voluptatem quo et.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(405, 4, 98, 2, 'Vel ipsam non asperiores est et earum iste similique aut dolorem.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(406, 3, 17, 1, 'Et quo numquam blanditiis doloremque architecto ea.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(407, 3, 74, 1, 'Et accusantium quas et repellat qui nobis accusantium nihil.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(408, 4, 21, 1, 'Repellendus dolorum beatae id in libero enim facilis alias atque.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(409, 5, 2, 2, 'Sit eum laborum et eaque quia nulla vel iure tenetur.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(410, 4, 78, 1, 'Doloribus omnis numquam voluptas neque dolor voluptatem.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(411, 5, 11, 1, 'Distinctio pariatur non explicabo autem accusamus ad ut odio deleniti sint quae occaecati repellendus.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(412, 5, 30, 2, 'Eligendi repellat excepturi mollitia impedit facere facere qui sit sed sequi sequi.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(413, 5, 18, 1, 'Dolor et quia atque saepe provident rerum vel.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(414, 6, 36, 1, 'Quo voluptas aperiam deserunt assumenda autem praesentium fugiat perferendis facilis eius quis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(415, 4, 78, 1, 'Voluptate eius nihil recusandae dolore magnam autem suscipit eaque praesentium provident nobis ab.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(416, 3, 47, 1, 'Quo sed animi qui repudiandae dicta qui quia.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(417, 4, 31, 2, 'Reprehenderit veniam vel et expedita mollitia tempora id quam sit odit consequatur et.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(418, 6, 3, 2, 'Sit voluptatem sint omnis accusamus enim temporibus illo est qui ut laudantium doloremque.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(419, 6, 16, 2, 'Reiciendis quos laboriosam dolores est beatae est.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(420, 4, 24, 2, 'Molestiae ut fugiat est et aliquam autem non voluptas libero.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(421, 3, 51, 2, 'Natus ex et quia velit rem ut error incidunt possimus esse sit voluptatibus quasi.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(422, 6, 23, 2, 'Id accusamus consequatur et in laudantium sequi sunt nostrum architecto culpa natus quis reiciendis.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(423, 3, 14, 2, 'Voluptate magnam et consequatur voluptatem vel ut et sequi animi.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(424, 3, 57, 1, 'Corporis est aliquam perspiciatis blanditiis eum consequuntur fuga quia sint.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(425, 6, 81, 2, 'Odio ut mollitia quia dignissimos unde ab nihil sit non.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(426, 5, 90, 1, 'Nemo assumenda ea doloremque voluptate animi sit.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(427, 6, 26, 2, 'Nulla quae velit aliquam fugit aspernatur eos soluta fugit nulla.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(428, 3, 1, 1, 'Aut praesentium qui quis praesentium aperiam in corrupti earum.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(429, 3, 63, 1, 'Magni quibusdam voluptatem dolor non laboriosam eveniet modi tempore et.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(430, 4, 71, 2, 'Doloremque omnis inventore quia hic totam dolor nulla sit in minima consequuntur ex dicta.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(431, 6, 89, 1, 'Nesciunt aliquid error dolor excepturi et reprehenderit aliquam dolor reprehenderit.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(432, 6, 88, 1, 'Recusandae eum culpa sint numquam et et.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(433, 6, 79, 1, 'Vitae culpa veniam quis laboriosam aperiam ut nemo aut quia.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(434, 4, 31, 2, 'Labore dolores voluptatem nisi suscipit suscipit esse facilis.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(435, 4, 47, 2, 'Nobis voluptatum quo voluptas numquam sequi voluptatibus accusamus quo vitae aperiam voluptas dolorem ut.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(436, 3, 35, 2, 'Cupiditate architecto vel porro placeat eligendi nemo aut quia at rerum in adipisci omnis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(437, 4, 58, 1, 'Voluptas reiciendis qui pariatur cum sit pariatur error tempore ullam asperiores architecto architecto et.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(438, 4, 67, 2, 'Voluptas rerum ut voluptatibus cumque soluta odit quia.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(439, 5, 82, 2, 'Aut autem iste nobis dolorum labore voluptate velit.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(440, 5, 51, 2, 'Doloribus quis totam enim eaque officia maxime dolor et maxime maiores perspiciatis molestiae.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(441, 5, 16, 2, 'Quia ab aut fugiat sit quod et nisi atque.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(442, 3, 15, 2, 'Sunt consequatur dolorem amet ex doloribus sint et veniam molestiae occaecati maxime.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(443, 4, 57, 1, 'Aliquid et animi consequuntur voluptas iusto ea.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(444, 3, 73, 2, 'Dolorem impedit alias eius aspernatur magni officia vero consequuntur nostrum saepe architecto.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(445, 4, 9, 1, 'Inventore labore atque quia sequi dolorum nemo qui sed vitae ab.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(446, 5, 99, 1, 'Quia assumenda labore omnis hic quas eos quibusdam non asperiores ea iste.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(447, 5, 9, 2, 'Dolor nisi quo impedit facilis possimus quisquam quo quidem velit id.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(448, 3, 27, 2, 'Non voluptas repellendus consequatur quasi voluptas ipsam autem omnis porro saepe voluptas qui.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(449, 6, 10, 1, 'Animi voluptatibus labore nulla possimus exercitationem quam.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(450, 6, 5, 1, 'Dolorum praesentium id est aut saepe ratione animi est quos quo tenetur.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(451, 3, 83, 2, 'Rerum rem consequatur blanditiis aperiam unde non quo quos facere voluptatem rerum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(452, 3, 83, 2, 'Id eligendi ut qui maiores dolorum sed quis.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(453, 3, 75, 2, 'Possimus nisi iusto voluptatem eos quia officiis rerum et voluptatibus praesentium et et id saepe.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(454, 5, 45, 1, 'Aliquam labore tempora incidunt dolores distinctio quaerat molestiae non id delectus quia earum et.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(455, 5, 94, 2, 'Voluptas sunt voluptatibus vel cumque magnam ipsam modi cumque tempore unde voluptas.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(456, 3, 52, 1, 'Consectetur totam maxime praesentium dicta dolorum ex molestias qui vitae est quia tempore.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(457, 4, 15, 1, 'Quae sed porro aut sequi eos enim quis.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(458, 6, 64, 2, 'Quia exercitationem distinctio et itaque beatae et modi aliquam est quod voluptatibus sunt reiciendis.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(459, 3, 46, 1, 'Et expedita reprehenderit quia nulla sunt eligendi.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(460, 5, 19, 2, 'Tempore aut vero recusandae ipsam quis expedita veniam quam illum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(461, 3, 53, 1, 'Sequi et dolor quisquam et recusandae veniam expedita ut ut accusantium.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(462, 4, 70, 1, 'Impedit laboriosam quo delectus labore eligendi architecto voluptatibus et rerum.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(463, 6, 43, 2, 'Nisi aspernatur ut magnam aspernatur quia quis ut beatae.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(464, 6, 78, 1, 'Fugiat doloribus sint ipsam magnam laboriosam ullam non sint asperiores tenetur ducimus fugit et.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(465, 4, 85, 2, 'Assumenda laboriosam et fuga autem dolore modi sed amet autem error amet ratione vero.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(466, 4, 56, 2, 'Placeat ipsa voluptate consequuntur voluptatem et sunt nobis sit animi.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(467, 6, 49, 2, 'Eius nam vitae ut iste ut velit modi voluptas.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(468, 6, 25, 2, 'Sit dolor pariatur aut possimus blanditiis quos sunt ipsa aut sint ipsum voluptatem rerum.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(469, 4, 6, 1, 'Qui saepe pariatur vitae non nihil quae error rem similique nisi.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(470, 6, 8, 1, 'Voluptates ex minima et quia quis reprehenderit et.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(471, 4, 8, 1, 'Molestiae id adipisci consectetur incidunt minus minima atque soluta velit voluptates sunt.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(472, 6, 82, 2, 'Quia qui illo optio aliquam alias qui repudiandae quisquam rerum placeat.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(473, 6, 99, 1, 'Quas nisi veniam earum rerum culpa fuga necessitatibus voluptatem nulla magnam fugit.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(474, 5, 65, 1, 'Temporibus aliquid molestias sed pariatur officiis quo eius cum culpa.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(475, 4, 40, 2, 'Repellendus labore est qui ex et cum explicabo nostrum impedit laborum at ea.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(476, 3, 89, 1, 'Ut similique vitae soluta non perferendis dolores minima sint occaecati harum dicta.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(477, 5, 95, 2, 'Ad quia facere in deserunt doloribus facere consectetur.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(478, 4, 100, 2, 'Eligendi officiis ullam tenetur est occaecati animi.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(479, 6, 35, 1, 'Magnam facere earum numquam deleniti iusto sequi inventore ad.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(480, 6, 34, 1, 'In quam doloremque officia aut aliquid nobis distinctio.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(481, 6, 64, 1, 'Voluptatem a aut asperiores vitae nisi quia recusandae est.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(482, 6, 30, 1, 'Amet nihil non magni modi in sit nisi delectus.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(483, 6, 13, 1, 'Consequatur ut labore at quod inventore voluptatibus voluptatem enim omnis dolore.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(484, 3, 56, 1, 'Est libero sit veniam dolor nobis ad ea quibusdam atque earum.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(485, 4, 10, 1, 'Ea aut animi necessitatibus pariatur ut sed itaque quibusdam facilis sed maiores.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(486, 4, 91, 1, 'Cum inventore impedit autem nihil doloremque aspernatur porro omnis nihil dolorem nihil excepturi.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(487, 5, 35, 2, 'Amet enim sequi optio exercitationem debitis nisi expedita sunt.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(488, 4, 96, 2, 'Voluptates rerum ut pariatur dolor aut est molestiae exercitationem fuga blanditiis a.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(489, 3, 72, 2, 'Nostrum dolore et enim aut eum et aut et optio velit expedita ullam nam.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(490, 4, 64, 1, 'Doloribus id sunt suscipit corrupti sed quibusdam reiciendis.', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(491, 3, 86, 1, 'Tenetur quia reiciendis porro omnis cupiditate fuga recusandae id.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(492, 5, 64, 1, 'Amet expedita ullam in perferendis est quo reiciendis recusandae beatae quia eveniet quaerat dolor.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(493, 4, 70, 1, 'Debitis commodi ex sunt accusantium qui voluptates molestiae ducimus sit.', 7, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(494, 4, 11, 1, 'Perspiciatis in commodi veniam perferendis et accusantium corporis eveniet.', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(495, 6, 66, 2, 'Quia quisquam aut velit enim nisi ut voluptatibus aut deleniti sed necessitatibus error qui.', 6, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(496, 6, 4, 2, 'Dolor reiciendis qui omnis adipisci veritatis ipsum modi.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(497, 6, 77, 2, 'Accusamus temporibus veniam iure ipsum voluptas harum sed quia libero.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(498, 3, 49, 2, 'Fugit id qui voluptas ut sunt corporis perferendis aut debitis ut et quidem.', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(499, 6, 55, 2, 'Temporibus iste aspernatur nemo et nemo ipsam at repellendus perspiciatis eos nesciunt.', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(500, 5, 41, 2, 'Quibusdam earum qui dolor autem aut voluptas atque qui a numquam ut dolor.', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(501, 11, 101, 1, '<p class=\"MsoNormal\"><span style=\"font-family: \'Times New Roman\',serif;\">Can you make a case for however the number of defects is measured?</span></p>', 2, '2023-06-10 12:53:53', '2023-06-10 12:53:53'),
(502, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\',serif;\">Can you make a case for however the amount of production defects is measured?</span></p>', 3, '2023-06-10 12:55:33', '2023-06-10 12:55:33'),
(503, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Why are statistics necessary? Why can experimenters not just look at the data and decide for themselves what is important? On the other hand, which of the following is more important:</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">(a) the results of a statistical test or (b) the results of the intraocular significance test (i.e., when the effect leaps out and hits you between the eyes)?</p>', 4, '2023-06-10 12:55:58', '2023-06-10 12:55:58'),
(504, 11, 101, 1, '<p><span style=\"font-size: 11.0pt; line-height: 107%; font-family: \'Calibri\',sans-serif; mso-ascii-theme-font: minor-latin; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-font-family: \'Times New Roman\'; mso-bidi-theme-font: minor-bidi; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Can a comparison that does not achieve statistical significance still be important?</span></p>', 2, '2023-06-10 12:58:12', '2023-06-10 12:58:12'),
(505, 11, 101, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Test-first development is one component of many agile software development processes such as Extreme Programming and SCRUM that is briefly described as follows: Test-first development: Unit tests are written for each class or component before the class or component body code is written. The tests are run continuously and the program must pass all tests. These tests act as executable specifications for the program units. The following table shows the results of a case study that examined the defect profile of a software system in which part of the system was developed by applying test first methods. The table shows the number of &ldquo;defects&rdquo; found at different phases, comparing the portion of the system with test first developed code to the rest of the system.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">a. What conclusions can you draw about the effectiveness of test first development based on these results? Justify your conclusions and note limitations.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">b. List all assumptions that you used to arrive at your conclusions in (a).</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">c. List any additional information/metrics data that you would like to have seen.</p>\r\n<div align=\"center\">\r\n<table class=\"MsoTableGrid\" style=\"width: 470.5pt; border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" border=\"1\" width=\"627\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 24.3pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Test Phase</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Defects Found in Test-First Developed Code (10,000&nbsp;Lines Total)</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Defects Found in Remainder of Code (8000 Lines Total)</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; height: 25.05pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Specification and design inspection</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">10</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">16</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2; height: 24.3pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Unit test <span style=\"mso-spacerun: yes;\">&nbsp;</span><span style=\"mso-spacerun: yes;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">89</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">32</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; height: 25.05pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">System and integration test</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">15 <span style=\"mso-spacerun: yes;\">&nbsp;</span><span style=\"mso-spacerun: yes;\">&nbsp;</span><span style=\"mso-spacerun: yes;\">&nbsp;</span><span style=\"mso-spacerun: yes;\">&nbsp;</span></p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">80</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 4; height: 24.3pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">months of operational use</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">16</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 24.3pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">16</p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 5; mso-yfti-lastrow: yes; height: 25.05pt;\">\r\n<td style=\"width: 156.8pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">Overall</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">130</p>\r\n</td>\r\n<td style=\"width: 156.85pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 25.05pt;\" valign=\"top\" width=\"209\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\">144</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 10, '2023-06-10 13:04:12', '2023-06-10 13:04:12'),
(506, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Your department manager asks you to shorten the required system testing time of software products without a loss in quality of the delivered product. Use the GQM approach to derive relevant questions and identify measures to determine whether you have met your goal. Clearly indicate which measures help to answer each question.</p>', 4, '2023-06-10 13:05:42', '2023-06-10 13:05:42'),
(507, 11, 101, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Our confidence in a prediction system depends in part on how well we feel we understand the attributes involved. After how many successful predictions would you consider the following validated?</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">a. A mathematical model to predict the return time of Halley&rsquo;s comet to the nearest hour.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">b. A timetable for a new air service between London and Paris.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">c. A system that predicts the outcome of the spinning of a roulette wheel.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">d. A chart showing how long a bricklayer will take to erect a wall of a given area.</p>', 10, '2023-06-10 13:07:03', '2023-06-10 13:07:03'),
(508, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">What meaningful operations can we perform on measures? For instance, is it sensible to compute average productivity for a group of developers, or the average quality of a set of modules?</p>', 3, '2023-06-10 13:10:02', '2023-06-10 13:10:02'),
(509, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Using measurement, what meaningful statements can we make about an attribute and the entities that possess it? For instance, is it meaningful to talk about doubling a design&rsquo;s quality? If not, how do we compare two different designs?</p>', 3, '2023-06-10 13:10:26', '2023-06-10 13:10:26'),
(510, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">How do we know if we have really measured the attribute we wanted to measure? For instance, does a count of the number of &ldquo;bugs&rdquo; found in a system during integration testing measure the quality of the system? If not, what does the count tell us?</p>', 3, '2023-06-10 13:10:53', '2023-06-10 13:10:53'),
(511, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">How much we must know about an attribute before it is reasonable to consider measuring it? For instance, do we know enough about &ldquo;complexity&rdquo; of programs to be able to measure it?</p>', 3, '2023-06-10 13:11:16', '2023-06-10 13:11:16'),
(512, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">How much we must know about an attribute before it is reasonable to consider measuring it? For instance, do we know enough about &ldquo;complexity&rdquo; of programs to be able to measure it?</p>', 3, '2023-06-10 13:11:51', '2023-06-10 13:11:51'),
(513, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Explain why you would not conclude that the quality of program X was twice as great as program Y if integration testing revealed program X to have twice as many faults per KLOC than program Y.</p>', 4, '2023-06-10 13:13:03', '2023-06-10 13:13:03'),
(514, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Explain why it is wrong to assert that lines of code is a bad software measure.</p>', 2, '2023-06-10 13:14:37', '2023-06-10 13:14:37'),
(515, 11, 101, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">Suppose that &ldquo;complexity&rdquo; of individual software modules is ranked (according to some specific criteria) as one of the following: {trivial, simple, moderate, complex, very complex, incomprehensible} Let M be any measure (in the representation sense) for this notion of complexity, and let S be a set of modules for each of which M has been computed.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">a. You want to indicate the average complexity of the modules in S. How would you do this in a meaningful way? (Briefly explain your choice.)</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">b. Explain why it is not meaningful to compute the mean of the Ms. (You should construct a statement involving means that you can prove is not meaningful.)</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">c. Give two examples of criteria that might be used to enable an assessor objectively to determine which of the complexity values a given module should be.</p>', 10, '2023-06-10 13:16:10', '2023-06-10 13:16:10'),
(516, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">A commonly used derived measure of programmer productivity P is P = L/E, where L is the number of lines of code produced and E is effort in person-months. Show that every rescaling of P is of the form P&prime; = P (for &gt;0)</p>', 3, '2023-06-10 13:20:07', '2023-06-10 13:20:07'),
(517, 11, 101, 1, '<p class=\"MsoNormal\" style=\"margin-left: .25in; text-align: justify;\">Consider the attribute, &ldquo;number of bugs found,&rdquo; for software testing processes. Define an absolute scale measure for this attribute. Why is &ldquo;number of bugs found&rdquo; not an absolute scale measure of the attribute of program correctness?</p>', 2, '2023-06-10 13:21:44', '2023-06-10 13:21:44');
INSERT INTO `questions` (`id`, `user_id`, `course_id`, `question_type_id`, `name`, `marks`, `created_at`, `updated_at`) VALUES
(518, 11, 101, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">The table below contains three measures for each of 17 software modules. LOC is the number of LOC in the module, CFP is the number of control flow paths in the module, and Faults are the number of faults found in the module. Construct a box plot for each of the three measures, and identify any outliers. What conclusions can you draw? What recommendations can you make to address the problems you have discovered?</p>\r\n<div align=\"center\">\r\n<table class=\"MsoTableGrid\" style=\"border-collapse: collapse; border: none; mso-border-alt: solid windowtext .5pt; mso-yfti-tbllook: 1184; mso-padding-alt: 0in 5.4pt 0in 5.4pt;\" border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr style=\"mso-yfti-irow: 0; mso-yfti-firstrow: yes; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">Module</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">LOC</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">CFP</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border: solid windowtext 1.0pt; border-left: none; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">Faults</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 1; height: 16.0pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">A</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">15</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">4</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">0</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 2; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">B</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">28</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">6</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">15</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 3; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">C</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">14</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">2</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">10</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 4; height: 16.0pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">D</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">60</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">26</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">1</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 5; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">E</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">60</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">14</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">0</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 6; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">F</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">95</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">18</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">15</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 7; height: 16.0pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">G</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">110</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">12</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">9</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 8; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">H</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">140</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">12</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">6</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 9; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">I</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">170</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">54</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">6</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 10; height: 16.0pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">J</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">180</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">36</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.0pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">20</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 11; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">K</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">185</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">28</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">14</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 12; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">L</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">190</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">32</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">20</span></p>\r\n</td>\r\n</tr>\r\n<tr style=\"mso-yfti-irow: 13; mso-yfti-lastrow: yes; height: 16.55pt;\">\r\n<td style=\"width: 114.15pt; border: solid windowtext 1.0pt; border-top: none; mso-border-top-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">M</span></p>\r\n</td>\r\n<td style=\"width: 114.15pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">210</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">54</span></p>\r\n</td>\r\n<td style=\"width: 114.2pt; border-top: none; border-left: none; border-bottom: solid windowtext 1.0pt; border-right: solid windowtext 1.0pt; mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt; mso-border-alt: solid windowtext .5pt; padding: 0in 5.4pt 0in 5.4pt; height: 16.55pt;\" valign=\"top\" width=\"152\">\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal;\"><span style=\"mso-bidi-font-family: Calibri; mso-bidi-theme-font: minor-latin;\">15</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 10, '2023-06-10 13:32:11', '2023-06-10 13:32:11'),
(519, 11, 101, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">A tool that computes the values of a set of code complexity metrics C1, C2, &hellip;, Cn is applied to a large number of systems and subsystems for which the number of defects D found in operations is known. Using Excel, a positive correlation is observed and a regression model of the form</p>\r\n<p class=\"MsoNormal\" style=\"text-align: center;\" align=\"center\">D = f(C1, C2, &hellip;, Cn)</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">is computed. The following quality assurance procedure is subsequently recommended:</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">Before any major system release the tool should be applied to extract the metrics C1, C2, &hellip;, Cn for each subsystem and the function f is then computed. Any subsystem for which f is above 25 must undergo additional testing. What concerns do you have about this quality assurance procedure?</p>', 6, '2023-06-10 13:37:42', '2023-06-10 13:37:42'),
(520, 11, 101, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">It is known that a particular type of software test is certain to identify virus X if it has been inserted into a computer system. However, there is also a 5% probability of a false alarm (i.e., there is a 5% probability that the test will be positive when virus X has not been inserted). You run the test and the outcome is positive.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">a. What can you conclude about whether or not the system really is infected with the virus X?</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">b. How would your answer to (i) change if, additionally, it was known that virus X had been inserted into approximately one in every thousand computer systems?</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">c. Suppose the only known effective fix for virus X costs $250,000 when the full costs of system shutdown and repair are considered. From a risk assessment perspective what action would you recommend (you should state any assumptions about additional information needed)?</p>', 10, '2023-06-10 13:39:10', '2023-06-10 13:39:10'),
(521, 11, 102, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\',serif;\">List the problems you experienced when you carried out a recent lCl-related assignment. Try to put these problems into some order of magnitude. For each problem consider wlrether there was some way in which the problem could have been reduced by better organization and planning by yolrrself.</span></p>', 4, '2023-06-12 08:06:45', '2023-06-12 08:06:45'),
(522, 11, 102, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">ldentify the main types of personnel employed in an information systems department. For each stage of a typical lS development project, list the types of personrrel who are likely to be involved?</p>', 3, '2023-06-12 08:08:07', '2023-06-12 08:08:07'),
(523, 11, 102, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">A public library is considering the implementation of a computer-based system to help administer book loans at libraries. ldentify the stakeholders in such a project.</p>', 3, '2023-06-12 08:10:02', '2023-06-12 08:10:02'),
(524, 11, 102, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-family: \'Times New Roman\',serif;\">A manager is in charge of a sub-project of a larger project. The sub-project requires the transfer of paper documents into a computer-based document retrieval system and their subsequent indexing so that they can be accessed via key-words. Optical character readers are to be used for the initial transfer but the text then needs to be clerically checked and corrected by staff. The project is currently scheduled to take 12 months using permanent staff. A small budget is available to hire temporary staff in the case of staff absences through holidays, sickness or temporary transfer to other, more urgent, jobs. Discuss the control system that will need to be in place to control that sub-project.</span></p>', 4, '2023-06-12 08:13:20', '2023-06-12 08:13:20'),
(525, 11, 102, 2, '<p class=\"MsoNormal\" style=\"text-align: justify;\">A software house has developed a customized order processing system for a client. You are an employee of the software house that has been asked to organize a training course for the end-users of the system. At present, a user handbook has been produced, but no specific training material. A plan is now needed for the project which will set up the delivery of the training courses. The project can be assumed to have been completed when the first training course starts. Among the things that will need to be considered are the following:</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">● training materials will need to be designed and created;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">● a timetable will need to be drafted and agreed;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">● date(s) for the course will need to be arranged;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">● the people attending the course will need to be identified and notified;</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">● rooms and computer facilities for the course will need to be provided</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">A Identify the main stakeholders for this project.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">B Draw up objectives for this project.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">C For the objectives, identify the measures of effectiveness.</p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\">D For each objective, write down sub-objectives or goals and the stakeholders who will be responsible for their achievement.</p>', 10, '2023-06-12 08:15:11', '2023-06-12 08:15:11'),
(526, 11, 102, 1, '<p class=\"MsoNormal\" style=\"text-align: justify;\">The idea behind a project is that students should be able to access details of available placements via an intranet. When there is a placement opportunity for which they wish to be considered, they would be able to apply for it electronically. This would cause a copy of their CV, which would also be held online, to be sent to the potential employer. Details of interviews and placement offers would all be sent by e-mail. While some human intervention would be needed, the process would be automated as far as possible. You are required to produce a business case report for such an application, which justifies the potential development by showing that the value of its potential benefits outweighs its development and operational costs.</p>', 6, '2023-06-12 08:16:06', '2023-06-12 08:16:06'),
(527, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Distinguish between software product development and outsourced projects. Explain the key ways in which managing an outsourcing project differs from a product development project.</span></p>', 3, '2023-06-13 05:23:52', '2023-06-13 05:23:52'),
(528, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Identify the important characteristics of software development projects which make these harder to manage compared to other types of projects. Say for example, a building construction project.</span></p>', 3, '2023-06-13 05:24:12', '2023-06-13 05:24:12'),
(529, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">What is the difference between a method and a methodology? What are the essential items that must be planned before carrying out a method or methodology?</span></p>', 4, '2023-06-13 05:24:33', '2023-06-13 05:24:33'),
(530, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Identify the main differences between managing the development of a conventional project and an outsourced project.</span></p>', 2, '2023-06-13 05:24:54', '2023-06-13 05:24:54'),
(531, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Identify the key aspects in which modern software project management practices differ from those of traditional software project management.</span></p>', 2, '2023-06-13 05:25:13', '2023-06-13 05:25:13'),
(532, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Explain the major activities carried out by a software project manager and the order in which these are carried out.</span></p>', 2, '2023-06-13 05:25:38', '2023-06-13 05:25:38'),
(533, 11, 102, 1, '<p><span style=\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Identify the major risks that could affect the success of the Brightmouth College payroll project and try to rank them in order of importance</span></p>', 2, '2023-06-13 05:26:19', '2023-06-13 05:26:19'),
(534, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Explain why discounted cash flow techniques provide better criteria for project selection than net profit or return on investment.</span></p>', 2, '2023-06-13 05:26:42', '2023-06-13 05:26:42'),
(535, 11, 102, 2, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">An insurance company has examined the way that it settles house insurance claims. It decides to introduce a new computer-based claims settlement system which will reduce the time taken to settle claims. This reduction in effort is partly achieved by enabling the claims clerk to obtain the information needed directly, rather than having to go through other departments. Also, as part of the new process, new repair work will be allocated by the insurance company to authorized builders, decorators, plumbers etc., rather than the claimant having to make arrangements to get estimates, and so on.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) Explain the possible benefits and disbenefit <span style=\"mso-spacerun: yes;\">&nbsp;</span>that might be generated by this application. Note that the benefits could come under the following headings:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Mandatory compliance</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Quality of service</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Productivity</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">More motivated work force</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Internal management benefits</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Risk reduction</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Economy</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Revenue enhancement/acceleration</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Strategic fit</span></p>\r\n<p class=\"MsoNormal\" style=\"text-align: justify;\"><span style=\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">How could the actual benefit be assessed in each case?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) When the application is implemented, some of the claims staff at the insurance company complain about the additional stress of dealing with irate customers grumbling about tradespeople being slow to do repair work or about poor quality workmanship. Also, in some places there are shortages of qualified repair people leading to delays in getting work done.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Which projected benefi ts are being affected by these developments?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">How would you deal with these problems?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">How would you assess your success in dealing with these problems?</span></p>', 10, '2023-06-13 05:27:14', '2023-06-13 05:30:23'),
(536, 11, 102, 1, '<p><span style=\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">Suppose Brightmouth College has the option of either buying payroll software off-the-shelf at &pound;50,000 or employing a programmer for six months at a salary of &pound;5000 to develop the software. Perform cost benefit analysis for the two options. You can make suitable assumptions regarding any factor that has not been mentioned in this problem statement,&nbsp;</span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">List the products created by the Step Wise planning process.</span></p>', 4, '2023-06-13 05:27:34', '2023-06-13 05:28:19'),
(537, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">What products must exist before the activity &lsquo;test program&rsquo; can take place? What products does this </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">activity create?</span></p>', 3, '2023-06-13 05:28:47', '2023-06-13 05:28:47'),
(538, 11, 102, 1, '<p><span style=\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">An employee of a training organization has the task of creating case study exercises and solutions for a training course which teaches a new systems analysis and design method. The person&rsquo;s work plan has a three-week task &lsquo;learn new method&rsquo;. A colleague suggests that this is unsatisfactory as a task as there are no concrete deliverables or products from the activity. What can be done about this?</span></p>', 4, '2023-06-13 05:29:10', '2023-06-13 05:29:10');
INSERT INTO `questions` (`id`, `user_id`, `course_id`, `question_type_id`, `name`, `marks`, `created_at`, `updated_at`) VALUES
(539, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">In order to carry out usability tests for a new word processing package, the software has to be written and debugged. User instructions have to be available describing how the package is to be used. These have to be scrutinized in order to plan and design the tests. Subjects who will use the package in the tests will need to be selected. As part of this selection process, they will have to complete a questionnaire giving details of their past experience of, and training in, typing and using word processing packages. The subjects will carry out the required tasks using the word processing package. The tasks will be timed and any problems the subjects encounter with the package will be noted. After the test, the subjects will complete another questionnaire about what they felt about the package. All the data from the tests will be analyzed and a report containing recommendations for changes to the package will be drawn up. Draw up a Product Breakdown Structure, a Product Flow Diagram and a preliminary activity network for the above.</span></p>', 4, '2023-06-13 05:30:11', '2023-06-13 05:30:11'),
(540, 11, 102, 2, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Brightmouth College intends to automate the routine activities of its library including issuing books to users, return of books, handling fi ne collection, and querying availability of books. The library has around 10,000 books. At present, the activities of the library are being carried out manually by the four member library staff. The college intends to allot the development of the software to a vendor. The software would have to be transferred to the library in a fully operational mode. To speed up the delivery of software, the vendor would have to create the operational database during the development of the software. This would involve entering details of the existing books into a CSV (comma separated values) fi le. After the development of the software, the CSV data will have to be imported into the software. After alpha testing, the software would have to be tested in the operational environment. For this, the software would have to be run along side the manual system at the library for a week. During this time, user training would also have to be conducted.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) Identify and represent the deliverables using a product breakdown structure (PBS)</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) Develop the product flow diagram</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(c) Develop an activity network</span></p>', 10, '2023-06-13 05:31:03', '2023-06-13 05:31:03'),
(541, 11, 102, 2, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">A building society has a long history of implementing computer-based information systems to support the work of its branches. It uses a proprietary structured systems analysis and design method. It has been decided to create a computer model of the property market. This would attempt, for example, to calculate the effect of changes of interest rates on house values. There is some concern that the usual methodology used for IS development would not be appropriate for the new project.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) Why might there be this concern and what alternative approaches should be considered?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) Outline a plan for the development of the system which illustrates the application of your preferred</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">methodology for this project.</span></p>', 10, '2023-06-13 05:33:47', '2023-06-13 05:34:09'),
(542, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">A software package is to be designed and built to assist in software cost estimation. It will input certain parameters and produce initial cost estimates to be used at bidding time.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) It has been suggested that a software prototype would be of value in these circumstances. Explain why this might be.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) Discuss how such prototyping could be controlled to ensure that it is conducted in an orderly and effective way and within a specified time span.</span></p>', 6, '2023-06-13 05:34:49', '2023-06-13 05:34:49'),
(543, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">An invoicing system is to have the following transactions: amend invoice, produce invoice, produce monthly statements, record cash payment, clear paid invoices from database, create customer records, delete customer.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) What physical dependencies govern the order in which these transactions are implemented?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) How could the system be broken down into increments which would be of some value to the users (Hint &ndash; think about the problems of taking existing details onto a database when a system is first implemented)?</span></p>', 6, '2023-06-13 05:35:26', '2023-06-13 05:35:26'),
(544, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">A building society has a long history of implementing computer-based information systems to support the work of its branches. It uses a proprietary structured systems analysis and design method. It has been decided to create a computer model of the property market. This would attempt, for example, to calculate the effect of changes of interest rates on house values. There is some concern that the usual methodology used for IS development would not be appropriate for the new project.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) Why might there be this concern and what alternative approaches should be considered?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) Outline a plan for the development of the system which illustrates the application of your preferred </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">methodology for this project.</span></p>', 6, '2023-06-13 05:38:32', '2023-06-13 05:38:32'),
(545, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">A software package is to be designed and built to assist in software cost estimation. It will input certain parameters and produce initial cost estimates to be used at bidding time.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) It has been suggested that a software prototype would be of value in these circumstances. Explain why this might be.</span></p>\r\n<p><span style=\"font-size: 10.0pt; line-height: 107%; font-family: Times-Roman; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-bidi-font-family: Times-Roman; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">(b) Discuss how such prototyping could be controlled to ensure that it is conducted in an orderly and effective way and within a specified time span.</span></p>', 4, '2023-06-13 05:39:03', '2023-06-13 05:39:03'),
(546, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">An invoicing system is to have the following transactions: amend invoice, produce invoice, produce monthly statements, record cash payment, clear paid invoices from database, create customer records, delete customer.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) What physical dependencies govern the order in which these transactions are implemented?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) How could the system be broken down into increments which would be of some value to the users (Hint &ndash; think about the problems of taking existing details onto a database when a system is first implemented)?</span></p>', 4, '2023-06-13 05:39:27', '2023-06-13 05:39:27'),
(547, 11, 102, 1, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">The size (that is, the effort needed to complete it) of any task will depend on its characteristics. The units into which the work is divided will also differ. Identify the factors affecting the size of the task and work units for the following activities:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">installing computer workstations in a new office;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">transporting assembled personal computers from the factory where they were assembled to </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">warehouses distributed in different parts of the country;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">typing in and checking the correctness of data that is populating a new database;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">system testing a newly written software application.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">If you were asked as an expert to provide an estimate of the effort needed to make certain changes to </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">an existing piece of software, what information would you like to have to hand to assist you in making </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">that estimate?</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">&nbsp;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\">&nbsp;</p>', 4, '2023-06-13 05:40:52', '2023-06-13 05:40:52'),
(548, 11, 102, 2, '<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">3. A small application maintains a telephone directory. The database for the application contains the following data types:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Staff reference</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Surname</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Forenames</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Title</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Department code</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Room number</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Telephone extension</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">E-mail address</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 6.0pt; font-family: ZapfDingbatsStd; mso-hansi-font-family: Times-Roman; mso-bidi-font-family: ZapfDingbatsStd;\">■ </span><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Fax number</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">Transactions are needed which:</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(i) set up new entries;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(ii) mend existing entries;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(iii) delete entries;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(iv) allow enquirers to list online the details for a particular member of staff;</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(v) produce a complete listing of the telephone directory entries in alphabetical order.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(a) Use this scenario to produce an estimated Mark II FP count. List all the assumptions you will need to make.</span></p>\r\n<p class=\"MsoNormal\" style=\"margin-bottom: .0001pt; text-align: justify; line-height: normal; mso-layout-grid-align: none; text-autospace: none;\"><span style=\"font-size: 10.0pt; font-family: Times-Roman; mso-bidi-font-family: Times-Roman;\">(b) Another requirement could be to produce the listing in (v) in departmental order. In your view, should this increase FP count and if so by how much?</span></p>', 10, '2023-06-13 05:41:29', '2023-06-13 05:41:29');

-- --------------------------------------------------------

--
-- Table structure for table `question_types`
--

CREATE TABLE `question_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_types`
--

INSERT INTO `question_types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Chapter', '2023-06-10 12:38:41', '2023-06-10 12:38:41'),
(2, 'Scenario', '2023-06-10 12:38:41', '2023-06-10 12:38:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(2, 'Chairman', 'chairman', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(3, 'Teacher', 'teacher', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(4, 'Student', 'student', '2023-06-10 12:38:40', '2023-06-10 12:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `scales`
--

CREATE TABLE `scales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `scales`
--

INSERT INTO `scales` (`id`, `title`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Very bad', 1, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(2, 'Bad', 2, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(3, 'Average', 3, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(4, 'Good', 4, '2023-06-10 12:38:43', '2023-06-10 12:38:43'),
(5, 'Very good', 5, '2023-06-10 12:38:43', '2023-06-10 12:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `department_id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `approved_at`) VALUES
(1, 1, 1, 'Admin', 'admin@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(2, 1, 2, 'Chairman', 'chairman@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(3, 1, 3, 'Teacher', 'teacher@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(4, 2, 3, 'Teacher 2', 'teacher2@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(5, 3, 3, 'Teacher 3', 'teacher3@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(6, 4, 3, 'Teacher 4', 'teacher4@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(7, 1, 4, 'Student', 'student@gmail.com', '2023-06-10 12:38:40', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:40', '2023-06-10 12:38:40', '2023-06-10 12:38:40'),
(8, 2, 4, 'Student 2', 'student2@gmail.com', '2023-06-10 12:38:41', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:41', '2023-06-10 12:38:41', '2023-06-10 12:38:41'),
(9, 3, 4, 'Student 3', 'student3@gmail.com', '2023-06-10 12:38:41', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:41', '2023-06-10 12:38:41', '2023-06-10 12:38:41'),
(10, 4, 4, 'Student 4', 'student4@gmail.com', '2023-06-10 12:38:41', '$2y$10$SmrPjAMwLzUAEcUQi.onE.lCz52fIGOSFUHD1f63n5kXxx2AEwOwK', NULL, '2023-06-10 12:38:41', '2023-06-10 12:38:41', '2023-06-10 12:38:41'),
(11, 33, 3, 'Dipok Chandra Das', 'dipok.iit@nstu.edu.bd', '2023-06-10 12:46:57', '$2y$10$WkEMDxcRKqPN9.OSfMev/uKu3tmn/Y9HPvYQSI6tE0AJuAHLH0efm', 'ER93B42QUYMRRp4UlXsVVh9e9qX3KUuELLoxfNeknsPOMiyasJJUXArzSfiI', '2023-06-10 12:46:41', '2023-06-10 12:47:32', '2023-06-10 12:47:32'),
(12, 33, 4, 'Mahfujur Rahman', 'mahfujur2513@student.nstu.edu.bd', '2023-06-10 21:22:02', '$2y$10$VAU6nTKXky.hIVyx1Pcxi.S7uBz5Tc8u4erP12dKctJ88SgHZyD/O', NULL, '2023-06-10 21:21:34', '2023-06-10 21:22:02', NULL),
(13, 33, 2, 'Dr. Mohammad Salim Hossain', 'pharmasalim@nstu.edu.bd', '2023-06-10 21:27:27', '$2y$10$I7vx7xbOw895zF0v4B2o4OTCEQl8GWEUmZSinmoGJZkyb2VLAEd1C', NULL, '2023-06-10 21:27:14', '2023-06-10 21:28:01', '2023-06-10 21:28:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `courses_code_unique` (`code`),
  ADD KEY `courses_department_id_foreign` (`department_id`);

--
-- Indexes for table `course_user`
--
ALTER TABLE `course_user`
  ADD PRIMARY KEY (`course_id`,`user_id`),
  ADD KEY `course_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user_id_foreign` (`user_id`),
  ADD KEY `feedback_course_id_foreign` (`course_id`),
  ADD KEY `feedback_scale_id_foreign` (`scale_id`);

--
-- Indexes for table `feedback_logs`
--
ALTER TABLE `feedback_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_logs_user_id_foreign` (`user_id`),
  ADD KEY `feedback_logs_teacher_id_foreign` (`teacher_id`),
  ADD KEY `feedback_logs_course_id_foreign` (`course_id`);

--
-- Indexes for table `generate_questions`
--
ALTER TABLE `generate_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `generate_questions_user_id_foreign` (`user_id`),
  ADD KEY `generate_questions_course_id_foreign` (`course_id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_user_id_foreign` (`user_id`),
  ADD KEY `questions_course_id_foreign` (`course_id`),
  ADD KEY `questions_question_type_id_foreign` (`question_type_id`);

--
-- Indexes for table `question_types`
--
ALTER TABLE `question_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scales`
--
ALTER TABLE `scales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_department_id_foreign` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback_logs`
--
ALTER TABLE `feedback_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `generate_questions`
--
ALTER TABLE `generate_questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=549;

--
-- AUTO_INCREMENT for table `question_types`
--
ALTER TABLE `question_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `scales`
--
ALTER TABLE `scales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`);

--
-- Constraints for table `course_user`
--
ALTER TABLE `course_user`
  ADD CONSTRAINT `course_user_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `feedback_scale_id_foreign` FOREIGN KEY (`scale_id`) REFERENCES `scales` (`id`),
  ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback_logs`
--
ALTER TABLE `feedback_logs`
  ADD CONSTRAINT `feedback_logs_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `feedback_logs_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feedback_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `generate_questions`
--
ALTER TABLE `generate_questions`
  ADD CONSTRAINT `generate_questions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `generate_questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `questions_question_type_id_foreign` FOREIGN KEY (`question_type_id`) REFERENCES `question_types` (`id`),
  ADD CONSTRAINT `questions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
