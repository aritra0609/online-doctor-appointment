package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.model.bean.UserBean;
import org.model.dao.DoctorLoginDao;

/**
 * Servlet implementation class DoctorLogin
 */
@WebServlet("/DoctorLogin")
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String demail=request.getParameter("email");
		String pass=request.getParameter("pass");
		HttpSession session=request.getSession();
		UserBean ubean=new UserBean();
		ubean.setEmail(demail);
		ubean.setPass(pass);
		
		DoctorLoginDao ld=new DoctorLoginDao();
		boolean status=ld.login(ubean);
		if(status)
		{
			session.setAttribute("DEMAIL", demail);
			response.sendRedirect("doctor_dashboard.jsp");
		}
		else 
		{
			response.sendRedirect("DoctorLogin.jsp?msg=invalid");
		}
	}

}
