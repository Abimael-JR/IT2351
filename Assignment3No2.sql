-- **********************************************
-- IT2351 Assignment 3 Part 2 - Abimael Rivera
-- Creating a select statement that returns the count of the number of orders in the orders table
-- **********************************************

SELECT COUNT(order_id)
FROM orders;

SELECT SUM(ship_amount)
FROM orders;