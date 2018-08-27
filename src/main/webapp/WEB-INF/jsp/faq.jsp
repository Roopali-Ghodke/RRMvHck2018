<!DOCTYPE html>
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
		<h2>Frequently Asked Questions ( FAQ )</h2>
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

	</div>

	<form action="logout" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log out</button>
	</form>



</body>
</html>