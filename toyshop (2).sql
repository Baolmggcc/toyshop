-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2023 at 08:19 PM
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
-- Database: `toyshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `cquantity` int(10) NOT NULL,
  `totalmount` int(20) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartid`, `username`, `productid`, `cquantity`, `totalmount`, `date`) VALUES
(21, 'aaa', 'A09', 2, 0, '2023-10-20'),
(22, 'aaa', 'A11', 15, 0, '2023-10-20'),
(23, 'aaa', 'P06', 2, 0, '2023-10-21'),
(33, 'LMGB', 'P06', 6, 0, '2023-10-21'),
(34, 'LMGB', 'A09', 5, 0, '2023-10-21'),
(35, 'LMGB', 'A11', 6, 0, '2023-10-21'),
(36, 'LMGB', 'A13', 1, 0, '2023-10-21'),
(37, 'LMGB', 'A14', 1, 0, '2023-10-21');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` varchar(10) NOT NULL,
  `categoryname` varchar(20) NOT NULL,
  `disciption` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `categoryname`, `disciption`) VALUES
('A01', 'Vehicle', 'All car enthusiasts start somewhere. Whether your '),
('A02', 'House Model', 'Koleksi mobil mini diorama mewah di ruangan Anda sendiri. Seperti mobil yang satu ini, miniatur diorama buatan Unifortune ini berbahan paduan besi dan plastic parts. Diorama dari brand RMZ City ini di'),
('A03', 'Super Hero', 'It\'s fair to say that most children idolize superheroes at some point in their lives. Who wouldn\'t want to be able to fly or shoot webs from their hands while saving the world from the bad guys?! Batm'),
('A04', 'Lego', 'Free play is how children develop their imagination – the foundation for creativity. Curiosity asks WHY and imagines possible explanations. Playfulness asks WHAT IF and imagines how the ordinary becom'),
('A05', 'Barbie', 'Barbie was introduced to the world in 1959 after Ruth Handler, co-owner of Mattel toy company, noticed her daughter Barbara and friends were using paper dolls to act out more mature roles and imaginin');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `orderid` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `productid` varchar(10) NOT NULL,
  `quantity` int(20) NOT NULL,
  `total` int(20) NOT NULL,
  `orderdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `productname` varchar(20) NOT NULL,
  `categoryid` varchar(10) NOT NULL,
  `supplierid` varchar(10) NOT NULL,
  `importprice` int(20) NOT NULL,
  `sellprice` int(20) NOT NULL,
  `quantity` int(10) NOT NULL,
  `pimage` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `disciption` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `categoryid`, `supplierid`, `importprice`, `sellprice`, `quantity`, `pimage`, `date`, `disciption`) VALUES
