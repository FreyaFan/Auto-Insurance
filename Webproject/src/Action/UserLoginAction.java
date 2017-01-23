package Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Customer;
import Model.CustomerModel;


@WebServlet("/UserLoginAction")
public class UserLoginAction extends HttpServlet {
	private static final long serialVersionUID = -3009431503363456775L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
//		int customerID = Integer.valueOf(request.getParameter("customerID"));
		
		System.out.println("username");
		System.out.println(username);
		System.out.println(password);
		
		HttpSession session = request.getSession();
		session.setAttribute("username", username);
		session.setAttribute("password", password);
//		session.setAttribute("customerID", customerID);
		
		
		CustomerModel customerModel=new CustomerModel();
		
		try{
		Customer customer = customerModel.userLogin(username,password);
		session.setAttribute("customerID", customer.getCustomerID());
		if(customer != null){
			
			request.getSession().setAttribute("customer", customer);
			
			request.getRequestDispatcher("index2.jsp").forward(request, response);
		}
	}catch(NullPointerException e){
		response.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		out.print("<script>alert('Sorry! Your password is not correct!'); window.location='Signin.jsp' </script>");
		out.flush();
		out.close();
	}
	}
}
	
	
	

