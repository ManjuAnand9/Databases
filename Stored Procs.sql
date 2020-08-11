DROP PROCEDURE IF EXISTS insert_symptom;
DROP PROCEDURE IF EXISTS update_symptom;
DROP PROCEDURE IF EXISTS insert_visit;
DROP PROCEDURE IF EXISTS update_visit;
DROP PROCEDURE IF EXISTS update_billing;
DROP PROCEDURE IF EXISTS insert_billing;
DROP PROCEDURE IF EXISTS update_prescription;
DROP PROCEDURE IF EXISTS insert_prescription;
DROP PROCEDURE IF EXISTS delete_prescription;
DROP PROCEDURE IF EXISTS delete_billing;
DROP PROCEDURE IF EXISTS update_patients;
DROP PROCEDURE IF EXISTS insert_patients;
DROP PROCEDURE IF EXISTS insert_Diagnosis;
DROP PROCEDURE IF EXISTS update_Diagnosis;
DROP PROCEDURE IF EXISTS insert_test;
DROP PROCEDURE IF EXISTS update_test;

DELIMITER //
CREATE PROCEDURE insert_symptom
(
  visit_id_param    INT,
  symptom_name_param varchar(200),
  symptom_description_param varchar(200),
  days_effected_param INT,
  symptoms_severity_param varchar(45)
)
BEGIN
  INSERT INTO symptom_sheet (Visit_ID,Symptom_Sheet_ID,Symptom_Name,Symptom_Description,Days_effected,Symptoms_Severity)
  VALUES (visit_id_param,default,symptom_name_param,symptom_description_param,days_effected_param,symptoms_severity_param);
END//




DELIMITER //
CREATE PROCEDURE update_symptom
(
  visit_id_param    INT,
  symptom_sheet_ID_param INT,
  symptom_name_param varchar(200),
  symptom_description_param varchar(200),
  days_effected_param INT,
  symptoms_severity_param varchar(45)
)
BEGIN
  UPDATE symptom_sheet set Symptom_Name = symptom_description_param,
					   Symptom_Description = symptom_description_param,
                       Symptoms_Severity = symptoms_severity_param ,
                      Days_effected =  days_effected_param,
                       Visit_ID = visit_id_param
  WHERE  Symptom_Sheet_ID = symptom_sheet_ID_param;
END//


DELIMITER //
CREATE PROCEDURE insert_visit
(
  patient_id_param    INT,
 doctor_id_param INT,
 facility_param varchar(200)
  
)
BEGIN
  INSERT INTO visits (Visit_ID, Patient_ID, Doctor_ID, Facility, Visit_TimeIN, Visit_TimeOUT)
  VALUES (default,patient_id_param,doctor_id_param,facility_param,NOW(),NULL);
END//




DELIMITER //
CREATE PROCEDURE update_visit
(
	visit_id_param   INT,
  patient_id_param    INT,
 doctor_id_param INT,
 facility_param varchar(200)
)
BEGIN
  UPDATE visits set Patient_ID = patient_id_param, 
					   Doctor_ID = doctor_id_param,
                       Facility = facility_param
                      WHERE  Visit_ID = visit_id_param;
END//


DELIMITER //
CREATE PROCEDURE insert_billing
(
  visit_id_param    INT,
  total_bill_param decimal(10,2),
  insurance_amount_param decimal(10,2),
  balance_due_param decimal(10,2),
  billing_description_param VARCHAR(45)
)
BEGIN
  INSERT INTO billing (Bill_ID,Visit_ID,Total_Bill,Insurance_Amount,Balance_Due,Billing_Description)
  VALUES (default,visit_id_param,total_bill_param,insurance_amount_param,
  balance_due_param,billing_description_param);
END//




DELIMITER //
CREATE PROCEDURE update_billing
(
  bill_id_param     INT,
  visit_id_param    INT,
  total_bill_param decimal(10,2),
  insurance_amount_param decimal(10,2),
  balance_due_param decimal(10,2),
  billing_description_param VARCHAR(45)
)
BEGIN
  UPDATE billing set   Visit_ID = visit_id_param,
                       Total_Bill = total_bill_param,
					   Insurance_Amount = insurance_amount_param,
                       Balance_Due = balance_due_param,
                       Billing_Description = billing_description_param
  WHERE Bill_ID = bill_id_param;
END//

DELIMITER //
CREATE PROCEDURE delete_billing
(
  bill_id_param    INT
)
BEGIN
  DELETE from  billing WHERE Bill_ID = bill_id_param;
END//

DELIMITER //
CREATE PROCEDURE insert_prescription
(
  visit_id_param    INT,
  medication_description_param varchar(200),
  medication_quantity_param INT,
  medication_dosage_param varchar(45)
)
BEGIN
declare VID INT;
select Visit_ID into VID from prescription where Visit_ID = visit_id_param;
if VID is null then
  INSERT INTO prescription (Prescription_ID,Visit_ID,Medication_Description,Medication_Quantity,
  Medication_Dosage)
  VALUES (default,visit_id_param,medication_description_param,medication_quantity_param,
  medication_dosage_param);
else 
	  UPDATE prescription set Medication_Description = medication_description_param,
					   Medication_Quantity = medication_quantity_param,
                       Medication_Dosage = medication_dosage_param 
	WHERE  Visit_ID = visit_id_param;
    end if;
END//


