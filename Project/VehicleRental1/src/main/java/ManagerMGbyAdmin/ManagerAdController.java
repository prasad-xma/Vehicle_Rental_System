package ManagerMGbyAdmin;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Util.DBConnect;

public class ManagerAdController {
	
	// get all manager details
	public ArrayList<ManagerAd> getAllManagers(){
		
		try {
			ArrayList<ManagerAd> mngList = new ArrayList<ManagerAd>();
			String sql = "select * from user where utype = 'manager'";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				ManagerAd mgr = new ManagerAd(); 
				
				mgr.setUserID(rs.getInt("userID"));
				mgr.setEmail(rs.getString("email"));
				mgr.setPassword(rs.getString("password"));
				mgr.setAddress(rs.getString("address"));
				mgr.setFirst_name(rs.getString("first_name"));
				mgr.setLast_name(rs.getString("last_name"));
				mgr.setUtype(rs.getString("utype")); 
				mgr.setStatus(rs.getString("status"));
				
				mngList.add(mgr);
			}
			return mngList;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	
	}
	
	
	public ManagerAd getSingleManager(ManagerAd mng) {
		
		try {
			String query = "select * from user where email = '"+mng.getEmail()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			if(rs.next()) {
				
				mng.setUserID(rs.getInt("userID"));
				mng.setEmail(rs.getString("email"));
				mng.setPassword(rs.getString("password"));
				mng.setAddress(rs.getString("address")); 
				mng.setFirst_name(rs.getString("first_name"));
				mng.setLast_name(rs.getString("last_name"));
				mng.setUtype(rs.getString("utype"));
				mng.setStatus(rs.getString("status"));
				
				return mng; 
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void updateManager(ManagerAd mng) {
		try {
			String sql = "update user SET email='"+mng.getEmail()+"', password='"+mng.getPassword()+"', address='"+mng.getAddress()+"', first_name='"+mng.getFirst_name()+"', Last_name='"+mng.getLast_name()+"', utype='"+mng.getUtype()+"', status='"+mng.getStatus()+"' where email='"+mng.getEmail()+"' ";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
//	Delete managers
	public void deleteManager(ManagerAd mng) {
		try {
			String sql = "delete from user where email = '"+mng.getEmail()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
//	Add Managers
	public void regManager(ManagerAd mng) {
		
		try {
			String sql = "insert into user(email, password, address, first_name, last_name, utype, status) values('"+mng.getEmail()+"', '"+mng.password+"', '"+mng.getAddress()+"', '"+mng.getFirst_name()+"', '"+mng.getLast_name()+"', 'manager', 'active')";
			//insert into user(email, password, address, first_name, last_name, utype, status) VALUES('own@gmail.com', 'own1236', 'Kandy-rode', 'Amila', 'Rajitha', 'vowner', 'active');

			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
