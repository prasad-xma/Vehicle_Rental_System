package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class customerDBUtill {
	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	public static ArrayList<customer> validate(String email, String password){
		
		
		ArrayList<customer> cus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM user WHERE email = '"+email+"' AND password = '"+password+"'";
			
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String mail = rs.getString(2);
				String pass = rs.getString(3);
				String address = rs.getString(4);
				String fname = rs.getString(5);
				String lname = rs.getString(6);
				String utype = rs.getString(7);
				
				customer c = new customer(id,mail,pass,address,fname,lname,utype);
				
				cus.add(c);
				
			}
			

			
		}
		catch(Exception e) {
			
			e.printStackTrace();
			
		}
		
		return cus;
	}
	
	//User Insert
	
	
	public static boolean userInsert(String utype, String fname, String lname, String email, String password, String address){
		
		boolean complete = false;
		
		// Create database connection

		
		
		try {
			
			con = DBConnect.getConnection();
			

			stmt = con.createStatement();
			
			String stat = "active";
			
			String sql = "INSERT INTO user(email, password, address, first_name, last_name, utype, status) VALUES "
					+ "('"+email+"','"+password+"', '"+address+"', '"+fname+"', '"+lname+"', '"+utype+"', '"+stat+"')";
			int res = stmt.executeUpdate(sql);
			
			if(res==1) {
				complete = true;
			}
			
			else{
				complete = false;
			}
		}
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		return complete;
		
	}
	
	
	
	
	
	
	
	//Registration validation
	
	
public static boolean RegisterValidation(String email, String password){
		
		boolean valide = false;
		
		// Create database connection

		
		
		try {
			
			con = DBConnect.getConnection();
			

			stmt = con.createStatement();
			
			String stat = "active";
			
			String sql = "SELECT * FROM user WHERE email = '"+email+"' AND password = '"+password+"'";

			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				valide = false;
				
		}
			
			else {
				valide = true;
				}
			}
		
		catch(Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		return valide;
		
	}

//Password update

public static boolean forgetPassword(String pass,String email) {
	
	boolean update = false;
	
	
	try {
		
		con = DBConnect.getConnection();
		
		stmt = con.createStatement();
		
		String sql = "UPDATE user SET password='"+pass+"' where email = '"+email+"'";
		 int res = stmt.executeUpdate(sql);
		 
		 if(res==1) {
			 
			 update = true;
		 }
		 
		 else {
			 update = false;
		 }
		
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return update;
	
	
}



public static boolean passValid(String email){
	
	boolean valide = false;
	
	// Create database connection

	
	
	try {
		
		con = DBConnect.getConnection();
		

		stmt = con.createStatement();
		
		String stat = "active";
		
		String sql = "SELECT * FROM user WHERE email = '"+email+"'";

		rs = stmt.executeQuery(sql);
		
		if(rs.next()) {
			
			valide = true;
			
	}
		
		else {
			valide = false;
			}
		}
	
	catch(Exception e) {
		e.printStackTrace();
		
	}
	
	
	
	
	return valide;
	
}

}
