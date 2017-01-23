package Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Entity.Manager;
import Model.ManagerModel;


@WebServlet("/MLogAction")
public class MLogAction extends HttpServlet {
	private static final long serialVersionUID = -3009431503363456775L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String lname = request.getParameter("lname");
//		int customerID = Integer.valueOf(request.getParameter("customerID"));
		
		System.out.println("email");
		System.out.println(email);
		System.out.println(lname);
		
		HttpSession session = request.getSession();
		session.setAttribute("email", email);
		session.setAttribute("lname", lname);
//		session.setAttribute("customerID", customerID);
		
		
		ManagerModel managerModel=new ManagerModel();
		
		try{
		Manager manager = managerModel.userLogin(email,lname);
		if(manager != null){
			
			request.getSession().setAttribute("email", email);
			
			request.getRequestDispatcher("Manager1.jsp").forward(request, response);
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