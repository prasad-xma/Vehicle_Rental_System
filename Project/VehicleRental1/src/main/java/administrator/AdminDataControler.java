package administrator;

import java.sql.ResultSet;
import java.sql.Statement;

import Util.DBConnect;

public class AdminDataControler {
	
	public boolean validateAdmin(Admin ad) {
		try {
			String query = "select * from admin where email = '"+ad.getEmail()+"' and password = '"+ad.getPassword()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Admin GetAdmin(Admin ad) {
		try {
			String query = "select * from admin where email = '"+ad.getEmail()+"' and password = '"+ad.getPassword()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				ad.setAdminID(rs.getInt("Admin_ID"));
				ad.setEmail(rs.getString("email"));
				ad.setPassword(rs.getString("password"));
				ad.setNic(rs.getString("NIC"));
				ad.setProfilePic(rs.getString("profilepic"));
				return ad;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
