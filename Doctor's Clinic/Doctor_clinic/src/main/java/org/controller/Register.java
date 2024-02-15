package org.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.UserBean;
import org.model.dao.RegisterDao;

/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Register() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String phno=request.getParameter("phno");
	String password=request.getParameter("password");
	String speciality=request.getParameter("speciality");
	String license=request.getParameter("licenseno");
	int licenseno=Integer.parseInt(license);
	String location=request.getParameter("location");
	UserBean ubean=new UserBean();
	ubean.setName(name);
	ubean.setEmail(email);
	ubean.setPhno(phno);
	ubean.setPass(password);
	ubean.setLicenseno(licenseno);
	ubean.setSpeciality(speciality);
	ubean.setLocation(location);
	RegisterDao rd=new RegisterDao();
	int i=rd.insert(ubean);
	if(i!=0)
	{
		response.sendRedirect("Signup.jsp?msg=valid");
		
	}
	else
	{
		response.sendRedirect("Signup.jsp?msg=invalid");
		
	}
  }

}
