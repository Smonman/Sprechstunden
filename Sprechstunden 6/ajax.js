var nachname;

$(document).ready(function() {
	$("#name").keyup(function() {
		ajax();
	});
});

function ajax() {
	nachname = $("#name").val();
	$.ajax({
	   type: "POST",
	   url: "suche.php",
	   data: {
		   search: nachname
	   },
	   success: function(results) {
		   $("#display").html(results);
	   }
   });
}