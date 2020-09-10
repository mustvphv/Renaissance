package com.ren_user.beans;

public class User {
	
	private String firstname;
	private String lastname;
	private String username;
	private String email;
	private String status;
	private String department;
	private String password;


	public String getFirstname() {
		return this.firstname;
	}
	
	public String getLastname() {
		return this.lastname;
	}
	
	public String getUsername() {
		return this.username;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public String getStatus() {
		return this.status;
	}
	
	public String getDepartment() {
		return this.department;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	
	
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}

}
