SET SQL_MODE=`NO_AUTO_VALUE_ON_ZERO`;


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
  `MGMT_MAC` varchar(10) NOT NULL DEFAULT `a9a9a9a9a9`,
  `Description` varchar(48) DEFAULT NULL,
  `ServiceTag` varchar(10) DEFAULT NULL,
  `Row` varchar(1) DEFAULT NULL,
  `Rack` varchar(1) DEFAULT NULL,
  `Slot` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`MGMT_MAC`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `main`
--
INSERT INTO `main` (`Datacenter`, `DC_Hostname`, `Clql_Hostname`, `Domain_Name`, `CNAME`, `Public_IP`, `Network`, `DMZ_IP`, `Mgmt_IP`, `Public_MAC`, `DMZ_MAC`, `MGMT_MAC`, `Description`, `ServiceTag`, `Row`, `Rack`, `Slot`) VALUES
(`570`, `sles113-i386-hdp2`, `node02`, `home.a9group.net`, ``, `10.0.0.2`, `10.0.0/24`, `10.0.2.2`, `10.0.3.2`,`0b:3d:6c:f8:7f:3a`, `b7:33:25:1f:f1:d1`, `5f:e8:ab:6e:a3:20`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `db6478a8a1c6`, `0`, `ZZ`, `2`),
(`570`, `sles113-i386-hdp3`, `node03`, `home.a9group.net`, ``, `10.0.0.3`, `10.0.0/24`, `10.0.2.3`, `10.0.3.3`,`20:7e:9c:a1:93:ff`, `2e:1e:80:83:fc:ac`, `2e:24:2a:dd:34:54`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `58d104d7990d`, `0`, `ZZ`, `3`),
(`570`, `sles113-i386-hdp4`, `node04`, `home.a9group.net`, ``, `10.0.0.4`, `10.0.0/24`, `10.0.2.4`, `10.0.3.4`,`38:0f:0b:18:3d:68`, `06:e7:6b:e7:8c:81`, `a5:fb:eb:ea:2d:b3`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `cb67a3d88786`, `0`, `ZZ`, `4`),
(`570`, `sles113-i386-hdp5`, `node05`, `home.a9group.net`, ``, `10.0.0.5`, `10.0.0/24`, `10.0.2.5`, `10.0.3.5`,`76:a5:42:49:9e:15`, `92:cf:ae:04:f8:05`, `11:40:1a:a8:5f:6a`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `4d6cb18b2055`, `0`, `ZZ`, `5`),
(`570`, `sles113-i386-hdp6`, `node06`, `home.a9group.net`, ``, `10.0.0.6`, `10.0.0/24`, `10.0.2.6`, `10.0.3.6`,`8a:90:7c:cd:02:8a`, `5a:c2:fc:78:28:96`, `78:e0:b9:9f:e9:b1`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `b03d03278f43`, `0`, `ZZ`, `6`),
(`570`, `sles113-i386-hdp7`, `node07`, `home.a9group.net`, ``, `10.0.0.7`, `10.0.0/24`, `10.0.2.7`, `10.0.3.7`,`42:b8:3a:f2:6c:35`, `b4:0e:08:40:3f:fc`, `d1:65:54:2a:ca:43`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `6a3b0f31e583`, `0`, `ZZ`, `7`),
(`570`, `sles113-i386-hdp8`, `node08`, `home.a9group.net`, ``, `10.0.0.8`, `10.0.0/24`, `10.0.2.8`, `10.0.3.8`,`c6:0c:16:e4:8d:5d`, `e8:50:33:c7:c6:2b`, `1a:45:74:c5:81:6b`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `f4bef3b3f294`, `0`, `ZZ`, `8`),
(`570`, `sles113-i386-hdp9`, `node09`, `home.a9group.net`, ``, `10.0.0.9`, `10.0.0/24`, `10.0.2.9`, `10.0.3.9`,`15:5a:9c:cc:8f:59`, `53:f2:ef:00:32:e5`, `f1:b5:bd:8f:3b:b5`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `2e203ab4ddb8`, `0`, `ZZ`, `9`),
(`570`, `sles113-i386-hdp10`, `node010`, `home.a9group.net`, ``, `10.0.0.10`, `10.0.0/24`, `10.0.2.10`, `10.0.3.10`,`4f:c7:e6:26:ca:3a`, `8d:d5:bc:1f:13:4c`, `94:92:ed:58:10:41`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `7f46949a86cb`, `0`, `ZZ`, `10`),
(`570`, `sles113-i386-hdp11`, `node011`, `home.a9group.net`, ``, `10.0.0.11`, `10.0.0/24`, `10.0.2.11`, `10.0.3.11`,`04:ba:9d:f1:f6:bf`, `28:70:f7:15:bb:e1`, `00:d9:ee:a8:d3:6e`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `84a86f13f329`, `0`, `ZZ`, `11`),
(`570`, `sles113-i386-hdp12`, `node012`, `home.a9group.net`, ``, `10.0.0.12`, `10.0.0/24`, `10.0.2.12`, `10.0.3.12`,`90:7d:9e:63:4c:65`, `e0:af:5c:6d:4c:14`, `c7:cd:ad:3d:ea:42`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `fdf32efd4a67`, `0`, `ZZ`, `12`),
(`570`, `sles113-i386-hdp13`, `node013`, `home.a9group.net`, ``, `10.0.0.13`, `10.0.0/24`, `10.0.2.13`, `10.0.3.13`,`e1:18:d4:0e:b2:81`, `bb:e5:26:51:83:c2`, `ae:35:e8:27:e5:9a`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `9f9a374f6617`, `0`, `ZZ`, `13`),
(`570`, `sles113-i386-hdp14`, `node014`, `home.a9group.net`, ``, `10.0.0.14`, `10.0.0/24`, `10.0.2.14`, `10.0.3.14`,`e1:f1:c6:3c:ca:88`, `e9:40:a3:cf:10:f7`, `22:af:fa:7e:33:02`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `de6191f818a5`, `0`, `ZZ`, `14`),
(`570`, `sles113-i386-hdp15`, `node015`, `home.a9group.net`, ``, `10.0.0.15`, `10.0.0/24`, `10.0.2.15`, `10.0.3.15`,`c1:23:ce:56:38:88`, `c6:73:f2:2d:85:52`, `f9:af:a6:40:72:27`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `b962b0eea0c2`, `0`, `ZZ`, `15`),
(`570`, `sles113-i386-hdp16`, `node016`, `home.a9group.net`, ``, `10.0.0.16`, `10.0.0/24`, `10.0.2.16`, `10.0.3.16`,`3a:4e:26:57:aa:31`, `d0:46:44:63:e3:59`, `09:13:6d:a7:4b:62`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `d3806dd27221`, `0`, `ZZ`, `16`),
(`570`, `sles113-i386-hdp17`, `node017`, `home.a9group.net`, ``, `10.0.0.17`, `10.0.0/24`, `10.0.2.17`, `10.0.3.17`,`ac:e2:4f:96:33:c8`, `5b:5e:23:04:a2:a1`, `59:9b:5a:70:90:21`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `964270dd5cfb`, `0`, `ZZ`, `17`),
(`570`, `sles113-i386-hdp18`, `node018`, `home.a9group.net`, ``, `10.0.0.18`, `10.0.0/24`, `10.0.2.18`, `10.0.3.18`,`92:9f:1b:23:19:46`, `26:2b:a7:11:86:27`, `0e:b8:ec:a1:ae:fc`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `1bf6d8cd0c67`, `0`, `ZZ`, `18`),
(`570`, `sles113-i386-hdp19`, `node019`, `home.a9group.net`, ``, `10.0.0.19`, `10.0.0/24`, `10.0.2.19`, `10.0.3.19`,`63:34:a5:53:36:94`, `51:0c:13:a3:7f:95`, `12:1f:47:36:60:b8`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `78e6bb458fa1`, `0`, `ZZ`, `19`),
(`570`, `sles113-i386-hdp20`, `node020`, `home.a9group.net`, ``, `10.0.0.20`, `10.0.0/24`, `10.0.2.20`, `10.0.3.20`,`cc:05:c0:ff:dd:9d`, `c4:4f:b0:4f:f5:fc`, `54:ba:7f:03:d4:83`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `dfcc12a4ab99`, `0`, `ZZ`, `20`),
(`570`, `sles113-i386-hdp21`, `node021`, `home.a9group.net`, ``, `10.0.0.21`, `10.0.0/24`, `10.0.2.21`, `10.0.3.21`,`48:18:9b:0e:39:c4`, `6a:1d:b6:d2:4b:f2`, `20:c9:02:90:e8:92`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `0a709970b425`, `0`, `ZZ`, `21`),
(`570`, `sles113-i386-hdp22`, `node022`, `home.a9group.net`, ``, `10.0.0.22`, `10.0.0/24`, `10.0.2.22`, `10.0.3.22`,`bf:4a:8d:b2:65:a4`, `b9:7e:38:f8:e9:5d`, `c8:f8:a5:12:ec:2c`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `ff9e1b441f10`, `0`, `ZZ`, `22`),
(`570`, `sles113-i386-hdp23`, `node023`, `home.a9group.net`, ``, `10.0.0.23`, `10.0.0/24`, `10.0.2.23`, `10.0.3.23`,`17:7e:e8:20:5a:87`, `c6:ff:d6:2e:ba:e1`, `3d:95:00:68:80:a8`, `HP DL360 G3 - SLES11SP3 - Ambari target cluster`, `46746799adc3`, `0`, `ZZ`, `23`),
