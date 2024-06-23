package Coustemer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class deleteDetails
 */
@WebServlet("/deleteDetails")
public class deleteDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String id = request.getParameter("Id");
		String username = request.getParameter("cusername");
		
		boolean isTrue;
		isTrue = CoustemerDbUtil.deleteCustomer(username);
		
		if (isTrue == true) {
		    
		    RequestDispatcher dis = request.getRequestDispatcher("sucess.jsp");
		    dis.forward(request, response);
		} else {
			//PrintWriter out = response.getWriter();
			//out.print(firstName);
		    RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
		    dis2.forward(request, response);
		}
				
	}

}
