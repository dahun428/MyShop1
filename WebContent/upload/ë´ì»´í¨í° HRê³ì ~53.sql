--������ �μ��� ���� �Ѿ��� ��ȯ�ϴ� �Լ�

CREATE OR REPLACE FUNCTION GET_DEPT_TOTAL_SALARY
( i_dept_id IN NUMBER)
RETURN NUMBER
IS
    v_salary            employees.salary%type;
    v_comm              employees.commission_pct%type;
    v_annual_salary     employees.salary%type;
    v_total_salary      number := 0;
    
    --�Ķ���Ͱ� �ʿ��� Ŀ��
    --Ŀ�� ���࿡ �ʿ��� �Ķ���͸� �����Ѵ�.
    CURSOR emp_list(param_dept_id NUMBER) IS
        SELECT SALARY, NVL(commission_pct, 0) COMM
        FROM EMPLOYEES
        WHERE DEPARTMENT_ID = param_dept_id;
BEGIN
    
    FOR emp IN emp_list(i_dept_id) LOOP
        v_salary := emp.SALARY;
        v_comm := emp.COMM;
        v_annual_salary := v_salary * 12 + trunc(v_salary * v_comm) * 12;
        v_total_salary := v_total_salary + v_annual_salary;
    END LOOP;
    
RETURN v_total_salary;
END;