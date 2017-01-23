package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class chooseServlet
 */
@WebServlet("/chooseServlet")
public class chooseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public chooseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*String productID = request.getParameter("items");
		   
        request.getSession().setAttribute("productID", productID);
        System.out.println(productID);
        response.sendRedirect("checkOut.jsp");
		return ;*/
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("productIDDDDDD");
		String productID = request.getParameter("items");
		HttpSession session = request.getSession();
		session.setAttribute("productID", productID);
		
        System.out.println("productID");
        System.out.println(productID);
        response.sendRedirect("checkOut.jsp");
		return ;
	}

}
