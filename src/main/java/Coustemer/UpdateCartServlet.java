package Coustemer;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UpdateCartServlet")
public class UpdateCartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));
        int change = Integer.parseInt(request.getParameter("change"));

        HttpSession session = request.getSession();
        ArrayList<cart> cart_list = (ArrayList<cart>) session.getAttribute("cart_list");

        if (cart_list != null) {
            for (cart c : cart_list) {
                if (c.getId() == productId) {
                    int newQuantity = c.getQuantity() + change;
                    if (newQuantity > 0) {
                        c.setQuantity(newQuantity);
                    } else {
                        cart_list.remove(c);
                    }
                    break;
                }
            }
        }

        session.setAttribute("cart_list", cart_list);
        response.getWriter().write("success");
    }
}
