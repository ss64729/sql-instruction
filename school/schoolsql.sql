select * from student;
select * from course;
Select * from student where middleinitial is null;
select count(*) from student where state = 'OH';

select count(*) total, state from student group by 2 order by 1 desc;

select * from student order by  birthday ;

select firstname, lastname, birthday from student order by birthday desc;
select firstname, lastname, birthday from student where birthday = (select
 max(birthday)from student);

select firstname, lastname, birthday from student ;

select birthday, year(birthday) , curdate(), year(curdate()),
 year(curdate()) - year(birthday), (curdate()- birthday )
 from student;


select * from student order by birthday desc;
select * from student order by birthday desc limit 1;
select count(*) from course where name like "ss%";
select count(*) from course where subject = 'math';

select firstname, lastname, subject, grade from student a,
enrolled b, course c where a.id = b.studentid and b.courseid = c.id;

select firstname, lastname, subject, grade from student a
join enrolled b on b.studentid = a.id
join course c on b.courseid = c.id;

select firstname, lastname, courseid, name,grade from student s 
left join enrolled e on e.studentid = s.id
join course c on e.courseid = c.id;

select firstname, lastname, courseid,grade from student s 
left join enrolled e on e.studentid = s.id;
