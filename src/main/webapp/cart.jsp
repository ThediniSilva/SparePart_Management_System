<%@page import="java.util.*"%>
<%@page import="Coustemer.databaseConnection"%>
<%@page import="Coustemer.productDbUtil"%>
<%@page import="Coustemer.cart"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%
    ArrayList<cart> cart_list = (ArrayList<cart>) session.getAttribute("cart_list");
    List<cart> cartProduct = null;
    double totalPrice = 0.0;

    if (cart_list != null) {
        productDbUtil pdao = new productDbUtil(databaseConnection.getConnection());
        cartProduct = pdao.getAllcartProducts(cart_list);
        request.setAttribute("cartProduct", cartProduct);
        
        // Calculate total price
        for (cart c : cartProduct) {
            totalPrice += c.getPrice() * c.getQuantity();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Page</title>
<link rel="stylesheet" type="text/css" href="cart.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
    <nav>
        <!-- Logo -->
        <a href="/" class="logo"> <img src="./Image/Image.png" alt="Logo">
        </a>
        <ul class="menu">
            <li><a href="Index.jsp">HOME</a></li>
            <li><a href="AboutUs.jsp">ABOUT US</a></li>
            <li><a href="#">Products</a></li>
            <li class="event-section"><a href="#">Shop By Category</a>
                <ul class="event-dropdown">
                    <li><a href="#">Engine</a></li>
                    <li><a href="#">Tires</a></li>
                    <li><a href="#">Filters</a></li>
                    <li><a href="#">OTHER</a></li>
                </ul></li>
            <li><a href="#">CONTACT US</a></li>
            <li><a href="#">FAQ</a></li>
        </ul>

        <div class="two-section">
            <a href="register.jsp" class="signup" type="button">SignUp</a> 
            <a href="Login.jsp" class="Login">LogIn</a>
        </div>
        <div class="NavIcon">
            <a href="cart.jsp"> <i class="fa fa-shopping-cart fa-lg"
                style="margin-right: 30px; color: rgb(255, 255, 255);"></i>
            </a> 
            <i class="fa fa-user fa-lg" style="color: rgb(255, 255, 255);"></i>
        </div>
    </nav>

    <div class="container">
        <div class="d-flex py-3">
            <h3>Total Price: Rs.<%= totalPrice %></h3>
            <a class="mx-3 btn btn-primary" href="#"> Check Out </a>
            <table>
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Total Price</th>
                    </tr>
                </thead>
                <tbody>
                <% if (cartProduct != null) {
                    for (cart c : cartProduct) { %>
                        <tr>
                            <td><%= c.getName() %></td>
                            <td>Rs.<%= c.getPrice() %></td>
                            <td><%= c.getQuantity() %></td>
                            <td>Rs.<%= c.getPrice() * c.getQuantity() %></td>
                        </tr>
                    <% }
                } else { %>
                    <tr>
                        <td colspan="4" style="text-align: center;">Your cart is empty.</td>
                    </tr>
                <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- FOOTER -->
    <footer class="footer">
        <div class="footer-content">
            <p class="copyright" style="color: #fff">&copy; 2023 Your
                Company. All rights reserved.</p>
            <div class="footer-links">
                <a href="./feedback.php">Feedback</a> 
                <a href="./Terms and conditions.php">Terms and condition</a> 
                <a href="./privacy.php">Privacy and Policy</a>
            </div>
            <div class="social-icons">
                <i class="fab fa-facebook"></i> 
                <i class="fab fa-twitter"></i> 
                <i class="fab fa-google"></i> 
                <i class="fab fa-linkedin"></i>
            </div>
        </div>
    </footer>
    <!-- END FOOTER -->
</body>
</html>
