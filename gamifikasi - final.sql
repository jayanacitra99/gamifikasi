-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2022 at 12:07 AM
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
  `grades` int(11) DEFAULT NULL,
  `status` enum('DONE LATE','DONE') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignmentlog`
--

INSERT INTO `assignmentlog` (`assignmentLogID`, `memberID`, `assignmentID`, `files`, `grades`, `status`, `created_at`, `updated_at`) VALUES
(8, 2, 1, 'a:1:{i:0;s:53:\"1_mencubit-ilustrasi-_130529173708-366_1649722585.jpg\";}', 95, 'DONE', '2022-04-12 00:16:25', '2022-04-12 01:17:30');

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
  `types` enum('MATERI','TUGAS','KUIS') NOT NULL,
  `a_exp` int(11) DEFAULT NULL,
  `a_point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`assignmentID`, `courseID`, `title`, `description`, `files`, `link`, `start_date`, `end_date`, `types`, `a_exp`, `a_point`) VALUES
(1, 'CH1234', 'Materi BAB 121', 'asdlkfasdlfkadsj123456', 'a:2:{i:0;s:73:\"1648590724TUGAS_Materi BAB 1_rPmZuaXf9PfNnWebAi5479es9i6grcn0j2H5I5Ar.jpg\";i:1;s:73:\"1648590724TUGAS_Materi BAB 1_sa3153KiErBuBdJYjOiMHYMp7PoELZj21snW73AC.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-06', '2022-04-29', 'TUGAS', 100, 201),
(2, 'CH1234', 'Materi BAB 1325666', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590747TUGAS_Materi BAB 1_WkGo780YiFUtpSe7daMLpJ4a5VcZD9p3n6AoFASK.jpg\";i:1;s:73:\"1648590747TUGAS_Materi BAB 1_oSpIlZONmsX7EHzXL2inYBNkhWGtJPlQNL8NvwNp.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'KUIS', 1, 3),
(3, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590779TUGAS_Materi BAB 1_M3uaGmxXlrDHMQbRFCv6QaolgP2y3WbOXK1xlPp5.jpg\";i:1;s:73:\"1648590779TUGAS_Materi BAB 1_X58hOVlFbegvFCJKfNItFxJy1Xd5hIChZsL25ZnN.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'TUGAS', 0, 0),
(4, 'CH1234', 'Materi BAB 1', 'asdlkfasdlfkadsj', 'a:2:{i:0;s:73:\"1648590821TUGAS_Materi BAB 1_bkDiCAq44H8xOsso6zs8NmLjeDBNSPaw9wn8PfYj.jpg\";i:1;s:73:\"1648590821TUGAS_Materi BAB 1_0GIBtM1mSziAFLmX45O6KvxWjyUVjkaPwPiT1pCZ.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-08', '2022-04-29', 'MATERI', 0, 0),
(6, 'CH1234', 'Bab2', 'asdlkfasdlfkadsj', 'a:3:{i:0;s:33:\"1648591792TUGAS_Bab2_IMG_7376.JPG\";i:1;s:28:\"1648591792TUGAS_Bab2_ttd.jpg\";i:2;s:33:\"1648591792TUGAS_Bab2_ttdtrans.png\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-04-07', '2022-04-22', 'MATERI', 0, 0),
(7, 'CH1234', 'BAB3', '12345', 'a:2:{i:0;s:29:\"TUGAS_IMG_7376_1648592426.jpg\";i:1;s:24:\"TUGAS_ttd_1648592426.jpg\";}', 'http://gamifikasi.test/addAssignment/CH1234', '2022-03-30', '2022-03-31', 'KUIS', 50, 0),
(9, 'CH1234', 'Tes Materi', 'lalalalala', 'a:1:{i:0;s:58:\"MATERI_mencubit-ilustrasi-_130529173708-366_1650136784.jpg\";}', 'http://gamifikasi.test/addAssignment/CH1234', NULL, NULL, 'MATERI', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendancelog`
--

CREATE TABLE `attendancelog` (
  `attendanceLogID` int(11) NOT NULL,
  `courseID` varchar(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendancelog`
--

INSERT INTO `attendancelog` (`attendanceLogID`, `courseID`, `memberID`, `timestamp`) VALUES
(1, 'CH1234', 2, '2022-04-12 07:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `coursemembers`
--

CREATE TABLE `coursemembers` (
  `courseMemberID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `courseID` varchar(10) NOT NULL,
  `status` enum('COMPLETE','ONGOING','WAITING') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coursemembers`
--

INSERT INTO `coursemembers` (`courseMemberID`, `memberID`, `courseID`, `status`) VALUES
(1, 2, 'CH1234', 'ONGOING'),
(2, 2, 'CH12547', 'COMPLETE'),
(3, 13, 'CH1234', 'ONGOING'),
(6, 2, 'CH12547', 'WAITING');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` varchar(10) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `day` enum('Monday','Tuesday','Wednesday','Thursday','Friday') NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `instrukturID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `day`, `start_time`, `end_time`, `instrukturID`) VALUES
('CH1234', 'Machine Learning', 'Tuesday', '08:50:00', '15:50:00', 3),
('CH12547', 'Machine eee\r\n', 'Wednesday', '00:00:00', '00:00:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pointlog`
--

CREATE TABLE `pointlog` (
  `pointLogID` int(11) NOT NULL,
  `memberID` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `exp` int(11) NOT NULL,
  `info` enum('ASSIGNMENT','ATTENDANCE','REWARD') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pointlog`
--

INSERT INTO `pointlog` (`pointLogID`, `memberID`, `points`, `exp`, `info`, `timestamp`) VALUES
(2, 2, 500, 0, 'ASSIGNMENT', '2022-04-12 17:46:02'),
(3, 2, 200, 0, 'ATTENDANCE', '2022-04-12 17:46:06'),
(4, 2, 250, 0, 'ASSIGNMENT', '2022-04-12 18:22:50'),
(5, 2, 250, 200, 'ASSIGNMENT', '2022-04-12 18:23:48'),
(6, 2, 250, 200, 'ASSIGNMENT', '2022-04-12 18:24:36'),
(7, 2, 250, 200, 'REWARD', '2022-04-12 18:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` enum('PESERTA','ADMIN','INSTRUKTUR') NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` text DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `badges` enum('BRONZE','SILVER','GOLD','DIAMOND') DEFAULT NULL,
  `levels` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `exp` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `photo`, `password`, `phone`, `badges`, `levels`, `point`, `exp`, `updated_at`, `created_at`) VALUES
(1, 'ARIS FAJAR PURNOMO', 'ADMIN', 'aris@gmail.com', NULL, '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', '', 'DIAMOND', 0, 0, 0, '2022-03-25 10:18:08', '2022-03-16 01:08:37'),
(2, 'ARIS FAJAR PURNOMO', 'PESERTA', 'aris1@gmail.com', '2-profilepicture.jpg', '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', '081223456789', 'BRONZE', 1, 1700, 1200, '2022-04-12 18:24:40', '2022-03-16 01:08:37'),
(3, 'ARIS FAJAR PURNOMO', 'INSTRUKTUR', 'aris2@gmail.com', NULL, '$2y$10$gM.mVrR8sOU4QucOHj.TXeDXZe7hg7woIyE9IJmh0YYf12E7OBy/.', '', 'BRONZE', 0, 0, 0, '2022-03-16 01:08:37', '2022-03-16 01:08:37'),
(5, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(10, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(11, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(13, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(15, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(16, 'SUMARJANA', 'PESERTA', 'otis.koss@example.net', NULL, '$2y$10$Jg6Phq852hj.vThk8FSv.O/FiLT.tC1L53xS9u3F1OIsisb6juN3C', '', 'BRONZE', 0, 0, 0, '2022-03-16 17:30:28', '2022-03-16 17:30:28'),
(17, 'ARIS PRIK', 'PESERTA', 'jeramie17@example.com', NULL, '$2y$10$7Ww5zTJJzYj7XNowdLS6pudkfCHTxJHeHRoiQ.J.lW6H.fHIAmIOm', NULL, 'BRONZE', 0, 0, NULL, '2022-04-16 22:04:46', '2022-04-16 22:04:46');

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
-- Indexes for table `attendancelog`
--
ALTER TABLE `attendancelog`
  ADD PRIMARY KEY (`attendanceLogID`),
  ADD KEY `memberID` (`memberID`),
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
  MODIFY `assignmentLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `assignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `attendancelog`
--
ALTER TABLE `attendancelog`
  MODIFY `attendanceLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coursemembers`
--
ALTER TABLE `coursemembers`
  MODIFY `courseMemberID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pointlog`
--
ALTER TABLE `pointlog`
  MODIFY `pointLogID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
-- Constraints for table `attendancelog`
--
ALTER TABLE `attendancelog`
  ADD CONSTRAINT `attendancelog_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendancelog_ibfk_2` FOREIGN KEY (`courseID`) REFERENCES `courses` (`courseID`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Constraints for table `pointlog`
--
ALTER TABLE `pointlog`
  ADD CONSTRAINT `pointlog_ibfk_1` FOREIGN KEY (`memberID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
