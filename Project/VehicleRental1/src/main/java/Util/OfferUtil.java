package Util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.Offer;

public class OfferUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	
	
	public static boolean addOffer(String offerName,String category,String description,String ofstdate,String ofendate) {
		
		boolean isSucess = false; 
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into special_offers values (0,'"+offerName+"','"+category+"','"+description+"','"+ofstdate+"','"+ofendate+"',21)";

			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
			    isSucess = true;
			}
			else {
			    isSucess = false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("ba oi");
		}
		return isSucess;
		
		
	}
	
	public static ArrayList<Offer> getOfferDetails(){//returns * offers
		
		ResultSet rs = null;
		
		ArrayList<Offer> Allof = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from special_offers";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String cat = rs.getString(3);
    			String description = rs.getString(4);
    			String stDate= rs.getString(5);
    			String enDate = rs.getString(6);
    			int  mid = rs.getInt(7);
    			
 
    			Offer o = new Offer(id,name,cat,description,stDate,enDate);//String offerName, String category, String description, String ofstdate, String ofendate
    			Allof.add(o);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return Allof;
	}
	
	
	public static ArrayList<Offer> getMonthlyOfferDetails(){
		
		ResultSet rs = null;
		
		ArrayList<Offer> monOf = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from special_offers where type = 'monthly'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String cat = rs.getString(3);
    			String description = rs.getString(4);
    			String stDate= rs.getString(5);
    			String enDate = rs.getString(6);
    			int  mid = rs.getInt(7);
    			
 
    			Offer mo = new Offer(id,name,cat,description,stDate,enDate);//String offerName, String category, String description, String ofstdate, String ofendate
    			monOf.add(mo);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return monOf;
		
		
	}
	
	
	public static ArrayList<Offer> getWeeklyOfferDetails(){

		ResultSet rs = null;
		
		ArrayList<Offer> weekOf = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from special_offers where type = 'weekly'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String cat = rs.getString(3);
    			String description = rs.getString(4);
    			String stDate= rs.getString(5);
    			String enDate = rs.getString(6);
    			int  mid = rs.getInt(7);
    			
 
    			Offer wo = new Offer(id,name,cat,description,stDate,enDate);//String offerName, String category, String description, String ofstdate, String ofendate
    			weekOf.add(wo);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return weekOf;
		
	}
	
	
	
	public static ArrayList<Offer> getLoyalOfferDetails(){

		ResultSet rs = null;
		
		ArrayList<Offer> loyalOf = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from special_offers where type = 'loyal_cust'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String name = rs.getString(2);
    			String cat = rs.getString(3);
    			String description = rs.getString(4);
    			String stDate= rs.getString(5);
    			String enDate = rs.getString(6);
    			int  mid = rs.getInt(7);
    			
 
    			Offer ol = new Offer(id,name,cat,description,stDate,enDate);//String offerName, String category, String description, String ofstdate, String ofendate
    			loyalOf.add(ol);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return loyalOf;
	}
	
	
	public static int deleteOffer(int id) {
		
		int rs = 0;
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from special_offers where offer_ID = '"+id+"'";
		rs = stmt.executeUpdate(sql);
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return rs;
	}
	
	
	public static int updateOffer(int id,String endate) {
		
		int rs = 0;
		
		try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "update special_offers set end_date = '"+endate+"'  where offer_ID = '"+id+"'";
		rs = stmt.executeUpdate(sql);
		
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		return rs;
	}
		
	
	
	
}
