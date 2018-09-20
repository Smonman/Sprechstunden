<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />      
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css" />

<?php
header('content-type: text/html; charset=utf-8');
$hostname='localhost';
$dbtype='mysql';
$username='root';
$password='';
$dbname='schule_2';
$tblname1='lehrer';
$tblname2='sprechstunde';


function utf8_urldecode($str) { 
	$str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str)); 
	return html_entity_decode($str,null,'UTF-8'); 
}

if(isset($_POST['submit']) && $_POST['submit'] == "Update") {
	$LehrerNr = utf8_urldecode($_POST['Nummer']);
	$Vorname = utf8_urldecode($_POST['Vorname']);
	$Nachname = utf8_urldecode($_POST['Nachname']);
	$Kuerzel = utf8_urldecode($_POST['Kuerzel']);
	$Stunde	= utf8_urldecode($_POST['Stunde']);
	$Anfang	= utf8_urldecode($_POST['Anfang']);
	$Ende = utf8_urldecode($_POST['Ende']);
	$Ort = utf8_urldecode($_POST['Ort']);
	
	
	$conn = new PDO($dbtype.':host='.$hostname.';dbname='.$dbname, $username, $password);
	$sql = "
		UPDATE $tblname1
		JOIN $tblname2
		ON SprechNr = SprechIndex
		SET Vorname = '$Vorname', Nachname = '$Nachname', Kuerzel = '$Kuerzel', Stunde = '$Stunde', Anfang = '$Anfang', Ende = '$Ende', Ort = '$Ort'
		WHERE LehrerNr = '$LehrerNr'
		";
	
	$result = $conn->query($sql);
	$conn = null;
	header('Location: index.html');
} else {
	header('Location: index.html');
}
?>