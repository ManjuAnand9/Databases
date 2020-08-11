package com.model;

import java.sql.Date;

public class Patientinfo {

	
	private int patientid;
	private int InsuraceCompanyID;
	private String PatientfirstName;
	private String PatientLastName;
	private Date PatientDOB;
	private String Gender;
	private int PatientInsurance_ID;
	private Date Insurance_ExpiryDate;
	private String Address_Line1;
	private String Address_Line2;
	private String Patient_Phn;
	private String Patient_Email;
	private String State;
	private String City;
	private int Zip_Code;
	
	public Patientinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Patientinfo(int patientid, int insuraceCompanyID, String patientfirstName, String patientLastName,
			Date patientDOB, String gender, int patientInsurance_ID, Date insurance_ExpiryDate, String address_Line1,
			String address_Line2, String patient_Phn, String patient_Email, String state, String city, int zip_Code) {
		super();
		this.patientid = patientid;
		this.InsuraceCompanyID = insuraceCompanyID;
		this.PatientfirstName = patientfirstName;
		this.PatientLastName = patientLastName;
		this.PatientDOB = patientDOB;
		this.Gender = gender;
		this.PatientInsurance_ID = patientInsurance_ID;
		this.Insurance_ExpiryDate = insurance_ExpiryDate;
		this.Address_Line1 = address_Line1;
		this.Address_Line2 = address_Line2;
		this.Patient_Phn = patient_Phn;
		this.Patient_Email = patient_Email;
		this.State = state;
		this.City = city;
		this.Zip_Code = zip_Code;
	}

	public int getPatientid() {
		return patientid;
	}

	public void setPatientid(int patientid) {
		this.patientid = patientid;
	}

	public int getInsuraceCompanyID() {
		return InsuraceCompanyID;
	}

	public void setInsuraceCompanyID(int insuraceCompanyID) {
		InsuraceCompanyID = insuraceCompanyID;
	}

	public String getPatientfirstName() {
		return PatientfirstName;
	}

	public void setPatientfirstName(String patientfirstName) {
		PatientfirstName = patientfirstName;
	}

	public String getPatientLastName() {
		return PatientLastName;
	}

	public void setPatientLastName(String patientLastName) {
		PatientLastName = patientLastName;
	}

	public Date getPatientDOB() {
		return PatientDOB;
	}

	public void setPatientDOB(Date patientDOB) {
		PatientDOB = patientDOB;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}

	public int getPatientInsurance_ID() {
		return PatientInsurance_ID;
	}

	public void setPatientInsurance_ID(int patientInsurance_ID) {
		PatientInsurance_ID = patientInsurance_ID;
	}

	public Date getInsurance_ExpiryDate() {
		return Insurance_ExpiryDate;
	}

	public void setInsurance_ExpiryDate(Date insurance_ExpiryDate) {
		Insurance_ExpiryDate = insurance_ExpiryDate;
	}

	public String getAddress_Line1() {
		return Address_Line1;
	}

	public void setAddress_Line1(String address_Line1) {
		Address_Line1 = address_Line1;
	}

	public String getAddress_Line2() {
		return Address_Line2;
	}

	public void setAddress_Line2(String address_Line2) {
		Address_Line2 = address_Line2;
	}

	public String getPatient_Phn() {
		return Patient_Phn;
	}

	public void setPatient_Phn(String patient_Phn) {
		Patient_Phn = patient_Phn;
	}

	public String getPatient_Email() {
		return Patient_Email;
	}

	public void setPatient_Email(String patient_Email) {
		Patient_Email = patient_Email;
	}

	public String getState() {
		return State;
	}

	public void setState(String state) {
		State = state;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public int getZip_Code() {
		return Zip_Code;
	}

	public void setZip_Code(int zip_Code) {
		Zip_Code = zip_Code;
	}
	
	
}
