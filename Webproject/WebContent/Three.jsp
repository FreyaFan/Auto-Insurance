<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.PrintWriter" %>
<%@ page import = "java.io.IOException"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="Entity.Sale"%>
<%@ page import= "javax.servlet.*" %>
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
				 <h1><a href="index.html"><img src="images/car.png" alt=""/>AUTO <span>CARS</span></a></h1>
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
<%
    String o = request.getParameter("Option");
    String StartTime = request.getParameter("StartTime");
    String EndTime = request.getParameter("EndTime");
    List<Sale> list = new ArrayList<Sale>();
    if(o.equals("Sales")){
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		
		try{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject","Max","9403");
			String sql = "select productID, count(productID) from join_table j, transaction o where j.transactionnumber = o.transactionnumber and o.date > '"+StartTime+"' and o.date < '"+EndTime+"' group by productID";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String productID=rs.getString("productID");
				 int sum=rs.getInt("count(productID)");
				 Sale sl=new Sale(productID, sum);
				 list.add(sl);
			}
		}catch (SQLException e) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out1 = response.getWriter();
			out1.print("<script>alert('Please make sure your data type is correct!'); window.location='Manager1.jsp' </script>");
			out1.flush();
			out1.close();
			}%>
			     <table border="1">
                        <tr>
                        <td>poductID</td>
                        <td>sum</td>
                        </tr>
                        <%for(Sale tl:list){%>
                           <tr>
                           <td><%=tl.getProductID() %></td>
                           <td><%=tl.getSum() %></td>
                           </tr>
                           <%}%>
                  </table>
		
		
		
    <%}
    if(o.equals("Profits")){
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
			String sql = "select sum(total_price) from transaction where date > '"+StartTime+"' and date < '"+EndTime+"'";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()){
				 String result=rs.getString("sum(total_price)");
				 %><label>Total profits:<%=result %></label><%
			}
		}catch (SQLException e) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out1 = response.getWriter();
			out1.print("<script>alert('Please make sure your data type is correct!'); window.location='Manager1.jsp' </script>");
			out1.flush();
			out1.close();
			}
    	}
%>
                    
</body>
</html>