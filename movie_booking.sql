-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 12:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(512) NOT NULL,
  `language` varchar(16) NOT NULL,
  `release_date` date NOT NULL,
  `country` varchar(64) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `title`, `description`, `language`, `release_date`, `country`, `genre`, `duration`, `image`) VALUES
(1, 'Chandigarh Kare Aashiqui', 'Manu, a bodybuilder from Chandigarh falls in love with Maanvi, a Zumba teacher. All seems well until a shocking revelation causes turmoil in their love story.', 'hindi', '2021-12-10', 'India', 'Romance', 120, 'chandigarh-kare-aashiqui.jpg'),
(2, 'Antim: The Final Truth', 'The cop played by Salman fights the land mafia in the film.', 'hindi', '2021-11-26', 'India', 'Action-Drama-Crime', 138, 'antim.jpg'),
(3, 'Muddy', 'Muddy is an adventurous thrilling movie that has several breathtaking moves which was brilliantly done by our Artists without any dupe. The mud race is choreographed by the Director, Dr. Pragabhal.', 'Hindi', '2021-12-10', 'India', 'Action-Thriller', 137, 'muddy.jpg'),
(4, 'Tadap', 'Unforeseen circumstances threaten the passionate relationship between star-crossed lovers.', 'hindi', '2012-12-03', 'India', '\r\nAction-Drama-Roman', 126, 'tadap.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`, `created_at`) VALUES
(1, 'gaurs', '$2y$10$MLP/0KCg9M6Qg', '2021-12-11 16:32:51'),
(2, 'gaurs1', '$2y$10$ofwaOa90yLP7a', '2021-12-11 16:32:51'),
(3, 'gaurs2', '$2y$10$GuVYlwe4lPWkJ', '2021-12-11 16:32:51'),
(4, 'gg', '$2y$10$e04noxmPlXB5Z', '2021-12-11 16:50:16'),
(5, 'gaur3', '123456', '2021-12-12 16:25:05'),
(6, 'gg2', '$2y$10$bGl.TbCDMRWK4LW.s7EzGuWITKRNTY6.C3tgRf2z3VeZOANsAXXrm', '2021-12-12 16:33:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
