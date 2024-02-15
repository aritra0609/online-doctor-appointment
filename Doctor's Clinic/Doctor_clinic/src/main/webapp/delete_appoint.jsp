<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Appointment</title>
</head>
<body>
<%
String license=request.getParameter("licenseno");
int licenseno=Integer.parseInt(license);
String pName=request.getParameter("pName");
Connection con;
PreparedStatement pstm;
try{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from appointment where license_number=? and patient_name=?");
	pstm.setInt(1,licenseno);
	pstm.setString(2,pName);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("showAllappointments.jsp");
}catch (Exception e){}
%>
</body>
</html>