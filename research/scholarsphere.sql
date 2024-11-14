-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2024 at 05:01 AM
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
-- Database: `scholarsphere`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookchaptersbyfaculty`
--

CREATE TABLE `bookchaptersbyfaculty` (
  `srNo` int(11) NOT NULL,
  `University` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Employee ID` int(11) NOT NULL,
  `other Author` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Co-author` varchar(100) NOT NULL,
  `booktitle` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `pubyear` year(4) NOT NULL,
  `volume` int(11) NOT NULL,
  `pagefrom` int(11) NOT NULL,
  `pageto` int(11) NOT NULL,
  `scopus` enum('y','n') NOT NULL,
  `listedin` varchar(100) NOT NULL,
  `wos` enum('y','n') NOT NULL,
  `peer` enum('y','n') NOT NULL,
  `issn` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pubname` varchar(100) NOT NULL,
  `affltn` varchar(100) NOT NULL,
  `corrauthor` varchar(100) NOT NULL,
  `citind` int(11) NOT NULL,
  `nocit` int(11) NOT NULL,
  `evdupload` varchar(100) NOT NULL,
  `othrinfo` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookchaptersbyfaculty`
--

INSERT INTO `bookchaptersbyfaculty` (`srNo`, `University`, `Department`, `Faculty`, `Employee ID`, `other Author`, `Type`, `Co-author`, `booktitle`, `region`, `pubdate`, `pubyear`, `volume`, `pagefrom`, `pageto`, `scopus`, `listedin`, `wos`, `peer`, `issn`, `isbn`, `pubname`, `affltn`, `corrauthor`, `citind`, `nocit`, `evdupload`, `othrinfo`, `ref`, `status`) VALUES
(3, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Selena', 'Machine Learning', 'International', '2024-09-10', '1986', 34, 56, 34, 'y', 'UGC', 'y', 'n', '11', '67', 'jk rowling', 'ICSE', 'Jane', 9, 3, 'uploads/Screenshot (19).png', '', '', 1),
(7, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'ML', 'International', '2024-09-09', '2019', 5, 21, 12, 'y', 'PubMed', 'n', 'n', '13', '67', 'jk rowling', 'ICSE', 'Jane', 3, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `booksbyfaculty`
--

CREATE TABLE `booksbyfaculty` (
  `srNo` int(11) NOT NULL,
  `University` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Employee ID` int(11) NOT NULL,
  `other Author` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Co-author` varchar(100) NOT NULL,
  `booktitle` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `pubyear` year(4) NOT NULL,
  `volume` varchar(100) NOT NULL,
  `pagefrom` int(11) NOT NULL,
  `pageto` int(11) NOT NULL,
  `scopus` enum('y','n') NOT NULL,
  `listedin` varchar(100) NOT NULL,
  `wos` enum('y','n') NOT NULL,
  `peer` enum('y','n') NOT NULL,
  `issn` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pubname` varchar(100) NOT NULL,
  `affltn` varchar(100) NOT NULL,
  `corrauthor` varchar(100) NOT NULL,
  `citind` int(11) NOT NULL,
  `nocit` int(11) NOT NULL,
  `evdupload` varchar(100) NOT NULL,
  `othrinfo` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booksbyfaculty`
--

INSERT INTO `booksbyfaculty` (`srNo`, `University`, `Department`, `Faculty`, `Employee ID`, `other Author`, `Type`, `Co-author`, `booktitle`, `region`, `pubdate`, `pubyear`, `volume`, `pagefrom`, `pageto`, `scopus`, `listedin`, `wos`, `peer`, `issn`, `isbn`, `pubname`, `affltn`, `corrauthor`, `citind`, `nocit`, `evdupload`, `othrinfo`, `ref`, `status`) VALUES
(7, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'Good girl guide to murder', 'National', '2024-09-21', '2019', '12', 12, 32, 'y', 'UGC', 'n', 'n', '90', '21', 'jk rowling', 'ICSE', 'Jane', 1, 2, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `papersbyfaculty`
--

CREATE TABLE `papersbyfaculty` (
  `srNo` int(11) NOT NULL,
  `University` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Employee ID` int(11) NOT NULL,
  `other Author` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Co-author` varchar(100) NOT NULL,
  `booktitle` varchar(100) NOT NULL,
  `journalname` varchar(100) NOT NULL,
  `conferenceName` varchar(100) NOT NULL,
  `conferencePaper` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `pubyear` year(4) NOT NULL,
  `volume` int(11) NOT NULL,
  `pagefrom` int(11) NOT NULL,
  `pageto` int(11) NOT NULL,
  `scopus` enum('y','n') NOT NULL,
  `listedin` varchar(100) NOT NULL,
  `wos` enum('y','n') NOT NULL,
  `peer` enum('y','n') NOT NULL,
  `issn` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pubname` varchar(100) NOT NULL,
  `affltn` varchar(100) NOT NULL,
  `corrauthor` varchar(100) NOT NULL,
  `citind` int(11) NOT NULL,
  `nocit` int(11) NOT NULL,
  `evdupload` varchar(100) NOT NULL,
  `othrinfo` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `papersbyfaculty`
