<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<?php
	// Retreiving Form Elements from Form
	$thisDatacenter = addslashes($_REQUEST['thisDatacenterField']);
	$thisDC_Hostname = addslashes($_REQUEST['thisDC_HostnameField']);
	$thisClql_Hostname = addslashes($_REQUEST['thisClql_HostnameField']);
	$thisDomain_Name = addslashes($_REQUEST['thisDomain_NameField']);
	$thisCNAME = addslashes($_REQUEST['thisCNAMEField']);
	$thisPublic_IP = addslashes($_REQUEST['thisPublic_IPField']);
	$thisNetwork = addslashes($_REQUEST['thisNetworkField']);
	$thisDMZ_IP = addslashes($_REQUEST['thisDMZ_IPField']);
	$thisMgmt_IP = addslashes($_REQUEST['thisMgmt_IPField']);
	$thisPublic_MAC = addslashes($_REQUEST['thisPublic_MACField']);
	$thisDMZ_MAC = addslashes($_REQUEST['thisDMZ_MACField']);
	$thisMGMT_MAC = addslashes($_REQUEST['thisMGMT_MACField']);
	$thisDescription = addslashes($_REQUEST['thisDescriptionField']);
	$thisServiceTag = addslashes($_REQUEST['thisServiceTagField']);
	$thisRow = addslashes($_REQUEST['thisRowField']);
	$thisRack = addslashes($_REQUEST['thisRackField']);
	$thisSlot = addslashes($_REQUEST['thisSlotField']);

?>
<?
$sql = "UPDATE main SET Datacenter = '$thisDatacenter' , DC_Hostname = '$thisDC_Hostname' , Clql_Hostname = '$thisClql_Hostname' , Domain_Name = '$thisDomain_Name' , CNAME = '$thisCNAME' , Public_IP = '$thisPublic_IP' , Network = '$thisNetwork' , DMZ_IP = '$thisDMZ_IP' , Mgmt_IP = '$thisMgmt_IP' , Public_MAC = '$thisPublic_MAC' , DMZ_MAC = '$thisDMZ_MAC' , MGMT_MAC = '$thisMGMT_MAC' , Description = '$thisDescription' , ServiceTag = '$thisServiceTag' , Row = '$thisRow' , Rack = '$thisRack' , Slot = '$thisSlot'  WHERE DC_Hostname = '$thisDC_Hostname'";
$result = MYSQL_QUERY($sql);

?>
<h2>Record  has been updated in the database. Here is the updated information :</h2> <br><br>

<table>
<tr height="30">
	<td align="right"><b>Datacenter : </b></td>
	<td><? echo $thisDatacenter; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>DC_Hostname : </b></td>
	<td><? echo $thisDC_Hostname; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Colloquial Hostname : </b></td>
	<td><? echo $thisClql_Hostname; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Domain Name : </b></td>
	<td><? echo $thisDomain_Name; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>DNS CNAME : </b></td>
	<td><? echo $thisCNAME; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Public IP : </b></td>
	<td><? echo $thisPublic_IP; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Network : </b></td>
	<td><? echo $thisNetwork; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>DMZ IP : </b></td>
	<td><? echo $thisDMZ_IP; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Mgmt IP : </b></td>
	<td><? echo $thisMgmt_IP; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Public MAC : </b></td>
	<td><? echo $thisPublic_MAC; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>DMZ MAC : </b></td>
	<td><? echo $thisDMZ_MAC; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>MGMT MAC : </b></td>
	<td><? echo $thisMGMT_MAC; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Description : </b></td>
	<td><? echo $thisDescription; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Service Tag : </b></td>
	<td><? echo $thisServiceTag; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Row : </b></td>
	<td><? echo $thisRow; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Rack : </b></td>
	<td><? echo $thisRack; ?></td>
</tr>
<tr height="30">
	<td align="right"><b>Slot : </b></td>
	<td><? echo $thisSlot; ?></td>
</tr>
</table>
<?php
echo '<a href="javascript:history.go(-1)">Go Back to Record</a><br>';
echo '<a href="javascript:history.go(-2)">Go Back to Results</a><br>';
?><a href="listMain.php">Go Back to List All Records</a>
<br>

