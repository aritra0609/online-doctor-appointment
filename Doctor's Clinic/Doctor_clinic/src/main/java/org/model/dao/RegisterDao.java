package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class RegisterDao {
public int insert(UserBean bean)
{
	String name=bean.getName();
	String email=bean.getEmail();
	String phno=bean.getPhno();
	String password=bean.getPass();
	String speciality=bean.getSpeciality();
	int licenseno=bean.getLicenseno();
	String location=bean.getLocation();
	Connection con;
	PreparedStatement pstm;
	int i=0;
	try
	{
		con=ConnectionProvider.createC();
		pstm=con.prepareStatement("insert into doctor(name, email, licenseno, phno, password, speciality, location) values(?,?,?,?,?,?,?)");
		pstm.setString(1, name);
		pstm.setString(2, email);
		pstm.setInt(3, licenseno);
		pstm.setString(4, phno);
		pstm.setString(5, password);
		pstm.setString(6, speciality);
		pstm.setString(7, location);
		i=pstm.executeUpdate();
	}catch(Exception e) {
		e.printStackTrace();
	}
	return i;
	
}
}
