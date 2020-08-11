package com.DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Prescription;
import com.model.Symptom;

import java.sql.CallableStatement;


public class SymptomDAO {
	
	public boolean addSymptom(Symptom symptom) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_symptom(?,?,?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, symptom.getVisitId());
			stmt.setString(2, symptom.getSymptomName());
			stmt.setString(3, symptom.getSymptomDescription());
			stmt.setInt(4, symptom.getDayseffected());
			stmt.setString(5, symptom.getSymptomseverity());
			
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
	
	
public boolean updateSymptom(Symptom symptom) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call update_symptom(?,?,?,?,?,?)}";
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, symptom.getVisitId());
			stmt.setInt(2, symptom.getSymptomSheetID());
			stmt.setString(3, symptom.getSymptomName());
			stmt.setString(4, symptom.getSymptomDescription());
			stmt.setInt(5, symptom.getDayseffected());
			stmt.setString(6, symptom.getSymptomseverity());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}

}

