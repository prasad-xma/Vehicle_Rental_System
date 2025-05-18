package Util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		
		String url = "jdbc:mysql://localhost:3306/booking_test";
		String user = "root";
		String password = "L1na2wick";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, user, password);
		
		return con;
	}
	
}

