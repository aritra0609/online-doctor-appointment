<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="org.mis.ConnectionProvider" %>
    
<%
String email = request.getParameter("email");
String license = request.getParameter("licenseno");
int licenseno=Integer.parseInt(license);
String name=request.getParameter("name");
String phno=request.getParameter("phno");
String speciality=request.getParameter("speciality");
String location=request.getParameter("location");
Connection con;
PreparedStatement pstm;
try{
	con=ConnectionProvider.createC();
	pstm=con.prepareStatement("update doctor set name=?,email=?,licenseno=?,phno=?,speciality=?, location=? where licenseno=?");
	pstm.setInt(7,licenseno);
	pstm.setString(1,name);
	pstm.setString(2,email);
	pstm.setInt(3, licenseno);
	pstm.setString(4,phno);
	pstm.setString(5,speciality);
	pstm.setString(6,location);
	pstm.executeUpdate();
	con.close();
	response.sendRedirect("adminShowDoctor.jsp");
}
catch (Exception e){
	e.printStackTrace();
}
%>