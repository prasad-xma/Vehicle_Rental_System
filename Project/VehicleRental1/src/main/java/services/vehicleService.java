package services;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import model.owner;
import utills.DBConnect;

public class vehicleService {
	
	public void regvehicle(owner own) {
		try {
			
			String Status="pend_reg";
			
			String query = "insert into vehicle (description,registrtionNO, AMT, added_date, catID, ftype, passengers, rentalPrice, image, rating, status, voID, tradeName, brand) "
		             + "values ('" + own.getDescription() + "','" + own.getRegistrationNo() + "','" + own.getAmt() + "','" 
		             + own.getAdded_date() + "'," + own.getCatid() + ",'" + own.getFtype() + "'," + own.getPassengers() + "," 
		             + own.getRentalprice() + ",'" + own.getImage() + "'," + own.getRating() + ",'" + Status + "'," 
		             + own.getVoId() + ",'" + own.getTradeName() + "','" + own.getBrand() + "')";

			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
	}
	
	public ArrayList<owner>getAllowner(){
		try {
			ArrayList<owner> listOwn = new ArrayList<owner>();
			
			String query = "select* from vehicle ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				owner own = new owner();
				
				own.setVid(rs.getInt("vid"));
				own.setDescription(rs.getString("description"));
				own.setRegistrationNo(rs.getString("registrtionNO"));
				own.setAmt(rs.getString("amt"));
				own.setAdded_date(rs.getString("added_date"));
				own.setCatid(rs.getInt("catid"));
				own.setFtype(rs.getString("ftype"));
				own.setPassengers(rs.getInt("passengers"));
				own.setRentalprice(rs.getInt("rentalprice"));
				own.setImage(rs.getString("image"));
				own.setRating(rs.getInt("rating"));
				own.setStatus(rs.getString("status"));
				own.setVoId(rs.getInt("voId"));
				own.setTradeName(rs.getString("tradeName"));
				own.setBrand(rs.getString("brand"));
				
				
				
				listOwn.add(own);
			}
			
			return listOwn;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public owner singleDataButton(owner own) {
		try {
			String query = "select * from vehicle where vid = '"+own.getVid()+"' ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			if(rs.next()) {
				own.setVid(rs.getInt("vid"));
				own.setDescription(rs.getString("description"));
				own.setRegistrationNo(rs.getString("registrtionNO"));
				own.setAmt(rs.getString("amt"));
				own.setAdded_date(rs.getString("added_date"));
				own.setCatid(rs.getInt("catid"));
				own.setFtype(rs.getString("ftype"));
				own.setPassengers(rs.getInt("passengers"));
				own.setRentalprice(rs.getInt("rentalprice"));
				own.setImage(rs.getString("image"));
				own.setRating(rs.getInt("rating"));
				own.setStatus(rs.getString("status"));
				own.setVoId(rs.getInt("voId"));
				own.setTradeName(rs.getString("tradeName"));
				own.setBrand(rs.getString("brand"));
				
				return own;
				

		}
	}catch(Exception e) {
		e.printStackTrace();
	}
     return null;
	}

	
	public boolean validate(owner own) {
		try {
			
			String query ="select * from vehicle where registrtionNO ='"+own.getRegistrationNo()+"' and voID='"+own.getVoId()+"'";   // and description ='"+own.getDescription()+"'and registrationNO='"+own.getRegistrationNo()+"' and AMT='"+own.getAmt()+"' and added_date='"+own.getAdded_date()+"' and catID='"+own.getCatid()+"' and ftype='"+own.getFtype()+"'and passengers='"+own.getPassengers()+"'and rentalPrice='"+own.getRentalprice()+"' and image='"+own.getImage()+"'and rating="+own.getRating()+"and status='"+own.getStatus()+"'and voID='"+own.getVoId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return false;
	}
	
	
	public owner getOne(owner own) {
		try {
			
			String query ="select * from vehicle where registrtionNO ='"+own.getRegistrationNo()+"' and voID='"+own.getVoId()+"'";   // and description ='"+own.getDescription()+"'and registrationNO='"+own.getRegistrationNo()+"' and AMT='"+own.getAmt()+"' and added_date='"+own.getAdded_date()+"' and catID='"+own.getCatid()+"' and ftype='"+own.getFtype()+"'and passengers='"+own.getPassengers()+"'and rentalPrice='"+own.getRentalprice()+"' and image='"+own.getImage()+"'and rating="+own.getRating()+"and status='"+own.getStatus()+"'and voID='"+own.getVoId()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if(rs.next()) {
				
				own.setVid(rs.getInt("vid"));
				own.setDescription(rs.getString("description"));
				own.setRegistrationNo(rs.getString("registrtionNO"));
				own.setAmt(rs.getString("amt"));
				own.setAdded_date(rs.getString("added_date"));
				own.setCatid(rs.getInt("catid"));
				own.setFtype(rs.getString("ftype"));
				own.setPassengers(rs.getInt("passengers"));
				own.setRentalprice(rs.getInt("rentalprice"));
				own.setImage(rs.getString("image"));
				own.setRating(rs.getInt("rating"));
				own.setStatus(rs.getString("status"));
				own.setVoId(rs.getInt("voId"));
				own.setTradeName(rs.getString("tradeName"));
				own.setBrand(rs.getString("brand"));
				return own;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return null;
	}
	
	public void updateVehicle(owner owner) {
		
		try {
			
			String Status="pend_up";//changed
			
			String query = "update vehicle SET description='"+owner.getDescription()+"',registrtionNO='"+owner.getRegistrationNo()+"',AMT='"+owner.getAmt()+"',added_date='"+owner.getAdded_date()+"',catID='"+owner.getCatid()+"',ftype='"+owner.getFtype()+"',passengers='"+owner.getPassengers()+"',rentalPrice='"+owner.getRentalprice()+"',image='"+owner.getImage()+"',rating='"+owner.getRating()+"',status='"+Status+"',voID='"+owner.getVoId()+"',tradeName='"+owner.getTradeName()+"',brand='"+owner.getBrand()+"' where vid='"+owner.getVid()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void deleteVehicle(owner own) {
		try {
			
			String query = "Delete from vehicle where vid= '"+own.getVid()+"'";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}