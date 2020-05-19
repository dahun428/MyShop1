SELECT department_id, department_name, GET_EMP_COUNT(department_id), get_dept_total_salary(department_id)
FROM departments;

EXECUTE UPDATE_SALARY(100);

SELECT * FROM EMPLOYEES;