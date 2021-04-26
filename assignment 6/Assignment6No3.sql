-- **********************************************
-- IT2351 Assignment 6 Part 3 - Abimael Rivera
-- Creating a function named discount_price() that attempts to calculate 
-- the discount of an item from the order_items table using a parameter
-- **********************************************
DROP FUNCTION IF EXISTS discount_price;

DELIMITER //
CREATE FUNCTION discount_price
(
item_id_param INT
)
RETURNS DECIMAL(9,2)
DETERMINISTIC
CONTAINS SQL

BEGIN
DECLARE discount_price_var DECIMAL(9,2);
SELECT  (item_price-discount_amount)
INTO discount_price_var
FROM order_items
WHERE item_id= item_id_param;
RETURN discount_price_var;
END//

DELIMITER //

SELECT 
    DISCOUNT_PRICE(item_id) AS discount_price
FROM
    order_items
WHERE
    item_id = 1;