USE FIRSTDATABASE;
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM EMPLOYEE4;
SELECT * FROM EMPLOYEE_BACKUP;
DROP TABLE EMPLOYEE_BACKUP;
SELECT * FROM BRANCH2;

CREATE TABLE EMPLOYEE_BACKUP(
	ID INT PRIMARY KEY,
    NAME VARCHAR(30),
    JOB_DESC VARCHAR(30),
    SALARY INT,
    BRANCH_ID INT,
    FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH2(BRANCH_ID)
);

DELIMITER $$
CREATE PROCEDURE BACKUPEMPLOYEE()
BEGIN
	DECLARE DONE INT DEFAULT 0; 
	DECLARE ID,SALARY,BRANCH_ID INT;
    DECLARE NAME,JOB_DESC VARCHAR(30);
    DECLARE CUR CURSOR FOR SELECT * FROM EMPLOYEE4;
    DECLARE EXIT HANDLER FOR NOT FOUND SET DONE = 1;
    DELETE FROM EMPLOYEE_BACKUP;
    OPEN CUR;
		LABEL : LOOP
        IF DONE = 1 THEN
			LEAVE LABEL;
        END IF;
			FETCH CUR INTO ID,NAME,JOB_DESC,SALARY,BRANCH_ID;
			INSERT INTO EMPLOYEE_BACKUP
			VALUES (ID,NAME,JOB_DESC,SALARY,BRANCH_ID);
		END LOOP;
    CLOSE CUR;
END $$
DELIMITER ;

CALL BACKUPEMPLOYEE();