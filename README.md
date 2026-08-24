# sql_assignments

# MySQL Assignment 1 – DDL Commands & Constraints

## 📌 Project Overview

This project is a SQL assignment focused on **Database and Table Management, Constraints, and Data Definition Language (DDL)** using MySQL.

The project creates an **Employee Database** containing information about employees, departments, and locations.

## 🗂️ Database Structure

The database contains the following tables:

* **Departments** – Stores department details.
* **Location** – Stores location details.
* **Employees** – Stores employee information and connects employees with their departments and locations.

## 🛠️ SQL Concepts Covered

### 1. Database & Table Creation

* `CREATE DATABASE`
* `CREATE TABLE`
* `USE`

### 2. Data Insertion

* `INSERT INTO`
* Adding department, location, and employee records.

### 3. Table Alteration

* `ALTER TABLE`
* Adding a new column
* Modifying column data types
* Dropping a column
* Renaming a column

### 4. Table Renaming

* `RENAME TABLE`
* `ALTER TABLE ... RENAME`

### 5. Table Truncation

* `TRUNCATE TABLE`

### 6. Database & Table Deletion

* `DROP TABLE`
* `DROP DATABASE`

### 7. SQL Constraints

The assignment demonstrates several important constraints:

* `PRIMARY KEY`
* `NOT NULL`
* `UNIQUE`
* `CHECK`
* `DEFAULT`
* `FOREIGN KEY`
* `ENUM`
* `AUTO_INCREMENT`

## 🔗 Relationships

The `Employees` table is connected to:

* `Departments` through `department_id`
* `Location` through `location_id`

This establishes relationships between employees, their departments, and their locations.

## 💻 Technologies Used

* **MySQL**
* **SQL**
* **MySQL Workbench** (for executing queries)

## 🎯 Learning Outcomes

Through this assignment, I practiced:

* Creating and managing databases
* Creating and modifying tables
* Inserting records
* Applying SQL constraints
* Establishing relationships using foreign keys
* Renaming and modifying database objects
* Using `TRUNCATE` and `DROP`
* Designing a structured relational database

Aspiring Data Analyst | SQL | Excel | Power BI



# MySQL Assignment 2 – Querying Data

## 📌 Project Overview

This project is an SQL assignment based on an **Employee Database**. It focuses on retrieving, filtering, sorting, grouping, aggregating, updating, and joining data using MySQL.

The assignment uses employee, department, and location data to practice important SQL concepts commonly used in Data Analytics.

## 🗂️ Database Tables

The database contains three main tables:

* **Employees** – Employee details such as name, gender, age, hire date, designation, department, location, and salary.
* **Departments** – Department IDs and department names.
* **Location** – Location IDs and location names.

## 🛠️ SQL Concepts Covered

### 1. Distinct Values

* Retrieve unique salary values using `DISTINCT`.

### 2. Aliases

* Rename columns using `AS`.

### 3. WHERE Clause & Operators

* Filter employees based on salary and hire date.
* Identify missing designations using `IS NULL`.
* Update missing designation values.

### 4. Sorting

* Sort employees using `ORDER BY`.
* Apply ascending and descending sorting.

### 5. LIMIT

* Retrieve the first 5 employees hired during 2018.

### 6. Aggregate Functions

The assignment uses:

* `SUM()` – Calculate total salary.
* `MIN()` – Find the minimum employee age.
* `MAX()` – Find maximum salary.
* `AVG()` – Calculate average salary and age.
* `COUNT()` – Count employees.

### 7. GROUP BY

* Find maximum salary by location.
* Calculate average salary for designations containing **"Analyst"**.

### 8. HAVING

* Find departments with fewer than 3 employees.
* Find locations where female employees have an average age below 30.

### 9. SQL Joins

#### INNER JOIN

Combines employees with their corresponding departments.

#### LEFT JOIN

Lists all departments and the number of employees in each department, including departments with no employees.

#### RIGHT JOIN

Lists all locations and the employees assigned to each location, including locations without employees.

## 📊 Key SQL Features Used

```text
SELECT
DISTINCT
AS
WHERE
AND
IS NULL
UPDATE
ORDER BY
LIMIT
SUM()
MIN()
MAX()
AVG()
COUNT()
GROUP BY
HAVING
LIKE
INNER JOIN
LEFT JOIN
RIGHT JOIN
```

## 🎯 Learning Outcomes

Through this assignment, I practiced:

* Writing SQL queries for data retrieval
* Filtering and sorting data
* Working with aggregate functions
* Grouping data and filtering grouped results
* Updating records using conditions
* Using pattern matching with `LIKE`
* Understanding different types of SQL joins
* Analyzing employee, department, salary, and location data

## 👩‍💻 Author

**Anisha KU**

Aspiring Data Analyst
**Skills:** SQL | Excel | Power BI


