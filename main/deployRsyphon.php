<?php
include_once("../common/dbConnection.php");
include_once("../common/header.php");
?>
<h3>Provision</h3>
We will attempt to match on any field in the 'main' hardware table.<br> It will match entire strings or parts of your string. <br><br>
The resulting host(s) can be added to an Rsyphon or SystemImager provisioning queue.<br>
<form name="mainPowerSearchForm" method="POST" action="provisionSearch.php">
<table cellspacing="0" cellpadding="4" border="0" width="300">
<tr>
<td align=left><h3><font color=red><b>keyword:</font></h3></b></td>
<td><input type="text" name="keyword" value=""></td>
</tr>
<tr>
<td>
</td>
</tr>
</table>
<input type="submit" name="submitpowerSearchMainForm" value="Search Hardware">
<input type="reset" name="resetForm" value="Clear">
</form>

<?php
include_once("../common/footer.php");
?>
