DECLARE
    v_num NUMBER;
BEGIN
    v_num := 'ABC';

    DBMS_OUTPUT.PUT_LINE('Number = ' || v_num);

EXCEPTION
    WHEN INVALID_NUMBER THEN
        DBMS_OUTPUT.PUT_LINE('INVALID NUMBER Exception: Invalid number format.');
END;
/