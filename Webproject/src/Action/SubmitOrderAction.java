package Action;

import java.io.IOException;
import java.sql.Timestamp;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Order;
import Model.OrderModel;

/**
 * Servlet implementation class SubmitOrderAction
 */
@WebServlet("/SubmitOrderAction")
public class SubmitOrderAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String agentID =(String)session.getAttribute("agentID");
		String items = (String)session.getAttribute("productID");
		String licensePlate = (String)session.getAttribute("licensePlate");
		
		String rate = (String)session.getAttribute("rate");
		
		
		System.out.println(session.getAttribute("total_price").toString());
		System.out.println("price");
		System.out.println(session.getAttribute("price").toString());
		System.out.println("rate");
		System.out.println(session.getAttribute("rate").toString());
		
		//double rate = Double.valueOf(session.getAttribute("rate").toString());
		
		double total_price = Double.valueOf(session.getAttribute("total_price").toString());
		
		double price = Double.valueOf(session.getAttribute("price").toString());
		
		double final_price = total_price ;
		
		OrderModel orderModel = new OrderModel();
		
		System.out.println("final_price " +final_price);
		System.out.println("price " +price);
		System.out.println("rate " + rate);
		
		if(items !=null){
			Order order = new Order();
			order.setAgentID(agentID);
			order.setDate(new Timestamp(new java.util.Date().getTime()));
			System.out.println("This function has been run :" +new Timestamp(new java.util.Date().getTime()));
			order.setTotal_price(final_price);
			order.setLicensePlate(licensePlate);
			orderModel.addOrder(order, items);
			
		}
		else{
	
			request.getRequestDispatcher("error.jsp").forward(request, response);


	}
		request.getRequestDispatcher("Submitted.jsp").forward(request, response);
}
}