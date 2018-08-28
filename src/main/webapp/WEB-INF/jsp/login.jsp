<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Smart Yatri Card</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/movehack/css/welcomeStyle.css" />
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
<link rel="stylesheet" href="/movehack/css/loginStyle.css" />
<script src="/movehack/js/jquery-3.3.1.min.js"></script>
<script src="/movehack/js/bootstrap.min.js"></script>
</head>


<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/welcomeStyle.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script> -->

<body>

	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<div class="container">


		<div class="row">
			<div id="wrap">
				<div class="col-md-6 box">
					<div class="card text-center">
						<div class="card-header">Not Yet Signed Up !</div>
						<div class="card-body">
							<h5 class="card-title">Sign Up for Smart Yatri Card</h5>
							</br>
							<p class="card-text">Sign-Up now to register and purchase the
								Smart Yatri Card. And use the card as you go on board with any
								type of commute.</p>

							<a href="signup.do">
								<button type="button" class="btn btn-primary"
									aria-pressed="false" autocomplete="off">Sign
									Up</button>
							</a>
						</div>
						<div class="card-footer text-muted">Already Signed-Up ?
							Please Login</div>
					</div>
				</div>

				<div class="col-md-6 box">
					<div class="card text-center">
						<div class="card-header">Sign-In</div>
						<div class="card-body">
							<h5 class="card-title">Sign-In for Smart Yatri Card</h5>
							<c:url value="/loginpage" var="loginUrl" />
							<form action="${loginUrl}" method="post">
							
								<c:if test="${param.error != null}">
									<p>Invalid username and password.</p>
								</c:if>
								
								<c:if test="${param.logout != null}">
									<p>You have been logged out.</p>
								</c:if>
								
								<div class="form-group">
									<label for="username">User Name </label> 
									<input type="text" id="username" name="username" aria-describedby="username"
										placeholder="Enter Username" />
								</div>

								<div class="form-group">
									<label for="password">Password </label> 
									<input type="password" id="password" name="password" aria-describedby="password"
										placeholder="Enter Password" />
								</div>

								<input type="hidden" name="${_csrf.parameterName}"
									value="${_csrf.token}" />
									<button type="submit" class="btn btn-primary" aria-pressed="false" autocomplete="off">Log-In</button> 
								
							</form>
						</div>
						<div class="card-footer text-muted">No Account? Please
							Sign-Up</div>
					</div>
					<%-- <c:url value="/loginpage" var="loginUrl" />
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
				</form>--%>

				</div>
			</div>
		</div>
	</div>
</body>
</html>