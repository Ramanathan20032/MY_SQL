USE FIRSTDATABASE;

CREATE TABLE EMPLOYEE4(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(20) NOT NULL,
    JOB_DESC VARCHAR(20),
    SALARY INT,
    BRANCH_ID INT,
    FOREIGN KEY (BRANCH_ID) REFERENCES BRANCH(BRANCH_ID)
);

CREATE TABLE BRANCH(
	BRANCH_ID INT PRIMARY KEY AUTO_INCREMENT,
    LOCATION VARCHAR(20)
);

ALTER TABLE BRANCH ADD COLUMN MANAGER_ID INT;

UPDATE BRANCH
SET MANAGER_ID = 2
WHERE BRANCH_ID = 1;

INSERT INTO BRANCH VALUES(5,"KARUR",9);
DELETE FROM BRANCH 
WHERE BRANCH_ID = 4;

ALTER TABLE BRANCH
ADD CONSTRAINT FK_MANAGER_ID
FOREIGN KEY (MANAGER_ID) REFERENCES EMPLOYEE4(ID);

ALTER TABLE BRANCH
DROP FOREIGN KEY FK_MANAGER_ID;

INSERT INTO BRANCH VALUES(1,"MADURAI"),(2,"TRICHY"),(3,"CHENNAI");

DROP TABLE BRANCH;
SELECT * FROM BRANCH;
SELECT * FROM EMPLOYEE4;
DROP TABLE EMPLOYEE4;

INSERT INTO EMPLOYEE4 VALUES(1,"RAJ","ADMIN",1000000,1);
INSERT INTO EMPLOYEE4 VALUES(2,"HARINI","MANAGER",2500000,3);
INSERT INTO EMPLOYEE4 VALUES(3,"GEORGE","SALES",2000000,2);
INSERT INTO EMPLOYEE4 VALUES(4,"RAMYA","SALES",1300000,3);
INSERT INTO EMPLOYEE4 VALUES(5,"MEENA","HR",2000000,2);
INSERT INTO EMPLOYEE4 VALUES(6,"ASHOK","MANAGER",3000000,1);
INSERT INTO EMPLOYEE4 VALUES(7,"ABDUL","HR",2000000,2);
INSERT INTO EMPLOYEE4 VALUES(8,"RAMYA","ENGINEER",1000000,3);
INSERT INTO EMPLOYEE4 VALUES(9,"RAGHU","CEO",8000000,1);
INSERT INTO EMPLOYEE4 VALUES(10,"ARVIND","MANAGER",2800000,2);
INSERT INTO EMPLOYEE4 VALUES(11,"AKSHAY","ENGINEER",1000000,3);
INSERT INTO EMPLOYEE4 VALUES(12,"JOHN","ADMIN",2200000,1);
INSERT INTO EMPLOYEE4 VALUES(13,"ABINAYA","ENGINEER",2100000,3);
INSERT INTO EMPLOYEE4 VALUES(15,"AKASH","ANALYST","1000000",4);