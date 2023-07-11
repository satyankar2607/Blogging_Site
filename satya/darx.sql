-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 05:58 PM
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
-- Database: `darx`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `blogdata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `blogdata`) VALUES
(122, 'my name is rita'),
(122, 'my name is rita'),
(122, 'my name is rita'),
(122, 'wassup guyz\r\n'),
(122, 'wassup guyz\r\nmy name is sheela\r\nwyats yours');

-- --------------------------------------------------------

--
-- Table structure for table `users_master`
--

CREATE TABLE `users_master` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `usertype` text NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_master`
--

INSERT INTO `users_master` (`id`, `full_name`, `email`, `password`, `usertype`, `is_active`, `created_at`, `updated_at`) VALUES
(12, 'jvn', 'nsj@jnzc.com', 'jsnfkjdn', '', 1, '2023-05-22 22:54:28', '2023-05-22 20:54:54'),
(80, 'mysatya', 'sam@gmail.com', '123', '', 1, '2023-05-22 23:01:54', '2023-05-22 23:34:44'),
(86, 'sattu', 'akgec@gmail.com', '456', '', 1, '2023-05-22 23:01:54', '2023-05-23 16:23:28'),
(88, 'meme', 'meme@gmail.com', '', '', 1, '2023-05-22 23:01:54', '2023-05-23 16:32:27'),
(116, 'CS', 'satyankar@gmail.com', 'cs', '', 1, '2023-05-22 23:01:54', '2023-05-23 17:14:50'),
(117, 'ashmeet', 'satyankargoelnbd@gmail.com', 'adasdsa', '', 1, '2023-05-22 23:01:54', '2023-06-06 05:53:50'),
(118, 'ashmeet', 'satyankargoelnbd@gmail.com', 'adasdsa', '', 1, '2023-05-22 23:01:54', '2023-06-06 05:56:18'),
(119, 'hatim', 'adras@gmail.com', 'afsf', 'writer', 1, '2023-05-22 23:01:54', '2023-06-06 05:58:46'),
(120, 'sheela', 'sadaf@kiy.com', 'asfaf', 'reader', 1, '2023-05-22 23:01:54', '2023-06-06 05:59:11'),
(121, 'adarsh', '123@gmail.com', '123', 'reader', 1, '2023-05-22 23:01:54', '2023-06-06 06:27:20'),
(122, 'rita', 'rita@gmail.com', 'rita', 'writer', 1, '2023-05-22 23:01:54', '2023-06-06 06:29:30'),
(123, 'hena', 'hena@gy.com', '1234', 'writer', 1, '2023-05-22 23:01:54', '2023-06-06 06:30:50'),
(124, 'sam', 'sam@gmail.com', 'sam', 'writer', 1, '2023-05-22 23:01:54', '2023-06-09 06:34:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_master`
--
ALTER TABLE `users_master`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_master`
--
ALTER TABLE `users_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
