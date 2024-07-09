
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer registration</title>
  <link rel="stylesheet" type="text/css" href="registerStyle.css">  <!--css file connected-->
   <!-- Add JavaScript for validation -->
  <script>
  function validateForm() {
    var password = document.getElementById("password").value;
    var username = document.getElementById("username").value;
    var email = document.getElementById("email").value;

    // Check if any of the required fields are empty
    var requiredFields = document.querySelectorAll("input[required]");
    for (var i = 0; i < requiredFields.length; i++) {
      if (requiredFields[i].value.trim() === "") {
        alert("Please complete all the details of this form.");
        return false;
      }
    }

    // Password strength validation
    if (password.length < 8) {
      alert("Password must be at least 8 characters long");
      return false;
    }

    // Username strength validation (you can define your own criteria)
    if (username.length < 6) {
      alert("Username must be at least 6 characters long");
      return false;
    }

    // Email format validation using a simple regular expression
    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!email.match(emailPattern)) {
      alert("Invalid email format");
      return false;
    }

    return true;
  }
</script>
</head>
<body>

   <!--=====================================
    START OF THE FORM
=======================================-->
	<!-- <div class="container"> -->
	<div class = "bg-grandiant">
    <div class ="left-box">
    <h1><i>Sign-Up </i></h1>
    <form action="insert" method="post" onsubmit="return validateForm();">
 <!-- id="sign up" no validate --> <!-- PHP file connected -->
        <div>
            <label for="fname" class="text-medium">First Name</label>
            <input type="text" id="fname" name="fname" required>
        </div>
		<div>
            <label for="lname" class="text-medium">Last Name</label>
            <input type="text" id="lname" name="lname" required>
        </div>
        
        <div>
            <label for="email" class="text-medium">Email</label>
            <input type="email" id="email" name="email" required>
        </div>
        
        <div>
            <label for="text" class="text-medium">Contact Number</label>
            <input type="text" id="Contact Number" name="ContactNumber" required>
        </div>
        
        <div>
            <label for="email" class="text-medium">Address</label>
            <input type="text" id="Address" name="Address" required>
        </div>
		
		<div>
            <label for="username" class="text-medium">Username</label>
            <input type="text" id="username" name="username" required>
        </div>
        
        <div>
            <label for="password" class="text-medium">Password</label>
            <input type="password" id="password" name="password" required>
        </div>
        
        
        
        <input type="submit" class="text-submit" id="submit" name="submit" value="Submit">
    </form>
	</div>
	<!--=====================================
    END OF THE FORM
        
=======================================-->
<div class="right-box">
            <!-- Image in the right column -->
            <img src="Image/5.png" alt="Your Image">
        </div>


</div>
</body>
</html>
