/*1. Table Creation (CREATE): Write the SQL statements to create a database named “employee” and the following tables based on the provided schema:
⦿ Departments
⦿ Location
⦿ Employees
*/

create Database Employee;
use Employee;
Create table Departments(department_id int primary key,department_name varchar(100));
create table location(location_id int primary key,location varchar(30));
create table Employees(employee_id int primary key,employee_name varchar(50),gender enum('M','F'),Age int,
hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));
insert into departments(department_id,department_name)
values(1,"data analyst"),
(2,"HR"),
(3,"IT"),
(4,"sale"),
(5,"Trainer");
insert into location(location_id,location)
values(111,"thrissur"),
(112,"kottayam"),
(113,"kollam"),
(114,"kannur"),
(115,"ernakulam");
insert into employees(employee_id,employee_name,gender,age,hire_date,designation,department_id,location_id,salary)
values(01,"Anisha",'F',24,'2025-11-29',"data analyst",1,111,50000),
(02,"Anit",'F',30,'2025-09-13',"HR",2,112,45000),
(03,"Siniya",'F',36,'2025-02-11',"IT",3,113,49000),
(04,"Sarath",'M',25,'2025-10-16',"sale",4,114,35000),
(05,"indrajith",'M',28,'2025-08-21',"Trainer",5,115,30000);

/*2. Table Alteration (ALTER): Consider the following scenarios and write the SQL statements to alter the structure of the tables accordingly:
⦿ Add a new column named "email" to the Employees table to store employee email addresses.
⦿ Modify the data type of the "designation" column in the Employees table to support a wider range of values.
⦿ Drop the “age” column from the Employees table.
⦿ Rename the “hire_date” column to “date_of_joining”.*/

alter table employees add column Email varchar(100);
alter table employees modify designation varchar(500);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

/*3. Table Renaming (RENAME): Rewrite the SQL statements to rename the following tables:
⦿ Rename the "Departments" table to "Departments_Info".
⦿ Rename the "Location" table to "Locations".*/

rename table departments to Departments_info;
alter table Location rename to locations;

/*4. Table Truncation (TRUNCATE): Write an SQL statement to truncate the Employees table.*/

truncate table employees;

/*5. Database & Table Dropping (DROP): Write the SQL statements to drop the Employees table and then the “employee” database.*/

drop table employees;
drop database employee;

/* Constraints :
1. Database Recreation:
⦿ Drop the 'employee' database if it exists and recreate it using the provided schema, ensuring that all tables are created with the appropriate constraints as instructed.*/

DROP DATABASE if exists employee;
create database employee;
use employee;

/*2. Departments Table:
⦿ Ensure that the "department_id" uniquely identifies each department.
⦿ Set up constraints on the "department_name" to avoid duplicate and null entries.*/

Create table Departments(department_id int primary key,department_name varchar(100)not null unique);

/*3. Location Table:
⦿ Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially.
⦿ Implement constraints to prevent the insertion of null and duplicate locations*/

create table location(location_id int auto_increment primary key,location varchar(30)not null unique);

/*4. Employees Table:
⦿ Guarantee that each employee has a distinct identifier.
⦿ Create a restriction to ensure that the employee's name is always provided.
⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'.
⦿ Enforce a condition to ensure that the employee's age is 18 or above.
⦿ Automatically assign the current date to the "hire_date" field if not specified.
⦿ Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.*/

create table Employees(employee_id int primary key,employee_name varchar(50)not null,gender enum('M','F'),Age int,check (age>=18),
hire_date date default(current_date),designation varchar(100),department_id int,foreign key(department_id)references departments(department_id),
location_id int,foreign key (location_id)references location(location_id),salary decimal(10,2));
select * from employees;