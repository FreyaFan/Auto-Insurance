<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>Products</title>
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
					<li><a href="index.jsp">Home</a></li>
					<li class="active"><a href="products.jsp">Products<span class="sr-only">(current)</span></a></li>
					<li><a href="agent.jsp">Agents</a></li>
					<li><a href="Signin.jsp">Log In</a></li>
					</ul>
			 </div>
	      </nav>					
	 </div>
</div>
<!---->
<br/>
<div class="Products">
	 <div class="container">
		 <h2>Products</h2>
			 <ol class="breadcrumb">
				<li><a href="index.jsp">Home</a></li>
				<li class="active">Products</li>						  
			    </ol>
	    	<div class="section group sec_group">
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Liability insurance.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
				    <div class="text list_2_of_1">
						<h3>Liability insurance</h3>
						<p>Liability insurance does not cover any expenses related to damage to your property, or any injuries you may suffer. It exists to pay for those things suffered by the other parties in an accident for which you are found to be at fault. All states require a minimum amount of liability coverage in order to legally drive a vehicle. In some states, you can avoid buying liability coverage if you can prove you have the personal financial resources to cover the minimum requirements levied by the state. Liability insurance covers you when driving any vehicle you own, or if you drive someone else’s car with their permission.</p>

				   </div>
				   <div class="clearfix"></div>
			   </div>			
			  <div class="col-md-6 service_sec ">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Collision insurance.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
					<div class="text list_2_of_1">
						  <h3>Collision insurance</h3>
						  <p>Collision coverage is exactly what the name implies. It applies when your vehicle is involved in any kind of collision, whether it’s with another vehicle, a building, a guardrail, or any other stationary object. In some cases, it also covers damage caused by the vehicle flipping over, or running over potholes. Collision coverage will pay for the repairs your vehicle needs after any of these incidents, or to replace your car altogether if the collision causes a total loss, also known as “totaling” the car. The most important thing to remember in this case is, you will be reimbursed for the current value of the vehicle, not the purchase price.</p>

					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>  
			<div class="section group sec_group">
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Personal Injury Insurance.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
				    <div class="text list_2_of_1">
						<h3>Personal Injury Insurance</h3>
						<p>Personal Injury Insurance (PIP) covers you and your passengers in the event of collision-related injuries. Regardless of who is at fault, PIP will cover the cost of medical expenses, such as medical treatment, ambulance fees, and medication, for you and your passengers up to the policy’s limit. In some cases, PIP can be used to recover lost wages and rehabilitation services.</p>

				   </div>
				   <div class="clearfix"></div>
			   </div>			
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Comprehensive insurance.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
					<div class="text list_2_of_1">
						  <h3>Comprehensive insurance</h3>
						  <p>True to its name, comprehensive coverage applies to almost any type of loss that may occur, but not as a result of an auto accident. This is the insurance coverage that pays for damage to your car caused by something other than another vehicle. It could be anything: damage from severe weather such as tornadoes, hurricanes, or hail storms, or natural disasters such as earthquake, flood, or fire.
						  It also applies if you hit an animal, or if your vehicle is vandalized or stolen. Even in the unlikely event that something falls on your car and damages it, comprehensive coverage will pay for the repairs. It’s a good idea to pair comprehensive coverage with another type of coverage like collision to cover damage that does result from an accident.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="section group sec_group">
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Fire and Theft Coverage.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
				    <div class="text list_2_of_1">
						<h3>Fire and Theft Coverage</h3>
						<p>As the name states, this type of auto insurance coverage applies when your vehicle is damaged or totaled as a result of fire, or if your car is stolen. Auto insurance theft coverage is something that most drivers do not consider untill it’s too late.
						If your car catches fire due to lightning or an explosion, this coverage will pay to repair or replace your vehicle. It also offers very specific coverage to include damaged resulting from the sinking, collision, derailment, burning, or stranding of a trailer that is transporting your car. It also offers some redundancies in coverage for things like floods, earthquakes, hail or wind damage, vandalism, or accidents caused by hitting an animal. It may also pay for damages resulting from an accident involving an uninsured driver, provided you are not at fault.</p>

				   </div>
				   <div class="clearfix"></div>
			   </div>			
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Underinsured Motorist Coverage.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					<br/>
					<div class="text list_2_of_1">
						  <h3>Underinsured Motorist Coverage</h3>
						  <p>Underinsured Motorist Coverage protects you from personal injury and/or property damage 
						  (depending on the policy you elect) caused by a person without insurance, or a person without 
						  the necessary amount of insurance. UI/UIM also acts as protection against hit-and-run drivers.
						  Most helpful if: You live somewhere with a high percentage of uninsured motorists. 
						 And/or you don’t like the odds that an estimated 30 million uninsured drivers are on the road, 
						 according to the Insurance Research Council.</p>
					</div>
					<div class="clearfix"></div>				
		 </div>
		 </div>	
		 	
		 <div class="section group sec_group">			
		 <div class="col-md-6 service_sec">
		             <div class="text list_2_of_1">
						  <h3><a href="choose.jsp">Choose your insurance here</a></h3>
					</div>
				<div class="clearfix"></div>				
		 </div>
		 </div>	
		 	
		 	
	 </div>  
	    
 </div> 
<!---->
<div class="col-md-8 ftr2-bottom">		
			<p>Copyright &copy; Xian Teng, Fan Jiang, Jiaxin Miao.<a href="http://www.cssmoban.com/" target="_blank" title="模板之家">--University of Pittsburgh</a></p>
	 </div>
<!---->

</body>
</html>