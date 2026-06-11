Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order





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
| sys                     |
+-------------------------+
11 rows in set (0.10 sec)

mysql> use customer;
Database changed
mysql> desc customer ;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| customer_id | varchar(10)  | NO   | PRI | NULL    |       |
| name        | varchar(100) | NO   |     | NULL    |       |
| city        | varchar(65)  | NO   |     | NULL    |       |
| email       | varchar(45)  | NO   |     | NULL    |       |
| phone_no    | varchar(15)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| pin_code    | int          | NO   |     | NULL    |       |
| marks       | int          | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.02 sec)

mysql> select * from customer;
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code | marks |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |    20 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    30 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    40 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |    50 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |    60 |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
5 rows in set (0.01 sec)

mysql> select * from customer order by asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asc' at line 1
mysql> select * from customer order by marks asc;
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code | marks |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |    20 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    30 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    40 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |    50 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |    60 |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
5 rows in set (0.00 sec)

mysql> select name,sum(marks) as total_amount from customer group by name ;
+-----------------+--------------+
| name            | total_amount |
+-----------------+--------------+
| Mahesh Pandhare |           20 |
| kunal Pandhare  |           70 |
| viraj           |           50 |
| karan Pandhare  |           60 |
+-----------------+--------------+
4 rows in set (0.01 sec)

mysql> select name,sum(marks) as total_amount from customer group by name having total_amount = 70 ;
+----------------+--------------+
| name           | total_amount |
+----------------+--------------+
| kunal Pandhare |           70 |
+----------------+--------------+
1 row in set (0.00 sec)

mysql> select customer_id , avg(marks) as avg_marks from customer group by customer_id  having avg_marks > 50 ;
+-------------+-----------+
| customer_id | avg_marks |
+-------------+-----------+
| C005        |   60.0000 |
+-------------+-----------+
1 row in set (0.00 sec)

mysql> select customer_id ,name,city,email,count(*) as count_customer from customer group by customer_id ,name,city,email  ;
+-------------+-----------------+--------+------------------+----------------+
| customer_id | name            | city   | email            | count_customer |
+-------------+-----------------+--------+------------------+----------------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com |              1 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  |              1 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  |              1 |
| C004        | viraj           | Mumbai | viraj@gmail.com  |              1 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  |              1 |
+-------------+-----------------+--------+------------------+----------------+
5 rows in set (0.00 sec)

mysql> select customer_id ,name,city,email,count(*) as count_customer from customer group by customer_id ,name,city,email  having count_customer >= 1 ;
+-------------+-----------------+--------+------------------+----------------+
| customer_id | name            | city   | email            | count_customer |
+-------------+-----------------+--------+------------------+----------------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com |              1 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  |              1 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  |              1 |
| C004        | viraj           | Mumbai | viraj@gmail.com  |              1 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  |              1 |
+-------------+-----------------+--------+------------------+----------------+
5 rows in set (0.01 sec)

mysql> select customer_id ,name,city,email,count(*) as count_customer from customer group by customer_id ,name,city,email  having count_customer > 1 ;
Empty set (0.00 sec)

mysql> select name , count(*) as count_customer from customer group by name where  count_customer >= 1 ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where  count_customer >= 1' at line 1
mysql> select name , count(*) as count_customer from customer group by name having   count_customer >= 1 ;
+-----------------+----------------+
| name            | count_customer |
+-----------------+----------------+
| Mahesh Pandhare |              1 |
| kunal Pandhare  |              2 |
| viraj           |              1 |
| karan Pandhare  |              1 |
+-----------------+----------------+
4 rows in set (0.00 sec)

mysql> select name , city as count_customer from customer group by name where  city = 'mumbai';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where  city = 'mumbai'' at line 1
mysql> select name , city  from customer group by name where  city = 'mumbai';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where  city = 'mumbai'' at line 1
mysql> create database students;
Query OK, 1 row affected (0.08 sec)

mysql> use students;
Database changed

mysql> create table student (stud_id int primary key, FirstName varchar(50), LastName varchar(50), Age int not null, PhoneNo varchar(10) not null, Address varchar(50));
Query OK, 0 rows affected (0.10 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| LastName  | varchar(50) | YES  |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| PhoneNo   | varchar(10) | NO   |     | NULL    |       |
| Address   | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.04 sec)

mysql> insert into student values (1,'Mahesh','Pandhare',22,'9876543210','Mumbai'),(2,'Kunal','Pandhare',24,'9876543211','Mumbai'),(3,'Viraj','Patil',23,'9876543212','Pune'),(4,'Karan','Sharma',21,'9876543213','Nashik'),(5,'Rahul','Singh',25,'9876543214','Thane');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | PhoneNo    | Address |
+---------+-----------+----------+-----+------------+---------+
|       1 | Mahesh    | Pandhare |  22 | 9876543210 | Mumbai  |
|       2 | Kunal     | Pandhare |  24 | 9876543211 | Mumbai  |
|       3 | Viraj     | Patil    |  23 | 9876543212 | Pune    |
|       4 | Karan     | Sharma   |  21 | 9876543213 | Nashik  |
|       5 | Rahul     | Singh    |  25 | 9876543214 | Thane   |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.00 sec)

mysql> select * from student order by LastName asc ;
+---------+-----------+----------+-----+------------+---------+
| stud_id | FirstName | LastName | Age | PhoneNo    | Address |
+---------+-----------+----------+-----+------------+---------+
|       1 | Mahesh    | Pandhare |  22 | 9876543210 | Mumbai  |
|       2 | Kunal     | Pandhare |  24 | 9876543211 | Mumbai  |
|       3 | Viraj     | Patil    |  23 | 9876543212 | Pune    |
|       4 | Karan     | Sharma   |  21 | 9876543213 | Nashik  |
|       5 | Rahul     | Singh    |  25 | 9876543214 | Thane   |
+---------+-----------+----------+-----+------------+---------+
5 rows in set (0.01 sec)