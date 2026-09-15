CREATE TABLE RESULT (
	rollno number primary key,
	name varchar2(50),
	sub1 number(3),
	sub2 number(3),
	sub3 number(3),
	sub4 number(3),
	sub5 number(3),
	total number(4),
	per number(5,2),
	grade char(1)
	);
insert into result
(rollno,name,sub1,sub2,sub3,sub4,sub5) values
(101,'rahul',85,78,90,88,76);

insert into result
(rollno,name,sub1,sub2,sub3,sub4,sub5) values
(102,'priya',95,92,89,94,90);