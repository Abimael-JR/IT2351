-- **********************************************
-- IT2351 Assignment 4 Part 4 - Abimael Rivera
-- Creating a select statement that returns the order_id and order_date columns to show when they will be approximately arriving.
-- Only for orders in March.
-- **********************************************

SELECT order_id, order_date,
DATEADD(DAY,2,order_date) AS approx_ship_date,
ship_date, DATEDIFF(DAY,ship_date,DATEADD(DAY,2,order_date)) AS days_to_ship
FROM Orders
WHERE YEAR(order_date) = 2018 AND MONTH(order_date) = 3
