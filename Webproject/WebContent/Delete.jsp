<%@ page import ="java.sql.*" %>
<%@ page import ="java.io.PrintWriter" %>
<%@ page import = "java.io.IOException"%>
<%		String productID = request.getParameter("id");
		
	    try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	    Connection con;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject",
			     "Max", "9403");
	    Statement st = con.createStatement();
	    int i = st.executeUpdate("delete from product where productID = '"+productID+"'");
	    if (i > 0) {
	        response.sendRedirect("Manager1.jsp");
	      } else {
	         response.sendRedirect("Manager1.jsp");
	    }
		}catch(SQLException e){
			response.setCharacterEncoding("utf-8");
			out.print("<script>alert('Please make sure your data type is correct!'); window.location='Manager1.jsp' </script>");
			out.flush();
			out.close();
		}
	%>