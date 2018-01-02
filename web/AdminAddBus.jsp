<%-- 
    Document   : AdminAddBus
    Created on : Jan 2, 2018, 12:41:08 PM
    Author     : Sufi
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
								<a href="#" class="icon fa-angle-down">Manage Bus</a>
								<ul>
                                                                        <li><a href="AdminViewOrder.html">View Booking</a></li>
									<li><a href="MainPageAdmin.jsp">Manage Booking</a></li>
									<li><a href="AdminProfile.jsp">My Profile</a></li>
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
                        <section id="banner">
                                <h2>Add New Bus</h2>
                                <form action="RegisterBusServlet" method="post">
                                <fieldset>
                                    
                                    <p>Operator</p>
                                    <input  id="operator" name="operator" placeholder="Operator Name" type="text" required>

                                    <p>Departure Time</p>
                                    <input id="dtime" name="dtime" placeholder="Departure Time" type="text" required>
                                    
                                    <p>Pickup Point</p>
                                    <input id="pickup" name="pickup" placeholder="Pickup Point" type="text" required>
                                    
                                    <p>Drop Off</p>
                                    <input id="dropoff" name="dropoff" placeholder="Drop Off" type="text" required>
                                    
                                    <p>Price</p>
                                    <input id="price"name="price" placeholder="Price" type="number" required>
                                    
                                    <br>
                                    <button class="button">Cancel</button>
                                    <button type="submit" class="button">Submit</button>
                                    
                                </fieldset>
                              </form>


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
