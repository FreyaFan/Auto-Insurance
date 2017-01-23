<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.sql.*,java.io.*,java.util.*"%>  
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
<head>
<title>choose</title>
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
 <%  
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "Max";  
        //密码   
        String userPasswd = "9403";  
        //数据库名   
        String dbName = "dbproject";  
        //表名   
        String tableName = "Product";  
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT productID, pName, base_price, addition_rate, duration FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql);  
    %>  
<!-- banner -->
<div class="banner banner2">
	 <div class="container">
	     <div class="header">
			 
			 <div class="logo">
				 <h1><a href="index.html"><img src="images/car.png" alt=""/>AUTO <span>CARS</span></a></h1>
			 </div>
			 <div class="top_details">
				 <p><span></span> (880)123 2500</p>
				 <div class="search">
				 <form>
					<input type="text" value="" placeholder="Search...">
					<input type="submit" value="">
					</form>
			     </div>
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
					<li class="active"><a href="products.jsp">Products <span class="sr-only">(current)</span></a></li>
					<li><a href="products.jsp">Products</a></li>
					<li><a href="agent.jsp">Agents</a></li>
					<li><a href="log.jsp">Log In</a></li>
					</ul>
			 </div>
	      </nav>					
	 </div>
</div>
<!---->
<br/>
<div class="Products">
	 <div class="container">
		 <h2>Choose your products</h2>
		 </br>
		 </br>
			<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->

								<div class="row">
									<div class="col-xs-12">
										<div class="table-responsive">
										<!--<form action="<%=request.getContextPath() %>/chooseServlet" method="post">  -->
										<form action="chooseServlet" method="post">
											<table id="sample-table-1" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th class="center">
															
														</th>
														<th>Product</th>
														<th>Base Price</th>
														<th class="hidden-480">Addition rate</th>

														<th>
															<i class="icon-time bigger-110 hidden-480"></i>
															Duration
														</th>														
													</tr>
												</thead>
												<%  while (rs.next()) {  %> 
												<tbody>
													<tr>
														<td class="center">
															<label>
																<input type="radio" name="items" id="items" value=<% out.print(rs.getString(1)); %> class="ace"/>
																<span class="lbl"></span>
															</label>
														</td>

														<td>
														<%  out.print(rs.getString(2));  %></td>
														<td><%  out.print(rs.getString(3));  %></td>
														<td class="hidden-480"><%  out.print(rs.getString(4));  %></td>
														<td><%  out.print(rs.getString(5));  %></td>
														
													</tr>

												<%   }  %> 	
												</tbody>
											</table>
											<button type="submit" class="btn btn-default">Next</button>
											</form>
										</div><!-- /.table-responsive -->
									
									</div><!-- /span -->
	    	<div class="section group sec_group">
				
				<div class="col-md-6 service_sec">
					<div class="listimg listimg_2_of_1">
						  <img src="images/Liability insurance.png" alt="" style="width: 90px; height: 85px; "/>
					</div>
					
					<br/>
					   
				
		 </div>
		 <div class="col-md-6 service_sec">
					
					
					<br/>
					   
				
		 </div>
		 </div>	
		 			
	 </div>  
	     
 </div> 
<!---->

<!---->

</body>
</html>