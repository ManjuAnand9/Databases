CREATE USER 'doctoruser'@'localhost' IDENTIFIED BY '123';
GRANT ALL ON got_hospital_opc.* TO 'doctoruser'@'localhost';

CREATE USER 'clerkusers'@'localhost' IDENTIFIED BY '123';
GRANT ALL ON got_hospital_opc.patients TO 'clerkusers'@'localhost';
GRANT ALL ON got_hospital_opc.patients_audit TO 'clerkusers'@'localhost';
GRANT ALL ON got_hospital_opc.contact_details TO 'clerkusers'@'localhost';
GRANT ALL ON got_hospital_opc.visits TO 'clerkusers'@'localhost';
GRANT ALL ON got_hospital_opc.visit_audit TO 'clerkusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_patients TO 'clerkusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_visit TO 'clerkusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_patients TO 'clerkusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_visit TO 'clerkusers'@'localhost';



CREATE USER 'nurseusers'@'localhost' IDENTIFIED BY '123';
GRANT ALL ON got_hospital_opc.patients TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.patients_audit TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.contact_details TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.visits TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.visit_audit TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.billing TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.billing_audit TO 'nurseusers'@'localhost';
GRANT ALL ON got_hospital_opc.symptom_sheet TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_patients TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_visit TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_billing TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.delete_billing TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_billing TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_patients TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_visit TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.insert_symptom TO 'nurseusers'@'localhost';
GRANT EXECUTE ON procedure got_hospital_opc.update_symptom TO 'nurseusers'@'localhost';


-- GRANT SELECT ON got_hospital_opc.doctors TO 'nurseusers'@'localhost';
-- GRANT SELECT ON got_hospital_opc.diagnosis TO 'nurseusers'@'localhost';
-- GRANT SELECT ON got_hospital_opc.speciality TO 'nurseusers'@'localhost';