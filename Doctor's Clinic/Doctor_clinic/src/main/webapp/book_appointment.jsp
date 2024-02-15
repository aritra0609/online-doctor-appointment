<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%String str=(String)session.getAttribute("EMAIL"); %>

 <%
   // Retrieve licenseno from the request parameter
   String licenseno = request.getParameter("licenseno");
   String speciality = request.getParameter("speciality");
   String demail= request.getParameter("email");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>BOOK NOW</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            
        }
        #head{
        	padding-left:150px;
        	 font-weight: bold;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f5f5f5;
            justify-content: center;
            align-items: center;
        }

        div {
            margin: 20px;
        }

        label {
            display: block;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        input[type="tel"],
        select,
        textarea {
            width: 100%;
            padding: 8px;
            
            border: 1px solid #ccc;
            border-radius: 3px;
            
        }

        select {
            height: 34px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
	
    <form action="booking" method="post">
    	<h id="head">BOOK NOW</h>
    	
        <div>
            <label for="licenseno">License Number:</label>
            <input type="text" id="licenseno" name="licenseno"  value="<%= licenseno %>" required>
        </div>
		<div>
            <label for="dname">Doctor Name:</label>
            <input type="text" id="dname" name="dname"  value="<%= request.getParameter("Name") %>">
        </div>
        <div>
            <label for="demail">Doctor Email:</label>
            <input type="text" id="demail" name="demail"  value="<%= demail %>">
        </div>
        <div>
            <label for="speciality">Doctor Speciality:</label>
            <input type="text" id="speciality" name="speciality"  value="<%= speciality %>">
        </div>
        <div>
            <label for="pname">Patient Name:</label>
            <input type="text" id="pname" name="pname">
        </div>
        <div>
            <label for="email">Patient Email:</label>
            <input type="email" id="email" name="email" value=<%= str %>>
        </div>

        <div>
            <label for="phone">Patient Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
        </div>
		<div>
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
        </div>
        <div>
            <label for="time">Time:</label>
            <input type="time" id="time" name="time" required>
        </div>
        <div>
            <input type="submit" value="Book Now">
        </div>
    </form>
</body>
</html>
