<%-- 
    Document   : AdminProfile
    Created on : Jan 2, 2018, 2:22:10 AM
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
					<h1><a class="icon fa-home" href="MainPageAdmin.jsp"> Home</a></h1>
					<nav id="nav">
						<ul>
							<li>Welcome @${sessionScope.memberprofile.getFullName()}</li>
							<li>
								<a href="#" class="icon fa-angle-down">My Profile</a>
								<ul>
                                                                        <li><a href="AdminViewOrderServlet">View Booking</a></li>
									<li><a href="MainPageAdmin.html">Manage Booking</a></li>
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>My Profile</h2>
					<hr>
						<img src ="${sessionScope.memberprofile.getImage()}" width ="150">
                                                <form method="post" action="AdminUpdateProfileServlet" style=" width: 100%;">
						<table style=" background:#ffffff; background-color:rgb(0, 153, 204); width:650px; height: 205px; margin:0 auto; color: #black">
							<tr>
							<td><b><p>My Full Name</p>
							<td><b><input type="text" name="fullname" id="fullname" value="${sessionScope.memberprofile.getFullName()}" />
							</tr>
							
							<tr>
							<td><b><p>Username</p>
							<td><b><input type="text" name="username" id="username" value="${sessionScope.memberprofile.getUsername()}" readonly />
							</tr>
						
							<tr>
							<td><b><p>Password</p>
							<td><b><input type="text" name="password" id="password" value="${sessionScope.memberprofile.getPassword()}"/>
							</tr>
						</table>
                                                        <input class="button alt icon fa-check" style ="background-color: white;color: black; border: 2px solid #4CAF50; " type="submit" class="button" value="Update"/>
                                                </form>
						<br>
                                                
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
						<li>&copy; Untitled. All rights reserved.</li><li>Design by: <a href="MainPageAdmin.jsp">Boys</a></li>
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
