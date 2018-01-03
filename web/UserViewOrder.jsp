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
					<h2>VIEW ORDER</h2>
					<hr>
					<a href="#" class="button button-light special" style="float:left; padding-left:20px; margin-left:70px;">BACK TO TICKETING</a>
					<button type="button" class="button button-light special" style="float:left; padding-left:20px; margin-left:800px; padding-right:20px;" data-toggle="modal" data-target=".demo-popup">PROCEED TO PAYMENT</button>
					<br>
					<br>
					<br>
					<table class="icad" style="width:90%; text-align:center; margin-left:70px; margin-right:20px;">
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
				
				<div class="modal fade demo-popup" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel-1" aria-hidden="true">
				<div class="modal-dialog" style="width:400px; margin-right:400px; margin-top:200px; margin-left:500px; ">
				<div class="modal-content" style=" width: 402px; height: 152px;">
				<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button> <h3 class="modal-title">Payment</h3>
				</div>
				<div class="modal-body">
					<form action="UserPayment" style="margin-right:0px; margin-left:0px; width:370px; height:50px;">
							<input type="submit" class="btn btn-primary" style="margin-left:65px;" value="Debit">
							<input type="submit" class="btn btn-primary" style="margin-left:30px;" value="Online Banking">
					</form>

					
				</div>
				</div><!-- /.modal-content -->
				</div><!-- /.modal-dialog -->
				</div><!-- /.modal-->
				<!-- popup box modal ends -->		
				
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
