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
			<a href="/loginsuccess" class="navbar-brand">Fashion Finder</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Account <b class="caret"></b></a>
						<ul class="dropdown-menu multi-level" role="menu"
							aria-labelledby="dropdownMenu">
							<li><a href="/AddiAccount">Add Instagram Account</a></li>
							<li><a href="/AddtAccount">Add Twitter Account</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/AccSettings"><span
									class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/logout"><span
									class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="wrapper" class="">
		<div class="overlay" style="display: none;"></div>
		<div class="col-md-2 navbar navbar-info " id="sidebar-wrapper"
			role="navigation">
			<ul class="nav nav-tabs">
				<li class="active"><a data-toggle="tab" href="#details">Account
						Details</a></li>
				<li><a data-toggle="tab" href="#update">Update Details</a></li>
				<li><a data-toggle="tab" href="#delete">Delete Account</a></li>

			</ul>
		</div>
	</div>
	<div class="col-md-9 tab-content">

		<!-- VIEW ACCOUNT -->
		<div class="tab-pane fade in active text-center" id="details">
			<h3>Your Account Details:</h3>
			<br>
			<div class="text-left">
				<p>Name: ${sessionScope.user.firstName}
					${sessionScope.user.surname}</p>
				<p>Date of Birth: ${sessionScope.user.dob}</p>
				<p>Country: ${sessionScope.user.country}</p>
				<p>Username: ${sessionScope.user.username}</p>
			</div>
		</div>

		<!-- UPDATE ACCOUNT DETAILS -->
		<div class="tab-pane fade text-center" id="update">
			<div class="container text-center">
				<h3>Update Your Account:</h3>
				<hr>
				<form class="form-horizontal" method="post" action="updateUser">
					<input type="hidden" name="id" value="${sessionScope.user.id}" />
					<div class="form-group">
						<div class="col-md-offset-4">
							<label class="col-md-2 control-label">First Name</label>
							<div class="col-md-3 container">
								<input type="text" class="form-control" name="firstName"
									value="${sessionScope.user.firstName}" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4">
							<label class="col-md-2 control-label">Surname</label>
							<div class="col-md-3 container">
								<input type="text" class="form-control" name="surname"
									value="${sessionScope.user.surname}" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4">
							<label class="col-md-2 control-label">Date of Birth</label>
							<div class="col-md-3 container">
								<input type="text" class="form-control" name="dob"
									value="${sessionScope.user.dob}" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4">
							<label class="col-md-2 control-label">Country</label>
							<div class="col-md-3 container">
								<input type="text" class="form-control" name="country"
									value="${sessionScope.user.country}" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="col-md-offset-4">
							<label class="col-md-2 control-label">Username</label>
							<div class="col-md-3 container">
								<input type="text" class="form-control" name="username"
									value="${sessionScope.user.username}" />
							</div>
						</div>
					</div>
					<div class="form-group">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</div>


		<!-- DELETE ACCOUNT -->
		<div class="tab-pane fade text-center" id="delete">
			<h3>Are you sure you want to Delete Your Account?</h3>
			<br>
			<div class="text-left">
				<h4>Your Account Details:</h4>
				<p>Name: ${sessionScope.user.firstName}
					${sessionScope.user.surname}</p>
				<p>Date of Birth: ${sessionScope.user.dob}</p>
				<p>Country: ${sessionScope.user.country}</p>
				<p>Username: ${sessionScope.user.username}</p>
			</div>
			<form class="form-horizontal" method="post" action="deleteUser">
				<div class="form-group">
					<input type="submit" class="btn btn-primary" value="Delete Account" />
				</div>
			</form>
		</div>
	</div>


	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/npm.js"></script>
</body>
</html>