package com.RegisteredCustomer;

public class payment {
	
	private int payID;
	private String acNo;
	private double amount;
	private String pmethod;
	private String cvc;
	private String hName;
	private String e_date;
	private String pay_date;
	
	
	public payment(int payID, String acNo, double amount, String pmethod, String cvc, String hName,String e_date, String pay_date) {

		this.payID = payID;
		this.acNo = acNo;
		this.amount = amount;
		this.pmethod = pmethod;
		this.cvc = cvc;
		this.hName = hName;
		this.e_date = e_date;
		this.pay_date = pay_date;
	}


	public int getPayID() {
		return payID;
	}

//No BookID


	public String getAcNo() {
		return acNo;
	}


	public double getAmount() {
		return amount;
	}


	public String getPmethod() {
		return pmethod;
	}


	public String getCvc() {
		return cvc;
	}


	public String gethName() {
		return hName;
	}


	public String getE_date() {
		return e_date;
	}


	public String getPay_date() {
		return pay_date;
	}





}
