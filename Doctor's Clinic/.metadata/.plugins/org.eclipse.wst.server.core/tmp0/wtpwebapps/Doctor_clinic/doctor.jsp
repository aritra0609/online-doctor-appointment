<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome Doctor</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            text-align: center;
             background-image: url('https://e0.pxfuel.com/wallpapers/150/633/desktop-wallpaper-amazing-ultra-doctors-background-doctor-background-doctor-medicine.jpg');
    		background-size:cover;
		    background-position: center;
		    background-repeat: no-repeat;   
    		width:88vw;
    		height:94vh;
    		
        }

        .container {
            margin-top: 100px;
             position: absolute;
   			 top: 45%;
    		 left: 50%;
   			 transform: translate(-50%, -90%);
   			 background-color: #1E212D;
   			 padding:60px;
   			 
        }

        h1 {
            font-size: 36px;
            background-color:blue;
            padding:10px;
        }

        .button-container {
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: red;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            margin: 0 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .button:hover {
            background-color: #0056b3;
        }
        
    </style>
</head>
<body>
  <div class="container">
        <h1 style="color:white;">Welcome Doctor</h1>
        <div class="button-container">
            <a href="#" class="button">Login</a>
            <a href="Signup.jsp" class="button">Signup</a>
        </div>
    </div>
</body>
</html>