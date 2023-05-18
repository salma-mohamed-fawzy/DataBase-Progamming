set serveroutput on;
DECLARE
v_event VARCHAR2(15);
BEGIN
v_event := q'!Father's day!';
DBMS_OUTPUT.PUT_LINE('3rd Sunday in June is :
'|| v_event );
v_event := q'[Mother's day]';
DBMS_OUTPUT.PUT_LINE('2nd Sunday in May is :
'|| v_event );
END;
/
----------------------------------------------------------------------------------------------------------------------
VARIABLE b_emp_salary NUMBER
BEGIN
SELECT salary INTO :b_emp_salary
FROM HR.EMPLOYEES WHERE employee_id = 178;
END;
/
PRINT b_emp_salary
SELECT first_name, last_name FROM HR.EMPLOYEES
WHERE salary=:b_emp_salary;

------------------------------------------------------------------------------------------------------------------------
VARIABLE v_emp_salary NUMBER
SET AUTOPRINT ON
DECLARE
v_empno NUMBER(6):=&empno;
BEGIN
SELECT salary INTO :v_emp_salary
FROM HR.EMPLOYEES WHERE employee_id = v_empno;
END;

------------------------------------------------------------------------------------------------------------------------
CREATE TABLE dept AS SELECT * FROM HR.DEPARTMENTS;
CREATE or replace PROCEDURE add_dept IS
v_dept_id dept.department_id%TYPE;
v_dept_name dept.department_name%TYPE;
BEGIN
v_dept_id:=280;
v_dept_name:='ST-Curriculum';
INSERT INTO dept(department_id,department_name)
VALUES(v_dept_id,v_dept_name);
DBMS_OUTPUT.PUT_LINE(' Inserted '|| SQL%ROWCOUNT
||' row ');
END;
/
BEGIN
add_dept;
END;
/
SELECT department_id, department_name FROM dept
WHERE department_id=280;
------------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION check_sal RETURN Boolean IS
v_dept_id hr.employees.department_id%TYPE;
v_empno hr.employees.employee_id%TYPE;
v_sal hr.employees.salary%TYPE;
v_avg_sal hr.employees.salary%TYPE;
BEGIN
v_empno:=205;
SELECT salary,department_id INTO v_sal,v_dept_id FROM
hr.employees
WHERE employee_id= v_empno;
SELECT avg(salary) INTO v_avg_sal FROM hr.employees WHERE
department_id=v_dept_id;
IF v_sal > v_avg_sal THEN
RETURN TRUE;
ELSE
RETURN FALSE;
END IF;
EXCEPTION
when no_data_found then 
return null;
end;
/
BEGIN
IF (check_sal IS NULL) THEN
DBMS_OUTPUT.PUT_LINE('The function returned
NULL due to exception');
ELSIF (check_sal) THEN
DBMS_OUTPUT.PUT_LINE('Salary > average');
ELSE
DBMS_OUTPUT.PUT_LINE('Salary < average');
END IF;
END;
/
-------------------------------------------------------------------------------------------------------------------
