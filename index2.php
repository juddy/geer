<?PHP
require_once("./include/membersite_config.php");
include_once("common/header.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login.php");
    exit;
}

?>
