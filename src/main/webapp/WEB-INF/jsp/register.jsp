<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fashion Finder</title>
</head>
<link href=static/css/bootstrap.min.css rel="stylesheet">
<link href=static/css/bootstrap-theme.css rel="stylesheet">
<link href=static/css/bootstrap-theme.min.css rel="stylesheet">
<link href=static/css/bootstrap.css rel="stylesheet">
<body class="bg-info text-dark">

	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Fashion Finder</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="/register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				</ul>
			</div>
		</div>
	</div>



	<div class="container text-center">
		<h2>Sign Up now for Free</h2>
		<hr>
		<form class="form-horizontal" method="post" action="addUser">
			<input type="hidden" name="id" value="${user.id}" />
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">First Name</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="firstName"
							value="${user.firstName}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Surname</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="surname"
							value="${user.surname}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Date of Birth</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="dob"
							value="${user.dob}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Country</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="country"
							value="${user.country}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Username</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="username"
							value="${user.username}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Password</label>
					<div class="col-md-3 container">
						<input type="password" class="form-control" name="password"
							value="${user.password}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
		</form>
	</div>
	
	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/npm.js"></script>
</body>
</html>