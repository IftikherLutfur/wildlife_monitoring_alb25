 ## 1. What is Postgres?
Answer:Postgres, also known as PostgreSQL, is a relational database management system (RDBMS). It is used to manage and organize data using SQL, which stands for Structured Query Language.

## 2. Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Answer:A Primary Key is a unique identifier for each row in a table. It ensures that each record in the table can be uniquely identified.
A Foreign Key is a field in one table that refers to the Primary Key of another table. When two tables are connected or joined, the first table's Primary Key becomes the Foreign Key in the second table. Foreign Keys are essential for maintaining relationships between tables and ensuring referential integrity. In short, when a Primary Key from one table is used in another table, it becomes a Foreign Key.

## 3. Explain the purpose of the WHERE clause in a SELECT statement.
Answer:The SELECT statement is used to retrieve data from a table. The WHERE clause is used to filter the data based on specific conditions.For example, without WHERE, all records from the table will be displayed. With WHERE, only the records that meet the condition will be shown. This allows for conditional data selection or filtering.

## 4. How can you modify data using UPDATE statements?
Answer:The UPDATE statement is used to modify existing data in a table. It allows you to change values in one or more columns based on specific conditions.

Syntax: UPDATE students SET cgpa = 3.80 WHERE id = 1;

students is the name of the table.

SET cgpa = 3.80 indicates that the cgpa column should be updated to 3.80.

WHERE id = 1 specifies which row should be updated.

## 5. How can you calculate aggregate functions like COUNT(), SUM(), and AVG() in PostgreSQL
Answer:

COUNT() : SELECT COUNT(*) FROM cricketer; ---> Counts the number of rows that match a specified condition.

SUM(): SELECT SUM(runs) FROM cricketer; ---> Calculates the total (sum) of a numeric column.

AVG() : SELECT AVG() FROM cricketer; ---> Calculates the average value of a numeric column.
