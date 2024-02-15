package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.PatientBean;

public class PatientRegisterDao {
	public int insert(PatientBean bean)
	{
		String name=bean.getName();
		String email=bean.getEmail();
		String pphone_number=bean.getPphone_number();
		String password=bean.getPassword();
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("insert into patient values(?,?,?,?)");
			pstm.setString(1, pphone_number);
			pstm.setString(2, name);
			pstm.setString(3, email);
			pstm.setString(4, password);
			i=pstm.executeUpdate();
		}catch(Exception e) {}
		return i;
		
	}
}
