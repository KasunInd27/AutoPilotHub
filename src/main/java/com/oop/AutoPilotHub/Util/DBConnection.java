package com.oop.AutoPilotHub.Util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url = "jdbc:mysql://localhost:3306/autopilothub";
	private static String user = "root";
	private static String password = "sewmini23";
	private static Connection con;
	
	public static Connection getConnection () {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, user, password);
		}
		catch(Exception e) {
			System.out.println("Database not connect!");
		}
		
		return con;
	}
	
}
