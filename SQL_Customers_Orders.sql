CREATE DATABASE DbOrdersOfClients
USE DbOrdersOfClients

CREATE TABLE Customers
(
	CustomerID VARCHAR(30) PRIMARY KEY,
	CompanyName VARCHAR(30),
	Adress VARCHAR(50),
	City VARCHAR(30),
	Country VARCHAR(30)
);

ALTER TABLE Customers
ALTER COLUMN CompanyName VARCHAR(50);

CREATE TABLE Orders
(
	OrderID INT PRIMARY KEY,
	CustomerId VARCHAR(30),
	OrderDate DATE,
	OrderSum INT,
	FOREIGN KEY (CustomerId) REFERENCES Customers (CustomerID) ON DELETE CASCADE
);

INSERT INTO Customers (CustomerID, CompanyName, Adress, City, Country) VALUES
('ALFKI','Alfreds Futterkiste','Obere Str. 57','Berlin','Germany'),
('ANATR','Ana Trujillo Emparedados y helados','Avda. de la Constitución 2222','México D.F.','Mexico'),
('ANTON','Antonio Moreno Taquería','Mataderos  2312','México D.F.','Mexico'),
('AROUT','Around the Horn','120 Hanover Sq.','London','UK'),
('BERGS','Berglunds snabbköp','Berguvsvägen  8','Luleå','Sweden'),
('BLAUS','Blauer See Delikatessen','Forsterstr. 57','MannheimCity','Germany'),
('BLONP','Blondesddsl père et fils','24, place Kléber','StrasbourgCity','France'),
('BOLID','Bólido Comidas preparadas','C/ Araquil, 67','MadridCity','Spain')

INSERT INTO Orders (OrderID, CustomerId, OrderDate, OrderSum) VALUES
(10355, 'ABOUT', '1996-11-15', 10000),
(10365, 'ANTON', '1996-11-27', 15000),
(10381, 'BERGS', '1996-12-12', 20000),
(10436, 'BLONP', '1997-02-05', 17500),
(10442, 'ANATR', '1997-02-11', 20000),
(10449, 'BLONP', '1997-02-18', 10000),
(10453, 'AROUT', '1997-02-21', 15000)

SELECT * FROM Customers
SELECT * FROM Orders

--1
SELECT CompanyName FROM Customers WHERE CustomerID NOT IN
(SELECT CustomerId FROM Orders WHERE OrderDate BETWEEN
'1996-11-15' AND '1997-02-18')

--2
SELECT CompanyName FROM Customers WHERE City = 'México D.F.'

--3
SELECT * FROM Orders WHERE OrderDate BETWEEN
'1996-12-12' AND '1997-02-18'

--4
SELECT OrderID FROM Orders AS o INNER JOIN Customers AS c
ON (o.CustomerId = c.CustomerID) WHERE c.CompanyName LIKE 'An%'

--5
SELECT c.CompanyName, o.OrderId FROM Customers AS c INNER JOIN
Orders AS o ON (o.CustomerId = c.CustomerID) WHERE OrderSum > 17000

--6
SELECT CustomerId, OrderDate FROM Orders
ORDER BY CustomerId DESC

--7
SELECT c.CustomerId, o.OrderDate FROM Customers c
LEFT JOIN Orders AS o ON (c.CustomerID = o.CustomerId)