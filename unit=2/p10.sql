DECLARE
    V_DEPTNO EMP.DEPTNO%TYPE := 20;
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * 0.10)
    WHERE DEPTNO = V_DEPTNO;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' record(s) updated.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No records found.');
    END IF;
END;
/