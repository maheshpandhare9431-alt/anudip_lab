Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
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
| employee                |
| information_schema      |
| mahesh                  |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| sys                     |
+-------------------------+
10 rows in set (0.13 sec)

mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     employee_name VARCHAR(100),
    ->     salary int );

mysql> USE employee;
Database changed
mysql> CREATE TABLE employees (
    ->     employee_id INT PRIMARY KEY,
    ->     employee_name VARCHAR(100),
    ->     salary DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> INSERT INTO employees VALUES
    -> (1,'Amit',35000),
    -> (2,'Priya',42000),
    -> (3,'Rahul',38000),
    -> (4,'Sneha',45000),
    -> (5,'Vikram',50000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employees ;
+-------------+---------------+----------+
| employee_id | employee_name | salary   |
+-------------+---------------+----------+
|           1 | Amit          | 35000.00 |
|           2 | Priya         | 42000.00 |
|           3 | Rahul         | 38000.00 |
|           4 | Sneha         | 45000.00 |
|           5 | Vikram        | 50000.00 |
+-------------+---------------+----------+
5 rows in set (0.01 sec)

mysql> update employees set employee_name = charuta where employee_id = 2 ;
ERROR 1054 (42S22): Unknown column 'charuta' in 'field list'
mysql> update emploeyees set salary = 80000 where employee_id = 2 ;
ERROR 1146 (42S02): Table 'employee.emploeyees' doesn't exist
mysql> update employees set salary = 80000 where employee_id = 2 ;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> delete from employees where employee_id = 5 ;
Query OK, 1 row affected (0.13 sec)

mysql> alter table employees add email varchar(50) ;
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employees ;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| employee_id   | int           | NO   | PRI | NULL    |       |
| employee_name | varchar(100)  | YES  |     | NULL    |       |
| salary        | decimal(10,2) | YES  |     | NULL    |       |
| email         | varchar(50)   | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> alter table employees drop column email ;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table employees modify employee_name varchar(250);
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table employees rename to employees ;
Query OK, 0 rows affected (0.01 sec)

mysql> alter table employees rename add constrint primary key (employee_id );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'add constrint primary key (employee_id )' at line 1
mysql> ALTER TABLE employees
    -> ADD PRIMARY KEY (employee_id);
ERROR 1068 (42000): Multiple primary key defined
mysql> ALTER TABLE employees
    -> DROP PRIMARY KEY;
Query OK, 4 rows affected (0.12 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE employees
    -> ADD PRIMARY KEY (employee_id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> drop table employees ;
Query OK, 0 rows affected (0.01 sec)

mysql> desc employees;
mysql>