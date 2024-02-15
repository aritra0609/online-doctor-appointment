<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
    <%@ page import="java.net.URLEncoder" %>
    
     <%String str=(String)session.getAttribute("DEMAIL"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Dashboard</title>
<meta charset="ISO-8859-1">
<title></title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <!-- Popper JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>

        <meta name="viewport" content="width=device-width, initial-scale=1">
       <style>
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
       </style>
</head>
<body>
 <p class="nav-link" >Hello: <%=str %></p>
 <a class="button" href="logout.jsp">Logout</a>  
 <h2><center>My patients</center></h2><hr>
	<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
        <tr>

            
            
            <th><center>Patient Name</center></th>
            <th><center>Patient Email</center></th>
            <th><center>Patient Phone Number</center></th>
            <th><center>Date of Appointment</center></th>
            <th><center>Time of Appointment</center></th>
            </tr>
       
                      
<% 
String pname = null;
String pemail = null;
String phno = null;
Date date=null;
Time time=null;
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
try {
	conn= ConnectionProvider.createC();
	pstm = conn.prepareStatement("select patient_name, patient_email, patient_phone_number,Date,Time from appointment where doctor_email=?");
	pstm.setString(1, str);
	rs = pstm.executeQuery();
while (rs.next()) {
pname=rs.getString(1);
pemail=rs.getString(2);
phno=rs.getString(3);
date=rs.getDate(4);
time=rs.getTime(5);
out.println("<tr>");

out.println("<td>");
out.println(pname);
out.println("</td>");

out.println("<td>");
out.println(pemail);
out.println("</td>");


out.println("<td>");
out.println(phno);
out.println("</td>");

out.println("<td>");
out.println(date);
out.println("</td>");

out.println("<td>");
out.println(time);
out.println("</td>");

out.println("</tr>");
}

} catch (Exception e) {}
%>
         
        
    

    </table>
</div>
</center>


 
</body>
</html>