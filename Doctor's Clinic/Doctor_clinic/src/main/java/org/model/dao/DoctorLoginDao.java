package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class DoctorLoginDao {
	public boolean login(UserBean bean)
	{
		String email=bean.getEmail();
		String pass=bean.getPass();
		
		Connection con;
		PreparedStatement pstm;
		ResultSet rs;
		boolean status=false;
		try
		{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("select * from doctor where email=? and password=?");
			pstm.setString(1,email);
			pstm.setString(2,pass);
			rs=pstm.executeQuery();
			status=rs.next();
		}catch(Exception e) {}
		return status;
	}

}
