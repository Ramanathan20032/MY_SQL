USE FIRSTDATABASE;
-- REPEAT LOOP

DELIMITER $$
CREATE PROCEDURE LOOPDEMO3()
BEGIN
	DECLARE i INT;
    DECLARE STR VARCHAR(50);
    SET i = 1;
    SET STR = '';
	REPEAT
		SET STR = CONCAT(STR,i,' ');
        SET i = i + 1;
        UNTIL i > 10
	 END REPEAT;
SELECT STR;
END $$
DELIMITER ;

CALL LOOPDEMO3();
DROP PROCEDURE LOOPDEMO3;