package com.oop.AutoPilotHub.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

public class ValidateIteminputs {
	
	
	// Validate item name only
	public static boolean isItemNameUnique(String itemname) {
	    Connection con = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    try {
	        con = DBConnection.getConnection();
	        String sql = "SELECT itemname FROM insertnewitem WHERE LOWER(itemname) = LOWER(?)";
	        ps = con.prepareStatement(sql);
	        ps.setString(1, itemname);
	        rs = ps.executeQuery();

	        if (rs.next()) {
	            // Name already exists
	            System.out.println("Error: Item name '" + itemname + "' was already recorded earlier. Please use a different name.");
	            return false;
	        }

	        return true;

	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	        try {
	            if (rs != null) rs.close();
	            if (ps != null) ps.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }

	    return false; 
	}


       //validate date
		
		public static boolean isValidDate(String dateStr) {
		    String[] formats = { "d/M/yyyy", "dd/MM/yyyy"};
		    for (String format : formats) {
		        try {
		            SimpleDateFormat sdf = new SimpleDateFormat(format);
		            sdf.setLenient(false);
		            sdf.parse(dateStr);
		            return true;
		        } catch (Exception e) {
		            // Continue 
		        }
		    }
		    return false;
		}
		
}
