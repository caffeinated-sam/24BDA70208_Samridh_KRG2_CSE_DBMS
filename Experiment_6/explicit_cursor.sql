CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO Employees (employee_id, name, salary) VALUES
(1, 'Samridh', 45000),
(2, 'JAY', 52001),
(3, 'Pranav', 38000),
(4, 'Sahil', 61015),
(5, 'Hunar', 50000);

DECLARE
    CURSOR emp_cursor IS
        SELECT employee_id, name, salary FROM Employees;

    v_id Employees.employee_id%TYPE;
    v_name Employees.name%TYPE;
    v_salary Employees.salary%TYPE;
BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_id, v_name, v_salary;
        EXIT WHEN emp_cursor%NOTFOUND;

        IF MOD(v_salary, 2) = 0 THEN
            DBMS_OUTPUT.PUT_LINE(v_name || ' -> Even Salary');
        ELSE
            DBMS_OUTPUT.PUT_LINE(v_name || ' -> Odd Salary');
        END IF;
    END LOOP;

    CLOSE emp_cursor;
END;
/