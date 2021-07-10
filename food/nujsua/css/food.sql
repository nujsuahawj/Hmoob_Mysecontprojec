-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 09:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `comment`) VALUES
(1, 'Nuj sua hawj', 'cas koj ua tau zoo uas luaj tij laug \r\nkoj ua tau zoo heev lis nawb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(2, 'nujsuahawj', 'nuj', 'nujsuahawj252565');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'ຫ້ອງຮຽນ Abobe', 'Food_Category_121.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`, `url`) VALUES
(12, 'Abobe Premiere pro', 'Premiere Pro ແມ່ນຊອບແວດັດແກ້ວິດີໂອຊັ້ນ ນຳ ໃນອຸດສາຫະ ກຳ ສຳ ລັບການແບ່ງປັນສັງຄົມ, ໂທລະພາບ, ແລະຮູບເງົາ. ເຄື່ອງມືສ້າງສັນ, ການປະສົມປະສານກັບແອັບ services ແລະການບໍລິການອື່ນໆ, ແລະພະລັງງານຂອງ Adobe Sensei ຊ່ວຍໃຫ້ທ່ານສາມາດສ້າງຮູບເງົາແລະວິດີໂອທີ່ໂປໂລຍ.\r\nຄຸນະລັກສະນະເຕັມຮູບແບບແລະມີຄວາມຍືດຫຍຸ່ນ, Adobe Premiere Pro ແມ່ນໂປແກຼມແກ້ໄຂວິດີໂອທີ່ດີທີ່ສຸດເພື່ອຈັດການຮູບພາບ ສຳ ລັບເວັບ, ໂທລະພາບ, ແລະຜະລິດຕະພັນທີ່ມີຄຸນນະສົມບັດ. ຕັດ, ແກ້ໄຂ, ນຳ ໃຊ້ການປ່ຽນແປງແລະຜົນກະທົບ, ປັບສີ, ແລະເພີ່ມຫົວຂໍ້ແລະກາຟິກ. Adobe Premiere Pro. ການຜະລິດແລະຕັດຕໍ່ວີດີໂອ.\r\nປະເພດຕັດທີ່ມັກໃຊ້ຫຼາຍທີ່ສຸດ, ທ່ານຕັດຈາກ clip A ເຖິງ clip B. ສ່ວນຕັດທີ່ຂ້ອນຂ້າງຖືກໃຊ້ທົ່ວໄປ, ໂດຍສະເພາະໃນໂທລະພາບ. ໂດຍປົກກະຕິແລ້ວ, ມັນຖືກ ນຳ ໃຊ້ໃນເວລາທີ່ໄປຈາກບ່ອນ ໜຶ່ງ ໄປຫາບ່ອນເກີດເຫດ. ໂດຍປົກກະຕິແລ້ວການປ່ຽນແປງແມ່ນບໍ່ ຈຳ ເປັນທີ່ຈະເຮັດໃຫ້ຕັດຕໍ່ກ້ຽງກັບອີກຊ່ວງ ໜຶ່ງ ຂອງຮູບເງົາຂອງທ່ານ.', '10.00', 'Food-Name-1712.jpg', 9, 'Yes', 'Yes', 'https://www.youtube-nocookie.com/embed/_WC2MnV7wsI');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
