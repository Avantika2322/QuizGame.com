-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 06:37 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizgame`
--

-- --------------------------------------------------------

--
-- Table structure for table `high_level_question`
--

CREATE TABLE `high_level_question` (
  `ID` int(200) NOT NULL,
  `question_answer` varchar(200) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `high_level_question`
--

INSERT INTO `high_level_question` (`ID`, `question_answer`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, ' In which process, a local variable has the same name as one of the instance variables?', 'Serialization', 'Variable Shadowing\r\n', 'Abstraction\r\n', 'Multi-threading', 'b'),
(2, 'Which of the following is true about the anonymous inner class?\r\n\r\n\r\n', 'It has only methods', 'Objects can\'t be created\r\n', 'It has a fixed class name\r\n', 'It has no class name', 'd'),
(3, 'Which package contains the Random class?\r\n\r\n\r\n\r\n\r\n', 'java.util package', 'java.lang package', 'java.awt package', 'java.io package', 'a'),
(4, 'What do you mean by nameless objects?\r\n\r\n\r\n\r\n\r\n', 'An object created by using the new keyword.', 'An object of a superclass created in the subclass.', 'An object without having any name but having a reference.', 'An object that has no reference.', 'd'),
(5, 'An interface with no fields or methods is known as a ______.\r\n\r\n', 'Runnable Interface\r\n', 'Marker Interface\r\n', 'Abstract Interface\r\n', 'CharSequence Interface', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `med_question_level`
--

CREATE TABLE `med_question_level` (
  `ID` int(100) NOT NULL,
  `question_answer` varchar(200) NOT NULL,
  `option1` varchar(200) NOT NULL,
  `option2` varchar(200) NOT NULL,
  `option3` varchar(200) NOT NULL,
  `option4` varchar(200) NOT NULL,
  `answer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `med_question_level`
--

INSERT INTO `med_question_level` (`ID`, `question_answer`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, 'Which of the following is a valid long literal?', 'ABH8097', 'L990023', '904423', '0xnf029L', 'd'),
(2, 'What does the expression float a = 35 / 0 return?', '0', 'Not a Number\r\n', 'Infinity', 'Run time exception\r\n', 'c'),
(3, 'Evaluate the following Java expression, if x=3, y=5, and z=10:\r\n++z + y - y + z + x++\r\n\r\n', '24', '23', '20', '25', 'a'),
(4, 'Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?', 'javap tool\r\n', 'javaw command\r\n', 'Javadoc tool\r\n', 'javah command\r\n', 'c'),
(5, 'Which of the following creates a List of 3 visible items and multiple selections abled?', 'new List(false, 3)\r\n', 'new List(3, true)\r\n', 'new List(true, 3)\r\n', 'new List(3, false)\r\n', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `ID` int(100) NOT NULL,
  `question` varchar(200) NOT NULL,
  `option1` varchar(100) NOT NULL,
  `option2` varchar(100) NOT NULL,
  `option3` varchar(100) NOT NULL,
  `option4` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`ID`, `question`, `option1`, `option2`, `option3`, `option4`, `answer`) VALUES
(1, ' Which of the following option leads to the portability and security of Java?', 'Bytecode is executed by JVM', 'The applet makes the Java code secure and portable\r\n', 'Use of exception handling\r\n', 'Dynamic binding between objects\r\n', 'a'),
(2, 'Which of the following is not a Java features?', 'Dynamic', 'Architecture Neutral\r\n', 'Use of pointers\r\n', 'Object-oriented\r\n', 'c'),
(3, 'The \\u0021 article referred to as a', 'Unicode escape sequence\r\n', 'Octal escape\r\n', 'Hexadecimal', 'Line feed\r\n', 'a'),
(4, ' _____ is used to find and fix bugs in the Java programs.', 'JVM', 'JRE', 'JDK\r\n', 'JDB', 'd'),
(5, ' Which of the following is a valid declaration of a char?', 'char ch = \'\\utea\';\r\n', 'char ca = \'tea\';\r\n', 'char cr = \\u0223;\r\n', 'char cc = \'\\itea\';\r\n', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `high_level_question`
--
ALTER TABLE `high_level_question`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `med_question_level`
--
ALTER TABLE `med_question_level`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `high_level_question`
--
ALTER TABLE `high_level_question`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `med_question_level`
--
ALTER TABLE `med_question_level`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
