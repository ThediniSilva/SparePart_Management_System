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
 * Servlet implementation class updateDetails
 */
@WebServlet("/updateDetails")
public class updateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//String id = request.getParameter("Id");
		String id= request.getParameter("cid");
		String firstName = request.getParameter("cfname");
		String lastName = request.getParameter("clname");
		String email = request.getParameter("cemail");
		String ContactNumber = request.getParameter("ccontactNumber");
		String Address = request.getParameter("caddress");
		String username = request.getParameter("cusername");
		String password = request.getParameter("cpassword");
		
		boolean isTrue;
		isTrue = CoustemerDbUtil.updateCustomer(id, firstName, lastName, email, ContactNumber, Address, username, password);
		
		if (isTrue == true) {
		    
		    RequestDispatcher dis = request.getRequestDispatcher("sucess.jsp");
		    dis.forward(request, response);
		} else {
			PrintWriter out = response.getWriter();
			out.print(firstName);
		    //RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
		   // dis2.forward(request, response);
		}

	}

}
