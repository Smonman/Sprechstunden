<?php
header('content-type: text/html; charset=utf-8');
$hostname='localhost';
$dbtype='mysql';
$username='root';
$password='';
$dbname='schule_2';
$tblname1='lehrer';
$tblname2='sprechstunde';

$search = utf8_urldecode($_POST['search']);

function utf8_urldecode($str) { 
	$str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str)); 
	return html_entity_decode($str,null,'UTF-8'); 
} 

if (isset($_POST['search'])) {
	$conn = new PDO($dbtype.':host='.$hostname.';dbname='.$dbname, $username, $password);
	//$sql1 = "SELECT * FROM $tblname1 WHERE Nachname LIKE '%$search%' OR Vorname LIKE '%$search%' OR Kuerzel LIKE '%$search%'";
	$sql = "
		SELECT * 
		FROM $tblname1 
		JOIN $tblname2 
		ON SprechNr = SprechIndex 
		WHERE 
		Nachname LIKE '%$search%' 
		OR Vorname LIKE '%$search%' 
		OR Kuerzel LIKE '%$search%'
		OR Wochentag LIKE '%$search%'
		OR Anfang LIKE '%$search%'
		OR Ende LIKE '%$search%'
		OR Ort Like '%$search%'
		";
	$result = $conn->query($sql);
	while($rows = $result->fetch()) {
		$vorn = utf8_encode($rows['Vorname']);
		$vornTable = '<td class="info">'.$vorn.'</td>';
		if(stripos($vorn, $search) !== false) {
			$vornSpan = substr($vorn, stripos($vorn, $search), strlen($search));
			$vornStart = substr($vorn, 0, stripos($vorn, $search));
			$vornEnde = substr($vorn, stripos($vorn, $search) + strlen($search));
			$vornTable = '<td class="info">'.$vornStart.'<span class="highlight">'.$vornSpan.'</span>'.$vornEnde.'</td>';
		}
		$nachn = utf8_encode($rows['Nachname']);
		$nachnTable = '<td class="info">'.$nachn.'</td>';
		if(stripos($nachn, $search) !== false) {
			$nachnSpan = substr($nachn, stripos($nachn, $search), strlen($search));
			$nachnStart = substr($nachn, 0, stripos($nachn, $search));
			$nachnEnde = substr($nachn, stripos($nachn, $search) + strlen($search));
			$nachnTable = '<td class="info">'.$nachnStart.'<span class="highlight">'.$nachnSpan.'</span>'.$nachnEnde.'</td>';
		}
		$kuer = utf8_encode($rows['Kuerzel']);
		$kuerTable = '<td class="info">'.$kuer.'</td>';
		if(stripos($kuer, $search) !== false) {
			$kuerSpan = substr($kuer, stripos($kuer, $search), strlen($search));
			$kuerStart = substr($kuer, 0, stripos($kuer, $search));
			$kuerEnde = substr($kuer, stripos($kuer, $search) + strlen($search));
			$kuerTable = '<td class="info">'.$kuerStart.'<span class="highlight">'.$kuerSpan.'</span>'.$kuerEnde.'</td>';
		}
		$woch = $rows['Wochentag'];
		$wochTable = '<td class="info">'.$woch.'</td>';
		if(stripos($woch, $search) !== false) {
			$wochSpan = substr($woch, stripos($woch, $search), strlen($search));
			$wochStart = substr($woch, 0, stripos($woch, $search));
			$wochEnde = substr($woch, stripos($woch, $search) + strlen($search));
			$wochTable = '<td class="info">'.$wochStart.'<span class="highlight">'.$wochSpan.'</span>'.$wochEnde.'</td>';
		}
		$stun = $rows['Stunde'];
		$stunTable = '<td class="info">'.$stun.'</td>'; 
		if(stripos($stun, $search) !== false) {
			$stunSpan = substr($stun, stripos($stun, $search), strlen($search));
			$stunStart = substr($stun, 0, stripos($stun, $search));
			$stunEnde = substr($stun, stripos($stun, $search) + strlen($search));
			$stunTable = '<td class="info">'.$stunStart.'<span class="highlight">'.$stunSpan.'</span>'.$stunEnde.'</td>';
		}
		$anf = $rows['Anfang'];
		$anfTable = '<td class="info">'.$anf.'</td>'; 
		if(stripos($anf, $search) !== false) {
			$anfSpan = substr($anf ,stripos($anf, $search), strlen($search));
			$anfStart = substr($anf, 0, stripos($anf, $search));
			$anfEnde = substr($anf, stripos($anf, $search) + strlen($search));
			$anfTable = '<td class="info">'.$anfStart.'<span class="highlight">'.$anfSpan.'</span>'.$anfEnde.'</td>';
		}
		$end = $rows['Ende'];
		$endTable = '<td class="info">'.$end.'</td>'; 
		if(stripos($end, $search) !== false) {
			$endSpan = substr($end ,stripos($end, $search), strlen($search));
			$endStart = substr($end, 0, stripos($end, $search));
			$endEnde = substr($end, stripos($end, $search) + strlen($search));
			$endTable = '<td class="info">'.$endStart.'<span class="highlight">'.$endSpan.'</span>'.$endEnde.'</td>';
		}
		$or = utf8_encode($rows['Ort']);
		$orTable = '<td class="info">'.$or.'</td>'; 
		if(stripos($or, $search) !== false) {
			$orSpan = substr($or ,stripos($or, $search), strlen($search));
			$orStart = substr($or, 0, stripos($or, $search));
			$orEnde = substr($or, stripos($or, $search) + strlen($search));
			$orTable = '<td class="info">'.$orStart.'<span class="highlight">'.$orSpan.'</span>'.$orEnde.'</td>';
		}
		
		echo '
		<div class="result container">
			<div class="row">
				<div class="col-sm-8">
					<table>
						<tr>
							<td class="label">Vorname:</td>
							'.$vornTable.'
						</tr>
						<tr>
							<td class="label">Nachname:</td>
							'.$nachnTable.'
						</tr>
						<tr>
							<td class="label">Kürzel:</td>
							'.$kuerTable.'
						</tr>
						<tr>
							<td class="label">Wochentag:</td>
							'.$wochTable.'
						</tr>
						<tr>
							<td class="label">Stunde:</td>
							'.$stunTable.'
						</tr>
						<tr>
							<td class="label">Anfang:</td>
							'.$anfTable.'
						</tr>
						<tr>
							<td class="label">Ende:</td>
							'.$endTable.'
						</tr>
						<tr>
							<td class="label">Ort:</td>
							'.$orTable.'
						</tr>
						<tr>
							<td class="label"><a href="loginform.php?LehrerNr='.$rows['LehrerNr'].'">Edit</a></td>
						</tr>
					</table>
				</div>
				<div class="col-sm-4">
					<div class="right">
						<form action="eintragen.php" method="POST">
							<div class="form-section">
								<div class="form-group">
									<input type="submit" class="btn btn-primary" name="eintragen" id="eintragen" value="Eintragen" />
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		';
	}
}
$conn = null;
?>