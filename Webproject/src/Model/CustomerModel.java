package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DB;
import Entity.Customer;
public class CustomerModel {
	
	public Customer userLogin(String username, String password) {
	Customer user = null;
	
	Connection conn = DB.getConnection();
	
	String sql = "select * from Customer where username = ? and password = ?";
	
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
		
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();	
			if(rs.next()){
		
				user = new Customer();
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setCustomerID(rs.getInt("customerID"));
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
