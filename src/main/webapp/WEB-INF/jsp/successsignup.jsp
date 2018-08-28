<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
</head>
<body>
	Successfully Registered. 
	
	Please go to <a href="login">Home Page</a>
	
	
	
	<form action="logout" method="post">   
	<input type="hidden"                        
		name="${_csrf.parameterName}"
		value="${_csrf.token}"/>
	<button type="submit" class="btn">Log out</button>  
	</form>

	

</body>
</html>