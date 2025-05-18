package com.RegisteredCustomer;

public class booking {
	
	private int bookingID;
	private int vehicleID;
	private String  type_uf;
	private String  pick_up;
	private String des;
	private String start_date;
	private String end_date;
	private String status;
	private int  manID;
	
	
	public booking(int bookingID, int vehicleID, String type_uf, String pick_up, String des, String start_date,String end_date, String status, int manID) {

		this.bookingID = bookingID;
		this.vehicleID = vehicleID;
		this.type_uf = type_uf;
		this.pick_up = pick_up;
		this.des = des;
		this.start_date = start_date;
		this.end_date = end_date;
		this.status = status;
		this.manID = manID;
	}


	public int getBookingID() {
		return bookingID;
	}


	public int getVehicleID() {
		return vehicleID;
	}


	public String getType_uf() {
		return type_uf;
	}


	public String getPick_up() {
		return pick_up;
	}


	public String getDes() {
		return des;
	}


	public String getStart_date() {
		return start_date;
	}


	public String getEnd_date() {
		return end_date;
	}


	public String getStatus() {
		return status;
	}


	public int getManID() {
		return manID;
	}



	
	
	
	
	
	

}
