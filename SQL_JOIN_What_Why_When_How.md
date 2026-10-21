# JOIN in SQL — What, Why, When, and How

## 1. What is JOIN in SQL?

What: A `JOIN` is used to combine data from two or more tables based on a related column between them.

In a relational database, data is often stored in separate tables to avoid duplication. When we need related information from these tables together, we use `JOIN`.

### Example

Students Table

| student_id | name |
|---:|---|
| 1 | Rahul |
| 2 | Priya |
| 3 | Amit |

Courses Table

| course_id | student_id | course_name |
|---:|---:|---|
| 101 | 1 | Python |
| 102 | 2 | MERN |
| 103 | 4 | Java |

Suppose we want to display each student's name along with their course name. The name is stored in the `Students` table, while the course name is stored in the `Courses` table.

We can combine these tables using `JOIN`.

```sql
SELECT s.name, c.course_name
FROM Students AS s
INNER JOIN Courses AS c
ON s.student_id = c.student_id;
```

Output

| name | course_name |
|---|---|
| Rahul | Python |
| Priya | MERN |

Amit is not included because he does not have a matching course record. The course record for student ID 4 is also excluded because that student ID does not exist in the `Students` table.

## 2. Why do we use JOIN?

We use `JOIN` for the following reasons:

1. To combine related data: Get information from multiple tables in one result.
2. To avoid data duplication: Store student details and course details separately.
3. To generate reports: Display employee names with department names.
4. To retrieve complete information: Display order details with customer information.
5. To apply conditions across tables: Filter records using columns from different tables.

For example, an e-commerce database might have separate tables for customers, orders, products, and payments. `JOIN` helps us retrieve related information without storing everything in a single table.

## 3. When do we use JOIN?

Use `JOIN` whenever the information you need is stored across multiple related tables.

| Requirement | JOIN example |
|---|---|
| Student name with course name | Students + Courses |
| Employee name with department name | Employees + Departments |
| Customer name with order amount | Customers + Orders |
| Product name with order details | Products + OrderDetails |
| All employees, including those without departments | LEFT JOIN |
| All departments, including those without employees | RIGHT JOIN |
| Only matching records from both tables | INNER JOIN |
| All records from both tables, matching where possible | FULL OUTER JOIN |

## 4. How do we use JOIN?

The basic syntax is:

```sql
SELECT column_names
FROM table1
JOIN table2
ON table1.common_column = table2.common_column;
```

Understand each part:

- `SELECT` — specifies which columns you want to display.
- `FROM` — specifies the first table.
- `JOIN` — specifies the second table to combine.
- `ON` — defines the matching condition between the tables.

Important: `ON` does not necessarily require columns with identical names. It requires a condition that correctly relates records.

For example:

```sql
SELECT e.first_name, d.department_name
FROM Employees AS e
INNER JOIN Departments AS d
ON e.department_id = d.department_id;
```

Here, `e` and `d` are table aliases. They make the query shorter and easier to read.

## 5. Types of JOIN in SQL

### A. INNER JOIN

Returns only the rows that have matching values in both tables.

```sql
SELECT s.name, c.course_name
FROM Students AS s
INNER JOIN Courses AS c
ON s.student_id = c.student_id;
```

Use when: You want only students who have a matching course record.

### B. LEFT JOIN (LEFT OUTER JOIN)

Returns all rows from the left table and matching rows from the right table. If no match exists, the right-side columns contain `NULL`.

```sql
SELECT s.name, c.course_name
FROM Students AS s
LEFT JOIN Courses AS c
ON s.student_id = c.student_id;
```

Use when: You want every student, including students who are not enrolled in a course.

### C. RIGHT JOIN (RIGHT OUTER JOIN)

Returns all rows from the right table and matching rows from the left table. If no match exists, the left-side columns contain `NULL`.

```sql
SELECT s.name, c.course_name
FROM Students AS s
RIGHT JOIN Courses AS c
ON s.student_id = c.student_id;
```

Use when: You want every course record, including records that have no matching student.

### D. FULL OUTER JOIN

Returns all matching and non-matching rows from both tables. Missing values on either side are represented by `NULL`.

```sql
SELECT s.name, c.course_name
FROM Students AS s
FULL OUTER JOIN Courses AS c
ON s.student_id = c.student_id;
```

Use when: You want to see all students and all course records, whether they match or not.

Note: SQL Server supports `FULL OUTER JOIN`; MySQL does not support it directly.

### E. CROSS JOIN

Returns every possible combination of rows from both tables.

```sql
SELECT s.name, c.course_name
FROM Students AS s
CROSS JOIN Courses AS c;
```

If the first table has 3 rows and the second table has 4 rows, the result contains \(3 \times 4 = 12\) rows.

Use when: You need all combinations, such as every student paired with every available course.

### F. SELF JOIN

A table is joined with itself to compare related rows within the same table.

Suppose an `Employees` table contains `employee_id`, `employee_name`, and `manager_id`.

```sql
SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM Employees AS e
LEFT JOIN Employees AS m
ON e.manager_id = m.employee_id;
```

Use when: You need to display employees alongside their managers, who are also employees.

## 6. How does JOIN work logically?

Consider this query:

```sql
SELECT s.name, c.course_name
FROM Students AS s
INNER JOIN Courses AS c
ON s.student_id = c.student_id;
```

The logical process is:

1. SQL identifies the `Students` and `Courses` tables.
2. It evaluates the `ON` condition to find matching student IDs.
3. `INNER JOIN` keeps only matching row combinations.
4. `SELECT` returns the requested columns.

This describes the logical processing of the query, not necessarily the physical order in which the database engine executes operations. The optimizer can choose a different execution plan.

## 7. Quick revision

| JOIN type | What it returns |
|---|---|
| `INNER JOIN` | Matching rows from both tables |
| `LEFT JOIN` | All left rows and matching right rows |
| `RIGHT JOIN` | All right rows and matching left rows |
| `FULL OUTER JOIN` | All rows from both tables |
| `CROSS JOIN` | Every possible row combination |
| `SELF JOIN` | Related rows from the same table |

Remember: `JOIN` combines tables, `ON` defines the matching condition, and `SELECT` specifies the columns to display.
