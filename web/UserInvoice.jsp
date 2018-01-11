<%-- 
    Document   : UserPayment
    Created on : Jan 4, 2018, 12:47:14 AM
    Author     : irsya
--%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
		<link rel="stylesheet" href="alpha/css/normalize.css">
		<link rel="stylesheet" href="alpha/css/loading.css">

                <style type="text/css">
			.back-link a {
				color: #4ca340;
				text-decoration: none; 
				border-bottom: 1px #4ca340 solid;
			}
			.back-link a:hover,
			.back-link a:focus {
				color: #408536; 
				text-decoration: none;
				border-bottom: 1px #408536 solid;
			}
			h1 {
				height: 100%;
				/* The html and body elements cannot have any padding or margin. */
				margin: 0;
				font-size: 14px;
				font-family: 'Open Sans', sans-serif;
				font-size: 32px;
				margin-bottom: 3px;
			}
			.entry-header {
				text-align: left;
				margin: 0 auto 50px auto;
				width: 80%;
				max-width: 978px;
				position: relative;
				z-index: 10001;
			}
			#demo-content {
				padding-top: 100px;
			}
                        
                        .invoice-title h2, .invoice-title h3 {
                        display: inline-block;
                        }

                        .table > tbody > tr > .no-line {
                            border-top: none;
                        }

                        .table > thead > tr > .no-line {
                            border-bottom: none;
                        }

                        .table > tbody > tr > .thick-line {
                            border-top: 2px solid;
                        }
		</style>
	</head>
	<body class="landing loaded">
            <c:if test="${sessionScope.memberprofile == null}">
                <c:redirect url="index.html"/>
            </c:if>
		<div id="page-wrapper dvContainer" style="height: 800px;">

			<!-- Header -->
				<header id="header" class="alt">
					<h1><a class="icon fa-home" href="MainPageUser.jsp"> Home</a></h1>
					<nav id="nav">
						<ul>
							<li>Welcome @${sessionScope.memberprofile.getFullName()}</li>
							<li>
								<a href="#" class="icon fa-angle-down">View Invoice</a>
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
				<section id="banner">
					<h2>Invoice</h2>
					<hr>
					<br>
                                        <div class="container printableArea">
                                        <div class="row">
                                            <div class="col-xs-12">
                                                    <div class="row">
                                                        <div class="col-xs-2" style="text-align:left;width: 234.6667px;">
                                                                    <address>
                                                                        <strong style="color:white;">Payment Method:</strong><br>
                                                                            Visa ending **** 4242<br>
                                                                            test@gmail.com
                                                                    </address>
                                                            </div>
                                                            <div class="col-xs-2 text-right" style="margin-left: 635px;">
                                                                    <address>
                                                                            <strong style="color:white;">Order Date:</strong><br>
                                                                            January 10, 2018<br><br>
                                                                    </address>
                                                            </div>
                                                    </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                    <div class="panel panel-default">
                                                            <div class="panel-heading">
                                                                    <h3 class="panel-title"><strong>ORDER SUMMARY</strong></h3>
                                                            </div>
                                                            <div class="panel-body">
                                                                    <div class="table-responsive">
                                                                            <table class="table table-condensed" action="UserInvoice">
                                                                                    <thead>
                                                                    <tr>
                                                                        <td class="text-left"><strong>Operator</strong></td>
                                                                        <td class="text-center"><strong>Seat</strong></td>
                                                                        <td class="text-center"><strong>Departure</strong></td>
                                                                        <td class="text-center"><strong>Pickup</strong></td>
                                                                        <td class="text-center"><strong>Drop Off</strong></td>
                                                                        <td class="text-center"><strong>Price</strong></td>
                                                                    </tr>
                                                                        </thead>
                                                                    <tbody>
                                                                            <!-- foreach ($order->lineItems as $line) or some such thing here -->
                                                                    <tr>
                                                                            <td class="col-md-2 text-left"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                    </tr>
                                                                    <tr>
                                                                            <td class="col-md-2 text-left"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                    </tr>
                                                                    <tr>
                                                                            <td class="col-md-2 text-left"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-2 text-center"></td>
                                                                            <td class="col-md-1 text-center"></td>
                                                                    </tr>
                                                                    <tr>
                                                                            <td class="thick-line"></td>
                                                                            <td class="thick-line"></td>
                                                                            <td class="thick-line"></td>
                                                                            <td class="thick-line"></td>
                                                                            <td class="thick-line text-right"><strong>Subtotal: RM</strong></td>
                                                                            <td class="thick-line text-center"></td>
                                                                    </tr>
                                                                    <tr>
                                                                            <td class="no-line"></td>
                                                                            <td class="no-line"></td>
                                                                            <td class="no-line"></td>
                                                                            <td class="no-line"></td>
                                                                            <td class="no-line text-right"><strong>Total: RM</strong></td>
                                                                            <td class="no-line text-center"></td>
                                                                    </tr>
                                                                    </tbody>
                                                            </table>
                                                    </div> 
                                            </div>
                                            </div><input type="submit" class="button button-light special" value="PRINT" style=" border-left-width: 100px; margin-left: 480px; onClick="window.print()"/><a href="UserThankYou.jsp" class="button button-light special" style="float:right;">CONTINUE</a>
                                            </div>
                                            </div>
                                            <nav class="back-link">
                                                    <span class="nav-previous"></span>
                                            </nav><!-- .nav-single -->
                                                <div id="loader-wrapper">
							<div id="loader"></div>
                                                                <div class="loader-section section-left"></div>
                                                                <div class="loader-section section-right"></div>
						</div>
                                        </div>
				</section>
			</div>
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
			<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script>window.jQuery || document.write('<script src="alpha/js/jquery-1.9.1.min.js"><\/script>')</script>
			<script src="alpha/js/loading.js"></script>
	</body>
</html>
