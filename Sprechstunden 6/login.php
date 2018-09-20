<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css" />
<script src="update.js"></script>

<?php
$hostname='localhost';
$dbtype='mysql';
$username='root';
$password='';
$dbname='schule_2';
$tblname='admins';

$LehrerNr = utf8_urldecode($_GET['Nummer']);

function utf8_urldecode($str) { 
	$str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str)); 
	return html_entity_decode($str,null,'UTF-8'); 
}

if(isset($LehrerNr) && $_GET['submit'] == "Login") {
	$user = $_GET['Username'];
	$pass = $_GET['Password'];

	$conn = new PDO($dbtype.':host='.$hostname.';dbname='.$dbname, $username, $password);
	$sql = "
		SELECT *
		FROM $tblname
		WHERE username LIKE '$user'
		AND pass LIKE '$pass'
		";
	$result = $conn->query($sql);
	if($result->fetchColumn() != 0) {
		header('Location: edit.php?LehrerNr='.$LehrerNr.'');
	} else {
		header('Location: loginform.php?LehrerNr='.$LehrerNr.'');
	}
} else {
	header('Location: index.html'); 
}

?>