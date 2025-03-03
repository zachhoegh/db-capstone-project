CREATE PROCEDURE `GetMaxQuantity` ()
BEGIN
SELECT Max(Quantity) FROM Orders;
END