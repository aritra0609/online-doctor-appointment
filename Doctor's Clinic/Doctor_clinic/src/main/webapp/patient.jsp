<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Patient Login/Signup</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(45deg, #3498db, #8e44ad);
            background-image: url("https://wallpapercave.com/dwp1x/wp2968489.jpg");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            overflow: hidden;
            margin: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            justify-content: center;
            align-items: center;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            opacity: 0;
            transform: translateY(20px);
            animation: fadeIn 0.8s forwards;
        }

        @keyframes fadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        h1 {
            color: #fff;
            padding: 10px;
            font-size: 30px;
            text-shadow: 2px 2px 5px #555; /* Greyish text shadow */
            margin-bottom: 20px;
        }

        p {
            color: #f1f1f1;
            font-size: 18px;
            margin-bottom: 20px;
            text-shadow: 1px 1px 3px #555; /* Greyish text shadow */
        }

        nav {
            text-align: center;
            padding: 20px;
        }

        .button {
            display: inline-block;
            background: linear-gradient(45deg, #3498db, #8e44ad);
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .button:hover {
            background: linear-gradient(45deg, #8e44ad, #3498db);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Patient Login/Signup</h1>
        
        <nav>
            <a class="button" href="PatientLogin.jsp">Login</a>
            <a class="button" href="PatientSignup.jsp">Signup</a>
        </nav>
        
        <!-- Your content goes here -->
    </div>
</body>
</html>
