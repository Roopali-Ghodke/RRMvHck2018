<!DOCTYPE html>
<html lang="en">
<head>
</head>

<body>
	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>
</body>
</html>
