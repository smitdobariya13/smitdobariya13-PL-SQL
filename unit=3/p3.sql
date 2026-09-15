SET SERVEROUTPUT ON;

DECLARE
    v_ename   Emp.ENAME%TYPE;
    v_empno   Emp.EMPNO%TYPE;
    v_job     Emp.JOB%TYPE;
    v_sal     Emp.SAL%TYPE;
    v_deptno  Emp.DEPTNO%TYPE;

    e_not_found EXCEPTION;

BEGIN
    v_ename := '&Enter_Employee_Name';

    BEGIN
        SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
        INTO v_empno, v_ename, v_job, v_sal, v_deptno
        FROM Emp
        WHERE UPPER(ENAME) = UPPER(v_ename);

        DBMS_OUTPUT.PUT_LINE('Employee Found');
        DBMS_OUTPUT.PUT_LINE('-------------------------');
        DBMS_OUTPUT.PUT_LINE('Employee No : ' || v_empno);
        DBMS_OUTPUT.PUT_LINE('Name        : ' || v_ename);
        DBMS_OUTPUT.PUT_LINE('Job         : ' || v_job);
        DBMS_OUTPUT.PUT_LINE('Salary      : ' || v_sal);
        DBMS_OUTPUT.PUT_LINE('Department  : ' || v_deptno);

    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE e_not_found;
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('More than one employee found.');
    END;

EXCEPTION
    WHEN e_not_found THEN
        DBMS_OUTPUT.PUT_LINE(
            'Employee "' || v_ename || '" does not exist.'
        );
END;
/