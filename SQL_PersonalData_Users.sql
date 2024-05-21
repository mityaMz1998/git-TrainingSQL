CREATE DATABASE DbPersonalDataUsers
USE DbPersonalDataUsers

CREATE TABLE Users
(
	Id INT PRIMARY KEY IDENTITY,
	Email VARCHAR(50),
	Mobile_number VARCHAR(30)
)

CREATE TABLE Personal_Data
(
	Id INT PRIMARY KEY IDENTITY,
	Users_id INT,
	Birthday_date DATE,
	FOREIGN KEY (Users_id) REFERENCES Users (Id)
)

ALTER TABLE Personal_Data
ALTER COLUMN Birthday_date DATE NULL;

INSERT INTO Users (Email, Mobile_number) VALUES
('qwerty@gmail.com', '7(123)456-78-90'),
('aaa123@yandex.ru', '7(456)333-76-93'),
('crabel@mail.ru', '7(999)111-22-44'),
('asdfg2@gmail.com', '7(905)245-65-11'),
('vbnmc@yandex.com', '7(564)333-56-87')

INSERT INTO Personal_Data (Users_id, Birthday_date) VALUES
(1, '1990-01-01'),
(2, '1995-02-02'),
(3, '1997-10-10'),
(4, '1999-09-12'),
(5, '2002-05-07')

INSERT INTO Personal_Data (Users_id, Birthday_date) VALUES
(6, NULL)

SELECT * FROM Users
SELECT * from Personal_Data

--1
SELECT Count(Id) AS CountOfUsers FROM Users WHERE Email LIKE '%@yandex%'

--2
SELECT Birthday_date, Email, Mobile_number 
FROM Users AS u JOIN Personal_Data AS pd ON (u.Id = pd.Users_id)
WHERE Birthday_date BETWEEN '1995-01-01' AND '2000-12-31'
ORDER BY Birthday_date ASC

--3
SELECT TOP 1 * FROM Personal_Data 
WHERE Birthday_date IS NULL
ORDER BY Id DESC