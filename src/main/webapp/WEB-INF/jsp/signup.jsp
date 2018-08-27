<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
</head>
<body>
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<h2>Sign up</h2>

	<c:if test="${status eq 'success'}">
		<p>Sign up done successfully.</p>
		<a href="loginpage">Login</a>
	</c:if>
	<c:if test="${status ne 'success'}">
		<c:url value="/signupuser" var="signupUrl" />

		<form:form method="POST" action="${signupUrl}"
			modelAttribute="command">
			<p>
				<form:label path="firstName" for="firstname">First Name</form:label>
				<form:input path="firstName" type="text" id="firstname"
					name="firstname" />
			</p>
			<p>
				<form:label path="lastName" for="lastName">Last Name</form:label>
				<form:input path="lastName" type="text" id="lastName"
					name="lastName" />
			</p>
			<p>
				<form:label path="userName" for="userName">User Id for login</form:label>
				<form:input path="userName" type="text" id="userName"
					name="userName" />
			</p>

			<p>
				<form:label path="password" for="password">Password</form:label>
				<form:input path="password" type="password" id="password"
					name="password" />
			</p>

			<p>
				<form:label path="email" for="email">Email ID</form:label>
				<form:input path="email" type="email" id="email" name="email" />
			</p>
			<p>
				<form:label path="address" for="address1">Address</form:label>
				<form:input path="address" type="text" id="address1" name="address1" />
			</p>

			<p>
				<form:label path="city" for="city">City</form:label>
				<form:select path="city" name="city">
					<option value="newdelhi">New Delhi</option>
					<option value="connaught">Connaught Place</option>
					<option value="gurgaon">Gurgaon</option>
					<option value="faridabad">Faridabad</option>
				</form:select>
			</p>

			<p>
				<form:label path="state" for="state">State</form:label>
				<form:select path="state" name="state">
					<option value="haryana">Haryana</option>
					<option value="punjab">Punjab</option>
					<option value="karnataka">Karnataka</option>
					<option value="maharashtra">Maharashtra</option>
				</form:select>
			</p>

			<button type="submit" class="btn">Sign Up</button>
		</form:form>
	</c:if>
</body>
</html>