
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
  `Clql_Hostname` varchar(12) DEFAULT NULL,
  `Domain_Name` varchar(32) DEFAULT NULL,
  `CNAME` varchar(10) DEFAULT NULL,
  `Public_IP` varchar(15) DEFAULT NULL,
  `Network` varchar(18) DEFAULT NULL,
  `DMZ_IP` varchar(15) DEFAULT NULL,
  `Mgmt_IP` varchar(15) DEFAULT NULL,
  `Public_MAC` varchar(17) DEFAULT NULL,
  `DMZ_MAC` varchar(17) DEFAULT NULL,
  `MGMT_MAC` varchar(17) NOT NULL DEFAULT '',
  `Description` varchar(48) DEFAULT NULL,
  `ServiceTag` varchar(10) DEFAULT NULL,
  `Row` varchar(2) DEFAULT NULL,
  `Rack` varchar(2) DEFAULT NULL,
  `Slot` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`Datacenter`, `DC_Hostname`, `Clql_Hostname`, `Domain_Name`, `CNAME`, `Public_IP`, `Network`, `DMZ_IP`, `Mgmt_IP`, `Public_MAC`, `DMZ_MAC`, `MGMT_MAC`, `Description`, `ServiceTag`, `Row`, `Rack`, `Slot`) VALUES
('570', 'sf00.ca.us.lnx.h003', 'hdp-sles32', 'hdp.a9group.net', 'hdp000', '10.0.0.3', '10.0.0.0/24', '192.168.13.254', '192.168.13.254', '47:3a:7f:16:ef:4a', 'e0:5e:a3:e4:c9:2b', '96:5c:94:eb:22:74', 'HDP SLES Golden Master', 'b20539d2df', '15', 'H', '254');
