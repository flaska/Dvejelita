<?php

$link = mysql_connect('localhost', 'dvejelita_cz', '860128');
mysql_set_charset('utf8',$link);
mysql_select_db('dvejelita_cz_', $link);
echo mysql_error();
$query = "SELECT www FROM content WHERE tid='admin-login'";
$result = mysql_query($query);
$row = mysql_fetch_object($result);
$login = $row->www;	
mysql_close($link);


session_start();

if(!isset($_POST['password'])&&!isset($_SESSION['logged'])){
	echo $login;
	die();
}

if(isset($_POST['password'])&&$_POST['password']!='heslo'){
	echo 'Špatné heslo<br>';
	echo $login;
	die();
}

echo 'succesfully logged';


