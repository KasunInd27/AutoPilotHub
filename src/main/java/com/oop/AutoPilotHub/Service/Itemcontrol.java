package com.oop.AutoPilotHub.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.oop.AutoPilotHub.model.Itemmodel;
import com.oop.AutoPilotHub.Util.DBConnection;

public class Itemcontrol {
	
	//connect to DB
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Insert Data 
	public static boolean insertdata( String itemname, int stockqty, int reorderamount, String lastupdated) {
		
		boolean isSuccess = false;
		try {
			//DB Connection 
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "insert into insertnewitem values('"+itemname+"','"+stockqty+"','"+reorderamount+"','"+lastupdated+"')";
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
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
	public static List<Itemmodel> getById (int itemid){
		ArrayList <Itemmodel> item = new ArrayList<>();
		
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from insertnewitem where itemid = '"+itemid+"'";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				
				String itemname = rs.getString(2);
				int stockqty = rs.getInt(3);
				int reorderamount = rs.getInt(4);
				String lastupdated = rs.getString(5);
				
				
				Itemmodel  it = new Itemmodel(itemid,itemname,stockqty,reorderamount,lastupdated);
				item.add(it);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return item;
	}
	

	//GetAll Data
	public static List<Itemmodel> getAllitem (){
		ArrayList <Itemmodel> items = new ArrayList<>();
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//Query
			String sql = "select * from insertnewitem";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int itemid = rs.getInt(1);
				String itemname = rs.getString(2);
				int stockqty = rs.getInt(3);
				int reorderamount = rs.getInt(4);
				String lastupdated = rs.getString(5);
				
				
				Itemmodel  it = new Itemmodel(itemid,itemname,stockqty,reorderamount,lastupdated);
				items.add(it);
			}
			System.out.println("Fetched items: " + items.size());
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return items;
	}
	//Update Data
	public static boolean updatedata(int itemid,String itemname,int stockqty,int reorderamount,String lastupdated) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			
			//SQL Query
			String sql = "update insertnewitem set itemname='"+itemname+"',stockqty='"+stockqty+"',reorderamount='"+reorderamount+"',lastupdated='"+lastupdated+"'"
			+"where itemid='"+itemid+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
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
	
	//Delete Data
	public static boolean deletedata(int itemid) {
		try {
			//DBConnection
			con=DBConnection.getConnection();
			stmt=con.createStatement();
			String sql = "delete from insertnewitem where itemid='"+itemid+"'";
			
			int rs = stmt.executeUpdate(sql);
			if(rs>0) {
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
	
}