package org.model.dao;
import java.sql.Date;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Time;
import org.mis.ConnectionProvider;
import org.model.bean.BookingBean;

public class BookingDao {
	public int insert(BookingBean bean)
	{
		String pname=bean.getPname();
		String dname=bean.getDname();
		String email=bean.getEmail();
		String phno=bean.getPphone_number();
		String speciality=bean.getSpeciality();
		String demail=bean.getDemail();
		int licenseno=bean.getLicenseno();
		Date date=(Date) bean.getDate();
		Time time=bean.getTime();
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("insert into appointment(license_number, doctor_name, speciality, patient_name, patient_email,patient_phone_number, Date, Time,doctor_email) values(?,?,?,?,?,?,?,?,?)");	
			pstm.setInt(1, licenseno);
			pstm.setString(2, dname);
			pstm.setString(3, speciality);
			pstm.setString(4, pname);
			pstm.setString(5, email);
			pstm.setString(6, phno);
			pstm.setDate(7, date);
			pstm.setTime(8, time);
			pstm.setString(9,demail);
			i=pstm.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return i;
		
	}
}
