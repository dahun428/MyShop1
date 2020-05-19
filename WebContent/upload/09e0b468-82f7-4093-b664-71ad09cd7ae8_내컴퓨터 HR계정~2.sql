--������ �μ��� �Ҽӵ� ������� ��ȯ�ϴ� �Լ�
CREATE OR REPLACE FUNCTION GET_EMP_COUNT
    (i_dept_id IN NUMBER)
    RETURN NUMBER
IS
    v_emp_count NUMBER(3,0);
BEGIN

    SELECT COUNT(*)
    INTO v_emp_count
    FROM EMPLOYEES
    WHERE DEPARTMENT_ID = i_dept_id;

    RETURN v_emp_count;
END;