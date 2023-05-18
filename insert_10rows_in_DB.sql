create table temp (
NUM_COL1 int,
NUM_COL2 int,  
CHAR_COL varchar(255)
);
--set serveroutput on;
declare
x number:=100;
begin
  for i in 1..10 loop
    if mod(i,2)=0 then 
      INSERT INTO temp VALUES (i, x, 'i is even');
    else
      INSERT INTO temp VALUES (i, x, 'i is odd');
    end if;
    x:=x+100;
  end loop;
end;
/
--select * from temp ;  (to view the table)