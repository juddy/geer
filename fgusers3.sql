-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.juddy.org
-- Generation Time: Oct 23, 2014 at 10:18 AM
-- Server version: 5.1.56
-- PHP Version: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geer`
--

-- --------------------------------------------------------

--
-- Table structure for table `fgusers3`
--

CREATE TABLE IF NOT EXISTS `fgusers3` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone_number` varchar(16) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(32) NOT NULL,
  `confirmcode` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fgusers3`
--

INSERT INTO `fgusers3` (`id_user`, `name`, `email`, `phone_number`, `username`, `password`, `confirmcode`) VALUES
(1, 'William Kennedy', 'william@a9group.net', '', 'william@a9group.', 'c129743588709570edea3ab879c5a312', 'y'),
(2, 'Billy Test', 'billy.test@a9group.net', '', 'billy.test', '6097f205c8d25e64b50a567d3f8fd5e7', 'y'),
(3, 'bill test, sr.', 'bill.test@a9group.net', '', 'bill.test', '5f4dcc3b5aa765d61d8327deb882cf99', 'y'),
(4, 'Joe Demo', 'joe.demo@a9group.net', '', 'joe.demo', '53170e4d931995a767feb793df49e52d', 'y'),
(5, 'satish', 'rkl.satish@gmail.com', '', 'satish', '653732d7deadc13735b6c0b23f8c3b1c', 'y'),
(6, 'tiquay', 'ti_quay_00@yahoo.com.vn', '', 'tiquay', '823da4223e46ec671a10ea13d7823534', 'y'),
(7, 'System Administrator', 'admin@rbpower.com', '', 'rbadmin', 'f6cf95993460da43907f533fb2c70ebb', 'y'),
(8, 'Gerhard van der Westuizen', 'gvdwest@msn.com', '', 'benton', '851250c5a62cdee42f2e3476e1bf35f7', '8c402a9965ec7ddb42e1e95b1f5edf58');
