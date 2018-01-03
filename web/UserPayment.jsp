<%-- 
    Document   : UserPayment
    Created on : Jan 4, 2018, 12:47:14 AM
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
							<li><a href="logout.html" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>PAYMENT</h2>
					<hr>
					<br>
					<div style="background-color:white;width: 500px;height: 500px;margin-left: 450px;">
						<img src="images/card.png" style="width: 250px;margin-top: 25px;">
						<div style="border-radius: 5px;background-color: #f2f2f2;padding: 20px;margin-left: 100px;margin-right: 100px;height: 390px;">
						<form method="post" action="UserThankYou" style="width: 500px;height: 450px; text-align:left;">
							<div>
								<h2 style=" margin-bottom: 3px; padding-top:20px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #777;">Card Number</h2>
								<input name="cardNo" style="color:black; width:250px; height:31px; padding-bottom:0px; border-top-width:1px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px;">
								<h3 style=" margin-bottom: 3px; padding-top:5px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #777;">Name On Card</h3>
								<input name="cardName" style="color:black; width:250px; height:31px; padding-bottom:0px; border-top-width:1px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px;">
								<h3 style=" margin-bottom: 3px; padding-top:5px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #777;">Expiry Date</h3>
								<input name="cardExpiry" placeholder="dd/mm" style="color:black; width:250px; height:31px; padding-bottom:0px; border-top-width:1px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px;">
								<h3 style=" margin-bottom: 3px; padding-top:5px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #777;">CCV / CVV</h3>
								<input name="cardCVV" style="color:black; width:250px; height:31px; padding-bottom:0px; border-top-width:1px; border-right-width:1px; border-bottom-width:1px; border-left-width:1px;">
							<br><br>
							
								<input type="submit" class="btn btn-primary" style="background-color:#777;margin-left: 35px;border-bottom-width: 20px;" value="PAY"/>
                                                
							</div>
							
						</form></div>
					</div>
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
