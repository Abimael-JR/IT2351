-- **********************************************
-- IT2351 Assignment 4 Part 3 - Abimael Rivera
-- Creating a select statement that returns the discount amount of the listing price and discount percent from the products table
-- **********************************************

SELECT list_price, discount_percent,
	ROUND (list_price * discount_percent / 100,2)  AS discount_amount
FROM products;