<%-- 
    Document   : AdminAnalysis
    Created on : Jan 13, 2018, 12:29:59 AM
    Author     : Sufi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="bean.RequestBus" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
            <section id="banner" style="padding-bottom: 70px;">
                <h2>VIEW ORDER</h2>
                <hr>
                <br>
                <div class="container">
                    <div class="row">
                        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3" style="padding-left: 35px; margin-left: 110px; width: 852px;"> 
                            <div class="row">
                                <div class="text-center" style="padding-left: 372px;padding-right: 372px; padding-bottom: 10px;">
                                    <h1>RECEIPT</h1>
                                </div>
                                </span>
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th class="text-center">Operator</th>
                                            <th class="text-center">Seat</th>
                                            <th class="text-center">Departure</th>
                                            <th class="text-center">Pickup</th>
                                            <th class="text-center">Drop Off</th>
                                            <th class="text-center">Price</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach items="${sessionScope.bookingU}" var="bookU" varStatus="loop">

                                            <tr>
                                                <td style="color:black"><c:out value="${bookU.operator}"/></td>
                                                <td style="color:black"><c:out value="${bookU.seat}"/></td>
                                                <td style="color:black"><c:out value="time"/></td>
                                                <td style="color:black"><c:out value="${bookU.pickup}"/></td>
                                                <td style="color:black"><c:out value="${bookU.dropoff}"/></td>
                                                <td style="color:black"><c:out value="${bookU.price}"/></td>
                                            </tr>

                                        </c:forEach>
                                        <tr>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td></td>
                                            <td class="text-right"><h4><strong>Total: RM <c:out value="${sessionScope.total}"/></strong></h4></td>
                                            <td class="text-center text-danger"><strong></strong></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                        <a href="#" class="button button-light special" style="float:left;padding-left:20px;margin-left: 300px;padding-right: 20px;">BACK TO TICKETING</a>
                        <button type="button" class="button button-light special" style="float:left;padding-left:20px;margin-left: 50px;padding-right:20px;" data-toggle="modal" data-target=".demo-popup">PROCEED TO PAYMENT</button>
                    </div>
                </div>        
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

