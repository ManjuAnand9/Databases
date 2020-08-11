package com.model;

public class MedicalTest {

	private int testID ;
	private int visitId;

	private String testDescription;
	private String testResult;
	public int getTestID() {
		return testID;
	}
	public void setTestID(int testID) {
		this.testID = testID;
	}
	public int getVisitId() {
		return visitId;
	}
	public void setVisitId(int visitId) {
		this.visitId = visitId;
	}
	public String getTestDescription() {
		return testDescription;
	}
	public void setTestDescription(String testDescription) {
		this.testDescription = testDescription;
	}
	public String getTestResult() {
		return testResult;
	}
	public void setTestResult(String testResult) {
		this.testResult = testResult;
	}
	public MedicalTest(int testID, int visitId, String testDescription, String testResult) {
		super();
		this.testID = testID;
		this.visitId = visitId;
		this.testDescription = testDescription;
		this.testResult = testResult;
	}
	
	}
