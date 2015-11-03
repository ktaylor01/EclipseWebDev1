package com.mypkg;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public abstract class CustomerDOA {

	static Connection connection = null;
	static PreparedStatement ps = null;
	static ResultSet rs = null;
	
	
public static int insertCustomer(Customer customer){
	int results = 0;
	connection = DBConnection.createConnection();
	
	try {
		ps = connection.prepareStatement("INSERT INTO Customer" + "(first_name, last_name)" + "VALUES(?,?)" );
		
		ps.setString(1, customer.getFirstName());
		ps.setString(2, customer.getLastName());
		results = ps.executeUpdate();
		
		System.out.println("CONNECTION CLOSED!!!!!");
		connection.close();
		
	} catch (SQLException e) {
		System.out.println("Insert Failed..." + e);
	}
	return results;
		
	}

	public static List<Customer> allCustomers() throws SQLException {

		connection = DBConnection.createConnection();

		Statement st = connection.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM contact_table");
		System.out.println("SELECT SUCCESSFUL!!");
		List<Customer> customers = new ArrayList<Customer>();

		Customer c;
		while (rs.next()) {
			c = new Customer();
			
			c.setFirstName(rs.getString(2));
			c.setLastName(rs.getString(3));
			
			customers.add(c);
			System.out.println("CONNECTION CLOSED!!!!!");
			connection.close();
			
	
		}

		return customers;
	}
	
	
	
	
	//====================for testing purposes only=================
	public static void printList(List<Customer> list) {
		System.out.printf("%-30.30s  %-30.30s%n", "First Name", "Last Name");
		for (Customer e : list) {
			System.out.printf("%-30.30s  %-30.30s%n", e.getFirstName(), e.getLastName());
			// System.out.println(e.getFirstName() +" "+ e.getLastName());
		}
	
	}

}
