-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: mysql.beta.openlpos.org
-- Generation Time: Jun 04, 2012 at 01:19 PM
-- Server version: 5.1.53
-- PHP Version: 5.2.17

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
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `Datacenter` varchar(2) DEFAULT NULL,
  `DC_Hostname` varchar(28) DEFAULT NULL,
  `Clql_Hostname` varchar(11) DEFAULT NULL,
  `Domain_Name` varchar(8) DEFAULT NULL,
  `CNAME` varchar(10) DEFAULT NULL,
  `Public_IP` varchar(14) DEFAULT NULL,
  `Network` varchar(16) DEFAULT NULL,
  `DMZ_IP` varchar(13) DEFAULT NULL,
  `Mgmt_IP` varchar(12) DEFAULT NULL,
  `Public_MAC` varchar(10) DEFAULT NULL,
  `DMZ_MAC` varchar(10) DEFAULT NULL,
  `MGMT_MAC` varchar(10) DEFAULT NULL,
  `Description` varchar(48) DEFAULT NULL,
  `ServiceTag` varchar(10) DEFAULT NULL,
  `Row` varchar(1) DEFAULT NULL,
  `Rack` varchar(1) DEFAULT NULL,
  `Slot` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`Datacenter`, `DC_Hostname`, `Clql_Hostname`, `Domain_Name`, `CNAME`, `Public_IP`, `Network`, `DMZ_IP`, `Mgmt_IP`, `Public_MAC`, `DMZ_MAC`, `MGMT_MAC`, `Description`, `ServiceTag`, `Row`, `Rack`, `Slot`) VALUES
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
