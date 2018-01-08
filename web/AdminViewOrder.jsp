<%-- 
    Document   : AdminViewOrder
    Created on : Jan 6, 2018, 10:37:52 PM
    Author     : Harris D.Ilham Adni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.RequestBus" %>
<%@ page import="java.util.ArrayList" %>
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
                                    <a href="#" class="icon fa-angle-down">View Booking</a>
                                    <ul>
                                            <li><a href="AdminAddBus.jsp">Manage Bus</a></li>
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
                    <h2>View Booking</h2>
                    
                    <hr>
                    
                    <table>
                        <tr>
                            <th style="text-align:center">Booking ID</th>
                            <th style="text-align:center">User</th>
                            <th style="text-align:center">Bus ID</th> 
                            <th style="text-align:center">Bus Operator</th>
                            <th style="text-align:center">Departure</th>
                            <th style="text-align:center">Arrival</th>
                            <th style="text-align:center">Price</th>
                        </tr>
                        
                        <!--booking items-->
                        <c:forEach items="${sessionScope.bookingA}" var="book" varStatus="loop">                    
                            
                            <tr>
                                <td style="color:black"><c:out value="${book.bookid}"/></td>
                                <td style="color:black"><c:out value="${book.username}"/></td>
                                <td style="color:black"><c:out value="${book.id}"/></td>
                                <td style="color:black"><c:out value="${book.operator}"/></td>
                                <td style="color:black"><c:out value="${book.pickup}"/></td>
                                <td style="color:black"><c:out value="${book.dropoff}"/></td>
                                <td style="color:black"><c:out value="${book.price}"/></td>
                            </tr>
                        
                        </c:forEach>
                        
                    </table>
                    
                    
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
