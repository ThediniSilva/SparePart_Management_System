<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="Login.css">  <!--css file connected-->
</head>
<body>

    
  
    <h1><i>Login </i></h1>
    <div class = "bg-grandiant">
    <form action="login" method="post"> 

       
		
		<div  class = "text">
            <label for="username" class="text-medium">Username</label>
            <input type="text" id="username" name="username">
        </div>
        
        <div class = "text">
            <label for="password" class="text-medium">Password</label>
            <input type="password" id="password" name="password">
        </div>
        
        
        
        <input type="submit" class="text-submit" id="submit" name="submit" value="Submit">
    </form>
    </div>
    
            <!-- Image in the right column -->
            <img src="Image/login.png" alt="Your Image">
      


</body>
</html>