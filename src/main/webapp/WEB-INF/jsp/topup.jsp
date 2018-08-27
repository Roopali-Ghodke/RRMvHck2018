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
	<h2>Top-Up a Card / Re-fill a Card</h2>
	<div class="row">
		<div class="col-md-4">
			<table width="100%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
			<div class="col-md-6">
				<p>
					<c:if test="${status eq 'success'}">
						<p>Payment done successfully.</p>
					</c:if>
				<h3>Enter Card Details</h3>

				<c:url value="/pay" var="payUrl" />
				<form:form method="POST" action="${payUrl}" modelAttribute="command">
					<div class="form-group">
						<form:label path="name">CardHolder Name</form:label>
						<form:input path="name" type="text" class="form-control" id="name"
							aria-describedby="name" placeholder="Cardholder Name" />
						<small id="name" class="form-text text-muted"> (As written
							on card)</small>
					</div>
					<div class="form-group">
						<form:label path="amount">Add Amount</form:label>
						<form:input path="amount" type="number" class="form-control"
							id="amount" aria-describedby="amount" placeholder="100.00" />
						<small id="amount" class="form-text text-muted">(Add
							amount to the card)</small>
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
						<form:input path="creditCardCVV" type="text" class="form-control"
							id="creditCardCVV" aria-describedby="creditCardCVV"
							placeholder="Credit Card CVV" />
						<small id="creditCardCVV" class="form-text text-muted">(Enter
							the CVV displayed at the back of the card)</small>
					</div>
					<input type="submit" value="Submit" />

				</form:form>
				</p>


			</div>
		

	</div>



	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>




</body>
</html>