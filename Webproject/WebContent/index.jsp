<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Home</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script src="js/bootstrap.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Auto cars Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="js/jquery.min.js"></script>
 <script src="js/bootstrap.js"></script>

<script src="js/responsiveslides.min.js"></script>

					 <script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider3,#slider2").responsiveSlides({
							auto: true,
							pager: true,
							nav: false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
					  </script>

</head>
<body>
<!-- banner -->
<div class="banner">
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
					<li class="active"><a href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
					<li><a href="products.jsp">Products</a></li>
					<li><a href="agent.jsp">Agents</a></li>
					<li><a href="Signin.jsp">Log In</a></li>
					<li><a href="Manager.jsp">Manager</a></li>
					</ul>
			 </div>
	      </nav>		<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">				
					<li>
					 <div class="banner-info">
						 <h3>Liability Insurance</h3>
						 <p>covers the other driver (both injury and property damage) in the event of a car collision thatâs your fault.</p>
					 </div>
				    </li>
					<li>
					 <div class="banner-info">
						 <h3>Collision Insurance</h3>								
						 <p>covers damage to your vehicle in the event of an accident, no matter who is at fault.</p>
					 </div>
					</li>
					<li>
					 <div class="banner-info">
						 <h3>Personal Injury Insurance (PIP)</h3>
						 <p>covers the cost of medical expenses, such as medical treatment, ambulance fees, and medication, for you and your passengers up to the policyâs limit.</p>
					 </div>
					</li>					
				</ul>
			</div>			
	 </div>
</div>
<!---->
<div class="welcome">
	<div class="container">
		  <div class="welcome_sec">
			 <div class="col-md-6 welcome_info">
			      <h3>Welcome</h3>
				  <span></span>
				  <h4>How to protect yourself without overpaying</h4>
				  <p>It's a fact of life that might elicit a groan or two: 
				  Everyone must purchase car insurance to drive legally. 
				  No car insurance policy is one-size-fits-all, 
				  but that doesn't mean the buying process needs to be daunting. </p>
			 </div>
			 <div class="col-md-6 welcome_pic">
				 <h2>Understanding Your Coverage Options</h2>
				 <img src="images/wc.jpg" class="img-responsive" alt=""/>
				 <p>First things first: You'll need to decide what type of coverage best fits your situation. 
				 The more information you have on what options exist, 
				 the better equipped you'll be when it comes to deciding your coverage level.</p>
				 <p></p>
			 </div>
			 <div class="clearfix"></div>
		  </div>
	</div>
</div>
 <script>
    $(function () {
      $("#slider2").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks2",
        pager: true,
      });
    });
  </script>

<div class="feature_sec">
	 <div class="container">
		 <div class="feature_head">
			 <h3>Products</h3>
			 <span></span>
		 </div>
		 <ul id="flexiselDemo3">
				 <li>
					<div class="biseller-column">
							<a><img src="images/Liability insurance.png" alt=""/></a>
							<h4>Liability<br> insurance</h4>
							<p></p>
							<a class="more hvr-bounce-to-bottom" href="products.jsp">Read More..</a>
					</div>
				</li>
				<li>
					<div class="biseller-column">
							<a><img src="images/Collision insurance.png" alt=""/></a>
							<h4>Collision <br> insurance</h4>
							<p></p>
							<a class="more hvr-bounce-to-bottom" href="products.jsp">Read More..</a>
					</div>
				</li>
				<li>
					<div class="biseller-column">
							<a><img src="images/Personal Injury Insurance.png" alt=""/></a>
							<h4>Personal Injury Insurance (PIP)</h4>
							<p></p>
							<a class="more hvr-bounce-to-bottom" href="products.jsp">Read More..</a>
					</div>
				</li>
				<li>
					<div class="biseller-column">
							<a><img src="images/Comprehensive insurance.png" alt=""/></a>
							<h4>Comprehensive <br>insurance</h4>
							<p></p>
							<a class="more hvr-bounce-to-bottom" href=products.jsp>Read More..</a>
					</div>
				</li>
				<li>
					<div class="biseller-column">
							<a><img src="images/Underinsured Motorist Coverage.png" alt=""/></a>
							<h4>Uninsured/Underinsured Motorist Coverage</h4>
							<p></p>
							<a class="more hvr-bounce-to-bottom" href="products.jsp">Read More..</a>
					</div>
				</li>
	     	</ul>
				<div class="clearfix"></div>
			<script type="text/javascript">
				 $(window).load(function() {
					$("#flexiselDemo3").flexisel({
						visibleItems:4,
						animationSpeed: 1000,
						autoPlay: true,
						autoPlaySpeed: 3000,    		
						pauseOnHover: true,
						enableResponsiveBreakpoints: true,
				    	responsiveBreakpoints: { 
				    		portrait: { 
				    			changePoint:480,
				    			visibleItems:2
				    		}, 
				    		landscape: { 
				    			changePoint:640,
				    			visibleItems:2
				    		},
				    		tablet: { 
				    			changePoint:768,
				    			visibleItems:3
				    		}
				    	}
				    });
				    
				});
			   </script>
			   <script type="text/javascript" src="js/jquery.flexisel.js"></script>			 
	 </div>
</div>
<div class="col-md-8 ftr2-bottom">		
			<p>Copyright &copy; Xian Teng, Fan Jiang, Jiaxin Miao.<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">--University of Pittsburgh</a></p>
	 </div>
</body>
</html>