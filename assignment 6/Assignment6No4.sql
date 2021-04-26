-- **********************************************
-- IT2351 Assignment 6 Part 3 - Abimael Rivera
-- Creating an event that would run once a year to determine any products that haven't been ordered.
-- **********************************************
DROP EVENT IF EXISTS undelivered_products;
DELIMITER //

CREATE EVENT undelivered_products

ON SCHEDULE AT NOW() + INTERVAL 1 YEAR  

Do Begin
Select Product_id, Product_name
From products
group by product_id
having sum(sold_quantity) = 0;
End //

SET GLOBAL event_scheduler = ON