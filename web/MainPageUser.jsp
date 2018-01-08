<%-- 
    Document   : MainPageUser
    Created on : Dec 30, 2017, 10:08:09 PM
    Author     : Ahmad Azamuddin
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
        <link rel="stylesheet" href="alpha/css/font-awesome.min.css" />
        <!--[if lte IE 8]><link rel="stylesheet" href="alpha/css/ie8.css" /><![endif]-->
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>

    </head>
    <body class="landing">
        <div id="page-wrapper">

            <!-- Header -->
            <header id="header" class="alt">
                <h1><a class="icon fa-home" href="MainPageUser.jsp"> Home</a></h1>
                <nav id="nav">
                    <ul>
                        <li>Welcome @${sessionScope.memberprofile.getFullName()}</li>
                        <li>
                            <a href="#" class="icon fa-angle-down">Buy Ticket</a>
                            <ul>
                                <li><a href="UserViewOrder">View Order</a></li>
                                <li><a href="UserProfile.jsp">My Profile</a></li>

                            </ul>
                        </li>
                        <li><a href="logout.jsp" class="button">Log Out</a></li>
                    </ul>
                </nav>
            </header>
        </div>
        <!-- Banner -->
        <section id="banner">
            <div style=" background:#ffffff; background-color: rgba(255,255,255,0.5); width:650px; height: 475px; margin:0 auto;">
                <h2 style="padding-top:10px; text-align: center;font-size: 3em;margin-bottom: 10px;text-transform: uppercase;font-weight: bold; color: #333;">Book Your Ticket !</h2>
                <hr>


                <form class="form-horizontal" action="SearchBus" method="post" >
                <h3 style=" padding-top:5px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #333;">DEPARTURE FROM</h3>
                
                    <div>
                        <select class="form-control" id="searchbus" name="searchbusid" required>
                            <c:forEach items="${sessionScope.pickup}" var="pickup" varStatus="loop">
                               <%-- <c:if test="${searchbus.status == 'active'}"> --%>
                                    <option value="${pickup}">${pickup}</option>
                               <%-- </c:if>--%>
                            </c:forEach>
                        </select>

                    </div>

                    <h3 style=" padding-top:10px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #333;">ARRIVAL TO</h3>
                    <div>
                        <select class="form-control" id="searchbus" name="searchbusid" required>
                            <c:forEach items="${sessionScope.dropoff}" var="dropoff" varStatus="loop">
                              <%--  <c:if test="${searchbus.status == 'active'}"> --%>
                                    <option value="${dropoff}">${dropoff}</option>
                              <%--  </c:if> --%>
                            </c:forEach>
                        </select>
                    </div>

                    <div>
                        <h3 style=" padding-top:20  px; font-family: 'Open Sans Condensed', sans-serif; font-size: 20px; color: #333;">DEPARTURE DATE</h3>
                        <input type="date" min="" name="date" id= "datepicker" class="fa fa-calendar fa-lg" aria-hidden="true"></i>
                    </div>
                    <div>
                        <br>
                        <input type="submit" class="button special icon fa-search" value="SEARCH BUSSES"/>
                    </div>
                    </form>
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
