<%-- 
    Document   : UserViewOrder
    Created on : Jan 1, 2018, 5:29:17 PM
    Author     : irsya
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
					<h1><a class="icon fa-home" href="MainPageUser.html"> Home</a></h1>
					<nav id="nav">
						<ul>
							<li>Welcome @user</li>
							<li>
								<a href="#" class="icon fa-angle-down">View Order</a>
								<ul>
									<li><a href="MainPageUser.html">Buy Ticket</a></li>
									<li><a href="UserProfile.html">My Profile</a></li>
								</ul>
							</li>
							<li><a href="HomePage.html" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>VIEW ORDER</h2>
					<hr>
					<a href="#" class="button button-light special" style="float:left; padding-left:20px; margin-left:70px;">BACK TO TICKETING</a>
					<a href="#" class="button button-light special" style="float:right; padding-right:20px; margin-right:70px;">PROCEED TO PAYMENT</a>
					<br>
					<br>
					<table class="icad" style="width:90%; text-align:center; margin-left:70px; margin-right:20px;">">
					  <tr class="icadtr"> 
						<th class="icadth" style="width:25%">BUS</th>
						<th class="icadth" style="width:18%">DEPARTURE</th> 
						<th class="icadth" style="width:18%">DESTINATION</th>
						<th class="icadth" style="width:15%">QUANTITY</th>
						<th class="icadth" style="width:14%">PRICE(RM)</th>
					  </tr>
					  <tr class="icadtr"> 
						<td class="icadth">COURSEWAYLINK</td>
						<td class="icadth">LARKIN SENTRAL</td> 
						<td class="icadth">TERMINAL BERSEPADU SELATAN</td>
						<td class="icadth">1</td>
						<td class="icadth">35.00</td>
					  </tr>
					  <tr class="icadtr"> 
						<td class="icadth"></td>
						<td class="icadth"></td> 
						<td class="icadth"></td>
						<td class="icadth"></td>
						<td class="icadth"></td>
					  </tr>
					  <tr class="icadtr"> 
						<td class="icadth"></td>
						<td class="icadth"></td>
						<td class="icadth"></td>
						<td class="icadth"></td> 
						<td class="icadth"></td>
					  </tr>
					</table>

					<hr style="padding-top:30px;">
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
						<li>&copy; Untitled. All rights reserved.</li><li>Design by: <a href="HomePage.html">Boys</a></li>
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
