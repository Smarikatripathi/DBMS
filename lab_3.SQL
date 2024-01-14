create database Priya;
use Priya;
create table faculty (
	f_id int,
	faculty_name text,
	primary key (f_id)
    );
insert into faculty (f_id,faculty_name) values(1,' BoCE');
insert into faculty (f_id,faculty_name) values(2,' BSE');
insert into faculty (f_id,faculty_name) values(3,' BCE');
insert into faculty (f_id,faculty_name) values(4,' BEE');
insert into faculty (f_id,faculty_name) values(5,' SOH');


create table student(s_id int primary key Not NUll,
                    Name varchar(20) Not NULL,
                    f_id int Not Null,
                    contact bigint NOT NULL,
                    foreign key(f_id) references faculty
                    );
insert into student (s_id,Name,f_id,contact) Values(12,'Smarika Tripathi',1,'9745287432');
insert into student (s_id,Name,f_id,contact) Values(13,'Ayusha hamal',2,'9876543211');
insert into student (s_id,Name,f_id,contact) Values(14,'Soniya Sharma',3,'780348533');
insert into student (s_id,Name,f_id,contact) Values(15,'Smriti Pokhrel',4,'1234567890');
insert into student (s_id,Name,f_id,contact) Values(16,'Ajita Karki',5,'0987654321');



create table book(B_id int primary key NOt NULL,
                  B_name varchar (20)NOt NULL,
                  A_name varchar (20)NOt NULL,
                  f_id int NOt NULL,
                  foreign key(f_id) references faculty,
                  );
insert into book (B_id,B_name,A_name,f_id) Values(30,'DBMS','ram',1);
insert into book (B_id,B_name,A_name,f_id) Values(31,'Graphics','shyam',2);
insert into book (B_id,B_name,A_name,f_id) Values(32,'MICRO','sataya',3);
insert into book (B_id,B_name,A_name,f_id) Values(33,'Math','prem',5);
insert into book (B_id,B_name,A_name,f_id) Values(34,'OS','bhesh',4);
                 
                 
 create table issue( T_id int Primary Key NOt NULL,
                       s_id int NOt NULL,
                       B_id int NOt NULL,
                       foreign key(s_id) references student,
                       foreign key(B_id) references book,
                       );
insert into issue (T_id,s_id,B_id) Values(40,12,30); 
insert into issue (T_id,s_id,B_id) Values(41,13,31);
insert into issue (T_id,s_id,B_id) Values(42,15,32);
insert into issue (T_id,s_id,B_id) Values(43,13,33);   
insert into issue (T_id,s_id,B_id) Values(44,14,34);                       
                       
select * from faculty;
select * from student;
select * from book;
select * from issue;

select student.s_id, student.Name,student.f_id, book.B_name from student join faculty on student.f_id = faculty.f_id
join issue on student.s_id=issue.s_id join book on issue.B_id = book.B_id where B_name = 'OS'; 

select *from faculty;

Create trigger faculty_activity
on faculty
after insert
as
begin
Declare @id int
select @id=f_id from inserted 
insert into tbl_faculty_activity(faculty_activity) values ('faculty with id ' + CAST 
(@id as varchar (30))+' is inserted at '+CAST(GETDATE()as varchar(50)))
end;

select * from tbl_faculty_activity; 