('A09', 'Mcfarlane Toys Actio', 'A03', 'S03', 309000, 315000, 130, '10513245_1.webp', '2023-10-19', 'Multiverse Batman characters that kids love\r\nTrain'),
('A11', 'Mcfarlane Toys Actio', 'A03', 'S03', 379000, 385000, 132, '10508728_1.webp', '2023-10-19', 'The Gladiator Batman character that children like\r'),
('A13', 'LEGO® City Stunt Pla', 'A04', 'S04', 120000, 129000, 131, '10468715_1.webp', '2023-10-18', 'Suitable for ages 5+\r\nConsisting of 59 pcs\r\nMateri'),
('A14', 'LEGO® Classic Creati', 'A04', 'S04', 129000, 143000, 120, '10474108_1.webp', '2023-10-18', 'Suitable for ages: 4+\r\nSize: 140 pcs\r\nMaterial: AB'),
('A15', 'LEGO® Minecraft The ', 'A04', 'S04', 1200000, 1210000, 95, '10487519_1.webp', '2023-10-16', 'Suitable for ages 8+\r\nConsisting of 499 pcs\r\nMater'),
('B01', 'Barbie Boneka Dreamt', 'A05', 'S05', 150000, 159000, 122, '10421929_1.webp', '2023-10-15', 'Cute barbie doll\r\nChildren\'s learning and playing facilities\r\nTrain children\'s sense of caring from an early age\r\nDevelop children\'s motor skills, creativity and imagination\r\nQuality materials that ar'),
('B02', 'Barbie Boneka Sport ', 'A05', 'S05', 332000, 339000, 95, '10418491_1.jpg', '2023-10-13', 'Cute barbie doll\r\nChildren\'s learning and playing facilities\r\nTrain children\'s sense of caring from an early age\r\nDevelop children\'s motor skills, creativity and imagination\r\nQuality materials that ar'),
('B03', 'Barbie Glam Vacation', 'A05', 'S05', 399000, 415000, 95, '10086185_1.webp', '2023-10-12', 'Suitable for children aged 5 years and over\r\nContains swimwear, t-shirts, beach skirts, hats, glasses and bags\r\nColors and types cannot be selected, depending on item availability\r\nBarbie Glam Vacatio'),
('P01', 'RMZ CITY DIECAST LAN', 'A01', 'S01', 109900, 120000, 120, 'defender-1-300x300.jpg', '2023-10-19', 'RMZ City Diecast Land Rover Defender 5 Inch Pullba'),
('P02', 'TOY ADDICT DIY ENGIN', 'A01', 'S01', 110000, 130000, 130, 'Toy-Addict-DIY-Engineering-Truck-Vehicle-4-300x300.jpg', '2023-10-14', 'Toy Addict DIY Engineering Truck Vehicle DIY Truck'),
('P03', 'RMZ CITY DIECAST MER', 'A01', 'S01', 119000, 125000, 130, '554991ME-300x300.jpg', '2023-10-18', 'Collection of luxury diecast miniature cars in you'),
('P04', 'RMZ CITY DIECAST MCL', 'A01', 'S01', 135000, 145000, 100, '992M-1.jpg', '2023-09-29', 'Collection of luxury diecast miniature cars in you'),
('P06', 'RMZ CITY DIORAMA POS', 'A02', 'S02', 70000, 79000, 85, '614005-300x300.jpg', '2023-10-21', 'A luxury mini diorama car collection in your own s'),
('P08', 'RMZ CITY DIORAMA STR', 'A02', 'S02', 69000, 75000, 65, '614017-300x300.jpg', '2023-10-19', 'A luxury mini diorama car collection in your own s'),
('P12', 'LEGO Dots Lots Of Do', 'A04', 'S04', 209000, 215000, 152, '10474119_1.webp', '2023-10-19', 'Material that is safe to use\r\nTrain your little on');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplierid` varchar(10) NOT NULL,
  `suppliername` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplierid`, `suppliername`, `address`) VALUES
('S01', 'DIY', ' Piazza Guglielmo Pepe 145'),
('S02', 'ATD', 'Corso Casale 10'),
('S03', 'SBK', 'Piazza Trieste e Trento 60'),
('S04', 'FBD', ' Via Raffaele Conforti 104'),
('S05', 'ASD', 'Vico Giganti 45');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `role` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`role`, `username`, `fullname`, `password`, `email`, `phone`, `gender`, `address`) VALUES
('', 'aaa', 'LưU MINH GIA BảO', '1', 'anha098765@gmail.com', 2147483647, 'female', '21 Huynh Tinh Cua StreetWard 8, District 3'),
('admin', 'BHKO', 'NGUYEN NGOC GIAU', '242424', 'giaum@gmail.com', 335545465, 'female', '91 Pho Duc Chinh, Dist.1'),
('', 'CHUNGDC', 'DANG QUOC CHUNG', '12345678', 'anha098765@gmail.com', 866164444, 'male', '21 Huynh Tinh Cua StreetWard 8, District 3'),
('admin', 'LMGB', 'LUU MINH GIA BAO', '2431998', 'baolm@gmail.com', 862637767, 'male', '17 Hang Giao Street');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `tt` (`productid`),
  ADD KEY `hhhh` (`username`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `sfssf` (`username`),
  ADD KEY `fff` (`productid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `cc` (`categoryid`),
  ADD KEY `dd` (`supplierid`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `orderid` int(10) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `hhhh` FOREIGN KEY (`username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `tt` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fff` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `sfssf` FOREIGN KEY (`username`) REFERENCES `user` (`username`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `cc` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`),
  ADD CONSTRAINT `dd` FOREIGN KEY (`supplierid`) REFERENCES `supplier` (`supplierid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
