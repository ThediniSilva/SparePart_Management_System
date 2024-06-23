package Coustemer;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/registerInsert")
public class registerInsert extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /* PrintWriter out = response.getWriter();
        out.print("Working"); */
        
        String firstName = request.getParameter("fname");
        String lastName = request.getParameter("lname");
        String email = request.getParameter("email");
        String contactNumber = request.getParameter("ContactNumber");
        String address = request.getParameter("Address");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isTrue = CoustemerDbUtil.insertCoustemer(firstName, lastName, email, contactNumber, address, username, password);

        if (isTrue) {
            // Retrieve the inserted customer to get the ID
            User customer = CoustemerDbUtil.getCustomerByUsername(username);
            request.setAttribute("Details", customer);
            RequestDispatcher dis = request.getRequestDispatcher("UserProfile.jsp"); // Navigate to user profile page and display customer details
            dis.forward(request, response);
        } else {
            RequestDispatcher dis2 = request.getRequestDispatcher("unsucess.jsp");
            dis2.forward(request, response); // Connection is not successful, navigate to this page
        }
    }
}
