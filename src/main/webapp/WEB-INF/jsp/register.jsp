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
	<div class="container">
		<h2>Register a Card</h2>
		<div class="row">
			<div class="col-md-">
				<table width="100%">
					<tr>
						<td><%@ include file="menu.jsp"%></td>
					</tr>
				</table>
			</div>
			<div class="col-md-4">
				<p>
				<p>

					<c:if test="${status ne 'success' && alreadyRegistered eq 'true'}">
						<p>Smart Yatri Card is already registered. Check statement to find out current balance or top up amount.</p>
					</c:if>

					<c:if test="${status ne 'success' && alreadyPurchased ne 'true'}">
						<p>You haven't yet purchased Smart Yatri Card. Please purchase a Smart Yatri Card & return to this screen to register card.</p>
					</c:if>
					<c:if test="${status eq 'success'}">
						<p>Registration of Smart Yatri Card done successfully. Please top up amount on the card & start using the card. Happy journey !</p>
					</c:if>
					<c:if
						test="${alreadyRegistered ne 'true' && status ne 'success' && alreadyPurchased eq 'true'}">

						<h3>Enter registration details</h3>
						<p>Please enter number from the Smart Yatri Card you received. You can find number on back of Smart Yatri Card.</p>
						<c:url value="/registercard" var="registerUrl" />
						<form:form method="POST" action="${registerUrl}"
							modelAttribute="command">
							<table>
								<tr>
									<td><form:label path="cardNumber">Card Number</form:label></td>
									<td><form:input path="cardNumber" /></td>
								</tr>

								<tr>
									<td><input type="submit" value="Submit" /></td>
								</tr>
							</table>
						</form:form>
					</c:if>
				</p>

				</p>
			</div>
			<div class="col-md-4">
				<p></p>
			</div>
		</div>
	</div>

<%-- 	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>

 --%>

</body>
</html>