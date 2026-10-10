## SQL Practice Set – Question 1

1\. `studentdetail`

Create a table named `studentdetail` with the following fields and constraints.

| Field Name     | Data Type     | Constraint                  |
| -------------- | ------------- | --------------------------- |
| student_id     | INT           | PRIMARY KEY, AUTO_INCREMENT |
| first_name     | VARCHAR(50)   | NOT NULL                    |
| last_name      | VARCHAR(50)   | NOT NULL                    |
| email          | VARCHAR(100)  | UNIQUE, NOT NULL            |
| mobile         | VARCHAR(15)   | UNIQUE                      |
| gender         | VARCHAR(10)   | NOT NULL                    |
| date_of_birth  | DATE          | NULL                        |
| admission_date | DATE          | NOT NULL                    |
| course_name    | VARCHAR(50)   | NOT NULL                    |
| fees           | DECIMAL(10,2) | DEFAULT 0.00                |

Task: Write the SQL query to create the `studentdetail` table using the given fields, data types, and constraints.



Add the `address` field to the `studentdetail` table:

| Field Name | Data Type    | Constraint |
| ---------- | ------------ | ---------- |
| address    | VARCHAR(255) | NOT NULL   |

If you have already created the table, use:

```
ALTER TABLE studentdetail
ADD address VARCHAR(255) NOT NULL;
```


Add the `city` field to the `studentdetail` table:

| Field Name | Data Type   | Constraint |
| ---------- | ----------- | ---------- |
| city       | VARCHAR(50) | NOT NULL   |

```
ALTER TABLE studentdetail
ADD city VARCHAR(50) NOT NULL;
```

Add default  `Jaipur` in city field in `studentdetail` table:

ALTER TABLE studentdetail
MODIFY city VARCHAR(50) NOT NULL DEFAULT 'Jaipur';


Change character size is from `50 to 20` of city field in `studentdetail` table:

ALTER TABLE studentdetail
MODIFY city VARCHAR(20) NOT NULL DEFAULT 'Jaipur';


`Now insert 2 record using field name.`
INSERT INTO studentdetail
(first_name, last_name, email, mobile, gender, date_of_birth, admission_date, course_name, fees, address, city)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', '9876543210', 'Male', '2002-05-15', '2026-07-01', 'MERN Stack', 25000.00, 'Vaishali Nagar', 'Jaipur'),
('Priya', 'Verma', 'priya@gmail.com', '9876543211', 'Female', '2003-08-20', '2026-07-05', 'Python', 18000.00, 'Mansarovar', 'Jaipur');


`Now insert single record without fieldname.`
INSERT INTO studentdetail
VALUES
(3, 'Amit', 'Kumar', 'amit@gmail.com', '9876543212', 'Male', '2001-11-10', '2026-07-10', 'Full Stack Development', 30000.00, 'Jagatpura', 'Jaipur');


