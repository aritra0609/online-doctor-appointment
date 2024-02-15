package org.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.model.bean.PatientBean;
import org.model.dao.PatientLoginDao;

/**
 * Servlet implementation class PatientLogin
 */
@WebServlet("/PatientLogin")
public class PatientLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		HttpSession session=request.getSession();
		PatientBean ubean=new PatientBean();
		ubean.setEmail(email);
		ubean.setPassword(pass);
		PatientLoginDao ld=new PatientLoginDao();
		boolean status=ld.login(ubean);
		if(status)
		{
			session.setAttribute("EMAIL", email);
			response.sendRedirect("patient_dashboard.jsp");
		}
		else
		{
			response.sendRedirect("PatientLogin.jsp?msg=invalid");
		}
	}

}
