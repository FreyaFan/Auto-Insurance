package DB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;
import Entity.Order2;

public class OrderDAO {


	public List<Order2> readFirstOrder(HttpServletRequest request){
		List<Order2> list = new ArrayList<Order2>();
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
			String sql = " select * from customer a, join_table b, transaction c where a.username = '"+username+"' and b.customerid = a.customerid and b.transactionnumber = c.transactionnumber";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String tn=rs.getString("transactionnumber");
				 String lp=rs.getString("licenseplate");
				 String pID=rs.getString("productid");
				 String aID=rs.getString("agentid");
				 String date=rs.getString("date");
				 String tp=rs.getString("total_price");
				 Order2 o=new Order2(tn, lp, pID, aID, date, tp);
				 list.add(o);
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