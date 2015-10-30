package gui;

import java.sql.*;

public abstract class DBConnection {
	
	static{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("Class not Found.. " + e);
		}
	}
	public static Connection createConnection(){
		
		String URL = "jdbc:mysql://localhost:3306/Contacts";
		String USERNAME = "root";
		String PASSWORD = "root1";
		Connection connection = null;
		
		try {
			connection = DriverManager.getConnection(URL, USERNAME,PASSWORD);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.println("Sql Exception thrown.." + e);
		}
		
		return connection;
		
	}
	

}
