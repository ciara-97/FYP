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
						<ul class="dropdown-menu">
							<li><a href="/AddiAccount">Add Instagram Account</a></li>
							<li><a href="/">Add Twitter Account</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/AccSettings"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>


	<h3>Welcome "${sessionScope.user.firstName}"</h3>


	<div class="container text-center">
		<h2>Add Twitter Account</h2>
		<form class="form-horizontal" method="post" action="AddTwitterAccount">
			<input type="hidden" name="id" value="${instagramAccount.id}" />
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Username</label>
					<div class="col-md-3 container">
						<input type="text" class="form-control" name="username"
							value="${instagramAccount.username}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-offset-4">
					<label class="col-md-2 control-label">Password</label>
					<div class="col-md-3 container">
						<input type="password" class="form-control" name="password"
							value="${instagramAccount.password}" />
					</div>
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Add Account" />
			</div>
		</form>
	</div>
	
	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/npm.js"></script>

</body>
</html>