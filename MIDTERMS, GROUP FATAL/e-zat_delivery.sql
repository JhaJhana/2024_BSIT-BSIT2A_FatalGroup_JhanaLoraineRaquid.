
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 05:33 PM
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
-- Database: `e-zat delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `user_id` varchar(50) NOT NULL,
  `user_info` varchar(50) NOT NULL,
  `orders_id` int(50) NOT NULL,
  `orders_info` varchar(50) NOT NULL,
  `item_id` int(50) NOT NULL,
  `item_desc` varchar(50) NOT NULL,
  `payment_id` int(50) NOT NULL,
  `payment_desc` varchar(50) NOT NULL,
  `cashier_id` int(11) NOT NULL,
  `cashier_info` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deliveries`
--

CREATE TABLE `deliveries` (
  `delivery_id_deliveries` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `order_id_orders` int(50) NOT NULL,
  `order_desc` varchar(50) NOT NULL,
  `order_qty` int(50) NOT NULL,
  `delivery_desc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deliveries`
--

INSERT INTO `deliveries` (`delivery_id_deliveries`, `user_id`, `address`, `order_id_orders`, `order_desc`, `order_qty`, `delivery_desc`) VALUES
(1, 1, 'Purok Uranus, Centro Occidental, Polangui,Albay ', 1, 'Clothing, with Fragile materials included', 5, 'Clothing, with Fragile materials included');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `product_id` varchar(15) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_desc` varchar(50) NOT NULL,
  `prodcut_price` int(6) NOT NULL,
  `product_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`product_id`, `product_name`, `product_desc`, `prodcut_price`, `product_added`) VALUES
('1', 'Jollibee', 'C3, Chicken-SPag Meal ', 129, '2024-03-14 21:22:41'),
('2', 'McDonalds', 'M3- Ala carte Meal ', 129, '2024-03-14 21:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id_orders` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_desc` varchar(50) NOT NULL,
  `product_qty` int(50) NOT NULL,
  `delivery_id` int(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id_orders`, `user_id`, `product_id`, `product_desc`, `product_qty`, `delivery_id`, `date_added`) VALUES
(1, 1, 1, '', 2, 1, '2024-03-03 22:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `age` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `username` varchar(50) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin_id` int(10) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `payment_desc` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `age`, `address`, `email`, `contact_number`, `username`, `date_added`, `admin_id`, `user_type`, `payment_desc`) VALUES
(1, 'JHANA LORAINE G. RAQUID ', 20, 'Purok Uranus, Centro Occidental, Polangui,Albay ', 'jlgr2022-3717-12460@bicol-u.edu.ph', '09453570432', 'jlgr_BSIT2A', '2024-03-03 04:50:21', 0, '', ''),
(2, 'ALEXXA B. CONCEPCION', 20, 'Sta.Cruz, Libon, Albay', 'abc2022-4922-64013', '09637265441', 'abc_BSIT2A', '2024-03-03 04:59:40', 0, '', ''),
(3, 'DAISY REI S. BARCE', 20, 'San Roque, Polangui, Albay', 'dsrb2022-4423-75139@bicol-u.edu.ph', '09469522764', 'drsb_BSIT2A', '2024-03-03 04:59:40', 0, '', ''),
(4, 'BEA E. RAMOS ', 19, 'Matacon, Polangui, Albay ', 'ber2022-9655-38482@bicol-e.edu.ph', '09152607187', 'ber_BSIT2A', '2024-03-03 05:02:11', 0, '', ''),
(5, 'JED ISMAEL D. POLONG', 20, 'BARAYONG, LIGAO CITY, ALBAY', 'jidp2022-3409-47573@bicol-u.edu.ph', '09958433592', 'jidp_BSIT2A', '2024-03-04 23:53:58', 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `deliveries`
--
ALTER TABLE `deliveries`
  ADD PRIMARY KEY (`delivery_id_deliveries`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id_orders`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
