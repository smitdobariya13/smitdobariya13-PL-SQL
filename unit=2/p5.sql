DECLARE
    v_total_gross NUMBER := 0;

   
    CURSOR emp_cur(p_deptno NUMBER) IS
        SELECT ename, sal
        FROM Em
        WHERE deptno = p_deptno;

BEGIN
   
    FOR dept_rec IN (SELECT DISTINCT deptno FROM Em ORDER BY deptno) LOOP

        DBMS_OUTPUT.PUT_LINE('Department No : ' || dept_rec.deptno);
        DBMS_OUTPUT.PUT_LINE('-------------------------------');

        v_total_gross := 0;

        
        FOR emp_rec IN emp_cur(dept_rec.deptno) LOOP

            DBMS_OUTPUT.PUT_LINE(
                'Employee Name : ' || emp_rec.ename ||
                '   Basic Salary : ' || emp_rec.sal
            );

            v_total_gross := v_total_gross + emp_rec.sal;

        END LOOP;

        DBMS_OUTPUT.PUT_LINE('Total Gross Salary : ' || v_total_gross);
        DBMS_OUTPUT.PUT_LINE('===============================');

    END LOOP;
END;
/