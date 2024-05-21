use EmployeeInCompany

create table employees
(
  employee_id int primary key IDENTITY,
  first_name varchar(30),
  last_name varchar(30)
);

create table projects
(
  project_id int primary key IDENTITY,
  project_name varchar(30)
)

create table titles
(
  Id int primary key IDENTITY,
  titel_name varchar(30)
)

create table positions
(
  Id int primary key IDENTITY,
  employee_id int,
  project_id int,
  title_id int,
  foreign key (employee_id) references employees (employee_id) ON DELETE CASCADE,
  foreign key (project_id) references projects (project_id) ON DELETE CASCADE,
  foreign key (title_id) references titles (Id) ON DELETE CASCADE,
  salary numeric(19,2)
);

Insert into employees (first_name, last_name) values
('Sergey','Sergeev'),
('Andrey','Andreev')

Insert into projects values 
('ослвд')

Insert into titles values 
('Tester'),
('Developer'),
('Analyst'),
('Project manager')

Insert into positions values
(4,4,1,60000),
(5,4,1,90000)

--1
select project_name, titel_name, avg(salary) as AvgSalary from titles as t
inner join positions as p on (t.Id = p.title_id)
inner join projects as pr on (p.project_id = pr.project_id)
where titel_name Like '%tester%' AND project_name = 'ослвд'
group by project_name, titel_name

--2
select CONCAT(first_name, ' ', last_name) as FIO, titel_name from employees as e
inner join positions as p on (p.employee_id = e.employee_id)
inner join titles as t on (p.title_id = t.Id)
group by first_name, last_name, titel_name
having count(p.project_id) > 1


select* from employees
select * from titles
select * from projects
select * from positions