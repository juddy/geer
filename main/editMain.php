<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<?php
$thisDC_Hostname = $_REQUEST['DC_HostnameField']
?>
<?php
$sql = "SELECT * FROM main WHERE DC_Hostname = '$thisDC_Hostname'";
$result = MYSQL_QUERY($sql);
$numberOfRows = MYSQL_NUMROWS($result);
if ($numberOfRows==0) {  
?>

Sorry. No records found !!

<?php
}
else if ($numberOfRows>0) {

	$i=0;
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

}
?>

<h2>Update Hardware</h2>
<form name="mainUpdateForm" method="POST" action="updateMain.php">

<table cellspacing="2" cellpadding="2" border="0" width="800">
	<tr valign="top" height="20">
		<td align="left"> <b> Datacenter :  </b> </td>
		<td> <input type="text" name="thisDatacenterField" size="10" value="<? echo $thisDatacenter; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DC_Hostname :  </b> </td>
		<td> <input type="text" name="thisDC_HostnameField" size="70" value="<? echo $thisDC_Hostname; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Clql_Hostname :  </b> </td>
		<td> <input type="text" name="thisClql_HostnameField" size="70" value="<? echo $thisClql_Hostname; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Domain_Name :  </b> </td>
		<td> <input type="text" name="thisDomain_NameField" size="70" value="<? echo $thisDomain_Name; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> CNAME :  </b> </td>
		<td> <input type="text" name="thisCNAMEField" size="70" value="<? echo $thisCNAME; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public_IP :  </b> </td>
		<td> <input type="text" name="thisPublic_IPField" size="70" value="<? echo $thisPublic_IP; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Network :  </b> </td>
		<td> <input type="text" name="thisNetworkField" size="70" value="<? echo $thisNetwork; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ_IP :  </b> </td>
		<td> <input type="text" name="thisDMZ_IPField" size="70" value="<? echo $thisDMZ_IP; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Mgmt_IP :  </b> </td>
		<td> <input type="text" name="thisMgmt_IPField" size="70" value="<? echo $thisMgmt_IP; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public_MAC :  </b> </td>
		<td> <input type="text" name="thisPublic_MACField" size="70" value="<? echo $thisPublic_MAC; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ_MAC :  </b> </td>
		<td> <input type="text" name="thisDMZ_MACField" size="70" value="<? echo $thisDMZ_MAC; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> MGMT_MAC :  </b> </td>
		<td> <input type="text" name="thisMGMT_MACField" size="70" value="<? echo $thisMGMT_MAC; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Description :  </b> </td>
		<td> <input type="text" name="thisDescriptionField" size="70" value="<? echo $thisDescription; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> ServiceTag :  </b> </td>
		<td> <input type="text" name="thisServiceTagField" size="70" value="<? echo $thisServiceTag; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Row :  </b> </td>
		<td> <input type="text" name="thisRowField" size="70" value="<? echo $thisRow; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Rack :  </b> </td>
		<td> <input type="text" name="thisRackField" size="70" value="<? echo $thisRack; ?>">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Slot :  </b> </td>
		<td> <input type="text" name="thisSlotField" size="70" value="<? echo $thisSlot; ?>">  </td> 
	</tr>
</table>

<input type="submit" name="submitUpdateMainForm" value="Update Hardware">
<input type="reset" name="resetForm" value="Clear Form">

</form>

<?php
include_once("../common/footer.php");
?>