--

INSERT INTO `papersbyfaculty` (`srNo`, `University`, `Department`, `Faculty`, `Employee ID`, `other Author`, `Type`, `Co-author`, `booktitle`, `journalname`, `conferenceName`, `conferencePaper`, `region`, `pubdate`, `pubyear`, `volume`, `pagefrom`, `pageto`, `scopus`, `listedin`, `wos`, `peer`, `issn`, `isbn`, `pubname`, `affltn`, `corrauthor`, `citind`, `nocit`, `evdupload`, `othrinfo`, `ref`, `status`) VALUES
(2, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'Goblet of Fire', 'AI', 'Machine', 'ML', 'National', '2024-09-03', '2019', 12, 12, 23, 'y', 'UGC', 'n', 'n', '90', '12', 'jk rowling', 'ICSE', 'Jane', 3, 3, '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registerinfo`
--

CREATE TABLE `registerinfo` (
  `emp_id` varchar(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `university` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `avatar_filename` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registerinfo`
--

INSERT INTO `registerinfo` (`emp_id`, `email`, `user_name`, `password`, `university`, `department`, `avatar_filename`) VALUES
('078', 'amannew@gmail.com', 'Aman Choudhary', '99', 'Amity University Patna', 'ASET', 'AmityOutside.jpg'),
('1', 'abhijit@ptn.amity.edu', 'Admin', 'admin', 'Amity University Patna', 'All', 'Screenshot 2023-06-12 120154.png'),
('10', 'Dollar@wagger.com', 'Dollar', 'treats', 'bhowbhow', 'None', 'default.jpg'),
('101', 'Dollar@wagger.com', 'dd', 'treats', 'bhowbhow', 'None', 'default.jpg'),
('1010', 'Dollar@wagger.com', 'Dollar', 'treats', 'bhowbhow', 'None', 'default.jpg'),
('12', 'shilpa.sinha3107@gmail.com', 'shilpa', 'abc', 'Amity University', 'Btech', 'back_arrow.png'),
('123', 'test@gmail.com', 'test', 'ttttt', 'test', 'test', '2023-02-27 193522.jpg'),
('123456', 'amannew111@gmail.com', 'Aman Ch.', '123456', 'aup', 'bca', 'default.jpg'),
('27170', 'pranjan@ptn.amity.edu', 'Preetish Ranjan', '12345678', 'Amity University Patna', 'ASET', 'Image0306.jpg'),
('27466', 'ssingh3@ptn.amity.edu', 'Shilpi', 'Beauty@0407', 'Amity University Patna', 'ASET', 'IMG-20200507-WA0003.jpg'),
('311072', 'rkumar2@ptn.amity.edu', 'Ritesh Kumar ', 'Rite@9021', 'Amity University Patna ', 'ARC', '1000029180.jpg'),
('7', 'aman.choudhary9834@gmail.com', 'amanchoudhary77433', 'aabbcc', 'amity', 'btech', 'IMG_20240329_230812.jpg'),
('7777', 'amannew111@gmail.com', 'Aman Ch.', '7777', 'aup', 'bca', 'default.jpg'),
('7781', 'amannew111@gmail.com', 'Aman Ch.', '7777', 'aup', 'bca', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `researchpapersbyfaculty`
--

CREATE TABLE `researchpapersbyfaculty` (
  `srNo` int(11) NOT NULL,
  `University` varchar(100) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Faculty` varchar(100) NOT NULL,
  `Employee ID` int(11) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Co-author` varchar(100) NOT NULL,
  `papertitle` varchar(100) NOT NULL,
  `journalname` varchar(100) NOT NULL,
  `article` varchar(100) NOT NULL,
  `region` varchar(100) NOT NULL,
  `pubdate` date NOT NULL,
  `pubyear` year(4) NOT NULL,
  `volume` int(11) NOT NULL,
  `pagefrom` int(11) NOT NULL,
  `pageto` int(11) NOT NULL,
  `impact` varchar(100) NOT NULL,
  `scopus` enum('y','n') NOT NULL,
  `listedin` varchar(100) NOT NULL,
  `wos` enum('y','n') NOT NULL,
  `peer` enum('y','n') NOT NULL,
  `issn` varchar(100) NOT NULL,
  `isbn` varchar(100) NOT NULL,
  `pubname` varchar(100) NOT NULL,
  `affltn` varchar(100) NOT NULL,
  `corrauthor` varchar(100) NOT NULL,
  `citind` int(11) NOT NULL,
  `nocit` int(11) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `evdupload` varchar(100) NOT NULL,
  `othrinfo` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `researchpapersbyfaculty`
--

INSERT INTO `researchpapersbyfaculty` (`srNo`, `University`, `Department`, `Faculty`, `Employee ID`, `Author`, `Type`, `Co-author`, `papertitle`, `journalname`, `article`, `region`, `pubdate`, `pubyear`, `volume`, `pagefrom`, `pageto`, `impact`, `scopus`, `listedin`, `wos`, `peer`, `issn`, `isbn`, `pubname`, `affltn`, `corrauthor`, `citind`, `nocit`, `link`, `evdupload`, `othrinfo`, `ref`, `status`) VALUES
(1, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'Good girl guide to murder', 'framework', 'Fear Street', 'International', '2024-09-12', '1988', 12, 12, 31, '12', 'y', 'UGC', 'n', 'n', '13', '21', 'jk rowling', 'ICSE', 'Jane', 34, 1, '', 'uploads/WhatsApp Image 2024-09-08 at 15.08.45.jpeg', '', '', 1),
(2, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Austin Mahonae', 'ML', 'AI', 'Fear Street', 'International', '2024-09-19', '2009', 12, 34, 67, '1.3', 'y', 'PubMed', 'n', 'n', '12', '21', 'jk rowling', 'ICSE', 'Jane', 5, 6, '', '', '', '', 0),
(44, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Selena', 'ML', 'Artificial Intelligenece', 'Fear Street123', 'National', '2024-09-11', '0000', 67, 54, 89, '8.0', 'y', 'UGC', 'n', 'n', '90', '89', 'jk rowling', 'ICSE', 'Jane', 7, 78, '', 'uploads/Screenshot (17).png', '', '', 1),
(46, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'ML', 'AI', 'Fear Street', 'National', '2024-09-19', '2019', 5, 12, 32, '1.3', 'y', 'UGC', 'n', 'n', '13', '21', 'jk rowling', 'ICSE', 'Jane', 9, 2, 'https://docs.google.com/document/d/1GPT5ag88xuTBGtSNtk_merjoRR0jzqGUfR9hnakG9ug/edit?usp=sharing', 'uploads/Screenshot (18).png', '', '', 1),
(47, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'Good girl guide to murder', 'framework', 'Fear Street', 'International', '2024-09-12', '1988', 12, 12, 31, '12', 'y', 'UGC', 'n', 'n', '13', '21', 'jk rowling', 'ICSE', 'Jane', 34, 1, '', '', '', '', 0),
(48, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', '', 'Jane Austin', 'ML', 'AI', 'Fear Street1', 'National', '2024-11-19', '2019', 1, 2, 3, '', 'y', 'PubMed', 'n', 'n', '23', '34', 'jk rowling', 'ICSE', 'Jane', 0, 0, '', '', '', '', 0),
(52, 'Amity University', 'Btech', 'shilpa', 12, 'shilpa', 'First Author', 'Jane Austin', 'ML', 'AI', 'Fear Street', 'National', '2024-11-27', '2009', 2, 2, 3, '', 'y', 'PubMed', 'n', 'n', '3', '5', 'jk rowling', 'ICSE', 'Jane', 0, 0, '', 'uploads/Screenshot (57).png', '', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookchaptersbyfaculty`
--
ALTER TABLE `bookchaptersbyfaculty`
  ADD PRIMARY KEY (`srNo`);

--
-- Indexes for table `booksbyfaculty`
--
ALTER TABLE `booksbyfaculty`
  ADD PRIMARY KEY (`srNo`);

--
-- Indexes for table `papersbyfaculty`
--
ALTER TABLE `papersbyfaculty`
  ADD PRIMARY KEY (`srNo`);

--
-- Indexes for table `registerinfo`
--
ALTER TABLE `registerinfo`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `researchpapersbyfaculty`
--
ALTER TABLE `researchpapersbyfaculty`
  ADD PRIMARY KEY (`srNo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookchaptersbyfaculty`
--
ALTER TABLE `bookchaptersbyfaculty`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booksbyfaculty`
--
ALTER TABLE `booksbyfaculty`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `papersbyfaculty`
--
ALTER TABLE `papersbyfaculty`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `researchpapersbyfaculty`
--
ALTER TABLE `researchpapersbyfaculty`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
