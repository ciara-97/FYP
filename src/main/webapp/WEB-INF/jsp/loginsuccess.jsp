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
						<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
							<li><a href="/AddiAccount"> Add Instagram Account</a></li>
							<li><a href="/AddtAccount"> Add Twitter Account</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/AccSettings"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li role="separator" class="divider"></li>
							<li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
	</div>


	<h3>Welcome ${sessionScope.user.firstName}</h3>

	<script src="static/js/jquery.min.js"></script>
	<script src="static/js/bootstrap.js"></script>
	<script src="static/js/npm.js"></script>
</body>
</html>