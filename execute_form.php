<?php

function executeForm($order){
	$mail = <<<EOS
Dobr� den,

va�e ��dost o rezervaci byla p�ijata.
V nejbli��� dob� budete kontaktov�ni
pro potvrzen� rezervace a up�esn�n� detail�.

Pokud m�te jak�koliv dotaz nev�hejte n�s pros�m kontaktovat:

Email: ubytovani@dvejelita.cz
Tel.: +420 602 291 118

Detaily rezervace:
EOS;

	$mail=$mail."\nJm�no: ".$order['firstname']." ".$order['lastname']."\n";
	$mail=$mail."Od: ".$order['from']." Do: ".$order['to']."\n";
	$mail=$mail."Dosp�l�ch: ".$order['adults'].", D�t�: ".$order['childs'].", Osob ve stanech: ".$order['tents']."\n";

	$mail = $mail.<<<EOS
T��me se na V�s.
Penzion U dvou jelit.
EOS;

	$bool1=mail(trim($order['email']),"Dvejelita.cz - Potvrzen� rezervace ubytov�n�",$mail,"From: ubytovani@dvejelita.cz");
	
	$mail = <<<EOS
N�sleduj�c� osoba ��d� rezervaci ubytov�n�:

EOS;

	if (array_key_exists('breakfast',$order)) $breakfast="ano"; else $breakfast="ne";
	$mail=$mail."\nJm�no: ".$order['firstname']."\n";
	$mail=$mail."P��jmen�: ".$order['lastname']."\n";
	$mail=$mail."Telefon: ".$order['phone']."\n";
	$mail=$mail."Email: ".$order['email']."\n";
	$mail=$mail."Od: ".$order['from']."\n";
	$mail=$mail."Do: ".$order['to']."\n";
	$mail=$mail."Dosp�l�ch: ".$order['adults']."\n";
	$mail=$mail."Osob ve stanech: ".$order['tents']."\n";
	$mail=$mail."D�t�: ".$order['childs']."\n";
	$mail=$mail."Sn�dan�: ".$breakfast."\n";
	$mail=$mail."Pozn�mka: ".$order['note']."\n";
	
	$bool2=mail("ubytovani@dvejelita.cz","Dvejelita.cz - ��dost o rezervaci",$mail,"From: ubytovani@dvejelita.cz");
	
	if ($bool1&&$bool2)$bool3=true; else $bool3=false;
	return $bool3;
}

?>