

	
    

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Copyright (c) 2003-2011, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or http://ckeditor.com/license
-->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Administrace DVEJELITA.CZ</title>
	<meta content="text/html; charset=utf-8" http-equiv="content-type" />
	<script type="text/javascript" src="ckeditor/ckeditor.js"></script>
	<!-- link href="../style.css" rel="stylesheet" type="text/css" /-->
	<style type="text/css">
html, body{font-family: Georgia, arial; background: url('../images/headerbg.png') repeat-x; margin:0; padding:0; text-align:center; font-size: 100%; height: 100%; color: #000000;}
span{margin-left:auto; margin-right:auto;}
	</style>
</head>
<body>

	<h1 class="samples">
		Administrace dvejelita.cz
	</h1>
	

<?php
session_start();
if($_GET[logout] == "1"){session_destroy();}
if($_POST[pass] == "penzion"){session_register("userid_admin", 'loged'); $_SESSION[userid_admin]='loged';}
if($_SESSION[userid_admin]!="loged"){
?>


<form action="/admin/" method="post">
Heslo do administrace: <input type="password" name="pass" /><input type="submit" value="Prihlasit se" />
</form>
    
    

<?php
	die();
	}else{echo '<a href="?logout=1">odhlasit se</a>';}

	$link = mysql_connect('localhost', 'dvejelita_cz', '860128');
	mysql_set_charset('utf8',$link);
	mysql_select_db('dvejelita_cz_', $link);


	echo mysql_error();
	
	if($_POST[tid] and $_POST[editor1]){
	echo 'ulozeno.<br />';
	$query_update = "
	UPDATE  content
	SET www = '$_POST[editor1]'
	WHERE tid='$_POST[tid]'
	";
	mysql_query($query_update);
	
	}
	
	$query = "SELECT www FROM content WHERE tid='$_POST[tid]'";
	$result = mysql_query($query);
	$row = mysql_fetch_object($result);

?>


    <form action="/admin/" method="post">
		<select name="tid" onchange="this.form.submit();">
				<option value="">vyberte</option>
            	<option >uvod</option>
            	<option >tipy</option>
        </select>
	</form>
    <?php if($_POST[tid]){ ?>
	<form action="#" method="post" style="margin-top: 100px;">
		<!-- p -->
        <input type="hidden" name="tid" value="<?php echo $_POST[tid]; ?>" />
			
			<textarea cols="80" id="editor1" name="editor1" rows="150">
            	<?php
                
				echo $row->www;	
				mysql_close($link);
	
				?></textarea>
			<script type="text/javascript">

			//<![CDATA[

				CKEDITOR.replace( 'editor1',
					{
						/*
						 * Style sheet for the contents
						 */
						 
						contentsCss : 'ckeditor/contents.css',
						height: '500px',

width: '800px',

						/*
						 * Core styles.
						 */
						coreStyles_bold	: { element : 'span', attributes : {'class': 'Bold'} },
						coreStyles_italic	: { element : 'span', attributes : {'class': 'Italic'}},
						coreStyles_underline	: { element : 'span', attributes : {'class': 'Underline'}},
						coreStyles_strike	: { element : 'span', attributes : {'class': 'StrikeThrough'}, overrides : 'strike' },

						coreStyles_subscript : { element : 'span', attributes : {'class': 'Subscript'}, overrides : 'sub' },
						coreStyles_superscript : { element : 'span', attributes : {'class': 'Superscript'}, overrides : 'sup' },

						/*
						 * Font face
						 */
						// List of fonts available in the toolbar combo. Each font definition is
						// separated by a semi-colon (;). We are using class names here, so each font
						// is defined by {Combo Label}/{Class Name}.
						font_names : 'Comic Sans MS/FontComic;Courier New/FontCourier;Times New Roman/FontTimes',

						// Define the way font elements will be applied to the document. The "span"
						// element will be used. When a font is selected, the font name defined in the
						// above list is passed to this definition with the name "Font", being it
						// injected in the "class" attribute.
						// We must also instruct the editor to replace span elements that are used to
						// set the font (Overrides).
						font_style :
						{
								element		: 'span',
								attributes		: { 'class' : '#(family)' }
						},

						/*
						 * Font sizes.
						 */
						fontSize_sizes : 'Smaller/FontSmaller;Larger/FontLarger;8pt/FontSmall;14pt/FontBig;Double Size/FontDouble',
						fontSize_style :
							{
								element		: 'span',
								attributes	: { 'class' : '#(size)' }
							} ,

						/*
						 * Font colors.
						 */
						colorButton_enableMore : false,

						colorButton_colors : 'FontColor1/000000,FontColor2/0066CC,FontColor3/F00',
						colorButton_foreStyle :
							{
								element : 'span',
								attributes : { 'class' : '#(color)' }
							},

						colorButton_backStyle :
							{
								element : 'span',
								attributes : { 'class' : '#(color)BG' }
							},

						/*
						 * Indentation.
						 */
						indentClasses : ['Indent1', 'Indent2', 'Indent3'],

						/*
						 * Paragraph justification.
						 */
						justifyClasses : [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyFull' ],

						/*
						 * Styles combo.
						 */
						stylesSet :
								[
									{ name : 'Strong Emphasis', element : 'strong' },
									{ name : 'Emphasis', element : 'em' },

									{ name : 'Computer Code', element : 'code' },
									{ name : 'Keyboard Phrase', element : 'kbd' },
									{ name : 'Sample Text', element : 'samp' },
									{ name : 'Variable', element : 'var' },

									{ name : 'Deleted Text', element : 'del' },
									{ name : 'Inserted Text', element : 'ins' },

									{ name : 'Cited Work', element : 'cite' },
									{ name : 'Inline Quotation', element : 'q' }
								]

					});
			//]]>
			</script>
		<!-- /p -->
		<p>
			<input type="submit" value="Ulozit" />
		</p>
	</form>
   <?php } ?>	
</body>
</html>

