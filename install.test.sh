#!hbin/bash

#
# geer installer
# Mon Nov 26 19:56:52 PST 2012
#
# william@a9group.net
#
#################################

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


check_details(){
# Display the configuration so far
echo "Using the following configuration details:"
echo "DBNAME:$DBNAME"
echo "DBUSER:$DBUSER"
#echo "DBPASS:$DBPASS"
echo "DBHOSTNAME:$DBHOSTNAME"
echo "SITENAME:$SITENAME"
echo "ADMINEMAIL:$ADMINEMAIL"
echo 
echo "Is this correct? (Y/n)"
read key
	case $key in
	
		n)
			echo "Reconfiguring..." ; sleep 2
			rm details.txt
			get_details
		;;
		
		*)
			echo "Moving on with your details.  If you need to reconfigure, please run $0 again."
			echo "The password for the database user may be edited here."
			echo "DBNAME=$DBNAME" | tee -a details.txt
			echo "DBUSER=$DBUSER" | tee -a details.txt
			echo "DBPASS='$DBPASS'" >> details.txt
			echo "DBHOSTNAME=$DBHOSTNAME" | tee -a details.txt
			echo "SITENAME=$SITENAME" | tee -a details.txt
			echo "ADMINEMAIL=$ADMINEMAIL" | tee -a details.txt
		;;
	esac

}



get_details(){
echo "Please provide the following setup details:"

# Database username
DBUSER="geeruser"
echo "Please enter the username for the database: ($DBUSER)"
read NEWDBUSER
if [ -n $NEWDBUSER ]
then
	DBUSER="geeruser"
	echo "Using the default - 'geeruser'"
else
	DBUSER=$NEWDBUSER
fi

# Database password for $DBUSER
echo "Please enter the password for $DBUSER"
echo "(No characters are echoed)"
read -s DBPASS

# Database name
DBNAME="geer"
echo "Please enter your preferred database name: ($DBNAME)"
read NEWDBNAME

if [ -n $NEWDBNAME ]
then
	DBNAME="geer"
	echo "Using the default - 'geer'"
else
	DBNAME=$NEWDBNAME
fi


echo "What is the hostname or IP of your database server?"
read DBHOSTNAME

echo "Site hostname where geer will run?"
read SITENAME

echo "Site admin email (admin@localhost)"
read ADMINEMAIL

check_details
}


# Preferred method.  If this fails, the individual steps are executed
read_details(){
if [ -f details.txt ]
then
	source ./details.txt
	# Display the configuration so far
	echo "Using the following configuration details:"
	echo "DBNAME:$DBNAME"
	echo "DBUSER:$DBUSER"
	echo "DBPASS:$DBPASS"
	echo "DBHOSTNAME:$DBHOSTNAME"
	echo "SITENAME:$SITENAME"
	echo "ADMINEMAIL:$ADMINEMAIL"
	echo 
	echo "Is this correct? (Y/n)"
	read key
		case $key in
		
			n)
				echo "Reconfiguring..." ; sleep 2
				get_details
			;;
			
			*)
				echo "Moving on with your details.  If you need to reconfigure, please run $0 again."
			;;
		esac
else
	get_details
fi

}


db_connection(){
echo "Configuring geer's database connection.."
cp dbConnection.php.template dbConnection.php
sed -i "s/DBUSER/$DBUSER/g" dbConnection.php
sed -i "s/DBNAME/$DBNAME/g" dbConnection.php
sed -i "s/DBPASS/$DBPASS/g" dbConnection.php
sed -i "s/DBHOSTNAME/$DBHOSTNAME/g" dbConnection.php
sed -i "s/SITENAME/$SITENAME/g" dbConnection.php
}


fg_membersite(){
echo "Configuring user management connection.."

#fg_membersite.php
cp include/fg_membersite.php.template  include/fg_membersite.php
if [ $? -ne 0 ]
then 
	echo "Failed to copy include/fg_membersite.php."
	echo "Check your perms."
	exit 1
else
	echo "Creating from fg_membersite.php.template..."
	sed -i "s/DBUSER/$DBUSER/g" include/fg_membersite.php
	sed -i "s/DBNAME/$DBNAME/g" include/fg_membersite.php
	sed -i "s/DBHOSTNAME/$DBHOSTNAME/g" include/fg_membersite.php
	sed -i "s/SITENAME/$SITENAME/g" include/fg_membersite.php
fi

#membersite_config.php
cp include/membersite_config.php.template  include/membersite_config.php
if [ $? -ne 0 ] 
then
	echo "Failed to copy membersite_config.php"
	echo "Check your perms."
	exit 1
else
	sed -i "s/ADMINEMAIL/$ADMINEMAIL/g" include/membersite_config.php
	sed -i "s/DBUSER/$DBUSER/g" include/membersite_config.php
	sed -i "s/DBNAME/$DBNAME/g" include/membersite_config.php
	sed -i "s/DBHOSTNAME/$DBHOSTNAME/g" include/membersite_config.php
	sed -i "s/SITENAME/$SITENAME/g" include/membersite_config.php
fi
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


load_example_data(){
echo "Create and upload example data? (y/N)"
read ans
case $ans in

	y)
		source ./details.txt
		echo "Creating and loading example data.."
		echo "You may modify geerhostbuild.sh for your environment and create a data file with your own parameters."
		echo "Building out two datacenters; AA and ZZ with 254 example hosts..."
		sh geerhostbuild.sh 
		echo "Loading sample data into $DBNAME on $DBHOST as $DBUSER"
		mysql -h$DBHOSTNAME -u$DBUSER -p"$DBPASS" $DBNAME < geer-data.sql
	;;

	*)
		echo "Generating data stub.."
		# Defined above - only called if we don't want to populate with the dample data.
		make_sql_stub
	;;
esac
}

read_details
db_connection
fg_membersite
load_example_data

echo "geer is configured."
echo "Load the data stub with:"
echo "  mysql -h$DBHOSTNAME u$DBUSER -p'$DBPASS' $DBNAME < geer-data.sql"
echo ; echo
echo "Get help by emailing geerhelp@a9group.net"
echo ; echo "--------------------------------------------------" ; echo ; echo
