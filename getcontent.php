<?php
function getContent($page){
	$pages = array('uvod' => 1, 'akce' => 1, 'foto' => 1, 'tipy' => 1, 'kontakt' => 1, 'confirm' => 1, 'mailerror' => 1, 'admin-layout'=>1, 'admin-login' => 1, 'admin-edit'=>1);
	if (!array_key_exists($page, $pages)) {
		$page = 'uvod';
	}
	$link = mysql_connect('localhost', 'dvejelita_cz', '860128');
	mysql_set_charset('utf8',$link);
	mysql_select_db('dvejelita_cz_', $link);
	echo mysql_error();
	$query = "SELECT www FROM content WHERE tid='$page'";
	$result = mysql_query($query);
	$row = mysql_fetch_object($result);	
	mysql_close($link);
	return $row->www;
}
?>