package com.RegisteredCustomer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class VehicleSearchDBUtill {
	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	
	public static List<vehicleS> searchVehi(String SDate, String EDate, String vtype){
		
		ArrayList<vehicleS> vehi = new ArrayList<>();
		
		// Create database connection
		
		//validate 
		
		try{
			
			
			con = DBConnect.getConnection();
			
			stmt = con.createStatement();
			
			String stat = "Active";
			
			SDate = "2022-05-23";
			SDate = "2022-05-28";
			
			String sql = "SELECT v.* FROM vehicle v, vcategory c WHERE NOT EXISTS " +
		             "(SELECT 1 FROM booking b WHERE b.vehicleID = v.vid " +
		             "AND ('"+SDate+"' BETWEEN start_date AND end_date) " +
		             "AND ('"+EDate+"' BETWEEN start_date AND end_date)) " +
		             "AND v.catID = c.catID " +
		            // "AND c.catName = '"+vtype+"' " +
		             "AND status = '"+stat+"'";
			
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int vid = rs.getInt(1);
				String description = rs.getString(2);
				String registration = rs.getString(3);
				String amt = rs.getString(4);
				String addDate = rs.getString(5);
				int catID = rs.getInt(6);
				String ftype = rs.getString(7);
				int pasen = rs.getInt(8);
				int rentalP = rs.getInt(9);
				String image = rs.getString(10);
				int rate = rs.getInt(11);
				String status = rs.getString(12);
				int voID = rs.getInt(13);
				String tradeName = rs.getString(14);
				String brand = rs.getString(15);
				
				vehicleS v = new vehicleS(vid, description, registration, amt, addDate, catID, ftype, pasen, rentalP, image, rate, status, voID, tradeName, brand );
				vehi.add(v);
			}
			
			
			
			
			
			
		}
		
		catch(Exception ex) {
			ex.printStackTrace();
		}
		
		
		
		
		return vehi;
		
		
		
		
	}

}

