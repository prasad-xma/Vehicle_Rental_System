package com.RegisteredCustomer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class tstDB {
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;

	public static void main(String[] args) {
		
		boolean k = DeleteBookings("8");
		System.out.println(k);

	}
	
	
	
	
	public static boolean DeleteBookings(String bid){
		
		boolean complete = false;
		


		
		
		try {
			
			con = DBConnect.getConnection();
			

			stmt = con.createStatement();
			
			
			
			int boid = Integer.parseInt(bid);
			
			
			String sql2 = "Delete from booking where bookingID = '"+boid+"'";
			
			
			int res1 = stmt.executeUpdate(sql2);
			
			if(res1>0) {
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

}
