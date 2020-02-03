CREATE TABLE Items(
	ItemID int NOT NULL IDENTITY PRIMARY KEY,
	ItemName varchar(100) NOT NULL,
	ItemDescription varchar(500) NOT NULL
);

INSERT INTO Items(ItemName, ItemDescription) VALUES(
'Empire T-Shirt', '1980 Japanese style post'
),
('Davey Allison Shirt #1', '1987 Rookie Car Shirt');

CREATE TABLE Orders(
	OrderID int NOT NULL IDENTITY PRIMARY KEY,
	PersonName varchar(100) NOT NULL,
	ItemID int NOT NULL,
	Subtotal float NOT NULL,
	Tax float NOT NULL,
	Total float NOT NULL
);

INSERT INTO Orders(PersonName, ItemID, Subtotal,Tax,Total) VALUES
('Johnathan Burgess',1,45.60,14.50,60.1),
('Billy Dee Williams',2,4.50,1.50,6.00);
