USE FIRSTDATABASE;
-- VARIABLE

DELIMITER $$
CREATE PROCEDURE EMPLOYEECNT()
BEGIN
	DECLARE TOTAL INT DEFAULT 0;  -- otherwise NULL
    SELECT COUNT(ID) INTO TOTAL
    FROM EMPLOYEE;
    SELECT TOTAL;
END $$
DELIMITER ;

CALL EMPLOYEECNT();
DROP PROCEDURE IF EXISTS EMPLOYEECNT;


-- -------------------------------------------------------------------------------
DELIMITER $$
CREATE PROCEDURE EMPLOYEECNT()
BEGIN
	-- SCOPE WILL BETWEEN THE BEGIN AND END...
	DECLARE TOTAL,A,B INT DEFAULT 0;  -- otherwise NULL
    DECLARE X FLOAT DEFAULT 0.0;
    SET TOTAL = 10;
    SELECT TOTAL;
END $$
DELIMITER ;