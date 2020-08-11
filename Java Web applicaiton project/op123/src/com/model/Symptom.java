package com.model;

public class Symptom {

	private int visitId ;
	private String symptomName;
	private int dayseffected;
	private int symptomSheetID;
	private String symptomDescription;
	private String symptomseverity;
	
	public Symptom() {
		super();
	}

	public Symptom(int visitId, String symptomName, int dayseffected,
			int symptomSheetID, String symptomDescription,
			String symptomseverity) {
		super();
		this.visitId = visitId;
		this.symptomName = symptomName;
		this.dayseffected = dayseffected;
		this.symptomSheetID = symptomSheetID;
		this.symptomDescription = symptomDescription;
		this.symptomseverity = symptomseverity;
	}

	public int getVisitId() {
		return visitId;
	}

	public void setVisitId(int visitId) {
		this.visitId = visitId;
	}

	public String getSymptomName() {
		return symptomName;
	}

	public void setSymptomName(String symptomName) {
		this.symptomName = symptomName;
	}

	public int getDayseffected() {
		return dayseffected;
	}

	public void setDayseffected(int dayseffected) {
		this.dayseffected = dayseffected;
	}

	public int getSymptomSheetID() {
		return symptomSheetID;
	}

	public void setSymptomSheetID(int symptomSheetID) {
		this.symptomSheetID = symptomSheetID;
	}

	public String getSymptomDescription() {
		return symptomDescription;
	}

	public void setSymptomDescription(String symptomDescription) {
		this.symptomDescription = symptomDescription;
	}

	public String getSymptomseverity() {
		return symptomseverity;
	}

	public void setSymptomseverity(String symptomseverity) {
		this.symptomseverity = symptomseverity;
	}
	
	

	
	
}
