set serveroutput on;

DECLARE
	N number;
	i number;
BEGIN
	N:= &n;

	i:= 1;
	Loop
		EXIT WHEN i > n;
		DBMS_OUTPUT.PUT_LINE(i);
		i := i + 1;
		END LOOP;
END;
/