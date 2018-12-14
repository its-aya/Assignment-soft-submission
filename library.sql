-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2018 at 10:31 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `Author_ID` int(11) NOT NULL,
  `Author_Name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`Author_ID`, `Author_Name`) VALUES
(1, 'Shelley\r\n'),
(4, 'Elizabeth Gaskell'),
(5, 'Roald Dahl');

-- --------------------------------------------------------

--
-- Table structure for table `authors_has_item`
--

CREATE TABLE `authors_has_item` (
  `Author_ID` int(11) NOT NULL,
  `ISBN` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors_has_item`
--

INSERT INTO `authors_has_item` (`Author_ID`, `ISBN`) VALUES
(1, 9780440927174),
(4, 978),
(4, 477675877);

-- --------------------------------------------------------

--
-- Table structure for table `format`
--

CREATE TABLE `format` (
  `Format_ID` int(11) NOT NULL,
  `Format_Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `format`
--

INSERT INTO `format` (`Format_ID`, `Format_Type`) VALUES
(1, 'CD'),
(2, 'DVD');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `Genre_ID` int(11) NOT NULL,
  `Genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`Genre_ID`, `Genre`) VALUES
(1, 'Science Fiction'),
(2, 'Romance'),
(3, 'Adventure'),
(4, 'Horror'),
(5, 'Comedy'),
(6, 'Action'),
(7, 'Drama'),
(8, 'History');

-- --------------------------------------------------------

--
-- Table structure for table `genres_has_item`
--

CREATE TABLE `genres_has_item` (
  `Genre_ID` int(11) NOT NULL,
  `ISBN` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `genres_has_item`
--

INSERT INTO `genres_has_item` (`Genre_ID`, `ISBN`) VALUES
(2, 978),
(2, 477675877),
(4, 9780440927174);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ISBN` bigint(20) NOT NULL,
  `Title` text NOT NULL,
  `Edition` int(11) NOT NULL,
  `No_Of_Pages` int(11) NOT NULL,
  `No_Of_Copies` int(11) NOT NULL,
  `Best_Of_Collection` text,
  `Rating` int(11) NOT NULL,
  `Publishing_Date` date NOT NULL,
  `Print_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ISBN`, `Title`, `Edition`, `No_Of_Pages`, `No_Of_Copies`, `Best_Of_Collection`, `Rating`, `Publishing_Date`, `Print_Date`) VALUES
(978, 'Cranford', 5, 77, 45, 'No', 5, '2018-02-09', '2018-11-30'),
(477675877, 'Cinderella ', 7, 686, 67, 'No', 4, '2018-12-13', '2018-12-29'),
(478689797, 'hgfgkhg', 7, 686, 8, 'yes', 7, '2018-12-20', '2018-11-28'),
(9780440927174, 'Frankenstein', 2, 56, 77, 'yes', 5, '2018-12-04', '2018-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `item_has_format`
--

CREATE TABLE `item_has_format` (
  `ISBN` bigint(20) NOT NULL,
  `Format_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_has_format`
--

INSERT INTO `item_has_format` (`ISBN`, `Format_ID`) VALUES
(978, 1),
(477675877, 1),
(9780440927174, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `RoleID` int(11) NOT NULL,
  `First_Name` text,
  `Surname` text NOT NULL,
  `Password` varchar(45) NOT NULL,
  `email` text,
  `Number` int(11) DEFAULT NULL,
  `Gender` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `Username`, `RoleID`, `First_Name`, `Surname`, `Password`, `email`, `Number`, `Gender`) VALUES
(1, 'ayam', 1, 'Aya', 'Moustafa', '123', 'dsada@ydsa.com', 2132132144, 'Female'),
(2, 'asmaz', 2, 'dsadasdsa', 'dsadsadsa', 'asmaz', 'eya1997@yahoo.co.uk', 2147483647, 'female'),
(4, 'nourmah', 1, 'Nour', 'Mah', '987', 'dsadasdsa@daaas.com', 2147483647, 'female'),
(5, 'nourmah', 1, 'Nour', 'Mah', '987', 'dsadasdsa@daaas.com', 2147483647, 'female'),
(6, 'aa', 2, 'aa', 'aa', 'aa', 'aa', 12, 'male'),
(7, 'aa', 2, 'agjkghjg', 'ggfjhf', '11', 'ghgvlk', 2147483647, 'male'),
(8, 'qq', 2, 'hhagdha', 'sgsg', 'qq', 'sgdgs', 2147483647, 'male'),
(9, 'msmith', 1, 'Mark', 'Smith', 'mark123', 'mark@gmail.com', 2147483647, 'male'),
(10, 'Mgrey', 2, 'Micheal', 'Grey', 'mmm', 'mgrey@gmail.com', 48686786, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `User_Type_ID` int(11) NOT NULL,
  `User_Type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`User_Type_ID`, `User_Type`) VALUES
