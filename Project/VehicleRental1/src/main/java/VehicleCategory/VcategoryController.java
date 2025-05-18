package VehicleCategory;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Util.DBConnect;

public class VcategoryController {

	public void addVehicleCat(Vcategory vcat) {
		try {
			String sql = "insert into vcategory(catName) values('"+vcat.getCatName()+"')";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<Vcategory> getAllCategory(){
		
		try {
			ArrayList<Vcategory> vcatList = new ArrayList<Vcategory>();
			String sql = "select * from vcategory";
			
			Statement stmt = DBConnect.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Vcategory cat = new Vcategory();
				
				cat.setCatID(rs.getInt("catID"));
				cat.setCatName(rs.getString("catName"));
				
				vcatList.add(cat);
			}
			return vcatList; 
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public Vcategory getSingleVcat(Vcategory cat) {
		try {
			String sql = "select * from vcategory where catID = '"+cat.getCatID()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				cat.setCatID(rs.getInt("catID"));
				cat.setCatName(rs.getString("catName"));
				
				return cat;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null; 
	}
	
	public void updateVcategory(Vcategory cat) {
		try {
			String sql = "update vcategory set catName = '"+cat.getCatName()+"' where catName = '"+cat.getCatID()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}
