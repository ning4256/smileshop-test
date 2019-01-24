package com.ning4256.po;

public class LoginPO {

	private String loginAcc;// 用户登录账号
	private String loginPass;// 用户登录密码
	//无参构造器
	public LoginPO() {
	}
	
	//带有登录账号和登录密码的有参构造器
	public LoginPO(String loginAcc, String loginPass) {
		super();
		this.loginAcc = loginAcc;
		this.loginPass = loginPass;
	}
	//设置账户和密码
	public String getLoginAcc() {
		return loginAcc;
	}
	public void setLoginAcc(String loginAcc) {
		this.loginAcc = loginAcc;
	}
	public String getLoginPass() {
		return loginPass;
	}
	public void setLoginPass(String loginPass) {
		this.loginPass = loginPass;
	}

	
}
