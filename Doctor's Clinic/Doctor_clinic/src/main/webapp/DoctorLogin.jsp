<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Doctor Login</title>
    <style>
        body {
            font-family: 'Arial', Helvetica, sans-serif;
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
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
            animation: fadeIn 0.8s forwards;
        }
        
        @keyframes fadeIn {
      		to {
        		opacity: 1;
        		transform: translateY(0);
      		}
    	}

        .header {
            background-color: #0078d4;
            color: #ffffff;
            text-align: center;
            padding: 20px;
        }

        .form-container {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            color: #333;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 95%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            color: #333;
            background: rgba(255, 255, 255, 0.2); /* Glassmorphism effect */
        }

        .form-group input[type="submit"] {
            background: linear-gradient(45deg, #3498db, #8e44ad);
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-group input[type="submit"]:hover {
            background: linear-gradient(45deg, #8e44ad, #3498db);
        }

        .error-message {
            color: #e74c3c;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="header">
            <h2>Doctor Login</h2>
        </div>
        <div class="form-container">
            <%
                String msg = request.getParameter("msg");
                if ("invalid".equals(msg)) {
            %>
            <p class="error-message">Email or Password Error!</p>
            <% } %>
            <form action="DoctorLogin" method="post">
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="pass" required>
                </div>
                <div class="form-group">
                    <input type="submit" value="Login">
                </div>
            </form>
        </div>
    </div>
</body>
</html>
