show databases;
use aditi;
show tables;

create Table Student_info (
	rollno int,
    name varchar(50),
    marks int,
    grade char,
    city varchar(50)
);

INSERT INTO Student_info  VALUES 
(101, 'anil', 78, 'C', 'pune'),
(102, 'bhoomika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'Dhruv', 96, 'A', 'Delhi'),
(105, 'rakesh', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi'),
(107, 'Sana', 75, 'C', 'Gwalior');

-- 1
select city from student_info;

-- 2
select distinct city from student_info;

-- 3
select * from student_info 
where marks>80;

-- 4 
select * from student_info
where city = 'Mumbai';

-- 5
select * from student_info
where city = 'Mumbai' and marks>80;

-- 6
select * from student_info
where city = 'Munbai' or marks>80;


-- others
select * from student_info
order by marks desc
limit 3;


-- Question 2
CREATE TABLE Employee (
    Id INT,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2),
    Gender VARCHAR(10),
    Age INT,
    City VARCHAR(50)
);

INSERT INTO Employee (Id, Name, Department, Salary, Gender, Age, City)
VALUES
(1001, 'John Doe', 'IT', 35000, 'Male', 25, 'London'),
(1002, 'Mary Smith', 'HR', 45000, 'Female', 27, 'London'),
(1003, 'James Brown', 'Finance', 50000, 'Male', 28, 'London'),
(1004, 'Mike Walker', 'Finance', 75000, 'Male', 28, 'London'),
(1005, 'Linda Jones', 'HR', 75000, 'Female', 26, 'London'),
(1006, 'Anurag Mohanty', 'IT', 35000, 'Male', 25, 'Mumbai'),
(1007, 'Priyanka Dewangan', 'HR', 45000, 'Female', 27, 'Mumbai'),
(1008, 'Sambit Mohanty', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1009, 'Pranaya Kumar', 'IT', 50000, 'Male', 28, 'Mumbai'),
(1010, 'Hina Sharma', 'HR', 75000, 'Female', 26, 'Mumbai');

-- 1
select id , name , salary + salary/10 as salary
from employee;

-- 2 (a)
select id,name , salary , salary *0.11/2.54 + 27.36 as bonus 
from employee;

-- 2 (b)
select id, name , salary , salary*0.11/(2.54 + 27.36) as bonus
from employee;


