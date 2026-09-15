SET SERVEROUTPUT ON;

DECLARE
	var_eid EMP.EID%TYPE;
BEGIN

	var_eid :=&EID;

	DELETE FROM EMP
	WHERE EID = var_eid;

	IF SQL%ROWCOUNT > 0 THEN
		DBMS_OUTPUT.PUT_LINE('Employee record with ID ' || var_eld || ' deleted succesfully.')
		COMMIT;
ELSE
	DBMS_OUTPUT.PUT_LINE('No employee found with ID ' || var_eid || '.');
END IF;
/

	