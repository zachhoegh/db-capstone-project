SELECT Customers.CustomerID, Customers.CustomerFullName, Orders.OrderID, Orders.TotalCost, Menu.ItemName, Menu.ItemType
FROM Customers INNER JOIN Orders ON Customers.CustomerID = Orders.OrderID INNER JOIN Menu ON Orders.ItemID = Menu.ItemID
WHERE Orders.TotalCost > 150
ORDER BY Orders.TotalCost ASC