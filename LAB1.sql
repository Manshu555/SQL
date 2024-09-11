create database classwork;
use classwork;


-- a
create table work1(
	RollNo int Primary key,
    Name Varchar(50),
    class Varchar(10),
    DOB date,
    Gender char,
    City varchar(50),
    Marks int not null default 0
);

INSERT INTO work1 (RollNo, Name, Class, DOB, Gender, City, Marks)
VALUES
(1, 'Nanda', 'X', '1995-06-06', 'M', 'Agra', 551),
(2, 'Saurabh', 'XII', '1993-05-07', 'M', 'Mumbai', 462),
(3, 'Sonal', 'XI', '1994-05-06', 'F', 'Delhi', 498),
(4, 'Store', 'XII', '1995-08-08', 'F', 'Mumbai', 450),
(5, 'Marsila', 'XI', '1994-12-12', 'F', 'Dubai', 258),
(6, 'Neha', 'XII', '1995-10-08', 'F', 'Delhi', 369),
(7, 'Nishant', 'X', '1995-06-12', 'M', 'Moscow', 489);


-- b
select Name
from work1
where marks<450;

-- c
select NAME
from work1
where marks between 500 and 600;

-- d
Select NAME
from work1
where city="Delhi" and marks<380;

-- e
select NAME
from work1
where city="Moscow" or city = "Dubai";

-- f
ALTER TABLE work1
rename column DOB to Date_of_Birth;

-- g
alter table work1
add column year int;

-- h
ALTER TABLE work1
drop column city;

select * from work1;