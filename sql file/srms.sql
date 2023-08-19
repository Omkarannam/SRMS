-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2022 at 02:45 AM
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
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `AdminName` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `AdminName`, `Gender`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Krishna', 'Male', 'krish', 'bc0d8dea38e46ca5e969325f9d1bf9a0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(0, 'CSE', 1, 'A', '2022-05-09 00:05:26', NULL),
(1, 'CSE', 1, 'B', '2022-05-09 00:05:49', NULL),
(2, 'ECE', 1, 'A', '2022-05-09 00:06:02', NULL),
(3, 'ME', 1, 'A', '2022-05-09 00:06:15', NULL),
(4, 'ME', 2, 'A', '2022-05-09 00:06:25', NULL),
(5, 'ECE', 2, 'A', '2022-05-09 00:06:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculty`
--

CREATE TABLE `tblfaculty` (
  `FacultyId` int(11) NOT NULL,
  `FacultyName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `FacultyEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfaculty`
--

INSERT INTO `tblfaculty` (`FacultyId`, `FacultyName`, `RollId`, `FacultyEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`, `UserName`, `Password`) VALUES
(1, 'Warner', '22020', 'warner@gmail.com', 'Male', '1989-05-02', 10, '2022-05-09 00:16:52', NULL, 1, 'warner', '1660885848050e9ca9746ddd54e2de25'),
(2, 'Yami', '22021', 'ysukehiro@gmail.com', 'Male', '1985-05-23', 11, '2022-05-09 00:18:44', NULL, 1, 'ysukehiro', 'e9b406ac30bea80bcad271ffae50b246'),
(3, 'Loki', '22022', 'loki@gmail.com', 'Male', '1980-04-05', 13, '2022-05-09 00:19:56', NULL, 0, 'loki', 'e64cfa3fd59e32df57003c7401f48c99');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(1, 'Holiday', 'There will be a holiday tomorrow because of Dussehra. Wish you all Happy Dussehra.', '2022-05-09 00:34:12'),
(2, 'Pratical Exams', 'From 10 May onwards there will be pratical examinations. Be prepare well.', '2022-05-09 00:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(1, 17, 10, 15, 96, '2022-05-09 00:38:29', NULL),
(2, 17, 10, 17, 97, '2022-05-09 00:38:29', NULL),
(3, 17, 10, 18, 98, '2022-05-09 00:38:29', NULL),
(4, 17, 10, 20, 96, '2022-05-09 00:38:29', NULL),
(5, 15, 11, 15, 96, '2022-05-09 00:39:37', NULL),
(6, 15, 11, 18, 96, '2022-05-09 00:39:37', NULL),
(7, 20, 11, 15, 98, '2022-05-09 00:39:50', NULL),
(8, 20, 11, 18, 97, '2022-05-09 00:39:51', NULL),
(9, 14, 12, 15, 94, '2022-05-09 00:40:07', NULL),
(10, 14, 12, 17, 99, '2022-05-09 00:40:07', NULL),
(11, 13, 12, 15, 46, '2022-05-09 00:40:23', NULL),
(12, 13, 12, 17, 85, '2022-05-09 00:40:23', NULL),
(13, 18, 13, 13, 99, '2022-05-09 00:40:45', NULL),
(14, 18, 13, 12, 78, '2022-05-09 00:40:45', NULL),
(15, 19, 14, 19, 89, '2022-05-09 00:41:00', NULL),
(16, 19, 14, 18, 93, '2022-05-09 00:41:00', NULL),
(17, 19, 14, 20, 95, '2022-05-09 00:41:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`, `UserName`, `Password`) VALUES
(1, 'Hari', '10210', 'hari@gmail.com', 'Male', '2001-04-05', 12, '2022-05-09 00:21:46', NULL, 1, 'hari', '73803249c6667c5af2d51c0dedfae487'),
(2, 'Bhanu', '10155', 'bhanu@gmail.com', 'Male', '2002-12-23', 12, '2022-05-09 00:22:37', NULL, 1, 'bhanu', '3bae3e0533be12dbaab717f8acb02a56'),
(3, 'Sandeep', '10155', 'sandeep@gmail.com', 'Male', '2001-04-20', 11, '2022-05-09 00:23:27', NULL, 1, 'sandeep', '00dcf16d903e5890aaba465b0b1ba51f'),
(4, 'Swetha', '10230', 'swetha@gmail.com', 'Female', '2002-08-05', 15, '2022-05-09 00:24:42', NULL, 1, 'swetha', '9d7149915135ed6dc6e6c54f333f8f98'),
(5, 'Charan', '10238', 'charan@gmail.com', 'Male', '2002-02-05', 10, '2022-05-09 00:25:30', NULL, 1, 'charan', '2ebb15f171339fbb56fc3f21d1842c9c'),
(6, 'Anupama', '10562', 'anupama@gmail.com', 'Female', '2003-11-04', 13, '2022-05-09 00:26:34', NULL, 1, 'anupama', 'f4a467065a1cea392bc7a5a65e73c3d3'),
(7, 'Manasa', '10493', 'manasa@gmail.com', 'Female', '1999-03-30', 14, '2022-05-09 00:27:57', NULL, 1, 'manasa', '886f170ef569df7f0306a5644cec0616'),
(8, 'Tanuj', '10729', 'tanuj@gmail.com', 'Male', '2003-12-03', 11, '2022-05-09 00:28:57', NULL, 1, 'tanuj', '48fa2ff0390236f15c96b9785c2af7e3');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(1, 10, 17, 1, '2022-05-09 00:12:01', NULL),
(2, 10, 15, 1, '2022-05-09 00:12:13', NULL),
(3, 11, 15, 0, '2022-05-09 00:13:09', '2022-05-09 00:15:23'),
(4, 11, 18, 1, '2022-05-09 00:13:20', NULL),
(5, 11, 20, 1, '2022-05-09 00:13:25', NULL),
(6, 10, 18, 1, '2022-05-09 00:13:31', NULL),
(7, 10, 20, 1, '2022-05-09 00:13:39', NULL),
(8, 12, 15, 1, '2022-05-09 00:13:49', NULL),
(9, 12, 17, 1, '2022-05-09 00:13:55', NULL),
(10, 13, 12, 1, '2022-05-09 00:14:04', NULL),
(11, 13, 13, 1, '2022-05-09 00:14:12', NULL),
(12, 14, 18, 1, '2022-05-09 00:14:26', NULL),
(13, 14, 20, 1, '2022-05-09 00:14:32', NULL),
(14, 14, 19, 1, '2022-05-09 00:14:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Material Science and Engineering.', 'ME 210', '2022-05-09 00:07:38', NULL),
(2, 'Fluid Mechanics.', 'ML 096', '2022-05-09 00:07:56', NULL),
(3, 'Engineering Mechanics.', 'ME 102', '2022-05-09 00:08:24', NULL),
(4, 'Analog Electronics-I	', 'EEE 302', '2022-05-09 00:09:21', NULL),
(5, 'Analog Electronics-II', 'EEE 103', '2022-05-09 00:09:36', NULL),
(6, 'Operating System', 'CSE 303', '2022-05-09 00:10:16', NULL),
(7, 'Software Engineering', 'CSE 305', '2022-05-09 00:10:38', NULL),
(8, 'Electrical Engineering Materials	', 'EEE 136', '2022-05-09 00:11:27', NULL),
(9, 'Software Engineering Lab', 'CSE 305L', '2022-05-09 00:11:49', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblclasses`
--
ALTER TABLE `tblclasses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  ADD PRIMARY KEY (`FacultyId`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresult`
--
ALTER TABLE `tblresult`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`StudentId`);

--
-- Indexes for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblclasses`
--
ALTER TABLE `tblclasses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblfaculty`
--
ALTER TABLE `tblfaculty`
  MODIFY `FacultyId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblresult`
--
ALTER TABLE `tblresult`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `StudentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubjectcombination`
--
ALTER TABLE `tblsubjectcombination`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tblsubjects`
--
ALTER TABLE `tblsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
