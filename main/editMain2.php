<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<h2>Edit Hardware</h2>
<form name="mainEnterForm" method="POST" action="insertNewMain.php">

<table cellspacing="2" cellpadding="2" border="0" width="800">
	<tr valign="top" height="20">
		<td align="left"> <b> Datacenter Name:  </b> </td>
		<td> <input type="text" name="thisDatacenterField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Datacenter Hostname:  </b> </td>
		<td> <input type="text" name="thisDC_HostnameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Colloquial Hostname:  </b> </td>
		<td> <input type="text" name="thisClql_HostnameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Domain Name:  </b> </td>
		<td> <input type="text" name="thisDomain_NameField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DNS CNAME:  </b> </td>
		<td> <input type="text" name="thisCNAMEField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public IP:  </b> </td>
		<td> <input type="text" name="thisPublic_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Network:  </b> </td>
		<td> <input type="text" name="thisNetworkField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ IP:  </b> </td>
		<td> <input type="text" name="thisDMZ_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Management Interface IP:  </b> </td>
		<td> <input type="text" name="thisMgmt_IPField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Public MAC:  </b> </td>
		<td> <input type="text" name="thisPublic_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> DMZ MAC:  </b> </td>
		<td> <input type="text" name="thisDMZ_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Management Interface MAC:  </b> </td>
		<td> <input type="text" name="thisMGMT_MACField" size="10" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Description:  </b> </td>
		<td> <input type="text" name="thisDescriptionField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Service or Asset Tag:  </b> </td>
		<td> <input type="text" name="thisServiceTagField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Row:  </b> </td>
		<td> <input type="text" name="thisRowField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Rack:  </b> </td>
		<td> <input type="text" name="thisRackField" size="50" value="">  </td> 
	</tr>
	<tr valign="top" height="20">
		<td align="left"> <b> Slot:  </b> </td>
		<td> <input type="text" name="thisSlotField" size="50" value="">  </td> 
	</tr>
</table>
<input class="small blue button" type="submit" name="submitUpdateMainForm" value="Update Hardware">
<input class="small red button" type="reset" name="resetForm" value="Clear Form">
</form>

<?php
include_once("../common/footer.php");
?>
