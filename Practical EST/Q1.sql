
SELECT prod_name, COALESCE(SUM(qty),0)
FROM Tbl_Products
LEFT JOIN Tbl_Orders
ON Tbl_Products.prod_id = Tbl_Orders.prod_id
GROUP BY prod_name;