<!DOCTYPE html>
<html lang="en">

<head>


</head>

<body>
	<c:url value="/signuppage" var="signupUrl" />
				<form action="${signupUrl}" method="post">
		<p>
			<label for="firstname">First Name</label> <input type="text"
				id="firstname" name="firstname" />
		</p>
		<p>
			<label for="middlename">Last Name</label> <input type="text"
				id="middlename" name="middlename" />
		</p>
		<p>
			<label for="lastname">Middle Name</label> <input type="text"
				id="lastname" name="lastname" />
		</p>
		<p>
			<label for="password">Password</label> <input type="password"
				id="password" name="password" />
		</p>
		<p>
			<label for="dob">Date of Birth</label> <input type="date" id="dob"
				name="dob" />
		</p>
		<p>
			<label for="email">Email ID</label> <input type="email" id="email"
				name="email" />
		</p>
		<p>
			<label for="address1">Address</label> <input type="text"
				id="address1" name="address1" />
		</p>
		<p>
			<label for="address2">Address</label> <input type="text"
				id="address2" name="address2" />
		</p>
		<p>
			<label for="address3">Address</label> <input type="text"
				id="address3" name="address3" />
		</p>
		<p>
			<label for="city">City</label> <select name="city">
				<option value="newdelhi">New Delhi</option>
				<option value="connaught">Connaught Place</option>
				<option value="gurgaon">Gurgaon</option>
				<option value="faridabad">Faridabad</option>
			</select>
		</p>

		<p>
			<label for="state">State</label> <select name="state">
				<option value="haryana">Haryana</option>
				<option value="punjab">Punjab</option>
				<option value="karnataka">Karnataka</option>
				<option value="maharashtra">Maharashtra</option>
			</select>
		</p>

		<button type="submit" class="btn">Sign Up</button>
	</form>
</body>
</html>