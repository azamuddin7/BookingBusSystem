<%-- 
    Document   : SearchBus
    Created on : Jan 1, 2018, 4:46:51 PM
    Author     : irsya
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
        <style>
            #viewbus {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;

            }

            #viewbus td, #viewbus th {
                border: 1px solid #ddd;
                padding: 8px;
                color: black;
            }

            #viewbus tr:nth-child(even){background-color: #f2f2f2;}

            #viewbus tr:hover {background-color: #ddd;}

            #viewbus th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #33919e;
                color: white;
            }
        </style>

        <title>Bus Ticket Online</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <!--[if lte IE 8]><script src="alpha/js/ie/html5shiv.js"></script><![endif]-->
        <link rel="stylesheet" href="alpha/css/main.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->

    </head>
    <body class="landing">
        <div id="page-wrapper">
            <c:if test="${sessionScope.memberprofile == null}">
                <c:redirect url="index.html"/>
            </c:if>
            <!-- Header -->
            <header id="header" class="alt">
                <h1><a class="icon fa-home" href="MainPageUser.jsp"> Home</a></h1>
                <nav id="nav">
                    <ul>
                        <li>Welcome @${sessionScope.memberprofile.getFullName()}</li>
                        <li>
                            <a href="#" class="icon fa-angle-down">Search Bus</a>
                            <ul>
                                <li><a href="UserViewOrder">View Order</a></li>
                                <li><a href="UserProfile.jsp">My Profile</a></li>

                            </ul>
                        </li>
                        <li><a href="logout.jsp" class="button">Log Out</a></li>
                    </ul>
                </nav>
            </header>

            <!-- Banner -->
            <section id="banner">
                <h2>View Bus</h2>
                <hr>

                <table id="viewbus">
                    <tr>
                        <th>Operator</th>
                        <th>Departure Time</th>
                        <th>Pickup</th> 
                        <th>Dropoff</th>
                        <th>Price</th>
                        <th>
                    </tr>
                    
                    <c:forEach items="${sessionScope.searchbus}" var="currentbus" varStatus="loop">
                        <tr>
                            <td>${currentbus.operator}</td>
                            <td>${currentbus.dtime}</td>
                            <td>${currentbus.pickup}</td>
                            <td>${currentbus.dropoff}</td>
                            <td>${currentbus.id}</td>
                            <c:url value="/UserSeatBus.jsp" var="displayURLSelect">
                                <c:param name="id"   value="${currentbus.id}" />
                            </c:url>
                            <td><a href="<c:out value='${displayURLSelect}' />">Select</a></td>
                        </tr>
                    </c:forEach>


                </table>
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
