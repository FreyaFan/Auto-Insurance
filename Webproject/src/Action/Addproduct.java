package Action;

import java.io.IOException;
import java.io.PrintWriter;

import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Addproduct")
public class Addproduct extends HttpServlet {
	private static final long serialVersionUID = -3009431503363456775L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productID = request.getParameter("productID");
		String pname = request.getParameter("pname");
		String base_price = request.getParameter("base_price");
		String addition_rate = request.getParameter("addition_rate");
		String duration = request.getParameter("duration");
		String refund_rate = request.getParameter("refund_rate");
		String sales = request.getParameter("sales");
		
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
	    int i = st.executeUpdate("insert into product(productID, pname, base_price, addition_rate, duration, refund_rate, sales) values ('" + productID + "','" + pname + "','" + base_price + "','" + addition_rate + "','" + duration + "','" + refund_rate + "','" + sales + "')");
	    if (i > 0) {
	        response.sendRedirect("Manager1.jsp");
	      } else {
	         response.sendRedirect("Manager1.jsp");
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