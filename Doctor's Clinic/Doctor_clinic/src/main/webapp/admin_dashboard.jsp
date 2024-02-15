<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Panel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
        }
        
        header {
            background-color: #3498db;
            color: #fff;
            text-align: center;
            padding: 20px;
        }
        
        nav {
            text-align: center;
            padding: 20px;
        }
        
        .button {
            display: inline-block;
            background-color: #3498db;
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .button:hover {
            background-color: #2471a3;
        }
        
        .content {
            text-align: center;
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Admin Panel</h1>
    </header>
    
    <nav>
        <a class="button" href="adminShowDoctor.jsp">View Doctors</a>
        <a class="button" href="showAllappointments.jsp">View Appointments</a>
        <a class="button" href="adminForm.jsp">Add Another Admin</a>
        <a class="button" href="logout.jsp">Log out</a>
    </nav>
    
    <div class="content">
        <!-- Your content goes here -->
    </div>
</body>
</html>
