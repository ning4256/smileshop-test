package com.ning4256.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.ning4256.po.UserPO;
import com.ning4256.utils.JDBCUtil;

public class UserDAO {

	//从login表找到这个用户信息
	public UserPO findUserByAcc(String loginAcc) {
		UserPO uPo = null;
		Connection con = JDBCUtil.getConnection();
		String sql = "select * from loginInfo where loginAcc=?";
		try (PreparedStatement ps = con.prepareStatement(sql);) {
			ps.setString(1, loginAcc);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				uPo = new UserPO();
				uPo.setAcc(rs.getString("loginAcc"));
				uPo.setPass(rs.getString("loginPass"));
				System.out.println("UserDAO.java");
				System.out.println(uPo.toString());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return uPo;
	}

	public static boolean canRegister(String username,String userphone,String loginPass,String userAddress) {
		boolean isRegister = false;
		
		Connection con = JDBCUtil.getConnection();
		String sql = "{call pro_add_loginInfo(?, ?, ?, ?)}";
		CallableStatement cs =null;
		int i = -1;
		try {
			cs = con.prepareCall(sql);
			cs.setString(1, userphone);
			cs.setString(3, username);
			cs.setString(2, loginPass);
			cs.setString(4, userAddress);
			
			i = cs.executeUpdate();
			System.out.println("UserDAO:" + i);
			if(i != -1) {
				isRegister = true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {	
			try {
				cs.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isRegister;
	}
}
