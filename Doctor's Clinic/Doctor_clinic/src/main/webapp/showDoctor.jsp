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

 <h2><center>Doctor's List</center></h2><hr>
<%String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
 <h2>Sucessfully Booked!</h2> 	
<% }%>

<% 
if("invalid".equals(msg))
{%>
<h2>There is some issue!!</h2> 	
<%} %>

	<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
        <tr>

            <th><center>Name</center></th>
            <th><center>Email</center></th>
            <th><center>Licenseno.</center></th>
            <th><center>Phone Number</center></th>
            <th><center>Speciality</center></th>
            <th><center>Location</center></th>
            </tr>
       
                      
<% 
String Name = null;
String email=null;
String phno=null;
int licenseno=0;
String speciality=null;
String location=null;
Connection conn = null;
PreparedStatement pstm = null;
ResultSet rs = null;
try {
conn= ConnectionProvider.createC();
pstm = conn.prepareStatement("select * from doctor");
rs = pstm.executeQuery();

while (rs.next()) {
Name=rs.getString(1);
email=rs.getString(2);
licenseno=rs.getInt(3);
phno=rs.getString(4);
speciality=rs.getString(6);
location=rs.getString(7);

out.println("<tr>");


out.println("<td>");
out.println(Name);
out.println("</td>");

out.println("<td>");
out.println(email);
out.println("</td>");

out.println("<td>");
out.println(licenseno);
out.println("</td>");


out.println("<td>");
out.println(phno);
out.println("</td>");

out.println("<td>");
out.println(speciality);
out.println("</td>");

out.println("<td>");
out.println(location);
out.println("</td>");

out.println("<td>");
String url = "book_appointment.jsp?licenseno=" + licenseno + "&speciality="+ speciality+"&email="+ email  +"&Name=" + URLEncoder.encode(Name, "UTF-8");
out.println("<a href='" + url + "'><div class='btn btn-danger'>Book Appointment</div></a>");

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