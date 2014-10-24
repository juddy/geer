<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<?php
// Retreiving Form Elements from Form
$thisClql_Hostname =($_POST['thisClql_Hostname']);

$sql = "SELECT * FROM main WHERE Clql_Hostname = '$thisClql_Hostname'";
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

}?>
<h1><?echo $thisClql_Hostname;?> Provisioned: </h1>
<? $output = shell_exec('sudo ../system/VirtTools/vmcreate.sh ' .escapeshellarg($thisDMZ_IP));
echo "<pre>$output</pre>";
$output = shell_exec('virsh list');
echo "<pre>$output</pre>";
?>

<table cellspacing="2" cellpadding="2" border="0" width="800" background="#858587">
	<tr valign="top" height="20">
		<td align="left"><h3> Datacenter:</h3></td>
		<td align="left">Datacenter name for this host's location. i.e., 'Rackspace'</td>
		<td> <input type="text" name="thisDatacenterField" size="10" value="<? echo $thisDatacenter; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Datacenter Hostname:</h3></td>
		<td align="left">Hostname used by the DC above in trouble tickets, etc.</td>
		<td> <input type="text" name="thisDC_HostnameField" size="70" value="<? echo $thisDC_Hostname; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Colloquial Hostname:</h3></td>
		<td align="left">Hostname used internally to reference this host</td>
		<td> <input type="text" name="thisClql_HostnameField" size="70" value="<? echo $thisClql_Hostname; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Domain Name:</h3></td>
		<td align="left">DNS Name for the an implied preferred interface</td>
		<td> <input type="text" name="thisDomain_NameField" size="70" value="<? echo $thisDomain_Name; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> DNS CNAME:</h3></td>
		<td align="left">Canonical name, per <a href="http://tools.ietf.org/html/rfc1034">RFC1034</a> used by this host</td>
		<td> <input type="text" name="thisCNAMEField" size="70" value="<? echo $thisCNAME; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Public IP:</h3></td>
		<td align="left">IP address for the publically-available services on this host</td>
		<td> <input type="text" name="thisPublic_IPField" size="70" value="<? echo $thisPublic_IP; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Public MAC Address:</h3></td>
		<td align="left">MAC address for an interface on Public net</td>
		<td> <input type="text" name="thisPublic_MACField" size="70" value="<? echo $thisPublic_MAC; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Network Subnet Mask:</h3></td>
		<td align="left">Mask for of the Public Network above</td>
		<td> <input type="text" name="thisNetworkField" size="70" value="<? echo $thisNetwork; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Network:</h3></td>
		<td align="left">Network for of the publically-available services on this host in <a href="">CIDR notation.</a></td>
		<td> <input type="text" name="thisNetworkField" size="70" value="<? echo $thisNetwork; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> DMZ IP:</h3></td>
		<td align="left">IP address for an interface in DMZ</td>
		<td> <input type="text" name="thisDMZ_IPField" size="70" value="<? echo $thisDMZ_IP; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> DMZ MAC:</h3></td>
		<td align="left">MAC address for an interface in DMZ</td>
		<td> <input type="text" name="thisDMZ_MACField" size="70" value="<? echo $thisDMZ_MAC; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Management Interface IP:</h3></td>
		<td align="left">IP address for an interface on management LAN</td>
		<td> <input type="text" name="thisMgmt_IPField" size="70" value="<? echo $thisMgmt_IP; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> MGMT MAC:</h3></td>
		<td align="left">MAC address for an interface on management LAN</td>
		<td> <input type="text" name="thisMGMT_MACField" size="70" value="<? echo $thisMGMT_MAC; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Description:</h3></td>
		<td align="left">Basic description of this host. (70 Characters)</td>
		<td> <input type="text" name="thisDescriptionField" size="70" value="<? echo $thisDescription; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Service or Asset Tag:</h3></td>
		<td align="left">Asset or Service tag for <?=$thisClql_Hostname?>. (10 Characters)</td>
		<td> <input type="text" name="thisServiceTagField" size="10" value="<? echo $thisServiceTag; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Row:</h3></td>
		<td align="left">Cabinet row at <? echo $thisDatacenter ?> for <? echo $thisClql_Hostname; ?></td>
		<td> <input type="text" name="thisRowField" size="70" value="<? echo $thisRow; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3> Rack:</h3></td>
		<td align="left">Rack unit in row <? echo $thisRow ?> for <? echo $thisClql_Hostname; ?></td>
		<td> <input type="text" name="thisRackField" size="70" value="<? echo $thisRack; ?>">  </td>
	</tr>
	<tr valign="top" height="20">
		<td align="left"><h3>Blade or Rack Slot:</h3></td>
		<td align="left">Rack <? echo $thisRack ?> Row <? echo $thisRow; ?> Slot:</td>
		<td> <input type="text" name="thisSlotField" size="70" value="<? echo $thisSlot; ?>">  </td>
	</tr>
</table>

