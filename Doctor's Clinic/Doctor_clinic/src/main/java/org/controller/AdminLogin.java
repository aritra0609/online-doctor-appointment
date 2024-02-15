package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import org.model.bean.UserBean;

import org.model.dao.AdminLoginDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("uname");
		String email=request.getParameter("uemail");
		String pass=request.getParameter("upass");
		//HttpSession session=request.getSession();
		UserBean ubean=new UserBean();
		ubean.setName(name);
		ubean.setEmail(email);
		ubean.setPass(pass);
		
		AdminLoginDao ld=new AdminLoginDao();
		boolean status=ld.login(ubean);
		if(status)
		{
			
			response.sendRedirect("admin_dashboard.jsp");
		}
		else
		{
			response.sendRedirect("admin.jsp?msg=invalid");
		}
		
	}

}
