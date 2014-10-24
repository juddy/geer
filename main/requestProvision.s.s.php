<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<?php
// Retreiving Form Elements from Form
$thisClql_Hostname =($_POST['thisClql_Hostname']);
$output = shell_exec('si_mkclientnetboot --clients $thisClql_Hostname');
echo "<pre>$output</pre>";
?>
<? echo $thisClql_Hostname; ?> has been queued for provisioning.<br><br>

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
        <td align="right"><b>Clql_Hostname : </b></td>
        <td><? echo $thisClql_Hostname; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Domain_Name : </b></td>
        <td><? echo $thisDomain_Name; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>CNAME : </b></td>
        <td><? echo $thisCNAME; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Public_IP : </b></td>
        <td><? echo $thisPublic_IP; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Network : </b></td>
        <td><? echo $thisNetwork; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>DMZ_IP : </b></td>
        <td><? echo $thisDMZ_IP; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Mgmt_IP : </b></td>
        <td><? echo $thisMgmt_IP; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Public_MAC : </b></td>
        <td><? echo $thisPublic_MAC; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>DMZ_MAC : </b></td>
        <td><? echo $thisDMZ_MAC; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>MGMT_MAC : </b></td>
        <td><? echo $thisMGMT_MAC; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>Description : </b></td>
        <td><? echo $thisDescription; ?></td>
    </tr>
    <tr height="30">
        <td align="right"><b>ServiceTag : </b></td>
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

<br>
