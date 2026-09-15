

SET SERVEROUTPUT ON;

DECLARE
    v_count NUMBER := 0;
BEGIN
    FOR emp_rec IN (
        SELECT ENAME, SAL
        FROM E
        WHERE AGE = 50
    )
    LOOP
        v_count := v_count + 1;

        DBMS_OUTPUT.PUT_LINE(
            'Employee Name : ' || emp_rec.ENAME
        );

        DBMS_OUTPUT.PUT_LINE(
            'Salary        : ' || emp_rec.SAL
        );

        DBMS_OUTPUT.PUT_LINE('-------------------------');
    END LOOP;

    IF v_count = 0 THEN
        DBMS_OUTPUT.PUT_LINE(
            'No employee found whose age is 50 years.'
        );
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(
            'An error occurred: ' || SQLERRM
        );
END;
/
