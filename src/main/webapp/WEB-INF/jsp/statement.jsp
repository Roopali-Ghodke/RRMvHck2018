<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title></title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<h2>Check statement</h2>
	<div class="row">
		<div class="col-md-3">
			<table width="100%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
		<div class="col-md-3">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>Card Number</th>
						<th>Date Of Travel</th>
						<th>Is Top Up Done</th>
						<th>Source (From Station)</th>
						<th>Destination (To Station)</th>
						<th>Amount</th>
					</tr>
				</thead>
				<c:forEach items="${cardStatements}" var="cardStatements">
					<tr>
						<td>${cardStatements.card_id}</td>
						<td>${cardStatements.date}</td>
						<td><c:choose>
								<c:when test="${cardStatements.is_topup == 'Y'}">
									<p>Top-Up Successfully Done.</p>
								</c:when> ${cardStatements.is_topup}
								<c:otherwise>
									<p>No</p>
								</c:otherwise>
							</c:choose></td>
						<td>${cardStatements.from}</td>
						<td>${cardStatements.to}</td>
						<td><c:choose>
								<c:when test="${cardStatements.is_topup == 'Y'}">
									${cardStatements.amount}+
								</c:when>
								<c:otherwise>
									${cardStatements.amount}-
								</c:otherwise>
							</c:choose></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<div class="col-md-3">
			<p>Right details</p>

		</div>

	</div>



	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>



</body>
</html>