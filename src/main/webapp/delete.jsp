<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
      <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #007BFF;
            color: #fff;
            padding: 10px;
            text-align: center;
        }
        form {
            background-color: #fff;
            width: 80%;
            max-width: 500px;
            margin: 20px auto;
            padding: 20px;
            border: 2px solid #007BFF;
            border-radius: 5px;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        table, td {
            border: 1px solid #ddd;
        }
        td {
            padding: 8px;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin: 5px 0;
        }
        input[type="text"][readonly] {
            background-color: #f0f0f0;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px 0;
            cursor: pointer;
            border-radius: 5px;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Delete Profile</h1>
     <form action="delete" method="post">
        <table>
            <tr>
            
                <td>Customer ID:</td>
                <td><input type="text" name="cid" value="<%= request.getParameter("id") %>" readonly></td>
            </tr>
            <tr>
                <td>First Name:</td>
                <td><input type="text" name="cfname" value="<%= request.getParameter("fname") %>"readonly></td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td><input type="text" name="clname" value="<%= request.getParameter("lname") %>"readonly></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" name="cemail" value="<%= request.getParameter("email") %>"readonly></td>
            </tr>
            <tr>
                <td>Contact number:</td>
                <td><input type="text" name="ccontactNumber" value="<%= request.getParameter("contactNumber") %>"readonly></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="caddress" value="<%= request.getParameter("address") %>"readonly></td>
            </tr>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="cusername" value="<%= request.getParameter("username") %>"readonly></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="cpassword" value="<%= request.getParameter("password") %>"readonly></td>
            </tr>
        </table>
        <input type="submit" value="Delete">
    </form>
</body>
</html>
