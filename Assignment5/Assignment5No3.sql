-- **********************************************
-- IT2351 Assignment 5 Part 3 - Abimael Rivera
-- Creating a view named ordered_item that shows columns from several tables
-- **********************************************


CREATE VIEW Ordered_items AS
SELECT oi.item_id, p.product_name, oi.item_price, oi.quantity AS Ordered_items
FROM Order_Items OI, Products P
WHERE OI.product_id = P.product_id;
