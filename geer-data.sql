SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: 'geer'
--

-- --------------------------------------------------------

--
-- Table structure for table 'main'
--

CREATE TABLE IF NOT EXISTS 'main' (
  'Datacenter' varchar(2) DEFAULT NULL,
  'DC_Hostname' varchar(28) DEFAULT NULL,
  'Clql_Hostname' varchar(11) DEFAULT NULL,
  'Domain_Name' varchar(8) DEFAULT NULL,
  'CNAME' varchar(10) DEFAULT NULL,
  'Public_IP' varchar(14) DEFAULT NULL,
  'Network' varchar(16) DEFAULT NULL,
  'DMZ_IP' varchar(13) DEFAULT NULL,
  'Mgmt_IP' varchar(12) DEFAULT NULL,
  'Public_MAC' varchar(10) DEFAULT NULL,
  'DMZ_MAC' varchar(10) DEFAULT NULL,
  'MGMT_MAC' varchar(10) NOT NULL DEFAULT '',
  'Description' varchar(48) DEFAULT NULL,
  'ServiceTag' varchar(10) DEFAULT NULL,
  'Row' varchar(1) DEFAULT NULL,
  'Rack' varchar(1) DEFAULT NULL,
  'Slot' varchar(10) DEFAULT NULL,
  PRIMARY KEY ('MGMT_MAC')
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table 'main'
--
INSERT INTO 'main' ('Datacenter', 'DC_Hostname', 'Clql_Hostname', 'Domain_Name', 'CNAME', 'Public_IP', 'Network', 'DMZ_IP', 'Mgmt_IP', 'Public_MAC', 'DMZ_MAC', 'MGMT_MAC', 'Description', 'ServiceTag', 'Row', 'Rack', 'Slot') VALUES
('570', 'sles113-i386-hdp2', 'node02', 'home.a9group.net', '', '10.0.0.2', '10.0.0/24', '10.0.2.2', '10.0.3.2','70:a9:2e:a2:25:55', '8c:d3:bf:a4:c4:93', '9b:84:ab:a9:4e:73', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '2b47046f0fc7', '0', 'ZZ', '2'),
('570', 'sles113-i386-hdp3', 'node03', 'home.a9group.net', '', '10.0.0.3', '10.0.0/24', '10.0.2.3', '10.0.3.3','83:cd:67:69:5d:19', 'fa:ed:0e:96:2a:b9', 'a6:7e:0a:51:29:b9', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'cd1cfca085d7', '0', 'ZZ', '3'),
('570', 'sles113-i386-hdp4', 'node04', 'home.a9group.net', '', '10.0.0.4', '10.0.0/24', '10.0.2.4', '10.0.3.4','e4:5b:c4:88:f5:44', 'ce:b5:55:f7:2f:ef', '1b:76:5b:b9:41:90', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'fd1d8026f183', '0', 'ZZ', '4'),
('570', 'sles113-i386-hdp5', 'node05', 'home.a9group.net', '', '10.0.0.5', '10.0.0/24', '10.0.2.5', '10.0.3.5','e8:36:f0:bb:2e:88', '12:b9:6d:f3:fc:dd', '51:27:45:b9:a3:b8', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'e457f53ccfa1', '0', 'ZZ', '5'),
('570', 'sles113-i386-hdp6', 'node06', 'home.a9group.net', '', '10.0.0.6', '10.0.0/24', '10.0.2.6', '10.0.3.6','30:42:b4:e6:d1:82', '0f:f9:56:38:4f:3f', '22:5e:39:52:2d:b7', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '1bb2e332dd45', '0', 'ZZ', '6'),
('570', 'sles113-i386-hdp7', 'node07', 'home.a9group.net', '', '10.0.0.7', '10.0.0/24', '10.0.2.7', '10.0.3.7','aa:e2:96:0b:f0:22', '49:cd:df:52:38:f5', '46:5b:27:f6:60:af', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '839ebc829701', '0', 'ZZ', '7'),
('570', 'sles113-i386-hdp8', 'node08', 'home.a9group.net', '', '10.0.0.8', '10.0.0/24', '10.0.2.8', '10.0.3.8','a6:b2:93:cf:84:bc', 'ae:e6:86:c9:4c:77', '13:95:b0:b7:b2:9e', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '8dcd6cae6f09', '0', 'ZZ', '8'),
('570', 'sles113-i386-hdp9', 'node09', 'home.a9group.net', '', '10.0.0.9', '10.0.0/24', '10.0.2.9', '10.0.3.9','37:03:53:69:3e:57', '17:e6:30:b6:e3:90', '96:45:ff:58:d2:53', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'e3fbf480d344', '0', 'ZZ', '9'),
('570', 'sles113-i386-hdp10', 'node010', 'home.a9group.net', '', '10.0.0.10', '10.0.0/24', '10.0.2.10', '10.0.3.10','cf:2d:23:78:c6:ad', '51:be:ab:70:99:38', '63:3d:18:90:df:fa', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '49cf94600ce9', '0', 'ZZ', '10'),
('570', 'sles113-i386-hdp11', 'node011', 'home.a9group.net', '', '10.0.0.11', '10.0.0/24', '10.0.2.11', '10.0.3.11','b7:b0:d3:31:1f:d0', '20:75:3e:1c:ee:c3', '5c:5a:ac:08:25:2e', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '5b75987b52fd', '0', 'ZZ', '11'),
('570', 'sles113-i386-hdp12', 'node012', 'home.a9group.net', '', '10.0.0.12', '10.0.0/24', '10.0.2.12', '10.0.3.12','cc:38:67:6c:b6:4f', '00:0b:2d:43:bd:6c', '64:6b:a5:2a:96:68', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '08d8eec1c533', '0', 'ZZ', '12'),
('570', 'sles113-i386-hdp13', 'node013', 'home.a9group.net', '', '10.0.0.13', '10.0.0/24', '10.0.2.13', '10.0.3.13','11:e3:f8:5d:59:fc', '2e:81:23:af:c0:78', 'ee:88:a0:ce:d0:4b', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'e7ceb75c3aaf', '0', 'ZZ', '13'),
('570', 'sles113-i386-hdp14', 'node014', 'home.a9group.net', '', '10.0.0.14', '10.0.0/24', '10.0.2.14', '10.0.3.14','57:25:26:a7:bb:b4', 'a3:d5:72:18:4d:fe', 'e1:8e:8f:ed:ef:bf', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'f785a1e43167', '0', 'ZZ', '14'),
('570', 'sles113-i386-hdp15', 'node015', 'home.a9group.net', '', '10.0.0.15', '10.0.0/24', '10.0.2.15', '10.0.3.15','7f:3a:a4:05:9d:46', '5a:a5:f3:62:c2:21', '66:0b:fd:65:f4:71', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '58c11633a3db', '0', 'ZZ', '15'),
('570', 'sles113-i386-hdp16', 'node016', 'home.a9group.net', '', '10.0.0.16', '10.0.0/24', '10.0.2.16', '10.0.3.16','1d:d6:9d:14:fc:ec', '43:64:47:c9:d8:14', '85:2f:b7:7a:8d:fd', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'b9e15f28123f', '0', 'ZZ', '16'),
('570', 'sles113-i386-hdp17', 'node017', 'home.a9group.net', '', '10.0.0.17', '10.0.0/24', '10.0.2.17', '10.0.3.17','80:9b:28:18:f3:4e', '0e:32:02:f3:2c:97', '79:df:ba:ac:a5:26', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'ed056da028cc', '0', 'ZZ', '17'),
('570', 'sles113-i386-hdp18', 'node018', 'home.a9group.net', '', '10.0.0.18', '10.0.0/24', '10.0.2.18', '10.0.3.18','ba:67:fa:43:84:dc', '93:7a:e5:2d:8e:e8', '89:9f:19:dc:65:52', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '40bb40d486cc', '0', 'ZZ', '18'),
('570', 'sles113-i386-hdp19', 'node019', 'home.a9group.net', '', '10.0.0.19', '10.0.0/24', '10.0.2.19', '10.0.3.19','23:35:05:06:a4:85', '6c:17:f2:0e:93:f5', '70:39:e2:40:ff:b5', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'd6ba1dba3754', '0', 'ZZ', '19'),
('570', 'sles113-i386-hdp20', 'node020', 'home.a9group.net', '', '10.0.0.20', '10.0.0/24', '10.0.2.20', '10.0.3.20','7f:84:b6:4b:67:12', 'ae:17:a8:ca:c8:f1', '4c:1f:e8:a1:46:fc', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'a350b4072d58', '0', 'ZZ', '20'),
('570', 'sles113-i386-hdp21', 'node021', 'home.a9group.net', '', '10.0.0.21', '10.0.0/24', '10.0.2.21', '10.0.3.21','3c:8e:56:23:5b:55', '39:4b:b8:8a:17:b4', '86:47:c2:5c:00:42', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', 'c042cf78fd8c', '0', 'ZZ', '21'),
('570', 'sles113-i386-hdp22', 'node022', 'home.a9group.net', '', '10.0.0.22', '10.0.0/24', '10.0.2.22', '10.0.3.22','2d:ba:d1:0c:d0:9d', '4d:a8:51:a0:93:ab', '77:0a:44:cd:4a:b3', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '361851d8319e', '0', 'ZZ', '22'),
('570', 'sles113-i386-hdp23', 'node023', 'home.a9group.net', '', '10.0.0.23', '10.0.0/24', '10.0.2.23', '10.0.3.23','70:5f:0e:e5:c7:7b', '49:f4:29:da:28:a1', '5e:50:44:68:0d:33', 'HP DL360 G3 - SLES11SP3 - Ambari target cluster', '239242bc99f2', '0', 'ZZ', '23'),
