declare
	feet number;
	inch number;
	cm number;
	meter number;	
begin
	feet:=&feet;
	inch:=feet*12;
	cm:=feet*30.48;
	meter:=feet*0.3048;

dbms_output.put_line('feet:'||feet);
dbms_output.put_line('inch:'||inch);
dbms_output.put_line('centi meter:'||cm);
dbms_output.put_line('meter:'||meter);
end;