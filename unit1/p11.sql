set serveroutput on;

DECLARE
	N number;
	i number;
BEGIN
	N := &n;
	i:= 1;
	WHILE i <= n LOOP
			DBMS_OUTPUT.PUT_LINE(i);
			i := i + 1;
		END LOOP;
	  
END;
/    