package com.RegisteredCustomer;

public class vehicleS {
	
	private int vid;
	private String description;
	private String registration;
	private String amt;
	private String added_date;
	private int catID;
	private String ftype;
	private int passengers;
	private int rentalPrice;
	private String img;
	private int ratings;
	private String status;
	private int voID;
	private String tradeName;
	private String brand;
	
	
	public vehicleS(int vid, String description, String registration, String amt, String added_date, int catID,String ftype, int passengers, int rentalPrice, String img, int ratings, String status, int voID, String tradeName, String brand) {

		this.vid = vid;
		this.description = description;
		this.registration = registration;
		this.amt = amt;
		this.added_date = added_date;
		this.catID = catID;
		this.ftype = ftype;
		this.passengers = passengers;
		this.rentalPrice = rentalPrice;
		this.img = img;
		this.ratings = ratings;
		this.status = status;
		this.voID = voID;
		this.tradeName = tradeName;
		this.brand = brand;
	}


	public int getVid() {
		return vid;
	}


	public String getDescription() {
		return description;
	}


	public String getRegistration() {
		return registration;
	}


	public String getAmt() {
		return amt;
	}


	public String getAdded_date() {
		return added_date;
	}


	public int getCatID() {
		return catID;
	}


	public String getFtype() {
		return ftype;
	}


	public int getPassengers() {
		return passengers;
	}


	public int getRentalPrice() {
		return rentalPrice;
	}


	public String getImg() {
		return img;
	}


	public int getRatings() {
		return ratings;
	}


	public String getStatus() {
		return status;
	}


	public int getVoID() {
		return voID;
	}
	
	public String gettradeName() {
		return tradeName;
	}
	
	public String getbrand() {
		return brand;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return " "+this.tradeName +" "+this.brand+" "+this.description+ "\n";
	}


	
	

}
