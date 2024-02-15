<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
    <%@ page import="java.net.URLEncoder" %>
    
<!DOCTYPE html>
<html>
<head>
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


</head>
<body>

 <h2><center>My appointment</center></h2><hr>
	<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
        <tr>

            
            <th><center>Doctor Name</center></th>
            <th><center>Speciality</center></th>
            <th><center>Patient Name</center></th>
            <th><center>Patient Email</center></th>
            <th><center>Patient Phone Number</center></th>
            <th><center>Date of Appointment</center></th>
            <th><center>Time of Appointment</center></th>
            </tr>
       
                      
<% 
String str = (String) session.getAttribute("EMAIL");
String pName = null;
String dName = null;
String phno = null;
int licenseno = 0;
Date date=null;
Time time=null;
String speciality = null;
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
try {
	conn= ConnectionProvider.createC();
	pstm = conn.prepareStatement("select * from appointment where patient_email=?");
	pstm.setString(1, str);
	rs = pstm.executeQuery();
while (rs.next()) {
pName=rs.getString(4);
dName=rs.getString(2);
licenseno=rs.getInt(1);
phno=rs.getString(6);
speciality=rs.getString(3);
date=rs.getDate(7);
time=rs.getTime(8);
out.println("<tr>");


out.println("<td>");
out.println(dName);
out.println("</td>");

out.println("<td>");
out.println(speciality);
out.println("</td>");


out.println("<td>");
out.println(pName);
out.println("</td>");

out.println("<td>");
out.println(str);
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