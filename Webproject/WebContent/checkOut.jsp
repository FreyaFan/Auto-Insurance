<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function check() {
		var flag = true;
		var licensePlate = document.getElementById("licensePlate").value;
		var brand = document.getElementById("brand").value;
		var price = document.getElementById("price").value;
		var mileage = document.getElementById("mileage").value;
		var year = document.getElementById("year").value;

		if ("" == licensePlate) {
			alert("LicensePlate null！");
			flag = false;
			return false;
		} else if ("" == brand) {
			alert("Brand null！");
			flag = false;
			return false;
		} else if ("" == price) {
			alert("Price null！");
			flag = false;
			return false;
		} else if ("" == mileage) {
			alert("Mileage null！");
			flag = false;
			return false;
		} else if ("" == year) {
			alert("Year null！");
			flag = false;
			return false;
		} else if (1980 > Integer.valueOf(year) | 2016 < Integer.valueOf(year)) {
			alert("Year wrong！");
			flag = false;
			return false;
		} else if (2016 < Integer.valueOf(year)) {
			alert("Year wrong！");
			flag = false;
			return false;
		}
		if (flag == true) {
			//form.submit();  
			return true;
		}
	}
</script>
</head>
<body>
	<!-- banner -->
	<div class="banner banner2">
		<div class="container">
			<div class="header">
				<div class="logo">
					<h1>
						<a href="index.html"><img src="images/car.png" alt="" />AUTO <span>CARS</span></a>
					</h1>
				</div>
				<div class="top_details">
					<p>
						<span></span> (880)123 2500
					</p>
					<div class="search">
						<form>
							<input type="text" value="" placeholder="Search..."> <input
								type="submit" value="">
						</form>
					</div>
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
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.html">Home <span class="sr-only">(current)</span></a></li>
						<li><a href="about.html">About</a></li>
						<li><a href="services.html">Services</a></li>
						<li><a href="blog.html">Blog</a></li>
						<li><a href="gallery.html">Gallery</a></li>
						<li class="active"><a href="contact.html">Contact Us</a></li>
					</ul>
				</div>
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
								Car Information <small> <i
									class="icon-double-angle-right"></i> Fill in car details
								</small>
							</h1>
						</div>
						<div class="row">
							<div class="col-xs-12"></div>
							<form class="form-horizental" action="AddAutoAction"
								method="post" role="form">
								<div class="form-group">
									<label for="exampleInputEmail1">LicensePlate</label> <input
										type="licensePlate" class="form-control" name="licensePlate"
										id="licensePlate" placeholder="LicensePlate"
										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^/d]/g,''))">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Brand</label> <input
										type="brand" class="form-control" name="brand" id="brand"
										placeholder="Brand"
										onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^/d]/g,''))">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Price</label> <input
										type="price" class="form-control" name="price" id="price"
										placeholder="Price"
										onkeyup="value=value.replace(/[^(\d)]/g,'')">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Mileage</label> <input
										type="mileage" class="form-control" name="mileage"
										id="mileage" placeholder="Mileage"
										onkeyup="value=value.replace(/[^(\d)]/g,'')">
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Year when bought</label> <input
										type="year" class="form-control" name="year" id="year"
										placeholder="Year  when bought"
										onkeyup="value=value.replace(/[^(\d)]/g,'')">
								</div>
								<div class="dropdown">
									<label for="exampleInputPassword1">Choose your agent</label> <select
										class="form-control" name="agentID">
										<option value="1">001 James Victor</option>
										<option value="2">002 Joseph Tralie</option>
										<option value="3">003 Brian McQuoid</option>
										<option value="4">004 Barry Petroziello</option>
										<option value="5">005 Lou Simone</option>
										<option value="6">006 John Tomainoo</option>
										<option value="7">007 Robert Dunn</option>
										<option value="8">008 Daniel Cone</option>
										<option value="9">009 Dana Richter</option>
										<option value="10">010 Ken Mihalcin</option>
										<option value="11">011 Kevin Palermo</option>
										<option value="12">012 Christopher Graff</option>
										<option value="13">013 Megan Young</option>
										<option value="14">014 Frederic Horen</option>
										<option value="15">015 James Sheppard</option>
										<option value="16">016 Barbara Grimaldi</option>
										<option value="17">017 Frank Ramos</option>
										<option value="18">018 Derrick Howardi</option>
										<option value="19">019 James Heins</option>
										<option value="20">020 Brian Boyd</option>
										<option value="21">021 David Goldstein</option>
										<option value="22">022 Kelly Qu</option>
									</select> </br>
									<button type="submit" class="btn btn-default"
										onclick="return check();">Next</button>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!---->

	<!---->

</body>
</html>