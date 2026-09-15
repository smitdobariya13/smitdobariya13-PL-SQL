DECLARE
    CURSOR C_CUST IS
        SELECT * FROM CUSTOMER;

    V_CUST CUSTOMER%ROWTYPE;

BEGIN
    OPEN C_CUST;

    LOOP
        FETCH C_CUST INTO V_CUST;
        EXIT WHEN C_CUST%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Customer ID : ' || V_CUST.CUST_ID ||
            '  Name : ' || V_CUST.CUST_NAME ||
            '  City : ' || V_CUST.CITY ||
            '  Phone : ' || V_CUST.PHONE ||
            '  Balance : ' || V_CUST.BALANCE
        );
    END LOOP;

    CLOSE C_CUST;
END;
/