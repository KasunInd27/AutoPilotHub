package com.oop.AutoPilotHub.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.AutoPilotHub.Util.DBConnection;
import com.oop.AutoPilotHub.model.fuelModel;

public class fuelController {
	
	//connect DB

	private static boolean isSuccess;
	private static Connection con= null;
	private static Statement stmt= null;
	private static ResultSet rs=null;
	
	//Insert Data Function
	public  static boolean Insertdata (String fuel_type,double quantity,String supplier,double unit_price,Date delivery_date) {
		boolean isSuccess=false;
		try {
			//DB Connection call
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			
			String sql="Insert into fuelstock values(0, '"+fuel_type+"','"+quantity+"','"+supplier+"','"+unit_price+"','"+delivery_date+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
				
			}
			else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	//get by id
	public static List<fuelModel> getById(String Id){
		int covertedId=Integer.parseInt(Id);
		
		ArrayList <fuelModel> fuelstock = new ArrayList<>();
		
		try {
			//DB Connection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql ="select * from fuelstock where id = '"+covertedId+"'";
			
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String fuel_type=rs.getString(2);
				double quantity=rs.getDouble(3);
				String supplier=rs.getString(4);
				double unit_price=rs.getDouble(5);
				Date delivery_date=rs.getDate(6);
				
				fuelModel fl= new fuelModel(id,fuel_type,quantity,supplier,unit_price,delivery_date);
				fuelstock.add(fl);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return fuelstock;
	}
	
	//Get all data
	public static List <fuelModel> getAllFuelStock(){
		ArrayList <fuelModel> fuelstocks = new ArrayList<>();
		
		try {
			//DB Connection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//query
			String sql ="select * from  fuelstock ";
			
			rs =stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id=rs.getInt(1);
				String fuel_type=rs.getString(2);
				double quantity=rs.getDouble(3);
				String supplier=rs.getString(4);
				double unit_price=rs.getDouble(5);
				Date delivery_date=rs.getDate(6);
				
				fuelModel fl= new fuelModel(id,fuel_type,quantity,supplier,unit_price,delivery_date);
				fuelstocks.add(fl);
				
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return fuelstocks;
		
	}
	//Update data
	public static boolean updatedata(String id,String fuel_type,double quantity,String supplier,double unit_price,Date delivery_date) {
		
		try {
			//DB Connection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "update fuelstock set fuel_type = '"+fuel_type+"', quantity = '"+quantity+"', supplier = '"+supplier+"', unit_price = '"+unit_price+"', delivery_date = '"+delivery_date+"' where id='"+id+"'";

			
			int rs=stmt.executeUpdate(sql);
			if(rs>0) {
				isSuccess=true;
				
			}
			else {
				isSuccess=false;
			}
			
			
	}catch(Exception e) {
		e.printStackTrace();
	}
		return isSuccess;
  
}
	//Delete Data
	public static boolean deletedata(String id) {
		int covertedId=Integer.parseInt(id);
		try {
			//DB Connection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql= "delete from fuelstock where id='"+covertedId+"'";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
				
			}
			else {
				isSuccess=false;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
}
