DECLARE
    v_empno       EMP.EMPNO%TYPE := &empno;
    v_commission  EMP.COMM%TYPE;

    NULL_COMMISSION EXCEPTION;

BEGIN
    SELECT COMM
    INTO v_commission
    FROM EMP
    WHERE EMPNO = v_empno;

    IF v_commission IS NULL THEN
        RAISE NULL_COMMISSION;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Employee No = ' || v_empno);
    DBMS_OUTPUT.PUT_LINE('Commission = ' || v_commission);

EXCEPTION
    WHEN NULL_COMMISSION THEN
        DBMS_OUTPUT.PUT_LINE('NULL_COMMISSION Exception: Commission is NULL.');

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found.');

END;
/