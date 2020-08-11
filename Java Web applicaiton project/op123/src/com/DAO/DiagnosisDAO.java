package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Diagnosis;


public class DiagnosisDAO {

public boolean addDiagnosis(Diagnosis diagnosis) {

		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();

		String query = "{call insert_diagnosis(?,?)}";

		try {
			CallableStatement stmt =  connection.prepareCall(query);

			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, diagnosis.getVisitID());
			stmt.setString(2, diagnosis.getDiagnosis_Description());

			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		}
	}


public boolean updateDiagnosis(Diagnosis diagnosis) {

		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();

		String query = "{call update_diagnosis(?,?,?)}";

		try {
			CallableStatement stmt =  connection.prepareCall(query);

			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, diagnosis.getDiagnosis_ID());
			stmt.setInt(2, diagnosis.getVisitID());
			stmt.setString(3, diagnosis.getDiagnosis_Description());

			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		}
	}
}
