-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2024 at 08:14 AM
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
-- Database: `high_school_registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_name` varchar(20) NOT NULL,
  `class_stream` varchar(20) DEFAULT NULL,
  `teacher_in_charge` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_name`, `class_stream`, `teacher_in_charge`) VALUES
('1 jujur', NULL, 'Asyraf Aznan'),
('1 leluhur', NULL, 'Mazila Ahmad'),
('2 jujur', NULL, 'Siti Hamzah'),
('2 leluhur', NULL, 'Noraini Fauzi'),
('3 jujur', NULL, 'Lai Chun Heng'),
('3 leluhur', NULL, 'Anita Tian'),
('4 jujur', 'sport science', 'Haikal Ibrahim'),
('4 leluhur', 'accountancy', 'Kamal Khairuddin'),
('5 jujur', 'sport science', 'Iskandar Kamaruddin'),
('5 leluhur', 'accountancy', 'Jessica Pen');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` varchar(20) NOT NULL,
  `street` varchar(45) NOT NULL,
  `postcode` varchar(8) NOT NULL,
  `state` varchar(20) NOT NULL,
  `phone_num_1` varchar(20) NOT NULL,
  `phone_num_2` varchar(20) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `std_id` varchar(20) NOT NULL,
  `guardian_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `street`, `postcode`, `state`, `phone_num_1`, `phone_num_2`, `email`, `std_id`, `guardian_id`) VALUES
('001', 'Jalan Wong', '25200', 'Pahang', '0138959107', '0199106301', 'hope@gmail.com', '2023678324', '040327101388'),
('002', 'Jalan Ah Chong', '25200', 'Pahang', '0138959123', '0199106498', 'kamal@gmail.com', '2023664211', '760212101111'),
('003', 'Jalan Royale', '95800', 'Selangor', '0145673428', '01678345678', 'hana@gmail.com', '2022578321', '801020022034'),
('004', 'Jalan Gamat', '72000', 'Perlis', '0167673428', '01988345678', 'amira@gmail.com', '2022568345', '001230145703'),
('005', 'Jalan Batu', '89000', 'Melaka', '0167690428', '01988675678', 'idlan@gmail.com', '2021018299', '780123033348'),
('006', 'Jalan Hussein', '56000', 'Johor', '0167690908', '01888675678', 'idlan@gmail.com', '2021454521', '761208025570'),
('007', 'Jalan Tok Chik', '56000', 'Johor', '0167690967', '01908675678', 'hazeeq@gmail.com', '2020728199', '840510068809'),
('008', 'Jalan Tok Ma', '526000', 'Pahang', '0167690543', '01898675678', 'emyrol@gmail.com', '2020647277', '930411071456'),
('009', 'Jalan Tok Din', '556000', 'Perak', '0124690543', '01998675671', 'khatty@gmail.com', '2019121388', '040717102836'),
('010', 'Jalan Musim', '253000', 'Terengganu', '0124690432', '01778675671', 'abu@gmail.com', '2019432109', '890719046072');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `fee_id` varchar(20) NOT NULL,
  `fee_PIBG` decimal(5,2) NOT NULL,
  `fee_coop` decimal(5,2) NOT NULL,
  `fee_tuition` decimal(5,2) NOT NULL,
  `is_paid` tinyint(4) NOT NULL,
  `is_SPONSORED` tinyint(4) NOT NULL,
  `std_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`fee_id`, `fee_PIBG`, `fee_coop`, `fee_tuition`, `is_paid`, `is_SPONSORED`, `std_id`) VALUES
('AR0011', 450.00, 310.00, 420.00, 0, 0, '2023664211'),
('AR0020', 450.00, 335.00, 432.00, 1, 1, '2019121388'),
('AR0025', 450.00, 327.00, 424.00, 0, 0, '2021454521'),
('AW0007', 450.00, 330.00, 432.00, 1, 0, '2022578321'),
('AW0026', 450.00, 340.00, 450.00, 1, 0, '2019432109'),
('AW0041', 450.00, 338.00, 450.00, 0, 0, '2020647277'),
('BC0002', 450.00, 327.00, 424.00, 0, 0, '2021018299'),
('BC0021', 450.00, 310.00, 420.00, 1, 1, '2023678324'),
('BC0026', 450.00, 332.00, 430.00, 1, 1, '2020728199'),
('CT0035', 450.00, 330.00, 432.00, 1, 0, '2022568345');

