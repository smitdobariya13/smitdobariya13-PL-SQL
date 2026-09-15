SET SERVEROUTPUT ON;

DECLARE
BEGIN
    UPDATE emp
    SET sal = sal + (sal * 0.05)
    WHERE deptno = 20;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employees found in Department 20.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) salary updated.');

        INSERT INTO emp_update(empno, old_sal, new_sal, update_date)
        SELECT empno,
               sal/1.05 AS old_sal,
               sal AS new_sal,
               SYSDATE
        FROM emp
        WHERE deptno = 20;
    END IF;

    COMMIT;
END;
/


CREATE TABLE EMP_UPDATE (
	EMPNO NUMBER,
	UPDATE_DATE DATE
);