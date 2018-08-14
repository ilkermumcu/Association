<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Vereinsverwaltung</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary">
		<a class="navbar-brand" href="#">Vereinsverwaltung</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="${pageContext.request.contextPath}/membership/list">Dashboard <span
					class="sr-only">(current)</span></a> <a class="nav-item nav-link"
					onclick="window.location.href='showMembershipForm'; return false;"
					type="" button role="button" href="#">Neues Mitglied</a> <a
					class="nav-item nav-link" href="#">Benutzerverwaltung</a>
			</div>
		</div>
	</nav>
	<br>
	<div class="container">
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h1 class="display-4">Neues Mitglied</h1>
				<p class="lead"></p>
			</div>
		</div>

		<div>
			<form:form class="form-horizantal" modelAttribute="membership"
				action="saveMembership" method="POST">
				<form:hidden path="id" />
				<div class="form-group">
					<label for="membershipNo" class="col-sm control-label">Mitglied Nr:</label>
					<div>
						<form:input type="text" class="form-control" id="membershipNo"
							placeholder="Mitglied Nr" path="membershipNo"></form:input>
					</div>
				</div>


				<div class="form-group">
					<label for="membershipName" class="col-sm control-label">Vorname:</label>
					<div>
						<form:input type="text" class="form-control" id="membershipName"
							placeholder="Vorname" path="name"></form:input>
					</div>
				</div>


				<div class="form-group">
					<label for="membershipSurname" class="col-sm 10 control-label">Name:</label>
					<div>
						<form:input type="text" class="form-control"
							id="membershipSurname" placeholder="Name" path="surname"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="membershipTelephone" class="col-sm 10 control-label">Handy Nummer:</label>
					<div>
						<form:input type="text" class="form-control"
							id="membershipTelephone" placeholder="Handy Nummer" path="telephone"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="membershipAddress" class="col-sm 10 control-label">Adresse:</label>
					<div>
						<form:input type="text" class="form-control"
							id="membershipAddress" placeholder="Adresse" path="address"></form:input>
					</div>
				</div>
				
				<div class="form-group">
					<label for="membershipPostCode" class="col-sm 10 control-label">PLZ:</label>
					<div>
						<form:input type="text" class="form-control"
							id="membershipPostCode" placeholder="PLZ" path="postCode"></form:input>
					</div>
				</div>

				<div class="form-group">
					<div class="col-sm 10">
						<button type="submit" class="btn btn-primary">Speichern</button>
					</div>
				</div>
			</form:form>

		</div>
		<br>
		<p>
			<a href="${pageContext.request.contextPath}/membership/list">Zurück
				Mitglied</a>
		</p>

	</div>


</body>
</html>