-- --------------------------------------------------------

--
-- Table structure for table `guardian`
--

CREATE TABLE `guardian` (
  `guardian_id` varchar(20) NOT NULL,
  `guardian_name` varchar(100) NOT NULL,
  `guardian_income` decimal(9,2) NOT NULL,
  `guardian_relationship` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guardian`
--

INSERT INTO `guardian` (`guardian_id`, `guardian_name`, `guardian_income`, `guardian_relationship`) VALUES
('001230145703', 'Amira Sofia', 5000.00, 'Aunt'),
('040327101388', 'Hany Ilyana', 10000.00, 'Sister'),
('040717102836', 'Khadijah Akmalia', 8900.00, 'Sister'),
('760212101111', 'Kamal Azha', 7000.00, 'Father'),
('761208025570', 'Fathiyah', 8000.00, 'Mother'),
('780123033348', 'Idlan Mahfuz', 1000.00, 'Father'),
('801020022034', 'Hana Delisha', 9000.00, 'Mother'),
('840510068809', 'Hazeeq Aiman', 30000.00, 'Father'),
('890719046072', 'Abu Handalah', 5000.00, 'Uncle'),
('930411071456', 'Emyrol Syafiq', 3500.00, 'Brother');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `std_id` varchar(20) NOT NULL,
  `std_name` varchar(100) NOT NULL,
  `std_ICNum` varchar(20) NOT NULL,
  `std_email` varchar(30) NOT NULL,
  `std_dob` date NOT NULL,
  `std_dor` date NOT NULL,
  `std_form` int(11) NOT NULL,
  `class_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`std_id`, `std_name`, `std_ICNum`, `std_email`, `std_dob`, `std_dor`, `std_form`, `class_name`) VALUES
('2019121388', 'Izzat Hakimi', '060922091143', 'izzat@gmail.com', '2010-09-22', '2019-01-16', 5, '5 Jujur'),
('2019432109', 'Amin Baihaqi Muhammad', '060921031143', 'baihaqi@gmail.com', '2010-09-21', '2019-01-16', 5, '5 Leluhur'),
('2020647277', 'Nur Farhana Syafiq', '070801081148', 'farhana@gmail.com', '2010-08-01', '2020-01-13', 4, '4 Leluhur'),
('2020728199', 'Siti Qaseh Hazeeq Aiman', '071012051146', 'qaseh@gmail.com', '2010-10-12', '2020-01-13', 4, '4 Jujur'),
('2021018299', 'Intan Delisha Idlan Mahfuz', '080427041142', 'intanDel@gmail.com', '2010-04-27', '2021-01-14', 3, '3 Jujur'),
('2021454521', 'Teuku Zakaria Teuku Nyak Puteh', '080201051143', 'ramlee@gmail.com', '2010-02-01', '2021-01-14', 3, '3 Leluhur'),
('2022568345', 'Ihsan Kamarulzaman', '090311061143', 'ihsan@gmail.com', '2010-03-11', '2022-01-15', 2, '2 Leluhur'),
('2022578321', 'Hazim Aisyoul Khorni', '090213085943', 'hazim@gmail.com', '2009-02-13', '2022-01-15', 2, '2 Jujur'),
('2023664211', 'Nur Qistina Kamal Azha', '100422021154', 'nurqis@gmail.com', '2010-04-22', '2023-01-13', 1, '1 Leluhur'),
('2023678324', 'Zamrul Nizam Ahmad', '100915081143', 'zamrul@gmail.com', '2010-09-15', '2023-01-13', 1, '1 Jujur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_name`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `std_id` (`std_id`),
  ADD KEY `guardian_id` (`guardian_id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`fee_id`),
  ADD UNIQUE KEY `std_id` (`std_id`);

--
-- Indexes for table `guardian`
--
ALTER TABLE `guardian`
  ADD PRIMARY KEY (`guardian_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`std_id`),
  ADD UNIQUE KEY `std_ICNum` (`std_ICNum`),
  ADD KEY `class_name` (`class_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`),
  ADD CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`guardian_id`) REFERENCES `guardian` (`guardian_id`);

--
-- Constraints for table `fee`
--
ALTER TABLE `fee`
  ADD CONSTRAINT `fee_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `student` (`std_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`class_name`) REFERENCES `class` (`class_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
