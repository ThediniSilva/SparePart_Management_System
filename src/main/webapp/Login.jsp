<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer registration</title>
  <link rel="stylesheet" type="text/css" href="log.css">  <!--css file connected-->
  <link rel="stylesheet" type="text/css" href="Index.css">

</head>
<body>

<nav>
    <!-- Logo -->
    <a href="/" class="logo">
        <img src="./Image/Image.png" alt="Logo">
    </a>
    <ul class="menu">
        <li><a href="#">HOME</a></li>
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

<!--=====================================
    START OF THE FORM
=======================================-->
<div class="bg-grandiant">
    <div class="container">
        <div class="left-box">
            <h1><i>Login</i></h1>
            <form action="login" method="post">
                <div class="text">
                    <label for="username" class="text-medium">Username</label>
                    <input type="text" id="username" name="username">
                </div>
                
                <div class="text">
                    <label for="password" class="text-medium">Password</label>
                    <input type="password" id="password" name="password">
                </div>
                
                <input type="submit" class="text-submit" id="submit" name="submit" value="Submit">
            </form>
        </div>
    </div>
</div>
<!--=====================================
    END OF THE FORM
=======================================-->

<!-- FOOTER -->

<footer class="footer">
  <div class="footer-content">
    <p class="copyright" style="color:#fff">
      &copy; 2023 Your Company. All rights reserved.
    </p>
    <div class="footer-links">
      <a href="./feedback.php" >Feedback</a>
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
