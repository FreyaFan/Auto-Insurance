package Action;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Change")
public class Change extends HttpServlet {
	private static final long serialVersionUID = -3009431503363456775L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fn = request.getParameter("fn");
		String ln = request.getParameter("ln");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		String un = request.getParameter("un");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		String username = (String)session.getAttribute("username");
		
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
	    int i = st.executeUpdate("update customer a, customer_home b set b.fname = '"+fn+"', b.lname = '"+ln+"', b.gender = '"+gender+"', a.email = '"+email+"', a.username = '"+un+"', a.password = '"+pw+"' where a.username = '"+username+"' and a.customerid = b.customerid");
	    if (i > 0) {
	        response.sendRedirect("Customer.jsp");
	      } else {
	         response.sendRedirect("Customer.jsp");
	    }
		}catch(SQLException e){
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('Please make sure your data type is correct!'); window.location='Manager1.jsp' </script>");
			out.flush();
			out.close();
		}
			}
	}