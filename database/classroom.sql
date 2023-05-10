-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2023 at 08:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `description`, `status`, `created_at`) VALUES
(1, 'Hello This is Title', 'Hello I am title', 'Active', '2023-01-16 07:47:45.776805');

-- --------------------------------------------------------

--
-- Table structure for table `answer_assignment`
--

CREATE TABLE `answer_assignment` (
  `id` int(11) NOT NULL,
  `assignment` varchar(255) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `answer_sheet` varchar(500) NOT NULL,
  `is_checked` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer_assignment`
--

INSERT INTO `answer_assignment` (`id`, `assignment`, `student_email`, `answer_sheet`, `is_checked`, `status`, `created_at`) VALUES
(1, '1', 'student1@gmail.com', '1987460838classroom.sql', 'Yes', 'Active', '2023-01-16 07:50:34.195172');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `assignment` longtext NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `title`, `description`, `assignment`, `status`, `created_at`) VALUES
(1, 'Perform Join', 'Join 2 Tables', '1065827706', 'Active', '2023-01-16 07:49:22.734964');

-- --------------------------------------------------------

--
-- Table structure for table `assign_teacher`
--

CREATE TABLE `assign_teacher` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `course` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assign_teacher`
--

INSERT INTO `assign_teacher` (`id`, `subject`, `course`, `department`, `teacher`, `status`, `created_at`) VALUES
(1, '1', '1', '1', '1', 'Active', '2023-01-16 07:48:33.409663');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `semester` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `semester`, `status`, `created_at`) VALUES
(1, 'B.Tech', 6, 'Active', '2023-01-16 07:45:46.267774');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `course`, `department`, `status`, `created_at`) VALUES
(1, '1', 'CSE', 'Active', '2023-01-16 07:45:58.571874');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `notes` longtext NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `password`, `status`, `created_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '123456', 'Active', '2022-11-07 09:41:51.119210');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` int(10) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contact` bigint(15) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `course`, `department`, `semester`, `student_name`, `email`, `password`, `contact`, `status`, `created_at`) VALUES
(1, '1', '1', 6, 'student1', 'student1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1231231331, 'Active', '2023-01-16 07:46:54.767970'),
(2, '1', '1', 6, 'student2', 'student2@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1231231231, 'Active', '2023-01-16 07:47:19.616553');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` int(10) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `course`, `department`, `semester`, `subject_name`, `subject_code`, `status`, `created_at`) VALUES
(1, '1', '1', 6, 'DBMS', 'DB101', 'Active', '2023-01-16 07:48:00.849420'),
(2, '1', '1', 6, 'Computer Graphics', 'CG101', 'Active', '2023-01-16 07:48:23.670570');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `course` varchar(250) NOT NULL,
  `department` varchar(250) NOT NULL,
  `teacher_name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `contact` bigint(10) NOT NULL,
  `qualification` varchar(300) NOT NULL,
  `status` varchar(30) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `course`, `department`, `teacher_name`, `email`, `password`, `contact`, `qualification`, `status`, `created_at`) VALUES
(1, '1', '1', 'gaurav', 'gaurav@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 9988729970, 'M.Tech', 'Active', '2023-01-16 07:46:26.435279');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer_assignment`
--
ALTER TABLE `answer_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer_assignment`
--
ALTER TABLE `answer_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `assign_teacher`
--
ALTER TABLE `assign_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
