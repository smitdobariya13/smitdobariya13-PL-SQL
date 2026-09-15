BEGIN
    
    UPDATE EMP
    SET SAL = SAL * 1.10
    WHERE DEPTNO = 10;

  
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) salary updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found in Department 10.');
    END IF;

    COMMIT;
END;
/
