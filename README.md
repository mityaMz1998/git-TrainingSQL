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

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/40ba4a95-e517-49d3-9f4b-65f47d1b1854)


II. Write queries on the data from the tables that will output all the necessary information:
1.	Output the names of all companies that did not fulfill the order from 15.11.1996 - 18.02.1997 
2.	Output the names of the supplier companies that are located in México D.F.;
3.	Output only those orders that were placed from 12/12/1996 to 02/18/1997;
4.	Output only those customers whose company name begins with 'An';
5.	Output the names of companies and the orders they have placed with an order amount greater than 17000. Use table join.
6.	Output the following columns: supplier name, order amount. Sort the results by supplier in descending order
7.	Output the following columns: supplier name, order date. Output so that all customers from Table 1 are shown in the results table.

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/96acae5f-0302-49b5-886e-3439d8becfe9)

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/f68b00ba-4c45-497a-bf0d-74ff6c3e100b)

The script contains in the file "SQL_Customers_Orders.sql"



III.There is database:

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/5099efad-90d0-4395-afbd-3a4661ac5d8a)

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/29dc6804-c83f-4fb0-ba52-13886da9b8d1)

Write a query that outputs the number of working accounts (deposits) with a balance greater than 0 for each client in the form of this table:

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/e962953c-62c1-4922-87b9-b3a9c5a57af7)

The script contains in the file "SQL_Clients_Accounts.sql"


IV.Initial data: there are 2 tables users and levels with the corresponding set of fields. Table structure and field values are given below:

![image](https://github.com/mityaMz1998/git-TrainingSQL/assets/100907269/6afbd1a8-2486-4c98-beba-20cd1cac903d)

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