`Now insert 30 records using fieldname.`
INSERT INTO studentdetail
(first_name, last_name, email, mobile, gender, date_of_birth, admission_date, course_name, fees, address, city)
VALUES
('Rohit', 'Sharma', 'rohit@gmail.com', '9876500004', 'Male', '2002-01-15', '2026-07-01', 'MERN Stack', 25000.00, 'Vaishali Nagar', 'Jaipur'),
('Neha', 'Verma', 'neha@gmail.com', '9876500005', 'Female', '2003-02-20', '2026-07-02', 'Python', 18000.00, 'Mansarovar', 'Jaipur'),
('Amit', 'Kumar', 'amit.kumar@gmail.com', '9876500006', 'Male', '2001-03-10', '2026-07-03', 'Java', 22000.00, 'Jagatpura', 'Jaipur'),
('Priya', 'Singh', 'priya.singh@gmail.com', '9876500007', 'Female', '2002-04-12', '2026-07-04', 'Web Development', 20000.00, 'Malviya Nagar', 'Jaipur'),
('Vikas', 'Meena', 'vikas@gmail.com', '9876500008', 'Male', '2000-05-18', '2026-07-05', 'PHP', 15000.00, 'Sanganer', 'Jaipur'),
('Pooja', 'Gupta', 'pooja@gmail.com', '9876500009', 'Female', '2003-06-22', '2026-07-06', 'MERN Stack', 25000.00, 'Civil Lines', 'Jaipur'),
('Ankit', 'Yadav', 'ankit@gmail.com', '9876500010', 'Male', '2001-07-14', '2026-07-07', 'Python', 18000.00, 'Pratap Nagar', 'Jaipur'),
('Kavita', 'Joshi', 'kavita@gmail.com', '9876500011', 'Female', '2002-08-25', '2026-07-08', 'Java', 22000.00, 'Shastri Nagar', 'Jaipur'),
('Deepak', 'Saini', 'deepak@gmail.com', '9876500012', 'Male', '2000-09-16', '2026-07-09', 'Web Development', 20000.00, 'Jhotwara', 'Jaipur'),
('Simran', 'Kaur', 'simran@gmail.com', '9876500013', 'Female', '2003-10-11', '2026-07-10', 'PHP', 15000.00, 'Tonk Road', 'Jaipur'),
('Manish', 'Choudhary', 'manish@gmail.com', '9876500014', 'Male', '2001-11-19', '2026-07-11', 'MERN Stack', 25000.00, 'Vaishali Nagar', 'Jaipur'),
('Ritu', 'Agarwal', 'ritu@gmail.com', '9876500015', 'Female', '2002-12-21', '2026-07-12', 'Python', 18000.00, 'Mansarovar', 'Jaipur'),
('Suresh', 'Patel', 'suresh@gmail.com', '9876500016', 'Male', '2000-01-09', '2026-07-13', 'Java', 22000.00, 'Jagatpura', 'Jaipur'),
('Anjali', 'Sharma', 'anjali@gmail.com', '9876500017', 'Female', '2003-02-14', '2026-07-14', 'Web Development', 20000.00, 'Malviya Nagar', 'Jaipur'),
('Rahul', 'Verma', 'rahul.verma@gmail.com', '9876500018', 'Male', '2001-03-23', '2026-07-15', 'PHP', 15000.00, 'Sanganer', 'Jaipur'),
('Sneha', 'Gupta', 'sneha@gmail.com', '9876500019', 'Female', '2002-04-17', '2026-07-16', 'MERN Stack', 25000.00, 'Civil Lines', 'Jaipur'),
('Mohit', 'Kumar', 'mohit@gmail.com', '9876500020', 'Male', '2000-05-26', '2026-07-17', 'Python', 18000.00, 'Pratap Nagar', 'Jaipur'),
('Divya', 'Meena', 'divya@gmail.com', '9876500021', 'Female', '2003-06-13', '2026-07-18', 'Java', 22000.00, 'Shastri Nagar', 'Jaipur'),
('Rakesh', 'Yadav', 'rakesh@gmail.com', '9876500022', 'Male', '2001-07-28', '2026-07-19', 'Web Development', 20000.00, 'Jhotwara', 'Jaipur'),
('Komal', 'Singh', 'komal@gmail.com', '9876500023', 'Female', '2002-08-08', '2026-07-20', 'PHP', 15000.00, 'Tonk Road', 'Jaipur'),
('Nitin', 'Joshi', 'nitin@gmail.com', '9876500024', 'Male', '2000-09-20', '2026-07-21', 'MERN Stack', 25000.00, 'Vaishali Nagar', 'Jaipur'),
('Shweta', 'Agarwal', 'shweta@gmail.com', '9876500025', 'Female', '2003-10-16', '2026-07-22', 'Python', 18000.00, 'Mansarovar', 'Jaipur'),
('Arjun', 'Patel', 'arjun@gmail.com', '9876500026', 'Male', '2001-11-05', '2026-07-23', 'Java', 22000.00, 'Jagatpura', 'Jaipur'),
('Meena', 'Saini', 'meena@gmail.com', '9876500027', 'Female', '2002-12-12', '2026-07-24', 'Web Development', 20000.00, 'Malviya Nagar', 'Jaipur'),
('Karan', 'Choudhary', 'karan@gmail.com', '9876500028', 'Male', '2000-01-24', '2026-07-25', 'PHP', 15000.00, 'Sanganer', 'Jaipur'),
('Nisha', 'Kaur', 'nisha@gmail.com', '9876500029', 'Female', '2003-02-18', '2026-07-26', 'MERN Stack', 25000.00, 'Civil Lines', 'Jaipur'),
('Varun', 'Gupta', 'varun@gmail.com', '9876500030', 'Male', '2001-03-07', '2026-07-27', 'Python', 18000.00, 'Pratap Nagar', 'Jaipur'),
('Payal', 'Verma', 'payal@gmail.com', '9876500031', 'Female', '2002-04-29', '2026-07-28', 'Java', 22000.00, 'Shastri Nagar', 'Jaipur'),
('Ajay', 'Meena', 'ajay@gmail.com', '9876500032', 'Male', '2000-05-13', '2026-07-29', 'Web Development', 20000.00, 'Jhotwara', 'Jaipur'),
('Swati', 'Sharma', 'swati@gmail.com', '9876500033', 'Female', '2003-06-24', '2026-07-30', 'PHP', 15000.00, 'Tonk Road', 'Jaipur');




