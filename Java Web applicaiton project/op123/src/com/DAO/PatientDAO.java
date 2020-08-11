package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Billing;
import com.model.Patientinfo;

public class PatientDAO {
	
public boolean insertpatient(Patientinfo patientinfo) {
		
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_patients(?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			//stmt.setInt(1, patientinfo.getPatientid());
			stmt.setInt(1, patientinfo.getInsuraceCompanyID());
			stmt.setString(2, patientinfo.getPatientfirstName());
			stmt.setString(3, patientinfo.getPatientLastName());
			stmt.setDate(4, patientinfo.getPatientDOB());
			stmt.setString(5, patientinfo.getGender());
			stmt.setInt(6, patientinfo.getPatientInsurance_ID());
			stmt.setDate(7, patientinfo.getInsurance_ExpiryDate());
			stmt.setString(8, patientinfo.getAddress_Line1());
			stmt.setString(9, patientinfo.getAddress_Line2());
			stmt.setString(10, patientinfo.getPatient_Phn());
			stmt.setString(11, patientinfo.getPatient_Email());
			stmt.setString(12, patientinfo.getState());
			stmt.setString(13, patientinfo.getCity());
			stmt.setInt(14, patientinfo.getZip_Code());
			
			System.out.println("1---"+ patientinfo.getInsuraceCompanyID());
			System.out.println("2---"+  patientinfo.getPatientfirstName());
			System.out.println("3---"+  patientinfo.getPatientLastName());
			System.out.println("4---"+  patientinfo.getPatientDOB());
			System.out.println("5---"+  patientinfo.getGender());
			System.out.println("6---"+  patientinfo.getPatientInsurance_ID());
			System.out.println("7---"+  patientinfo.getInsurance_ExpiryDate());
			System.out.println("8---"+ patientinfo.getAddress_Line1());
			System.out.println("9---"+  patientinfo.getAddress_Line2());
			System.out.println("10---"+  patientinfo.getPatient_Phn());
			System.out.println("11---"+  patientinfo.getPatient_Email());
			System.out.println("12---"+  patientinfo.getState());
			System.out.println("13---"+ patientinfo.getCity());
			System.out.println("14---"+  patientinfo.getZip_Code());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}

public boolean updatePatient(Patientinfo patientinfo) {
	
	Connection connection = Helper.getConnection();
	
	String query = "{call update_patients(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}";
	
	try {
		CallableStatement stmt =  connection.prepareCall(query);
		
		stmt.executeUpdate("use got_hospital_opc;");
		stmt.setInt(1, patientinfo.getPatientid());
		stmt.setInt(2, patientinfo.getInsuraceCompanyID());
		stmt.setString(3, patientinfo.getPatientfirstName());
		stmt.setString(4, patientinfo.getPatientLastName());
		stmt.setDate(5, patientinfo.getPatientDOB());
		stmt.setString(6, patientinfo.getGender());
		stmt.setInt(7, patientinfo.getPatientInsurance_ID());
		stmt.setDate(8, patientinfo.getInsurance_ExpiryDate());
		stmt.setString(9, patientinfo.getAddress_Line1());
		stmt.setString(10, patientinfo.getAddress_Line2());
		stmt.setString(11, patientinfo.getPatient_Phn());
		stmt.setString(12, patientinfo.getPatient_Email());
		stmt.setString(13, patientinfo.getState());
		stmt.setString(14, patientinfo.getCity());
		stmt.setInt(15, patientinfo.getZip_Code());
		int count  = stmt.executeUpdate();
		return count>0 ? true:false;
	} catch (SQLException e) {
		System.out.println(e);
		return false;
	} 
}

}
