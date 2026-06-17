Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.36 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| bankaccount               |
| best                      |
| customer                  |
| e_commerce                |
| employee                  |
| information_schema        |
| joins                     |
| mahesh                    |
| mysql                     |
| performance_schema        |
| student_management_system |
| studentmanagementsystem   |
| students                  |
| sys                       |
+---------------------------+
14 rows in set (0.00 sec)

mysql> use student_management_system
Database changed
mysql> show tables;
+-------------------------------------+
| Tables_in_student_management_system |
+-------------------------------------+
| student                             |
+-------------------------------------+
1 row in set (0.01 sec)

mysql> alter table student add primary key(StudentId);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentId | varchar(50) | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | YES  |     | NULL    |       |
| lastName  | varchar(50) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> create table Course (CourseId int ,CourseName varchar(50) ,EnrollmentID varchar(50) , foreign key (Enrollment) references Student (StudentId));

mysql> create table Course (CourseId int ,CourseName varchar(50) ,EnrollmentID varchar(50) , foreign key (EnrollmentID) references Student (StudentId));

Query OK, 0 rows affected (0.06 sec)

mysql> select * from Course;
Empty set (0.00 sec)

mysql> insert into Course values (101,Data Science ,'s101'),(102,Data analyst,'s102'),(103, java full stack  ,'s103'),(104,PHP developer ,'s104');

mysql> insert into Course values (101,'Data Science' ,'s101'),(102,'Data analyst','s102'),(103, 'java full stack'  ,'s103'),(104,'PHP developer' ,'s104');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> # inner join perform
mysql> select Student.StudentId, Student.FirstName, Student.LastName, Course.CourseName from Student inner join Course on Student.StudentId = Course.EnrollmentID;
+-----------+-----------+----------+-----------------+
| StudentId | FirstName | LastName | CourseName      |
+-----------+-----------+----------+-----------------+
| s101      | Mahesh    | Pandhare | Data Science    |
| s102      | Charuta   | kamat    | Data analyst    |
| s103      | Ayush     | javale   | java full stack |
| s104      | Shweta    | Bhosale  | PHP developer   |
+-----------+-----------+----------+-----------------+
4 rows in set (0.00 sec)
