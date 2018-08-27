<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title></title>
<link rel="stylesheet" href="/movehack/css/welcomeStyle.css" />
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
</head>
<body>
	<div class="header">
		<a href="#default" class="logo">Smart Yatri Card</a>
		<div class="header-right">
			<c:url value="/login" var="loginUrl" />
			<a href="${loginUrl }">Home</a> 
			
			<c:url value="/contact" var="contactUrl" />
			<a href="${contactUrl }">Contact</a>
			
			<c:url value="/aboutus" var="aboutUrl" />
			<a href="${aboutUrl }">About Us</a>

		</div>
	</div>

</body>
</html>
