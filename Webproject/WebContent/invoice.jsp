<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Contact</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet" href="assets/css/chosen.css">
<link rel="stylesheet" href="assets/css/datepicker.css">
<link rel="stylesheet" href="assets/css/daterangepicker.css">
<link rel="stylesheet" href="assets/css/colorpicker.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
<link rel="stylesheet" href="assets/css/ace.min.css">
<link rel="stylesheet" href="assets/css/ace-skins.min.css">

<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Auto cars Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript">addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);
	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<script src="assets/js/ace-extra.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<%
	String driverName = "com.mysql.jdbc.Driver";
	String userName = "Max";
	String userPasswd = "9403";
	String dbName = "dbproject";
	String tableName = "Product";
	String url = "jdbc:mysql://localhost:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd;
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	Connection connection = DriverManager.getConnection(url);
	Statement statement = connection.createStatement();

	String productID = session.getAttribute("productID").toString();
	out.print("ProductID:" + productID);
	
	
	String sql = "SELECT productID, pName, base_price, addition_rate FROM " + tableName + " where productID = "
			+ "'" + productID + "'";
	ResultSet rs = statement.executeQuery(sql);
	
	
%>
</head>
<body>

	<!-- banner -->
	<div class="banner banner2">
		<div class="container">
			<div class="header">
				<div class="logo">
					<h1>
						<a href="index.html"><img src="images/car.png" alt="" />AUTO
							<span>CARS</span></a>
					</h1>
				</div>

				<div class="clearfix"></div>
			</div>
			<nav class="navbar navbar-default">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"> </span> <span class="icon-bar"> </span> <span
							class="icon-bar"> </span>
					</button>
				</div>
				<div class="collapse navbar-collapse nav-wil"
					id="bs-example-navbar-collapse-1"></div>
			</nav>
		</div>
	</div>
	<!---->
	<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h2>Auto Information</h2>
				<ol class="breadcrumb">
					<li><a href="index.html">Home</a></li>
					<li class="active">Contact</li>
				</ol>
			</div>
			<div class="contact-bottom">

				<div class="contact-text">
					<div class="col-md-3 contact-right">
						<div class="address">
							<h5>Address</h5>
							<p>
								The company name, <span>Lorem ipsum dolor,</span> Glasglow Dr 40
								Fe 72.
							</p>
						</div>
						<div class="address">
							<h5>Address1</h5>
							<p>
								Tel:1115550001, <span>Fax:190-4509-494</span> Email: <a
									href="mailto:example@email.com">contact@example.com</a>
							</p>
						</div>
					</div>
					<div class="col-md-6 contact-left">
						<div class="page-header">
							<h1>
								Order review <small> <i class="icon-double-angle-right"></i>
									Order detail
								</small>
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12"></div>

							<div class="widget-main padding-24">
								<div class="row">
									<div class="col-sm-6">
										<div class="row">
											<div
												class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
												<b>Customer Info</b>
											</div>
										</div>

										<div class="row">

											<ul class="list-unstyled spaced">
												<li><i class="icon-caret-right blue"></i> <%
 	String username = session.getAttribute("username").toString();
 %> Username: <%
 	out.print(username);
 %></li>

												<li><i class="icon-caret-right blue"></i> 15260</li>

												<li><i class="icon-caret-right blue"></i> PA</li>



												<li class="divider"></li>

												<li><i class="icon-caret-right blue"></i> Paymant Info
												</li>
											</ul>
										</div>
									</div>
									<!-- /span -->

									<div class="col-sm-6">
										<div class="row">
											<div
												class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
												<b>Auto Info</b>
											</div>
										</div>

										<div>
											<%
												String licensePlate = session.getAttribute("licensePlate").toString();
												String brand = session.getAttribute("brand").toString();
												String price = session.getAttribute("price").toString();
												String mileage = session.getAttribute("mileage").toString();
											%>
											<ul class="list-unstyled  spaced">
												<li><i class="icon-caret-right green"></i>
													LicensePlate: <%
													out.print(licensePlate);
												%></li>

												<li><i class="icon-caret-right green"></i> Brand:<%
													out.print(brand);
												%></li>

												<li><i class="icon-caret-right green"></i> Price:$ <%
													out.print(price);
												%></li>

												<li class="divider"></li>

												<li><i class="icon-caret-right green"></i> Mileage:<%
													out.print(mileage);
												%></li>
											</ul>
										</div>
									</div>
									<!-- /span -->
								</div>
								<!-- row -->

								<div class="space"></div>

								<div>
									<form action="SubmitOrderAction" method="post">
										<table class="table table-striped table-bordered">
											<thead>
												<tr>
													<th class="center">#</th>
													<th>Product</th>
													<th class="hidden-480">Addition Rate</th>
													<th>Total</th>
												</tr>
											</thead>

											<%
												while (rs.next()) {
											%>
											<tbody>
												<tr>
													<td class="center">
														<%
															out.print(rs.getString(1));
														%>
													</td>
													<td>
														<%
															out.print(rs.getString(2));
														%>
													</td>
													<td>
														<%
															out.print(rs.getString(4));
																session.setAttribute("rate", rs.getString(4));
																
														%>
													</td>
													<td>
														<%
															out.print(rs.getString(3));
																session.setAttribute("total_price", rs.getString(3));
		
														%>
													</td>

												</tr>

												<%
													}
												%>
											</tbody>
										</table>


										<div class="hr hr8 hr-double hr-dotted"></div>

										<div class="row">
											<div class="col-sm-5 pull-right">
												<h4 class="pull-right">
													Total amount : 
													<% 
													out.print("total_price");
													out.print("rate");
													double rate1 = Double.valueOf(session.getAttribute("rate").toString());
													double price1 = Double.valueOf(session.getAttribute("price").toString());
													double baseprice1 = Double.valueOf(session.getAttribute("total_price").toString());
													double final_price =baseprice1 + price1*rate1 ; 
													out.print(final_price);%>
													<%out.print(baseprice1 + price1*rate1); %>
													<span class="red"></span>
												</h4>
											</div>
											<div class="col-sm-7 pull-left">Extra Information</div>
										</div>

										<div class="space-6"></div>
										<div class="well">Thank you for choosing our Company
											products. We believe you will be satisfied by our services.</div>
										<button type="submit" class="btn btn-default">Complete</button>
									</form>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	</div>
	</div>
	<!---->

	<!---->

</body>
</html>