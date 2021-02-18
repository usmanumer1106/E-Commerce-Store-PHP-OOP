-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 06:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-com`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `admin_type` varchar(255) NOT NULL,
  `admin_address` varchar(255) NOT NULL,
  `admin_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`, `admin_phone`, `admin_type`, `admin_address`, `admin_status`) VALUES
(9, 'Muhammad Usman Umer', 'usmanumer1106@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '03208500106', 'admin', 'House #4 Main Bazaar Raza Town', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(11, 'MEN'),
(12, 'WOMEN'),
(14, 'CHILDREN');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `order_date`, `user_id`, `address`, `status`, `phone`, `name`, `payment`) VALUES
(36, '2021-02-15 10:18:46', 1, 'house kk  106 702  ABC DEF', 'shipped', ' 03208500106', 'Usman Umer', 'cod'),
(37, '2021-02-15 10:20:52', 6, 'House #4 Main Bazaar Raza Town ', '', ' 03208500106', 'Muhammad Umer', 'stripe'),
(38, '2021-02-15 14:56:12', 1, 'house kk  106 702 ', 'inprocess', ' 03208500106', 'Usman Umer Ali', 'stripe'),
(39, '2021-02-15 15:10:57', 1, 'house kk  106 702 ', '', ' 03208500106', 'Usman Umer Ali', 'cod'),
(40, '2021-02-15 16:43:12', 1, 'house kk  106 702 ', '', ' 03208500106', 'Usman Umer Ali', 'cod'),
(41, '2021-02-15 16:44:26', 1, 'house kk  106 702 ', 'inprocess', ' 03208500106', 'Usman Umer Ali', 'stripe'),
(42, '2021-02-15 18:33:10', 1, 'house kk  106 702 ', '', ' 03208500106', 'Usman Umer Ali', 'stripe');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `detail_id` int(255) NOT NULL,
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `product_quantity` int(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_size` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`detail_id`, `order_id`, `product_id`, `product_quantity`, `product_image`, `product_name`, `product_price`, `product_size`) VALUES
(57, 36, 19, 1, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg', 'SHIRT 1', 2500, 'M'),
(58, 36, 20, 2, 'pictureproduct/2411742717download (2).jfif', 'SHIRT 1', 4500, 'M'),
(59, 37, 21, 2, 'pictureproduct/4510658459220px-Dress_MET_69.2.1_front_CP4.jpg', 'SHIRT 2', 1477, 'M'),
(60, 38, 20, 1, 'pictureproduct/2411742717download (2).jfif', 'SHIRT 1', 4500, 'M'),
(61, 39, 19, 1, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg', 'SHIRT 1', 2500, 'M'),
(62, 40, 19, 5, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg', 'SHIRT 1', 2500, 'M'),
(63, 41, 20, 1, 'pictureproduct/2411742717download (2).jfif', 'SHIRT 1', 4500, 'M'),
(64, 41, 19, 1, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg', 'SHIRT 111', 2500, 'M'),
(65, 42, 19, 1, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg', 'SHIRT 111', 2500, 'M');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_discount` int(255) NOT NULL,
  `product_status` int(255) NOT NULL,
  `category_id` int(255) NOT NULL,
  `subcategory_id` int(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_description`, `product_discount`, `product_status`, `category_id`, `subcategory_id`, `product_image`) VALUES
(19, 'SHIRT 111', 2500, 'Good Shirt', 2300, 1, 12, 13, 'pictureproduct/4424563435floral-dresses-for-summer-287911-1593028013697-main.700x0c.jpg'),
(20, 'SHIRT 1', 4500, 'Shirt 1', 2500, 0, 11, 13, 'pictureproduct/2411742717download (2).jfif'),
(21, 'SHIRT 2', 1477, 'Shirt 2', 222, 1, 12, 14, 'pictureproduct/4510658459220px-Dress_MET_69.2.1_front_CP4.jpg'),
(22, 'SHIRT 3', 1111, 'Shirt 3', 1000, 0, 12, 14, 'pictureproduct/4929278110download.jfif'),
(23, 'SHIRT 4', 800000, 'Shirt', 111111, 0, 12, 14, 'pictureproduct/5670535133depositphotos_27912009-stock-illustration-woman-beautiful-dresses-on-hanger.jpg'),
(24, 'SHIRT 5', 2147483647, 'shirt', 2147483647, 0, 12, 14, 'pictureproduct/3686095549download (1).jfif'),
(25, 'SHIRT 2', 22222, 'shirt', 888, 0, 11, 13, 'pictureproduct/50551212612c6fdc4a120624ef7b5a64cabdba78a1.jpg'),
(26, 'SHIRT 3', 258741, 'shirt', 22222, 0, 11, 13, 'pictureproduct/9084674311button-down-1566926976.jpg'),
(27, 'SHIRT 6', 99999999, 'shirt', 88888888, 0, 12, 14, 'pictureproduct/5334733049download (1).jfif');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(255) NOT NULL,
  `size_name` varchar(255) NOT NULL,
  `size_quantity` int(255) NOT NULL,
  `product_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_name`, `size_quantity`, `product_id`) VALUES
(61, 'S', 0, 20),
(62, 'M', 0, 20),
(63, 'L', 0, 20),
(64, 'XL', 0, 20),
(65, 'S', 0, 21),
(66, 'M', 0, 21),
(67, 'L', 0, 21),
(68, 'XL', 0, 21),
(69, 'S', 0, 22),
(70, 'M', 0, 22),
(71, 'L', 0, 22),
(72, 'XL', 0, 22),
(73, 'S', 0, 23),
(74, 'M', 0, 23),
(75, 'L', 0, 23),
(76, 'XL', 0, 23),
(77, 'S', 0, 24),
(78, 'M', 0, 24),
(79, 'L', 0, 24),
(80, 'XL', 0, 24),
(81, 'S', 0, 25),
(82, 'M', 0, 25),
(83, 'L', 0, 25),
(84, 'XL', 0, 25),
(85, 'S', 0, 26),
(86, 'M', 0, 26),
(87, 'L', 0, 26),
(88, 'XL', 0, 26),
(89, 'S', 0, 27),
(90, 'M', 0, 27),
(91, 'L', 0, 27),
(92, 'XL', 0, 27);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategory_id` int(255) NOT NULL,
  `subcategory_name` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(13, 'SHIRTS', 11),
(14, 'SHIRTS', 12);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_status` int(255) NOT NULL DEFAULT 1,
  `user_password` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_address`, `user_status`, `user_password`, `user_phone`) VALUES
(1, 'Usman', 'Umer Ali', 'usmanumer1106@gmail.com', 'house kk  106 702', 1, '21232f297a57a5a743894a0e4a801fc3', '03208500106'),
(6, 'Muhammad', 'Umer', 'usmanumer106@gmail.com', 'House #4 Main Bazaar Raza Town', 1, '21232f297a57a5a743894a0e4a801fc3', '03208500106'),
(7, 'Muhammad', 'Umer', 'usmanumer1111106@gmail.com', 'House #4 Main Bazaar Raza Town', 1, '21232f297a57a5a743894a0e4a801fc3', '03208500106');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategory_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `detail_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategory_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategory` (`subcategory_id`);

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
