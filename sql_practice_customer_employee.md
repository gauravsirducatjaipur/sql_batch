# SQL Practice Workbook — Customer and Employee Details

**Instructions for students**
- Follow the steps in order.
- In Step 6, use the supplied records to write your own `INSERT` queries. Do not copy a ready-made INSERT statement.
- Run the INSERT queries before attempting Step 7.
- Step 7 questions are based on the records supplied below. Some questions ask about categories that are not present yet; add extra practice records if your teacher asks you to test those cases.

---

# Part A — `customerdetail`

## Step 1 — Create the table

Create a table named `customerdetail` with these columns and constraints:

| Column | Data type / constraint |
|---|---|
| customer_id | INT, PRIMARY KEY, AUTO_INCREMENT |
| first_name | VARCHAR(50), NOT NULL |
| last_name | VARCHAR(50), NOT NULL |
| email | VARCHAR(100), UNIQUE, NOT NULL |
| mobile | VARCHAR(15), UNIQUE |
| gender | VARCHAR(10), NOT NULL |
| date_of_birth | DATE, NULL allowed |
| registration_date | DATE, NOT NULL |
| customer_type | VARCHAR(20), NOT NULL |
| credit_limit | DECIMAL(10,2), DEFAULT 0.00 |

**Task:** Write and execute the `CREATE TABLE` query.

## Step 2 — Add `address`

**Task:** Add an `address` column of type `VARCHAR(255)` with `NOT NULL`.

## Step 3 — Add `city`

**Task:** Add a `city` column of type `VARCHAR(50)` with `NOT NULL`.

## Step 4 — Set the default city

**Task:** Modify `city` so its default value is `'Jaipur'`, keeping `VARCHAR(50)` and `NOT NULL`.

## Step 5 — Change the city column size

**Task:** Change `city` to `VARCHAR(20)`, keeping `NOT NULL` and default `'Jaipur'`.

## Step 6 — Insert records

Use the following records to write **your own `INSERT INTO customerdetail (column_names...) VALUES ...` query**. Do not insert `customer_id`; it is `AUTO_INCREMENT`.

| first_name | last_name | email | mobile | gender | date_of_birth | registration_date | customer_type | credit_limit | address | city |
|---|---|---|---|---|---|---|---|---:|---|---|
| Rahul | Sharma | rahul.customer@gmail.com | 9811100001 | Male | 1995-05-15 | 2026-07-01 | Premium | 50000.00 | Vaishali Nagar | Jaipur |
| Priya | Verma | priya.customer@gmail.com | 9811100002 | Female | 1998-08-20 | 2026-07-05 | Regular | 25000.00 | Mansarovar | Delhi |
| Aman | Gupta | aman.customer@gmail.com | 9811100003 | Male | 1993-02-11 | 2026-07-08 | Regular | 18000.00 | Shastri Nagar | Jaipur |
| Neha | Singh | neha.customer@gmail.com | 9811100004 | Female | 2000-12-03 | 2026-07-10 | Premium | 42000.00 | Malviya Nagar | Jaipur |
| Rohan | Mehta | rohan.customer@gmail.com | 9811100005 | Male | 1997-04-22 | 2026-07-12 | Gold | 35000.00 | Civil Lines | Ajmer |
| Kavita | Joshi | kavita.customer@gmail.com | 9811100006 | Female | 1996-09-14 | 2026-07-15 | Regular | 22000.00 | Vaishali Nagar | Jaipur |
| Arjun | Saini | arjun.customer@gmail.com | 9811100007 | Male | 1991-07-19 | 2026-07-18 | Gold | 60000.00 | Mansarovar | Kota |
| Simran | Kaur | simran.customer@gmail.com | 9811100008 | Female | 1999-01-25 | 2026-07-20 | Premium | 30000.00 | Jagatpura | Jaipur |
| Mohit | Jain | mohit.customer@gmail.com | 9811100009 | Male | 1994-06-30 | 2026-07-22 | Regular | 15000.00 | Shyam Nagar | Delhi |
| Pooja | Sharma | pooja.customer@gmail.com | 9811100010 | Female | 2001-03-08 | 2026-07-25 | Gold | 28000.00 | Raja Park | Jaipur |

**Check your insert:** Run `SELECT * FROM customerdetail;` and verify that all 10 records were inserted.

## Step 7 — SQL query practice

