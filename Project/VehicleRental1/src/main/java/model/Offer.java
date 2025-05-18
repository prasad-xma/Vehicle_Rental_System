package model;

public class Offer {
	int id;
	String offerName;
	String category ;
	String description; 
	String ofstdate; 
	String ofendate;

	public Offer(int id,String offerName, String category, String description, String ofstdate, String ofendate) {
		this.id = id;
		this.offerName = offerName;
		this.category = category;
		this.description = description;
		this.ofstdate = ofstdate;
		this.ofendate = ofendate;
	}
	
	
	
	public int getId() {
		return id;
	}


	public String getOfferName() {
		return offerName;
	}
	public void setOfferName(String offerName) {
		this.offerName = offerName;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOfstdate() {
		return ofstdate;
	}
	public void setOfstdate(String ofstdate) {
		this.ofstdate = ofstdate;
	}
	public String getOfendate() {
		return ofendate;
	}
	public void setOfendate(String ofendate) {
		this.ofendate = ofendate;
	}
	
}

