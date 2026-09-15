DECLARE
    CURSOR C_EMP IS
        SELECT *
        FROM EMP
        WHERE JOB LIKE '%MAN%';

BEGIN
    FOR EMP_REC IN C_EMP LOOP
        DBMS_OUTPUT.PUT_LINE(
            EMP_REC.EMPNO || '  ' ||
            EMP_REC.ENAME || '  ' ||
            EMP_REC.JOB || '  ' ||
            EMP_REC.SAL
        );
    END LOOP;
END;
/