package com.model;

public class Diagnosis {

	private int Visit_ID;
	private String  Diagnosis_Description;
	private int Diagnosis_ID;


	Diagnosis(){
		super();
	}

	public Diagnosis( int Diagnosis_ID,int Visit_ID, String Diagnosis_Description) {
	super();
		this.Diagnosis_ID= Diagnosis_ID;
		this.Visit_ID = Visit_ID;
		this.Diagnosis_Description = Diagnosis_Description;

	}
  public int getDiagnosis_ID() {
		return Diagnosis_ID;
	}

	public void setDiagnosis_ID(int Diagnosis_ID) {
		this.Diagnosis_ID = Diagnosis_ID;
	}

	public int getVisitID() {
		return Visit_ID;
	}

	public void setVisitID(int VisitID) {
		this.Visit_ID = Visit_ID;
	}

	public String getDiagnosis_Description() {
		return Diagnosis_Description;
	}

	public void setDiagnosis_Description(String Diagnosis_Description ) {
		this.Diagnosis_Description = Diagnosis_Description;
	}




}
