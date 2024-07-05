package Coustemer;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/DeleteCartItemServlet")
public class DeleteCartItemServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int productId = Integer.parseInt(request.getParameter("id"));

        HttpSession session = request.getSession();
        ArrayList<cart> cart_list = (ArrayList<cart>) session.getAttribute("cart_list");

        if (cart_list != null) {
            cart_list.removeIf(c -> c.getId() == productId);
        }

        session.setAttribute("cart_list", cart_list);
        response.getWriter().write("success");
    }
}
