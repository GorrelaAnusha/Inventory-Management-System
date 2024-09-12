select * from  products;
select * from purchases;
select* from sales;
select * from suppliers; 
#----------------Query to check stock levels-------------------------------
SELECT ProductName, StockQuantity 
FROM Products
WHERE StockQuantity < 20;
#-----------------------Query to calculate total sales----------------------------------
SELECT SUM(s.QuantitySold * p.Price) AS TotalSales
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID;
#---------------------Query to find the top-selling products---------------------
SELECT ProductName, SUM(s.QuantitySold) AS TotalSold
FROM Sales s
JOIN Products p 
ON s.ProductID = p.ProductID
GROUP BY ProductName
ORDER BY TotalSold DESC
LIMIT 5;
#---------------------Query to view purchases by supplier----------------------------
SELECT su.SupplierName, pr.ProductName, pu.QuantityPurchased
FROM Purchases pu
JOIN Products pr ON pu.ProductID = pr.ProductID
JOIN Suppliers su ON pu.SupplierID = su.SupplierID;

