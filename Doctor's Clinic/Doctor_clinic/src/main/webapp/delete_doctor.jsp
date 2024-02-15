<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Doctor</title>
</head>
<body>
<%
String license=request.getParameter("licenseno");
int licenseno=Integer.parseInt(license);
Connection con;
PreparedStatement pstm;
try{
	
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("delete from doctor where licenseno=?");
	pstm.setInt(1,licenseno);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("adminShowDoctor.jsp");
}catch (Exception e){}
%>
</body>
</html>