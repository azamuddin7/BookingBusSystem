<%-- 
Document   : UserThankYou
Created on : Jan 4, 2018, 12:50:34 AM
    Author     : irsya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Bus Ticket Online</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link href="alpha/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="alpha/css/style.css" rel="stylesheet" type="text/css"/>
		<script src="alpha/js/jquery.js" type="text/javascript"></script>
		<script src="alpha/js/bootstrap.min.js" type="text/javascript"></script>
		<!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="alpha/css/main.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
		
		
		
		<style>
			#viewbus {
				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
				border-collapse: collapse;
				width: 100%;
			}
			
			btn-primary {
				color:#fff;background-color:#337ab7;
				border-color:#2e6da4;}
		</style>
	</head>
	<body class="landing">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a class="icon fa-home" href="MainPageUser.jsp"> Home</a></h1>
					<nav id="nav">
						<ul>
							<li>Welcome @user</li>
							<li>
								<a href="#" class="icon fa-angle-down">View Order</a>
								<ul>
									<li><a href="MainPageUser.jsp">Buy Ticket</a></li>
									<li><a href="UserProfile.jsp">My Profile</a></li>
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
				<hr>
					<div class="jumbotron text-xs-center">
						<h1 class="display-3"><strong>Thank You!</strong></h1>
						<p class="lead"><strong>Please print the invoice and claim your rightful ticket at the bus counter.</strong></p>
						<hr>
						<p>
						<strong>Having trouble?</strong> <a href="">Contact us</a>
						</p>
						<p class="lead">
						<a class="btn btn-primary btn-sm" style=" padding-left: 20px; padding-right: 20px; font-size: 21px;" href="MainPageUser.jsp" role="button">Continue to homepage</a>
						</p>
						</div>
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
