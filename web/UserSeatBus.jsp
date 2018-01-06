<%-- 
    Document   : UserSeatBus
    Created on : Jan 1, 2018, 5:07:38 PM
    Author     : Akmal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<style>
			#seattable {
				font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
				border-collapse: collapse;
				width: 100%;
			}

			#seattable td, #viewbus th {
				border: 1px solid #ddd;
				padding: 8px;
				color: black;
			}

			#seattable tr:nth-child(even){background-color: #f2f2f2;}

			#seattable tr:hover {background-color: #ddd;}

			#seattable th {
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

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a class="icon fa-home" href="MainPageUser.html"> Home</a></h1>
					<nav id="nav">
						<ul>
							<li>Welcome @user</li>
							<li>
								<a href="#" class="icon fa-angle-down">Seat</a>
								<ul>
									<li><a href="UserViewOrder.jsp">View Order</a></li>
									<li><a href="UserProfile.jsp">My Profile</a></li>
									
								</ul>
							</li>
							<li><a href="logout.jsp" class="button">Log Out</a></li>
						</ul>
					</nav>
				</header>

			<!-- Banner -->
				<section id="banner">
					<h2>Select Your Seat</h2>
					<hr>
                                       
                                        <table id="seattable">
                                            <form action ="/BookingBusSystem/UserSeatBusServlet" method ="get">
                                                <table>
                                                    <tr>
                                                        <td rowspan="4" style ="background-color: white;color: black; border: solid #000000;" >FRONT</td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="1C" id="1C" />
                                                            <label for="1C">1C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="2C" id="2C" />
                                                            <label for="2C">2C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="3C" id="3C" />
                                                            <label for="3C">3C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="4C" id="4C" />
                                                            <label for="4C">4C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="5C" id="5C" />
                                                            <label for="5C">5C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="6C" id="6C" />
                                                            <label for="6C">6C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="7C" id="7C" />
                                                            <label for="7C">7C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="8C" id="8C" />
                                                            <label for="8C">8C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="9C" id="9C" />
                                                            <label for="9C">9C</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="10C" id="10C" />
                                                            <label for="10C">10C</label>
                                                        </td>
                                                        <td rowspan="4" style ="background-color: white;color: black; border: solid #000000;" >BACK</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="1B" id="1B" />
                                                            <label for="1B">1B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="2B" id="2B" />
                                                            <label for="2B">2B</label>
                                                        </td>
                                                        <td class="seat">
                                                            <input type="checkbox" name= "seat" value ="3B" id="3B" />
                                                            <label for="3B">3B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="4B" id="4B" />
                                                            <label for="4B">4B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="5B" id="5B" />
                                                            <label for="5B">5B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="6B" id="6B" />
                                                            <label for="6B">6B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="7B" id="7B" />
                                                            <label for="7B">7B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="8B" id="8B" />
                                                            <label for="8B">8B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="9B" id="9B" />
                                                            <label for="9B">9B</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="10B" id="10B" />
                                                            <label for="10B">10B</label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                    </tr>
                                                    <tr>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="1A" id="1A" />
                                                            <label for="1A">1A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="2A" id="2A" />
                                                            <label for="2A">2A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="3A" id="3A" />
                                                            <label for="3A">3A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="4A" id="4A" />
                                                            <label for="4A">4A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="5A" id="5A" />
                                                            <label for="5A">5A</label>
                                                        </td\>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="6A" id="6A" />
                                                            <label for="6A">6A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="7A" id="7A" />
                                                            <label for="7A">7A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="8A" id="8A" />
                                                            <label for="8A">8A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="9A" id="9A" />
                                                            <label for="9A">9A</label>
                                                        </td>
                                                        <td class="seats">
                                                            <input type="checkbox" name= "seat" value ="10A" id="10A" />
                                                            <label for="10A">10A</label>
                                                        </td>	
                                                    </tr>
                                                    <tr>


                                                    </tr>

                                                </table>
                                                <br>
                                                <a href="/BookingBusSystem/SearchBus">Cancel</a>
                                                <input type="hidden" name="busId" value="<%= request.getParameter("busId") %>"/>
                                                <button type="submit" class="button">Submit</button> 
                                            </form>
                                        </table>
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
