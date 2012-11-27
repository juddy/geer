#!/bin/bash
#
# geer installer
# Mon Nov 26 19:56:52 PST 2012
#
# william@a9group.net
#
#################################

get_details(){
echo "Please provide the following setup details:"
echo "Database username"
read DBUSER
echo "Database name"
read DBNAME
echo "Database hostname"
read DBHOSTNAME
echo "Site hostname"
read SITENAME
echo "Site admin email"
read ADMINEMAIL
}


db_connection(){
echo "Configuring geer's database connection.."
cp dbConnection.php.template dbConnection.php
sed -i 's/DBUSER/$DBUSER/g' dbConnection.php
sed -i 's/DBNAME/$DBNAME/g' dbConnection.php
sed -i 's/DBHOSTNAME/$DBHOSTNAME/g' dbConnection.php
sed -i 's/SITENAME/$SITENAME/g' dbConnection.php
}


fg_membership(){
echo "Configuring user management connection.."

#fg_membership.php
cp include/fg_membersite.php.template  include/fg_membersite.php
if [ $? -ne 0 ] ; then exit 0
sed -i 's/DBUSER/$DBUSER/g' include/fg_membership.php
sed -i 's/DBNAME/$DBNAME/g' include/fg_membership.php
sed -i 's/DBHOSTNAME/$DBHOSTNAME/g' include/fg_membership.php
sed -i 's/SITENAME/$SITENAME/g' include/fg_membership.php

#membersite_config.php
cp include/membersite_config.php.template  include/membersite_config.php
if [ $? -ne 0 ] ; then exit 0
sed -i 's/ADMINEMAIL/$ADMINEMAIL/g' include/membersite_config.php
sed -i 's/DBUSER/$DBUSER/g' include/membersite_config.php
sed -i 's/DBNAME/$DBNAME/g' include/membersite_config.php
sed -i 's/DBHOSTNAME/$DBHOSTNAME/g' include/membersite_config.php
sed -i 's/SITENAME/$SITENAME/g' include/membersite_config.php
}


load_example_data(){
echo "Create and upload example data?"
read ans
case ans in

	y,Y)
		echo "Creating example data.."
		sh geerhostbuild.sh
		echo "Loading sample data into $DBNAME on $DBHOST as $DBUSER"
		mysql -u$DBUSER -p"$DBPASS" -h$DBHOST $DBNAME < geer-data.sql
	;;

	*)
		echo "View the schema or geerhostbuild.sh to understand host details."
		echo "The $DBNAME.main table must be populated prior to use." 
	;;
esac
}

get_details
db_connection
fg_membership
load_example_data

