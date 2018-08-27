<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title></title>
<script>
function callRest(){
	var request = {
		"cardNumber" : "1234567890",

		"transportName" : document.getElementById('transport').value,

		"fromLocation" : document.getElementById('from').value,

		"toLocation" : document.getElementById('to').value,

		"amount" : document.getElementById('amount').value,

		"travelTimeDate" : new Date()
	};
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			console.log(this.responseText);
		}
	};
	xhttp.open("POST", "/movehack/api/charge", true);
	xhttp.setRequestHeader("Content-type", "application/json");
	xhttp.send(JSON.stringify(request));
};
</script>
</head>
<body>

	<div>
		</br> </br>
	</div>
	<div class="row">

		<div class="col-md-4">
			<p>DEMO</p>
		</div>

		<div>
			Transport = <input id="transport" type="text"></input> <br /> From =
			<input id="from" type="text"></input> <br /> to = <input id="to"
				type="text"></input> <br /> Amount = <input id="amount" type="text"></input>
			<br /> <input id="submit" type="button" onclick="callRest()" value="Tap !"></input> <br />
		</div>
	</div>


</body>
</html>