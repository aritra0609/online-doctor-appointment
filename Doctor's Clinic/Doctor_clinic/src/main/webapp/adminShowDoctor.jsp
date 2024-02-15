<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
     <%@page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title></title>
        <!-- Latest compiled and minified CSS -->
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
        <h2><center>Doctor List</center></h2><hr>
        <div class="table-responsive">
            <table class="table table-striped table-bordered table-hover table-condensed" width="80%" align="center">
                <tr>

                    <th><center>Name</center></th>
                    <th><center>Email</center></th>
                    <th><center>License Number</center></th>
                    <th><center>Phone Number</center></th>
                    <th><center>Speciality</center></th>
                    <th><center>Location</center></th>
                    </tr>
                <form action="#">    
                              
            <% 
       
String name= null;
String email = null;
String phno=null;
String speciality=null;
String licenseno=null;
String location=null;
 Connection con = null;
 PreparedStatement pstm = null;
 ResultSet rs = null;
 try {
   con= ConnectionProvider.createC();
pstm = con.prepareStatement("select * from doctor");
rs = pstm.executeQuery();

while (rs.next()) {
name=rs.getString(1);
email=rs.getString(2);
licenseno=rs.getString(3);
phno=rs.getString(4);
speciality=rs.getString(6);
location=rs.getString(7);

out.println("<tr>");


out.println("<td>");
out.println(name);
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
String url = "update_doctor.jsp?licenseno=" + licenseno + "&name=" + URLEncoder.encode(name, "UTF-8");
out.println("<a href='" + url + "'><div class='btn btn-danger'>Update</div></a>");

out.println("</td>");
out.println("<td>");

out.println("<a href='delete_doctor.jsp?licenseno=" + licenseno + "'><div class='btn btn-danger'>Delete</div></a>");

out.println("</td>");
out.println("</tr>");
}

} catch (Exception e) {
	
}

%>
                    
                
            

            </table>
        </div>
        </center>
        </body>
        </html>