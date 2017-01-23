package DB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import Entity.Sale;

public class SaleDAO {

	public List<Sale> readFirstSale(){
		List<Sale> list = new ArrayList<Sale>();
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
			String sql = " select productID, count(productID) from join_table group by productID";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String productID=rs.getString("productID");
				 int sum=rs.getInt("count(productID)");
				 Sale sl=new Sale(productID, sum);
				 list.add(sl);
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
