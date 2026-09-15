DECLARE
    s_name RESULT.sname%TYPE;
    s_rollno RESULT.rollno%TYPE;
    s_marks RESULT.marks%TYPE;

BEGIN
    s_name := '&Enter_Student_Name';

    SELECT rollno, marks
    INTO s_rollno, s_marks
    FROM RESULT
    WHERE sname = s_name;

    DBMS_OUTPUT.PUT_LINE('Roll No : ' || s_rollno);
    DBMS_OUTPUT.PUT_LINE('Name    : ' || s_name);
    DBMS_OUTPUT.PUT_LINE('Marks   : ' || s_marks);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student does not exist in RESULT table.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error occurred: ' || SQLERRM);

END;
/
