DECLARE
	p number(10):=10000;
	r number(5):=5;
	n number(5):=2;
	si number(20):=p*r*n/100;
BEGIN
   dbms_output.put_line(si);
END;
/