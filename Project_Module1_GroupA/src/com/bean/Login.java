package com.bean;

public class Login {
	
	private String userName;
	private String password;
	private String status;
	private String role;
	public Login() {
		super();
	}
	public Login(String userName, String password, String status, String role) {
		super();
		this.userName = userName;
		this.password = password;
		this.status = status;
		this.role = role;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	

}