Write a query for each task:

1. Display all records from `customerdetail`.
2. Display `customer_id`, `first_name`, `last_name`, `email`, and `city`.
3. Display customers who live in Jaipur.
4. Display customers whose `customer_type` is Premium.
5. Display customers in ascending order of `first_name`.
6. Display customers in descending order of `first_name`.
7. Display male customers who live in Jaipur.
8. Display customers whose type is Premium or Regular.
9. Display female customers whose `credit_limit` is greater than 20000.
10. Display customers whose `credit_limit` is greater than 30000, sorted by credit limit descending.
11. Display customers whose `credit_limit` is less than 20000.
12. Display customers whose `credit_limit` is greater than or equal to 25000.
13. Display customers registered after `2026-07-15`.
14. Display customers born before `1997-01-01`.
15. Display customers whose gender is not Male.
16. Display customers whose type is not Regular.
17. Display customers whose credit limit is between 20000 and 50000.
18. Display customers whose `customer_id` is between 3 and 8.
19. Display Jaipur customers whose credit limit is between 20000 and 50000, sorted by credit limit descending.
20. Display male customers registered after `2026-07-05`, sorted by registration date ascending.
21. Display customers whose type is in Premium, Regular, or Gold.
22. Display customers whose type is not in Premium, Regular, or Gold.
23. Display customers whose first name starts with `A`.
24. Display customers whose first name ends with `a`.
25. Display customers whose first name contains `i`.
26. Display customers whose email ends with `gmail.com`.
27. Display customers whose credit limit is between 15000 and 40000 and whose type is Premium or Regular. Group the `OR` condition with parentheses.
28. Display customers whose address contains `Nagar` and whose gender is Female.
29. Display customers whose last name starts with `S` or whose credit limit is greater than 40000. Sort by first name ascending.
30. Display Jaipur customers of type Premium with credit limit greater than 20000, sorted by credit limit descending.
31. Display distinct customer types.
32. Display distinct cities.
33. Count the total number of customers.
34. Display the maximum and minimum credit limit.
35. Display the average credit limit.
36. Display the total credit limit.
37. Display the first five customers.
38. Display the five customers with the highest credit limits.
39. Display the number of customers in each customer type.
40. Display customer types having more than two customers.

---

# Part B — `employeedetail`

## Step 1 — Create the table

Create a table named `employeedetail` with these columns and constraints:

| Column | Data type / constraint |
|---|---|
| employee_id | INT, PRIMARY KEY, AUTO_INCREMENT |
| first_name | VARCHAR(50), NOT NULL |
| last_name | VARCHAR(50), NOT NULL |
| email | VARCHAR(100), UNIQUE, NOT NULL |
| mobile | VARCHAR(15), UNIQUE |
| gender | VARCHAR(10), NOT NULL |
| date_of_birth | DATE, NULL allowed |
| hire_date | DATE, NOT NULL |
| department | VARCHAR(50), NOT NULL |
| designation | VARCHAR(60), NOT NULL |
| salary | DECIMAL(10,2), NOT NULL |

**Task:** Write and execute the `CREATE TABLE` query.

## Step 2 — Add `address`

**Task:** Add an `address` column of type `VARCHAR(255)` with `NOT NULL`.

## Step 3 — Add `city`

**Task:** Add a `city` column of type `VARCHAR(50)` with `NOT NULL`.

## Step 4 — Set the default city

**Task:** Modify `city` so its default value is `'Jaipur'`, keeping `VARCHAR(50)` and `NOT NULL`.

## Step 5 — Change the city column size

**Task:** Change `city` to `VARCHAR(20)`, keeping `NOT NULL` and default `'Jaipur'`.

## Step 6 — Insert records

Use the following records to write **your own `INSERT INTO employeedetail (column_names...) VALUES ...` query**. Do not insert `employee_id`; it is `AUTO_INCREMENT`.

