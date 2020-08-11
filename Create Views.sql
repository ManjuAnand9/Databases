drop view if exists Symptom_Details_view;
CREATE VIEW Symptom_Details_view AS
select p.Patient_ID, p.Patient_firstName, p.Patient_LastName, v.Visit_ID, v.Visit_TimeIN, s.Symptom_Sheet_ID, Symptom_Name, s.Symptom_Description, s.Symptoms_Severity from patients p
		join visits v on v.Patient_ID=p.Patient_ID
		join symptom_sheet s on s.Visit_ID = v.Visit_ID;
 
 drop view if exists Visit_details_view;
CREATE VIEW Visit_details_view AS
select p.Patient_ID, p.Patient_firstName, p.Patient_LastName, p.PatientInsurance_ID ,v.Visit_ID, d.diagnosis_Description, concat(dd.Doctor_FirstName," ",dd.Doctor_LastName) AS Doctor_NAME, ss.Speciality_Name,v.Visit_TimeIN   from patients p
		join visits v on v.Patient_ID=p.Patient_ID
		join diagnosis d on d.Visit_ID = v.Visit_ID
        join doctors dd on v.Doctor_ID = dd.Doctor_ID
        join speciality ss on ss.Speciality_ID = dd.Speciality_ID;
        
drop view if exists Bill_details_view;
CREATE VIEW Bill_details_view AS
select p.Patient_ID, p.Patient_firstName, p.Patient_LastName, v.Visit_ID, v.Visit_TimeIN,  b.Billing_Description, b.Total_Bill, b.Insurance_Amount,b.Balance_Due from patients p
		join visits v on v.Patient_ID=p.Patient_ID
		right join billing b on b.Visit_ID = v.Visit_ID;
        
