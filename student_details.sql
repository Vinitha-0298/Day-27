create database student;
use student;
show tables;
create table student_details(
      std_id int primary key,
      std_name varchar(50) not null,
      std_subject varchar(50),
      std_mark int 
);
desc student_details;
insert into student_details(std_id,std_name,std_subject,std_mark) values(1,'Venkadesh','maths',85),
							(2,'Pavithra','english',48),(3,'Nithiya','science',89),
							(4,'Surya','english',90),(5,'Arun','social',45),(6,'Rathika','maths',65);						
                                                                        
select * from student_details;

delimiter $$

create procedure stud_id(IN student_id int)
Begin
    select * from student_details where std_id = student_id;
End $$

delimiter ;

call stud_id(2);











