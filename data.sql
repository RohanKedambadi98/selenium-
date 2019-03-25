-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 20, 2019 at 09:29 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

create database data;
use data;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ercess-event`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles2`
--

CREATE TABLE `articles2` (
  `id` int(6) NOT NULL,
  `country` varchar(45) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `profile_image` varchar(350) NOT NULL,
  `banner` varchar(350) NOT NULL,
  `event_start_date` timestamp NULL DEFAULT NULL,
  `event_end_date` timestamp NULL DEFAULT NULL,
  `address_line1` mediumtext,
  `address_line2` mediumtext,
  `pincode` int(7) NOT NULL,
  `state` varchar(30) NOT NULL,
  `city` text NOT NULL,
  `full_address` varchar(350) NOT NULL,
  `event_start_time` time NOT NULL,
  `event_end_time` time NOT NULL,
  `description` longtext CHARACTER SET utf16 NOT NULL) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles2`
--

INSERT INTO `articles2` (`id`, `country`, `event_name`, `profile_image`, `banner`, `event_start_date`, `event_end_date`, `address_line1`, `address_line2`, `pincode`, `state`, `city`, `full_address`, `event_start_time`, `event_end_time`, `description`) VALUES
(1, 'India', 'Event name 1', '/images/event-name-1-thumbnail.png', '/images/event-name-1-banner.png', '2019-04-18 00:00:00', '2019-04-21 00:00:00', 'Sterlings Mac (Matthan Hotel)', '134, HAL Old Airport Road, Kodihalli', 560017, 'Karnataka', 'Bangalore', 'Sterlings Mac (Matthan Hotel), 134, HAL Old Airport Road, Kodihalli, Bangalore, Karnataka - 560017', '09:00:00', '17:30:00', '<p><strong>Event name 1</strong></p>\n\n<p>Description1 goes here</p>'),
(2, 'India', 'Event name 2', '/images/event-name-2-thumbnail.png', '/images/event-name-1-banner.png', '2019-04-11 00:00:00', '2019-04-21 00:00:00', 'Sterlings Mac (Matthan Hotel)', '134, HAL Old Airport Road, Kodihalli', 560017, 'Karnataka', 'Bangalore', 'Sterlings Mac, 134, HAL Old Airport Road, Kodihalli, Bangalore, Karnataka - 560017', '09:00:00', '17:30:00', '<p><strong>Event name 2</strong></p>\n\n<p>Description2 goes here</p>');
--
-- Indexes for dumped tables
--
select * from articles2;
--
-- Indexes for table `articles2`
--
ALTER TABLE `articles2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`event_name`,`event_start_date`,`event_end_date`,`full_address`),
  ADD KEY `full_address` (`full_address`),
  ADD KEY `full_address_2` (`full_address`),
  ADD KEY `id` (`id`),
  ADD KEY `event_name` (`event_name`),
  ADD KEY `sDate` (`event_start_date`),
  ADD KEY `eDate` (`event_end_date`),
  ADD KEY `id_2` (`id`),
  ADD KEY `country` (`country`),
  ADD KEY `event_name_2` (`event_name`),
  ADD KEY `sDate_2` (`event_start_date`),
  ADD KEY `eDate_2` (`event_end_date`),
  ADD KEY `state` (`state`),
 -- ADD KEY `locality` (`locality`),
  ADD KEY `start_time` (`event_start_time`),
  ADD KEY `start_time_2` (`event_start_time`),
  ADD KEY `end_time` (`event_end_time`),
  ADD KEY `id_3` (`id`),
  ADD KEY `id_4` (`id`),
  ADD KEY `event_name_3` (`event_name`),
  ADD KEY `md5` (`md5`),
  ADD KEY `sDate_3` (`event_start_date`),
  ADD KEY `eDate_3` (`event_end_date`),
  ADD KEY `latitude` (`latitude`),
  ADD KEY `longitude` (`longitude`),
  ADD KEY `start_time_3` (`event_start_time`),
  ADD KEY `end_time_2` (`event_end_time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles2`
--
ALTER TABLE `articles2`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36625;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
