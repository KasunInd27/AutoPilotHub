package com.oop.AutoPilotHub.model;

import java.sql.Date;

public class fuelModel {
	
	private int id;
	private String fuel_type;
	private double quantity;
	private String supplier;
	private double unit_price;
	private Date  delivery_date;
	
	
	public fuelModel(int id, String fuel_type, double quantity, String supplier, double unit_price,
			Date delivery_date) {
		this.id = id;
		this.fuel_type = fuel_type;
		this.quantity = quantity;
		this.supplier = supplier;
		this.unit_price = unit_price;
		this.delivery_date = delivery_date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getFuel_type() {
		return fuel_type;
	}


	public void setFuel_type(String fuel_type) {
		this.fuel_type = fuel_type;
	}


	public double getQuantity() {
		return quantity;
	}


	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}


	public String getSupplier() {
		return supplier;
	}


	public void setSupplier(String supplier) {
		this.supplier = supplier;
	}


	public double getUnit_price() {
		return unit_price;
	}


	public void setUnit_price(double unit_price) {
		this.unit_price = unit_price;
	}


	public Date getDelivery_date() {
		return delivery_date;
	}


	public void setDelivery_date(Date delivery_date) {
		this.delivery_date = delivery_date;
	}
	
	
	

}