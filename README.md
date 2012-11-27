http://demo.geer.openlpos.org

<wjkennedy@openlpos.org>

***

What it is:

'geer' is a Quick-n-Dirty TM host management application. Essentially, a web-accessible tool to manage a simple systems database:

- Datacenter Hostname
- Colloquial Hostname
- DNS CNAME
- Plain English system description
- MAC Addresses
- Network range
- IP addresses for 3 networks
- Internal authentication system - connect with LDAP via mod_authz or similar.

MySQL database is supported, connection details are in common/dbConnection.php

What it isn't:

- Production ready
- Supported
- A fully-functional tool

***

# BUGS:

Abundant.

***

# USE:

Run the installer script 'install.sh'

This script will collect some details related to the install process.  Database server, database name, database user & password, hostname, etc.
It will modify the necessary files (hopefully) and populate the database with either a stub of the 'main' table, or a table populated with two datacenters - each with 254 unique hosts.


***

# TODO:

Incorporate contemporary CSS and JS frameworks

Make hosts file generator prompt for file download or provide URL to encrypted file

Integrate Puppet/Chef configuration

***

# CHANGELOG:

* Minor cosmetic fixes
* Added an IP calculator tool
* Added authentication and registration system
* Schema changes - field extensions
* More complete SQL dump
* Added Cisco DHCP Pool static mapping support

***

# INFO:

The initial code was built with 'GIP' (https://github.com/juddy/GIP), a PHP code generation framework, a fork of PHPCodeGenie.  
If you like what geer does, consider taking a look at "PHPCodeGenie Reloaded", a continution of the original project by another author.

***

# SCHEMA:

    Field   Type    Null    Default Comments
    Datacenter  varchar(2)  Yes     NULL     
    DC_Hostname varchar(28) Yes     NULL     
    Clql_Hostname   varchar(11) Yes     NULL     
    Domain_Name varchar(8)  Yes     NULL     
    CNAME   varchar(10) Yes     NULL     
    Public_IP   varchar(14) Yes     NULL     
    Network varchar(16) Yes     NULL     
    DMZ_IP  varchar(13) Yes     NULL     
    Mgmt_IP varchar(12) Yes     NULL     
    Public_MAC  varchar(17) Yes     00:aa:11:bb:22:cc    
    DMZ_MAC varchar(17) Yes     NULL     
    MGMT_MAC    varchar(17) No       
    Description varchar(48) Yes     NULL     
    ServiceTag  varchar(10) Yes     NULL     
    Row varchar(1)  Yes     NULL     
    Rack    varchar(1)  Yes     NULL     
    Slot    varchar(10) Yes     NULL     
