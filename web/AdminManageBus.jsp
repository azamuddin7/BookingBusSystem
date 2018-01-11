<%-- 
    Document   : AdminManageBus
    Created on : Jan 2, 2018, 10:52:17 AM
    Author     : Sufi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="bean.User" %>
<%@ page import="bean.SetBus" %>
<%@ page import="java.util.ArrayList" %>

<c:if test="${sessionScope.memberprofile == null}">
    <% response.sendRedirect(request.getContextPath() + "/terminate.html"); %>
</c:if>
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
							<li>Welcome ${sessionScope.memberprofile.getFullName()}</li>
							<li>
								<a href="#" class="icon fa-angle-down">Manage Bus</a>
								<ul>
                                                                        <li><a href="AdminViewOrderServlet">View Booking</a></li>
									<li><a href="AdminProfile.jsp">My Profile</a></li>
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
    <section id="banner">
       
            <h2>Bus Management</h2>

            <hr>
                <div class="table-responsive">
                <table width="80%">
                    <thead>
                        <tr>
                            <th>Index</th>
                            <th>Operator</th>
                            <th>Departure Time</th>
                            <th>Pickup Point</th>
                            <th>Drop Off</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${sessionScope.buslist}" var="currentbus" varStatus="loop">
                        <tr>
                            <th><c:out value="${loop.index + 1}" /></th>
                            
                            <c:url value="/EditBusServlet" var="displayURLEdit">
                                <c:param name="id"   value="${currentbus.id}" ></c:param>
                            </c:url>
                            
                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentbus.operator}" /></a></th>   <!-- operator-->
                            
                            
                           <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentbus.dtime}" /></a></th>     <!--dtime-->
                           
                            
                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentbus.pickup}" /></a></th>     <!-- pickup-->
                           
                            
                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentbus.dropoff}" /></a></th>     <!-- dropoff-->
                            
                            
                            <th><a href="<c:out value='${displayURLEdit}' />"><c:out value="${currentbus.price}" /></a></th>     <!-- price-->
                            
                            
                            
                            
                            <c:if test="${currentbus.status == 'active'}">
                                <c:url value="/DeactiveBusServlet" var="displayURLDeactive">
                                    <c:param name="id"   value="${currentbus.id}" />
                                </c:url>
                                <th><a href="<c:out value='${displayURLDeactive}' />"><c:out value="${currentbus.status}" /></a></th>
                            </c:if>
                                
                            <c:if test="${currentbus.status == 'deactive'}">
                                <c:url value="/ActiveBusServlet" var="displayURLActive">
                                    <c:param name="id"   value="${currentbus.id}" />
                                </c:url>
                                <th><a href="<c:out value='${displayURLActive}' />"><c:out value="${currentbus.status}" /></a></th>
                            </c:if>
                            
                            <c:url value="/DeleteBusServlet" var="displayURLDelete">
                                <c:param name="id"   value="${currentbus.id}" />
                            </c:url>
                            <th><a href="<c:out value='${displayURLDelete}' />">Delete</a></th>
                        </tr>
                        </c:forEach>
                    </tbody> 
                </table>    
            </div> <!-- table-responsive -->              
            <hr>
            <br><br><br>
            <h2>Add New Bus</h2>
                <form action="/BookingBusSystem/AddBusServlet" method="post">
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
