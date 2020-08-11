package com.model;

public class Prescription {

	private int prescritionId ;
	private int visitId;
	private String medicationDescription;
	private int medicationQuantity;
	private String medicationDosage;
	
	public Prescription() {
		super();
	}
	
	public Prescription(int prescritionId, int visitId, String medicationDescription, int medicationQuantity,
			String medicationDosage) {
		super();
		this.prescritionId = prescritionId;
		this.visitId = visitId;
		this.medicationDescription = medicationDescription;
		this.medicationQuantity = medicationQuantity;
		this.medicationDosage = medicationDosage;
	}

	public int getPrescritionId() {
		return prescritionId;
	}

	public void setPrescritionId(int prescritionId) {
		this.prescritionId = prescritionId;
	}

	public int getVisitId() {
		return visitId;
	}

	public void setVisitId(int visitId) {
		this.visitId = visitId;
	}

	public String getMedicationDescription() {
		return medicationDescription;
	}

	public void setMedicationDescription(String medicationDescription) {
		this.medicationDescription = medicationDescription;
	}

	public int getMedicationQuantity() {
		return medicationQuantity;
	}

	public void setMedicationQuantity(int medicationQuantity) {
		this.medicationQuantity = medicationQuantity;
	}

	public String getMedicationDosage() {
		return medicationDosage;
	}

	public void setMedicationDosage(String medicationDosage) {
		this.medicationDosage = medicationDosage;
	}
	
}
