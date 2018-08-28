<!DOCTYPE html>
<html lang="en">

<head>
<title>Smart Yatri Card</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>


<body onload="loadAgeSelector()">
	<div class="container">
		<h2>Metro Routes Information</h2>

		<form:form method="POST>
		<table>
			<tr>
				<td>
					<h3> Start Point </h3>
				</td>
				<td>
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Select Start Point <span class="caret"></span>
						</button>
						<form:select path = "station">
	                     	<form:option value = "NONE" label = "Select From Station"/>
	                     	<form:options items = "${stationList}" />
                  		</form:select>     	
					</div>
				</td>
			</tr> 	
		
			<tr>
				<td>
					<h3> End Point </h3>
				</td>
				<td>
					<div class="dropdown">
						<button class="btn btn-primary dropdown-toggle" type="button"
							data-toggle="dropdown">
							Select End Point <span class="caret"></span>
						</button>
						<form:select path = "station">
	                     	<form:option value = "NONE" label = "Select To Station"/>
	                     	<form:options items = "${stationList}" />
                  		</form:select>     	
					</div>
				</td>
			</tr> 	
	</div>


</body>
</html>