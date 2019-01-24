package com.ning4256.service;

import com.ning4256.dao.LoginDAO;
import com.ning4256.dao.UserDAO;
import com.ning4256.po.LoginPO;
import com.ning4256.po.UserPO;
import com.ning4256.utils.RegExp;

public class UserService {
	/**
	 * 通过用户名和密码进行判断是否登录成功
	 * 
	 * @param name
	 * @param pass
	 * @return 布尔值，true表示登录成功 false登录失败
	 */
	LoginDAO ld = new LoginDAO();
	UserDAO uDao = new UserDAO();

	// 用户能否成功登陆
	public UserPO login(LoginPO lpo) {
		// TODO Auto-generated method stub
		UserPO uPo = null;

		// 从数据库拿出正确的用户名进行判断
		LoginPO lp = LoginDAO.findLoginUserByAcc(lpo.getLoginAcc());
		// 先判断数据是否合法，如果不合法直接返回

		if (lp != null && lp.getLoginPass().equals(lpo.getLoginPass())) {
			// 返回手机号对应的学生信息
			uPo = uDao.findUserByAcc(lpo.getLoginAcc());

		}
		return uPo;
	}



	// 注册用户
	public boolean register(String username, String userphone, String loginPass, String comfirmPass,
			String userAddress) {
		boolean isregister = false;
		// 注册数据验证
		// 手机号 密码验证
		if (!RegExp.isMobile(userphone) || !RegExp.isPassword(loginPass)) {
			return isregister;
		}


		if (!loginPass.equals(comfirmPass)) {
			return isregister;
		}
		// 手机号是否被注册
		LoginPO lPo = LoginDAO.findLoginUserByAcc(userphone);
		if (lPo != null) {
			return isregister;
		}

		// 验证成功后提交到数据库

		boolean isCanRegister = UserDAO.canRegister(username, userphone, loginPass, userAddress);
		if (isCanRegister) {
			isregister = true;
		}
		return isregister;
	}

}
