/*
Basic Level (Beginner)

1. What is SQL?
SQL (Structured Query Language) is a standard programming language used to interac with relational databases.  It is used to store, retrieve, update, and delete data.  SQL is also used to creatte and modify database strucures such as tables, views, and indexes.

Example: 

SELECT * FROM Employees;

This query retrieves all the records from the "Employees" table.

2. What is a Database?
A database is an organised collection of data that is sored and managed electronically.  It allows users tto efficienttly store, retrieve, update and manage data. Dattabases are used to handle large amounts of information in various applications such as websites, business systems, and applications.

Example:
A customer database in an e-commerce website may store custtomer details like name, email, contact number and purchase history.

3. What are they ypes of SQL Commands?
SQL commands are categorised into five types based on heir functionality:

1. DDL (Data Definition Language) - Defines the structure of the database.
   - Examples: CREATE, ALTER, DROP, TRUNCATE.
        - Create: Used to create database objects like tables, views, and indexes.
        - Alter: Used to modify existing database objects.
        - Drop: Used to delete database objects.
        - Truncate: Used to remove all records from a table without deleting the table itself.

2. DML (Data Manipulation Language) - Manages data stored in the database.
   - Examples: SELECT, INSERT, UPDATE, DELETE.
        - Select: Used to retrieve data from one or more tables.
        - Insert: Used to add new records to a table.
        - Update: Used to modify existing records in a table.
        - Delete: Used to remove records from a table.

3. DCL (Data Control Language) - Controls access to data in the database.
   - Examples: GRANT, REVOKE.
        - Grant: Used to give users access privileges to database objects.
        - Revoke: Used to remove access privileges from users.

4. TCL (Transaction Control Language) - Manages transactions in the database.
   - Examples: COMMIT, ROLLBACK, SAVEPOINT.
        - Commit: Used to save all changes made during the current transaction.
        - Rollback: Used to undo changes made during the current transaction.
        - Savepoint: Used to set a point within a transaction to which you can later roll back.

5. DQL (Data Query Language) - Retrieves data from the database.
   - Example: SELECT.
        - Select: Used to query and retrieve data from one or more tables.


4. What is a Primary Key?
A Primary Key is a column or a combination of columns in a table that uniquely identifies each row in that table.  It does not allow NULL values and must always contain unique values.

Key Features:
- Uniquely identtifies each record in a table.
- Cannot have duplicate values.
- Cannot contain NULL values.
- Only one primary key is allowed per table.
Example:
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
-- This creates a table "Employees" with "EmployeeID" as the primary key.
-- It ensures that each employee has a unique identifier.

Here EmployeeID is the primary key that uniquely identifies each employee in the Employees table.
-- It ensures that no two employees can have the same EmployeeID and that it cannot be NULL.

5. What is a Foreign Key?
A Foreign Key is a column or a set of columns in one table that refers to the Primary Key in another table. It establishes a relationship between the two tables and ensures ref

*/

-- How to run this script in Codespaces:
-- Open the terminal and run:
--   sqlite3 test.db < sql/script01.sql
-- This will create the database (if it doesn't exist), create the table, insert sample data, and show all employees.
-- .exit or .quit to exit sqlite3
   
/*
Codespaces Terminal Management Instructions:

To manage your Codespaces from the terminal in Ubuntu, use the following commands:

1. List all your Codespaces:
   gh codespace list

2. Stop a Codespace (shuts it down but preserves your files and environment):
   gh codespace stop <name>
   Replace <name> with the Codespace name from the list.

3. Resume (re-open) a Codespace:
   gh codespace resume <name>
   Replace <name> with the Codespace name from the list.

4. Delete a Codespace (permanently removes the Codespace and all its data):
   gh codespace delete <name>
   Replace <name> with the Codespace name from the list.

Tip: Always use 'gh codespace list' first to get the correct Codespace name before running stop, resume, or delete commands.
*/

-- Create Employees table only if it does not exist
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Age INTEGER
);

-- Insert sample data only if the table is empty
INSERT INTO Employees (EmployeeID, Name, Age)
SELECT 1, 'Alice', 30
WHERE NOT EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = 1);

INSERT INTO Employees (EmployeeID, Name, Age)
SELECT 2, 'Bob', 25
WHERE NOT EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = 2);

-- Query all employees
SELECT * FROM Employees;

-- Comments and explanations
/*
This script:
- Creates the Employees table if it does not exist.
- Inserts sample data only if those EmployeeIDs do not already exist.
- Queries all records from the Employees table.
*/