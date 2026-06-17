mysql>  create database storedprocedureEg;
Query OK, 1 row affected (0.03 sec)

mysql> use storedprocedureEg;
Database changed
mysql> create table employee(employeeID int not null, name varchar (50), department varchar(50) not null, salary int not null);
Query OK, 0 rows affected (0.11 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| employeeID | int         | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into employee values(1, 'Charuta Kamat', 'HR', 10000),(2, 'Arjun Singh', 'IT', 50000),(3, 'Shweta Bhosale', 'Marketing', 12000), (4, 'Ayush Jivale', 'Finance', 10000),(5, 'Mahesh Pandhare', 'IT', 7000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+-----------------+------------+--------+
| employeeID | name            | department | salary |
+------------+-----------------+------------+--------+
|          1 | Charuta Kamat   | HR         |  10000 |
|          2 | Arjun Singh     | IT         |  50000 |
|          3 | Shweta Bhosale  | Marketing  |  12000 |
|          4 | Ayush Jivale    | Finance    |  10000 |
|          5 | Mahesh Pandhare | IT         |   7000 |
+------------+-----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> delimiter //
mysql> create procedure getEmployeeRecords()
    -> begin
    -> select * from employee;
    -> end//
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeRecords();
+------------+-----------------+------------+--------+
| employeeID | name            | department | salary |
+------------+-----------------+------------+--------+
|          1 | Charuta Kamat   | HR         |  10000 |
|          2 | Arjun Singh     | IT         |  50000 |
|          3 | Shweta Bhosale  | Marketing  |  12000 |
|          4 | Ayush Jivale    | Finance    |  10000 |
|          5 | Mahesh Pandhare | IT         |   7000 |
+------------+-----------------+------------+--------+
5 rows in set (0.01 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> delimiter //
mysql> create procedure getEmployeeDepartment(in name varchar(10))
    -> begin
    -> select * from employee where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeDepartment ('HR');
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|          1 | Charuta Kamat | HR         |  10000 |
+------------+---------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeDepartment ('Finance');
+------------+--------------+------------+--------+
| employeeID | name         | department | salary |
+------------+--------------+------------+--------+
|          4 | Ayush Jivale | Finance    |  10000 |
+------------+--------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeDepartment ('Marketing');
+------------+----------------+------------+--------+
| employeeID | name           | department | salary |
+------------+----------------+------------+--------+
|          3 | Shweta Bhosale | Marketing  |  12000 |
+------------+----------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeCount(out total int)
    -> begin
    -> select count(*) into total
    -> from employee;
    -> end//
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeCount(@total);
Query OK, 1 row affected (0.02 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)

mysql> select * from employee;
+------------+-----------------+------------+--------+
| employeeID | name            | department | salary |
+------------+-----------------+------------+--------+
|          1 | Charuta Kamat   | HR         |  10000 |
|          2 | Arjun Singh     | IT         |  50000 |
|          3 | Shweta Bhosale  | Marketing  |  12000 |
|          4 | Ayush Jivale    | Finance    |  10000 |
|          5 | Mahesh Pandhare | IT         |   7000 |
+------------+-----------------+------------+--------+
5 rows in set (0.00 sec)

mysql> desc employee;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| employeeID | int         | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> delimiter //
mysql> create procedure addEmployee(in id int,in name varchar(50),in department varchar(50),in salary double)
    -> begin
    -> insert into employee values(id, name, department, salary);
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter ;
mysql> call addEmployee(106,'Rohan Singh','HR',50000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+------------+-----------------+------------+--------+
| employeeID | name            | department | salary |
+------------+-----------------+------------+--------+
|          1 | Charuta Kamat   | HR         |  10000 |
|          2 | Arjun Singh     | IT         |  50000 |
|          3 | Shweta Bhosale  | Marketing  |  12000 |
|          4 | Ayush Jivale    | Finance    |  10000 |
|          5 | Mahesh Pandhare | IT         |   7000 |
|        106 | Rohan Singh     | HR         |  50000 |
+------------+-----------------+------------+--------+
6 rows in set (0.00 sec)




