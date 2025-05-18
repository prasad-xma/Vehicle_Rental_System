package com.RegisteredCustomer;

public class RegisteredC {
	
	private int userID;
	private String email;
	private String password;
	private String address;
	private String fname;
	private String lname;
	private String utype;
	
	
	public RegisteredC(int userID, String email, String password, String address, String fname, String lname,String utype) {

		this.userID = userID;
		this.email = email;
		this.password = password;
		this.address = address;
		this.fname = fname;
		this.lname = lname;
		this.utype = utype;
	}


	public int getUserID() {
		return userID;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}


	public String getAddress() {
		return address;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getUtype() {
		return utype;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.utype;
	}




}
