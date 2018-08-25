<!-- 
   <h1>Login</h1>
   <form name='f' action="login" method='POST'>
      <table>
         <tr>
            <td>User:</td>
            <td><input type='text' name='username' value=''></td>
         </tr>
         <tr>
            <td>Password:</td>
            <td><input type='password' name='password' /></td>
         </tr>
         <tr>
            <td><input name="submit" type="submit" value="submit" /></td>
         </tr>
      </table>
  </form>
</body>
</html> -->

<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel='stylesheet' href="css/welcomeStyle.css">
		<link rel='stylesheet'
			href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css")%>'>
		<link rel='stylesheet'
			href='<%=org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css")%>'>
		<script type='text/javascript'
			src='<%=org.webjars.AssetLocator.getWebJarPath("jquery.min.js")%>'></script>
		<script type='text/javascript'
			src='<%=org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js")%>'></script>
	</head>
<body>
	<div class="header">
		<a href="#default" class="logo">Smart Yatri Card</a>
		<div class="header-right">
			<a class="active" href="#home">Home</a> <a href="#contact">Contact</a>
			<a href="#about">About</a>
		</div>
	</div>
	<div>
	</div>
	<div class="container-fluid">
		
		
		<div class="row">
			<div class="col-md-3">
				<p>Register the card</p>
			</div>
			<div class="col-md-3">
				<p>Order the card</p>
			</div>
			<div class="col-md-3">
				<p>Use the card</p>
			
	<c:url value="/loginpage" var="loginUrl" />
	<form action="${loginUrl}" method="post">
		<c:if test="${param.error != null}">
			<p>Invalid username and password.</p>
		</c:if>
		<c:if test="${param.logout != null}">
			<p>You have been logged out.</p>
		</c:if>
		<p>
			<label for="username">Username</label> <input type="text"
				id="username" name="username" />
		</p>
		<p>
			<label for="password">Password</label> <input type="password"
				id="password" name="password" />
		</p>
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<button type="submit" class="btn">Log in</button>
	</form>
	
	</div>

		</div>
	</div>
	
</body>
</html>