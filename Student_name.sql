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

create procedure stud_name(IN student_id int,OUT student_name varchar(50))
Begin
    Select std_name INTO student_name 
    From student_details Where std_id = student_id;
End $$

delimiter ;

Call stud_name(1,@name);
Select @name;