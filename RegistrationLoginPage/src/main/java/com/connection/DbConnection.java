package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection get_connection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/org", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return con;

	}
}
