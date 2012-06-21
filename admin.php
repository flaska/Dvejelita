<?php
include './getcontent.php';
session_start();
if(!isset($_POST['password'])&&!isset($_SESSION['logged'])){
	$webpage_layout = getContent('admin-layout');
	$login_form = getContent('admin-login');
	$content = preg_replace("/<!-- CONTENT -->/", $login_form, $webpage_layout);
	echo $content;
	die();
}
if(isset($_POST['password'])&&$_POST['password']!='heslo'){
var_dump($_POST['password']);
	$error_message = "Zadali jste špatné heslo";
	$webpage_layout = getContent('admin-layout');
	$login_form = getContent('admin-login');
	$content = preg_replace("/<!-- CONTENT -->/", $login_form, $webpage_layout);
	$content = preg_replace("/<!-- ERROR_MESSAGE -->/", $error_message, $content);
	echo $content;
	die();
}
$_SESSION['logged']=true;


$name = ' ';
$pageSaved = 0;
if (isset($_POST['content'])&&isset($_POST['name'])){
	$name = $_POST['name'];
	$content = $_POST['content'];
	$query = "UPDATE content SET www='$content' WHERE tid='$name'";
	$link = mysql_connect('localhost', 'dvejelita_cz', '860128');
	mysql_set_charset('utf8',$link);
	mysql_select_db('dvejelita_cz_', $link);
	echo mysql_error();
	$result = mysql_query($query);
	echo mysql_error();
	if(mysql_errno()==0)
		$pageSaved = 1;
}else
	if(isset($_GET['name'])) $name = $_GET['name'];
else $name = 'akce';

$page_content = getContent($name);
$webpage_layout = getContent('admin-layout');
$edit_form = getContent('admin-edit');
$webpage = preg_replace("/<!-- CONTENT -->/", $edit_form, $webpage_layout);
$webpage = preg_replace("/<!-- PAGE_CONTENT -->/", $page_content, $webpage);
$webpage = preg_replace("/<!-- NAME -->/", $name, $webpage);
$webpage = preg_replace("/<!-- SAVED -->/", $pageSaved, $webpage);

echo $webpage;





