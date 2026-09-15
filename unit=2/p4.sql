DECLARE
   CURSOR c_top_employees IS
      SELECT ename, sal
      FROM emp
      ORDER BY sal DESC;

   v_count NUMBER := 0;
BEGIN
   DBMS_OUTPUT.PUT_LINE('--- TOP 3 HIGHEST PAID EMPLOYEES ---');

   
   FOR emp IN c_top_employees LOOP
      v_count := v_count + 1;

      DBMS_OUTPUT.PUT_LINE(
         'Rank ' || v_count || ': ' ||
         emp.ename || ' - Salary: $' || TO_CHAR(emp.sal, '999,999.00')
      );

      EXIT WHEN v_count = 3;
   END LOOP;
END;
/