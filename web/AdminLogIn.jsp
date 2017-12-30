<%-- 
    Document   : AdminHomePage
    Created on : Dec 30, 2017, 9:57:31 PM
    Author     : Ahmad Azamuddin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Bus Ticket Online</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="alpha/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
	</head>
	<body class="landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a href="index.html">Bus Booking System</a> by Boys</h1>
					<nav id="nav">
						<ul>
							<li><a class="icon fa-home" href="index.html">Home</a></li>
							<li>
								<a href="#" class="icon fa-angle-down">Admin</a>
								<ul>
									<li><a href="index.html">User</a></li>
									<li><a href="AdminHomePage.jsp">Admin</a></li>
								</ul>
							</li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>Welcome to bus ticket booking system !</h2>
					<hr>
						<h3>Admin Sign In</h3>
						<form method="post" action="AdminLogin">
							<div>
								<div>
									<input type="text" name="username" id="username" value="" placeholder="Enter Username: " />
								</div>
								<br>
								<div>
									<input type="password" name="password" id="password" value="" placeholder="Enter Password: " />
								</div>
							<div>
								<br>
								<input type="submit" class="button" value="Sign In"/>
								</div>
							</div>
						</form>
					<hr>
				</section>
				
			<!-- Footer -->
				<footer id="footer">
					<ul class="icons">
						<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
						<li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
						<li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
					</ul>
					<ul class="copyright">
						<li>&copy; Untitled. All rights reserved.</li><li>Design by: <a href="index.html">Boys</a></li>
					</ul>
				</footer>
	
		<!-- Scripts -->
			<script src="alpha/js/jquery.min.js"></script>
			<script src="alpha/js/jquery.dropotron.min.js"></script>
			<script src="alpha/js/jquery.scrollgress.min.js"></script>
			<script src="alpha/js/skel.min.js"></script>
			<script src="alpha/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="alpha/js/main.js"></script>

	</body>
</html>
