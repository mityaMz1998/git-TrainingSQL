I. Write two SQL queries to fulfill the task:
1. Output the average salary of all testers on the 'PUMCHD' project.
The response should contain columns:
- Project name;
- Job title;
- Average salary.
2. Output all employees who work on several projects at once.
The response must contain the following columns:
- Employee's first and last name;
- Job title.

The script contains in the file "SQL_Employees_Companies.sql"

![image](https://github.com/mityaMz1998/git-TestTaskSQL-1/assets/100907269/b2ea3bd1-21f6-4c82-9610-7c75548ef89d)


II. You need to write queries on the data from the tables that will output all the necessary information:
1.	Output the names of all companies that did not fulfill the order from 15.11.1996 - 18.02.1997 
2.	Output the names of the supplier companies that are located in México D.F.;
3.	Output only those orders that were placed from 12/12/1996 to 02/18/1997;
4.	Output only those customers whose company name begins with 'An';
5.	Output the names of companies and the orders they have placed with an order amount greater than 17000. Use table join.
6.	Output the following columns: supplier name, order amount. Sort the results by supplier in descending order
7.	Output the following columns: supplier name, order date. Output so that all customers from Table 1 are shown in the results table.

![image](https://github.com/mityaMz1998/git-TestTaskSQL-2/assets/100907269/fc800429-0aa4-44c9-a1b4-00768476f872)

![image](https://github.com/mityaMz1998/git-TestTaskSQL-2/assets/100907269/b4de89a3-aebd-43fe-ba8a-c17d9b4c2f45)

The script contains in the file "SQL_Customers_Orders.sql"


III.There is database:

![image](https://github.com/mityaMz1998/git-TestTask-3/assets/100907269/cc531c66-9ffd-49e9-a2c5-5f978c4bdcf4)

![image](https://github.com/mityaMz1998/git-TestTask-3/assets/100907269/7d65b69a-7814-4681-aa08-7edafe81e821)

Write a query that outputs the number of working accounts (deposits) with a balance greater than 0 for each client in the form of this table:

![image](https://github.com/mityaMz1998/git-TestTask-3/assets/100907269/a4d0995f-e26c-46ea-95c9-bf8655e9b52e)

The script contains in the file "SQL_Clients_Accounts.sql"


IV.Initial data: there are 2 tables users and levels with the corresponding set of fields. Table structure and field values are given below:

![image](https://github.com/mityaMz1998/git-TaskPostgreSQL/assets/100907269/5a67349c-ca29-4189-88e6-368e892fe72e)

Assignments to write database queries:
1. Select from the user table all users with level_id=1, skill > 799000 and the letter a in their name.
2. Delete all users with skill less than 100000.
3. Output all data from the user table in descending order by skill field.
4. Add a new user named Oleg with level 4 and skill =10 to the user table.
5. Update data in user table - for users with level_id less than 2 set skill 2000000.
6. Select user_name of all admin level users using subquery.
7. Select user_name of all admin level users using "join".

The script contains in the file "SQL_Levels_Users.sql"


V. There are 2 tables: users and personal_data:
1. Find the number of all users with yandex mail.
2. Find all users with date of birth from 1995 to 2000 sorted in ascending order (display birthday_date, email, mobile_number fields in the output)
3. Display the last user added to the database who does not have a date of birth.

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/698ccaf7-6abf-4e45-b018-d60b77c3dc8e)

The script contains in the file "SQL_PersonalData_Users.sql"
