SELECT menu.ItemName FROM menu
WHERE Menu.ItemID = (SELECT Orders.ItemID FROM Orders WHERE Orders.Quantity > 2)