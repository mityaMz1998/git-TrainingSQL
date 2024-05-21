CREATE DATABASE DbClientsAccounts
USE DbClientsAccounts

CREATE TABLE Statuses
(
	StatusID INT PRIMARY KEY,
	StatusName VARCHAR(30),
	StatusCode VARCHAR(30)
);

CREATE TABLE Clients
(
	ClientID INT PRIMARY KEY,
	ClientType VARCHAR(30),
	ClientName VARCHAR(50)
);

CREATE TABLE Deposits
(
	id INT PRIMARY KEY IDENTITY,
	ClientID INT,
	AccountID INT,
	Currency VARCHAR(10),
	Saldo DECIMAL(10,2),
	StatusID INT,
	FOREIGN KEY (ClientID) REFERENCES Clients (ClientID) ON DELETE CASCADE,
	FOREIGN KEY (StatusID) REFERENCES Statuses (StatusID) ON DELETE CASCADE
);

ALTER TABLE Deposits
ALTER COLUMN AccountID BIGINT

INSERT INTO Statuses (StatusID, StatusName, StatusCode) VALUES
(556,'� ��������','Pending'),
(11255,'��������', 'Work'),
(11258,'������������','Blocked'),
(30005,'���������','Arrest'),
(32565,'������','Closed')

INSERT INTO Clients (ClientID, ClientType, ClientName) VALUES
(155, 'PRIV', '������ ���� ������'),
(255, 'PRIV', '������ ���� ���������'),
(226, 'ORG', '��� "������"'),
(358, 'PRIV', '������ ���� ������'),
(598, 'ORG', '�� ������� �.�.'),
(973, 'PRIV', '������� ���� ��������')

INSERT INTO Deposits (ClientID, AccountID, Currency, Saldo, StatusID) VALUES
(255, 1254686498, 'RUB', 0, 11255),
(155, 7319797999, 'EUR', 14.5, 11255),
(598, 165489952, 'USD', 2164.89, 11255),
(973, 4687954697, 'USD', 114.0, 11258),
(155, 1133547879, 'RUB', 0, 11255),
(255, 265985499, 'EUR', 447.54, 11255),
(226, 3565659988, 'RUB', 0, 32565),
(226, 7489415891, 'USD', 57.4, 11255),
(358, 1564898811, 'RUB', 25574.84, 11255),
(598, 2645988554, 'USD', 0, 32565),
(255, 2123659887, 'RUB', 125484.89, 11255),
(155, 3125477787, 'EUR', 66.95, 11255)

Select * From Clients
Select * From Statuses
Select * From Deposits

-- The query outputting the number of working accounts (deposits) with a balance greater than 0 for each client
SELECT 
    c.ClientName,
    SUM(CASE WHEN d.Currency = 'RUB' AND d.Saldo > 0 THEN 1 ELSE 0 END) AS RUB,
    SUM(CASE WHEN d.Currency = 'USD' AND d.Saldo > 0 THEN 1 ELSE 0 END) AS USD,
    SUM(CASE WHEN d.Currency = 'EUR' AND d.Saldo > 0 THEN 1 ELSE 0 END) AS EUR
FROM
    Clients c
INNER JOIN
    Deposits d ON c.ClientID = d.ClientID
GROUP BY
    c.ClientName;
