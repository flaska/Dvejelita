<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta charset="UTF-8"/>
		<style type="text/css">
			html {
				height: 100%;
			}
			body {
				height: 100%;
				margin: 0px 0px 0px 0px;
				color: #42210B;
				font-style: italic;
			}
			div#gap-before-main-content{
				height: 150px;
				background: url('images/headerbg.png') repeat-x;
			}
			img#logo {
				margin-left: 20%;
				margin-right: auto;
			}
			div#main-content {
				width: 30%;
				min-width: 500px;
				margin-left: auto;
				margin-right: auto;
				margin-top: 50px;
			}
			h1 {
				font-size:1.5em;
				text-align: center;
				color: #42210B;
				font-style: italic;
			}
			h2 {
				font-size:1em;
				text-align: center;
				color: #42210B;
				margin-bottom: 0px;
				font-style: italic;
			}
			form {
				width: 60%;
				margin-left: auto;
				margin-right: auto;
				border-style: ridge;
				border-width: 4px;
				border-color: rgb(255,214,77);
				padding: 10px 20px 10px 20px;
				box-shadow: 3px 3px 5px 6px #ccc;
			}
			form .form-element {
				width: 50%;
				margin-left: 0px;
				margin-right: 0px;
				padding-left: 0px;
				padding-right: 0px;
				display: block;
				margin-top: 5px;
				margin-bottom: 5px;
				padding-top: 2px;
				padding-bottom: 2px;
			}
			form input {
				border: 0px;
				outline: 1px solid #006;
				background-color: #f9e25e;
				text-align: center;
			}
			form label{
				float: left;
				text-align: right;
				width: 45%!important;
				padding-right: 5%!important;
			}
			form input#submit {
				margin-left: auto;
				margin-right: 0px;	
			}
			div#bottom-fill {
				background-color: blue;
			}
			div#bottom-div {
				position:absolute;
				background-color: red;
				width: 100%;
				height: 101px;
				background: url('images/footerbg.png') repeat-x;
				bottom: 0px;
				display: block;
				margin-left: 0px;
			}
			div#error {
				text-align: center;
				color: red;
				display: block;
				height: 30px;
			}

		</style>
	</head>
	<body>
		<div id="gap-before-main-content">
			<img id="logo" src="images/logo.png"/>
		</div>
		<div id="main-content">
			<h1>Administrátorské rozhraní stránek Dvejelita.cz</h1>
			<h2>Pro vstup je potřeba se přihlásit.</h2>
			<div id="error"><!-- ERROR_MESSAGE --></div>
			<form action="admin.php" method="post">
				<label class="form-element">Zadejte heslo:</label>
				<input type="password" class="form-element" name="password" />
				<input id="submit" class="form-element" type="submit" value="Pokračovat" />
			</form>
		</div>
		<div id="bottom-div">
		</div>
	</body>
</html>