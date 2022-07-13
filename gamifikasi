-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2022 at 07:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamifikasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmentlog`
--

CREATE TABLE `assignmentlog` (
  `assignmentLogID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `assignmentID` int(11) NOT NULL,
  `files` text DEFAULT NULL,
  `grades` int(11) NOT NULL DEFAULT 0,
  `status` enum('DONE LATE','DONE') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignmentlog`
--

INSERT INTO `assignmentlog` (`assignmentLogID`, `memberID`, `assignmentID`, `files`, `grades`, `status`) VALUES
(1, 2, 1, 'a:1:{i:0;s:73:\"1648590724TUGAS_Materi BAB 1_rPmZuaXf9PfNnWebAi5479es9i6grcn0j2H5I5Ar.jpg\";}', 0, 'DONE');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `assignmentID` int(11) NOT NULL,
  `courseID` varchar(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `files` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `types` enum('MATERI','TUGAS','KUIS') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignmentID`, `courseID`, `title`, `description`, `files`, `link`, `start_date`, `end_date`, `types`) VALUES
(1, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590724TUGAS_Materi BAB 1_rPmZuaXf9PfNnWebAi5479es9i6grcn0j2H5I5Ar.jpg\";i:1;s:73:\"1648590724TUGAS_Materi BAB 1_sa3153KiErBuBdJYjOiMHYMp7PoELZj21snW73AC.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS'),
(2, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590747TUGAS_Materi BAB 1_WkGo780YiFUtpSe7daMLpJ4a5VcZD9p3n6AoFASK.jpg\";i:1;s:73:\"1648590747TUGAS_Materi BAB 1_oSpIlZONmsX7EHzXL2inYBNkhWGtJPlQNL8NvwNp.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS'),
(3, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590779TUGAS_Materi BAB 1_M3uaGmxXlrDHMQbRFCv6QaolgP2y3WbOXK1xlPp5.jpg\";i:1;s:73:\"1648590779TUGAS_Materi BAB 1_X58hOVlFbegvFCJKfNItFxJy1Xd5hIChZsL25ZnN.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS'),
(4, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590821TUGAS_Materi BAB 1_bkDiCAq44H8xOsso6zs8NmLjeDBNSPaw9wn8PfYj.jpg\";i:1;s:73:\"1648590821TUGAS_Materi BAB 1_0GIBtM1mSziAFLmX45O6KvxWjyUVjkaPwPiT1pCZ.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS'),
(5, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590987TUGAS_Materi BAB 1_LvvOakdaLJCKxtfkC7OlWq46PBguEhn7cl21Li1o.jpg\";i:1;s:73:\"1648590987TUGAS_Materi BAB 1_PSzlKdjQw1Q6kIsTrCq0Bk46O3X0wYfvvDom2c2X.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS'),
(6, 'CH1234', 'Bab2', 'asdlkfasdlfkadsj', 'a:3:{i:0;s:33:\"1648591792TUGAS_Bab2_IMG_7376.JPG\";i:1;s:28:\"1648591792TUGAS_Bab2_ttd.jpg\";i:2;s:33:\"1648591792TUGAS_Bab2_ttdtrans.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-07', '2022-04-22', 'TUGAS'),
(7, 'CH1234', 'BAB3', '12345', 'a:2:{i:0;s:29:\"TUGAS_IMG_7376_1648592426.jpg\";i:1;s:24:\"TUGAS_ttd_1648592426.jpg\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-03-30', '2022-03-31', 'TUGAS');

-- --------------------------------------------------------

--
-- Table structure for table `coursemembers`
--

CREATE TABLE `coursemembers` (
  `courseMemberID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `courseID` varchar(10) NOT NULL,
  `status` enum('COMPLETE','ONGOING') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursemembers`
--

INSERT INTO `coursemembers` (`courseMemberID`, `memberID`, `courseID`, `status`) VALUES
(1, 2, 'CH1234', 'ONGOING');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` varchar(10) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `instrukturID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `instrukturID`) VALUES
('CH1234', 'Machine Learning', 3),
('CH12547', 'Machine eee\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pointlog`
--

CREATE TABLE `pointlog` (
  `pointLogID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('PESERTA','ADMIN','INSTRUKTUR') NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `badges` enum('BRONZE','SILVER','GOLD','DIAMOND') DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `badges`, `levels`, `point`, `updated_at`, `created_at`) VALUES
(1, 'ARIS FAJAR PURNOMO', 'ADMIN', 'aris@gmail.com', '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', 'DIAMOND', 0, 0, '2022-03-25 10:18:08', '2022-03-16 01:08:37'),
(2, 'ARIS FAJAR PURNOMO', 'PESERTA', 'aris1@gmail.com', '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', 'BRONZE', 0, 0, '2022-03-16 01:08:37', '2022-03-16 01:08:37'),
(3, 'ARIS FAJAR PURNOMO', 'INSTRUKTUR', 'aris2@gmail.com', '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', 'BRONZE', 0, 0, '2022-03-16 01:08:37', '2022-03-16 01:08:37'),
(5, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(10, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(11, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(13, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(15, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(16, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', 'BRONZE', 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmentlog`
--
ALTER TABLE `assignmentlog`
  ADD PRIMARY KEY (`assignmentLogID`),
  ADD KEY `assignmentID` (`assignmentID`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`assignmentID`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `coursemembers`
--
ALTER TABLE `coursemembers`
  ADD PRIMARY KEY (`courseMemberID`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`),
  ADD KEY `instrukturID` (`instrukturID`);

--
-- Indexes for table `pointlog`
--
ALTER TABLE `pointlog`
  ADD PRIMARY KEY (`pointLogID`),
  ADD KEY `memberID` (`memberID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignmentlog`
--
ALTER TABLE `assignmentlog`
  MODIFY `assignmentLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coursemembers`
--
ALTER TABLE `coursemembers`
  MODIFY `courseMemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pointlog`
--
ALTER TABLE `pointlog`
  MODIFY `pointLogID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignmentlog`
--
ALTER TABLE `assignmentlog`
  ADD CONSTRAINT `assignmentlog_ibfk_2` FOREIGN KEY (`assignmentID`) REFERENCES `assignments` (`assignmentID`),
  ADD CONSTRAINT `assignmentlog_ibfk_3` FOREIGN KEY (`memberID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`);

--
-- Constraints for table `coursemembers`
--
ALTER TABLE `coursemembers`
  ADD CONSTRAINT `coursemembers_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`),
  ADD CONSTRAINT `coursemembers_ibfk_2` FOREIGN KEY (`memberID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`instrukturID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
