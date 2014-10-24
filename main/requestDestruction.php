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
<h1><?echo $thisClql_Hostname;?> Destroy: </h1>
<? $output = shell_exec('sh ../system/VirtTools/vmdestroy.sh ' .escapeshellarg($thisDMZ_IP));
echo "<pre>$output</pre>";
$output = shell_exec('virsh list');
echo "<pre>$output</pre>";
?>
