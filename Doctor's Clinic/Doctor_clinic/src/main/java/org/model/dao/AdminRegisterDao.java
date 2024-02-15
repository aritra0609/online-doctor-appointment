package org.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.mis.ConnectionProvider;
import org.model.bean.UserBean;

public class AdminRegisterDao {
	public int insert(UserBean bean)
	{
		String name=bean.getName();
		String email=bean.getEmail();
		String password=bean.getPass();
		Connection con;
		PreparedStatement pstm;
		int i=0;
		try
		{
			con=ConnectionProvider.createC();
			pstm=con.prepareStatement("insert into admin values(?,?,?)");
			pstm.setString(1, name);
			pstm.setString(2,email);
			pstm.setString(3, password);
			i=pstm.executeUpdate();
		}catch(Exception e) {}
		return i;
		
	}
}
