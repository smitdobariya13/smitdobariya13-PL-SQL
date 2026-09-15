DECLARE
	total_rows number(2):=0;
	CURSOR emp1 IS SELECT basicsal FROM emp WHERE deptno=20 for update of basicsal;

basicsal emp.basicsal%type;

BEGIN
OPEN empl;
if empl1%SOPEN THEN
	dbms_output.put_line('cursor is not open');
end if;
LOOP
	fetch empl into basicsal:
	EXIT When empl1%NOTFOUND;
	UPDATE emp SET basicsal = basicsal+(basicsal*5/100)
		where CURRENT OF empl;
	IF sql%not found THEN
		dbms_output.put_line('no emp selected');
	ELSEIF sql%fount THEN
		total_rows