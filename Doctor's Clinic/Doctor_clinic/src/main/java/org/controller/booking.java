package org.controller;
import java.sql.Time;
import java.sql.Date;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.time.format.DateTimeFormatter;
import org.model.bean.BookingBean;
import org.model.dao.BookingDao;

/**
 * Servlet implementation class booking
 */
@WebServlet("/booking")
public class booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public booking() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String pname=request.getParameter("pname");
		String dname=request.getParameter("dname");
		String email=request.getParameter("email");
		String demail=request.getParameter("demail");
		 String dateStr = request.getParameter("date");
         String timeStr = request.getParameter("time");

         // Convert the date and time strings to java.sql.Date and java.sql.Time
         java.sql.Date date = java.sql.Date.valueOf(dateStr);
         java.sql.Time time = java.sql.Time.valueOf(timeStr + ":00");

		String phno=request.getParameter("phone");
		String speciality=request.getParameter("speciality");
		String license=request.getParameter("licenseno");
		int licenseno=Integer.parseInt(license);
		BookingBean ubean=new BookingBean();
		ubean.setPname(pname);
		ubean.setDname(dname);
		ubean.setEmail(email);
		ubean.setDemail(demail);
		ubean.setDate(date);
		ubean.setTime(time);
		ubean.setPphone_number(phno);
		ubean.setLicenseno(licenseno);
		ubean.setSpeciality(speciality);
		BookingDao rd=new BookingDao();
		//HttpSession session=request.getSession();
		int i=rd.insert(ubean);
		if(i!=0)
		{
			
			response.sendRedirect("showDoctor.jsp?msg=valid");
			
		}
		else
		{
			response.sendRedirect("showDoctor.jsp?msg=invalid");
			
		}
	}

}
