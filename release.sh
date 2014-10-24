#!/bin/bash
#
# geer installer
# Release roll configurator
# Tue Nov 27 12:07:27 PST 2012
#
# william@a9group.net
#
#################################

set -x

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

roll_ver(){
# release name - pulled from /usr/share/dict/words
CURKEY=$(grep CURKEY release.txt | awk -F: '{print $2}' | head -n1)
# line number for current release name
CURKEYVAL=$(grep -n $CURKEY /usr/share/dict/words | awk -F: '{print $1}' | head -n1)
# increment the value derived from the current line number for the release name
NEWKEYVAL=$(expr $CURKEYVAL + 500)
# pull the new release name/key
NEWKEY=$(awk "NR==$NEWKEYVAL" /usr/share/dict/words)
CURVER=$(grep CURVER release.txt | awk -F: '{print $2}' | head -n1)
NEWVER=$(expr $CURVER + 1)

sed -i "s/$CURVER/$NEWVER/" release.txt
sed -i "s/$CURKEY/$NEWKEY/" release.txt
}

roll_ver
