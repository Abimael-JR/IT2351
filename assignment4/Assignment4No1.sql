SELECT FORMAT(list_price,1),
CONVERT(list_price, SIGNED),
CAST(list_price AS SIGNED)
FROM Products;