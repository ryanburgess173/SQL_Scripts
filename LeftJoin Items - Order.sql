SELECT Items.ItemName, Orders.OrderID
FROM Items
LEFT JOIN Orders ON Items.ItemID = Orders.ItemID
ORDER BY Items.ItemID;