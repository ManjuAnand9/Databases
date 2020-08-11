package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Prescription;
import java.sql.CallableStatement;


public class PrescriptionDAO {
	
	public boolean addPrescription(Prescription prescription) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_prescription(?,?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, prescription.getVisitId());
			stmt.setString(2, prescription.getMedicationDescription());
			stmt.setInt(3, prescription.getMedicationQuantity());
			stmt.setString(4, prescription.getMedicationDosage());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
	
	
public boolean updatePrescription(Prescription prescription) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call update_prescription(?,?,?,?)}";
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, prescription.getVisitId());
			stmt.setString(2, prescription.getMedicationDescription());
			stmt.setInt(3, prescription.getMedicationQuantity());
			stmt.setString(4, prescription.getMedicationDosage());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
public boolean deletePrescription(int prescriptionId) {
	
	Helper dbHelper = new Helper();
	Connection connection = Helper.getConnection();
	
	String query = "{call delete_prescription(?)}";
	
	try {
		CallableStatement stmt =  connection.prepareCall(query);
		
		stmt.executeUpdate("use got_hospital_opc;");
		stmt.setInt(1, prescriptionId);
		
		int count  = stmt.executeUpdate();
		return count>0 ? true:false;
	} catch (SQLException e) {
		System.out.println(e);
		return false;
	} 
}

}
