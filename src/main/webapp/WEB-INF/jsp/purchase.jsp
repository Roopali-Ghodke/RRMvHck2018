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
	<div class="container">
		<h2>Purchase a Card</h2>
		<div class="row">
			<div class="col-md-3">
				<table width="100%">
					<tr>
						<td><%@ include file="menu.jsp"%></td>
					</tr>
				</table>
			</div>


			<div class="col-md-6">
				<p>
					<c:if test="${alreadyPurchased eq 'true'}">
						<p>Already card purchased.</p>
					</c:if>
					<c:if test="${alreadyPurchased ne 'true'}">
						<c:if test="${status eq 'success'}">
							<p>Purchase done successfully. Card will be delivered soon.
								Once delivered please register card before using on transport &
								top up amount.</p>
						</c:if>

						<c:if test="${status ne 'success'}">
							<div>
								<h2>Card Details</h2>
								<small id="name" class="form-text text-muted"> (Enter
									Card Details for purchasing, Ex- Amount = Rs 100.00/-) </small>
							</div>
							<c:url value="/purchaseCard" var="payUrl" />
							<form:form method="POST" action="${purchaseUrl}"
								modelAttribute="command">
								<div class="form-group">
									<form:label path="name">CardHolder Name</form:label>
									<form:input path="name" type="text" class="form-control"
										id="name" aria-describedby="name"
										placeholder="Cardholder Name" />
									<small id="name" class="form-text text-muted"> (As
										written on card)</small>
								</div>

								<div class="form-group">
									<form:label path="creditCardNumber">Credit Card Number</form:label>
									<form:input path="creditCardNumber" type="number"
										class="form-control" id="creditCardNumber"
										aria-describedby="creditCardNumber"
										placeholder="Credit Card Number" />
									<small id="creditCardNumber" class="form-text text-muted">(Enter
										Credit Card Number displayed on your card)</small>
								</div>

								<div class="form-group">
									<form:label path="creditCardExpiry">Expiry Date</form:label>
									<form:input path="creditCardExpiry" type="date"
										class="form-control" id="creditCardExpiry"
										aria-describedby="creditCardExpiry"
										placeholder="Credit Card Expiry" />
									<small id="creditCardExpiry" class="form-text text-muted">(Enter
										the expiry date of your credit card)</small>
								</div>

								<div class="form-group">
									<form:label path="creditCardCVV">CVV</form:label>
									<form:input path="creditCardCVV" type="text"
										class="form-control" id="creditCardCVV"
										aria-describedby="creditCardCVV" placeholder="Credit Card CVV" />
									<small id="creditCardCVV" class="form-text text-muted">(Enter
										the CVV displayed at the back of the card)</small>
								</div>

								<div class="form-group">
									<form:label path="address">Address</form:label>
									<form:input path="address" type="text" class="form-control"
										id="address" aria-describedby="address"
										placeholder="Full Address" />
									<small id="address" class="form-text text-muted">(Enter
										the address for the card to be mailed)</small>
								</div>

								<td><input type="submit" value="Submit" /></td>

							</form:form>

							<%-- <c:url value="/purchaseCard" var="purchaseUrl" />
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
					</form:form>--%>
						</c:if>
					</c:if>
				</p>
			</div>
		</div>
	</div>

	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>
</body>
</html>