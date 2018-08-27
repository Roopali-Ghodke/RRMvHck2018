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
	<div id="about" class="container">
		<div>
			</br>
			</br>
		</div>

		<div id="contact" class="container-fluid bg-grey">
			<h2>About Smart Yatri Card</h2>
			<br>
			<h4>Poor and fragmented mobility has been considered a key
				contributor to restrained economic growth, deteriorated quality of
				life, increased usage of private vehicles, congestion in cities,
				increased cost of transportation, increase of road accidents, etc.
				Various cities in India still have fragmented transportation systems
				which impacts lives of millions of commuters. We need to address
				this problem and provide a more seamless and integrated experience
				to the commuter and enable various stakeholders in the mobility
				ecosystem with a mechanism to effectively integrate with each other.
				An Integrated Multi-modal Commuter Transport System will combine the
				strengths of different transport systems and will allow the
				commuters to have a seamless experience throughout their journey.
				The system will also try to address typical concerns regarding
				multi-modal transportation systems, including the coordination
				between multiple modes of travel, integration and settlement
				procedures, degree of certainty to reach a destination in defined
				time, level of comfort, etc.</h4>
			<br>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Excepteur sint occaecat
				cupidatat non proident, sunt in culpa qui officia deserunt mollit
				anim id est laborum consectetur adipiscing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim
				veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex
				ea commodo consequat.</p>
			<br>
			<c:url value="/contact" var="contactUrl" />
			<a href="${contactUrl }">
				<button class="btn btn-default btn-lg">Get in Touch</button>
			</a>
		</div>
	</div>

	<div>
		</br>
		</br>
	</div>

	<div id="contact" class="container-fluid text-center by-grey">
		<h2>SERVICES</h2>
		<h4>What we offer</h4>
		<br>
		<div>
			<div class="col-sm-6">
				<spanl> </span>
				<h4>Modes of Transport</h4>
				<p>You can use any mode of transport</p>
			</div>
			<div class="col-sm-6">
				<span></span>
				<h4>One Card (Smart Yatri Card)</h4>
				<p>"Pay early and use whenever and wherever you want!</p>
			</div>
		</div>
		<br> <br>
	</div>


</body>
</html>