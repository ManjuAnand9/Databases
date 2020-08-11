package com.java;

import com.DAO.PrescriptionDAO;
import com.model.Prescription;

public class Test {

	public static void main(String[] args) {
		PrescriptionDAO prescriptionDAO =new PrescriptionDAO();
		
		Prescription prescription = new Prescription(0,9011,"Baloxavir Java",30,"2 tabelts a day");
		
		System.out.println(prescriptionDAO.addPrescription(prescription));

	}

}
