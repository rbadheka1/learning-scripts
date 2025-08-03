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
A Foreign Key is a column or a set of columns in one table that refers to the Primary Key in another table. It establishes a relationship between the two tables and ensures referential integrity.

Key Features:
- Links two tables together.
- Ensures that the value in the foreign key column matches a value in the primary key column
- Can contain NULL values if the relationship is optional.
Example:
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(50),                                   
    Age INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);
-- This creates a "Departments" table with "DepartmentID" as the primary key.
-- It also creates an "Employees" table with a foreign key "DepartmentID" that references
-- the "DepartmentID" in the "Departments" table.               
-- This ensures that each employee belongs to a valid department.
-- This script is designed to be run in a Codespace environment using SQLite.
*/
/*
How to run this script in Codespaces:
1. Open the terminal.
2. Run: sqlite3 test.db < sql/script01.sql
   - This will create the database (if it doesn't exist), create the table, insert sample data, and show all employees.
3. To exit the sqlite3 console, type: .exit or .quit

Codespaces Terminal Management Instructions:
- List all your Codespaces: gh codespace list
- Stop a Codespace: gh codespace stop <name>
- Resume a Codespace: gh codespace resume <name>
- Delete a Codespace: gh codespace delete <name>
  (Replace <name> with the Codespace name from the list.)
Tip: Always use 'gh codespace list' first to get the correct Codespace name before running stop, resume, or delete commands.
*/

-- Your SQL code starts here
CREATE TABLE IF NOT EXISTS Employees (
    EmployeeID INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Age INTEGER
);

INSERT INTO Employees (EmployeeID, Name, Age)
SELECT 1, 'Alice', 30
WHERE NOT EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = 1);

INSERT INTO Employees (EmployeeID, Name, Age)
SELECT 2, 'Bob', 25
WHERE NOT EXISTS (SELECT 1 FROM Employees WHERE EmployeeID = 2);

SELECT * FROM Employees;

-- Comments and explanations
/*
This script:
- Creates the Employees table if it does not exist.
- Inserts sample data only if those EmployeeIDs do not already exist.
- Queries all records from the Employees table.
*/

/*
How to use Jupyter Notebooks for SQL in Codespaces:

1. Install Jupyter and ipython-sql if not already available:
   pip install notebook ipython-sql

2. Start Jupyter Notebook in your Codespace terminal:
   jupyter notebook

3. Open the notebook in your browser:
   $BROWSER http://localhost:8888

4. In a notebook cell, load the SQL extension:
   %load_ext sql
   %sql sqlite:///test.db

5. Run SQL queries in notebook cells using:
   %%sql
   SELECT * FROM Employees;

This allows you to run SQL interactively, visualize results, and mix SQL with Python code in    Jupyter Notebooks.
*/

-- Example of using Jupyter Notebook with SQL
%%sql
SELECT * FROM Employees;        
-- This will display all records from the Employees table in the Jupyter Notebook.
-- End of SQL script
-- You can add more SQL queries below to continue working with the Employees table or any other tables
-- For example, to update an employee's age:
UPDATE Employees
SET Age = 31
WHERE EmployeeID = 1;       
-- This updates Alice's age to 31.  
-- To delete an employee:

DELETE FROM Employees
WHERE EmployeeID = 2;
-- This deletes Bob from the Employees table.       

-- To see the updated records after deletion:
SELECT * FROM Employees;
-- This will show the remaining records in the Employees table after the deletion.      

-- You can continue to add more SQL commands as needed.         
-- End of SQL script
-- This script is designed to be run in a Codespace environment using SQLite.
-- It creates a table, inserts sample data, and allows for basic SQL operations.
-- Make sure to run this script in a Codespace with SQLite installed.
-- You can also use this script as a starting point for more complex SQL operations.
-- End of SQL script
/*
This repository is designed for practicing SQL scripts in a GitHub Codespace running Ubuntu.
You can run SQL scripts directly in the terminal using SQLite or interactively in Jupyter Notebooks.
To execute a script, open the terminal and run: sqlite3 [test.db](http://_vscodecontentref_/0) < sql/script01.sql
For interactive SQL and data visualization, start Jupyter Notebook with jupyter notebook and open it using $BROWSER http://localhost:8888.
The SQL scripts include examples of table creation, data insertion, querying, updating, and deletion.
Codespaces management instructions are provided in the script comments for easy workspace control.





Example JUpyter Notebook SUFF:
$BROWSER http://codespaces-0816e5:8888/tree?token=5f6ae0e2e10e9ef784ec6cbca8b0cf5a2a6e7aed3ea1b111
```

or

```sh
$BROWSER http://127.0.0.1:8888/tree?token=5f6ae0e2e10e9ef784ec6cbca8b0cf5a2a6e7aed3ea1b111



*/