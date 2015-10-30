package gui;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public abstract class ContactController {

	static Connection connection = null;
	static PreparedStatement ps = null;
	static ResultSet resultSet = null;
	String firstName = null;
	String lastName = null;

	public ContactController(Contact contact) {
		firstName = contact.getFirstName();
		lastName = contact.getLastName();

	}

	public static int insertContact(Contact contact) {
		int results = 0;

		connection = DBConnection.createConnection();
		try {

			ps = connection.prepareStatement("INSERT INTO contact_table" + "( first_name, last_name)" + "VALUES(?,?)"

			);

			ps.setString(1, contact.getFirstName());
			ps.setString(2, contact.getLastName());

			results = ps.executeUpdate();

			// ps.close();
			// connection.close();
			// System.out.println("SUCCESSFUL INSERT!");

		} catch (SQLException e) {
			System.out.println("Insert FAILED: " + e);
		}
		return results;
	}

	
	public static ResultSet displayContacts() {

		connection = DBConnection.createConnection();

		try {

			PreparedStatement ps = connection.prepareStatement("SELECT  first_name, last_name FROM contact_table");
			resultSet = ps.executeQuery();

		} catch (SQLException e) {
			System.out.println("Select Statement Failed..." + e);
		}
		return resultSet;
	}

	
	public static ResultSet searchContacts(String keyword) {
		connection = DBConnection.createConnection();

		try {
			PreparedStatement ps = connection.prepareStatement(
					"SELECT * FROM contact_table WHERE last_name like '%" + keyword + "%' " + " ORDER BY id ASC");

			resultSet = ps.executeQuery();
			System.out.println("SELECT SUCCESSFUL!!");

		} catch (SQLException e) {
			System.out.println("SELECT FAILED..." + e);

		}
		return resultSet;
	}
}
