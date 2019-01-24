package com.ning4256.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ning4256.po.LoginPO;
import com.ning4256.po.UserPO;
import com.ning4256.utils.JDBCUtil;

public class LoginDAO {
	public static LoginPO findLoginUserByAcc(String phone){
		LoginPO lpo = null;
		Connection connection = JDBCUtil.getConnection();
		String sql = "select * from loginInfo where loginAcc = ?";
		try(PreparedStatement pStatement = connection.prepareStatement(sql);){
			pStatement.setString(1,phone);
			ResultSet rSet = pStatement.executeQuery();
			if(rSet.next()){
				lpo = new LoginPO();
				//获取login表中的数据
				String loginAcc = rSet.getString("loginAcc");
				String loginPass = rSet.getString("loginPass");
				System.out.println("logindao");
				System.out.println("loginAcc:" + loginAcc + "   loginPass:" + loginPass);
				//将获得的数据保存到loginpo中
				lpo.setLoginAcc(loginAcc);
				lpo.setLoginPass(loginPass);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lpo;
		
	}




}