| first_name | last_name | email | mobile | gender | date_of_birth | hire_date | department | designation | salary | address | city |
|---|---|---|---|---|---|---|---|---|---:|---|---|
| Amit | Sharma | amit.employee@gmail.com | 9822200001 | Male | 1992-03-10 | 2024-01-15 | IT | Software Developer | 65000.00 | Jagatpura | Jaipur |
| Neha | Verma | neha.employee@gmail.com | 9822200002 | Female | 1996-09-18 | 2025-06-01 | HR | HR Executive | 42000.00 | Mansarovar | Delhi |
| Karan | Gupta | karan.employee@gmail.com | 9822200003 | Male | 1990-11-22 | 2022-04-10 | Sales | Sales Executive | 48000.00 | Vaishali Nagar | Jaipur |
| Pooja | Singh | pooja.employee@gmail.com | 9822200004 | Female | 1994-07-06 | 2023-08-21 | IT | UI Developer | 58000.00 | Malviya Nagar | Jaipur |
| Rohit | Mehta | rohit.employee@gmail.com | 9822200005 | Male | 1989-02-14 | 2021-03-01 | Finance | Accountant | 52000.00 | Civil Lines | Ajmer |
| Simran | Kaur | simran.employee@gmail.com | 9822200006 | Female | 1997-12-28 | 2025-01-12 | HR | Recruiter | 40000.00 | Mansarovar | Jaipur |
| Arjun | Saini | arjun.employee@gmail.com | 9822200007 | Male | 1993-05-17 | 2020-09-07 | IT | Backend Developer | 72000.00 | Jagatpura | Kota |
| Kavita | Joshi | kavita.employee@gmail.com | 9822200008 | Female | 1995-10-09 | 2024-11-18 | Sales | Sales Manager | 61000.00 | Shastri Nagar | Jaipur |
| Mohit | Jain | mohit.employee@gmail.com | 9822200009 | Male | 1991-08-30 | 2023-02-06 | Finance | Financial Analyst | 56000.00 | Raja Park | Delhi |
| Riya | Sharma | riya.employee@gmail.com | 9822200010 | Female | 1998-04-13 | 2022-07-25 | IT | QA Engineer | 45000.00 | Vaishali Nagar | Jaipur |

**Check your insert:** Run `SELECT * FROM employeedetail;` and verify that all 10 records were inserted.

## Step 7 — SQL query practice

Write a query for each task:

1. Display all records from `employeedetail`.
2. Display `employee_id`, `first_name`, `last_name`, `department`, and `salary`.
3. Display employees who live in Jaipur.
4. Display employees who work in the IT department.
5. Display employees in ascending order of `first_name`.
6. Display employees in descending order of `first_name`.
7. Display male employees in the IT department.
8. Display employees who work in IT or HR.
9. Display female employees whose salary is greater than 40000.
10. Display employees whose salary is greater than 50000, sorted by salary descending.
11. Display employees whose salary is less than 50000.
12. Display employees whose salary is greater than or equal to 42000.
13. Display employees hired after `2023-12-31`.
14. Display employees born before `1995-01-01`.
15. Display employees whose gender is not Male.
16. Display employees whose department is not HR.
17. Display employees whose salary is between 40000 and 70000.
18. Display employees whose `employee_id` is between 3 and 8.
19. Display Jaipur employees whose salary is between 40000 and 70000, sorted by salary descending.
20. Display male employees hired after `2022-01-01`, sorted by hire date ascending.
21. Display employees whose department is in IT, HR, or Sales.
22. Display employees whose department is not in IT, HR, or Sales.
23. Display employees whose first name starts with `A`.
24. Display employees whose first name ends with `a`.
25. Display employees whose first name contains `e`.
26. Display employees whose email ends with `gmail.com`.
27. Display employees whose salary is between 35000 and 70000 and whose department is IT or HR. Group the `OR` condition with parentheses.
28. Display employees whose address contains `Nagar` and whose gender is Female.
29. Display employees whose last name starts with `S` or whose salary is greater than 60000. Sort by first name ascending.
30. Display Jaipur employees in IT whose salary is greater than 50000, sorted by salary descending.
31. Display distinct department names.
32. Display distinct cities.
33. Count the total number of employees.
34. Display the maximum and minimum salary.
35. Display the average salary.
36. Display the total salary.
37. Display the first five employees.
38. Display the five employees with the highest salaries.
39. Display the number of employees in each department.
40. Display departments having more than two employees.

---

## Final checklist

- [ ] Create each table.
- [ ] Add `address`.
- [ ] Add `city`.
- [ ] Set the default city to Jaipur.
- [ ] Change the city column size to 20.
- [ ] Write INSERT queries from the supplied data and execute them.
- [ ] Verify inserted rows with `SELECT *`.
- [ ] Solve the 40 questions for each table.
