<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart Yatri Card	</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/movehack/css/welcomeStyle.css" />
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
<script  src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
</head>


<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/welcomeStyle.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> -->

<body>

	<span><%@ include file="navigationtab.jsp"%></span>
	<div></div>
	<div class="container-fluid">


		<div class="row">
			<div class="col-md-3">
				<a href="signup">Sign Up</a>
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