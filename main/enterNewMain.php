<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<h2>Enter New Hardware</h2>
<form name="mainEnterForm" method="POST" action="insertNewMain.php">

<table cellspacing="2" cellpadding="2" border="0" width="800">
	<tr valign="top" height="20">
		<td align="left"> <b> Datacenter :  </b> </td>
		<td> <input type="text" name="thisDatacenterField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DC_Hostname :  </b> </td>
		<td> <input type="text" name="thisDC_HostnameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Clql_Hostname :  </b> </td>
		<td> <input type="text" name="thisClql_HostnameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Domain_Name :  </b> </td>
		<td> <input type="text" name="thisDomain_NameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> CNAME :  </b> </td>
		<td> <input type="text" name="thisCNAMEField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public_IP :  </b> </td>
		<td> <input type="text" name="thisPublic_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Network :  </b> </td>
		<td> <input type="text" name="thisNetworkField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ_IP :  </b> </td>
		<td> <input type="text" name="thisDMZ_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Mgmt_IP :  </b> </td>
		<td> <input type="text" name="thisMgmt_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public_MAC :  </b> </td>
		<td> <input type="text" name="thisPublic_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ_MAC :  </b> </td>
		<td> <input type="text" name="thisDMZ_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> MGMT_MAC :  </b> </td>
		<td> <input type="text" name="thisMGMT_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Description :  </b> </td>
		<td> <input type="text" name="thisDescriptionField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> ServiceTag :  </b> </td>
		<td> <input type="text" name="thisServiceTagField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Row :  </b> </td>
		<td> <input type="text" name="thisRowField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Rack :  </b> </td>
		<td> <input type="text" name="thisRackField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Slot :  </b> </td>
		<td> <input type="text" name="thisSlotField" size="50" value="">  </td> 
	</tr>
</table>

<input type="submit" name="submitEnterMainForm" value="Submit New Record">
<input type="reset" name="resetForm" value="Clear Form">

</form>

<?php
include_once("../common/footer.php");
?>
