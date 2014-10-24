<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>

<?php
function slash_notation($thisPublic_IP, $mask) {
    return $thisPublic_IP."/".strlen(preg_replace("/0/", "", decbin(ip2long($mask))));
}
?>

<?php
$thisClql_Hostname = $_REQUEST['Clql_HostnameField']
?>
<?php
$sql = "SELECT * FROM main WHERE Clql_Hostname = '$thisClql_Hostname'";
$result = MYSQL_QUERY($sql);
$numberOfRows = MYSQL_NUMROWS($result);
if ($numberOfRows==0) {
    ?>

<h3>Please manually enter VM to forcibly and destructively destroy.</h3>
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

<h1>Destroy a provisioned host</h1>
<br>

<form method="POST" action="requestDestruction.php">
    <td align="left"><h3>Attempting to destroy <?echo $thisDMZ_IP?></h3></td>
    <td> <input type="text" name="thisClql_Hostname" size="30" value="<? echo $thisClql_Hostname; ?>">  </td>
    <br><br>
    <input class="nice radius large black button" type="submit" name="submitUpdateProvisionForm" value="Destroy <? echo $thisClql_Hostname; ?>">
    <br>

</form>

<?php
include_once("../common/footer.php");
?>
