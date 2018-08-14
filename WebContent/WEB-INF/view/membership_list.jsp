<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<nav class="navbar navbar-expand-lg navbar navbar-dark bg-primary" >
		<a class="navbar-brand" href="#">Vereinsverwaltung</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link active" href="${pageContext.request.contextPath}/membership/list">Dashboard
				 <span class="sr-only">(current)</span></a>
				  <a class="nav-item nav-link" onclick ="window.location.href='showMembershipForm'; return false;" type=""button role="button" href="#">Neues Mitglied</a> 
				  <a class="nav-item nav-link" href="#">Benutzerverwaltung</a>
			</div>
		</div>
	</nav>
	<br>
	<div class="container">
		<div class="jumbotron jumbotron-fluid">
			<div class="container">
				<h1 class="display-4">Mitglied</h1>
				<p class="lead"></p>
			</div>
		</div>

		<div>
			<table class="table table-striped">
				<tr>
					<th>Mitglied Nr.</th>
					<th>Vorname</th>
					<th>Name</th>
					<th>Handy Nummer</th>
					<th>Adresse</th>
					<th>PLZ</th>
					<th>Update / Delete</th>
				</tr>

				<c:forEach var="tempMembership" items="${membership}">
					<tr>
						<td>${tempMembership.membershipNo}</td>
						<td>${tempMembership.name}</td>
						<td>${tempMembership.surname}</td>
						<td>${tempMembership.telephone}</td>
						<td>${tempMembership.address}</td>
						<td>${tempMembership.postCode}</td>
						<td><a class ="btn btn-warning" href="${pageContext.request.contextPath}/membership/showFormForUpdate?membershipId=${tempMembership.id}">Update</a> 
						    <a class="btn btn-danger"  href="${pageContext.request.contextPath}/membership/deleteMembership?membershipId=${tempMembership.id}"
						    onclick="if(!(confirm('Möchten Sie dieses Mitglied wirklich löschen?'))) return false;">Delete</a>
						</td>
					</tr>
				</c:forEach>

			</table>

		</div>
	</div>

</body>
</html>