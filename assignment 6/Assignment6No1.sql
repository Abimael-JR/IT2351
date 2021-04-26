-- **********************************************
-- IT2351 Assignment 6 Part 1 - Abimael Rivera
-- Creating a procedure named productCount() that displays if the amount of products we have is greater than or less than 20
-- **********************************************
DROP PROCEDURE IF EXISTS productCount; 
DELIMITER //

CREATE PROCEDURE productCount()

BEGIN
DECLARE countprod int;
   SELECT count(*) into countprod
   FROM products ;
   if countprod>=20 then    
   select 'The number of products is greater than or equal to 20' as col1;
   else
   select 'The number of products is less than 20' as col1;
   end if;
END //

DELIMITER ;

call productCount()