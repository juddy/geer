<? include_once("common/header.php");
require_once("./include/membersite_config.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login.php");
    exit;
} ?> 
<table cellspacing=10 cellpadding=9>
	<tr>
		<td>
			<? include_once("./index/indexMain.inc.php"); ?>
		</td>
	</tr>
</table>
