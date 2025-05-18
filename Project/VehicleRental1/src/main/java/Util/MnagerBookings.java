package Util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.BookingM;


public class MnagerBookings {
	
	private static Connection con = null;
	private static Statement stmt = null;
	
	 public static ArrayList<BookingM> getActiveBookings(){
         ResultSet rs = null;
		
		ArrayList<BookingM> actB = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from booking where status = 'active'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String type = rs.getString(2);
    			String std = rs.getString(6);
    			String end= rs.getString(7);
    			String status = rs.getString(8);
    			
    			
    			BookingM bo = new BookingM(id,std,type,end,status);
    			actB.add(bo);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return actB;
    }
    
	 
	 public static ArrayList<BookingM> getFinishedBookings(){
         ResultSet rs = null;
		
		ArrayList<BookingM> fB = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from booking where status = 'finished'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String type = rs.getString(2);
    			String std = rs.getString(5);
    			String end= rs.getString(6);
    			String status = rs.getString(7);
    			
    			
    			BookingM fbo = new BookingM(id,std,type,end,status);
    			fB.add(fbo);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return fB;
    }
	 
	 public static int deactivateBooking(int id) {
			
			int rs = 0;
			
			try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update booking set status = 'deactive'  where bookingID = '"+id+"'";
			rs = stmt.executeUpdate(sql);
			
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
			return rs;
		}
    
	 
	 public static int deleteBooking(int id) {
			
			int rs = 0;
			
			try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from booking where bookingID = '"+id+"'";
			rs = stmt.executeUpdate(sql);
			
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		
			return rs;
		}
    
}
