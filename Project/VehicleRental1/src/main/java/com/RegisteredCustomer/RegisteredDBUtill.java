package com.RegisteredCustomer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisteredDBUtill {
	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
public static boolean updateProfile(int id,String fname,String lname,String address, String email, String password) {
		
		boolean update = false;
		
		
		try {
			
			con = DBConnect.getConnection();
			
			stmt = con.createStatement();
			
			String sql = "UPDATE user SET first_name='"+fname+"', email='"+email+"', last_name='"+lname+"', address='"+address+"', password='"+password+"'  WHERE userID='"+id+"' ";
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

}
