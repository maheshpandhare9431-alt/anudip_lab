Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
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
10 rows in set (0.11 sec)

mysql> use  employee ;
Database changed
mysql> select * from  employee;
ERROR 1146 (42S02): Table 'employee.employee' doesn't exist
mysql> used  customer ;
mysql> use  customer ;
Database changed
mysql> desc  customer;
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
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.04 sec)

mysql> select * from  customer ;
+-------------+-----------------+--------+------------------+------------+---------+----------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code |
+-------------+-----------------+--------+------------------+------------+---------+----------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |
+-------------+-----------------+--------+------------------+------------+---------+----------+
5 rows in set (0.10 sec)

mysql> select * from ^C
mysql> select * from  customer order by city asc;
+-------------+-----------------+--------+------------------+------------+---------+----------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code |
+-------------+-----------------+--------+------------------+------------+---------+----------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |
+-------------+-----------------+--------+------------------+------------+---------+----------+
5 rows in set (0.01 sec)

mysql> select * from  customer order by city desc;
+-------------+-----------------+--------+------------------+------------+---------+----------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code |
+-------------+-----------------+--------+------------------+------------+---------+----------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |
+-------------+-----------------+--------+------------------+------------+---------+----------+
5 rows in set (0.00 sec)

mysql> select * from  customer order by customer_id  desc;
+-------------+-----------------+--------+------------------+------------+---------+----------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code |
+-------------+-----------------+--------+------------------+------------+---------+----------+
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |
+-------------+-----------------+--------+------------------+------------+---------+----------+
5 rows in set (0.01 sec)

mysql> select * from  customer order by customer_id  desc limit 2 ;
+-------------+----------------+--------+-----------------+------------+---------+----------+
| customer_id | name           | city   | email           | phone_no   | address | pin_code |
+-------------+----------------+--------+-----------------+------------+---------+----------+
| C005        | karan Pandhare | Mumbai | karan@gmail.com | 9876543210 | Khar    |   400052 |
| C004        | viraj          | Mumbai | viraj@gmail.com | 8876543210 | Khar    |   400052 |
+-------------+----------------+--------+-----------------+------------+---------+----------+
2 rows in set (0.00 sec)

mysql> select * from  customer order by customer_id  desc limit 2 offset 1 ;
+-------------+----------------+--------+-----------------+------------+---------+----------+
| customer_id | name           | city   | email           | phone_no   | address | pin_code |
+-------------+----------------+--------+-----------------+------------+---------+----------+
| C004        | viraj          | Mumbai | viraj@gmail.com | 8876543210 | Khar    |   400052 |
| C003        | kunal Pandhare | Mumbai | kunal@gmail.com | 9876543210 | Khar    |   400052 |
+-------------+----------------+--------+-----------------+------------+---------+----------+
2 rows in set (0.00 sec)


mysql> select distinct name from customer ;
+-----------------+
| name            |
+-----------------+
| Mahesh Pandhare |
| kunal Pandhare  |
| viraj           |
| karan Pandhare  |
+-----------------+
4 rows in set (0.01 sec)

mysql> alter table customer add column marks int(20);
Query OK, 0 rows affected, 1 warning (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 1

mysql> select * from customer ;
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code | marks |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |  NULL |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |  NULL |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |  NULL |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |  NULL |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |  NULL |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
5 rows in set (0.00 sec)

mysql> UPDATE customer
    -> SET marks = CASE customer_id
    ->     WHEN 'C001' THEN 20
    ->     WHEN 'C002' THEN 30
    ->     WHEN 'C003' THEN 40
    ->     WHEN 'C004' THEN 50
    ->     WHEN 'C005' THEN 60
    -> END;
Query OK, 5 rows affected (0.01 sec)
Rows matched: 5  Changed: 5  Warnings: 0

mysql> select * from customer ;
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


mysql> select * from customer where city = 'mumbai' and city = 'navi mumbai';
Empty set (0.01 sec)

mysql> select * from customer where city = 'mumbai' or city = 'navi mumbai';
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code | marks |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |    20 |
| C002        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    30 |
| C003        | kunal Pandhare  | Mumbai | kunal@gmail.com  | 9876543210 | Khar    |   400052 |    40 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |    50 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |    60 |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
5 rows in set (0.02 sec)

mysql> select * from customer where name in ('viraj');
Empty set (0.01 sec)

mysql> select * from customer ;
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

mysql> select * from customer where marks between 30 and 50;
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
| customer_id | name           | city   | email           | phone_no   | address | pin_code | marks |
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
| C002        | kunal Pandhare | Mumbai | kunal@gmail.com | 9876543210 | Khar    |   400052 |    30 |
| C003        | kunal Pandhare | Mumbai | kunal@gmail.com | 9876543210 | Khar    |   400052 |    40 |
| C004        | viraj          | Mumbai | viraj@gmail.com | 8876543210 | Khar    |   400052 |    50 |
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
3 rows in set (0.01 sec)

mysql> select * from customer where customer_id in ('C002' , 'C003');
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
| customer_id | name           | city   | email           | phone_no   | address | pin_code | marks |
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
| C002        | kunal Pandhare | Mumbai | kunal@gmail.com | 9876543210 | Khar    |   400052 |    30 |
| C003        | kunal Pandhare | Mumbai | kunal@gmail.com | 9876543210 | Khar    |   400052 |    40 |
+-------------+----------------+--------+-----------------+------------+---------+----------+-------+
2 rows in set (0.02 sec)

mysql> select * from customer where customer_id not in ('C002' , 'C003');
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| customer_id | name            | city   | email            | phone_no   | address | pin_code | marks |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
| C001        | Mahesh Pandhare | Mumbai | mahesh@gmail.com | 9876543210 | Khar    |   400052 |    20 |
| C004        | viraj           | Mumbai | viraj@gmail.com  | 8876543210 | Khar    |   400052 |    50 |
| C005        | karan Pandhare  | Mumbai | karan@gmail.com  | 9876543210 | Khar    |   400052 |    60 |
+-------------+-----------------+--------+------------------+------------+---------+----------+-------+
3 rows in set (0.00 sec)