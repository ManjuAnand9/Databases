DROP PROCEDURE IF EXISTS insert_prescription;
DELIMITER //
CREATE PROCEDURE insert_prescription
(
  visit_id_param    INT,
  medication_description_param varchar(200),
  medication_quantity_param INT,
  medication_dosage_param varchar(45)
)
BEGIN
  INSERT INTO prescription (Prescription_ID,Visit_ID,Medication_Description,Medication_Quantity,
  Medication_Dosage)
  VALUES (default,visit_id_param,medication_description_param,medication_quantity_param,
  medication_dosage_param);
END//



DROP PROCEDURE IF EXISTS update_prescription;
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


