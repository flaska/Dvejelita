<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
		<meta charset="UTF-8"/>
		<style type="text/css">
			div#main-content {
				width: 30%;
				min-width: 500px;
				margin-left: auto;
				margin-right: auto;
			}
			h1 {
				font-size:1.5em;
				text-align: center;
			}
			h2 {
				font-size:1em;
				text-align: center;
			}
			form {
				width: 60%;
				margin-left: auto;
				margin-right: auto;
				border-style: solid;
				border-width: 4px;
				padding: 10px 20px 10px 20px;
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
		</style>
	</head>
	<body>
		<div id="main-content">
			<h1>Administrátorské rozhraní stránek Dvejelita.cz</h1>
			<h2>Pro vstup je potřeba se přihlásit.</h2>
			<form action="admin.php" method="post">
				<label class="form-element">Zadejte heslo:</label>
				<input type="text" class="form-element" name="password" />
				<input id="submit" class="form-element" type="submit" value="Pokračovat" />
			</form>
		</div>
	</body>
</html>