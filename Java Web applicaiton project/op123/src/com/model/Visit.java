package com.model;

public class Visit {

	private int visitId ;
	private int patientId;
	
	private int doctorId;
	private String facility;
	private long  visittimeIN;
	private long visittimeOUT;
	
	public Visit() {
		super();
	}

	public Visit(int visitId, int patientId, int doctorId, String facility, long visittimeIN,
			long visittimeOUT) {
		super();
		this.visitId = visitId;
		this.patientId = patientId;
		this.doctorId = doctorId;
		this.facility = facility;
		this.visittimeIN = visittimeIN;
		this.visittimeOUT = visittimeOUT;
	
	}

	public Visit(int vid, int pid, int did, String facility) {
		super();
		this.visitId = vid;
		this.patientId = pid;
		this.doctorId = did;
		this.facility = facility;
		
	}

	public int getVisitId() {
		return visitId;
	}

	public void setVisitId(int visitId) {
		this.visitId = visitId;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public int getDoctorId() {
		return doctorId;
	}

	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public long getVisittimeIN() {
		return visittimeIN;
	}

	public void setVisittimeIN(long visittimeIN) {
		this.visittimeIN = visittimeIN;
	}

	public long getVisittimeOUT() {
		return visittimeOUT;
	}

	public void setVisittimeOUT(long visittimeOUT) {
		this.visittimeOUT = visittimeOUT;
	}
}

	
