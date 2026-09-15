set serveroutput on;

DECLARE
	N number;
	i number;
BEGIN
	N:= &n;

		FOR i IN 1..n LOOP
			DBMS_OUTPUT.PUT_LINE(i);
		END LOOP;
	  
END;
/                       