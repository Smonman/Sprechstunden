<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css" />
<script src="update.js"></script>

<?php

$LehrerNr = utf8_urldecode($_GET['LehrerNr']);

function utf8_urldecode($str) { 
	$str = preg_replace("/%u([0-9a-f]{3,4})/i","&#x\\1;",urldecode($str)); 
	return html_entity_decode($str,null,'UTF-8'); 
}

echo '
	<div class="content">
		<form method="GET" action="login.php">
			<div class="form-group">
				<label for="Nummer">Lehrer Nummer:</label>
				<input class="form-control" id="Nummer" name="Nummer" type="text" value="'.$LehrerNr.'" readonly/>
			</div>
			<div class="form-group">
				<label for="Username">Username:</label>
				<input class="form-control" id="Username" name="Username" type="text"/>
			</div>
			<div class="form-group">
				<label for="Password">Password:</label>
				<input class="form-control" id="Password" name="Password" type="text"/>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" name="submit" value="Login" />
				<input type="submit" class="btn btn-secondary" name="submit" value="Cancel" />
			</div>
		</form>
	</div>
';
?>