-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 10:46 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin1`
--

-- --------------------------------------------------------

--
-- Table structure for table `c1`
--

CREATE TABLE `c1` (
  `id1` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `selectCategory` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `selectCategory` varchar(100) NOT NULL,
  `parentcategory` varchar(50) NOT NULL,
  `description` varchar(256) NOT NULL,
  `category_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `slug`, `selectCategory`, `parentcategory`, `description`, `category_date`) VALUES
(29, 'uncategorized', '', 'uncategorized,java', 'Parent Category', '', ''),
(30, 'uncategorized', '', 'uncategorized,uncategorized', 'Parent Category', '', ''),
(34, 'uncategorized', '', 'pondichery', 'baranee', '', ''),
(36, 'uncategorized', '', 'uncategorized', 'Parent Category', '', ''),
(42, 'java', '', 'html5,php7,java', 'pondichery', '', ''),
(43, 'baranee', '', 'baranee', 'html5', '', ''),
(45, 'javascript1', '', 'html5,php7,java', 'Parent Category', '', ''),
(48, '.net1', '', '.net1', 'html5', '', ''),
(49, 'pondichery', '', 'uncategorized,pondichery', 'Parent Category', '', ''),
(50, 'baranee', '', 'uncategorized,baranee', 'pondichery', '', ''),
(51, '.net1', '', '.net1', 'html5', '', ''),
(52, '.net1', '', '.net1', 'html5', '', ''),
(53, '.net1', '', '.net1', 'html5', '', ''),
(55, 'java1', '', 'java,java1', 'baranee', '', ''),
(56, 'uncategorized', '', 'uncategorized', 'Parent Category', '', ''),
(57, 'page1', '', 'javascript1,page1', 'java', '', ''),
(60, 'dsds', '', 'html6,php7,dsds', 'java1', '', ''),
(61, 'jquery', '', 'javascript1,page1', 'java', '', ''),
(62, 'uncategorized', '', 'php7,java,uncategorized', 'Parent Category', '', ''),
(63, 'uncategorized', '', 'uncategorized,php7,java,baranee', 'Parent Category', '', ''),
(64, 'uncategorized', '', 'php7,java,uncategorized', 'Parent Category', '', ''),
(66, 'uncategorized', '', 'php7,java,uncategorized', 'Parent Category', '', ''),
(67, 'uncategorized', '', 'php7,java,uncategorized', 'Parent Category', '', ''),
(69, '1234', '', 'uncategorized,html6,php7,dsds', 'Parent Category', '', ''),
(507, '', '', 'none', 'parentcategory', '', ''),
(508, 'new1', '', 'none', 'jquery', '', ''),
(509, '', '', 'qq1,new4', '', '', ''),
(510, 'new1', '', 'none', 'jquery', '', ''),
(511, '', '', 'none', 'parentcategory', '', ''),
(512, '', '', 'qq1,new4', '', '', ''),
(513, '', '', 'dsds,page1', '', '', ''),
(525, '', '', 'none', 'parentcategory', '', ''),
(526, '', '', 'jquery,dsds', '', '', ''),
(527, 'teekz', '', 'dsds,page1', '', '', ''),
(528, '', '', 'none', 'parentcategory', '', ''),
(529, '', '', 'none', 'parentcategory', '', ''),
(530, 'ar', '', '', '', '', ''),
(531, 'new11', '', '', '', '', ''),
(641, 'cxxcz', '', 'java,baranee,pondichery,new124', 'teekz', '', ''),
(643, 'gcgg', '', 'pondy,baranee,pondy,baranee', 'ar', '', ''),
(644, 'qqqqq', '', 'jquery,teekz', 'cxxcz', '', ''),
(645, 'fddf', '', 'java,baranee,page1', 'cxxcz', '', ''),
(646, '', '', 'uncategorized,java,pondichery', 'parentcategory', '', ''),
(647, 'pondy', '', 'pondichery,java1', 'parentcategory', '', ''),
(648, '', '', 'java1', 'parentcategory', '', ''),
(649, 'new123', '', '', '', '', ''),
(650, 'new124', '', '', '', '', ''),
(651, '', '', 'qqqqq,fddf,pondy,new123,new124', 'Parent Category', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(10) NOT NULL,
  `FilePath` varchar(1000) NOT NULL,
  `FileName` varchar(1000) NOT NULL,
  `LoggedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `FilePath`, `FileName`, `LoggedTime`) VALUES
(1, 'Upload', 'bulb.png', '2019-09-27 05:35:10.000000'),
(2, 'Upload', 'gas.png', '2019-09-27 05:36:34.000000');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `LoggedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `logoutTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `signed_in` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `LoggedTime`, `logoutTime`, `signed_in`) VALUES
(3, 'admin', 'admin', '2019-10-11 14:12:28.000000', '2019-10-11 14:15:56.000000', '1'),
(4, 'teekz', 'teekz', '2019-10-09 03:53:01.000000', '2019-10-09 04:01:57.000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `medialibrary`
--

CREATE TABLE `medialibrary` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medialibrary`
--

INSERT INTO `medialibrary` (`id`, `user_id`, `username`, `image`) VALUES
(1, 0, 'william', 'bsnl.png'),
(2, 0, 'william', 'bsnl.png'),
(3, 0, 'william', 'bsnl.png'),
(4, 0, 'william', 'bsnl.png'),
(5, 0, 'william', 'airtel-1.png'),
(6, 0, 'william', 'airtel-1.png'),
(7, 0, 'william', 'debit.jpg'),
(8, 0, 'william', 'debit.jpg'),
(9, 0, 'william', 'debit.jpg'),
(10, 0, 'william', 'motelku_full (3).psd'),
(11, 0, 'william', ''),
(12, 0, 'william', ''),
(13, 0, 'william', 'motelku_full (3).psd'),
(14, 0, 'william', ''),
(15, 0, 'william', ''),
(16, 0, 'william', ''),
(17, 0, 'william', 'motelku_full (3).psd'),
(18, 0, 'william', 'motelku_full (3).psd'),
(19, 0, 'william', 'airtel.jpg'),
(20, 0, 'william', 'vodafone1.jpg'),
(21, 0, 'ajay', 'airtel.jpg'),
(22, 0, 'ajay', 'airtel.jpg'),
(23, 0, 'william', 'brand-vouchers.png'),
(24, 0, 'william', 'amusement-parks.png'),
(25, 0, 'ajithkumar', 'airtel.jpg'),
(26, 0, 'ajithkumar', 'amusement-parks.png'),
(27, 0, 'ajithkumar', 'amusement-parks.png'),
(28, 0, 'ajithkumar', 'airtel-1.png'),
(29, 0, 'ajithkumar', 'airtel-1.png'),
(30, 0, 'ajithkumar', 'brand.png'),
(31, 0, 'new', 'airtel-1.png'),
(32, 0, 'new', 'brand-vouchers.png'),
(33, 0, 'william', 'airtel-1.png'),
(34, 0, 'admin', 'airtel-1.png'),
(35, 0, 'admin3', 'airtel-1.png'),
(36, 0, 'admin3', 'airtel-1.png'),
(37, 0, 'admin3', 'airtel-1.png'),
(38, 0, 'admin3', 'bikes.png'),
(39, 0, 'admin3', 'airtel.jpg'),
(40, 0, 'admin1', 'credit-card.png'),
(41, 0, 'admin1', 'credit-card.png'),
(42, 0, 'admin1', 'arrow.png'),
(43, 0, 'admin1', 'arrow.png'),
(44, 0, 'admin1', 'arrow.png'),
(45, 0, 'admin1', 'arrow.png'),
(46, 0, 'admin1', 'arrow.png'),
(47, 0, 'admin1', 'arrow.png'),
(48, 0, 'admin1', 'arrow.png'),
(49, 0, 'admin1', 'bulb.png'),
(50, 0, 'admin1', 'bulb.png'),
(51, 0, 'admin1', 'gas.png'),
(52, 0, 'admin1', 'arrow.png'),
(53, 0, 'admin1', 'arrow.png'),
(54, 0, 'admin1', 'credit-card.png'),
(55, 0, 'admin1', ''),
(56, 0, 'admin1', ''),
(57, 0, 'admin1', ''),
(58, 0, 'admin1', ''),
(59, 0, 'admin1', ''),
(60, 0, 'admin1', ''),
(61, 0, 'admin1', ''),
(62, 0, 'admin1', ''),
(63, 0, 'admin1', 'Web Task.pdf'),
(64, 0, 'admin1', 'Web Task.pdf'),
(65, 0, 'admin1', 'Web Task.pdf'),
(66, 0, 'admin1', 'arrow.png'),
(67, 0, 'admin1', 'arrow.png'),
(68, 0, 'admin1', 'arrow.png'),
(69, 0, 'admin1', 'arrow.png'),
(70, 0, 'admin1', 'arrow.png'),
(71, 0, 'admin1', 'arrow.png'),
(72, 0, 'admin1', 'arrow.png'),
(73, 0, 'admin1', 'arrow.png'),
(74, 0, 'admin1', 'arrow.png'),
(75, 0, 'admin1', 'arrow.png'),
(76, 0, 'admin1', 'arrow.png'),
(77, 0, 'admin1', 'arrow.png'),
(78, 0, 'admin1', 'arrow.png'),
(79, 0, 'admin1', 'arrow.png'),
(80, 0, 'admin1', 'arrow.png'),
(81, 0, 'admin1', 'arrow.png'),
(82, 0, 'admin1', 'arrow.png'),
(83, 0, 'admin1', 'arrow.png'),
(84, 0, 'admin1', 'arrow.png'),
(85, 0, 'admin1', 'arrow.png'),
(86, 0, 'admin1', 'arrow.png'),
(87, 0, 'admin1', 'brand.png'),
(88, 0, 'admin1', 'brand.png'),
(89, 0, 'admin1', 'arrow.png'),
(90, 0, 'admin1', 'arrow.png'),
(91, 0, 'admin1', 'arrow.png'),
(92, 0, 'admin1', 'arrow.png'),
(93, 0, 'admin1', 'arrow.png'),
(94, 0, 'admin1', 'brand.png'),
(95, 0, 'admin1', 'brand.png'),
(96, 0, 'admin1', 'arrow.png'),
(97, 0, 'admin1', 'arrow.png'),
(98, 0, 'admin1', 'credit-card.png'),
(99, 0, 'admin1', 'arrow.png'),
(100, 0, 'admin1', 'arrow.png'),
(101, 0, 'admin3', 'bulb.png'),
(102, 0, 'admin3', 'bulb.png'),
(103, 0, 'admin3', 'bulb.png'),
(104, 0, 'admin3', 'bulb.png'),
(105, 0, 'admin3', 'bulb.png'),
(106, 0, 'admin3', 'bulb.png'),
(107, 0, 'admin3', 'arrow.png'),
(108, 0, 'admin3', 'arrow.png'),
(109, 0, 'admin3', 'arrow.png'),
(110, 0, 'admin3', 'gold.png'),
(111, 0, 'admin3', 'gold.png'),
(112, 0, 'admin3', 'credit-card.png'),
(113, 0, 'admin3', 'gas.png'),
(114, 0, 'admin3', 'gold.png'),
(115, 0, 'admin3', 'gold.png'),
(116, 0, 'admin3', '');

-- --------------------------------------------------------

--
-- Table structure for table `newuser`
--

CREATE TABLE `newuser` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `NickName` varchar(100) NOT NULL,
  `Biographicalinfo` varchar(1000) NOT NULL,
  `image` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `createdTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updatedTime` varchar(50) NOT NULL,
  `LoggedTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `logoutTime` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `signed_in` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newuser`
--

INSERT INTO `newuser` (`id`, `username`, `email`, `firstname`, `lastname`, `NickName`, `Biographicalinfo`, `image`, `password`, `role`, `createdTime`, `updatedTime`, `LoggedTime`, `logoutTime`, `signed_in`) VALUES
(16, 'mittal', 'baraneedharan77@gmail.com', 'sasasas', 'sasssa', '', '', '', 'zzz', 'Administrator', '2019-09-29 19:39:56.000000', '0000-00-00 00:00:00.000000', '2019-10-09 03:58:39.112262', '2019-10-09 03:58:39.112262', '1'),
(19, 'admin551', 'baraneedharan77@gmail.com', 'sasasas', 'sasssa', '', '', '', 'qqq', 'Administrator', '2019-10-01 12:36:19.895984', '0000-00-00 00:00:00.000000', '2019-10-09 03:58:39.112262', '2019-10-09 03:58:39.112262', ''),
(20, 'admin606', 'baraneedharan77@gmail.com', 'sasasas', 'sasssa', '', '', '', 'qqq', 'Administrator', '2019-10-01 12:36:33.525251', '0000-00-00 00:00:00.000000', '2019-10-09 03:58:39.112262', '2019-10-09 03:58:39.112262', ''),
(21, 'ajithkumar', 'baraneedharan77@gmail.com', 'sasasasqqqqq', 'sasssa', 'aaaa', '', '', '', 'Administrator', '2019-10-07 19:40:31.000000', '0000-00-00 00:00:00.000000', '2019-10-09 03:58:39.112262', '2019-10-09 03:58:39.112262', '1'),
(22, 'ajay', 'baraneedharan77@gmail.com', 'sasasas', 'sadsddsa', '', '', '', 'qqq', 'Administrator', '2019-10-08 05:40:25.000000', '0000-00-00 00:00:00.000000', '2019-10-09 04:32:40.000000', '2019-10-09 04:58:34.000000', '1'),
(25, 'admin1', 'baraneedharan77@gmail.com', 'sasasasq', 'dharan', 'aaaa', 'aaaaaa', '', 'qq', 'Administrator', '2019-10-09 04:59:39.342702', '', '2019-10-31 08:28:59.000000', '2019-10-09 05:50:41.000000', '1'),
(26, 'admin2', 'baraneedharan77@gmail.com', 'sasasasqqzzzzzzzzzz', 'sadsddsa', '', '', '', 'qqq', 'Administrator', '2019-10-09 05:07:52.526857', '', '2019-10-09 05:07:52.526857', '2019-10-09 05:07:52.526857', ''),
(27, 'admin3', 'baraneedharan77@gmail.com', 'sasasasqqzzzzzzzzzz1', 'sasssa', 'aaaa', 'wwwyfguhjkl', 'logo.png', 'qqq', 'Administrator', '2019-10-09 06:31:35.315291', '', '2019-11-12 04:53:44.000000', '2019-11-06 09:42:55.000000', '1'),
(28, 'william', 'baraneedharan77@gmail.com', 'sasasasqqzzzzzzzzzz', 'sadsddsa', '', '', '', 'qqq', 'Administrator', '2019-10-12 10:22:26.146823', '', '2019-10-15 04:16:16.000000', '2019-10-14 12:16:58.000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_id` text NOT NULL,
  `Title` varchar(1000) NOT NULL,
  `Content` varchar(1000) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `draftTime` varchar(50) NOT NULL,
  `publishTime` varchar(50) NOT NULL,
  `Visibility` varchar(50) NOT NULL,
  `publihedOn` varchar(50) NOT NULL,
  `selectCategory` varchar(100) NOT NULL,
  `categoryName` varchar(100) NOT NULL,
  `categoryType` varchar(100) NOT NULL,
  `seo_title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `url` varchar(50) NOT NULL,
  `seo_schema` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `createdDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `fid`, `username`, `user_id`, `Title`, `Content`, `Status`, `draftTime`, `publishTime`, `Visibility`, `publihedOn`, `selectCategory`, `categoryName`, `categoryType`, `seo_title`, `description`, `url`, `seo_schema`, `image`, `createdDate`) VALUES
(4, 63, 'admin3', '27', 'ssdfsfdfds', '<!DOCTYPE html><html><head><title></title></head><body><p>dsffdsfsdfdsfds</p></body></html>', 'Publish', '', '30-10-2019', '', '', 'uncategorized,php7,java,baranee', 'uncategorized', 'Parent Category', 'no title', 'no description', 'no url', 'no schema', 'no image', '29-10-19'),
(9, 69, 'admin3', '27', 'new title', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '30-10-19', '', '  2019-10-29', 'uncategorized,html6,php7,dsds', '1234', 'Parent Category', 'no title', '', 'no url', 'no schema', 'no image', '30-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `Title` varchar(256) NOT NULL,
  `Content` text NOT NULL,
  `Status` varchar(50) NOT NULL,
  `draftTime` varchar(50) NOT NULL,
  `publishTime` varchar(50) NOT NULL,
  `Visibility` varchar(100) NOT NULL,
  `publihedOn` varchar(50) NOT NULL,
  `Format` varchar(100) NOT NULL,
  `selectCategory` varchar(256) NOT NULL,
  `categoryName` varchar(256) NOT NULL,
  `categoryType` varchar(256) NOT NULL,
  `seo_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `seo_schema` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `Date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `onlyDate` varchar(50) NOT NULL,
  `url_edit` varchar(256) NOT NULL,
  `url_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `fid`, `user_id`, `username`, `Title`, `Content`, `Status`, `draftTime`, `publishTime`, `Visibility`, `publihedOn`, `Format`, `selectCategory`, `categoryName`, `categoryType`, `seo_title`, `description`, `url`, `seo_schema`, `image`, `Date`, `onlyDate`, `url_edit`, `url_title`) VALUES
(300, 641, 27, 'admin3', 'october1234', '<!DOCTYPE html><html><head><title></title></head><body><p>xczxccx</p></body></html>', 'Publish', '', '2019/11/11', '', '', 'Standard', 'none,cxxcz,teekz', '', '', 'no title', 'no description', 'no url', 'no schema', 'no image', '2019-11-11 09:04:30.080165', '2019/11/11', 'http://localhost/blockchain0211/2019/11/11/', 'october'),
(302, 643, 27, 'admin3', 'rgfdfgd12', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019/11/11', '', '', 'no format', 'none,gcgg,ar', '', '', 'no title', 'no description', 'no url', 'no schema', 'no image', '2019-11-11 09:26:07.950291', '2019/11/11', 'http://localhost/blockchain0211/2019/11/11/', 'rgfdfgd'),
(303, 644, 27, 'admin3', 'vvv', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019/11/11', '', '', 'no format', 'none,qqqqq,cxxcz', '', '', 'no title', 'no description', 'no url', 'no schema', 'no image', '2019-11-11 09:26:22.315045', '2019/11/11', 'http://localhost/blockchain0211/2019/11/11/', 'vvv'),
(304, 645, 27, 'admin4', 'sdvdsv', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Draft', '2019/11/11', '', '', '', 'no format', 'none,fddf,cxxcz', '', '', 'no title', 'no description', 'no url', 'no schema', 'no image', '2019-11-11 10:51:38.766087', '2019/11/11', 'http://localhost/blockchain0211/2019/11/11/', 'sdvdsv'),
(305, 646, 27, 'admin3', 'nov13', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019-11-11', '', '', 'no format', 'uncategorized', '', '', 'no title', 'no description', 'no url', 'no schema', 'credit-card.png', '2019-11-11 12:47:11.932646', '2019-11-11', '', ''),
(306, 647, 27, 'admin3', 'no title', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019-11-11', '', '', 'no format', 'uncategorized', '', '', 'no title', 'no description', 'no url', 'no schema', 'credit-card.png', '2019-11-11 12:47:42.989048', '2019-11-11', '', ''),
(307, 648, 27, 'admin3', 'new title12', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019/11/12', '', '', 'no format', 'java1', '', '', 'no title', 'no description', 'no url', 'no schema', 'no image', '2019-11-12 06:13:50.282113', '2019/11/12', 'http://localhost/blockchain1111/2019/11/12/', 'new title12'),
(308, 651, 27, 'admin3', 'effgfg', '<!DOCTYPE html><html><head><title></title></head><body><p>fdgfgffg</p></body></html>', 'Publish', '', '12-11-2019', '', '', 'Picture', 'fddf,pondy,new123,new124', '', 'Parent Category', 'dfgdgdgf', 'ghhhhg', 'hgghghhg', 'hgghhg', 'credit-card.png', '2019-11-12 06:44:00.844979', '2019/11/12', 'http://localhost/blockchain1111/2019/11/12/', 'effgfg');

-- --------------------------------------------------------

--
-- Table structure for table `quickdraft`
--

CREATE TABLE `quickdraft` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `time` datetime(6) DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quickdraft`
--

INSERT INTO `quickdraft` (`id`, `title`, `content`, `time`) VALUES
(66, 'jjjj', 'qqqq', '2019-09-23 12:17:43.036637'),
(67, 'oooo', 'qqq', '2019-09-23 12:17:59.442238'),
(68, 'oooo', 'qqq', '2019-09-23 12:18:06.311691'),
(69, 'oooo', 'qqq', '2019-09-23 12:19:59.809499'),
(70, 'adsssaas', 'assaas', '2019-09-23 12:20:12.931884'),
(71, 'adsssaas', 'assaas', '2019-09-23 12:20:16.446380'),
(72, 'huihuh', 'mkmkm', '2019-09-23 13:25:20.829330'),
(73, 'huihuh', 'mkmkm', '2019-09-23 13:27:50.151265'),
(74, 'huihuh', 'mkmkm', '2019-09-23 13:43:43.711813'),
(75, 'huihuh', 'mkmkm', '2019-09-23 13:56:07.731469'),
(76, 'oooo', 'saas', '2019-09-23 14:00:15.222560'),
(77, 'qqqq', 'saas', '2019-09-23 14:00:45.479900'),
(78, 'qqqq', 'saas', '2019-09-23 14:00:59.962800'),
(79, 'jjjj', 'z', '2019-09-23 14:01:13.175456'),
(80, 'jjjj', 'z', '2019-09-23 14:01:38.622724'),
(81, 'oooo', 'aa', '2019-09-23 14:01:44.368724'),
(82, 'oijera', 'oina', '2019-09-23 14:02:10.497441'),
(83, 'jjjj', 'aaaa', '2019-09-24 05:35:37.265724'),
(84, 'jjjj', 'aaaa', '2019-09-24 05:36:02.226736'),
(85, 'jjjj', 'aaaa', '2019-09-24 05:36:40.801011'),
(86, 'jjjj', 'aaaa', '2019-09-24 05:45:34.110071'),
(87, 'blockchain', 'dvasdsfad', '2019-09-24 05:46:23.546872'),
(88, 'blockchain', 'qqqqq', '2019-09-26 15:41:04.258644'),
(89, 'oooo', 'q', '2019-09-26 15:55:44.256035'),
(90, 'oooo', 'q', '2019-09-26 15:56:37.300706'),
(91, 'blockchain', 'q', '2019-09-26 15:56:49.082763'),
(92, 'php', 'php', '2019-09-26 15:57:06.513987'),
(93, 'blockchain', 'aaa', '2019-09-26 18:14:20.437798'),
(94, 'blockchain', 'qqqq', '2019-09-28 09:57:53.761838'),
(95, 'blockchain', 'qqqq', '2019-10-01 09:53:34.977176'),
(96, 'october', 'sasasasa', '2019-10-01 09:59:07.507117'),
(97, 'october', 'sasasasa', '2019-10-01 10:00:15.714818'),
(98, 'blockchain1', 'aassa', '2019-10-01 10:00:21.672662'),
(99, 'blockchain1', 'aassa', '2019-10-01 10:05:20.720615'),
(100, 'blockchain1', 'aassa', '2019-10-01 10:06:14.527910'),
(101, 'blockchain1', 'aassa', '2019-10-01 10:07:43.648847'),
(102, 'blockchain', 'aaaa', '2019-10-09 16:49:32.659241'),
(103, 'blockchain', 'wqeqwwq', '2019-10-10 18:13:26.400998'),
(104, 'blockchain', 'wqeqwwq', '2019-10-10 18:19:03.825605'),
(105, 'blockchain', 'wqeqwwq', '2019-10-10 18:19:29.850282'),
(106, 'blockchain', 'wqeqwwq', '2019-10-10 18:20:57.537290'),
(107, 'blockchain', 'wqeqwwq', '2019-10-10 18:21:12.271801'),
(108, 'jjjj', 'dsdsa', '2019-10-10 19:06:12.461024'),
(109, 'blockchain', 'qqqq', '2019-10-11 19:42:57.861683'),
(110, 'blockchain', 'qdddfdf', '2019-10-12 09:41:02.494114'),
(111, 'blockchain', 'aaaa', '2019-10-14 16:39:25.913512'),
(112, '123456789', 'new value12345', '2019-10-22 10:47:33.931132');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `slug` varchar(1000) NOT NULL,
  `parent_category` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `add_new_tag` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `image`, `slug`, `parent_category`, `description`, `add_new_tag`) VALUES
(1, 'moshin', '', 'ewewew', 'News', 'nfijfr', ''),
(2, 'ewewew', '', 'ewewew', 'News', 'szszsz', ''),
(3, 'sdfsdfds', '', 'ewewew', 'News', 'znikzj', ''),
(4, 'dddsds', '', 'ewewew', 'News', 'znkxzmkmxc', ''),
(5, 'ewewew', '', 'ongiojnfrg', 'News', 'nfwoniofevnfe', '');

-- --------------------------------------------------------

--
-- Table structure for table `texteditor`
--

CREATE TABLE `texteditor` (
  `id` int(10) NOT NULL,
  `textcontent` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `texteditor`
--

INSERT INTO `texteditor` (`id`, `textcontent`) VALUES
(35, ''),
(36, ''),
(37, ''),
(38, ''),
(39, ''),
(40, ''),
(41, ''),
(42, ''),
(43, ''),
(44, ''),
(45, ''),
(46, ''),
(47, 'fddffdss'),
(48, '<u><i>xxxxxxx</i></u>'),
(49, '<u>aaaaaaa</u>'),
(50, '<u>aaaaaaa</u>'),
(51, '<u>aaaaaaa</u>'),
(52, '<u>aaaaaaa</u>'),
(53, '<u>aaaaaaa</u>'),
(54, '<i>qqqqqq</i>'),
(55, '<i>zzzzzzzzzzz</i>'),
(56, '<i>zzzzzzzzzzz</i>'),
(57, '<i>zzzzzzzzzzz</i>'),
(58, 'qqqq'),
(59, 'qqqq'),
(60, 'qqqq'),
(61, '<u>aaaaa</u>'),
(62, '<i>eeee</i>'),
(63, '<i>eeee</i>'),
(64, '<u>rrrr</u>'),
(65, '<u>rrrr</u>'),
(66, 'ttttt'),
(67, 'ttttt'),
(68, 'ttttt'),
(69, '<u>zzzzz</u>'),
(70, '<u>zzzzz</u>'),
(71, '<i>kkkk</i>'),
(72, '<i>kkkk</i>'),
(73, ''),
(74, ''),
(75, ''),
(76, ''),
(77, ''),
(78, ''),
(79, ''),
(80, ''),
(81, 'edit'),
(82, ''),
(83, ''),
(84, ''),
(85, 'qqqqqqq'),
(86, '1111q'),
(87, '1111q'),
(88, '1111q'),
(89, 'qqqqq'),
(90, 'aaaa'),
(91, 'aaaa'),
(92, 'aaaa'),
(93, ''),
(94, ''),
(95, ''),
(96, ''),
(97, ''),
(98, ''),
(99, ''),
(100, ''),
(101, ''),
(102, ''),
(103, ''),
(104, ''),
(105, ''),
(106, ''),
(107, ''),
(108, ''),
(109, ''),
(110, ''),
(111, ''),
(112, ''),
(113, ''),
(114, ''),
(115, ''),
(116, '<p><em>qqqq</em></p>'),
(117, '<p><em>qqqq</em></p>'),
(118, '<p><u>kgkgkgkg</u></p>'),
(119, ''),
(120, '<p><u>kgkgkgkg</u></p>'),
(121, '<p><strong>xcxccx</strong></p>'),
(122, '<p><strong>xcxccx</strong></p>'),
(123, '<p><img src=\"blob:http://localhost/2e457947-6841-4030-941f-f1715f7223dd\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>'),
(124, '<p><img src=\"blob:http://localhost/2e457947-6841-4030-941f-f1715f7223dd\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>'),
(125, '<p><img src=\"blob:http://localhost/2e457947-6841-4030-941f-f1715f7223dd\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>'),
(126, '<p><img src=\"blob:http://localhost/2e457947-6841-4030-941f-f1715f7223dd\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>'),
(127, '<p><em>aaaa</em></p>'),
(128, '<p><u>sssss</u></p>'),
(129, '<p><u>kgkgkg</u></p>'),
(130, '<p><u>kgkgkg</u></p>'),
(131, '<p><img src=\"blob:http://localhost/7c5dd67d-d933-4f48-bbbd-f1b65410f764\" style=\"width: 300px;\" class=\"fr-fic fr-dib\"></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tinymce`
--

CREATE TABLE `tinymce` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE `trash` (
  `id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Content` text NOT NULL,
  `Status` varchar(50) NOT NULL,
  `draftTime` varchar(50) NOT NULL,
  `publishTime` varchar(50) NOT NULL,
  `Visibility` varchar(20) NOT NULL,
  `publihedOn` varchar(50) NOT NULL,
  `Format` varchar(20) NOT NULL,
  `selectCategory` varchar(50) NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryType` varchar(50) NOT NULL,
  `seo_title` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(256) NOT NULL,
  `seo_schema` varchar(256) NOT NULL,
  `image` varchar(50) NOT NULL,
  `trashDate` varchar(50) NOT NULL,
  `time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trash`
--

INSERT INTO `trash` (`id`, `fid`, `user_id`, `username`, `Title`, `Content`, `Status`, `draftTime`, `publishTime`, `Visibility`, `publihedOn`, `Format`, `selectCategory`, `categoryName`, `categoryType`, `seo_title`, `description`, `url`, `seo_schema`, `image`, `trashDate`, `time`) VALUES
(67, 0, 25, 'admin1', 'new2', '<p>qwwq</p>', 'Publish', '', '2019-10-19', '', ' ', '', '', '', 'Parent Category', '', '', '', '', '', '2019-10-22', '2019-10-22 04:22:50.959585'),
(68, 0, 27, 'admin3', 'weee', '<!DOCTYPE html><html><head><title></title></head><body><p>weeeeeeeeeee</p></body></html>', 'Publish', '', '25-10-19', '', ' ', '', 'santhiya,fsfsfsfd,moshin,moshin1', 'uncategorized', 'santhiya', 'we', '', 'we', 'weww', 'no image', '2019-10-25', '2019-10-25 08:58:52.965227'),
(69, 0, 27, 'admin3', 'no title', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '25-10-19', '', ' ', '', 'moshin,baranee,pondichery', 'in', 'newblock2', 'no title', '', 'no url', 'no schema', '', '2019-10-25', '2019-10-25 09:06:46.721291'),
(87, 116, 27, 'admin3', 'qqqqq', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '2019-11-02', '', ' ', 'no format', 'uncategorized', '', 'Parent Category', 'no title', '', 'no url', 'no schema', '', '2019-11-02', '2019-11-02 06:11:28.419390'),
(88, 110, 27, 'admin3', 'czxczzxc', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '01-11-2019', '', ' ', 'no format', 'javascript1,', '', 'Parent Category', 'no title', '', 'no url', 'no schema', '', '2019-11-02', '2019-11-02 06:33:41.940452'),
(89, 112, 27, 'admin3', 'blockchain1', '<!DOCTYPE html><html><head><title></title></head><body><p><u><span style=\"color: rgb(65, 168, 95);\">ojhniogjgj</span></u></p></body></html>', 'Draft', '2019-11-02', '', 'Public', ' ', 'Quote', 'moshin', 'pondichery', 'moshin1', 'kjnfvkjnf', '', 'lkmflkmfd', 'klmfdklmgfkl', 'amusement-parks.png', '2019-11-06', '2019-11-06 10:43:18.252906'),
(90, 80, 27, 'jhhjhj2', 'blockchain1', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '', '', ' ', 'Video', 'javascript1,baranee1', 'baranee1', 'Parent Category', 'no title', '', 'no url', 'no schema', '', '2019-11-06', '2019-11-06 10:50:37.105022');

-- --------------------------------------------------------

--
-- Table structure for table `trashpages`
--

CREATE TABLE `trashpages` (
  `id` int(10) NOT NULL,
  `fid` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `user_id` int(10) NOT NULL,
  `Title` varchar(256) NOT NULL,
  `Content` text NOT NULL,
  `Status` varchar(50) NOT NULL,
  `draftTime` varchar(50) NOT NULL,
  `publishTime` varchar(50) NOT NULL,
  `Visibility` varchar(50) NOT NULL,
  `publihedOn` varchar(50) NOT NULL,
  `selectCategory` varchar(256) NOT NULL,
  `categoryName` varchar(256) NOT NULL,
  `categoryType` varchar(256) NOT NULL,
  `seo_title` varchar(256) NOT NULL,
  `description` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  `seo_schema` varchar(256) NOT NULL,
  `image` varchar(50) NOT NULL,
  `createdDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trashpages`
--

INSERT INTO `trashpages` (`id`, `fid`, `username`, `user_id`, `Title`, `Content`, `Status`, `draftTime`, `publishTime`, `Visibility`, `publihedOn`, `selectCategory`, `categoryName`, `categoryType`, `seo_title`, `description`, `url`, `seo_schema`, `image`, `createdDate`) VALUES
(17, 0, 'admin3', 27, 'title1', '<!DOCTYPE html><html><head><title></title></head><body><p>ignhfdsjnjgf</p></body></html>', 'Draft', '29-10-19', '', 'Public', ' 2019-10-02', 'html6,php7,dsds', '', '', 'addpost2', '', 'ewwewe', 'fdfdfddf', 'airtel.jpg', ''),
(20, 68, 'admin3', 27, 'ssdfsfdfds', '<!DOCTYPE html><html><head><title></title></head><body><p>dsffdsfsdfdsfds</p></body></html>', 'Publish', '', '30-10-2019', '', '   ', 'php7,java,uncategorized', 'uncategorized', 'Parent Category', 'no title', '', 'no url', 'no schema', 'bikes.png', '30-10-19'),
(21, 59, 'admin3', 27, 'new title', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '29-10-19', '', ' 2019-10-29', 'uncategorized,html6,php7,dsds', '1234', 'Parent Category', 'no title', '', 'no url', 'no schema', 'no image', '30-10-19'),
(24, 68, 'admin3', 27, 'ssdfsfdfds', '<!DOCTYPE html><html><head><title></title></head><body><p>dsffdsfsdfdsfds</p></body></html>', 'Publish', '', '30-10-2019', '', '   ', 'php7,java,uncategorized', 'uncategorized', 'Parent Category', 'no title', '', 'no url', 'no schema', 'bikes.png', '30-10-19'),
(25, 70, 'admin3', 27, 'new title', '<!DOCTYPE html><html><head><title></title></head><body></body></html>', 'Publish', '', '30-10-19', '', '   2019-10-29', 'uncategorized,html6,php7,dsds', '1234', 'Parent Category', 'no title', '', 'no url', 'no schema', 'no image', '30-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `webimages`
--

CREATE TABLE `webimages` (
  `WID` int(11) NOT NULL,
  `Text` varchar(40) NOT NULL,
  `Image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `webimages`
--

INSERT INTO `webimages` (`WID`, `Text`, `Image`) VALUES
(1, '', '1570008593airtel-1.png'),
(2, '', '1570008950idea.jpg'),
(3, '', '1570009845arrow.png'),
(4, '', '1570014561internet-banking.png'),
(5, '', '1570074979debit.jpg'),
(6, '', '1570169628internet-banking.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c1`
--
ALTER TABLE `c1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medialibrary`
--
ALTER TABLE `medialibrary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newuser`
--
ALTER TABLE `newuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_ibfk_1` (`fid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_ibfk_1` (`fid`);

--
-- Indexes for table `quickdraft`
--
ALTER TABLE `quickdraft`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `texteditor`
--
ALTER TABLE `texteditor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tinymce`
--
ALTER TABLE `tinymce`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trashpages`
--
ALTER TABLE `trashpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webimages`
--
ALTER TABLE `webimages`
  ADD PRIMARY KEY (`WID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=652;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `medialibrary`
--
ALTER TABLE `medialibrary`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `newuser`
--
ALTER TABLE `newuser`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- AUTO_INCREMENT for table `quickdraft`
--
ALTER TABLE `quickdraft`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `texteditor`
--
ALTER TABLE `texteditor`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `tinymce`
--
ALTER TABLE `tinymce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `trashpages`
--
ALTER TABLE `trashpages`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `webimages`
--
ALTER TABLE `webimages`
  MODIFY `WID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `c1`
--
ALTER TABLE `c1`
  ADD CONSTRAINT `c1_ibfk_1` FOREIGN KEY (`id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
