<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        h1 {
            background-color: #333;
            color: #fff;
            padding: 10px;
        }
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }
        table, td, th {
            border: 1px solid #ddd;
        }
        td {
            padding: 8px;
        }
        th {
            background-color: #333;
            color: #fff;
            padding: 8px;
        }
        button {
            background-color: #333;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin: 10px;
            cursor: pointer;
        }
        button:hover {
            background-color: #555;
        }
    </style>
</head>
<body>
    <h1>User Profile</h1>
    <table>
  
        <tr>
            <td>First Name:</td>
            <td>${Details.fname}</td>
        </tr>
        <tr>
            <td>Last Name:</td>
            <td>${Details.lname}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${Details.email}</td>
        </tr>
        <tr>
            <td>Contact Number:</td>
            <td>${Details.contactNumber}</td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>${Details.address}</td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>${Details.username}</td>
        </tr>
        <!-- You may choose not to display the password for security reasons -->
        <!--
        <tr>
            <td>Password:</td>
            <td>${Details.password}</td>
        </tr>
        -->
        	
    </table>
    <!--Update profile function  -->
   <button id="updateButton">Update Profile</button>

   <script>
    var customerId = "${Details.id}";
    var customerFirstName = "${Details.fname}";
    var customerLastName = "${Details.lname}";
    var customerEmail = "${Details.email}";
    var customerContactNumber = "${Details.contactNumber}";
    var customerAddress = "${Details.address}";
    var customerUsername = "${Details.username}";
    var customerPassword = "${Details.password}";

    document.getElementById("updateButton").addEventListener("click", function () {
        // Build the URL with all customer details as URL parameters
        var updateURL = "update.jsp";
        updateURL += "?id=" + customerId;
        updateURL += "&fname=" + customerFirstName;
        updateURL += "&lname=" + customerLastName;
        updateURL += "&email=" + customerEmail;
        updateURL += "&contactNumber=" + customerContactNumber;
        updateURL += "&address=" + customerAddress;
        updateURL += "&username=" + customerUsername;
        updateURL += "&password=" + customerPassword;

        // Redirect to the UpdateProfile.jsp page with customer details as URL parameters
        window.location.href = updateURL;
    });
</script>


<!--delete profile function  -->
<button id="deletebuton">Delete Profile</button>
<script>
    var customerId = "${Details.id}";
    var customerFirstName = "${Details.fname}";
    var customerLastName = "${Details.lname}";
    var customerEmail = "${Details.email}";
    var customerContactNumber = "${Details.contactNumber}";
    var customerAddress = "${Details.address}";
    var customerUsername = "${Details.username}";
    var customerPassword = "${Details.password}";

    document.getElementById("deletebuton").addEventListener("click", function () {
        // Build the URL with all customer details as URL parameters
        var updateURL2 = "delete.jsp";
        updateURL2 += "?id=" + customerId;
        updateURL2 += "&fname=" + customerFirstName;
        updateURL2 += "&lname=" + customerLastName;
        updateURL2 += "&email=" + customerEmail;
        updateURL2 += "&contactNumber=" + customerContactNumber;
        updateURL2 += "&address=" + customerAddress;
        updateURL2 += "&username=" + customerUsername;
        updateURL2 += "&password=" + customerPassword;

        // Redirect to the deleteProfile.jsp page with customer details as URL parameters
        window.location.href = updateURL2;
    });
</script>
</body>
</html>
