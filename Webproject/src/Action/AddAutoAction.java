package Action;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Auto;
import Model.AutoModel;

/**
 * Servlet implementation class AddAutoAction
 */
@WebServlet("/AddAutoAction")
public class AddAutoAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String licensePlate = request.getParameter("licensePlate");
		String brand = request.getParameter("brand");
		int price = Integer.parseInt(request.getParameter("price"));
		int mileage = Integer.parseInt(request.getParameter("mileage"));
		int year = Integer.parseInt(request.getParameter("year"));
		String agentID = request.getParameter("agentID");
		
		HttpSession session = request.getSession();
		session.setAttribute("licensePlate", licensePlate);
		session.setAttribute("brand", brand);
		session.setAttribute("price", price);
		session.setAttribute("mileage", mileage);
		session.setAttribute("agentID", agentID);

		System.out.println("price"+price);
		
		int customerID = (Integer) session.getAttribute("customerID");

		AutoModel autoModel = new AutoModel();
		if (licensePlate != null) {
			Auto auto = new Auto();
			auto.setLicensePlate(licensePlate);
			auto.setBrand(brand);
			auto.setMileage(mileage);
			auto.setPrice(price);
			auto.setYear(year);

			autoModel.addAuto(auto, customerID);
			
			
			System.out.println("price:"+price);
			
			request.getRequestDispatcher("invoice.jsp").forward(request, response);
		} else {

			request.getRequestDispatcher("error.jsp").forward(request, response);

		}
	}
}