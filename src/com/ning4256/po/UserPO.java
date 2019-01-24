package com.ning4256.po;

public class UserPO {
	private String acc;
	private String pass;
	private String userName;    
    private int userMoney;
    private String userAddress;
    //有参构造器
	public UserPO(String acc, String pass, String userName, int userMoney, String userAddress) {
		super();
		this.acc = acc;
		this.pass = pass;
		this.userName = userName;
		this.userMoney = userMoney;
		this.userAddress = userAddress;
	}
	//无参构造器
	public UserPO() {
		super();
	}
	public String getAcc() {
		return acc;
	}
	public void setAcc(String acc) {
		this.acc = acc;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserMoney() {
		return userMoney;
	}
	public void setUserMoney(int userMoney) {
		this.userMoney = userMoney;
	}
	public String getUserAddress() {
		return userAddress;
	}
	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}
	@Override
	public String toString() {
		return "UserPO [acc=" + acc + ", pass=" + pass + "]";
	}
	
	   
	
	
}
