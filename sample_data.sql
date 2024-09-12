USE InventoryDataBase;
-- Inserting Products
INSERT INTO Products (ProductName, Category, StockQuantity, Price)
VALUES 
('Laptop', 'Electronics', 50, 800),
('Phone', 'Electronics', 100, 500),
('Desk Chair', 'Furniture', 75, 120);

-- Inserting Suppliers
INSERT INTO Suppliers (SupplierName, ContactInfo)
VALUES 
('Tech Supplies Inc.', 'tech@supplies.com'),
('Office Goods Ltd.', 'office@goods.com');

-- Inserting Purchases
INSERT INTO Purchases (ProductID, SupplierID, QuantityPurchased, PurchaseDate)
VALUES 
(1, 1, 25, '2024-08-01'),
(3, 2, 50, '2024-08-10');

-- Inserting Sales
INSERT INTO Sales (ProductID, QuantitySold, SaleDate)
VALUES 
(1, 10, '2024-08-15'),
(2, 20, '2024-08-16');
