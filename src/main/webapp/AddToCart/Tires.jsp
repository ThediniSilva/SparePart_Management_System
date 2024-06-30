<%@page import="java.util.*"%>
<%@page import="Coustemer.databaseConnection"%>
<%@page import="Coustemer.productDbUtil"%>
<%@page import="Coustemer.product"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
    // Get database connection and fetch products
    productDbUtil pd = new productDbUtil(databaseConnection.getConnection());
    List<product> products = pd.getAllProducts();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Tires.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
	<nav>
		<!-- Logo -->
		<a href="/" class="logo">
			<img src="./cartImage/Image.png" alt="Logo">
		</a>
		<ul class="menu">
			<li><a href="#">HOME</a></li>
			<li><a href="#">ABOUT US</a></li>
			<li><a href="#">Products</a></li>
			<li class="event-section"><a href="#">Shop By Category</a>
				<ul class="event-dropdown">
					<li><a href="#">Engine</a></li>
					<li><a href="#">Tires</a></li>
					<li><a href="#">Filters</a></li>
					<li><a href="#">OTHER</a></li>
				</ul>
			</li>
			<li><a href="#">CONTACT US</a></li>
			<li><a href="#">FAQ</a></li>
		</ul>

		<div class="two-section">
			<a href="../register.jsp" class="signup" type="button">SignUp</a>
			<a href="../Login.jsp" class="Login">LogIn</a>
		</div>
		<div class="NavIcon">
			<a href="../cart.jsp">
				<i class="fa fa-shopping-cart fa-lg" style="margin-right: 30px; color: rgb(255, 255, 255);"></i>
			</a>
			<i class="fa fa-user fa-lg" style="color: rgb(255, 255, 255);"></i>
		</div>
	</nav>

	<!-- Tires and Wheels Part -->
	<hr>
	<div class="container3">
		<div class="title">
			<h2>Tires and Wheels</h2>
		</div>
		<div class="Box-Row">
			<% if (!products.isEmpty()) { %>
				<% for (product p : products) { %>
				<div class="box">
					<%-- Check if image data is null --%>
					<% if (p.getImage() != null) { %>
					<%-- Convert byte array to Base64 string --%>
					<% String base64Image = Base64.getEncoder().encodeToString(p.getImage()); %>
					<img src="data:image/jpeg;base64, <%= base64Image %>" alt="<%= p.getName() %>">
					<% } else { %>
					<img src="path_to_default_image.jpg" alt="Default Image">
					<% } %>
					<h3><%= p.getName() %></h3>
					<h4><%= p.getPrice() %></h4>
					<div class="btn-container">
						<a class="btn-dark" href="<%= request.getContextPath() %>/AddtoCartServelet?id=<%=p.getId()%>">Add to Cart</a>
						<a class="btn-primary" href="#">Buy Now</a>
					</div>
				</div>
				<% } %>
			<% } %>
		</div>
	</div>
	<hr>
	<!-- Footer -->
	<footer class="footer">
		<div class="footer-content">
			<p class="copyright" style="color: #fff">&copy; 2023 Your Company. All rights reserved.</p>
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
	<!-- End Footer -->
</body>
</html>
