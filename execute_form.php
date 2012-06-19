<?php

function executeForm($order){
	$mail = <<<EOS
Dobrэ den,

vaљe ћбdost o rezervaci byla pшijata.
V nejbliћљн dobм budete kontaktovбni
pro potvrzenн rezervace a upшesnмnн detailщ.

Pokud mбte jakэkoliv dotaz nevбhejte nбs prosнm kontaktovat:

Email: ubytovani@dvejelita.cz
Tel.: +420 602 291 118

Detaily rezervace:
EOS;

	$mail=$mail."\nJmйno: ".$order['firstname']." ".$order['lastname']."\n";
	$mail=$mail."Od: ".$order['from']." Do: ".$order['to']."\n";
	$mail=$mail."Dospмlэch: ".$order['adults'].", Dмtн: ".$order['childs'].", Osob ve stanech: ".$order['tents']."\n";

	$mail = $mail.<<<EOS
Tмљнme se na Vбs.
Penzion U dvou jelit.
EOS;

	$bool1=mail(trim($order['email']),"Dvejelita.cz - Potvrzenн rezervace ubytovбnн",$mail,"From: ubytovani@dvejelita.cz");
	
	$mail = <<<EOS
Nбsledujнcн osoba ћбdб rezervaci ubytovбnн:

EOS;

	if (array_key_exists('breakfast',$order)) $breakfast="ano"; else $breakfast="ne";
	$mail=$mail."\nJmйno: ".$order['firstname']."\n";
	$mail=$mail."Pшнjmenн: ".$order['lastname']."\n";
	$mail=$mail."Telefon: ".$order['phone']."\n";
	$mail=$mail."Email: ".$order['email']."\n";
	$mail=$mail."Od: ".$order['from']."\n";
	$mail=$mail."Do: ".$order['to']."\n";
	$mail=$mail."Dospмlэch: ".$order['adults']."\n";
	$mail=$mail."Osob ve stanech: ".$order['tents']."\n";
	$mail=$mail."Dмtн: ".$order['childs']."\n";
	$mail=$mail."Snнdanм: ".$breakfast."\n";
	$mail=$mail."Poznбmka: ".$order['note']."\n";
	
	$bool2=mail("ubytovani@dvejelita.cz","Dvejelita.cz - Ћбdost o rezervaci",$mail,"From: ubytovani@dvejelita.cz");
	
	if ($bool1&&$bool2)$bool3=true; else $bool3=false;
	return $bool3;
}

?>