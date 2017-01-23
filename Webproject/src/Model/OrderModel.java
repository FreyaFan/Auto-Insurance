package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import DB.DB;
import Entity.Order;

public class OrderModel {

	public double findPrice(String productID) {
		Order order = null;

		Connection conn = DB.getConnection();
		String sql = "select base_price from product where productID = ?";

		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, productID);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				order = new Order();
				order.setTotal_price(rs.getInt("base_price"));
			}
			rs.close();
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.closeConnection(conn);
		}
		return order.total_price;

	}

	public void addOrder(Order order, String items) {

		Connection conn = DB.getConnection();
		// date has been changed

		String sql = "insert into transaction(agentID, date, total_Price) values(?,?,?)";

		String sql2 = "insert into join_table(customerid, licenseplate,productid) values((select customerid from auto where licenseplate=?),?,?)";
   
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, order.agentID);
			ps.setTimestamp(2, order.date);
			ps.setDouble(3, order.total_price);
			ps.executeUpdate();
			ps.close();
			
			PreparedStatement ps2 = conn.prepareStatement(sql2);
			ps2.setString(1, order.licensePlate);
			ps2.setString(2, order.licensePlate);
			ps2.setString(3, items);
			ps2.executeUpdate();
			ps2.close();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DB.closeConnection(conn);
		}
	}

}
