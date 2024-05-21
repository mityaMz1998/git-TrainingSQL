CREATE DATABASE DbLevelsOfUsers

CREATE TABLE levels
(
	id INT PRIMARY KEY IDENTITY,
	level_name VARCHAR(30)
)

CREATE TABLE users
(
	id INT PRIMARY KEY IDENTITY,
	user_name VARCHAR(30),
	level_id INT,
	skill INT,
	FOREIGN KEY (level_id) REFERENCES levels (id)
)

INSERT INTO levels (level_name) VALUES
('admin'),
('power_user'),
('user'),
('guest')

INSERT INTO users (user_name, level_id, skill) VALUES 
('Anton', 1, 900000),
('Denis', 3, 4000),
('Petr', 2, 50000),
('Andrey', 4, 20),
('Olga', 1, 600000),
('Anna', 1, 1600000)

SELECT * FROM levels
SELECT * from users

--1
SELECT * FROM users WHERE level_id = 1 AND skill > 799000 AND user_name LIKE '%a%'

--2
DELETE FROM users WHERE skill < 100000

--3
SELECT * FROM users ORDER BY skill DESC

--4
INSERT INTO users (user_name, level_id, skill) VALUES ('Oleg', 4, 10)

--5
UPDATE users SET skill = 2000000 WHERE level_id < 2

--6
SELECT user_name FROM users WHERE level_id IN (SELECT id FROM levels WHERE
level_name = 'admin')

--7
SELECT user_name FROM users AS u JOIN levels AS l ON (l.id = u.level_id)
WHERE l.level_name = 'admin'