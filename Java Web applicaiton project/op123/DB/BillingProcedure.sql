DROP PROCEDURE IF EXISTS insert_billing;
DELIMITER //
CREATE PROCEDURE insert_billing
(
  visit_id_param    INT,
  total_bill_param decimal(10,2),
  insurance_amount_param decimal(10,2),
  balance_due_param decimal(10,2)
)
BEGIN
  INSERT INTO billing (Bill_ID,Visit_ID,Total_Bill,Insurance_Amount,Balance_Due)
  VALUES (default,visit_id_param,total_bill_param,insurance_amount_param,
  balance_due_param);
END//



DROP PROCEDURE IF EXISTS update_billing;
DELIMITER //
CREATE PROCEDURE update_billing
(
  visit_id_param    INT,
  total_bill_param decimal(10,2),
  insurance_amount_param decimal(10,2),
  balance_due_param decimal(10,2)
)
BEGIN
  UPDATE billing set Total_Bill = total_bill_param,
					   Insurance_Amount = insurance_amount_param,
                       Balance_Due = balance_due_param 
  WHERE Visit_ID = visit_id_param;
END//



