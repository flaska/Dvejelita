-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 19, 2012 at 08:11 PM
-- Server version: 5.5.25
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dvejelita_cz_`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `tid` char(20) COLLATE utf8_czech_ci DEFAULT NULL,
  `www` text COLLATE utf8_czech_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`tid`, `www`) VALUES
('confirm', '<h1>Děkujeme.</h1>\r\n<h3>Vaše rezervace byla přijata.</h3>\r\nNa vaši emailovou adresu bylo odesláno potvrzení o rezervaci. <br>\r\nV nejbližší době budete kontaktováni pro dokončení rezervace.'),
('mailerror', '<h2>Omlouváme se, ale objednávku nebylo možné zpracovat.</h2>\r\n<p class="home">\r\nZadali jste správně svojí e-mailovou adresu?<br>\r\nPokud ano, omlouváme se a žádáme vás o telefonickou rezervaci.<br>\r\n</p>'),
('kontakt', '<script type="text/javascript">\r\n	function validateForm()\r\n{\r\nvar x=document.forms["order"]["email"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím e-mail.");\r\n  return false;\r\n  }\r\nvar x=document.forms["order"]["from"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím dobu pobytu.");\r\n  return false;\r\n  }\r\n var x=document.forms["order"]["to"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím dobu pobytu");\r\n  return false;\r\n  }\r\nvar x=document.forms["order"]["adults"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím počet osob.");\r\n  return false;\r\n  }\r\nvar x=document.forms["order"]["phone"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím telefon.");\r\n  return false;\r\n  }\r\nvar x=document.forms["order"]["lastname"].value\r\nif (x==null || x=="")\r\n  {\r\n  alert("Vyplňte prosím vaše jméno.");\r\n  return false;\r\n  }\r\n}\r\n\r\n		$(function() {\r\n			$(".date").datepicker({\r\n				dateFormat: ''dd. mm. yy'',\r\n				monthNames: [''Leden'',''Únor'',''Březen'',''Duben'',''Květen'',''Červen'',''Červenec'',''Srpen'',''Září'',''Říjen'',''Listopad'',''Prosinec''],\r\n				dayNamesMin: [''Ne'', ''Po'', ''Út'', ''St'', ''Čt'', ''Pá'', ''So''],\r\n				nextText: ''Další'',\r\n				prevText: ''Předchozí'',\r\n				firstDay: 1\r\n			});\r\n		});\r\n</script>\r\n\r\n\r\n<div id="contact">\r\n<div id="contactLeft">\r\n<h1>Kontakt</h1>\r\n<h2>Penzion U dvou jelit</h2>\r\n<p>\r\nKameničky 115<br>\r\n539 41 Hlinsko\r\n</p>\r\n<p>\r\nTel.: +420 602 291 118<br>\r\nE-mail: ubytovani@dvejelita.cz<br>\r\nGPS: 49.7387, 15.9753\r\n</p>\r\n<h3>Ceny:</h3>\r\n<p>\r\nDospělí: 200Kč/noc<br>\r\nDěti do 12ti let: 100Kč/noc<br>\r\nStanování: 50Kč na osobu za noc\r\n</p>\r\n</div>\r\n\r\n\r\n\r\n<div id="contactRight">\r\n<iframe width="375" height="290" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?f=q&amp;source=s_q&amp;hl=cs&amp;geocode=&amp;q=GPS:+49.7387,+15.9753&amp;aq=&amp;sll=49.738779,15.976428&amp;sspn=0.004722,0.008143&amp;brcurrent=5,0,0&amp;ie=UTF8&amp;ll=49.738779,15.976428&amp;spn=0.004722,0.010042&amp;t=h&amp;z=14&amp;output=embed"></iframe><br /><small><a href="http://maps.google.cz/maps?f=q&amp;source=embed&amp;hl=cs&amp;geocode=&amp;q=GPS:+49.7387,+15.9753&amp;aq=&amp;sll=49.738779,15.976428&amp;sspn=0.004722,0.008143&amp;brcurrent=5,0,0&amp;ie=UTF8&amp;ll=49.738779,15.976428&amp;spn=0.004722,0.010042&amp;t=h&amp;z=14" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>\r\n</div>\r\n\r\n<div id="contactBottom">\r\n<h2>Objednejte si ubytování online!</h2>\r\nVyužijte následujícího formuláře pro rezervaci ubytování online.<br>\r\n\r\n<form name="order" action="./index.php?page=confirm" method="post" onsubmit="return validateForm()" >\r\n\r\n<fieldset id="name">\r\n<label class="left" for="firstname">Jméno:</label> <input type="text" name="firstname" /><br>\r\n<label class="left" for="lastname">Příjmení:</label> <input type="text" name="lastname" /><br>\r\n<label class="left" for="phone">Telefon:</label> <input type="text" name="phone" /><br>\r\n<label class="left" for="email">E-mail:</label> <input type="text" name="email" />\r\n</fieldset>\r\n\r\n<fieldset id="length">\r\n<label class="right" for="from">Od:</label> <input class="date" type="text" name="from" /><br>\r\n<label class="right" for="to">Do:</label> <input class="date" type="text" name="to" /><br>\r\n<label class="right" for="adults">Počet dospělých:</label> <input class="short" type="text" name="adults" /><br>\r\n<label class="right" for="childs">Počet dětí:</label> <input class="short" type="text" name="childs" /><br>\r\n<label class="right" for="childs">Osob ve stanech:</label> <input class="short" type="text" name="tents" /><br>\r\n<label class="right" for="breakfast">Snídaně:</label> <input type="checkbox" name="breakfast"/><br>\r\n</fieldset>\r\n<fieldset id="note">\r\n<label for="note">Vzkaz:</label><br> <textarea name="note" rows="7" cols="60"></textarea><br>\r\nK ceně bude na místě připočítán lázeňský a rekreační poplatek.<br>\r\n<!-- Cena celkem: <span id="price"></span> Kč <br> -->\r\n<input class="submit" type="submit" value="Odeslat"/>\r\n</fieldset>\r\n</form>\r\n</div>\r\n\r\n</div>'),
('foto', '<h1> Fotogalerie </h1>\r\n<div style="margin-top:10px">\r\n<div class="foto"> <a href="./foto/foto01.jpg" rel="colorbox"> <img class="foto" src="./foto/foto01_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto02.jpg" rel="colorbox"> <img class="foto" src="./foto/foto02_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto03.jpg" rel="colorbox"> <img class="foto" src="./foto/foto03_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto04.jpg" rel="colorbox"> <img class="foto" src="./foto/foto04_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto05.jpg" rel="colorbox"> <img class="foto" src="./foto/foto05_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto06.jpg" rel="colorbox"> <img class="foto" src="./foto/foto06_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto07.jpg" rel="colorbox"> <img class="foto" src="./foto/foto07_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto08.jpg" rel="colorbox"> <img class="foto" src="./foto/foto08_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto09.jpg" rel="colorbox"> <img class="foto" src="./foto/foto09_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto10.jpg" rel="colorbox"> <img class="foto" src="./foto/foto10_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto11.jpg" rel="colorbox"> <img class="foto" src="./foto/foto11_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto12.jpg" rel="colorbox"> <img class="foto" src="./foto/foto12_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto13.jpg" rel="colorbox"> <img class="foto" src="./foto/foto13_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto14.jpg" rel="colorbox"> <img class="foto" src="./foto/foto14_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto15.jpg" rel="colorbox"> <img class="foto" src="./foto/foto15_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto16.jpg" rel="colorbox"> <img class="foto" src="./foto/foto16_small.jpg" /> </a> </div>\r\n<div class="foto"> <a href="./foto/foto17.jpg" rel="colorbox"> <img class="foto" src="./foto/foto17_small.jpg" /> </a> </div>\r\n</div>'),
('tipy', '<div id="tipyLeft">\r\n	<p id="reservation">\r\n		<a class="submit-reserve" href="./index.php?page=kontakt#contactBottom"><span>REZERVUJTE</span>si ubytov&aacute;n&iacute; je&scaron;tě dnes</a></p>\r\n	<h1>\r\n		Tipy v okol&iacute;</h1>\r\n	<p>\r\n		Rodinn&yacute; penzion U dvou jelit se nach&aacute;z&iacute; v turistick&eacute;m mikroregionu Hlinsko. O tomto kraji se ř&iacute;k&aacute;valo, že zde &quot;končil chleba a zač&iacute;nalo kamen&iacute;&quot;, to ale dnes již neplat&iacute; a tak můžete na Hlinecku obdivovat n&aacute;dhernou čistou př&iacute;rodu a malebnou lidovou architekturu. Ne nadarmo si kraj obl&iacute;bilo tolik spisovatelů a mal&iacute;řů. Jmenujme alespoň spisovatele Karla V&aacute;clava Raise a mal&iacute;ře Anton&iacute;na Slav&iacute;čka, kteř&iacute; pob&yacute;vali př&iacute;mo v na&scaron;&iacute; obci Kameničky. Věř&iacute;me, že stejně jako jim, i v&aacute;m se bude v na&scaron;em kraji l&iacute;bit a odvezete si z něj tak&eacute; mnoho inspirace.</p>\r\n	<h2>\r\n		Sport</h2>\r\n	<h3>\r\n		Cyklistika</h3>\r\n	<p>\r\n		Množstv&iacute; cyklistick&yacute;ch tras v okol&iacute; poskytne zadostiučiněn&iacute; v&scaron;em v&aacute;&scaron;niv&yacute;m cyklistům. Hlinecko prot&iacute;n&aacute; několik celost&aacute;tn&iacute;ch i mezin&aacute;rodn&iacute;ch cyklostezek. Za zm&iacute;nku stoj&iacute; Pražsk&aacute; trasa, kter&aacute; vede z Brna do Prahy. Nebo Santiniho cyklotrasa, na kter&eacute; si můžete prohl&eacute;dnout d&iacute;la tohoto v&yacute;znamn&eacute;ho česk&eacute;ho barokn&iacute;ho architekta. Stejně tak i hust&aacute; s&iacute;ť lesn&iacute;ch cest v&aacute;m poskytne dostatek tras pro klidn&eacute; v&yacute;lety s dětmi a kamar&aacute;dy za zaj&iacute;mav&yacute;mi c&iacute;ly v okol&iacute;.</p>\r\n	<h3>\r\n		Sjezdov&aacute;n&iacute;</h3>\r\n	<p>\r\n		V zimě se z penzionu U dvou jelit snadno dostanete na b&iacute;l&eacute; svahy, kde si můžete už&iacute;t zimn&iacute;ho sjezdov&aacute;n&iacute;.<br />\r\n		V bl&iacute;zkosti Kameniček je hned několik sjezdovek, za zm&iacute;nku stoj&iacute; tyto tři are&aacute;ly vět&scaron;&iacute;ho rozsahu:</p>\r\n	<ul>\r\n		<li>\r\n			Hlinsko - <a href="http://www.hlinecko.cz/ski" target="_blank">http://www.hlinecko.cz/ski</a></li>\r\n		<li>\r\n			Svratka - <a href="http://www.skiareal-svratka.cz/" target="_blank">http://www.skiareal-svratka.cz/</a></li>\r\n		<li>\r\n			Hlubok&aacute; -<a href="http://www.skihluboka.cz/" target="_blank">http://www.skihluboka.cz/</a></li>\r\n	</ul>\r\n	<h3>\r\n		Běžkov&aacute;n&iacute;</h3>\r\n	<p>\r\n		Na chuť si u n&aacute;s přijdou i běžkaři, na Hlinecku najdou mnoho pravidelně upravovan&yacute;ch běžeck&yacute;ch tras po kter&yacute;ch se dostanou od Hlinska až po Svratku.</p>\r\n	<h3>\r\n		Tenis</h3>\r\n	<p>\r\n		Př&iacute;znivci tenisu maj&iacute; př&iacute;mo v Kameničce možnost pronajmout si tenisov&yacute; kurt vzd&aacute;len&yacute; 100m od na&scaron;eho penzionu.</p>\r\n	<h3>\r\n		Baz&eacute;n</h3>\r\n	<p>\r\n		Pro o&scaron;kliv&eacute; dny a pl&iacute;skanice, kdy se ned&aacute; vyj&iacute;t ven do př&iacute;rody jistě potě&scaron;&iacute; možnost si zaplavat v baz&eacute;nu v Hlinsku. Jedn&aacute; se o nov&yacute; 25 metrov&yacute; baz&eacute;n se saunou, posilovnou a squashem.</p>\r\n	<a href="http://www.hlinsko.cz/mesto/sport/bazen" target="_blank">http://www.hlinsko.cz/mesto/sport/bazen</a>\r\n	<h3>\r\n		Koně</h3>\r\n	<p>\r\n		Zaj&iacute;mav&yacute;m zpestřen&iacute;m pobytu na Hlinecku může b&yacute;t proj&iacute;žďka na kon&iacute;ch v nedalek&yacute;ch Svobodn&yacute;ch Hamrech (4 Km). &Scaron;irok&aacute; nab&iacute;dka služeb st&aacute;je Victory m&aacute; co nab&iacute;dnout zač&aacute;tečn&iacute;kům, pokročil&yacute;m a dokonce i mal&yacute;m dětem.</p>\r\n	<a href="http://www.stajvictory.ic.cz/" target="_blank">http://www.stajvictory.ic.cz/</a>\r\n	<h3>\r\n		Golfov&eacute; hři&scaron;tě</h3>\r\n	<p>\r\n		Milovn&iacute;ky golfu jistě potě&scaron;&iacute; dev&iacute;tijamkov&eacute; hři&scaron;tě ve Svratce vzd&aacute;len&eacute; z Kameniček 6 Km.</p>\r\n	<a href="http://www.gcsvr1932.cz/" target="_blank">http://www.gcsvr1932.cz/</a>\r\n	<h2>\r\n		Turistick&eacute; c&iacute;le:</h2>\r\n	<h3>\r\n		Skanzen Vesel&yacute; kopec</h3>\r\n	<p>\r\n		Pokud se chcete pokochat řemesln&yacute;m a stavebn&iacute;m uměn&iacute;m na&scaron;ich předků, rozhodně nesm&iacute;te vynechat skanzen Vesel&yacute; kopec. Z původn&iacute;ch p&aacute;r chalup na stejnojmenn&eacute;m kopci se skanzen d&iacute;ky nad&scaron;en&yacute;m dobrovoln&iacute;kům rozrostl na &uacute;ctyhodn&yacute;ch třicet chalup svezen&yacute;ch z okol&iacute;. Působiv&aacute; prohl&iacute;dka zaujme nejen děti ale i jejich zv&iacute;dav&eacute; rodiče.</p>\r\n	<a href="http://vesely-kopec.cz/" target="_blank">http://vesely-kopec.cz/</a>\r\n	<h3>\r\n		Rozhledna Zubř&iacute;</h3>\r\n	<p>\r\n		Potě&scaron;it sv&eacute; oko pohledem do d&aacute;li můžete po pěkn&eacute;m v&yacute;stupu z Trhov&eacute; Kamenice z rozhledny na Zubř&iacute;m vrchu.</p>\r\n	<a href="http://www.trhovakamenice.cz/clanek-4" target="_blank">http://www.trhovakamenice.cz/clanek-4</a>\r\n	<h3>\r\n		Z&aacute;mek Slatiňany</h3>\r\n	<p>\r\n		Za n&aacute;v&scaron;těvu stoj&iacute; z&aacute;mek ve Slatiňanech. V kr&aacute;sn&eacute;m a udržovan&eacute;m are&aacute;lu slatiňansk&eacute;ho z&aacute;mku můžete obdivovat hřebč&iacute;n, rozlehl&yacute; anglick&yacute; park, rekreačn&iacute; lesy s množstv&iacute;m sportovi&scaron;ť, oboru s jeleny a muflony, tře&scaron;ňovou alej a nedaleko tak&eacute; alej jedl&yacute;ch ka&scaron;tanů.</p>\r\n	<a href="http://www.zamek-slatinany.cz/" target="_blank">http://www.zamek-slatinany.cz/</a>\r\n	<h3>\r\n		Děvět skal</h3>\r\n	<p>\r\n		Horolezci si přijdou na sv&eacute; na kr&aacute;sn&yacute;ch věžovit&yacute;ch skal&aacute;ch tyč&iacute;c&iacute;ch se na hřebeni nad Svratkou. Z dev&iacute;ti vrcholů je n&aacute;dhern&yacute; v&yacute;hled do kraje a sv&yacute;m rozsahem stoj&iacute; i za v&iacute;cedenn&iacute; n&aacute;v&scaron;těvu.</p>\r\n	<a href="http://skaly.horosvaz.cz/4_db_index.asp?region_id=18" target="_blank">http://skaly.horosvaz.cz/4_db_index.asp?region_id=18</a></div>\r\n<div id="tipyRight">\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/01.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/02.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/03.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/04.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/05.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/06.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/07.jpg" /></div>\r\n	<div class="tipyImage">\r\n		<img class="tipyImage" src="/tipy/08.jpg" /></div>\r\n</div>\r\n\r\n\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
('uvod', '<p id="reservation">\r\n	<a class="submit-reserve" href="./index.php?page=kontakt#contactBottom"><span>REZERVUJTE</span>si ubytov&aacute;n&iacute; je&scaron;tě dnes</a></p>\r\n<h1>\r\n	V&iacute;tejte v rodinn&eacute;m penzionu U dvou jelit</h1>\r\n<div id="homerotator">\r\n	<img src="http://www.dvejelita.cz/images/home-banner.png" /></div>\r\n<p class="home">\r\n	N&aacute;&scaron; rodinn&yacute; penzion lež&iacute; v malebn&eacute; vesničce Kameničky, napůl cesty mezi Hlinskem a Svratkou. Svou polohou, na rozmez&iacute; Železn&yacute;ch hor a Žď&aacute;rsk&yacute;ch vrchů v&aacute;m bude ide&aacute;ln&iacute; z&aacute;kladnou pro v&yacute;lety do n&aacute;dhern&eacute; př&iacute;rody v okol&iacute;.</p>\r\n<p class="home">\r\n	Můžete k n&aacute;m přijet s rodinou, př&aacute;teli nebo firmou. Jsme připraveni v&aacute;s ubytovat včetně kol, zv&iacute;řec&iacute;ch mil&aacute;čků i aut, kter&aacute; mohou parkovat př&iacute;mo před penzionem.</p>\r\n<p class="home">\r\n	V současn&eacute; době u n&aacute;s můžete posn&iacute;dat, naobědvat se, povečeřet v na&scaron;&iacute; restauraci, kter&aacute; je otevřena po-čt 11-22 hod, p&aacute; 11-23 hod, so 10:30-23 hod a neděle od 10:30-22 hodin. Kuchyně funguje do 21 hodin, při grilov&aacute;n&iacute; i do 22 hodin. Kuchyně je ve stylu dom&aacute;c&iacute; kuchyně a resp. se zaměřujeme na česk&aacute; tradičn&iacute; j&iacute;dla.</p>\r\n<p class="home">\r\n	V penzionu U dvou jelit může složit hlavu až 19 n&aacute;v&scaron;těvn&iacute;ků a dal&scaron;&iacute; mohou stanovat na zahradě.</p>\r\n<p>\r\n	Tě&scaron;&iacute;me se na va&scaron;i n&aacute;v&scaron;těvu, neboť penzion U dvou jelit je v&aacute;m vždy k dispozici!</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n'),
('akce', '18.6. Tanec s Vlky!<br>\r\n30.6. Kubova rozlucka!'),
('admin-login', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html>\r\n	<head>\r\n		<meta charset="UTF-8"/>\r\n		<style type="text/css">\r\n			html {\r\n				height: 100%;\r\n			}\r\n			body {\r\n				height: 100%;\r\n				margin: 0px 0px 0px 0px;\r\n				color: #42210B;\r\n				font-style: italic;\r\n			}\r\n			div#gap-before-main-content{\r\n				height: 150px;\r\n				background: url(''images/headerbg.png'') repeat-x;\r\n			}\r\n			img#logo {\r\n				margin-left: 20%;\r\n				margin-right: auto;\r\n			}\r\n			div#main-content {\r\n				width: 30%;\r\n				min-width: 500px;\r\n				margin-left: auto;\r\n				margin-right: auto;\r\n				margin-top: 50px;\r\n			}\r\n			h1 {\r\n				font-size:1.5em;\r\n				text-align: center;\r\n				color: #42210B;\r\n				font-style: italic;\r\n			}\r\n			h2 {\r\n				font-size:1em;\r\n				text-align: center;\r\n				color: #42210B;\r\n				margin-bottom: 0px;\r\n				font-style: italic;\r\n			}\r\n			form {\r\n				width: 60%;\r\n				margin-left: auto;\r\n				margin-right: auto;\r\n				border-style: ridge;\r\n				border-width: 4px;\r\n				border-color: rgb(255,214,77);\r\n				padding: 10px 20px 10px 20px;\r\n				box-shadow: 3px 3px 5px 6px #ccc;\r\n			}\r\n			form .form-element {\r\n				width: 50%;\r\n				margin-left: 0px;\r\n				margin-right: 0px;\r\n				padding-left: 0px;\r\n				padding-right: 0px;\r\n				display: block;\r\n				margin-top: 5px;\r\n				margin-bottom: 5px;\r\n				padding-top: 2px;\r\n				padding-bottom: 2px;\r\n			}\r\n			form input {\r\n				border: 0px;\r\n				outline: 1px solid #006;\r\n				background-color: #f9e25e;\r\n				text-align: center;\r\n			}\r\n			form label{\r\n				float: left;\r\n				text-align: right;\r\n				width: 45%!important;\r\n				padding-right: 5%!important;\r\n			}\r\n			form input#submit {\r\n				margin-left: auto;\r\n				margin-right: 0px;	\r\n			}\r\n			div#bottom-fill {\r\n				background-color: blue;\r\n			}\r\n			div#bottom-div {\r\n				position:absolute;\r\n				background-color: red;\r\n				width: 100%;\r\n				height: 101px;\r\n				background: url(''images/footerbg.png'') repeat-x;\r\n				bottom: 0px;\r\n				display: block;\r\n				margin-left: 0px;\r\n			}\r\n			div#error {\r\n				text-align: center;\r\n				color: red;\r\n				display: block;\r\n				height: 30px;\r\n			}\r\n\r\n		</style>\r\n	</head>\r\n	<body>\r\n		<div id="gap-before-main-content">\r\n			<img id="logo" src="images/logo.png"/>\r\n		</div>\r\n		<div id="main-content">\r\n			<h1>Administrátorské rozhraní stránek Dvejelita.cz</h1>\r\n			<h2>Pro vstup je potřeba se přihlásit.</h2>\r\n			<div id="error"><!-- ERROR_MESSAGE --></div>\r\n			<form action="admin.php" method="post">\r\n				<label class="form-element">Zadejte heslo:</label>\r\n				<input type="password" class="form-element" name="password" />\r\n				<input id="submit" class="form-element" type="submit" value="Pokračovat" />\r\n			</form>\r\n		</div>\r\n		<div id="bottom-div">\r\n		</div>\r\n	</body>\r\n</html>');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
