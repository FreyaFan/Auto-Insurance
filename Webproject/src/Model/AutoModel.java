package Model;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import DB.DB;
import Entity.Auto;

public class AutoModel{
	
	public void addAuto(Auto auto,int customerID) {
	
	Connection conn = DB.getConnection();
	
	String sql = "insert into Auto(customerID,licensePlate,brand,year,price,mileage) values(?,?,?,?,?,?) ";
	//String sql2 ="";
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ps.setInt(1, customerID);
			ps.setString(2, auto.getLicensePlate());
			ps.setString(3, auto.getBrand());
			ps.setInt(4, auto.getYear());
			ps.setInt(5, auto.getPrice());
			ps.setInt(6, auto.getMileage());	
			
			ps.executeUpdate();
			
			//ps = conn.prepareStatement(sql2);
			//...
			//ps.ex
			ps.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			DB.closeConnection(conn);
		}
}
}
