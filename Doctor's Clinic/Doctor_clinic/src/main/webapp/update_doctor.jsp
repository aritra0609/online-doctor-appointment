<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Doctor</title>
<style>
input[type=text],input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=number], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-color: #45a049;
}
div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<%
String license  =request.getParameter("licenseno");
int licenseno=Integer.parseInt(license);
Connection con;
PreparedStatement pstm;
ResultSet rs;
String name = null;
String email=null;
String phno=null;
String speciality=null;
String location=null;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("select * from doctor where licenseno=?");
	pstm.setInt(1,licenseno);
	rs=pstm.executeQuery();
	while(rs.next())
	{
		name=rs.getString(1);
		licenseno=rs.getInt(3);
		phno=rs.getString(4);
		speciality=rs.getString(6);
		location=rs.getString(7);
		email=rs.getString(2);
	}
%>
<h2><center>Update Doctor</center></h2>

<div>
   <form action="update_data.jsp" method="post">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="<%= request.getParameter("name") %>">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value=<%= email %>>
            </div>
             <div class="form-group">
                <label for="licenseno">License Number:</label>
                <input type="number" id="licenseno" name="licenseno" value=<%= licenseno %>>
            </div>
             <div class="form-group">
                <label for="phno">Phone Number:</label>
                <input type="text" id="phno" name="phno" value=<%= phno %>>
            </div>
            
            <div class="form-group">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" value=<%= location %>>
            </div>
            <div class="form-group">
                <label for="speciality">Specialty:</label>
                <input type="text" id="speciality" name="speciality" value=<%= speciality %>>
            </div>
            <div class="form-group">
                 <input type="submit" value="Submit">
            </div>
        </form>
</div>

<%

}catch (Exception e){}
%>
</body>
</html>