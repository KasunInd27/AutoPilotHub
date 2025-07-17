package com.oop.AutoPilotHub.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import com.oop.AutoPilotHub.Util.DBConnection;
import com.oop.AutoPilotHub.model.AddReservationModel;

public class AddReservationController {
	
	//Connect DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data Function
	public static boolean insertdata (String full_name, String phone_number, String email_address, String vehicle_model, int year, String license_plate, String service_type, Date preferred_date, Time preferred_time) {
		boolean isSuccess = false;
		
		try {
			//DB Connection call
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "insert into add_reservation values(0, '"+full_name+"','"+phone_number+"','"+email_address+"','"+vehicle_model+"','"+year+"','"+license_plate+"','"+service_type+"', '"+preferred_date+"','"+preferred_time+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	//GetById
	public static List<AddReservationModel> getById (String Id){
		
		int convertedID = Integer.parseInt(Id);
		
		ArrayList <AddReservationModel> reservation = new ArrayList<>();
		
		try {
			//DB Connection 
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from add_reservation where id='"+convertedID+"'";

			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String full_name = rs.getString(2);
				String phone_number = rs.getString(3);
				String email_address = rs.getString(4);
				String vehicle_model = rs.getString(5);
				int year = Integer.parseInt(rs.getString(6));
				String license_plate = rs.getString(7);
				String service_type = rs.getString(8);
				java.sql.Date preferred_date = java.sql.Date.valueOf(rs.getString(9));
				java.sql.Time preferred_time = java.sql.Time.valueOf(rs.getString(10));
				
				AddReservationModel ar = new AddReservationModel(id, full_name, phone_number, email_address, vehicle_model, year, license_plate, service_type, preferred_date, preferred_time);
				reservation.add(ar);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return reservation;
		
	}
	
	//Get All Data
	public static List<AddReservationModel> getAllReservation (){
		
		ArrayList <AddReservationModel> reservations = new ArrayList<>();
		
		try {
			//DB Connection 
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//Query
			String sql = "select * from add_reservation";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String full_name = rs.getString(2);
				String phone_number = rs.getString(3);
				String email_address = rs.getString(4);
				String vehicle_model = rs.getString(5);
				int year = Integer.parseInt(rs.getString(6));
				String license_plate = rs.getString(7);
				String service_type = rs.getString(8);
				java.sql.Date preferred_date = java.sql.Date.valueOf(rs.getString(9));
				java.sql.Time preferred_time = java.sql.Time.valueOf(rs.getString(10));
				
				AddReservationModel ar = new AddReservationModel(id, full_name, phone_number, email_address, vehicle_model, year, license_plate, service_type, preferred_date, preferred_time);
				reservations.add(ar);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return reservations;
		
	}
	
	//Get latest reservation data
	public static List<AddReservationModel> getLatestReservation() {
	    ArrayList<AddReservationModel> reservation = new ArrayList<>();
	    try {
	        con = DBConnection.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM add_reservation ORDER BY id DESC LIMIT 1";
	        rs = stmt.executeQuery(sql);
	        if(rs.next()) {
	            int id = rs.getInt(1);
	            String full_name = rs.getString(2);
	            String phone_number = rs.getString(3);
	            String email_address = rs.getString(4);
	            String vehicle_model = rs.getString(5);
	            int year = rs.getInt(6);
	            String license_plate = rs.getString(7);
	            String service_type = rs.getString(8);
	            java.sql.Date preferred_date = rs.getDate(9);
	            java.sql.Time preferred_time = rs.getTime(10);

	            AddReservationModel ar = new AddReservationModel(id, full_name, phone_number, email_address, vehicle_model, year, license_plate, service_type, preferred_date, preferred_time);
	            reservation.add(ar);
	        }
	    } catch(Exception e) {
	        e.printStackTrace();
	    }
	    return reservation;
	}
	
	//Update Data
	public static boolean updatedata (String id, String full_name, String phone_number, String email_address, String vehicle_model, int year, String license_plate, String service_type, Date preferred_date, Time preferred_time) {
		try {
			//DB Connection 
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "update add_reservation set full_name='"+full_name+"', phone_number='"+phone_number+"', email_address='"+email_address+"', vehicle_model='"+vehicle_model+"', year='"+year+"', license_plate='"+license_plate+"', service_type='"+service_type+"', preferred_date='"+preferred_date+"', preferred_time='"+preferred_time+"'" + "where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//Delete Data
	public static boolean deletedata(String id) {
		int convId = Integer.parseInt(id);
		try {
			//DBConnection
			con = DBConnection.getConnection();
			stmt = con.createStatement();
			
			//SQL Query
			String sql = "delete from add_reservation where id='"+convId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}

}
