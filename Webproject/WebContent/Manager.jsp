<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Manager</title>
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
					<li><a href="products.jsp">Products</a></li>
					<li><a href="agent.jsp">Agents</a></li>
					<li class="active"><a href="Manager.jsp">Manager <span class="sr-only">(current)</span></a></li>
				  </ul>
			 </div>
	      </nav>					
	 </div>
</div>
<!---->
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h2>Manager Login</h2>
			</div>
			<div class="contact-bottom">
				
				<div class="contact-text">
					
					<div class="col-md-6 contact-left">
						<div class="page-header">
							<h1>
								
								<small>
									<i class="icon-double-angle-right"></i>
									
								</small>
							</h1>
						</div>
						<div class="row">
						<div class="col-xs-12"></div>
						<form class="form-horizental" action="MLogAction" method="post" onSubmit="return userLogin(this);"role="form">
  						<div class="form-group">
   		 				<label for="exampleInputEmail1">Username</label>
   						<input type="email" class="form-control" name="email" id="email" placeholder="email">
  						</div>
  						<div class="form-group">
   						<label for="exampleInputPassword1">Password</label>
    					<input type="password" class="form-control" name="lname" id="lname" placeholder="Password">
  						</div>
 						<div class="form-group">
    					<button type="submit" class="btn btn-default">Log in</button>
  						</div>
						</form>
						</div>
                    <div class="col-md-3 contact-right">
						<div class="address">
							<h5></h5>

						</div>
					</div>
  					</div>
				</div>
			</div>
		</div>
</div>						
			<div class="clearfix"></div>
</body>
</html>
