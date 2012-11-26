<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
require_once("./include/membersite_config.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login.php");
    exit;
}

$initStartLimit = 0;
$limitPerPage = 999;

$startLimit = $_REQUEST['startLimit'];
$numberOfRows = $_REQUEST['rows'];
$sortBy = $_REQUEST['sortBy'];
$sortOrder = $_REQUEST['sortOrder'];

if ($startLimit=="")
{
		$startLimit = $initStartLimit;
}

if ($numberOfRows=="")
{
		$numberOfRows = $limitPerPage;
}

if ($sortOrder=="")
{
		$sortOrder  = "DESC";
}
if ($sortOrder == "DESC") { $newSortOrder = "ASC"; } else  { $newSortOrder = "DESC"; }
$limitQuery = " LIMIT ".$startLimit.",".$numberOfRows;
$nextStartLimit = $startLimit + $limitPerPage;
$previousStartLimit = $startLimit - $limitPerPage;

if ($sortBy!="")
{
		$orderByQuery = " ORDER BY ".$sortBy." ".$sortOrder;
}


$sql = "SELECT   * FROM main".$orderByQuery.$limitQuery;
$result = MYSQL_QUERY($sql);
$numberOfRows = MYSQL_NUM_ROWS($result);


?>
<?
if ($numberOfRows==0) {  
?>

Sorry. No records found !!

<?
}
else if ($numberOfRows>0) {

	$i=0;
?>


<br>

<br><br>
<h1>Generated /etc/hosts</h1>
<p>This file includes all hosts known to the system.</p>
<TABLE CELLSPACING="0" CELLPADDING="3" BORDER="0" WIDTH="100%">
			<a href="<? echo $PHP_SELF; ?>?sortBy=Public_IP&sortOrder=<? echo $newSortOrder; ?>&startLimit=<? echo $startLimit; ?>&rows=<? echo $limitPerPage; ?>">
				<B>IP</B>
			</a>
</TD>
		<TD>
			<a href="<? echo $PHP_SELF; ?>?sortBy=DC_Hostname&sortOrder=<? echo $newSortOrder; ?>&startLimit=<? echo $startLimit; ?>&rows=<? echo $limitPerPage; ?>">
				<B>Hostname</B>
			</a>
</TD>

</TD>
		<TD>
			<a href="<? echo $PHP_SELF; ?>?sortBy=Description&sortOrder=<? echo $newSortOrder; ?>&startLimit=<? echo $startLimit; ?>&rows=<? echo $limitPerPage; ?>">
				<B>Description</B>
			</a>
</TD>
	</TR>
<?
	while ($i<$numberOfRows)
	{

		if (($i%2)==0) { $bgColor = "#e1e9f3"; } else { $bgColor = "#afcef4"; }

	$thisDatacenter = MYSQL_RESULT($result,$i,"Datacenter");
	$thisDC_Hostname = MYSQL_RESULT($result,$i,"DC_Hostname");
	$thisClql_Hostname = MYSQL_RESULT($result,$i,"Clql_Hostname");
	$thisDomain_Name = MYSQL_RESULT($result,$i,"Domain_Name");
	$thisCNAME = MYSQL_RESULT($result,$i,"CNAME");
	$thisPublic_IP = MYSQL_RESULT($result,$i,"Public_IP");
	$thisNetwork = MYSQL_RESULT($result,$i,"Network");
	$thisDMZ_IP = MYSQL_RESULT($result,$i,"DMZ_IP");
	$thisMgmt_IP = MYSQL_RESULT($result,$i,"Mgmt_IP");
	$thisPublic_MAC = MYSQL_RESULT($result,$i,"Public_MAC");
	$thisDMZ_MAC = MYSQL_RESULT($result,$i,"DMZ_MAC");
	$thisMGMT_MAC = MYSQL_RESULT($result,$i,"MGMT_MAC");
	$thisDescription = MYSQL_RESULT($result,$i,"Description");
	$thisServiceTag = MYSQL_RESULT($result,$i,"ServiceTag");
	$thisRow = MYSQL_RESULT($result,$i,"Row");
	$thisRack = MYSQL_RESULT($result,$i,"Rack");
	$thisSlot = MYSQL_RESULT($result,$i,"Slot");

?>
<?
$myHostsFile = "hosts";
$fh = fopen($myHostsFile, 'w') or die("Can't open hosts file for writing.");
?>
	<TR BGCOLOR="<? echo $bgColor; ?>">
	
		<TD><? echo $thisPublic_IP; ?></TD>
		<TD><? echo "$thisClql_Hostname.$thisDomain_Name"; ?><a href="listGridMain.php?action=Edit&thisDC_HostnameField=<? echo $thisDC_Hostname; ?>"><? echo "&nbsp;&nbsp;&nbsp;&nbsp;$thisDC_Hostname"; ?></a></TD>
		<TD><? echo "#$thisDescription"; ?></TD>
	</TR>
	<TR BGCOLOR="<? echo $bgColor; ?>">
		<TD><? echo $thisDMZ_IP; ?></TD>
		<TD><? echo "$thisCNAME.$thisDomain_Name"; ?></TD>
		<TD><? echo "#$thisDescription - on DMZ/VPN"; ?></TD>
	</TR>
	<TR BGCOLOR="<? echo $bgColor; ?>">
		<TD><? echo $thisMgmt_IP; ?></TD>
		<TD><? echo "$thisClql_Hostname"; ?></TD>
		<TD><? echo "#$thisDescription - CNAME - on BUP/MGMT LAN"; ?></TD>
	</TR>
	<? fclose($fh); ?>
<?
		$i++;

	} // end while loop
?>
</TABLE>


<br>
<br><br>
<?
} // end of if numberOfRows > 0 
?>
