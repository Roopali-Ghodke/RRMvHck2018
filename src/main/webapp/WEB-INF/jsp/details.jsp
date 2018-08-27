<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title></title>
</head>
<body>
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<div class="row">
		<div class="col-md-4">
			<table width="100%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
		<div class="col-md-4">
			<p>Center details</p>
		</div>
		<div class="col-md-4">
			<p>right details</p>
		</div>
	</div>


	<!-- <a href="purchase">Purchase a Card</a>
	<a href="register">Register a Card</a>
	<a href="topup">Top up or refill</a>
	<a href="statement">Statement</a>
	<a href="faq">FAQ</a>
	<a href="contactus">Contact Us</a>
	 -->


	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>
</body>
</html>