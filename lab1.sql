Create Database StudentManagementSystem
1.Create Table student
with attribute  StudentID (Primary Key)
Name
Age
Address
2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table




Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| best                    |
| customer                |
| e_commerce              |
| information_schema      |
| mahesh                  |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
9 rows in set (0.22 sec)

mysql> create database StudentManagementSystem ;
ERROR 1007 (HY000): Can't create database 'studentmanagementsystem'; database exists
mysql> DESC studentmanagementsystem ;
ERROR 1046 (3D000): No database selected
mysql> USE studentmanagementsystem ;
Database changed
mysql> SELECT DATABASE();
+-------------------------+
| DATABASE()              |
+-------------------------+
| studentmanagementsystem |
+-------------------------+
1 row in set (0.00 sec)

mysql> DESC studentmanagementsystem;

mysql> CREATE TABLE student (
    ->     StudentID VARCHAR(10) PRIMARY KEY,
    ->     Name VARCHAR(50) NOT NULL,
    ->     Age INT NOT NULL,
    ->     Address VARCHAR(100) NOT NULL
    -> );
Query OK, 0 rows affected (0.11 sec)

mysql> CREATE TABLE Feedback (
    ->     FeedbackID VARCHAR(10) PRIMARY KEY,
    ->     StudentID VARCHAR(10) NOT NULL,
    ->     Date DATE NOT NULL,
    ->     InstructorName VARCHAR(50) NOT NULL,
    ->     Feedback VARCHAR(200) NOT NULL,
    ->     FOREIGN KEY (StudentID) REFERENCES student(StudentID)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO student
    -> (StudentID, Name, Age, Address)
    -> VALUES
    -> ('S001', 'Mahesh Pandhare', 22, 'Mumbai'),
    -> ('S002', 'Rahul Sharma', 21, 'Pune'),
    -> ('S003', 'Priya Patil', 20, 'Nashik'),
    -> ('S004', 'Amit Verma', 23, 'Nagpur'),
    -> ('S004', 'Amit Verma', 23, 'Nagpur');

mysql> INSERT INTO student (StudentID, Name, Age, Address) values ('S001', 'Mahesh Pandhare', 22, 'Mumbai'), ('S002', 'kunal Pandhare', 24, 'Navi Mumbai'), ('S003', 'akshay Pandhare', 27, 'navi Mumbai'), ('S004', 'kiran Pandhare', 29, 'Mumbai'), ('S005', 'vishal Pandhare', 28, 'Mumbai');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> insert into Feedback ( FeedbackID,StudentID,Date,InstructorName,Feedback) values ('F001', 'S001', '2025-06-01', 'Dr. Kulkarni', 'Excellent Performance') , ('F002', 'S002', '2025-06-01', 'Dr. Kulkarni', 'Poor Performance'),('F003', 'S003', '2025-06-01', 'Dr. Kulkarni', 'Poor Performance') ,('F004', 'S004', '2025-06-01', 'Dr. Kulkarni', 'Excellent Performance'),('F005', 'S005', '2025-06-01', 'Dr. Kulkarni', 'Excellent Performance');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student ;
+-----------+-----------------+-----+-------------+
| StudentID | Name            | Age | Address     |
+-----------+-----------------+-----+-------------+
| S001      | Mahesh Pandhare |  22 | Mumbai      |
| S002      | kunal Pandhare  |  24 | Navi Mumbai |
| S003      | akshay Pandhare |  27 | navi Mumbai |
| S004      | kiran Pandhare  |  29 | Mumbai      |
| S005      | vishal Pandhare |  28 | Mumbai      |
+-----------+-----------------+-----+-------------+
5 rows in set (0.02 sec)

mysql> select * from Feedback ;
+------------+-----------+------------+----------------+-----------------------+
| FeedbackID | StudentID | Date       | InstructorName | Feedback              |
+------------+-----------+------------+----------------+-----------------------+
| F001       | S001      | 2025-06-01 | Dr. Kulkarni   | Excellent Performance |
| F002       | S002      | 2025-06-01 | Dr. Kulkarni   | Poor Performance      |
| F003       | S003      | 2025-06-01 | Dr. Kulkarni   | Poor Performance      |
| F004       | S004      | 2025-06-01 | Dr. Kulkarni   | Excellent Performance |
| F005       | S005      | 2025-06-01 | Dr. Kulkarni   | Excellent Performance |
+------------+-----------+------------+----------------+-----------------------+
5 rows in set (0.00 sec)