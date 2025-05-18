package vOwnerManageByAdmin;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Util.DBConnect;

public class VehicleOwnerController {
	
	public ArrayList<VehicleOwner> getAllOwners(){
		try {
			ArrayList<VehicleOwner> ownerList = new ArrayList<VehicleOwner>();
			String query = "select * from user WHERE utype = 'vowner'";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(query);
			
			
			while(rs.next()) {
				VehicleOwner owner = new VehicleOwner(); 
				
				owner.setUserID(rs.getInt("userID"));
				owner.setEmail(rs.getString("email"));
				owner.setPassword(rs.getString("password"));
				owner.setAddress(rs.getString("address"));
				owner.setFirst_name(rs.getString("first_name"));
				owner.setLast_name(rs.getString("last_name"));
				owner.setUtype(rs.getString("utype"));
				owner.setStatus(rs.getString("status")); 
				
				ownerList.add(owner);
			}
			return ownerList; 
			
		} catch (Exception e) {
			e.printStackTrace();
			return null; 
		}
	}
	
	public VehicleOwner getSingleOwner(VehicleOwner vowner) {
		try {
			String query = "select * from user where email = '"+vowner.getEmail()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				vowner.setUserID(rs.getInt("userID"));
				vowner.setEmail(rs.getString("email"));
				vowner.setPassword(rs.getString("password"));
				vowner.setAddress(rs.getString("address")); 
				vowner.setFirst_name(rs.getString("first_name"));
				vowner.setLast_name(rs.getString("last_name"));
				vowner.setUtype(rs.getString("utype"));
				vowner.setStatus(rs.getString("status"));
				return vowner;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public void updateVehicleOwner(VehicleOwner vow) {
		try {
			String query = "update user SET email='"+vow.getEmail()+"', password='"+vow.getPassword()+"', address='"+vow.getAddress()+"', first_name='"+vow.getFirst_name()+"', Last_name='"+vow.getLast_name()+"', utype='"+vow.getUtype()+"', status='"+vow.getStatus()+"' where email='"+vow.getEmail()+"' ";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public void deleteVehicleOwner(VehicleOwner owner) {
		
		try {
			String sql = "delete from user where email='"+owner.getEmail()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
}
