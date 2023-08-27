-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220907.bc4fa31a06
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 08:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_subtitle` text NOT NULL,
  `profile_pic` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_subtitle`, `profile_pic`, `about_desc`) VALUES
(1, 'About Me', 'Student of CSE BTech at GSFC University', '1674233852profile-pic (1).png', 'An Aspiring computer Science Student\r\nwith hands-on experience in different\r\nprojects and website making along with a\r\ndecent amount of interest in Business and\r\nInvestments. Improving my interest along\r\nwith GSFC University, Vadodara in my\r\nfield by exploring different technologies\r\nand projects.');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `admin_profile` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `admin_profile`, `email`, `password`) VALUES
(1, 'Nilesh Patel', '1674234167profile-pic (1).png', 'admin@myportfolio.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `email`, `mobile`) VALUES
(1, 'Palanpur', 'np2907200@gmail.com', '+919429262361');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `showicons` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `subtitle`, `showicons`) VALUES
(1, 'Nilesh Patel', 'I am student of Computer Science and Engineering', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `label`, `value`) VALUES
(5, 'Website', 'myportfolio.com'),
(6, 'Mobile', '9429262361');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `project_pic` text NOT NULL,
  `project_type` varchar(255) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `project_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `project_pic`, `project_type`, `project_name`, `project_link`) VALUES
(5, '1673968927tourism-logo.jpg', 'WEBSITE', 'Tourism Website', 'https://drive.google.com/file/d/1Y3PlRGg-qQH21Qq3n1oD6tkEklV36C9J/view?usp=share_link'),
(6, '1673970236News.jpg', 'WEBSITE', 'News Website', 'https://drive.google.com/file/d/1AJZte6WmdCYo8Pm5tbYVvW2bUx6u06fE/view?usp=share_link'),
(7, '1673970607smart_plant_weather_station.jpg', 'IDEA', 'Smart Plant Weather Station', '');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `org` varchar(25) NOT NULL,
  `about_exp` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `type`, `title`, `time`, `org`, `about_exp`) VALUES
(9, 'e', 'B.TECH (2020-24)', '2022-Present', 'GSFC University', 'Computer Science and Engineering (Currently in 3rd Year)'),
(12, 'e', 'HSC (2020)', '2020 Passed Out', 'Silver Bells School', 'CBSE Board with English Medium'),
(13, 'e', 'SSC (2018)', '2018 Passed Out', 'Silver Bells School', 'Gujarat State Board with English Medium'),
(14, 'p', 'Frontend Developer', 'December 2021', 'Barodaweb, Vadodara', '1 Month (Online)'),
(15, 'p', 'Web Development(HTML, CSS, JavaScript and PHP)', 'June 2022', 'NTI Foundation, Jaipur', '1 Month (Online)');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(11) NOT NULL,
  `page_title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `siteicon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_title`, `keywords`, `description`, `siteicon`) VALUES
(1, 'myportfolio', 'web developer,php developer,', '', '1673968660profile-pic (3).png');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`) VALUES
(4, 'Bootstrap', 40),
(5, 'JAVA', 66),
(12, 'CSS', 80),
(13, 'Wordpress', 51),
(15, 'Project Management', 73),
(17, 'PHP/MYSQL', 86);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `twitter`, `facebook`, `instagram`, `linkedin`) VALUES
(1, 'www.twitter.com', 'www.facebook.com', 'https://instagram.com/nileshpatel._07?igshid=YzgyMTM2MGM=', 'www.linkedin.com/in/nilesh-patel-8a4a70178');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
