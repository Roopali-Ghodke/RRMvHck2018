
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
	xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
<title>Smart Yatri Card</title>
<link rel="stylesheet" href="/movehack/css/profileStyle.css" />
<link rel="stylesheet" href="/movehack/css/bootstrap.min.css" />
</head>
<body>
	<span><%@ include file="navigationtab.jsp"%></span>
	<div>
		</br> </br>
	</div>
	<div class="container">
		<h2>Profile</h2>
		<div class="row">
			<div class="col-md-4">
				<table width="100%">
					<tr>
						<td><%@ include file="menu.jsp"%></td>
					</tr>
				</table>
			</div>

			<div class="col-md-8">
				<div class="col-xs-12 col-sm-9">
					<h4 class="blue">
						<span class="middle">Welcome ${userProfile['first_name'] }
							!</span> <span class="label label-purple arrowed-in-right"> <i
							class="ace-icon fa fa-circle smaller-80 align-middle"></i>
						</span>
					</h4>

					<div class="profile-user-info">
						<div class="profile-info-row">
							<div class="profile-info-name">First Name</div>

							<div class="profile-info-value">
								<span>${userProfile['first_name'] }</span>
							</div>
						</div>

						<div class="profile-info-row">
							<div class="profile-info-name">Last Name</div>

							<div class="profile-info-value">
								<span>${userProfile['last_name'] }</span>
							</div>
						</div>

						<div class="profile-info-row">
							<div class="profile-info-name">Address</div>

							<div class="profile-info-value">
								<i class="fa fa-map-marker light-orange bigger-110"></i> <span>${userProfile['address'] }</span>
							</div>
						</div>

						<div class="profile-info-row">
							<div class="profile-info-name">Smart Yatri Card Number</div>

							<div class="profile-info-value">
								<span> <c:if
										test="${(not empty userProfile['is_purchased']) && (userProfile['is_purchased'] == 'Y')}">
										<c:if
											test="${(not empty userProfile['card_number']) && (userProfile['is_purchased'] == 'Y')}">
										${userProfile['card_number'] }
									</c:if>
										<c:if
											test="${(empty userProfile['card_number']) || (userProfile['is_purchased'] == 'N')}">
										Please register the card
									</c:if>
									</c:if> <c:if
										test="${(empty userProfile['is_purchased']) || (userProfile['is_purchased'] == 'N')}">
									Please Purchase a card.
								</c:if>
								</span>
							</div>
						</div>
					</div>
				</div>
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