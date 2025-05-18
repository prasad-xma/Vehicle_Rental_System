package com.RegisteredCustomer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class bookingDBUtill {
	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	
	
	//Booking Insert
	
public static boolean insert(String vid, String pickUp, String des, String sdate, String edate, int cid){
		
		boolean complete = false;
		
		// Create database connection

		
		
		try {
			
			con = DBConnect.getConnection();
			

			stmt = con.createStatement();
			
			String  type_uf = "Upcomming";
			String stat = "Active";
			
			int kvid = Integer.parseInt(vid);
			
			String sql = "INSERT INTO booking(vehicleID, type_uf, pick_up, return_des, start_date, end_date, status, cusID)  VALUES "
					+ "('"+kvid+"','"+type_uf+"', '"+pickUp+"', '"+des+"', '"+sdate+"', '"+edate+"', '"+stat+"', '"+cid+"')";
			
			
			
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




//Booking Insert

public static boolean insert_rent(int cid, String vid){
	
	boolean complete = false;
	


	
	
	try {
		
		con = DBConnect.getConnection();
		

		stmt = con.createStatement();
		
		
		
		int kvid = Integer.parseInt(vid);
		
		
		
		String sql2 = "INSERT INTO rent(vid, cusID)  VALUES "
				+ "('"+kvid+"', '"+cid+"')";
		
		
		int res1 = stmt.executeUpdate(sql2);
		
		if(res1==1) {
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

public static List<booking> bdetails(int cid){
	
	ArrayList<booking> det = new ArrayList<>();
	
	// Create database connection
	
	//validate 
	
	try{
		
		con = DBConnect.getConnection();
		
		stmt = con.createStatement();
		
		String sql = "SELECT * FROM booking where cusID = '"+cid+"'";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			int vehID = rs.getInt(2);
			String uf = rs.getString(3);
			String paddress = rs.getString(4);
			String daddress = rs.getString(5);
			String sdate = rs.getString(6);
			String edate = rs.getString(7);
			String stat = rs.getString(8);
			int manID = rs.getInt(9);
			
			booking b = new booking(id,vehID, uf, paddress, daddress, sdate, edate, stat, manID);
			det.add(b);
		}
		
		
		
		
		
		
	}
	
	catch(Exception ex) {
		ex.printStackTrace();
	}
	
	
	
	
	return det;
	
	
	
	
	
}



//Delete bookings

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
