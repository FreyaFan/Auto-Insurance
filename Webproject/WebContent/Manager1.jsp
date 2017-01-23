<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="DB.SaleDAO,Entity.Sale"%>
<%@page import="DB.ProductDAO,Entity.product"%>
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
				<h2>Sales Information</h2>
			</div>
			<div class="contact-bottom">
				<div class="contact-text">
					<div class="col-md-6 contact-left">
						<div class="row">
						<div class="col-xs-12"></div>
  						<div class="form-group">
   		 				<label for="exampleInputEmail1">1. Total Sale:</label>
  						<table id="sample-table-1" class="table table-striped table-bordered table-hover">
                        <tr>
                        <td>poductID</td>
                        <td>sum</td>
                        </tr>
                        <%
                           SaleDAO dao=new SaleDAO();
                           List<Sale> list =dao.readFirstSale(); 
                           for(Sale tl:list){%>
                           <tr>
                           <td><%=tl.getProductID() %></td>
                           <td><%=tl.getSum() %></td>
                           </tr>
                           <%}
                         %>
                        </table>
                        <label for="exampleInputEmail1">2. Total Profits:</label>
<% 
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String r;
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		
		try{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject","Max","9403");
			String sql = "select sum(total_price) from transaction";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String result=rs.getString("sum(total_price)");
				 %><label><%=result %></label><%
			}
		}catch (SQLException e) {
			}
    	%>
                        </div>
  						<div class="form-group">
   						<label for="exampleInputPassword1">3. View </label>
   						<form action="Three.jsp" method="post">
   						 <select name="Option" id="Option">
                          <option value ="Sales" >Sales</option>
                          <option value ="Profits" >Profits</option>
                         </select>
                        <label for="exampleInputPassword1">from</label>
                        <input name="StartTime" id="StartTime" placeholder="Year-Month-Day" style = "color: grey">
                        <label for="exampleInputPassword1">to </label>
   						<input name="EndTime" id="EndTime" placeholder="Yeaar-Month-Day" style = "color: grey">
                        <button type="submit" class="btn btn-default">Search</button>
                        </form>
  						</div>
						</div>
  					</div>
				</div>
			</div>
		</div>
</div>
<div class="contact">
		<div class="container">
			<div class="contact-top">
				<h2>Product Information</h2>
			</div>
			<div class="contact-bottom">
				<div class="contact-text">
					<div class="col-md-9 contact-left">
                        <label for="exampleInputEmail1">Products:</label>
                        <table id="sample-table-1" class="table table-striped table-bordered table-hover">
                        <tr>
                        <td>poductID</td>
                        <td>pName</td>
                        <td>base_price</td>
                        <td>addition_rate</td>
                        <td>duration</td>
                        <td>refund_rate</td>
                        <td>sales</td>
                        <td>operations</td>
                        </tr>
                        <% ProductDAO dao1=new ProductDAO();
                           List<product> list1 =dao1.readFirstproduct(); 
                           for(product tl:list1){%>
                           <tr>
                           <td><%=tl.getProductID() %></td>
                           <td><%=tl.getPName() %></td>
                           <td><%=tl.getBase_price() %></td>
                           <td><%=tl.getAddition_rate() %></td>
                           <td><%=tl.getDuration() %></td>
                           <td><%=tl.getRefund_rate() %></td>
                           <td><%=tl.getSales() %></td>
                           <td><a href= "Delete.jsp?id=<%=tl.getProductID()%>" style = "color: red">Delete</a ></td>
	                       </tr>
                           <%}
                         %>
                        </table>
                        
						<div class="row">
						<div class="col-xs-12"></div>
						</div>
  					</div>
  					<div class="col-md-4 contact-right">
						<div class="row">
						<div class="col-xs-12"></div>
						<form class="form-horizental" action="Addproduct" method="post">
  						<label for="exampleInputEmail1">Add new product</label>
  						<div class="form-group">
   						<input type="text" class="form-control" name="productID" id="productID" placeholder="productID">
  						</div>
  						<div class="form-group">
    					<input type="text" class="form-control" name="pname" id="pname" placeholder="Pname">
  						</div>
  						<div class="form-group">
   						<input type="text" class="form-control" name="base_price" id="base_price" placeholder="base_price">
  						</div>
  						<div class="form-group">
   						<input type="text" class="form-control" name="addition_rate" id="addition_rate" placeholder="addition_rate">
  						</div>
  						<div class="form-group">
   						<input type="text" class="form-control" name="duration" id="duration" placeholder="duration">
  						</div>
  						<div class="form-group">
   						<input type="text" class="form-control" name="refund_rate" id="refund_rate" placeholder="refund_rate">
  						</div>
  						<div class="form-group">
   						<input type="text" class="form-control" name="sales" id="sales" placeholder="sales">
  						</div>
 						<div class="form-group">
    					<button type="submit" class="btn btn-default">Add</button>
  						</div>
						</form>
						</div>
  					</div>
				</div>
			</div>
		</div>
</div>						
			<div class="clearfix"></div>
</body>
</html>