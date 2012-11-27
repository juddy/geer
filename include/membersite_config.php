<?PHP
require_once("./include/fg_membersite.php");

$fgmembersite = new FGMembersite();

//Provide your site name here
$fgmembersite->SetWebsiteName('dev.geer.openlpos.org');

//Provide the email address where you want to get notifications
$fgmembersite->SetAdminEmail('admin@localhost');

//Provide your database login details here:
//hostname, user name, password, database name and table name
//note that the script will create the table (for example, fgusers in this case)
//by itself on submitting register.php for the first time
$fgmembersite->InitDB(/*hostname*/'mysql.beta.openlpos.org',
                      /*username*/'geeruser',
                      /*password*/'DBPASS',
                      /*database name*/'$geer',
                      /*table name*/'fgusers3');

//For better security. Get a random string from this link: http://tinyurl.com/randstr
// and put it here
$fgmembersite->SetRandomKey('idMVsQPwx1oT5is');

?>
