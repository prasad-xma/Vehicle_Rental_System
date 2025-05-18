package model;

public class owner {

	int vid;
	String description;
	String registrationNo;
	String amt;
	String added_date;
	int catid;
	String ftype;
	int passengers;
	int rentalprice;
	String image;
	int rating;
	String status;
	int voId;
	String tradeName;
	String brand;
	
	
	public int getVid() {
		return vid;
	}
	public String getDescription() {
		return description;
	}
	public String getRegistrationNo() {
		return registrationNo;
	}
	public String getAmt() {
		return amt;
	}
	public String getAdded_date() {
		return added_date;
	}
	public int getCatid() {
		return catid;
	}
	public String getFtype() {
		return ftype;
	}
	public int getPassengers() {
		return passengers;
	}
	public int getRentalprice() {
		return rentalprice;
	}
	public String getImage() {
		return image;
	}
	public int getRating() {
		return rating;
	}
	public String getStatus() {
		return status;
	}
	public int getVoId() {
		return voId;
	}
	public String getTradeName() {
		return tradeName;
	}
	public String getBrand() {
		return brand;
	}
	
	
	
	
	
	public void setVid(int vid) {
		this.vid = vid;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setRegistrationNo(String registrationNo) {
		this.registrationNo = registrationNo;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	public void setAdded_date(String added_date) {
		this.added_date = added_date;
	}
	public void setCatid(int catid) {
		this.catid = catid;
	}
	public void setFtype(String ftype) {
		this.ftype = ftype;
	}
	public void setPassengers(int passengers) {
		this.passengers = passengers;
	}
	public void setRentalprice(int rentalprice) {
		this.rentalprice = rentalprice;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public void setVoId(int voId) {
		this.voId = voId;
	}
	public void setTradeName(String tradeName) {
		this.tradeName = tradeName;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return " " + this.brand;
	}
	
}
