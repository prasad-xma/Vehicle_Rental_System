package CustomerManageByAdmin;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import Util.DBConnect;

public class CustomerService {

	public ArrayList<CustomerManage> getAllCustomer(){
		
		try {
			ArrayList<CustomerManage> listCus = new ArrayList<CustomerManage>(); 
			String query = "select * from user WHERE utype = 'customer'";  
			
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			while(rs.next()) {
				CustomerManage cus = new CustomerManage();
				cus.setUserID(rs.getInt("userID"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				cus.setAddress(rs.getString("address"));
				cus.setFirst_name(rs.getString("first_name"));
				cus.setLast_name(rs.getString("last_name"));
				cus.setUtype(rs.getString("utype"));
				cus.setStatus(rs.getString("status"));
				
				listCus.add(cus);
			}
			return listCus;
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;  
		}
		
	}

	public CustomerManage getSingleData(CustomerManage cus) {
		try {
			String query = "select * from user where email = '"+cus.getEmail()+"'";
			Statement statement = DBConnect.getConnection().createStatement();
			ResultSet rs = statement.executeQuery(query);
			
			if (rs.next()) {
				cus.setUserID(rs.getInt("userID"));
				cus.setEmail(rs.getString("email"));
				cus.setPassword(rs.getString("password"));
				cus.setAddress(rs.getString("address"));
				cus.setFirst_name(rs.getString("first_name"));
				cus.setLast_name(rs.getString("last_name"));
				cus.setUtype(rs.getString("utype"));
				cus.setStatus(rs.getString("status"));
				return cus;
			}
		} catch (Exception e) {
			e.printStackTrace();	 
		}
		return null; 
	}
	
	
	public void updateCustomer(CustomerManage customer) {
		try {
			String query = "update user SET email='"+customer.getEmail()+"', password='"+customer.getPassword()+"', address='"+customer.getAddress()+"', first_name='"+customer.getFirst_name()+"', Last_name='"+customer.getLast_name()+"', utype='"+customer.getUtype()+"', status='"+customer.getStatus()+"' where email='"+customer.getEmail()+"' ";
			
			Statement statement = DBConnect.getConnection().createStatement();
			statement.executeUpdate(query);
			
		} catch (Exception e) {
			e.printStackTrace(); 
		}
	}
	
	
	public void deleteCustomer(CustomerManage cus) {
		try {
			String sql = "delete from user where email='"+cus.getEmail()+"'";
			Statement stmt = DBConnect.getConnection().createStatement();
			stmt.executeUpdate(sql);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}