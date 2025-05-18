package model;

public class RegRequests {
	int id;
	String reg ;
	String addDate ;
	String type;
	public RegRequests(int id,String reg, String addDate, String type) {
		this.id = id;
		this.reg = reg;
		this.addDate = addDate;
		this.type = type;
	}
	public String getReg() {
		return reg;
	}
	public String getAddDate() {
		return addDate;
	}
	public String getType() {
		return type;
	}
	
	public int getId() {
		return id;
	}
	
	
	
	
}
