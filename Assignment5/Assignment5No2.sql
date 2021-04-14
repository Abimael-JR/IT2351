-- **********************************************
-- IT2351 Assignment 4 Part 6 - Abimael Rivera
-- Creating a view named order_item_products that shows columns from several tablesaddressesaddressesaddresses
-- **********************************************

CREATE VIEW order_item_products AS
SELECT O.order_id, O.order_date, O.tax_amount, O.ship_date, product_name, item_price, discount_amount, (item_price-discount_amount) AS final_price, 
quantity, (item_price-discount_amount)*quantity AS item_total
FROM Orders O, Order_Items OI, Products P
WHERE O.order_id = OI.order_id AND OI.product_id = P.product_id;