(1, 'Admin'),
(2, 'Member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`Author_ID`);

--
-- Indexes for table `authors_has_item`
--
ALTER TABLE `authors_has_item`
  ADD PRIMARY KEY (`Author_ID`,`ISBN`),
  ADD KEY `fk_Authors_has_ITEM_ITEM1_idx` (`ISBN`),
  ADD KEY `fk_Authors_has_ITEM_Authors1_idx` (`Author_ID`);

--
-- Indexes for table `format`
--
ALTER TABLE `format`
  ADD PRIMARY KEY (`Format_ID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`Genre_ID`);

--
-- Indexes for table `genres_has_item`
--
ALTER TABLE `genres_has_item`
  ADD PRIMARY KEY (`Genre_ID`,`ISBN`),
  ADD KEY `fk_Genres_has_ITEM_ITEM1_idx` (`ISBN`),
  ADD KEY `fk_Genres_has_ITEM_Genres1_idx` (`Genre_ID`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`ISBN`);

--
-- Indexes for table `item_has_format`
--
ALTER TABLE `item_has_format`
  ADD PRIMARY KEY (`ISBN`,`Format_ID`),
  ADD KEY `fk_ITEM_has_Format_Format1_idx` (`Format_ID`),
  ADD KEY `fk_ITEM_has_Format_ITEM1_idx` (`ISBN`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `fk_User_User_Type_idx` (`RoleID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`User_Type_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `authors_has_item`
--
ALTER TABLE `authors_has_item`
  MODIFY `Author_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `format`
--
ALTER TABLE `format`
  MODIFY `Format_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `Genre_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `genres_has_item`
--
ALTER TABLE `genres_has_item`
  MODIFY `Genre_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `ISBN` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `item_has_format`
--
ALTER TABLE `item_has_format`
  MODIFY `ISBN` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `User_Type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `authors_has_item`
--
ALTER TABLE `authors_has_item`
  ADD CONSTRAINT `fk_Authors_has_ITEM_Authors1` FOREIGN KEY (`Author_ID`) REFERENCES `authors` (`Author_ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Authors_has_ITEM_ITEM1` FOREIGN KEY (`ISBN`) REFERENCES `item` (`ISBN`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `genres_has_item`
--
ALTER TABLE `genres_has_item`
  ADD CONSTRAINT `fk_Genres_has_ITEM_Genres1` FOREIGN KEY (`Genre_ID`) REFERENCES `genres` (`Genre_ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Genres_has_ITEM_ITEM1` FOREIGN KEY (`ISBN`) REFERENCES `item` (`ISBN`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `item_has_format`
--
ALTER TABLE `item_has_format`
  ADD CONSTRAINT `fk_ITEM_has_Format_Format1` FOREIGN KEY (`Format_ID`) REFERENCES `format` (`Format_ID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ITEM_has_Format_ITEM1` FOREIGN KEY (`ISBN`) REFERENCES `item` (`ISBN`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_User_User_Type` FOREIGN KEY (`RoleID`) REFERENCES `user_type` (`User_Type_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
