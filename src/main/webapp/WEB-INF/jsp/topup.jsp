<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Hello World!</title>
</head>
<body>
	<h2>Top-Up a Card / Re-fill a Card</h2>
	<div class="row">
		<div class="col-md-4">
			<table width="200%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
		<div class="col-md-4">
			<p>
				<c:if test="${status eq 'success'}">
					<p>Payment done successfully.</p>
				</c:if>
			<h3>Enter payment details</h3>

<c:url value="/pay" var="payUrl" />
			<form:form method="POST" action="${payUrl}" modelAttribute="command">
				<table>
					<tr>
						<td><form:label path="name">name</form:label></td>
						<td><form:input path="name" /></td>
					</tr>
					<tr>
						<td><form:label path="amount">amount</form:label></td>
						<td><form:input path="amount" /></td>
					</tr>
					<tr>
						<td><form:label path="creditCardNumber">creditCardNumber</form:label></td>
						<td><form:input path="creditCardNumber" /></td>
					</tr>
					<tr>
						<td><form:label path="creditCardExpiry">creditCardExpiry</form:label></td>
						<td><form:input path="creditCardExpiry" /></td>
					</tr>
					<tr>
						<td><form:label path="creditCardCVV">
                      creditCardCVV</form:label></td>
						<td><form:input path="creditCardCVV" /></td>
					</tr>
					<tr>
						<td><input type="submit" value="Submit" /></td>
					</tr>
				</table>
			</form:form>
			</p>
		</div>
		<div class="col-md-4">
			<p>right details</p>
		</div>
	</div>



	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>



</body>
</html>