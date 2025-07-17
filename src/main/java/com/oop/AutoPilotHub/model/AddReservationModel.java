package com.oop.AutoPilotHub.model;

import java.sql.Date;
import java.sql.Time;

public class AddReservationModel {
	private int id;
	private String full_name;
	private String phone_number;
	private String email_address;
	private String vehicle_model;
	private int year;
	private String license_plate;
	private String service_type;
    private Date preferred_date;
    private Time preferred_time;
    
	public AddReservationModel(int id, String full_name, String phone_number, String email_address,
			String vehicle_model, int year, String license_plate, String service_type, Date preferred_date,
			Time preferred_time) {
		this.id = id;
		this.full_name = full_name;
		this.phone_number = phone_number;
		this.email_address = email_address;
		this.vehicle_model = vehicle_model;
		this.year = year;
		this.license_plate = license_plate;
		this.service_type = service_type;
		this.preferred_date = preferred_date;
		this.preferred_time = preferred_time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getEmail_address() {
		return email_address;
	}

	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}

	public String getVehicle_model() {
		return vehicle_model;
	}

	public void setVehicle_model(String vehicle_model) {
		this.vehicle_model = vehicle_model;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getLicense_plate() {
		return license_plate;
	}

	public void setLicense_plate(String license_plate) {
		this.license_plate = license_plate;
	}

	public String getService_type() {
		return service_type;
	}

	public void setService_type(String service_type) {
		this.service_type = service_type;
	}

	public Date getPreferred_date() {
		return preferred_date;
	}

	public void setPreferred_date(Date preferred_date) {
		this.preferred_date = preferred_date;
	}

	public Time getPreferred_time() {
		return preferred_time;
	}

	public void setPreferred_time(Time preferred_time) {
		this.preferred_time = preferred_time;
	}
    
    
	
}
