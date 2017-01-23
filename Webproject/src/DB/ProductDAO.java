package DB;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import Entity.product;

public class ProductDAO {

	public List<product> readFirstproduct(){
		List<product> list = new ArrayList<product>();
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
			String sql = " select * from product";
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String productID=rs.getString("productID");
				 String pName = rs.getString("pName");
				 Float base_price = rs.getFloat("base_price");
				 Float addition_rate = rs.getFloat("addition_rate");
				 int duration = rs.getInt("duration");
				 Float refund_rate = rs.getFloat("refund_rate");
				 int sales=rs.getInt("sales");
				 product sl=new product(productID, pName, base_price, addition_rate, duration, refund_rate, sales);
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