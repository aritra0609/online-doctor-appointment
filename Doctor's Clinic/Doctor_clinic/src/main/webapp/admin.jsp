<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #3498db, #8e44ad);
            text-align: center;
            padding-top: 50px;
            background-image: url("https://wallpapercave.com/wp/wp2508260.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            margin: 0;
            overflow: hidden;
        }

        .loginform {
            max-width: 400px;
            margin: 90px auto;
            padding: 20px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .formheading {
            background: linear-gradient(45deg, #3498db, #8e44ad);
            color: #fff;
            padding: 10px;
            text-align: center;
            border-radius: 5px 5px 0 0;
            
        }

        .formcontent {
            margin-top: 20px;
        }

        .formcontent label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #fff;
            text-shadow: 1px 1px 3px #555; 
        }

        .formcontent input {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.2);
            color: #fff;
            text-shadow: 1px 1px 3px #555; /* Greyish text shadow */
        }

        .button {
            background: linear-gradient(45deg, #3498db, #8e44ad);
            padding: 10px 20px;
            color: #fff;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background: linear-gradient(45deg, #8e44ad, #3498db);
        }

        .error-message {
            color: #e74c3c;
            margin-top: 10px;
            text-shadow: 1px 1px 3px #555; /* Greyish text shadow */
        }
    </style>
</head>
<body>
    <div class="loginform">
        <h2 class="formheading">Admin Login Page</h2>
        <form action="AdminLogin" method="POST" class="formcontent">
            <label for="uname">Name:</label>
            <input type="text" id="uname" name="uname" required>

            <label for="uemail">Email:</label>
            <input type="email" id="uemail" name="uemail" required>

            <label for="upass">Password:</label>
            <input type="password" id="upass" name="upass" required>

            <input class="button" type="submit" value="Login">
        </form>
        <%
            String msg = request.getParameter("msg");
            if ("invalid".equals(msg)) {
        %>
        <p class="error-message">Username or Password Error!</p>
        <% } %>
    </div>
</body>
</html>
