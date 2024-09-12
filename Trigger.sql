USE InventoryDataBase;
#Trigger to update stock after a purchase
DELIMITER $$
CREATE TRIGGER after_purchase
AFTER INSERT ON Purchases
FOR EACH ROW
BEGIN
    UPDATE Products
    SET StockQuantity = StockQuantity + NEW.QuantityPurchased
    WHERE ProductID = NEW.ProductID;
END;


-- Change the delimiter to avoid conflicts
DELIMITER $$
-- Create the after_sale trigger
CREATE TRIGGER after_sale
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
    UPDATE Products
    SET StockQuantity = StockQuantity - NEW.QuantitySold
    WHERE ProductID = NEW.ProductID;
END$$
-- Revert the delimiter back to semicolon
DELIMITER ;
SELECT * FROM Products;
INSERT INTO Sales (ProductID, QuantitySold, SaleDate)
VALUES (1, 5, '2024-09-11');
SELECT * FROM Products WHERE ProductID = 3;
SELECT StockQuantity FROM Products WHERE ProductID = 2;