# SQL Practice Set – Student Table

Table Name: `studentdetail`

Instructions: Write SQL queries for the following questions. Use the existing `studentdetail` table and its records. Do not create a new table.

## Section A: SELECT, WHERE & ORDER BY

1\. Fetch all columns of all students.

2\. Fetch only `student_id`, `first_name`, `address`, `city`, and `admission_date` of all students.

3\. Fetch all columns of students whose `city` is `'Jaipur'`.

4\. Fetch only `student_id`, `first_name`, `address`, `city`, and `admission_date` of students whose `course_name` is `'MERN Stack'`.

5\. Fetch all student records in ascending order of `first_name` and then in descending order of `first_name`.

6\. Fetch all columns of students whose `gender` is `'Male'` AND `city` is `'Jaipur'`.

7\. Fetch all columns of students whose `course_name` is `'Python'` OR `course_name` is `'Java'`.

8\. Fetch all columns of students whose `gender` is `'Female'` AND `fees` are greater than `18000`. Arrange the results by `fees` in ascending order.

9\. Fetch all columns of students whose `course_name` is `'MERN Stack'` OR `course_name` is `'Python'`. Arrange the results by `first_name` in descending order.

10\. Fetch all columns of students whose `fees` are greater than `20000`. Arrange the results by `fees` in descending order.

## Section B: Comparison Operators & Conditions

11\. Fetch all students whose fees are less than `20000`.

12\. Fetch all students whose fees are greater than or equal to `22000`.

13\. Fetch all students whose `admission_date` is after `'2026-07-15'`.

14\. Fetch all students whose `date_of_birth` is before `'2002-01-01'`.

15\. Fetch all students whose `gender` is not equal to `'Male'`.

16\. Fetch all students whose `course_name` is not equal to `'PHP'`.

17\. Fetch all students whose fees are between `18000` and `25000`.

18\. Fetch all students whose `student_id` is between `10` and `20`.

19\. Fetch all students whose `city` is `'Jaipur'` and whose fees are between `18000` and `25000`. Arrange the results by `fees` in descending order.

20\. Fetch all students whose `gender` is `'Male'` and whose `admission_date` is after `'2026-07-10'`. Arrange the results by `admission_date` in ascending order.

## Section C: IN, NOT IN, LIKE & NULL

21\. Fetch all students whose `course_name` is either `'MERN Stack'`, `'Python'`, or `'Java'` using the `IN` operator.

22\. Fetch all students whose `course_name` is not `'MERN Stack'`, `'Python'`, or `'Java'` using the `NOT IN` operator.

23\. Fetch all students whose `first_name` starts with the letter `'A'` using the `LIKE` operator.

24\. Fetch all students whose `first_name` ends with the letter `'a'` using the `LIKE` operator.

25\. Fetch all students whose `first_name` contains the letter `'i'` using the `LIKE` operator.

26\. Fetch all students whose `email` ends with `'gmail.com'` using the `LIKE` operator.

27\. Fetch all students whose `fees` are between `15000` and `22000` and whose `course_name` is `'Python'` or `'Java'`. Arrange the results by `fees` in ascending order.

28\. Fetch all students whose `address` contains `'Nagar'` and whose `gender` is `'Female'`.

29\. Fetch all students whose `last_name` starts with `'S'` OR whose `fees` are greater than `22000`. Arrange the results by `first_name` in ascending order.

30\. Fetch all students whose `city` is `'Jaipur'`, whose `course_name` is `'MERN Stack'`, and whose fees are greater than `20000`. Arrange the results by `fees` in descending order.

## Section D: DISTINCT, LIMIT & Aggregate Functions

31\. Fetch all unique course names from the `studentdetail` table using `DISTINCT`.

32\. Fetch all unique cities from the `studentdetail` table using `DISTINCT`.

33\. Display the total number of students using `COUNT()`.

34\. Display the maximum and minimum fees using `MAX()` and `MIN()`.

35\. Display the average fees of all students using `AVG()`.

36\. Display the total fees of all students using `SUM()`.

37\. Fetch the first five student records using `LIMIT`.

38\. Fetch the five students with the highest fees using `ORDER BY` and `LIMIT`.

39\. Count how many students are enrolled in each `course_name` using `GROUP BY`.

40\. Display only those courses in which more than three students are enrolled using `GROUP BY` and `HAVING`.

Note: Questions 1–30 cover the required SELECT operations, filtering conditions, logical operators, sorting, and pattern matching. Questions 31–40 provide additional practice with commonly used SQL functions.