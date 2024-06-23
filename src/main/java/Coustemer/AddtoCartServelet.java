package Coustemer;


//This is Add to cart servelet
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddtoCartServelet
 */
@WebServlet("/AddtoCartServelet")
public class AddtoCartServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {
            // Get product ID from request parameter
            int id = Integer.parseInt(request.getParameter("id"));

            // Create a new cart item
            cart newCartItem = new cart();
            newCartItem.setId(id);
            newCartItem.setQuantity(1); // Assuming default quantity is 1

            // Retrieve session or create new session
            HttpSession session = request.getSession();
            @SuppressWarnings("unchecked")
			ArrayList<cart> cartList = (ArrayList<cart>) session.getAttribute("cart_list");

            // If cart list is null, initialize it and add the item
            if (cartList == null) {
                cartList = new ArrayList<>();
                cartList.add(newCartItem);
                session.setAttribute("cart_list", cartList);
            } else {
                // Check if item already exists in cart
                boolean itemExists = false;
                for (cart item : cartList) {
                    if (item.getId() == id) {
                        // If item exists, increment quantity or handle as required
                        item.setQuantity(item.getQuantity() + 1);
                        itemExists = true;
                        break;
                    }
                }
                // If item does not exist, add it to cart
                if (!itemExists) {
                    cartList.add(newCartItem);
                }
                // Update session attribute
                session.setAttribute("cart_list", cartList);
            }

            // Redirect to cart.jsp
            response.sendRedirect("cart.jsp");
        } catch (NumberFormatException e) {
            e.printStackTrace();
            // Handle number format exception
        }
    }
}