-- **********************************************
-- IT2351 Assignment 6 Part 2 - Abimael Rivera
-- Creating a procedure named insertCategory() that attempts to create a Guitar Category in the table
-- **********************************************
use abimaels_guitar_shop;
DROP PROCEDURE IF EXISTS insertCategory;

DELIMITER //
CREATE PROCEDURE insertCategory()
BEGIN
DECLARE duplicate_entry_for_key TINYINT DEFAULT FALSE;
BEGIN
DECLARE EXIT HANDLER FOR 1062
SET duplicate_entry_for_key = TRUE;
INSERT INTO categories VALUES (default, 'Flute');
SELECT '1 row was inserted.' AS message;
END;
IF duplicate_entry_for_key = TRUE THEN
SELECT 'Row was not inserted - duplicate entry.' AS message;
END IF;
END//

call insertCategory();