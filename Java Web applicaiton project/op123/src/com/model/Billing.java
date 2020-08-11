package com.model;

public class Billing {

	private int billingId ;
	private int visitId;
	private Double totalBill;
	private Double insuranceAmount;
	private Double balanceDue;
	private String billingDescription;
	Billing(){
		super();	
	}
	
	public Billing(int billingId, int visitId, Double totalBill, Double insuranceAmount, Double balanceDue, String billingDescription) {
		super();
		this.billingId = billingId;
		this.visitId = visitId;
		this.totalBill = totalBill;
		this.insuranceAmount = insuranceAmount;
		this.balanceDue = balanceDue;
		this.billingDescription = billingDescription;
	}

	public int getBillingId() {
		return billingId;
	}

	public void setBillingId(int billingId) {
		this.billingId = billingId;
	}

	public int getVisitId() {
		return visitId;
	}

	public void setVisitId(int visitId) {
		this.visitId = visitId;
	}

	public Double getTotalBill() {
		return totalBill;
	}

	public void setTotalBill(Double totalBill) {
		this.totalBill = totalBill;
	}

	public Double getInsuranceAmount() {
		return insuranceAmount;
	}

	public void setInsuranceAmount(Double insuranceAmount) {
		this.insuranceAmount = insuranceAmount;
	}

	public Double getBalanceDue() {
		return balanceDue;
	}

	public void setBalanceDue(Double balanceDue) {
		this.balanceDue = balanceDue;
	}

	public String getBillingDescription() {
		return billingDescription;
	}

	public void setBillingDescription(String billingDescription) {
		this.billingDescription = billingDescription;
	}
	
	
}
