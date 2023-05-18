
set serveroutput on;
--PL/SQL Program To Add Two Numbers
Declare
Var1 integer;
Var2 integer;
Var3 integer;
Begin
Var1:=&var1;
Var2:=&var2;
Var3:=var1+var2;
Dbms_output.put_line('The Sum Is ' || var3);
End;
/

--PL/SQL Program To find greater number
declare
var1 number;
var2 number;
begin
var1:=&var1;
var2:=&var2;
if var1<var2 then
dbms_output.put_line(var2 ||' is greater');
else
dbms_output.put_line(var1 ||' is greater');
end if;
end;
/

--PL/SQL Program to Find Factorial of a Number
declare
n number;
fac number:=1;
i number;
 
begin
n:=&n;
 
for i in 1..n
loop
fac:=fac*i;
end loop;
 
dbms_output.put_line('factorial= '||fac);
end;
/


--PL/SQL Program for Prime Number
declare
n number;
i number;
flag number;
 
begin
i:=2;
flag:=1;
n:=&n;
 
for i in 2..n/2
loop
if mod(n,i)=0
then
flag:=0;
exit;
end if;
end loop;
 
if flag=1
then
dbms_output.put_line('prime');
else
dbms_output.put_line('not prime');
end if;
end;
/

--PL/SQL Program to Print Table of a Number
declare
n number;
i number;
 
begin
n:=&n;
for i in 1..10
loop
dbms_output.put_line(n||' x '||i||' = '||n*i);
end loop;
end;
/

--PL/SQL Program for Reverse of a Number
declare
n number;
i number;
rev number:=0;
r number;
 
begin
n:=&n;
while n>0
loop
r:=mod(n,10);
rev:=(rev*10)+r;
n:=trunc(n/10);
end loop;
 
dbms_output.put_line('reverse is '||rev);
 
end;
/

--PL/SQL Program for Fibonacci Series
declare
first number:=0;
second number:=1;
third number;
n number:=&n;
i number;
 
begin
dbms_output.put_line('Fibonacci series is:');
dbms_output.put_line(first);
dbms_output.put_line(second);
 
for i in 2..n
loop
third:=first+second;
first:=second;
second:=third;
dbms_output.put_line(third);
end loop;
end;
/

-- Pl/SQL Program for Palindrome Number ... that remains the same when its digits are reversed
declare
    n number;
    m number;
    rev number:=0;
    r number;
begin
    n:=&number;
    m:=n;
    while n>0
    loop
        r:=mod(n,10);
        rev:=(rev*10)+r;
        n:=trunc(n/10);
    end loop;
    
    if m=rev
    then
        dbms_output.put_line('number is palindrome');
    else
        dbms_output.put_line('number is not palindrome');
    end if;
end;
/

--PL/SQL Program to Swap two Numbers

declare
    a number;
    b number;
    temp number;
 
begin
    a:=&first_number;
    b:=&second_number;
    
    dbms_output.put_line('before swapping:');
    dbms_output.put_line('a='||a||' b='||b);
    
    temp:=a;
    a:=b;
    b:=temp;
    
    dbms_output.put_line('after swapping:');
    dbms_output.put_line('a='||a||' b='||b);
    
end;

--PL/SQL Program for Armstrong Number ... positive m-digit number that is equal to the sum of the m th powers of their digits.
declare
    n number:=&number;   --ex: 407
    s number:=0;
    r number;
    len number;
    m number;
begin
    m:=n;
 
    len:=length(to_char(n));
    
    while n>0
    loop
        r:=mod(n,10);
        s:=s+power(r,len);
        n:=trunc(n/10);
    end loop;
    
    if m=s
    then
        dbms_output.put_line('armstrong number');
    else
        dbms_output.put_line('not armstrong number');
    end if;
    
end;
/

--PL/SQL Program to Find Greatest of Three Numbers
declare
a number:=&num1;
b number:=&num2;
c number:=&num3;
begin
dbms_output.put_line('a='||a||' b='||b||' c='||c);
if a>b AND a>c
then
dbms_output.put_line(a||' is greatest');
else
if b>a AND b>c
then
dbms_output.put_line(b||' is greatest');
else
dbms_output.put_line(c||' is greatest');
end if;
end if;
end;
/

--PL/SQL Program to Print Patterns
--*
--**
--***
--****
--*****
declare
n number:=5;
i number;
j number;
begin
for i in 1..n
loop
for j in 1..i
loop
dbms_output.put('*');
end loop;
dbms_output.new_line;
end loop;
end;
/