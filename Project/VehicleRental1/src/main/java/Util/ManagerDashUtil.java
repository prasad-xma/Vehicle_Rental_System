package Util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import model.BookingM;
import model.Offer;
import model.RegRequests;

public class ManagerDashUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	
	/*/
	//fetch db from db and send it as json to CHARTJS
    public static Map<String, Object> getChartData() throws ClassNotFoundException, SQLException{
    	ResultSet rs = null;
    	LocalDate currentDate = LocalDate.now();
    	LocalDate sixMonthsAgo = currentDate.minusMonths(6);
    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formattedDate = sixMonthsAgo.format(formatter);
    	
    	Map<String, Object> data = new HashMap<>();
    	String[] labels = new String[6];
    	int[] values = new int[6];
    	
    	try{
    	con = DBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select maonth,year nckcns";
		rs = stmt.executeQuery(sql);
		
		int index = 0;
        while (rs.next() && index < 6) {
            labels[index] = rs.getString("month");
            values[index] = rs.getInt("value");
            index++;
        }
        
        data.put("labels", labels);
        data.put("values", values);
        
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
        
        return data;
    }
    */
    //get pednding register reuquests
    public static ArrayList<RegRequests> getPending_Reg_req(){
         ResultSet rs = null;
		
		ArrayList<RegRequests> reg_req = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "select * from vehicle where status = 'pend_reg'";
    		rs = stmt.executeQuery(sql);
    		
    		while(rs.next()) {
    			int id = rs.getInt(1);
    			String reg = rs.getString(3);
    			String addDate = rs.getString(5);
    			String type = rs.getString(7);
    			
 
    			RegRequests rer= new RegRequests(id,reg,addDate,type);
    			reg_req.add(rer);
    		}
    		
		}catch(Exception e){
			e.printStackTrace();
		}
		return reg_req;
    }
    
    
    //get pending update requests
    public static ArrayList<RegRequests> getPending_up_req(){
        ResultSet rs = null;
		
		ArrayList<RegRequests> up_req = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "select * from vehicle where status = 'pend_up'";
   		rs = stmt.executeQuery(sql);
   		
   		while(rs.next()) {
   			int id = rs.getInt(1);
   			String reg = rs.getString(3);
   			String addDate = rs.getString(5);
   			String type = rs.getString(7);
   			

   			RegRequests reu = new RegRequests(id,reg,addDate,type);
   			up_req.add(reu);
   		}
   		
		}catch(Exception e){
			e.printStackTrace();
		}
		return up_req;
   }
    
    /*
    public static ArrayList<BookingM> getBookings(){
        ResultSet rs = null;
		
		ArrayList<BookingM> bo = new ArrayList<>();
		
		try {
		con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "select start_date,end_date,status from booking where status = ''";
   		rs = stmt.executeQuery(sql);
   		
   		while(rs.next()) {
   			
   			String std = rs.getString(1);
   			String end = rs.getString(2);
   			String status = rs.getString(3);
   			

   			BookingM b = new BookingM(std,end,status);
   			bo.add(b);
   		}
   		
		}catch(Exception e){
			e.printStackTrace();
		}
		return bo;
   }
    */
    
    public static int changeVehicleStatus(String type,int id) {
    	System.out.println(type+id);
    	int isSuc = 0;
    	try {
    	con = DBConnect.getConnection();
   		stmt = con.createStatement();
   		String sql = "update vehicle set status='"+type+"' where vid='"+id+"'";
   		isSuc = stmt.executeUpdate(sql);
   		
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
   		
   		return isSuc;
    }
    
    
}
