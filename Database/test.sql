-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 10:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  `qid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `likes` int(11) NOT NULL DEFAULT 0,
  `dislikes` text NOT NULL DEFAULT '0',
  `postedOn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `answer`, `qid`, `userid`, `likes`, `dislikes`, `postedOn`) VALUES
(1, 'The coronavirus is extremely dangerous, and I suspect that the danger is currently being underplayed by the world medical community to minimize panic as we prepare for the worst. Here are the statistics at the time I write this (16 Feb 2020); I take them from Coronavirus Update (Live) cases: 69,290. deaths: 1,671 recovered: 9883 The site states that the “Fatality Rate” is “2%”. But under that number, click “more details”. That will take you to this page: Coronavirus Mortality Rate (COVID-19).', 1, 1, 1, '0', 'May 12'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 4, 2, 0, '0', 'May 12'),
(3, 'I will tell you the most effective and fast way\r\n\r\n1. Start listening to a lot of music.Of different kinds.This will help you improve your musicality. Soon your brain will be able to remember lyrics and beat patterns,vibrations,drops etc.\r\n\r\n2. Watch freestyle dances on YouTube of your favourite tracks again and again. Your brain will soon be able to associate steps with beats. Also you will be able to identify what kind of dance looks good on particular rhythms.\r\n\r\n3. Start freestyling yourself.This is the most easiest part.But most people don\'t do it because at this stage you have to start making actions.', 3, 3, 0, '0', 'May 12'),
(4, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 4, 6, 0, '0', 'May 12'),
(5, 'While even kids can dance, not everyone can dance well. If you want to learn how to dance, you first have to pick a style. Next, you can spend some time learning on your own. Alternatively, join a class at a local community college to improve your skills. Don\'t forget, you\'ll need to give your body some love by eating right and exercising to be a stellar dancer.', 3, 5, 0, '0', 'May 12'),
(6, 'Although for most people COVID-19 causes only mild illness, it can make some people very ill. More rarely, the disease can be fatal. Older people, and those with pre- existing medical conditions (such as high blood pressure, heart problems or diabetes) appear to be more vulnerable.', 1, 7, 0, '0', 'May 12'),
(7, 'Competitive programming is a mind sport usually held over the Internet or a local network, involving participants trying to program according to provided specifications. Contestants are referred to as sport programmers. Competitive programming is recognized and supported by several multinational software and Internet companies, such as Google[1][2] and Facebook.[3] There are several organizations who host programming competitions on a regular basis.', 2, 3, 0, '0', 'May 12'),
(8, 'Real estate is generally a great investment option. It can generate ongoing passive income and can be a good long-term investment if the value increases over time. You may even use it as a part of your overall strategy to begin building wealth.', 5, 4, 0, '0', 'May 12'),
(9, 'Just start it. This is test answer for flute question.', 15, 11, 0, '0', 'May 12'),
(16, 'TEST ANSWER FOR PROGRAMMING QUESTION', 1, 11, 0, '0', 'May 12'),
(20, 'Test for US dollar and INR  question', 16, 11, 0, '0', 'May 12'),
(21, 'This is the test answer at 3:40.', 42, 15, 0, '0', 'May 13'),
(22, 'Test answer for flute question at 11:11', 15, 15, 0, '0', 'May 13');

-- --------------------------------------------------------

--
-- Table structure for table `answers_like`
--

