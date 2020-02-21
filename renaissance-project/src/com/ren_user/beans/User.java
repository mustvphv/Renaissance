package com.ren_user.beans;

public class User {
	
	private String username;
	private String lastname;
	private String firstname;
	private String adress;
	private boolean premium_member;


	public String getUsername() {
		return this.username;
	}
	
	public String getLastname() {
		return this.lastname;
	}

	public String getFirstname() {
		return this.firstname;
	}

	public String getAdress() {
		return this.adress;
	}
	
	public boolean isPremiumMember() {
		return this.premium_member;
	}

	public void setUsername( String username ) {
		this.username = username;
	}
	
	public void setLastname( String lastname ) {
		this.lastname = lastname;
	}

	public void setFirstname( String firstname ) {
		this.firstname = firstname;
	}
	
	public void setAdress( String adress ) {
		this.adress = adress;
	}

	public void setPremiumMember( boolean genius ) {
		this.premium_member = true;
	}

}
