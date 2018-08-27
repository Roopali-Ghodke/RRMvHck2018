<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
</head>
<body>
	<h2>Profile</h2>
	<div class="row">
		<div class="col-md-4">
			<table width="200%">
				<tr>
					<td><%@ include file="menu.jsp"%></td>
				</tr>
			</table>
		</div>
		<div class="col-md-4">
			<p>Center details</p>
			Welcome ${userProfile['first_name'] } !
			
			<br/>
			Your Details:<br/>
			
			First Name ${userProfile['first_name'] }<br/>
			Last Name ${userProfile['last_name'] }<br/>
			Address ${userProfile['address'] }<br/>
			Card Number ${userProfile['card_number'] }<br/>
			
		</div>
		<div class="col-md-4">
			<p>right details</p>
		</div>
	</div>
	
	
	
	<form action="logout" method="post">   
	<input type="hidden"                        
		name="${_csrf.parameterName}"
		value="${_csrf.token}"/>
	<button type="submit" class="btn">Log out</button>  
	</form>

	

</body>
</html>