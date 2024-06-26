USE FIRSTDATABASE;

CREATE TABLE EMPLOYEE5(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    EMP_NAME VARCHAR(15) NOT NULL,
	JOB_DESC VARCHAR(20),
    SALARY INT,
    PAN VARCHAR(10),
    BRANCH_ID INT,
    CONSTRAINT FK_BRANCH_ID FOREIGN KEY(BRANCH_ID) REFERENCES BRANCH(BRANCH_ID)
);

ALTER TABLE EMPLOYEE5
ADD CONSTRAINT UNI_PAN UNIQUE(PAN);
 
DESC EMPLOYEE5;
DROP TABLE EMPLOYEE5;
SHOW INDEX FROM EMPLOYEE5;

CREATE INDEX NAME_INDEX ON EMPLOYEE5(EMP_NAME);
CREATE INDEX ON EMPLOYEE5(EMP_NAME);

-- DROP INDEX
ALTER TABLE EMPLOYEE5
DROP INDEX EMP_NAME; 

ALTER TABLE EMPLOYEE5
DROP INDEX NAME_INDEX;

-- ADD INDEX
ALTER TABLE EMPLOYEE5
ADD INDEX(EMP_NAME);
