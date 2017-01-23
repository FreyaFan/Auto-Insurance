package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DB;
import Entity.Manager;
public class ManagerModel {
	
	public Manager userLogin(String email, String lname) {
	Manager user = null;
	
	Connection conn = DB.getConnection();
	
	String sql = "select * from agent where email = ? and lname = ?";
	
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
		
			ps.setString(1, email);
			ps.setString(2, lname);

			ResultSet rs = ps.executeQuery();	
			if(rs.next()){
		
				user = new Manager();
				user.setEmail(rs.getString("email"));
				user.setLname(rs.getString("lname"));
			}
			
			rs.close();
			ps.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DB.closeConnection(conn);
		}
		return user;
	}
	
}
