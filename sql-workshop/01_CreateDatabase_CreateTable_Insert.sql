-- drop database studentdemo;

create database studentdemo;

use studentdemo;

create table Student 
(
	StudentID	char(4),
    StudentName	varchar(30),
    grade	char(1),
    age	int,
    course	varchar(50),
    primary key (StudentID)
);

select * from Student

