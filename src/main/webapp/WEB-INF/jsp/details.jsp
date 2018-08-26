<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Hello World!</title>
</head>
<body>
	details
	
	<a href="purchase">Purchase a Card</a>
	<a href="register">Register a Card</a>
	<a href="topup">Top up or refill</a>
	<a href="statement">Statement</a>
	<a href="faq">FAQ</a>
	<a href="contactus">Contact Us</a>
	
	
	
	<form action="logout" method="post">   
	<input type="hidden"                        
		name="${_csrf.parameterName}"
		value="${_csrf.token}"/>
	<button type="submit" class="btn">Log out</button>  
	</form>

	

</body>
</html>