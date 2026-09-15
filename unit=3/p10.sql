DECLARE
    v_num NUMBER;
BEGIN

    v_num := TO_NUMBER('ABC');

    DBMS_OUTPUT.PUT_LINE('Number = ' || v_num);

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE = ' || SQLCODE);
        DBMS_OUTPUT.PUT_LINE('SQLERRM = ' || SQLERRM);
END;
/