DECLARE

	l_code NUMBER;
	r_customer customer%rowtype;

BEGIN

	SELECT * INTO R_customer FROM customer;

EXCEPTION

	WHEN OTHERS THEN
		l_code := SQLERRM;
		DBMS_OUTPUT.PUT_LINE('Error code:'||l_code);

END;
/