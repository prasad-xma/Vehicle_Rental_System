package model;

public class BookingM {
	int id;
	
	String start_date ;
	String type;
	String end_date ;
	String status;
	String vehicleRNo;
	public BookingM(String start_date, String end_date, String status) {
		
		this.start_date = start_date;
		this.end_date = end_date;
		this.status = status;
		
	}
	
	
	public BookingM(int id, String start_date, String type, String end_date, String status) {
		this.id = id;
		this.start_date = start_date;
		this.type = type;
		this.end_date = end_date;
		this.status = status;
	}


	


	public int getId() {
		return id;
	}


	public String getStart_date() {
		return start_date;
	}


	public String getType() {
		return type;
	}


	public String getEnd_date() {
		return end_date;
	}


	public String getStatus() {
		return status;
	}
	
	

}
