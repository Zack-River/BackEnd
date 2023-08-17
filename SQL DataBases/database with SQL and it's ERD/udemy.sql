-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2023 at 06:01 PM
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
-- Database: `udemy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(1, 'Development');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `name` varchar(50) NOT NULL,
  `cer_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`name`, `cer_id`) VALUES
('Backend', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cor 2 cat`
--

CREATE TABLE `cor 2 cat` (
  `cor_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `added_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cor 2 cat`
--

INSERT INTO `cor 2 cat` (`cor_id`, `cat_id`, `added_date`) VALUES
(1, 1, '2023-07-05'),
(2, 1, '2023-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `cor 2 cer`
--

CREATE TABLE `cor 2 cer` (
  `cor_id` int(10) NOT NULL,
  `cer_id` int(10) NOT NULL,
  `fin_date` date NOT NULL,
  `rate` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cor 2 cer`
--

INSERT INTO `cor 2 cer` (`cor_id`, `cer_id`, `fin_date`, `rate`) VALUES
(1, 1, '2023-07-05', 99);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) NOT NULL,
  `course_name` varchar(45) NOT NULL,
  `price` int(5) NOT NULL,
  `duration_hours` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `price`, `duration_hours`) VALUES
(1, 'Backend', 5000, 150),
(2, 'Frontend', 4000, 80);

-- --------------------------------------------------------

--
-- Table structure for table `ins 2 cor`
--

CREATE TABLE `ins 2 cor` (
  `COR_ID` int(10) NOT NULL,
  `ins_id` int(10) NOT NULL,
  `articles` int(3) NOT NULL,
  `sections` int(3) NOT NULL,
  `lectures` int(3) NOT NULL,
  `exercises` int(3) NOT NULL,
  `last_updated` date NOT NULL,
  `languages` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ins 2 cor`
--

INSERT INTO `ins 2 cor` (`COR_ID`, `ins_id`, `articles`, `sections`, `lectures`, `exercises`, `last_updated`, `languages`) VALUES
(1, 1, 150, 150, 150, 150, '2023-07-05', '');

-- --------------------------------------------------------

--
-- Table structure for table `instrector`
--

CREATE TABLE `instrector` (
  `ins_id` int(10) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instrector`
--

INSERT INTO `instrector` (`ins_id`, `fname`, `lname`, `phone`, `email`, `password`, `address`) VALUES
(1, 'omar', 'hatem', '0000000', 'sadasdasd', '123546789', '.....'),
(2, 'mostafa', 'Ahmed', '1235467891', 'dfdfefefeweqw', '123456789', '....');

-- --------------------------------------------------------

--
-- Table structure for table `stu 2 cor`
--

CREATE TABLE `stu 2 cor` (
  `COR_ID` int(10) NOT NULL,
  `stu_id` int(10) NOT NULL,
  `price` int(5) NOT NULL,
  `enroll_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stu 2 cor`
--

INSERT INTO `stu 2 cor` (`COR_ID`, `stu_id`, `price`, `enroll_date`) VALUES
(1, 1, 5000, '2023-07-04'),
(2, 1, 4000, '2023-07-04');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(10) NOT NULL,
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `lname`, `phone`, `email`, `password`, `address`) VALUES
(1, 'Abdallah', 'Wageeh', '01205330792', 'elmutamiz@gmail.com', '123456789', '....'),
(2, 'ali', 'wael', '01201024880', 'holaku@gmail.com', '123546789', '....');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`cer_id`);

--
-- Indexes for table `cor 2 cat`
--
ALTER TABLE `cor 2 cat`
  ADD KEY `cor_id` (`cor_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `cor 2 cer`
--
ALTER TABLE `cor 2 cer`
  ADD UNIQUE KEY `cor_id` (`cor_id`),
  ADD UNIQUE KEY `cer_id` (`cer_id`),
  ADD KEY `cor_id_2` (`cor_id`),
  ADD KEY `cer_id_2` (`cer_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `ins 2 cor`
--
ALTER TABLE `ins 2 cor`
  ADD UNIQUE KEY `ins_id` (`ins_id`),
  ADD KEY `COR_ID` (`COR_ID`),
  ADD KEY `ins_id_2` (`ins_id`);

--
-- Indexes for table `instrector`
--
ALTER TABLE `instrector`
  ADD PRIMARY KEY (`ins_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `stu 2 cor`
--
ALTER TABLE `stu 2 cor`
  ADD KEY `COR_ID` (`COR_ID`),
  ADD KEY `stu_id` (`stu_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `cer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `instrector`
--
ALTER TABLE `instrector`
  MODIFY `ins_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cor 2 cat`
--
ALTER TABLE `cor 2 cat`
  ADD CONSTRAINT `cor 2 cat_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`cat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cor 2 cat_ibfk_2` FOREIGN KEY (`cor_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cor 2 cer`
--
ALTER TABLE `cor 2 cer`
  ADD CONSTRAINT `cor 2 cer_ibfk_1` FOREIGN KEY (`cer_id`) REFERENCES `certificate` (`cer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cor 2 cer_ibfk_2` FOREIGN KEY (`cor_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ins 2 cor`
--
ALTER TABLE `ins 2 cor`
  ADD CONSTRAINT `ins 2 cor_ibfk_1` FOREIGN KEY (`COR_ID`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ins 2 cor_ibfk_2` FOREIGN KEY (`ins_id`) REFERENCES `instrector` (`ins_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stu 2 cor`
--
ALTER TABLE `stu 2 cor`
  ADD CONSTRAINT `stu 2 cor_ibfk_1` FOREIGN KEY (`COR_ID`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stu 2 cor_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;