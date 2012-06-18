<?php
	if(!isset($_GET["page"])) $page="uvod";
	else $page = $_GET["page"];	
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cs" lang="cs"> 
<head>
	
	<title>Penzion - U dvou jelit</title>
	
	<meta name="keywords" content="penzion kameničky ubytování" >
	
	<meta charset="UTF-8" />
	
	<link rel="shortcut icon" href="favicon.ico" /> 
	<link rel="icon" type="image/x-icon" href="favicon.png" />
	<link rel="stylesheet" href="style.css" media="all" />
	
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
	
	<?php if ($page=="foto") { ?>
	<script type="text/javascript" src="./js/colorbox.js"> </script>
	<script type="text/javascript">
	$(function() {
		$("a[rel='colorbox']").colorbox();
	});
	</script>
	<link media="screen" rel="stylesheet" href="./colorbox.css" />
	<?php } ?>
	
	<?php if ($page=="kontakt") { ?>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
	<script type="text/javascript">

	</script>
<script type="text/javascript">
function computePrice(){
	var price;
	var adults=parseInt($("#adults").val());
	var childs=parseInt($("#childs").val());
	var tents=parseInt($("#tents").val());
	var from=$("#from").val();
	var to=$("#to").val();
	price=adults*200+childs*100+tents*50;
	alert(from);
}

$(document).ready(function() {
	$("input[type='text']").change( function() {
	 computePrice();
	});
});

</script>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.13/themes/base/jquery-ui.css" type="text/css" media="all" /> 
<link rel="stylesheet" href="http://static.jquery.com/ui/css/demo-docs-theme/ui.theme.css" type="text/css" media="all" /> 
	<?php } ?>
	
    <!--[if IE 6]>
    <script type="text/javascript" src="js/iepngfix_tilebg.js"></script>
    <![endif]--> 

</head>
<body>
<div id="page">
	<div id="header">
    	<a id="logo" href="/"></a>
        <ul>
        	<li><a href="./index.php?page=uvod" <?php if ($page=="uvod") { ?> class="selected" <?php } ?>><em><b>Úvod</b></em></a></li>
	        <li><a href="./index.php?page=foto" <?php if ($page=="foto") { ?> class="selected" <?php } ?>><em><b>Fotogalerie</b></em></a></li>
	        <li><a href="./index.php?page=tipy" <?php if ($page=="tipy") { ?> class="selected" <?php } ?>><em><b>Tipy v okolí</b></em></a></li>
	        <li><a href="./index.php?page=kontakt" <?php if ($page=="kontakt") { ?> class="selected" <?php } ?>><em><b>Kontakt</b></em></a></li>
	</ul>            
    </div>

   	<div id="content">
<?php

if($page!="confirm") {
	getContent($page);
}else {
	if(executeForm()){
		getContent("confirm");
	} else getContent("mailerror");

}


?>
    </div>

</div>
<div id="push"></div>
	<div id="footer">
        <div id="footer-cont">
        	<div class="footer-title">Penzion U dvou jelit</div>
        	<div class="footer-text">
            <p><span>Kameničky 115</span> Tel.: +420 602 291 118</p>
			<p><span>539 41 Hlinsko</span> E-mail: ubytovani@dvejelita.cz</p>
			</div>            
        </div>  
    </div>  
    
</body>
</html>

<?php
function getContent($page){
	$link = mysql_connect('localhost', 'dvejelita_cz', '860128');
	mysql_set_charset('utf8',$link);
	mysql_select_db('dvejelita_cz_', $link);
	echo mysql_error();
	$query = "SELECT www FROM content WHERE tid='$page'";
	$result = mysql_query($query);
	$row = mysql_fetch_object($result);
	echo $row->www;	
	mysql_close($link);
}
function executeForm(){
	$mail = <<<EOS
Dobrý den,

vaše žádost o rezervaci byla přijata.
V nejbližší době budete kontaktováni
pro potvrzení rezervace a upřesnění detailů.

Pokud máte jakýkoliv dotaz neváhejte nás prosím kontaktovat:

Email: ubytovani@dvejelita.cz
Tel.: +420 602 291 118

Detaily rezervace:
EOS;

	$mail=$mail."\nJméno: ".$_POST['firstname']." ".$_POST['lastname']."\n";
	$mail=$mail."Od: ".$_POST['from']." Do: ".$_POST['to']."\n";
	$mail=$mail."Dospělých: ".$_POST['adults'].", Dětí: ".$_POST['childs'].", Osob ve stanech: ".$_POST['tents']."\n";

	$mail = $mail.<<<EOS
Těšíme se na Vás.
Penzion U dvou jelit.
EOS;
	//mail($_POST['email'],"Dvejelita.cz - Potvrzení rezervace ubytování",$mail);
	$bool1=mail(trim($_POST['email']),"Dvejelita.cz - Potvrzení rezervace ubytování",$mail,"From: ubytovani@dvejelita.cz");
	
	$mail = <<<EOS
Následující osoba žádá rezervaci ubytování:

EOS;
	if ($_POST['breakfast']=="on") $breakfast="ano"; else $breakfast="ne";
	$mail=$mail."\nJméno: ".$_POST['firstname']."\n";
	$mail=$mail."Příjmení: ".$_POST['lastname']."\n";
	$mail=$mail."Telefon: ".$_POST['phone']."\n";
	$mail=$mail."Email: ".$_POST['email']."\n";
	$mail=$mail."Od: ".$_POST['from']."\n";
	$mail=$mail."Do: ".$_POST['to']."\n";
	$mail=$mail."Dospělých: ".$_POST['adults']."\n";
	$mail=$mail."Osob ve stanech: ".$_POST['tents']."\n";
	$mail=$mail."Dětí: ".$_POST['childs']."\n";
	$mail=$mail."Snídaně: ".$breakfast."\n";
	$mail=$mail."Poznámka: ".$_POST['note']."\n";
	
	$bool2=mail("ubytovani@dvejelita.cz","Dvejelita.cz - Žádost o rezervaci",$mail,"From: ubytovani@dvejelita.cz");
	
	if ($bool1&&$bool2)$bool3=true; else $bool3=false;
	return $bool3;
}
?>