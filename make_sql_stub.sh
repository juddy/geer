#!/bin/bash
#set -x
ENDIP=254
BEGIP=1
IP=$BEGIP
SLOT=$IP

randtag(){
od /dev/urandom -w6 -tx1 -An|sed -e 's/ //' -e 's/ //g'|head -n 1
}

randmac(){
od /dev/urandom -w6 -tx1 -An|sed -e 's/ //' -e 's/ /:/g'|head -n 1
#openssl rand -hex 6 | sed 's/\(..\)/\1:/g; s/.$//'
}


#('Datacenter', 'DC_Hostname', 'Clql_Hostname', 'Domain_Name', 'CNAME', 'Public_IP', 'Network', 'DMZ_IP', 'Mgmt_IP', 'Public_MAC', 'DMZ_MAC', 'MGMT_MAC', 'Description', 'ServiceTag', 'Row', 'Rack', 'Slot')
#('AA', 'b01.co.us.lnx.p01', 'flatirons', 'demo.org', 'flatirons', '192.168.1.1', '192.168.1/24', '192.168.10.1', '192.168.9.1', '00:aa:11:b', 'cc:22:bb:1', '0a:1b:3c:a', 'Colorado SSH access', 'DE7P3DGE', '1', 'A', '0')

make_sql_stub(){
cat << EOF > geer-data.sql

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
EOF
}

make_hostgroup1(){

	echo "('AA', 'b01.co.us.lnx.p0$IP', 'host0$IP', 'demo.com', '', '192.168.1.$IP', '192.168.1/24', '192.168.10.$IP', '192.168.9.$IP','$(randmac)', '$(randmac)', '$(randmac)', 'Geer demo box', '$(randtag)', '1', 'A', '$SLOT')," | tee -a geer-data.sql
	echo ; echo "--------------------"

}

make_hostgroup2(){

	echo "('ZZ', 'd01.tx.us.lnx.d0$IP', 'dev-tx-0$IP', 'dev.demo.com', '', '192.168.3.$IP', '192.168.3/24', '192.168.13.$IP', '192.168.13.$IP','$(randmac)', '$(randmac)', '$(randmac)', 'Geer development box', '$(randtag)', '15', 'H', '$SLOT')," | tee -a geer-data.sql
	echo ; echo "--------------------"

}

make_sql_stub
