package Coustemer;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginservelt")
public class loginservelt extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        boolean isValidUser = CoustemerDbUtil.validate(username, password);

        if (isValidUser) {
            // Assuming you get the customer details using Username
            User user = CoustemerDbUtil.getCustomerDetails(username); // Assuming you have a method to get user details
            request.setAttribute("Details", user);
            request.getRequestDispatcher("UserProfile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp"); // Redirect to login page on failure
        }
    }
}
