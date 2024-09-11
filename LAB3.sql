use aditi;

select * from student;

CREATE TABLE student (
    rollno INT,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);

INSERT INTO student (rollno, name, marks, grade, city) VALUES
(101, 'anil', 78, 'C', 'pune'),
(102, 'bhoomika', 93, 'A', 'Mumbai'),
(103, 'chetan', 85, 'B', 'Mumbai'),
(104, 'Dhruv', 96, 'A', 'Delhi'),
(105, 'rakesh', 12, 'F', 'Delhi'),
(106, 'farah', 82, 'B', 'Delhi'),
(107, 'Sana', 75, 'C', 'Gwalior');

-- 1
select name as name_of_student , 
marks from student
order by marks desc 
limit 3;

-- 2
select name as name_of_student , 
marks from student
order by marks 
limit 3;