DELIMITER //
CREATE PROCEDURE update_prescription
(
  visit_id_param    INT,
  medication_description_param varchar(200),
  medication_quantity_param INT,
  medication_dosage_param varchar(45)
)
BEGIN
  UPDATE prescription set Medication_Description = medication_description_param,
					   Medication_Quantity = medication_quantity_param,
                       Medication_Dosage = medication_dosage_param 
  WHERE  Visit_ID = visit_id_param;
END//

DELIMITER //
CREATE PROCEDURE delete_prescription
(
  prescription_id_param    INT
)
BEGIN
  DELETE from  prescription WHERE Prescription_ID = prescription_id_param;
END//


-- Patient insert procedure

DELIMITER //
CREATE PROCEDURE insert_patients
(
Insurace_Company_ID INT,
Patient_firstName VARCHAR(45),
Patient_LastName VARCHAR(45),
Patient_DOB date,
Gender VARCHAR(45),
PatientInsurance_ID int,
Insurance_ExpiryDate date,
Address_Line1 VARCHAR(45),
Address_Line2 VARCHAR(45),
Patient_Phn VARCHAR(45),
Patient_Email VARCHAR(45),
State VARCHAR(45),
City VARCHAR(45),
Zip_Code INT
)
BEGIN
  INSERT INTO patients (Patient_ID,Insurace_Company_ID,Patient_firstName,Patient_LastName,
  Patient_DOB,Gender,PatientInsurance_ID,Insurance_ExpiryDate)
  VALUES (default,Insurace_Company_ID,Patient_firstName,Patient_LastName,
  Patient_DOB,Gender,PatientInsurance_ID,Insurance_ExpiryDate);
  set @lastid=last_insert_id();
  INSERT INTO contact_details (Patient_ID,Address_Line1,Address_Line2,Patient_Phn,Patient_Email,State,City,Zip_Code) 
  VALUES (@lastid,Address_Line1,Address_Line2,Patient_Phn,Patient_Email,State,City,Zip_Code);
END//

---- patient update procedure


DELIMITER //
CREATE PROCEDURE update_patients
(
Patient_id_param int,
Insurace_Company_ID_param INT,
Patient_firstName_param VARCHAR(45),
Patient_LastName_param VARCHAR(45),
Patient_DOB_param date,
Gender_param VARCHAR(45),
PatientInsurance_ID_param int,
Insurance_ExpiryDate_param date,
Address_Line1_param VARCHAR(45),
Address_Line2_param VARCHAR(45),
Patient_Phn_param VARCHAR(45),
Patient_Email_param VARCHAR(45),
State_param VARCHAR(45),
City_param VARCHAR(45),
Zip_Code_param INT
)
BEGIN
 update patients set Insurace_Company_ID=Insurace_Company_ID_param,
 Patient_firstName=Patient_firstName_param,
 Patient_LastName=Patient_LastName_param ,
 Patient_DOB=Patient_DOB_param ,
 Gender=Gender_param,
 PatientInsurance_ID=PatientInsurance_ID_param,
 Insurance_ExpiryDate=Insurance_ExpiryDate_param where patient_id=Patient_id_param;
 update contact_details set Address_Line1=Address_Line1_param,
 Address_Line2=Address_Line2_param,
 Patient_Phn=Patient_Phn_param,
 Patient_Email=Patient_Email_param ,
 State=State_param,
 City=City_param ,
 Zip_Code = Zip_Code_param where patient_id=Patient_id_param;
END//



DELIMITER //
CREATE PROCEDURE insert_Diagnosis
(
  Visit_ID_param INT,
  Diagnosis_Description_param varchar(45)

)
BEGIN
declare diag_ID_Exists INT;
select Diagnosis_ID into diag_ID_Exists from Diagnosis where Visit_ID = Visit_ID_param;
 
 if diag_ID_Exists is null then
  INSERT INTO Diagnosis (Diagnosis_ID,Visit_ID,Diagnosis_Description)
  VALUES (default,Visit_ID_param,Diagnosis_Description_param );
else
  UPDATE Diagnosis set Visit_ID = Visit_ID_param,
                       Diagnosis_Description = Diagnosis_Description_param
  WHERE Diagnosis_ID = diag_ID_Exists;
  end if;
END//


DELIMITER //
CREATE PROCEDURE update_Diagnosis
(
  Diagnosis_ID_param    INT,
  Visit_ID_param INT,
  Diagnosis_Description_param varchar(45)
)
BEGIN
  UPDATE Diagnosis set Visit_ID = Visit_ID_param,
                       Diagnosis_Description = Diagnosis_Description_param
  WHERE Diagnosis_ID = Diagnosis_ID_param;
END//


DELIMITER //
CREATE PROCEDURE insert_test
(
  Diagnosis_ID_param INT,
  test_name_param varchar(45),
  test_result_param varchar(45)
)
BEGIN
  INSERT INTO tests (Test_ID,Diagnosis_ID,Test_Name,Test_Result)
  VALUES (default,Diagnosis_ID_param,test_name_param, test_result_param);

END//


DELIMITER //
CREATE PROCEDURE update_test
(
	test_ID_param INT,
    Diagnosis_ID_param INT,
  test_name_param varchar(45),
  test_result_param varchar(45)
)
BEGIN
  UPDATE tests set Test_Name = test_name_param,
                       Test_Result = test_result_param,
                       Diagnosis_ID = Diagnosis_ID_param
  WHERE Test_ID = test_ID_param;
END//



