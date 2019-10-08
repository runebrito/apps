-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 08:14 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_tienda`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `Id` int(11) NOT NULL,
  `BrandName` varchar(70) DEFAULT NULL,
  `Description` text,
  `SupplyerId` varchar(20) DEFAULT NULL,
  `CreatorId` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `Id` int(11) NOT NULL,
  `CatagoryName` varchar(70) DEFAULT NULL,
  `CatagoryDescription` text,
  `BrandId` varchar(20) DEFAULT NULL,
  `SupplyerId` int(11) DEFAULT NULL,
  `CreatorId` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `CustomerName` varchar(200) NOT NULL,
  `CustomerContNo` varchar(200) DEFAULT NULL,
  `CustomerAddress` text,
  `TotalBuy` varchar(50) DEFAULT NULL,
  `CreatorId` varchar(11) DEFAULT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `organize`
--

CREATE TABLE `organize` (
  `Id` int(1) NOT NULL,
  `OrgName` varchar(100) DEFAULT NULL,
  `OrgWeb` varchar(100) DEFAULT NULL,
  `OrgContactNumbers` text,
  `OrgContactAddress` text,
  `OrgLogo` mediumblob,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `ProductId` varchar(20) NOT NULL,
  `ProductName` varchar(150) NOT NULL,
  `Quantity` varchar(11) NOT NULL DEFAULT '0',
  `Description` text,
  `SupplyerId` varchar(11) NOT NULL,
  `BrandId` varchar(11) NOT NULL,
  `CatagoryId` varchar(11) NOT NULL,
  `UnitId` varchar(11) NOT NULL,
  `PursesPrice` varchar(100) NOT NULL,
  `SellPrice` varchar(100) NOT NULL,
  `RMAId` varchar(11) NOT NULL,
  `UserId` varchar(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rma`
--

CREATE TABLE `rma` (
  `Id` int(11) NOT NULL,
  `RMAName` varchar(100) DEFAULT NULL,
  `RMADays` varchar(11) NOT NULL,
  `Comment` text,
  `CreatorId` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sell`
--

CREATE TABLE `sell` (
  `Id` int(11) NOT NULL,
  `SellId` varchar(10) NOT NULL,
  `CustomerId` varchar(11) NOT NULL,
  `ProductId` varchar(11) NOT NULL,
  `PursesPrice` double NOT NULL,
  `SellPrice` double NOT NULL,
  `Quantity` int(10) NOT NULL,
  `TotalPrice` double NOT NULL,
  `WarrentyVoidDate` varchar(20) NOT NULL,
  `SellerId` int(11) NOT NULL,
  `SellDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supplyer`
--

CREATE TABLE `supplyer` (
  `Id` int(11) NOT NULL,
  `SupplyerName` varchar(100) DEFAULT NULL,
  `SupplyerPhoneNumber` text,
  `SupplyerAddress` text,
  `SuplyerDescription` text,
  `CreatorId` int(11) DEFAULT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `Id` int(11) NOT NULL,
  `UnitName` varchar(50) DEFAULT NULL,
  `UnitDescription` text,
  `CreatorId` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `UsrName` varchar(20) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailAddress` varchar(100) DEFAULT NULL,
  `ContactNumber` varchar(100) DEFAULT NULL,
  `Salary` double DEFAULT NULL,
  `Address` text,
  `Password` varchar(45) DEFAULT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  `UserImage` mediumblob,
  `Date` date NOT NULL,
  `CreatorId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `UsrName`, `FullName`, `EmailAddress`, `ContactNumber`, `Salary`, `Address`, `Password`, `Status`, `UserImage`, `Date`, `CreatorId`) VALUES
(1, 'admin', 'admin', NULL, NULL, NULL, NULL, 'admin', 1, NULL, '2019-04-12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userpermission`
--

CREATE TABLE `userpermission` (
  `Id` int(11) NOT NULL,
  `AddProduct` tinyint(1) DEFAULT NULL,
  `AddSupplyer` tinyint(1) DEFAULT NULL,
  `AddBrand` tinyint(1) DEFAULT NULL,
  `AddCatagory` tinyint(1) DEFAULT NULL,
  `AddUnit` tinyint(1) DEFAULT NULL,
  `AddCustomer` tinyint(1) DEFAULT NULL,
  `UpdateProduct` tinyint(1) DEFAULT NULL,
  `UpdateSupplyer` tinyint(1) DEFAULT NULL,
  `UpdateBrand` tinyint(1) DEFAULT NULL,
  `UpdateCatagory` tinyint(1) DEFAULT NULL,
  `UpdateUnit` tinyint(1) DEFAULT NULL,
  `UpdateCustomer` tinyint(1) DEFAULT NULL,
  `RMAManage` tinyint(1) DEFAULT NULL,
  `SellProduct` tinyint(1) DEFAULT NULL,
  `ProvideDiscount` tinyint(1) DEFAULT NULL,
  `EmployeManage` tinyint(1) DEFAULT NULL,
  `OrgManage` tinyint(1) DEFAULT NULL,
  `ChangeOwnPass` tinyint(1) DEFAULT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpermission`
--

INSERT INTO `userpermission` (`Id`, `AddProduct`, `AddSupplyer`, `AddBrand`, `AddCatagory`, `AddUnit`, `AddCustomer`, `UpdateProduct`, `UpdateSupplyer`, `UpdateBrand`, `UpdateCatagory`, `UpdateUnit`, `UpdateCustomer`, `RMAManage`, `SellProduct`, `ProvideDiscount`, `EmployeManage`, `OrgManage`, `ChangeOwnPass`, `UserId`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `organize`
--
ALTER TABLE `organize`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `rma`
--
ALTER TABLE `rma`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `sell`
--
ALTER TABLE `sell`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `supplyer`
--
ALTER TABLE `supplyer`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indexes for table `userpermission`
--
ALTER TABLE `userpermission`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rma`
--
ALTER TABLE `rma`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sell`
--
ALTER TABLE `sell`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supplyer`
--
ALTER TABLE `supplyer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `userpermission`
--
ALTER TABLE `userpermission`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
