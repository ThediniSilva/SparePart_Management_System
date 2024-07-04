<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="AboutUs.css">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>
 <nav>
    <!-- Logo -->
    <a href="/" class="logo">
        <img src="./Image/Image.png" alt="Logo">
    </a>
    <ul class="menu">
        <li><a href="Index.jsp">HOME</a></li>
        <li><a href="AboutUs.jsp">ABOUT US</a></li>
        <li><a href="#">Products</a></li>
        <li class="event-section">
            <a href="#">Shop By Category</a>
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
        <a href="register.jsp" class="signup" type="button" >SignUp</a>
   
        <a href="Login.jsp" class="Login" >LogIn</a>
    </div>
    <div class="NavIcon" >
    	<a href="cart.jsp">
    <i class="fa fa-shopping-cart fa-lg" style="margin-right:30px; color: rgb(255, 255, 255);"></i>
    </a>

    	<i class="fa fa-user fa-lg" style="color: rgb(255, 255, 255);"></i>
	 
	 </div>
</nav>





    <h1>About Our Automate Center.......</h1>


<div class="container">
    <section>
        <h2>Our Company</h2>
        <p>Welcome to the Automate Center. We are dedicated to providing the best solutions for managing spare parts effectively and efficiently. Our system is designed to help businesses streamline their spare parts inventory, reduce downtime, and increase productivity.</p>
    </section>

    <section>
        <h2>Our Team</h2>
        <div class="team-member">
            <h3>Malinda Perera - CEO</h3>
            <p>Malinda has over 20 years of experience in the spare parts industry and leads our company with a vision to innovate and excel.</p>
        </div>
        <div class="team-member">
            <h3>Nalani Athukorala - CTO</h3>
            <p>Nalani is the technical backbone of our company, ensuring that our system remains cutting-edge and user-friendly.</p>
        </div>
        <div class="team-member">
            <h3>Sampath Gamage - COO</h3>
            <p>Sampath oversees our operations, making sure that everything runs smoothly and efficiently for our clients.</p>
        </div>
    </section>

    <section>
        <h2>Contact Us</h2>
        <p>If you have any questions or need further information, please feel free to contact us:</p>
        <ul>
            <li>Email: aotomate@sparepartmanagement.com</li>
            <li>Phone: +94115645678</li>
            <li>Address: 123 Spare Part Lane, Industry City, Colombo 05</li>
        </ul>
    </section>
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

