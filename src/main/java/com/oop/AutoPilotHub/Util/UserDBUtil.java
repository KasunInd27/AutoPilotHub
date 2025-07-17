package com.oop.AutoPilotHub.Util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.oop.AutoPilotHub.model.User;

public class UserDBUtil {
	public static User validate(String email, String password) {
	    User user = null;

	    String sql = "SELECT id, first_name, last_name, email, phone, password "
	               + "FROM users WHERE email = ? AND password = ?";

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement stmt = con.prepareStatement(sql)) {

	        stmt.setString(1, email);
	        stmt.setString(2, password);

	        try (ResultSet rs = stmt.executeQuery()) {
	            if (rs.next()) {
	                user = new User(
	                    rs.getInt("id"),
	                    rs.getString("first_name"),
	                    rs.getString("last_name"),
	                    rs.getString("email"),
	                    rs.getString("phone"),
	                    rs.getString("password")
	                );
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return user;
	}

	 
	 public static boolean register(User user) {
	        boolean isSuccess = false;

	        try {
	            Connection con = DBConnection.getConnection();
	            String sql = "INSERT INTO users (first_name, last_name, email, phone, password) VALUES (?, ?, ?, ?, ?)";
	            PreparedStatement stmt = con.prepareStatement(sql);
	            stmt.setString(1, user.getFirstName());
	            stmt.setString(2, user.getLastName());
	            stmt.setString(3, user.getEmail());
	            stmt.setString(4, user.getPhone());
	            stmt.setString(5, user.getPassword());

	            int rows = stmt.executeUpdate();
	            if (rows > 0) {
	                isSuccess = true;
	            }

	            stmt.close();
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return isSuccess;
	    }
	 public static boolean updateUser(int id, String firstName, String lastName, String phone) {
		    try (Connection con = DBConnection.getConnection()) {
		        String sql = "UPDATE users SET first_name=?, last_name=?, phone=? WHERE id=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setString(1, firstName);
		        ps.setString(2, lastName);
		        ps.setString(3, phone);
		        ps.setInt(4, id);
		        return ps.executeUpdate() > 0;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
		}

		public static boolean deleteUser(int id) {
		    try (Connection con = DBConnection.getConnection()) {
		        String sql = "DELETE FROM users WHERE id=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setInt(1, id);
		        return ps.executeUpdate() > 0;
		    } catch (Exception e) {
		        e.printStackTrace();
		        return false;
		    }
		}

		public static User getUserById(int id) {
		    User user = null;
		    try (Connection con = DBConnection.getConnection()) {
		        String sql = "SELECT * FROM users WHERE id=?";
		        PreparedStatement ps = con.prepareStatement(sql);
		        ps.setInt(1, id);
		        ResultSet rs = ps.executeQuery();
		        if (rs.next()) {
		            user = new User(
		                rs.getInt("id"),
		                rs.getString("first_name"),
		                rs.getString("last_name"),
		                rs.getString("email"),
		                rs.getString("phone"),
		                rs.getString("password")
		            );
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return user;
		}

	}