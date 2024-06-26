use firstdatabase;

SELECT * FROM EMPLOYEE1;

ALTER TABLE EMPLOYEE1 ADD COLUMN HIRE_DATA DATE;

SET SQL_SAFE_UPDATES = 0;

UPDATE EMPLOYEE1
SET HIRE_DATE = "2013-07-04";

UPDATE EMPLOYEE1
SET JOB_DESC = "ANALYST"
WHERE JOB_DESC = "SALES";

UPDATE EMPLOYEE1
SET HIRE_DATE = "2013-12-18"
WHERE JOB_DESC = "ANALYST";

SELECT NOW();
SELECT DATE(NOW());
SELECT CURDATE();
SELECT YEAR(NOW());
SELECT TIME(NOW()); 

SELECT DATE_FORMAT(CURDATE(),"%D--%M--%Y") AS FORMAT;
SELECT DATE_FORMAT(CURDATE(),"%M/%y/%D") AS FORMAT;

SELECT DATEDIFF(CURDATE(),"2003-02-25") AS DAYS;

SELECT DATE_ADD(CURDATE(),INTERVAL 1 DAY) AS 'AFTER ONE DAY';
SELECT DATE_ADD(CURDATE(),INTERVAL 1 WEEK) AS 'AFTER ONE WEEK';

SELECT CURDATE() AS 'START DATE',
DATE_ADD(CURDATE(),INTERVAL 1 DAY) AS 'AFTER ONE DAY',
DATE_ADD(CURDATE(),INTERVAL 1 WEEK) AS 'AFTER ONE WEEK',
DATE_ADD(CURDATE(),INTERVAL 1 MONTH) AS 'AFTER ONE MONTH',
DATE_ADD(CURDATE(),INTERVAL 1 YEAR) AS 'AFTER ONE YEAR';
