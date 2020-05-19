--������� ��ü ���� �Ѿ��� ����ϱ�
CREATE OR REPLACE FUNCTION GET_TOTAL_SALARY
RETURN NUMBER
IS
    v_total_salary  number := 0;
    v_salary        employees.salary%type;
    v_comm          employees.commission_pct%type;
    v_annual_salary employees.salary%type; 
    --Ŀ���� ����
    CURSOR emp_list IS
    SELECT SALARY, NVL(COMMISSION_PCT, 0) COMM
    FROM EMPLOYEES;
BEGIN
    --Ŀ����  FOR������ �����Ų��.
    --FOR ������ IN Ŀ���� LOOP
    --     ���๮;
    --END LOOP;
    FOR emp IN emp_list LOOP
        v_salary := emp.SALARY;
        v_comm := emp.COMM;
        v_annual_salary := v_salary * 12 + trunc(v_salary * v_comm) * 12;
        v_total_salary := v_total_salary + v_annual_salary;
    END LOOP;
    
    RETURN v_total_salary;
END;