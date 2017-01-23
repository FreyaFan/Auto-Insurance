<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="DB.CustomerDAO,Entity.Customer2"%>
<%@page import="DB.OrderDAO,Entity.Order2"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.PrintWriter" %>
<%@ page import = "java.io.IOException"%>
<%@ page import="Entity.Sale"%>
<%@ page import= "javax.servlet.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Customer</title>
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
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300">
<link rel="stylesheet" href="assets/css/ace.min.css">
<link rel="stylesheet" href="assets/css/ace-skins.min.css">

<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Auto cars Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="assets/js/ace-extra.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>

</head>
<body>
<!-- banner -->
<div class="banner banner2">
	 <div class="container">
	     <div class="header">
			 <div class="logo">
				 <h1><a href="index.html"><img src="images/car.png" alt=""/>CAR <span>INSURANCE</span></a></h1>
			 </div>

			 <div class="clearfix"></div>
		 </div>
		 <nav class="navbar navbar-default">
			 <div class="navbar-header">
					  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
						<span class="icon-bar"> </span>
					  </button>
			 </div>
			 <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
				  <ul class="nav navbar-nav">
					<li><a href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
				  </ul>
			 </div>
	      </nav>					
	 </div>
</div>
<!---->
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h2>Personal information</h2>
			</div>
</div>						

<div class="contact-bottom">
				<div class="contact-text">
					<div class="col-md-6 contact-left">
						<div class="row">
						<div class="col-xs-12"></div>
  						<div class="form-group">
   		 				<label for="exampleInputEmail1">1. Personal information:</label>
  						<table id="sample-table-1" class="table table-striped table-bordered table-hover">
                        <%
                           CustomerDAO dao1=new CustomerDAO();
                           List<Customer2> list =dao1.readFirstCustomer(request); 
                           for(Customer2 tl:list){%>
                           <tr>
                           <td>First Name</td>
                           <td><%=tl.getFname() %></td>
                           </tr>
                           <tr>
                           <td>Last Name</td>
                           <td><%=tl.getLname() %></td>
                           </tr>
                           <tr>
                           <td>Gender</td>
                           <td><%=tl.getGender() %></td>
                           </tr>
                           <tr>
                           <td>Email</td>
                           <td><%=tl.getEmail() %></td>
                           </tr>
                           <tr>
                           <td>User Name</td>
                           <td><%=tl.getName() %></td>
                           </tr>
                           <tr>
                           <td>Password</td>
                           <td><%=tl.getPassword() %></td>
                           </tr>
                           <%}
                         %>
                        </table>
                        <form action="change.jsp" method="post">
                        <button type="submit" class="btn btn-default">Change your information</button>
                        </form>
                        <label for="exampleInputEmail1">2. Order review</label>
                        <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                        <tr>
                        <td>TransactionNumber</td>
                        <td>LicensePlate</td>
                        <td>Product</td>
                        <td>agent</td>
                        <td>Date</td>
                        <td>Total Price</td>
                        </tr>
                        <%
                           OrderDAO dao2=new OrderDAO();
                           List<Order2> list2 =dao2.readFirstOrder(request); 
                           for(Order2 tl:list2){%>
                           <tr>
                           <td><%=tl.getTn() %></td>
                           <td><%=tl.getLp() %></td>
                           <td><%=tl.getPID() %></td>
                           <td><%=tl.getAID() %></td>
                           <td><%=tl.getDate() %></td>
                           <td><%=tl.getTp() %></td>
	                       </tr>                     
                           <%}
                         %>
                        </table>
                        </div>
						</div>
  					</div>
				</div>
			</div>
		</div>

</body>
</html>
