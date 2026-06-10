Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 



mysql> create database  BankAccount;
Query OK, 1 row affected (0.14 sec)

mysql> create table BankAccount ( account_id varchar(50) primary key , account_holder_name varchar(50) ,account_balance int );
Query OK, 0 rows affected (0.15 sec)

mysql> desc  BankAccount
    -> desc  BankAccount;
mysql> use BankAccount;
Database changed
mysql> desc BankAccount;
ERROR 1146 (42S02): Table 'bankaccount.bankaccount' doesn't exist
mysql> desc BankAccount ;
ERROR 1146 (42S02): Table 'bankaccount.bankaccount' doesn't exist
mysql> desc BankAccount ;
ERROR 1146 (42S02): Table 'bankaccount.bankaccount' doesn't exist
mysql> show tables;
Empty set (0.09 sec)

mysql> insert into BankAccount values
    -> ('A001','Mahesh Pandhare',50000),
    -> ('A002','Kunal Pandhare',45000),
    -> ('A003','Viraj',30000),
    -> ('A004','Karan Pandhare',60000),
    -> ('A005','Rahul',55000);
mysql> use BankAccount;
Database changed
mysql> create table BankAccount (
    ->     account_id varchar(50) primary key,
    ->     account_holder_name varchar(50),
    ->     account_balance int
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> show tables;
+-----------------------+
| Tables_in_bankaccount |
+-----------------------+
| bankaccount           |
+-----------------------+
1 row in set (0.01 sec)

mysql> insert into BankAccount values
    -> ('A001','Mahesh Pandhare',50000),('A002','viraj Pandhare',10000),('A003','akshay Pandhare',150000),('A004','komal Pandhare',520000),('A005','ganesh Pandhare',550000);
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from BankAccount ;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A001       | Mahesh Pandhare     |           50000 |
| A002       | viraj Pandhare      |           10000 |
| A003       | akshay Pandhare     |          150000 |
| A004       | komal Pandhare      |          520000 |
| A005       | ganesh Pandhare     |          550000 |
+------------+---------------------+-----------------+
5 rows in set (0.01 sec)

mysql> select account_holder_name,account_balance from BankAccount where  account_balance >30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Mahesh Pandhare     |           50000 |
| akshay Pandhare     |          150000 |
| komal Pandhare      |          520000 |
| ganesh Pandhare     |          550000 |
+---------------------+-----------------+
4 rows in set (0.01 sec)

mysql> update BankAccount set account_balance = 150000 where account_id = A001 ;
mysql> update BankAccount set account_balance = 150000 where  account_id = 'A001' ;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| A001       | Mahesh Pandhare     |          150000 |
| A002       | viraj Pandhare      |           10000 |
| A003       | akshay Pandhare     |          150000 |
| A004       | komal Pandhare      |          520000 |
| A005       | ganesh Pandhare     |          550000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql>