Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database join ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'join' at line 1
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankaccount             |
| best                    |
| customer                |
| e_commerce              |
| employee                |
| information_schema      |
| mahesh                  |
| mysql                   |
| performance_schema      |
| studentmanagementsystem |
| students                |
| sys                     |
+-------------------------+
12 rows in set (0.54 sec)

mysql> create database joins;
Query OK, 1 row affected (0.07 sec)

mysql> use joins;
Database changed
mysql> create table department(
    -> department_id int not null primary key,
    -> department_name varchar(30) not null
    -> );
Query OK, 0 rows affected (0.16 sec)

mysql> insert into department values
    -> (1,'HR'),
    -> (2,'IT'),
    -> (3,'Finance'),
    -> (4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> create table employee (employeeId int primary key, employee_name varchar(30) not null, department_id int, foreign key (department_id) references department(department_id));
Query OK, 0 rows affected (0.09 sec)

mysql> insert into employee values (101,'Mahesh',1),(102,'Kunal',2),(103,'Viraj',3),(104,'Karan',4),(105,'Rahul',2);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from  department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.04 sec)

mysql> select * from  employee;
+------------+---------------+---------------+
| employeeId | employee_name | department_id |
+------------+---------------+---------------+
|        101 | Mahesh        |             1 |
|        102 | Kunal         |             2 |
|        103 | Viraj         |             3 |
|        104 | Karan         |             4 |
|        105 | Rahul         |             2 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department inner join employee on department.department_id = employee.department_id ;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             2 | IT              |        105 | Rahul         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.02 sec)

mysql> select department_name ,department^Crom department
mysql> select * from department right join employee on department.department_id = employee.department_id ;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
|             2 | IT              |        105 | Rahul         |             2 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department left join employee on department.department_id = employee.department_id ;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             2 | IT              |        105 | Rahul         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.01 sec)

mysql> select * from department left join employee on department.department_id = employee.department_id union  select * from department right join employee on department.department_id = employee.department_id;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             2 | IT              |        105 | Rahul         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.01 sec)

mysql> select * from department cross join employee on department.department_id = employee.department_id ;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             2 | IT              |        105 | Rahul         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department self  join employee on department.department_id = employee.department_id ;
ERROR 1054 (42S22): Unknown column 'department.department_id' in 'on clause'
mysql> select * from department  join employee on department.department_id = employee.department_id ;
+---------------+-----------------+------------+---------------+---------------+
| department_id | department_name | employeeId | employee_name | department_id |
+---------------+-----------------+------------+---------------+---------------+
|             1 | HR              |        101 | Mahesh        |             1 |
|             2 | IT              |        102 | Kunal         |             2 |
|             2 | IT              |        105 | Rahul         |             2 |
|             3 | Finance         |        103 | Viraj         |             3 |
|             4 | Marketing       |        104 | Karan         |             4 |
+---------------+-----------------+------------+---------------+---------------+
5 rows in set (0.00 sec)