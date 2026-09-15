DECLARE
    V_DEPTNO EMP.DEPTNO%TYPE := &DEPTNO;

    CURSOR C_EMP IS
        SELECT *
        FROM EMP
        WHERE DEPTNO = V_DEPTNO;

    V_REC EMP%ROWTYPE;

    NO_DEPT_FOUND EXCEPTION;
    V_COUNT NUMBER := 0;

BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_REC;
        EXIT WHEN C_EMP%NOTFOUND;

        INSERT INTO EMP_BACKUP
        VALUES (
            V_REC.EMPNO,
            V_REC.ENAME,
            V_REC.JOB,
            V_REC.MGR,
            V_REC.HIREDATE,
            V_REC.SAL,
            V_REC.COMM,
            V_REC.DEPTNO
        );

        V_COUNT := V_COUNT + 1;
    END LOOP;

    CLOSE C_EMP;

    IF V_COUNT = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    DBMS_OUTPUT.PUT_LINE(V_COUNT || ' record(s) inserted into EMP_BACKUP.');

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No records found for the given Department Number.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/