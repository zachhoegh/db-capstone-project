PREPARE GetOrderDetails FROM 'SELECT OrderID, Quantity, TotalCost FROM Orders where CustomerID = ?';
SET @id = 1;
EXECUTE GetOrderDetails USING @id