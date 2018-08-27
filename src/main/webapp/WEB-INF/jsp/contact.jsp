<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
<link rel="stylesheet" href="/movehack/css/aboutusStyle.css" />
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar"
	data-offset="60">
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<!-- <div id="about" class="container">
			<div class="row">
				<div class="container-fluid bg-grey">
					<h2 class="text-center">CONTACT US</h2>
					<div class="row">
						<div class="col-sm-5">
							<h4>Contact us and we'll get back to you within 24 hours.</h4>
							<p>
								<span class="glyphicon glyphicon-map-marker"></span> India
							</p>
							<p>
								<span class="glyphicon glyphicon-phone"></span> +91 1234567890
							</p>
							<p>
								<span class="glyphicon glyphicon-envelope"></span>
								smartyatricard@something.com
							</p>
						</div>
						<div class="col-sm-7">
							<div class="row">
								<div class="col-sm-6 form-group">
									<label for="name">Name </label> <input type="text"
										class="form-control" id="name" name="name" placeholder="Name"
										type="text" required>
								</div>
								<div class="col-sm-6 form-group">
									<label for="email">Email </label> <input type="email"
										class="form-control" id="email" name="email"
										placeholder="Email" type="email" required />
								</div>
							</div>
							<label for="comment">Comment </label>
							<textarea class="form-control" id="comments" name="comments"
								placeholder="Comment" rows="5"></textarea>
							<br>
							<div class="row">
								<div class="col-sm-12 form-group">
									<button class="btn btn-default pull-right" type="submit">Send</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> -->
</body>
</html>