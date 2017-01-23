<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("uname");
    String pwd = request.getParameter("pass");
    String address = request.getParameter("address");
    String category = request.getParameter("category");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject",
         "Max", "9403");
    Statement st = con.createStatement();
    //ResultSet rs;
    int i = st.executeUpdate("insert into customer(addressid, category, email, username, password) values ('" + address + "','" + category + "','" + email + "','" + user + "','" + pwd + "')");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("Signin.jsp");
        // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
      } else {
         response.sendRedirect("reg.jsp");
    }
%>