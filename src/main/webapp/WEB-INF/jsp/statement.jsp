<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>

<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
</head>
<body>
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<div class="container">
		<h2>Check statement</h2>
		<div class="row">
			<div class="col-md-3">
				<table width="100%">
					<tr>
						<td><%@ include file="menu.jsp"%></td>
					</tr>
				</table>
			</div>
			<div class="col-sm-9">
				<div class="card bg-light text-black">
					<div class="card-body"><h3>Total Balance on the card is &#8377; ${balance} </h3></div>
				</div>
				<br>
				
				<table class="table table-striped">
					<thead>
						<tr>
							<th>Card Number</th>
							<th>Date Of Travel</th>
							<th>Transaction Type</th>
							<th>Transport</th>
							<th>Source (From Station)</th>
							<th>Destination (To Station)</th>
							<th>Amount (&#8377;)</th>
						</tr>
					</thead>
					<c:forEach items="${cardStatements}" var="cardStatements">
						<tr style="font-size:80%">
							<td>${cardStatements.card_id}</td>
							<td>${cardStatements.date}</td>
							<td><c:choose>
									<c:when test="${cardStatements.is_topup != 'N'}">
									Top-Up Successfully Done.
								</c:when>
									<c:otherwise>
									Travel Transaction
								</c:otherwise>
								</c:choose></td>
							<td>${cardStatements.transport}</td>
							<td>${cardStatements.from}</td>
							<td>${cardStatements.to}</td>
							<td><c:choose>
									<c:when test="${cardStatements.is_topup == 'Y'}">
									(+) ${cardStatements.amount}
								</c:when>
									<c:otherwise>
									(-) ${cardStatements.amount}
								</c:otherwise>
								</c:choose></td>
						</tr>
					</c:forEach>
				</table>
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