-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 12, 2022 at 06:39 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swift`
--

-- --------------------------------------------------------

--
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
CREATE TABLE IF NOT EXISTS `basket` (
  `basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  PRIMARY KEY (`basket_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `book_price` int(11) NOT NULL,
  `order_register` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `user_id`, `book_id`, `book_name`, `book_image`, `book_price`, `order_register`) VALUES
(1, 1, 1, 'IT', './assets/products/book1.png', 12, '2022-03-20 14:08:50'),
(2, 1, 5, 'Carrie', './assets/products/book5.png', 12, '2022-04-05 15:34:57'),
(3, 2, 2, 'The Shining', './assets/products/book2.png', 12, '2022-05-03 09:28:57'),
(4, 2, 6, 'The Green Mile', './assets/products/book6.png', 12, '2022-04-06 09:28:57'),
(5, 3, 12, 'Later', './assets/products/book14.png', 15, '2022-04-08 09:28:57'),
(6, 1, 13, 'In the Tall Grass', './assets/products/book15.png', 15, '2022-04-09 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `book_id` int(11) NOT NULL AUTO_INCREMENT,
  `book_genre` varchar(200) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_price` double(10,2) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `book_register` datetime DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`book_id`, `book_genre`, `book_name`, `book_price`, `book_image`, `book_register`) VALUES
(1, 'Horror', 'IT', 12.00, './assets/products/book1.png', '2022-03-28 10:08:57'),
(2, 'Horror', 'The Shining', 12.00, '/assets/products/book2.png', '2022-03-28 13:23:01'),
(3, 'Drama', 'The Stand', 12.00, '/assets/products/book3.png', '2022-03-28 14:08:50'),
(4, 'Mystery', 'Misery', 12.00, '/assets/products/book4.png', '2022-03-28 15:48:17'),
(5, 'Horror', 'Carrie', 12.00, '/assets/products/book5.png', '2022-03-28 16:58:57'),
(6, 'Drama', 'The Green Mile', 12.00, '/assets/products/book6.png', '2022-03-29 11:08:37'),
(7, 'Mystery', 'Billy Summers', 12.00, '/assets/products/book8.png', '2022-03-29 12:08:52'),
(8, 'Drama', 'The Outsider', 12.00, '/assets/products/book10.png', '2022-03-30 13:28:54'),
(9, 'Mystery', 'The Institute', 15.00, '/assets/products/book11.png', '2022-03-30 14:08:57'),
(10, 'Horror', 'Salems Lot', 15.00, '/assets/products/book12.png', '2022-03-30 15:38:51'),
(11, 'Mystery', 'Doctor Sleep', 15.00, '/assets/products/ book13.png', '2022-03-30 16:38:27'),
(12, 'Action', 'Later', 15.00, '/assets/products/ book14.png', '2022-03-30 16:28:23'),
(13, 'Horror', 'In the Tall Grass', 15.00, '/assets/products/book15.png', '2022-03-30 16:48:57');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `review_description` varchar(500) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `review_register` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `user_id`, `review_description`, `book_name`, `book_image`, `review_register`) VALUES
(1, 1, 'Great Book would highly recommend', 'IT', './assets/products/book1.png', '2022-03-30 14:08:53'),
(2, 1, 'Not bad sometimes a bit boring', 'Carrie', './assets/products/book5.png', '2022-04-05 11:08:57'),
(3, 2, 'Amazing One of the most scariest book I have read', 'The Shining', './assets/products/book2.png', '2022-05-03 09:28:57'),
(4, 2, 'Brillaint Could not stop reading', 'The Green Mile', './assets/products/book6.png', '2022-04-06 09:28:57'),
(5, 3, 'Not Good Could stop reading', 'Later', './assets/products/book14.png', '2022-04-08 09:28:57'),
(6, 4, 'Good great stuff', 'In the tall grass', './assets/products/book15.png', '2022-04-09 09:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `book_id` int(11) NOT NULL,
  `stock_level` int(100) NOT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`book_id`, `stock_level`) VALUES
(1, 34),
(2, 45),
(3, 56),
(4, 67),
(5, 66),
(6, 44),
(7, 22),
(8, 51),
(9, 77),
(10, 89),
(11, 11),
(12, 32),
(13, 90);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`, `user_email`, `user_address`) VALUES
(1, 'Terry', 'Doherty', '2022-03-26 14:07:17', 'doherty123@yahoo.com', '13 John Street Derry'),
(2, 'Tom', 'Gibbons', '2022-03-28 15:07:17', 'gibbons2828@yahoo.com', '14 Golden Road Derry'),
(3, 'Sam', 'McLaughlin', '2022-03-28 16:07:17', 'mclaughlin101@yahoo.com', '18 Miracle Street Donegal'),
(4, 'Colm', 'Williams', '2022-03-28 16:37:17', 'colmlegend@gmail.com', '343 Strandroad Terrace Derry'),
(5, 'Shane', 'Harkin', '2022-03-28 17:07:17', 'ShaneHarkin101@yahoo.com', '132 Rosemount Derry'),
(6, 'Ashley', 'Kashyap', '2022-03-29 13:07:17', 'Kashyap@yahoo.com', '142 Rosemount Derry'),
(7, 'Tom', 'Hardy', '2022-03-29 18:27:17', 'THardy@gmail.com', '383 Strandroad Terrace Derry'),
(8, 'John', 'Moss', '2022-03-27 17:07:57', 'JMoss1@gmail.com', '33 Strandroad Terrace Derry');

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

DROP TABLE IF EXISTS `user_management`;
CREATE TABLE IF NOT EXISTS `user_management` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`user_id`, `user_email`, `password`) VALUES
(1, 'doherty123@yahoo.com', 'password123'),
(2, 'gibbons2828@yahoo.com', 'password1'),
(3, 'mclaughlin101@yahoo.com', 'McLaughlin2828'),
(4, 'colmlegend@gmail.com', 'footy272727'),
(5, 'ShaneHarkin101@yahoo.com', 'harkinoy2856'),
(6, 'Kashyap@yahoo.com', 'Kashi1111'),
(7, 'THardy@gmail.com', 'Hardy1234'),
(8, 'JMoss1@gmail.com', 'Mossy34');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE IF NOT EXISTS `wishlist` (
  `basket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  KEY `basket_id` (`basket_id`),
  KEY `user_id` (`user_id`),
  KEY `book_id` (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `basket_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `product` (`book_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `product` (`book_id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_4` FOREIGN KEY (`book_id`) REFERENCES `product` (`book_id`),
  ADD CONSTRAINT `order_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_6` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `order_ibfk_8` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `product` (`book_id`);

--
-- Constraints for table `user_management`
--
ALTER TABLE `user_management`
  ADD CONSTRAINT `user_management_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`basket_id`) REFERENCES `basket` (`basket_id`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `wishlist_ibfk_3` FOREIGN KEY (`book_id`) REFERENCES `product` (`book_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
