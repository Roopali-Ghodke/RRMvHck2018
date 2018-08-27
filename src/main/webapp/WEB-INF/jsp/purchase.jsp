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
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<h2>Purchase a Card</h2>
	<div class="row">
		<div class="col-md-6">
			<table width="100%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
	</div>

	<div class="col-md-4">
		<p>
			<c:if test="${alreadyPurchased eq 'true'}">
				<p>Already card purchased.</p>
			</c:if>
			<c:if test="${alreadyPurchased ne 'true'}">
				<c:if test="${status eq 'success'}">
					<p>Purchase done successfully. Card will be delivered soon.
						Once delivered please register card before using on transport &
						topup amount.</p>
				</c:if>
				<c:if test="${status ne 'success'}">
					<h3>Enter payment details. Amount = Rs. 100</h3>

					<c:url value="/purchaseCard" var="purchaseUrl" />
					<form:form method="POST" action="${purchaseUrl}"
						modelAttribute="command">
						<table>
							<tr>
								<td><form:label path="name">name</form:label></td>
								<td><form:input path="name" /></td>
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
								<td><form:label path="address">address</form:label></td>
								<td><form:input path="address" /></td>
							</tr>
							<tr>
								<td><input type="submit" value="Submit" /></td>
							</tr>
						</table>
					</form:form>
				</c:if>
			</c:if>
		</p>
	</div>

	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>



</body>
</html>