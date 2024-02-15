package org.controller;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.model.bean.PatientBean;
import org.model.dao.PatientRegisterDao;

/**
 * Servlet implementation class PatientRegister
 */
@WebServlet("/PatientRegister")
public class PatientRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PatientRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String pphone_number=request.getParameter("phno");
		String password=request.getParameter("password");
		PatientBean ubean=new PatientBean();
		ubean.setName(name);
		ubean.setEmail(email);
		ubean.setPphone_number(pphone_number);
		ubean.setPassword(password);
		PatientRegisterDao rd=new PatientRegisterDao();
		int i=rd.insert(ubean);
		if(i!=0)
		{
			response.sendRedirect("PatientSignup.jsp?msg=valid");
			
		}
		else
		{
			response.sendRedirect("PatientSignup.jsp?msg=invalid");
			
		}
	  }

	}


