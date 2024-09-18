-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 07:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory system`
--

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `date` date NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`date`, `itemName`, `price`) VALUES
('2023-07-04', 'WEIGHING SCALE ', 320.00),
('2023-07-01', 'BUBBLE WRAP ', 100.00),
('2023-06-04', 'PLASTIC PACK ', 153.00),
('2023-07-06', 'PACKAGING TAPE ', 56.00),
('2023-06-06', 'TAPE DISPENSER', 40.00);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `productName` varchar(255) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` decimal(50,2) NOT NULL,
  `Category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`productName`, `Size`, `Quantity`, `Price`, `Category`) VALUES
('WHISKAS OCEAN FISH FLAVOR ', '7KG', 1, 1050.00, 'CAT FOOD'),
('POOPTIME CAT LITTER BABY POWDER ', '3X10L', 1, 612.00, 'CAT LITTER'),
('POOPTIME CAT LITTER LEMON ', '3X10L ', 1, 612.00, 'CAT LITTER'),
('CUTIES TUNA FLAVOR', '1KG', 1, 130.00, 'CAT FOOD');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `date` date NOT NULL,
  `IN_AMOUNT` decimal(10,2) NOT NULL,
  `OUT_AMOUNT` decimal(10,2) NOT NULL,
  `BALANCE` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`date`, `IN_AMOUNT`, `OUT_AMOUNT`, `BALANCE`) VALUES
('2023-07-01', 300.00, 400.00, -100.00),
('2023-07-01', 100.00, 30.00, -30.00),
('2023-07-01', 4000.00, 1430.00, 2540.00),
('2023-07-01', 350.00, 20.00, 2870.00),
('2023-07-01', 500.00, 120.00, 3250.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
