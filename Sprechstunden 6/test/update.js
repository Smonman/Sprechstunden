function ajaxupdate() {
	console.log("ajaxupdate");
	lehrernr = $("#Nummer").val();
	vorname = $("#Vorname").val();
	nachname = $("#Nachname").val();
	kuerzel = $("#Kuerzel").val();
	stunde = $("#Stunde").val();
	anfang = $("#Anfang").val();
	ende = $("#Ende").val();
	ort = $("#Ort").val();
	$.ajax({
	   type: "POST",
	   url: "updatejs.php",
	   data: {
		   LehrerNr	: lehrernr,
		   Vorname	: vorname,
		   Nachname : nachname,
		   Kuerzel	: kuerzel,
		   Stunde	: stunde,
		   Anfang	: anfang,
		   Ende		: ende,
		   Ort		: ort
	   },
	   success: function(results) {
			alert("Success!");
	   }
   });
}