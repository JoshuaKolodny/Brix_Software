CREATE DATABASE supermarket;
USE supermarket;

-- Creating Categories Table
CREATE TABLE Categories(
Id INT NOT NULL AUTO_INCREMENT, 
Name VARCHAR(50) NOT NULL,
PRIMARY KEY(Id)
);

INSERT INTO Categories(Name) VALUES
('vegetables'),
('dairy'),
('dry goods'),
('cleaning');

-- Creating Prodcuts Table
CREATE TABLE Products(
CategoryId INT NOT NULL, 
ProductName VARCHAR(50) NOT NULL,
Price DECIMAL(5,1) NOT NULL,
FOREIGN KEY(CategoryId) REFERENCES Categories(Id)
);

INSERT INTO Products(CategoryId,ProductName,Price) VALUES
(4,'window spray',10.5),
(1,'tomatoes',8.7),
(1,'cucumbers',5.9),
(1,'lettuce',6.4),
(2,'milk',4.9),
(2,'yellow cheese',24.2),
(3,'Baking Powder',3.2),
(1,'peppers',6.3),
(1,'cabbage',12.5),
(3,'flour',2.5),
(3,'sugar',2.5),
(4,'bleach',10),
(4,'laundry detergent',56),
(4,'dish soap',12.3),
(4,'scotchbrite',15.6),
(3,'Candy',8.3),
(1,'Celery',6.4),
(2,'yoghurt',2.3),
(2,'cheese',7.8);

-- Assignment 1
SELECT ProductName, Price FROM Products
WHERE CategoryID=1
ORDER BY PRICE DESC
LIMIT 3;

-- Assignment 2
SELECT c.Name AS 'CategoryName', p.CategoryId, p.ProductName, p.Price
FROM Categories AS c
JOIN Products AS p
ON  c.Id= p.CategoryId;

-- Assignment 3
ALTER TABLE Products
ADD Description VARCHAR(50); 

-- Assignment 4
UPDATE Products
SET Description= CONCAT(Products.ProductName,'_Desc'); 

-- Assignment 5
UPDATE Products
SET Price=30
WHERE ProductName= 'laundry detergent';

-- Assignment 6
SELECT ProductName, Price
FROM Products AS p
WHERE Price = (SELECT MAX(Price) FROM Products 
WHERE Price < (SELECT MAX(Price) FROM Products) 
AND Products.CategoryId=4);

-- Assignment 7
SELECT * FROM Products
WHERE Price BETWEEN 6 AND 12
AND ProductName NOT LIKE 'c%';

-- Assignment 8
UPDATE Products
SET Price= Price * 1.1;

