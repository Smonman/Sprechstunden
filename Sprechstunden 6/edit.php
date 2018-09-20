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
$tblname1='lehrer';
$tblname2='sprechstunde';

$LehrerNr = utf8_urldecode($_GET['LehrerNr']);

function utf8_urldecode($str) { 
	$str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str)); 
	return html_entity_decode($str,null,'UTF-8'); 
}

if(isset($LehrerNr)) {
	$conn = new PDO($dbtype.':host='.$hostname.';dbname='.$dbname, $username, $password);
	$sql = "
		SELECT * 
		FROM $tblname1 
		JOIN $tblname2 
		ON SprechNr = SprechIndex 
		WHERE 
		LehrerNr LIKE '$LehrerNr'
		";
	$result = $conn->query($sql);
	while($rows = $result->fetch()) { 
		echo '
			<div class="content">
				<form action="update.php" method="POST">
					<div class="form-section">
						<div class="form-group">
							<label for="Nummer">Nummer:</label>
							<input class="form-control" id="Nummer" name="Nummer" type="text" readonly value="'.$rows['LehrerNr'].'"/>
						</div>
						<div class="form-group">
							<label for="Vorname">Vorname:</label>
							<input class="form-control" id="Vorname" name="Vorname" type="text" value="'.$rows['Vorname'].'"/>
						</div>
						<div class="form-group">
							<label for="Nachname">Nachname:</label>
							<input class="form-control" id="Nachname" name="Nachname" type="text" value="'.$rows['Nachname'].'"/>
						</div>
						<div class="form-group">
							<label for="Kuerzel">Kuerzel:</label>
							<input class="form-control" id="Kuerzel" name="Kuerzel" type="text" value="'.$rows['Kuerzel'].'"/>
						</div>
						<div class="form-group">
							<label for="Wochentag">Wochentag:</label>
							<input class="form-control" id="Wochentag" name="Wochentag" type="text" value="'.$rows['Wochentag'].'"/>
						</div>
						<div class="form-group">
							<label for="Stunde">Stunde:</label>
							<input class="form-control" id="Stunde" name="Stunde" type="text" value="'.$rows['Stunde'].'"/>
						</div>
						<div class="form-group">
							<label for="Anfang">Anfang:</label>
							<input class="form-control" id="Anfang" name="Anfang" type="text" value="'.$rows['Anfang'].'"/>
						</div>
						<div class="form-group">
							<label for="Ende">Ende:</label>
							<input class="form-control" id="Ende" name="Ende" type="text" value="'.$rows['Ende'].'"/>
						</div>
						<div class="form-group">
							<label for="Ort">Ort:</label>
							<input class="form-control" id="Ort" name="Ort" type="text" value="'.$rows['Ort'].'"/>
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary" name="submit" value="Update" />
							<input type="submit" class="btn btn-secondary" name="submit" value="Cancel" />
						</div>
					</div>
				</form>
			</div>
		';
	}
	$conn = null;
} else {
	header('Location: index.html'); 
}
?>