DECLARE
    CURSOR C_EMP IS
        SELECT *
        FROM EMP
        ORDER BY SAL DESC;

    V_EMP EMP%ROWTYPE;

BEGIN
    OPEN C_EMP;

    LOOP
        FETCH C_EMP INTO V_EMP;
        EXIT WHEN C_EMP%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'EMPNO : ' || V_EMP.EMPNO ||
            '  ENAME : ' || V_EMP.ENAME ||
            '  JOB : ' || V_EMP.JOB ||
            '  SAL : ' || V_EMP.SAL ||
            '  DEPTNO : ' || V_EMP.DEPTNO
        );
    END LOOP;

    CLOSE C_EMP;
END;
/