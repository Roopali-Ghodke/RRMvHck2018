<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
<!-- <script>
	function callRest() {
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
</script> -->
<link rel="stylesheet" href="/movehack/css/demoStyle.css" />
<!-- <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
<script type="text/javascript">
	function tap() {
		ani();
		callRest();
	}
	function ani() {
		var element = document.getElementById('transition').className = 'transition';
		
	}
	function callRest() {
		var request = {
			"cardNumber" : document.getElementById('cardNumber').value,

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
	<div class="container">
		<div class="page-header" style="display: inline-block;">
			<h2>Smart Yatri Card Reader Simulation</h2>
		</div>
		<div class="well">
			<h6>
				Use Case: Person with card number <input id="cardNumber" type="text" value="1234567890"></input>
				needs to travel using transport <input id="transport"
					class="inputtransport" type="text" value="Bus 392"
					onkeyup="document.getElementById('transport_div').innerHTML = this.value"></input>
				From station <input id="from" type="text" value="Sector 62 Noida"></input> to station <input
					id="to" type="text" value="Sector 3 Noida"></input>. As per transport system, ticket price
				will be &#8377;<input id="amount" type="text" value="10"></input> <br />
				<!--  <input
					id="submit" type="button" onclick="callRest()" value="Tap !"></input> -->
			</h6>
			<h5>
				So person can directly go to transport <span id="transport_div"></span>
				& directly tap Smart Yatri Card.
			</h5>
		</div>
	</div>
	<button type="button" onclick="tap()">Click to Tap</button>
	<div class="container">
		<div class="row">
			<div id="wrap">
				<div class="col-md-3 box">
					<div class="card text-center">
						<div class="card-body">
							<div id="transition"></div>
						</div>
					</div>
				</div>
				<div class="col-md-3 box">
					<div class="card text-center">
						<div class="card-body">
							<div>
								<img src="/movehack/images/Card_Reader_Machine.jpg" />
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>