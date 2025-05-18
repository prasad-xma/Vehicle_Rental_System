package com.RegisteredCustomer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class paymentDBUtill {
	
	private static Connection con;
	private static Statement stmt;
	private static ResultSet rs;
	
	
	
public static boolean insert(String ac_no, double amount , String method, String cvc, String hName, String edate){
		
		boolean complete = false;
		
		// Create database connection

		
		
		try {
			
			con = DBConnect.getConnection();
			

			stmt = con.createStatement();
			
			String sql = "INSERT INTO payment(ac_no, amount, method, cvc, holderName, E_date) VALUES "
					+ "('"+ac_no+"', '"+amount+"', '"+method+"', '"+cvc+"', '"+hName+"', '"+edate+"')";
			
			
			
			
			
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

	

}
