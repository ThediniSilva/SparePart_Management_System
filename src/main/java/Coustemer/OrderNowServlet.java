package Coustemer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class OrderNowServlet
 */
@WebServlet("/order-now")
public class OrderNowServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try (PrintWriter out = response.getWriter()) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date(System.currentTimeMillis());

            // Logging the date being used
            System.out.println("Date: " + formatter.format(date));

            String productId = request.getParameter("productId");
            String quantityStr = request.getParameter("quantity");

            // Logging the parameters received
            System.out.println("Product ID: " + productId);
            System.out.println("Quantity: " + quantityStr);

            if (productId == null || productId.isEmpty() || quantityStr == null || quantityStr.isEmpty()) {
                out.print("failure: missing product ID or quantity");
                return;
            }

            int productQuantity = Integer.parseInt(quantityStr);
            if (productQuantity <= 0) {
                productQuantity = 1;
            }

            // Logging the parsed quantity
            System.out.println("Parsed Quantity: " + productQuantity);

            Order orderModel = new Order();
            orderModel.setId(Integer.parseInt(productId));
            // Replace with your own logic to get the user ID or leave it out if not needed
            orderModel.setUid(1); // Example: set user ID to 1 (you can replace with your logic)

            orderModel.setQuantity(productQuantity);
            orderModel.setDate(formatter.format(date));

            orderDbUtil orderDbUtil = new orderDbUtil(databaseConnection.getConnection());
            boolean result = orderDbUtil.insertOrder(orderModel);

            if (result) {
                // Update the session cart list
                HttpSession session = request.getSession();
                ArrayList<cart> cartList = (ArrayList<cart>) session.getAttribute("cart_list");
                if (cartList != null) {
                    cartList.removeIf(cartItem -> cartItem.getId() == Integer.parseInt(productId));
                    session.setAttribute("cart_list", cartList);
                }

                out.print("success");
            } else {
                out.print("failure: database insertion error");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().print("failure: exception occurred");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
