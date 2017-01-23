package DB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import Entity.Customer2;

public class CustomerDAO {


	public List<Customer2> readFirstCustomer(HttpServletRequest request){
		List<Customer2> list = new ArrayList<Customer2>();
		Connection con = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		
		try{
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbproject","Max","9403");
			String sql = " select * from customer a, customer_home b where a.username = '"+username+"' and b.customerid = a.customerid";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String fname=rs.getString("fname");
				 String lname=rs.getString("lname");
				 String gender=rs.getString("gender");
				 String email=rs.getString("email");
				 String name=rs.getString("username");
				 String password=rs.getString("password");
				 Customer2 cl=new Customer2(fname, lname, gender, email, name, password);
				 list.add(cl);
			}
		} catch (SQLException e){
			e.printStackTrace();
			}finally{
			try {
			if(rs!=null){
			rs.close();
			}
			if(psmt!=null){
			psmt.close();
			}
			if(con!=null){
			con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			}
		}
			return list;
		}
	}