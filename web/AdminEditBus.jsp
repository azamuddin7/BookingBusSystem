<%-- 
    Document   : AdminEditBus
    Created on : Jan 5, 2018, 2:24:42 AM
    Author     : Sufi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.SetBus" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                    <section id ="banner">
                        <h2>Edit Bus</h2>
                            <form  action="/BookingBusSystem/EditBusProcessServlet" method="post"> 
                                            
                                <fieldset>

                                    <p>Operator</p>
                                    <input  id="operator" name="operator" value="<jsp:getProperty name="busedit" property="operator"/>" type="text" required>

                                    <p>Departure Time</p>
                                    <input  id="dtime" name="dtime" value="<jsp:getProperty name="busedit" property="dtime"/>" type="text" required>

                                    <p>Pickup Point</p>
                                    <input  id="pickup" name="pickup" value="<jsp:getProperty name="busedit" property="pickup"/>" type="text" required>

                                    <p>Drop Off</p>
                                    <input  id="dropoff" name="dropoff" value="<jsp:getProperty name="busedit" property="dropoff"/>" type="text" required>

                                    <p>Price</p>
                                    <input  id="price" name="price" value="<jsp:getProperty name="busedit" property="price"/>" type="number" required>

                                    <br>
                                    <input type="hidden" name="id" value="<jsp:getProperty name="busedit" property="id"/>">
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
