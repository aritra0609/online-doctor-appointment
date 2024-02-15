<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Doctor Signup</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(45deg, #3498db, #8e44ad);
            background-image: url("https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17818.jpg?w=996&t=st=1703767378~exp=1703767978~hmac=b16ae13b22d6aa527a2c955a775d865276a1530356f34065497b538d3ac28641");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            overflow: hidden;
        }

        .container {
            background: rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            backdrop-filter: blur(10px);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            width: 500px;
            max-height: 80vh; 
            overflow-y: auto; 
        }

        h1 {
            font-size: 24px;
            color: #333;
            text-align: center;
        }

        .form-group {
            padding: 10px;
            margin-right: 30px;
        }

        label {
            display: block;
            text-align: left;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="number"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            background: rgba(255, 255, 255, 0.2);
            color: #333;
        }

        .btn {
            display: inline-block;
            background: linear-gradient(45deg, #3498db, #8e44ad);
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            font-size: 16px;
            cursor: pointer;
            width: calc(100% - 20px);
        }

        .btn:hover {
            background: linear-gradient(45deg, #8e44ad, #3498db);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Doctor Signup</h1>
        <%String msg=request.getParameter("msg");
            if("valid".equals(msg)) {%>
            <h2>Sucessfully Registered!</h2> 	
        <% } %>
        <% if("invalid".equals(msg)) {%>
            <h2>There is some issue!!</h2> 	
        <%} %>

        <form action="Register" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="licenseno">License Number:</label>
                <input type="number" id="licenseno" name="licenseno" required>
            </div>
            <div class="form-group">
                <label for="phno">Phone Number:</label>
                <input type="text" id="phno" name="phno" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" required>
            </div>
            <div class="form-group">
                <label for="speciality">Specialty:</label>
                <input type="text" id="speciality" name="speciality" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn">Sign Up</button>
            </div>
        </form>
    </div>
</body>
</html>
