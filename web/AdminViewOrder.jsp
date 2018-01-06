<%-- 
    Document   : AdminViewOrder
    Created on : Jan 6, 2018, 10:37:52 PM
    Author     : Harris D.Ilham Adni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bus Ticket Online</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
                                                                        <li><a href="AdminViewOrder.jsp">View Booking</a></li>
									<li><a href="/ManageDataServlet">Manage Booking</a></li>
									<li><a href="AdminProfile.jsp">My Profile</a></li>
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>
                                
                                
            <!-- Banner -->
            <section id="banner">
                    <h2>View Booking</h2>
                    sabaq sat...
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
        
        
    </body>
</html>
