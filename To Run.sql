use got_hospital_opc;
select * from patients where Patient_ID=10107;
delete from patients where Patient_ID=10107;
delete from billing where Bill_=10107;
delete from diagnosis where Diagnosis_ID=2912;
select * from contact_details where Patient_ID=10101;
select * from patients_audit;
select * from visit_audit;
select * from billing_audit;
select * from diagnosis_audit;

select * from insurance_company;

select * from users;

describe patients;
select * from users where Password ='CURRENT' and Role='CURRENT';

  INSERT INTO patients (Patient_ID,Insurace_Company_ID,Patient_firstName,Patient_LastName,
  Patient_DOB,Gender,PatientInsurance_ID,Insurance_ExpiryDate)
  VALUES (default,1008,"lexy","redd",'2000-01-04',"male",5202,'2020-12-31');
  insert into patients values (default,1000,'CCC','BB','1984-08-15','Female',5030,'2020-04-01');
  
  update patients set Patient_firstName ="jerry" where Patient_ID=10101;
  update users set UserName='doctty' where Password='CURRENT' AND Role='CURRENT';
  
  
select * from patients;
select * from patients_audit;
select * from contact_details;

select * from visits;
select * from visit_audit;

select * from billing;
select * from billing_audit;

select * from diagnosis;
select * from diagnosis_audit;

select * from prescription;
select * from diagnosis;
select * from symptom_sheet;
select * from tests;

select * from speciality;

select * from users;
