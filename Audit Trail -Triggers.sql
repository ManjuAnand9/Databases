-- Inserttrigger 
drop trigger if exists patientsInsert;
drop trigger if exists patients_AFTER_UPDATE;
drop trigger if exists patientsDelete;
drop trigger if exists billingInsert;
drop trigger if exists billingDelete;
drop trigger if exists billingUpdate;
drop trigger if exists diagnosisInsert;
drop trigger if exists diagnosisDelete;
drop trigger if exists diagnosisUpdate;
drop trigger if exists visitInsert;
drop trigger if exists visitDelete;
drop trigger if exists visitUpdate;

delimiter //
CREATE DEFINER=`root`@`localhost` TRIGGER patientsInsert AFTER INSERT ON patients
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO patients_audit values 
(default, 
NEW.Patient_ID ,
NEW.Insurace_Company_ID ,
New.Patient_firstName , 
New.Patient_LastName ,
New.Patient_DOB ,
New.Gender,
New.PatientInsurance_ID ,
New.Insurance_ExpiryDate, 
'Inserted',
Now(),
usyname);
End//



-- Deletetrigger


delimiter //
CREATE DEFINER=`root`@`localhost`TRIGGER patientsDelete AFTER Delete ON patients
FOR EACH ROW 
BEGIN 
 declare Usyname varchar(50);
select UserName into Usyname from users where Password='CURRENT' and Role='CURRENT';
 INSERT INTO patients_audit values 
(old.Patient_ID ,
old.Insurace_Company_ID ,
old.Patient_firstName , 
old.Patient_LastName  ,
old.Patient_DOB ,
old.Gender,
old.PatientInsurance_ID ,
old.Insurance_ExpiryDate,
 'Deleted',
 Now(),
Usyname); 
End//


-- updatetrigger
delimiter //

CREATE DEFINER=`root`@`localhost` TRIGGER patients_AFTER_UPDATE AFTER UPDATE ON patients
FOR EACH ROW 
BEGIN
declare Usyname varchar(50);
select UserName into Usyname from users where Password='CURRENT' and Role='CURRENT';
insert into patients_audit values 
(default,
old.Patient_ID,
old.Insurace_Company_ID,
old.Patient_firstName,
old.Patient_LastName,
old.Patient_DOB,
old.Gender,
old.PatientInsurance_ID,
old.Insurance_ExpiryDate,
"UPDATED",
now(),
Usyname);
END //

delimiter //
CREATE DEFINER=`root`@`localhost`  TRIGGER billingInsert AFTER INSERT ON billing
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select Username into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO billing_audit values 
(default,    
NEW.Bill_ID,
NEW.Visit_ID,
New.Total_Bill , 
New.Insurance_Amount,
New.Balance_Due,
New.Billing_Description, 
"Inserted",
now(),
usyname);
End//


-- dELETEtrigger


delimiter // 
CREATE DEFINER=`root`@`localhost`  TRIGGER billingDelete AFTER Delete ON billing
FOR EACH ROW 
BEGIN
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
 INSERT INTO billing_audit values 
(default,    
old.Bill_ID,
old.Visit_ID,
old.Total_Bill , 
old.Insurance_Amount,
old.Balance_Due,
old.Billing_Description, 
'Deleted',
 Now(),
usyname);
End//

-- updatetrigger

delimiter // 
CREATE DEFINER=`root`@`localhost` TRIGGER billingUpdate AFTER UPDATE ON billing
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO billing_audit values 
(default,    
old.Bill_ID,
old.Visit_ID,
old.Total_Bill , 
old.Insurance_Amount,
old.Balance_Due,
old.Billing_Description, 
'Updated',
 Now(),
usyname);
End//


-- Inserttrigger 
delimiter //
CREATE DEFINER=`root`@`localhost`  TRIGGER diagnosisInsert AFTER INSERT ON Diagnosis
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO Diagnosis_audit values 
(default,
 new.Diagnosis_ID ,
   new.Visit_ID ,
   new.Diagnosis_Description ,
'Inserted',
 Now(),
usyname);
End//


-- Deletetrigger 
delimiter //
CREATE DEFINER=`root`@`localhost`  TRIGGER diagnosisDelete AFTER Delete ON Diagnosis
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO Diagnosis_audit values 
(default,    
old.Diagnosis_ID ,
   old.Visit_ID ,
   old.Diagnosis_Description ,
'Deleted',
 Now(),
usyname);
End//


-- Updatetrigger 
delimiter //
CREATE DEFINER=`root`@`localhost`  TRIGGER diagnosisUpdate AFTER Update ON Diagnosis
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO Diagnosis_audit values 
(default,    
old.Diagnosis_ID ,
   old.Visit_ID ,
   old.Diagnosis_Description ,
'Updated',
 Now(),
usyname);
End//


-- Inserttrigger 
delimiter //
CREATE DEFINER=`root`@`localhost` TRIGGER visitInsert AFTER INSERT ON visits
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO visit_audit values 
(default,  
New.Visit_ID  ,
New.Patient_ID ,
New.Doctor_ID  ,
New.Facility ,
New.Visit_TimeIN ,
New.Visit_TimeOUT ,
'Inserted',
 Now(),
usyname);
End//


-- Deletetrigger 
delimiter //

CREATE DEFINER=`root`@`localhost` TRIGGER visitDelete AFTER Delete ON visits
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO visit_audit values 
(default,  
OLD.Visit_ID  ,
OLD.Patient_ID ,
OLD.Doctor_ID  ,
OLD.Facility ,
OLD.Visit_TimeIN ,
OLD.Visit_TimeOUT ,
'Deleted',
 Now(),
usyname);
End//


-- Updatetrigger 
delimiter //

CREATE DEFINER=`root`@`localhost` TRIGGER visitUpdate AFTER UPDATE ON visits
FOR EACH ROW 
BEGIN 
declare usyname varchar(50);
select UserName into usyname from users where Password='CURRENT' and Role='CURRENT';
INSERT INTO visit_audit values 
(default,  
OLD.Visit_ID  ,
OLD.Patient_ID ,
OLD.Doctor_ID  ,
OLD.Facility ,
OLD.Visit_TimeIN ,
OLD.Visit_TimeOUT ,
'Updated',
 Now(),
usyname);
End//