CREATE TABLE `answers_like` (
  `id` int(11) NOT NULL,
  `answer` int(255) NOT NULL,
  `user` int(11) NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers_like`
--

INSERT INTO `answers_like` (`id`, `answer`, `user`, `action`) VALUES
(289, 1, 11, 'like');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment`) VALUES
(1, 'qewrqe'),
(2, 'qewrqe'),
(3, 'adsfwer'),
(4, 'adsfwer'),
(5, 'asdtert'),
(6, 'asdtert'),
(42, 'This is test comment.'),
(43, 'This is test comment.2'),
(44, 'This is test comment3'),
(45, 'This is test comment4');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `createdOn` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `dp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `user`, `pass`, `email`, `designation`, `firstname`, `lastname`, `mobile`, `city`, `state`, `createdOn`, `dob`, `dp`) VALUES
(1, 'nitesh', 'ayush616', 'niteshbharti@srmap.edu.in', 'Web Developer at SRM', 'Nitesh', 'Bharti', 9926554755, 'bokaro', 'Jharkhand', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(2, 'vasanth', 'ayush616', 'vasanth@srmap.edu.in', 'Web Developer at SRM', 'Vasanth', 'Sai', 9926554756, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(3, 'laddu', 'ayush616', 'laddu@srmap.edu.in', 'Web Developer at SRM', 'Charan', 'Sandeep', 9926554757, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(4, 'Janki12', '1234', 'janki@srmap.edu.in', 'Web Developer at SRM', 'Janki', 'Jaiswal', 9926554758, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(5, 'chetan', '1234', 'chetan@srmap.edu.in', 'Web Developer at SRM', 'Chetan', 'Jaiswal', 9926554759, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(6, 'sandhya', '1234', 'sandhya@srmap.edu.in', 'Web Developer at SRM', 'Sandhya', 'Jaiswal', 9926554750, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(7, 'Chhoti', '1234', 'chhoti@srmap.edu.in', 'Web Developer at SRM', 'Chhoti', 'Jaiswal', 9926554751, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(8, 'aman', '1234', 'aman@srmap.edu.in', 'Web Developer at SRM', 'Aman', 'Sannad', 9926554752, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(9, 'animesh', '1234', 'animesh@srmap.edu.in', 'Web Developer at SRM', 'Animesh', 'Dubey', 9926554753, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(10, 'umang', '1234', 'umang@srmap.edu.in', 'Web Developer at SRM', 'Umang', 'Patel', 9926554754, 'bilaspur', 'Andhra Pradesh', '', '12-03-1999', 'profilepic/sign0001.jpg'),
(11, 'ayush616', '7b2c17d22356a3a91ce70fdd32a4ea7e', 'ayush_jaiswal@srmap.edu.in', 'Student at SRM', 'Ayush', 'Jaiswal', 9079815256, 'Bilaspur', 'Chhattisgarh', '11-05-20 02:43:58', '12-03-99', 'profilepic/sign0001.jpg'),
(12, '@likhit12', 'bbb75abdfbdeb9a8d76f312e6aa6c40e', 'likhit_chandra@srmap.edu.in', 'Web Developer at SRM', 'Likhith', 'Chandra', 9898989898, 'Khammam', 'Telangana', '11-05-20 03:02:51', '12-03-99', 'profilepic/sign0001.jpg'),
(15, '@rahuljaishriram', '83b6c080af79ad1bffbfad59242baea6', 'rahul_shrivastava@srmap.edu.in', 'Full Stack Web Developer', 'Rahul', 'Shrivastava', 9079815155, 'Bilaspur', 'Chhattisgarh', '12-05-20 11:35:55', '12-05-1999', 'profilepic/AYUSH.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` varchar(5000) NOT NULL,
  `userid` int(11) NOT NULL,
  `dateAsked` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `question`, `userid`, `dateAsked`) VALUES
(1, 'How dangerous is the coronavirus?', 3, 'May 12'),
(2, 'How should I get started in competitive programming?', 1, 'May 12'),
(3, 'What is a good way to get started with dancing?', 2, 'May 12'),
(4, 'What is Lorem Ipsum?', 1, 'May 12'),
(5, 'How good is to invest in real state?', 8, 'May 12'),
(15, 'What is the good way to start flute?', 1, 'May 12'),
(16, 'What is the future of us dollar and inr?', 5, 'May 12'),
(17, 'Which Programming language is best to learn at first?', 11, 'May 12'),
(31, 'This is the test question', 11, 'May 12'),
(41, 'What are some Positives during Lockdown Period?', 15, 'May 13'),
(42, 'This is the test question at 3:40', 11, 'May 13'),
(43, 'This is test question at 04:04', 15, 'May 13'),
(44, 'This is test question at 04:04', 15, 'May 13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_like`
--
ALTER TABLE `answers_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `answers_like`
--
ALTER TABLE `answers_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
