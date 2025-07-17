package com.oop.AutoPilotHub.model;

public class Itemmodel {
private int itemid;
private String itemname;
private int stockqty;
private int reorderamount;
private String lastupdated;

public Itemmodel(int itemid, String itemname, int stockqty, int reorderamount, String lastupdated) {
	super();
	this.itemid = itemid;
	this.itemname = itemname;
	this.stockqty = stockqty;
	this.reorderamount = reorderamount;
	this.lastupdated = lastupdated;
}

public int getItemid() {
	return itemid;
}

public void setItemid(int itemid) {
	this.itemid = itemid;
}

public String getItemname() {
	return itemname;
}

public void setItemname(String itemname) {
	this.itemname = itemname;
}

public int getStockqty() {
	return stockqty;
}

public void setStockqty(int stockqty) {
	this.stockqty = stockqty;
}

public int getReorderamount() {
	return reorderamount;
}

public void setReorderamount(int reorderamount) {
	this.reorderamount = reorderamount;
}

public String getLastupdated() {
	return lastupdated;
}

public void setLastupdated(String lastupdated) {
	this.lastupdated = lastupdated;
}




}