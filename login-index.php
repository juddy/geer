<?PHP
require_once("./include/membersite_config.php");
include_once("common/header.php");

if(!$fgmembersite->CheckLogin())
{
    $fgmembersite->RedirectToURL("login.php");
    exit;
}

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
      <meta http-equiv='Content-Type' content='text/html; charset=utf-8'/>
      <title>geer</title>
      <link rel="STYLESHEET" type="text/css" href="style/fg_membersite.css">
      <link rel="STYLESHEET" type="text/css" href="common/style.css">
</head>
<body>

<h2>User Tools</h2>
<br><a href="change-pwd.php" class="nice radius large blue button">Change Password</a><br>
<br><a href="index.php" class="nice radius large blue button">Host Management Tools</a><br>
<br><a href="logout.php" class="nice radius large red button">Logout</a><br>
</html>
